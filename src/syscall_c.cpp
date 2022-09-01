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

/*void handleTrap() {
    uint64 sysCallNr;
    size_t size;
    void* ptr;
    uint64 scause = RiscV::r_scause();
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr)); //promeni ovaj read, da li mozda treba %0? Kaze undefined reference
    if(scause==0x09UL) { //ovo je scause za sistemski rezim
        if (sysCallNr == 0x01UL) {
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
            void* pointer=MemoryAllocation::mem_alloc(size); //gore imas da pretvoris u bytes to blocks
            //ja sam ovde spakovao argument koji se dobije, i saljem ga nazad u funkciju posle ecalla, da li to tako treba da funkcionise?
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
        } else if (sysCallNr == 0x02UL) {
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
            int ret=MemoryAllocation::mem_free(ptr);
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
        }
    }
}*/



