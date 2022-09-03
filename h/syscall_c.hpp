
#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"

//extern void handleTrap(); //ovo ne radi sa static modifierima, jel sme to tako??

    //extern void Trap();

    extern void* mem_alloc (size_t size);

    extern int mem_free (void* ptr);

    class tcb; //odakle ovo class thread, jel bi to zapravo trebala da bude klasa tcb?
    typedef tcb* thread_t;
    int thread_create (
            thread_t* handle,
            void(*start_routine)(void*),
            void* arg
    );

    int thread_exit ();

    void thread_dispatch ();




#endif
