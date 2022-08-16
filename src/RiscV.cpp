//
// Created by os on 8/14/22.
//

#include "../h/RiscV.hpp"

void RiscV::handleSupervisorTrap() {
    uint64 scause = r_scause();
    if(scause == 0x8000000000000001UL){
        //supervisor software interrupt (timer)
        mc_sip()
    }
}