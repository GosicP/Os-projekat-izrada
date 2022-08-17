//
// Created by os on 8/14/22.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

#include "LinkedList.hpp"
//#include "tcb.hpp"

class TCB;
//kaze da treba singleton, a tebi nije singleton, mada sve metode su staticke, to je alternativa?
class Scheduler {
private:
    //static TCB *idleThread;
    //dodaj idle threadu da se vrti u while petlji
    static LinkedList<TCB> readyCoroutineQueue;
public:
    /*static void emptyQueue(){
        if (readyCoroutineQueue.listEmpty()==true){
            readyCoroutineQueue.addFirst(idleThread);
        }else if(readyCoroutineQueue.peekFirst()==idleThread){
            idleThread=get();
        }
    }*/

    static TCB *get();

    static void put (TCB *ccb);
};


#endif //PROJECT_BASE_SCHEDULER_HPP
