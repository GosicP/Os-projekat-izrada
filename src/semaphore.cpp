//
// Created by os on 9/6/22.
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"

void semaphore::block() {
        //setjmp je linija old=running;
        TCB *old = TCB::running;
        if (!old->isFinished()) {
            blocked.put(old);
        }
        TCB::running = Scheduler::get();
        TCB::contextSwitch(&old->context, &TCB::running->context); //TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
        //longjmp je linija context switch
        //mozda bi zapravo trebao ceo block da bude dispatch, jer pola blocka je slicno dispatchu, ili da napises block ovako:
        //TODO MILICEV JE SAM REKAO DA JE JEDINA RAZLIKA STO NE STAVLJAMO NIT U SCHEDULER NEGO JE STAVLJAMO U RED BLOKIRANIH
        //strana 261 u pdfu
        //marinko kaze da je dobar ovaj block
}

void semaphore::unblock() {
    TCB* t = blocked.get();
    Scheduler::put(t);
}

int semaphore::semOpen(semaphore **handle, unsigned int init) {
    *handle=(semaphore*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(semaphore)));
    (*handle)->val=init;
    if (*handle==nullptr){
        return 0;
    }else{return 1;}
}

int semaphore::semClose(semaphore **semID) {
    while(((*semID)->blocked.isEmpty())==false){
        unblock();
        //TODO wait treba da vrati gresku? Kako to?
    }
    MemoryAllocation::mem_free(*semID); //TODO mozda moze i samo (*handle)=nullptr
    return 0;
}

int semaphore::semWait(semaphore **semID) {
    if((--((*semID)->val))<0) { (*semID) ->block(); }
    if(*semID == nullptr){return -1;}
    else{return 0;}
    return 0;
}

int semaphore::semSignal(semaphore **semID) {
    if((++((*semID)->val))<=0) { (*semID)->block(); }
    return 0;
}
