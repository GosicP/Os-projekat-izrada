//
// Created by os on 9/6/22.
//

#ifndef PROJECT_BASE_SEMAPHORE_HPP
#define PROJECT_BASE_SEMAPHORE_HPP

#include "queue.hpp"
//TODO ZA SUTRA : PROVERI SEMAFORE NEKAKO IZ KLASE, I ONDA URADI SISTEMSKE POZIVE
class semaphore {
public:
    semaphore (unsigned short init=1) : val(init) {}
    void wait ();
    void signal ();
    int value () const { return val; }
protected:
    void block ();
    void unblock ();
private:
    int val;
    Queue blocked;
};
int lck = 0; // lock


#endif //PROJECT_BASE_SEMAPHORE_HPP
