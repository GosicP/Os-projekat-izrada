//
// Created by os on 9/7/22.
//

#include "../h/queue.hpp"

LinkedList<TCB> Queue::queue;

void Queue::put(TCB *thread) {
    queue.addLast(thread);
}

TCB *Queue::get()
    {
        TCB* thread = queue.removeFirst();
        return thread;
    }

bool Queue::isEmpty() {
    if(queue.listEmpty()==true){
        return true;
    }else{return false;}
}


