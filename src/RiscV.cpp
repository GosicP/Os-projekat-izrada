//
// Created by os on 8/14/22.
//

#include "../h/RiscV.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/MemoryAllocation.hpp"


void RiscV::popSppSpie() {
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void RiscV::handleSupervisorTrap() {
    //uint64 a0;
    //size_t a1;
    //void* a2;
    //__asm__ volatile("sd a0, %0" : "=m"(a0));
    //__asm__ volatile("sd a1, %0" : "=m"(a1));
    //__asm__ volatile("sd a2, %0" : "=m"(a2));
    //__asm__ volatile("sd a3, %0" : "=m"(a3));
    //__asm__ volatile("sd a4, %0" : "=m"(a4));
    //__asm__ volatile("sd a5, %0" : "=m"(a5));
    //__asm__ volatile("sd a6, %0" : "=m"(a6));
    //__asm__ volatile("sd a6, %0" : "=m"(a7));
    uint64 sysCallNr;
    size_t size;
    void* ptr;
    uint64 scause = r_scause(); //ovde je scause 922337203684239523 kada drugi put prodje?
    volatile uint64 sepc = r_sepc() + 4; //OVDE SE POTPUNO PROMENI FMEM_HEAD na neke lude cifre??? <- ovo se ne desava kada izbrisem volatile, ali onda ne radi prekidna rutina???
    volatile uint64 sstatus = r_sstatus();
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    if (scause == 0x000000000000009UL){
        if (sysCallNr == 0x01UL) {
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
            void* pointer=MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(size)); //gore imas da pretvoris u bytes to blocks
            //ja sam ovde spakovao argument koji se dobije, i saljem ga nazad u funkciju posle ecalla, da li to tako treba da funkcionise?
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
            __asm__ volatile("sd a1, 88(s0)");
        } else if (sysCallNr == 0x02UL) {
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
            int ret=MemoryAllocation::mem_free(ptr);
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
            __asm__ volatile("sd a1, 88(s0)");
        }
        //enviroment call from s-mode

        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
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