
#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"
#include "../h/semaphore.hpp"

//extern void handleTrap(); //ovo ne radi sa static modifierima, jel sme to tako??

    //extern void Trap();

    extern void* mem_alloc (size_t size);

    extern int mem_free (void* ptr);

    class TCB; //odakle ovo class thread, jel bi to zapravo trebala da bude klasa tcb?
    typedef TCB* thread_t;
    int thread_create (
            thread_t* handle,
            void(*start_routine)(void*),
            void* arg
    );

    int thread_exit ();

    void thread_dispatch ();

    class semaphore;
    typedef semaphore* sem_t;
    int sem_open (
            sem_t* handle,
            unsigned init
    );

    int sem_close (sem_t handle);

    int sem_wait (sem_t id);

    int sem_signal (sem_t id);

    const int EOF = -1;
    char getc ();

    void putc (char);




#endif
