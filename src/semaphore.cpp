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
        blocked.put(TCB::running);
        TCB::running = Scheduler::get();
        TCB::thread_dispatch(); //TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
}

void semaphore::unblock() {
    TCB* t = blocked.get();
    Scheduler::put(t);
}
