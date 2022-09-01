
#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP
#include "../h/MemoryAllocation.hpp"

    //extern void handleTrap(); //ovo ne radi sa static modifierima, jel sme to tako??

    //extern void Trap();

    extern void* mem_alloc (size_t size);

    extern int mem_free (void* ptr);





#endif //PROJECT_BASE_SYSCALL_C_HPP
