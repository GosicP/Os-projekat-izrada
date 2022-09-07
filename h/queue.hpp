//
// Created by os on 9/6/22.
//

#ifndef PROJECT_BASE_QUEUE_HPP
#define PROJECT_BASE_QUEUE_HPP

#include "LinkedList.hpp"
//#include "tcb.hpp"
class TCB;
class Queue{
private :
    static LinkedList<TCB> queue;

public:

    static void put(TCB* thread);

    static TCB* get();

    static bool isEmpty();

};

#endif //PROJECT_BASE_QUEUE_HPP
