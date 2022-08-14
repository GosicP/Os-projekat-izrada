//
// Created by os on 8/14/22.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

#include "LinkedList.hpp"

class CCB;

class Scheduler {
private:
    static LinkedList<CCB> readyCoroutineQueue;
public:
    static CCB *get();

    static void put (CCB *ccb);
};


#endif //PROJECT_BASE_SCHEDULER_HPP
