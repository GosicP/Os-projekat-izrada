#include "../h/Scheduler.hpp"

LinkedList<TCB> Scheduler::readyCoroutineQueue;
//TCB* Scheduler::idleThread = TCB::createThread(nullptr);
//ako ne radi samo zakomentarisi emptyQueue
TCB* Scheduler::get()
{
    //emptyQueue();
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
}