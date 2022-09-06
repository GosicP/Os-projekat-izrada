//
// Created by os on 9/6/22.
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"

void semaphore::wait() {
    if (--val<0) block();
}

void semaphore::signal() {
    if (++val<=0) unblock();
}

void semaphore::block() {
        //setjmp je linija old=running;
        TCB *old = TCB::running;
        if (!old->isFinished()) {
            blocked.put(old);
        }
        TCB::running = Scheduler::get();
        TCB::contextSwitch(&old->context, &running->context); //TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
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
