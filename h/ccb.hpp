//
// Created by os on 8/14/22.
//

#ifndef PROJECT_BASE_CCB_HPP
#define PROJECT_BASE_CCB_HPP
#include "../lib/hw.h"

class CCB{

public:
    using Body = void (*)();

    static CCB* createCoroutine(Body body);

    bool isFinished() const;

    void setFinished(bool finished);

    static void yield();

    static CCB* running;

private:
    CCB(Body body){

    }
    struct Context{
        uint64 ra;
        uint64 sp;
    };
    uint64* stack;

    Body body;
    Context context;
    bool finished;

    static void contextSwitch(Context *oldContext, Context* newContext);

    static void dispatch();
};


#endif //PROJECT_BASE_CCB_HPP
