//
// Created by os on 9/11/22.
//

#include "../h/syscall_cpp.hpp"

Thread::Thread(void (*body)(void *), void *arg) { //nekako treba da inicijalizujes myHandle
    thread_create_cpp_api((thread_t*)myHandle, body, arg);
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    mem_free(myHandle);
}

int Thread::start() {
    thread_start((thread_t*)myHandle);
    return 0;
}
