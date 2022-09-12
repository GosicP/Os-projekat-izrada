//
// Created by os on 8/14/22.
//

#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP
#include "../lib/hw.h"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocation.hpp"
#include "../h/semaphore.hpp"
#include "../h/printing.hpp"

class TCB {

public:
    void* operator new(uint64 n){//promenjeno uint64 u size_t
        return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
        //return __mem_alloc(n);
    }

    void* operator new[](uint64 n){
        return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
        //return __mem_alloc(n);
    }

    void operator delete(void *p) noexcept {
        MemoryAllocation::mem_free(p);
        //__mem_free(p);
    }

    void operator delete[] (void *p) noexcept{
        MemoryAllocation::mem_free(p);
        //__mem_free(p);
    }

    ~TCB() { delete[] stack; }

    using Body = void (*)(void*); //mislim da mora da se promeni ovaj body sa nekim argumentima, i create thread generalno, dodao sam mu void* u argumentima

    static int createThread(Body body, TCB** handle, void* arguments, bool started);

    static void thread_dispatch(){dispatch();}

    static int thread_exit(){
        running->setFinished(true);
        dispatch();
        //running nullptr->negativna
        return 0;
    };

    void setStarted(TCB** handle){
        (*handle)->threadStarted=true;
    }

    bool isStarted() {
        return threadStarted;
    }

    static void startThread(TCB** handle, Body wrapper);

    bool isFinished() const;

    void setFinished(bool finished);

    static void yield();

    uint64 getTimeSlice(){
        return timeSlice;
    }

    static TCB *running;
private:
    //mislim da ti ne treba timeslice vise, jer radis sinhronu promenu
    //explicit TCB(Body body, void* arguments) :
    //        body(body),
    //        stack(body != nullptr ? (uint64*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(uint64[DEFAULT_STACK_SIZE]))  : nullptr),
    //        context({(uint64)&threadWrapper,
    //                 stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    //                }
    //        ),
    //        finished(false), arguments(arguments) {
    //    if (body != nullptr) { Scheduler::put(this); }
    //}
    struct Context {
        uint64 ra;
        uint64 sp;
    };



    Body body;
    uint64 *stack;
    Context context;
    bool finished;
    void* arguments;
    semaphore* semBlocked;
    uint64 timeSlice;
    bool threadStarted = false;

    friend class RiscV;
    friend class semaphore;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *newContext);

    static void dispatch();

    static uint64 timeSliceCounter;
    static uint64 constexpr TIME_SLICE=2;
};


#endif //PROJECT_BASE_TCB_HPP
