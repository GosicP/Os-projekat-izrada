//
// Created by os on 8/14/22.
//

#ifndef PROJECT_BASE_CCB_HPP
#define PROJECT_BASE_CCB_HPP
#include "../lib/hw.h"
#include "../h/Scheduler.hpp"

class CCB{

public:

    ~CCB(){ delete[] stack;}

    using Body = void (*)();

    static CCB* createCoroutine(Body body);

    bool isFinished() const;

    void setFinished(bool finished);

    static void yield();

    static CCB* running;

private:
    CCB(Body body) :
            body(body),
            stack(body!=nullptr ? new uint64[1024] : nullptr),
            context({body!=nullptr ? (uint64) body : 0,
                     stack !=nullptr ? (uint64)&stack[1024] : 0
                     }
                    ),
            finished(false)
    {
        if(body!=nullptr) {Scheduler::put(this);}
    }
    struct Context{
        uint64 ra;
        uint64 sp;
    };
    Body body;
    uint64* stack;
    Context context;
    bool finished;

    static void contextSwitch(Context *oldContext, Context* newContext);

    static void dispatch();
};


#endif //PROJECT_BASE_CCB_HPP
