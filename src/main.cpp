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
//extern void userMain();
typedef semaphore* sem_t;
sem_t agent;
sem_t mutex;
sem_t matches;
sem_t paper;
sem_t tabacco;
semaphore sem; //TODO problem pravi sto nisu staticke metode
void agentfun(void *arg);
void smoker1(void* arg);
void smoker2(void* arg);
void smoker3(void* arg);

int main(){
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);

    //semaphore* sem;
    //semaphore::semOpen(&sem, 1);
    TCB* thread;

    thread_create( &thread, nullptr, nullptr);
    TCB::running=thread;
     //__asm__ volatile ("csrs sstatus, 0x2");
    semaphore::semOpen(&mutex,1);
    semaphore::semOpen(&paper,0);
    semaphore::semOpen(&matches,0);
    semaphore::semOpen(&agent,0);
    semaphore::semOpen(&tabacco,0);

    TCB* t= nullptr;
    TCB* t1= nullptr;
    TCB* t2= nullptr;
    TCB* t3= nullptr;

    thread_create(&t, agentfun, nullptr);
    thread_create(&t1, smoker1, nullptr);
    thread_create(&t2, smoker2, nullptr);
    thread_create(&t3, smoker3, nullptr);

    for (int i = 0; i < 31; ++i) {
        thread_dispatch();
    }



    //userMain();

    //semaphore::semClose(paper);
    //semaphore::semClose(mutex);
    //semaphore::semClose(tabacco);
    //semaphore::semClose(agent);
    //semaphore::semClose(matches);

    return 0;
}

void agentfun(void *args){
    int i=0;
    while (true){
        semaphore::semWait(&mutex);
        switch (i%3) {
            case 0:
                printString("Na stolu su: duvan i papir\n");
                semaphore::semSignal(&matches);
                break;
            case 1:
                printString("Na stolu su: duvan i sibice\n");
                semaphore::semSignal(&paper);
                break;
            case 2:
                printString("Na stolu su: sibice i papir\n");
                semaphore::semSignal(&tabacco);
                break;
        }
        i++;
        semaphore::semSignal(&mutex);
        semaphore::semWait(&agent);
    }
}

void smoker1(void *arg){
    while (true){
        semaphore::semWait(&paper); //ovde ga zakoci ipak
        semaphore::semWait(&mutex);

        printString("Pera ima papir i pusi\n");
        semaphore::semSignal(&agent);
        semaphore::semSignal(&mutex);
    }
}

void smoker2(void *arg){
    while (true){
        semaphore::semWait(&matches);
        semaphore::semWait(&mutex);

        printString("Mika ima sibice i pusi\n");
        semaphore::semSignal(&agent);
        semaphore::semSignal(&mutex);
    }
}

void smoker3(void *arg){
    while (true){
        semaphore::semWait(&tabacco);
        semaphore::semWait(&mutex);
        printString("Zika ima duvan i pusi\n");
        semaphore::semSignal(&agent);
        semaphore::semSignal(&mutex);
    }
}