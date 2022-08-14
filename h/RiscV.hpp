//
// Created by os on 8/14/22.
//

#ifndef PROJECT_BASE_RISCV_HPP
#define PROJECT_BASE_RISCV_HPP
#include "../lib/hw.h"

class RiscV {
public:

    //push x3...x31 registers on stack
    static void pushRegisters();

    //pop x3...x31 registers on stack
    static void popRegisters();

    //read register scause
    static uint64 r_scause();

    //write register scause
    static void w_scause(uint64 scause);

    //read register sepc
    static uint64 r_sepc();

    //write register sepc
    static void w_sepc(uint64 sepc);

    //read register stvec
    static uint64 r_stvec();

    //write register stvec
    static void w_stvec(uint64 stvec);

    //write register stval
    static uint64 r_stval();

    //write register stval
    static void w_stval(uint64 stval);

    enum BitMaskSip{
        SIP_SSIE = (1<<1),
        SIP_STIE = (1<<5),
        SIP_SEIE = (1<<9),
    };

    //mask set register sip
    static void ms_sip(uint64 mask);

    //mask clear register sip
    static void mc_sip(uint64 mask);

    //read register sip
    static uint64 r_sip();

    //write register sip
    static void w_sip(uint64 sip);

    enum BitMaskSstatus{
        SSTATUS_SIE = (1<<1),
        SSTATUS_SPIE = (1<<5),
        SSTATUS_SPP=  (1<<8),
    };

    //mask set register sstatus
    static void ms_sstatus(uint64 mask);

    //mask clear register sstatus
    static void mc_sstatus(uint64 mask);

    //read register sstatus
    static uint64 r_sstatus();

    //write register sstatus
    static void w_sstatus(uint64 sstatus);

private:

};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    return scause;

}

inline void RiscV::w_scause(uint64 scause){
    __asm__ volatile("csrw scause, %[scause]": : [scause] "r"(scause));

}

inline uint64 RiscV::r_sepc(){
    uint64 volatile sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    return sepc;
}



#endif //PROJECT_BASE_RISCV_HPP
