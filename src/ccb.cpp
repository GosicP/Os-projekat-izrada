//
// Created by os on 8/14/22.
//

#include "../h/ccb.hpp"
#include "../h/RiscV.hpp"
#include "../h/Scheduler.hpp"


bool CCB::isFinished() const {
    return finished;
}

void CCB::setFinished(bool finished) {
    CCB::finished = finished;
}
CCB* CCB::running = nullptr;

CCB* CCB::createCoroutine(CCB::Body body) {
    return new CCB(body);
}

void CCB::yield(){

    RiscV::pushRegisters();

    CCB::dispatch();

    RiscV::popRegisters();

};

void CCB::dispatch() {
    CCB *old = running;
    if (!old->isFinished()) {
        Scheduler::put(old);
    }
    running = Scheduler::get();

    CCB::contextSwitch(&old->context, &running->context);
}