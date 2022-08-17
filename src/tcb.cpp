//
// Created by os on 8/14/22.
//

#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    return finished;
}

void TCB::setFinished(bool finished) {
    TCB::finished = finished;
}
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

TCB* TCB::createThread(TCB::Body body) {
    return new TCB(body, TIME_SLICE);
}

void TCB::yield(){



    __asm__ volatile ("ecall");

};

void TCB::dispatch() {
    TCB *old = running;
    if (!old->isFinished()) {
        Scheduler::put(old);
    }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    RiscV::popSppSpie();
    running->body();
    running->setFinished(true);
    TCB::yield();
}
