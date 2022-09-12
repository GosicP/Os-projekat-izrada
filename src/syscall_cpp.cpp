//
// Created by os on 9/11/22.
//

#include "../h/syscall_cpp.hpp"

Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr){ //todo nekako treba da inicijalizujes myHandle, nullptr mi sumnjiv
    thread_create_cpp_api(&myHandle, body, arg);
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    mem_free(myHandle);//mozda cak i sizeof(Thread)
}

int Thread::start() {
    printString("udje u start");
    thread_start(&myHandle, threadWrapper); //todo vrati na cast (thread_t*) ako ne bude radilo
    printString("izadje iz starta");
    return 0;
}

void Thread::threadWrapper(void *arg) {
    ((Thread*)arg)->run();
}
