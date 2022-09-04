//
// Created by os on 8/14/22.
//

#include "../h/RiscV.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"


void RiscV::popSppSpie() {
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void RiscV::handleSupervisorTrap() {
    //class TCB;
    typedef TCB* thread_t;
    uint64 sysCallNr;
    size_t size;
    void* ptr;
    thread_t* handle;
    TCB::Body start_routine;
    void* arg;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    volatile uint64 sstatus = r_sstatus();
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
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
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
        }else if(sysCallNr == 0x11UL){
            __asm__ volatile("mv %[handle], a1" : [handle] "=r"(handle)); //sta ja ovde da radim sa handleom
            __asm__ volatile("mv %[start_routine], a2" : [start_routine] "=r"(start_routine));
            __asm__ volatile("mv %[arg], a3" : [arg] "=r"(arg));
            int ret_val=TCB::createThread(start_routine, handle, arg);
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
            __asm__ volatile("sd a1, 88(s0)");
        }else if(sysCallNr == 0x12UL){
            ret_value_thr_exit=TCB::thread_exit();
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
            __asm__ volatile("sd a1, 88(s0)");
        }else if(sysCallNr == 0x13UL){
            TCB::thread_dispatch();
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