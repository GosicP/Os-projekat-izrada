#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/Print.hpp"
#include "../h/MemoryAllocation.hpp"
#include "../h/RiscV.hpp"
#include "../h/syscall_c.hpp"
int main(){
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    //__asm__ volatile ("csrs sstatus, 0x2");
    TCB *threads[3];

    thread_create( &threads[0], nullptr, nullptr);
    TCB::running=threads[0];

    thread_create(&threads[1], workerBodyA,  nullptr); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    printString("Thread A created\n");

    thread_create(&threads[2], workerBodyB, nullptr); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    printString("Thread B created\n");


    //RiscV::ms_sstatus(RiscV::SSTATUS_SIE); //omogucava prekide, probaj i sa i bez toga, ali mislim da tebi nece trebati
    //__asm__ volatile ("csrs sstatus, 0x2");

    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
        TCB::yield();
    }


    for (auto &coroutine : threads){
        delete coroutine;
    }

    printString("finished\n");

    return 0;
}