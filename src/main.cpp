#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/ccb.hpp"
int main(){
    CCB *coroutines[3];

    coroutines[0] = CCB::createCoroutine(nullptr);
    CCB::running=coroutines[0];

    coroutines[0] = CCB::createCoroutine(nullptr); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
}