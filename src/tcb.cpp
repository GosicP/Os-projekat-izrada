//
// Created by os on 8/14/22.
//

#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"
#include "../h/Scheduler.hpp"


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

    RiscV::pushRegisters();

    TCB::dispatch();

    RiscV::popRegisters();

};

void TCB::dispatch() {
    TCB *old = running;
    if (!old->isFinished()) {
        Scheduler::put(old);
    }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}


