//
// Created by os on 8/14/22.
//

#include "../h/RiscV.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"

void RiscV::popSppSpie() {
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void RiscV::handleSupervisorTrap() {
    uint64 scause = r_scause();
    if (scause == 0x800000000000009UL){
        //enviroment call from s-mode
        uint64 sepc = r_sepc() + 4;
        uint64 sstatus = r_sstatus();
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
        //supervisor software interrupt (timer)
        TCB::timeSliceCounter++;
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
            uint64 sepc = r_sepc();
            uint64 sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
        //supervisor external interrupt (console)
        console_handler();
    }else {
        //unexpected trap cause
        //print (scause)
        //print sepc
        //print sval

    }
}