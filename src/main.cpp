#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/Print.hpp"
#include "../h/MemoryAllocation.hpp"
#include "../h/RiscV.hpp"
int main(){
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    TCB::running=threads[0];

    threads[1] = TCB::createThread(workerBodyA); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    printString("Thread A created\n");

    threads[2] = TCB::createThread(workerBodyB); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    printString("Thread B created\n");


    threads[3] = TCB::createThread(workerBodyC); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    printString("Thread C created\n");

    threads[4] = TCB::createThread(workerBodyD); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    printString("Thread D created\n");

    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    //TCB::yield();

    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished())){
        TCB::yield();
    }


    for (auto &coroutine : threads){
        delete coroutine;
    }

    printString("finished\n");

    return 0;
}