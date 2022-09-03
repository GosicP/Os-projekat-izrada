//
// Created by os on 8/14/22.
//

#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP
#include "../lib/hw.h"
#include "../h/Scheduler.hpp"

class TCB {

public:
    ~TCB() { delete[] stack; }

    using Body = void (*)(void*); //mislim da mora da se promeni ovaj body sa nekim argumentima, i create thread generalno, dodao sam mu void* u argumentima

    static TCB *createThread(Body body);

    static void thread_dispatch(){dispatch();}

    int thread_exit(){
        setFinished(true);
        dispatch();
        //da li postoji drugi nacin da se vidi da li je exit uradjen?
        if(finished==true){
            return 0;
        }else{
            return -1;
        }
    };

    bool isFinished() const;

    void setFinished(bool finished);

    static void yield();

    static TCB *running;

    inline uint64 getTimeSlice() const { return timeSlice; };
private:
    //mislim da ti ne treba timeslice vise, jer radis sinhronu promenu
    explicit TCB(Body body, uint64 timeSlice) :
            body(body),
            stack(body != nullptr ? new uint64[1024] : nullptr),
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[1024] : 0
                    }
            ),
            timeSlice(timeSlice),
            finished(false) {
        if (body != nullptr) { Scheduler::put(this); }
    }
    struct Context {
        uint64 ra;
        uint64 sp;
    };



    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    bool finished;

    friend class RiscV;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *newContext);

    static void dispatch();

    static uint64 timeSliceCounter;
    static uint64 constexpr TIME_SLICE=2;
};


#endif //PROJECT_BASE_TCB_HPP
