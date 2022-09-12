//
// Created by os on 8/14/22.
//

#include "../h/RiscV.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"


void RiscV::popSppSpie() {
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void RiscV::handleSupervisorTrap() {
    //class TCB;
    typedef TCB* thread_t;
    typedef semaphore* sem_t;
    volatile uint64 a4;
    volatile uint64 size;
    volatile uint64 handle;
    volatile uint64 start_routine;
    volatile uint64 arg;
    volatile uint64 ptr;
    __asm__ volatile("sd a4, %0" : "=m"(a4));
    __asm__ volatile("sd a3, %0" : "=m"(arg));
    __asm__ volatile("sd a2, %0" : "=m"(start_routine));
    __asm__ volatile("sd a1, %0" : "=m"(handle));
    //__asm__ volatile("sd a1, %0" : "=m"(size));
    //__asm__ volatile("sd a1, %0" : "=m"(ptr));
    uint64 sysCallNr;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    volatile uint64 sstatus = r_sstatus();
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
        if (sysCallNr == 0x01UL) {
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
            void* pointer=MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks((size_t)size)); //gore imas da pretvoris u bytes to blocks
            //ja sam ovde spakovao argument koji se dobije, i saljem ga nazad u funkciju posle ecalla, da li to tako treba da funkcionise?
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
            __asm__ volatile("sd a1, 88(s0)");
        } else if (sysCallNr == 0x02UL) {
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
            int ret=MemoryAllocation::mem_free((void*)ptr);
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
        }else if(sysCallNr == 0x11UL){
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg, true);
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
            __asm__ volatile("sd a1, 88(s0)");
        }else if(sysCallNr == 0x12UL){
            ret_value_thr_exit=TCB::thread_exit();
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
            __asm__ volatile("sd a1, 88(s0)");
        }else if(sysCallNr == 0x13UL){
            TCB::thread_dispatch();
        }else if(sysCallNr==0x14UL){
            int ret_val=TCB::createThread((TCB::Body)a4, (thread_t*) handle, (void*)arg, false);
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
            __asm__ volatile("sd a1, 88(s0)");
        }else if(sysCallNr==0x15UL){
            TCB::startThread((thread_t*)handle, (TCB::Body)start_routine);
        }else if(sysCallNr == 0x21UL){
            int retval = semaphore::semOpen((sem_t*)handle, (unsigned)start_routine);
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
            __asm__ volatile("sd a1, 88(s0)");
        }else if(sysCallNr == 0x22UL){
            int retval = semaphore::semClose((sem_t)handle);
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
            __asm__ volatile("sd a1, 88(s0)");
        }else if(sysCallNr == 0x23UL){
            int retval = semaphore::semWait((sem_t)handle);
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
            __asm__ volatile("sd a1, 88(s0)");
        }else if(sysCallNr == 0x24UL){
            int retval = semaphore::semSignal((sem_t)handle);
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
            __asm__ volatile("sd a1, 88(s0)");
       }else if(sysCallNr==0x41UL){
            char retval = __getc();
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
            __asm__ volatile("sd a1, 88(s0)");
        }else if(sysCallNr==0x42UL){
            __putc((char)handle);
        }
        //enviroment call from s-mode

        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
//         TCB::timeSliceCounter++;
//         if(TCB::timeSliceCounter>= TCB::running->getTimeSlice()){
//             volatile uint64 sepc = r_sepc();
//             volatile uint64 sstatus = r_sstatus();
//             TCB::timeSliceCounter=0;
//             TCB::dispatch();
//             w_sstatus(sstatus);
//             w_sepc(sepc);
//         }
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