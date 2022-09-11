#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/tcb.hpp"
//#include "../h/workers.hpp"
#include "../h/Print.hpp"
//#include "../h/MemoryAllocation.hpp"
#include "../h/RiscV.hpp"
#include "../h/syscall_c.hpp"
#include "../h/semaphore.hpp"
//#include "../src/userMain.cpp"
//#include "../test/Threads_C_API_test.hpp"
extern void userMain();
//typedef semaphore* sem_t;
//sem_t agent,mutex,matches,paper,tabacco,dummy;
//void agentfun(void *arg);
//void smoker1(void* arg);
//void smoker2(void* arg);
//void smoker3(void* arg);
//void dummyfun(void* arg);

int main(){
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    //__asm__ volatile ("csrs sstatus, 0x2"); //todo nesto treba sa ovim spoljasnjim prekidima da se radi
    //RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    thread_t main;
    thread_create(&main, nullptr, nullptr);
    TCB::running = main;


//    sem_open(&mutex,1);
//    sem_open(&paper,0);
//    sem_open(&matches, 0);
//    sem_open(&agent,0);
//    sem_open(&tabacco,0);
//
//    thread_t t= nullptr;
//    thread_t t1= nullptr;
//    thread_t t2= nullptr;
//    thread_t t3= nullptr;
//
//    thread_create(&t, agentfun, nullptr);
//    thread_create(&t1, smoker1, nullptr);
//    thread_create(&t2, smoker2, nullptr);
//    thread_create(&t3, smoker3, nullptr);
//
//
//    sem_open(&dummy,-1);
//    thread_t tt= nullptr;
//    thread_t t11= nullptr;
//    thread_t t21= nullptr;
//    thread_t t31= nullptr;
//
//    thread_create(&tt, dummyfun, nullptr);
//    thread_create(&t11, dummyfun, nullptr);
//    thread_create(&t21, dummyfun, nullptr);
//    thread_create(&t31, dummyfun, nullptr);
//    for (int i = 0; i < 30; ++i) {
//        thread_dispatch();
//    }
//    if(sem_wait(dummy)==-1) printString("ubien semafor\n");
    userMain();
//    char x=getc();
//    putc(x);

    return 0;
}
//void agentfun(void *args){
//    int i=0;
//    while (true){
//        sem_wait(mutex);
//        switch (i%3) {
//            case 0:
//                printString("duvan i papir\n");
//                sem_signal(matches);
//                break;
//            case 1:
//                printString("duvan i sibice\n");
//                sem_signal(paper);
//                break;
//            case 2:
//                printString("sibice i papir\n");
//                sem_signal(tabacco);
//                break;
//        }
//        if(i==50) semaphore::semClose(dummy);
//        i++;
//        sem_signal(mutex);
//        sem_wait(agent);
//    }
//}
//
//void smoker1(void *arg){
//    while (true){
//        sem_wait(paper);
//        sem_wait(mutex);
//
//        printString("duvan i sibice cigaraaa\n");
//        sem_signal(agent);
//        sem_signal(mutex);
//    }
//}
//
//void smoker2(void *arg){
//    while (true){
//        sem_wait(matches);
//        sem_wait(mutex);
//
//        printString("duvan i papir cigaraaaaa\n");
//        sem_signal(agent);
//        sem_signal(mutex);
//    }
//}
//
//void smoker3(void *arg){
//    while (true){
//        sem_wait(tabacco);
//        sem_wait(mutex);
//        printString("sibiceee i papirr cigaraaa\n");
//        sem_signal(agent);
//        sem_signal(mutex);
//    }
//}
//void dummyfun(void *){
//    int i = sem_wait(dummy);
//    if(i==-1)printString("waitvreacagreskukadjeubijemnem \n");
//    printString("kitaljka\n");
//}