#include "../lib/hw.h"
#include "../lib/console.h"
extern "C" void handleSupervisorTrap(){
    uint64 scauseVar;
    __asm__("csrr %[ime], scause": [ime] "=r" (scauseVar));
    if(scauseVar == (0x01UL << 63 | 0x01)){ //ovo je za prekid od tajmera 35:15 u snimku, pitaj jel treba neki drugi prekid

    }
    console_handler();
}

extern "C" void supervisorTrap();
int main(){
    __asm__ volatile("csrw stvec, %[vector]" : : [vector] "r" (&supervisorTrap));
    __asm__ volatile("csrs sstatus, 0x02");
    while (1){}
    return 0;
}