//
// Created by os on 8/14/22.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

#include "LinkedList.hpp"

class TCB;

class Scheduler {
private:
    static LinkedList<TCB> readyCoroutineQueue;
public:
    static TCB *get();

    static void put (TCB *ccb);
};


#endif //PROJECT_BASE_SCHEDULER_HPP
