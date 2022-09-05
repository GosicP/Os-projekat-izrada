//
// Created by os on 8/18/22.
//

#include "../h/syscall_c.hpp"
#include "../h/RiscV.hpp"
//#include "../h/MemoryAllocation.hpp"



void *mem_alloc(size_t  size) {
    void* pointer = nullptr;
    uint64 sysCallNr=0x01UL;
    //size=MemoryAllocation::bytesToBlocks(size);
    //mozda ovde mozes da koristis privremeni registar "scratch", da bi koristio sd
    __asm__ volatile("mv a1, %0" : : [size] "r" (size)); //izgleda da ipak mora sd, jer ne prepoznaje ni a0 ni a1
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
     //ovo bi trebalo u mainu, ali kom mainu, gde ja uopste smem da deklarisem trap??????? izgleda da stvec skace na ecall
    __asm__ volatile("ecall");
    __asm__ volatile("mv %[pointer], a1" : [pointer] "=r"(pointer));
    return pointer;
}

int mem_free(void * ptr) {
    int ret=0;
    uint64 sysCallNr=0x02UL;
    __asm__ volatile("mv a1, %0" : : [ptr] "r" (ptr));
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    //RiscV::w_stvec((uint64) &Trap());
    __asm__ volatile("ecall");
    __asm__ volatile("mv %[ret], a1" : [ret] "=r"(ret)); //kaze undefined reference
    return ret;
}

int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    TCB* ret_value_thread;
    uint64 sysCallNr=0x11UL;
    //neki stack_space alokacija se pominje????
    __asm__ volatile("mv a3, %0" : : [arg] "r" (arg));
    __asm__ volatile("mv a2, %0" : : [start_routine] "r" (start_routine));
    __asm__ volatile("mv a1, %0" : : [handle] "r" (handle));
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    __asm__ volatile("ecall");
    __asm__ volatile("mv %[ret_value_thread], a1" : [ret_value_thread] "=r"(ret_value_thread)); //kaze undefined reference
    return 0;//todo
    //moras da vidis sta ovde treba da se vrati
}

int thread_exit (){
    int ret=0;
    uint64 sysCallNr=0x12UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    __asm__ volatile("ecall");
    //sta treba ovde da se vrati, verovatno da li je uspelo ili nije uspelo, PREBACI THREAD_EXIT U INT U TCB-U
    __asm__ volatile("mv %[ret], a1" : [ret] "=r"(ret)); //kaze undefined reference
    return ret;
}

void thread_dispatch (){
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    __asm__ volatile("ecall");
}



