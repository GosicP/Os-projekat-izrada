#ifndef _Threads_Semaphore_CPP_test_hpp_
#define _Threads_Semaphore_CPP_test_hpp_

#include "../syscall_cpp.hpp"
#include "../helpFunctions.h"
#include "../Sem.hpp"

bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;
static semaphore* semaphoreAB = nullptr;
static semaphore* semaphoreCD = nullptr;

uint64 fibonacci(uint64 n) {
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

class WorkerA: public Thread {
    void workerBodyA(void* arg);
public:
    WorkerA():Thread() {}
    void run() override { workerBodyA(nullptr); }
};

class WorkerB: public Thread {
    void workerBodyB(void* arg);
public:
    WorkerB():Thread() {}
    void run() override { workerBodyB(nullptr); }
};

class WorkerC: public Thread {
    void workerBodyC(void* arg);
public:
    WorkerC():Thread() {}
    void run() override { workerBodyC(nullptr); }
};

class WorkerD: public Thread {
    void workerBodyD(void* arg);
public:
    WorkerD():Thread() {}
    void run() override { workerBodyD(nullptr); }
};

void WorkerA::workerBodyA(void *arg) {
    if (semaphoreAB != nullptr) semaphoreAB->wait();
    for (uint64 i = 0; i < 10; i++) {
        printString("A: i=");
        printInt(i); printString("\n");
        for (uint64 j = 0; j < 100; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    delete semaphoreAB;
    semaphoreAB = nullptr;

    printString("A finished!\n");
    finishedA = true;
    if (semaphoreAB != nullptr) semaphoreAB->signal();
}

void WorkerB::workerBodyB(void *arg) {
    if (semaphoreAB != nullptr) semaphoreAB->wait();
    for (uint64 i = 0; i < 16; i++) {
        printString("B: i=");
        printInt(i); printString("\n");
        for (uint64 j = 0; j < 100; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("B finished!\n");
    finishedB = true;
    thread_dispatch();
    if (semaphoreAB != nullptr) semaphoreAB->signal();
}

void WorkerC::workerBodyC(void *arg) {
    if (semaphoreCD != nullptr) semaphoreCD->wait();
    uint8 i = 0;
    for (; i < 3; i++) {
        printString("C: i=");
        printInt(i); printString("\n");
    }

    printString("C: dispatch\n");
    __asm__ ("li t1, 7");
    thread_dispatch();

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));

    printString("C: t1=");
    printInt(t1); printString("\n");

    uint64 result = fibonacci(12);
    printString("C: fibonaci=");
    printInt(result); printString("\n");

    for (; i < 6; i++) {
        printString("C: i=");
        printInt(i); printString("\n");
    }

    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
    if (semaphoreCD != nullptr) semaphoreCD->signal();
}

void WorkerD::workerBodyD(void* arg) {
    if (semaphoreCD != nullptr) semaphoreCD->wait();
    uint8 i = 10;
    for (; i < 13; i++) {
        printString("D: i=");
        printInt(i); printString("\n");
    }

    printString("D: dispatch\n");
    __asm__ ("li t1, 5");
    thread_dispatch();

    uint64 result = fibonacci(16);
    printString("D: fibonaci=");
    printInt(result); printString("\n");

    for (; i < 16; i++) {
        printString("D: i=");
        printInt(i); printString("\n");
    }

    printString("D finished!\n");
    finishedD = true;
    thread_dispatch();
    if (semaphoreCD != nullptr) semaphoreCD->signal();
}

void Threads_Semaphore_CPP_test() {
    Thread* threads[4];
    semaphoreAB = new Semaphore(1);
    semaphoreCD = new Semaphore(1);

    threads[0] = new WorkerA();
    printString("ThreadA created\n");

    threads[1] = new WorkerB();
    printString("ThreadB created\n");

    threads[2] = new WorkerC();
    printString("ThreadC created\n");

    threads[3] = new WorkerD();
    printString("ThreadD created\n");

    for(int i=0; i<4; i++) {
        threads[i]->start();
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    }

    for (auto thread: threads) { delete thread; }
    delete semaphoreAB; delete semaphoreCD;
}

#endif

