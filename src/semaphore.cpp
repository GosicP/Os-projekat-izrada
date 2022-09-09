//
// Created by os on 9/6/22.
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"

void semaphore::block() {
        //setjmp je linija old=running;
        TCB *old = TCB::running;
        old->semBlocked=this;
        if (!old->isFinished()) {
            blocked->addLast(old);
        }
        TCB::running = Scheduler::get();


        TCB::contextSwitch(&old->context, &TCB::running->context);//TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
        //longjmp je linija context switch
        //mozda bi zapravo trebao ceo block da bude dispatch, jer pola blocka je slicno dispatchu, ili da napises block ovako:
        //TODO MILICEV JE SAM REKAO DA JE JEDINA RAZLIKA STO NE STAVLJAMO NIT U SCHEDULER NEGO JE STAVLJAMO U RED BLOKIRANIH
        //strana 261 u pdfu
        //marinko kaze da je dobar ovaj block

        //TCB::running->semBlocked=this;
        //this->blocked->put(TCB::running);
        //TCB::dispatch();
}

void semaphore::unblock() {
    TCB* t = blocked->removeFirst();
    t->semBlocked=nullptr;
    Scheduler::put(t);
}

int semaphore::semOpen(semaphore **handle, int init) {
    *handle=(semaphore*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(semaphore)));
    if (*handle==nullptr){
        return -1;
    }
    (*handle)->val=init;
    (*handle)->blocked=(LinkedList<TCB>*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(LinkedList<TCB>)));
    return  0;
}

int semaphore::semClose(semaphore *semID) {
    while(((semID)->blocked->listEmpty())==false){
        (semID)->unblock();
        //TODO wait treba da vrati gresku? Kako to?
    }
    MemoryAllocation::mem_free(semID); //TODO mozda moze i samo (*handle)=nullptr
    return 0;
}

int semaphore::semWait(semaphore *semID) {
    if(semID == nullptr){return -1;}
    if((--((semID)->val))<0) { (semID)->block(); }
    return 0;
}

int semaphore::semSignal(semaphore *semID) {
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    return 0;
}
