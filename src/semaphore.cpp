//
// Created by os on 9/6/22.
//

//#include "../h/semaphore.hpp"
//#include "../h/tcb.hpp"
//
//void semaphore::wait() {
//    if (--val<0) block();
//}
//
//void semaphore::signal() {
//    if (++val<=0) unblock();
//}
//
//void semaphore::block() {
//    if (setjmp(TCB::running->context) == 0) {
//        blocked.put(TCB::running);
//        TCB::running = Scheduler::get();
//        longjmp(TCB::running->context,1); //TODO setjmp i longjmp treba impementirati
//    } else return;
//}
//
//void semaphore::unblock() {
//    TCB* t = blocked.get();
//    Scheduler::put(t);
//}
