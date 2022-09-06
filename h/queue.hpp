//
// Created by os on 9/6/22.
//

#ifndef PROJECT_BASE_QUEUE_HPP
#define PROJECT_BASE_QUEUE_HPP

#include "LinkedList.hpp"
#include "tcb.hpp"

class Queue{
private :
    LinkedList<TCB> queue;

public:

    void put(TCB* thread){
        queue.addFirst(thread);
    }

    TCB* get() {
        TCB* thread = queue.removeLast();
        return thread;
    }

};

#endif //PROJECT_BASE_QUEUE_HPP
