//
// Created by os on 9/6/22.
//

#ifndef PROJECT_BASE_SEMAPHORE_HPP
#define PROJECT_BASE_SEMAPHORE_HPP

#include "../h/queue.hpp"
//TODO ZA SUTRA : PROVERI SEMAFORE NEKAKO IZ KLASE, I ONDA URADI SISTEMSKE POZIVE
class semaphore {
public:
    //semaphore (unsigned short init=1) : val(init) {}
    int value () const { return val; }

    static int semOpen(semaphore** handle,
                 int init);

    static int semClose(semaphore* semID);

    static int semWait(semaphore* semID);

    static int semSignal(semaphore* semID);
protected:
    void block ();
    void unblock ();
private:
    int val;
    LinkedList<TCB>* blocked; //TODO mozda bi ceo ovaj red mogao da funkcionise isto kao u scheduleru, sa put i get, ispitaj da li je u scheduleru isti princip, posto je meni sada obrnuto
    //mozes da koristis i Scheduler zato sto su oba FIFO, ali bolje nemoj da se ne bi zbunio
};


#endif //PROJECT_BASE_SEMAPHORE_HPP
