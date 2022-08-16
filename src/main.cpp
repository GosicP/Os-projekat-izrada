#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/Print.hpp"
#include "../h/MemoryAllocation.hpp"
int main(){
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    TCB *coroutines[3];

    coroutines[0] = TCB::createCoroutine(nullptr);
    TCB::running=coroutines[0];

    coroutines[1] = TCB::createCoroutine(workerBodyA); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    printString("Coroutine A created\n");

    coroutines[1] = TCB::createCoroutine(workerBodyB); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    printString("Coroutine B created\n");

    TCB::yield();

    for (auto &coroutine : coroutines){
        delete coroutine;
    }

    printString("finished\n");

    return 0;
}