//
// Created by os on 9/11/22.
//

#ifndef _syscall_cpp
#define _syscall_cpp
#include "syscall_c.hpp"
#include "../h/printing.hpp"
//void* ::operator new (size_t);
//void ::operator delete (void*);
class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static void threadWrapper(void* arg);
protected:
    Thread (){
        //tu izleda da treba da dodas gornji konstruktor
        printString("pre wrappera");
        //threadWrapper(this); //todo uopste mi ne napravi handle
        //printString("posle wrappera");
        //Thread(threadWrapper(this), this); //todo mozda treba & ispred threadWrapper
        thread_create_cpp_api(&myHandle, threadWrapper, this);
    };
    virtual void run () {} //on ovde zabaguje potpuno
private:
    thread_t myHandle;
};
class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};

class Console {
public:
    static char getc ();
    static void putc (char);
};

#endif