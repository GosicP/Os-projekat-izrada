//
// Created by os on 8/14/22.
//

#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    return finished;
}

void TCB::setFinished(bool finished) {
    TCB::finished=finished;
}
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments, bool started) {
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    (*handle)->body=body;
    (*handle)->arguments=arguments;
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    (*handle)->finished=false;
    (*handle)->semBlocked=nullptr;
    (*handle)->timeSlice=TIME_SLICE;
    (*handle)->threadStarted=started;
    if (body != nullptr && (*handle)->isStarted()==true) { Scheduler::put(*handle); }
    if(*handle==nullptr){
        return -1;
    }else{return 0;}
}

void TCB::yield(){
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    __asm__ volatile ("ecall");

};

void TCB::dispatch() {
    TCB *old = running;
    if (old->semBlocked==nullptr && !old->isFinished()) {
        Scheduler::put(old);
    }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    //RiscV::popSppSpie();
    __asm__ volatile ("csrw sepc, ra");
    //__asm__ volatile ("sret");
    running->body(running->arguments);
    running->setFinished(true);
    TCB::yield();
}

void TCB::startThread(TCB **handle, TCB::Body body) {
    (*handle)->body=body;
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    (*handle)->threadStarted=true;
    //printString("setuje started\n");
    Scheduler::put(*handle); //vidi nekako da startuje handle nad kojim pozivas, mada mislim da ce poziv izgledati handle->start
}
