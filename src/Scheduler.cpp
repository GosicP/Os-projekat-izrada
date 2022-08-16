#include "../h/Scheduler.hpp"

LinkedList<TCB> Scheduler::readyCoroutineQueue;

TCB* Scheduler::get()
{
    return readyCoroutineQueue.removeFirst();
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
}