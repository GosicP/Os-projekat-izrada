#include "../lib/console.h"
#include "../h/MemoryAllocation.hpp"
#include "../h/Print.hpp"
#include "../h/syscall_c.hpp"
#include "../h/RiscV.hpp"

/*void printString(const char *string){
    char c;
    int i = 0;
    while((c=string[i++])!='\0') __putc(c);
}

void readString(char rec[]){
    char c;
    int i = 0;
    while((c=__getc())!='\n') rec[i++] = c;
}


void printInt(uint64 n){
    if (n < 0) {
        __putc('-');
        n = -n;
    }
    if (n/10)
        printInt(n/10);
    __putc(n%10 + '0');
}

void printInteger(uint64 n){
    printInt(n);
    __putc('\n');
}*/
void mallocFree(){
    //================PROVERI CEO OVAJ SEGMENT U DEBUGGERU VEOMA DETALJNO, SADA KADA "RADI"=====================
    printString("mallocFree\n");
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i<num;i++){
        addrs[i] = mem_alloc(50);
        if(addrs[i] == 0){
            printString("not ok 1 \n");
            return;
        }
    }
    printString("ok 1 \n");
    for(int i = 0 ; i<num;i+=2){
        int retval = mem_free(addrs[i]); //stavi ove sa &
        if(retval != 0){
            printString("not ok 2\n");
            return;
        }
    }
    printString("ok 2 \n");
    for(int i = 0 ; i<num;i+=2){
        addrs[i] = mem_alloc(20);
        if(addrs[i] == 0){
            printString("not ok 3\n");;
            return;
        }
    }
    printString("ok 3 \n");
    for(int i = 0; i<num;i++){
        int retval = mem_free(addrs[i]);
        if(retval != 0){
            printString("not ok 4\n");;
            return;
        }
    }

    printString("ok\n");;
}


void bigMalloc(){
    printString("big Malloc\n");;
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    void* p = mem_alloc(x);
    if(p == 0) printString("ok\n");
    else printString("not ok\n");
}



struct Test{
public:
    int a;
};



void lotOfSmallMallocs(){
    printString("lotOfSmallMallocs\n");;
    int cnt = 0;
    int sum = 0;
    int N = 100000;
    int X = 10;
    for(int i = 0; i<N;i++) {
        Test *t = (Test *) mem_alloc(sizeof(Test));
        if(t == 0)break;
        t->a = X;
        sum+=X;
        cnt++;
    }
    printInteger(cnt);
    printString("\n");
    if(sum == X*cnt) printString("ok\n");
    else printString("not ok\n");
}

void stressTesting(){
    printString("stressTesting\n");
    constexpr int num = 465;
    void* addrs[num];
    for(int i = 0; i<num;i++){
        addrs[i] = mem_alloc(1);
        if(addrs[i] == 0){
            printString("not ok\n");
            return;
        }
    }
    int sz = 5;
    while(sz > 0){
        printString("sz:");
        printInteger(sz);
        for(int i = 0 ; i<num;i+=2){
            printString("i:");
            printInteger(i);
            printString("free\n");
            int retval = mem_free(addrs[i]);
            if(retval != 0){
                printString("not ok\n");
                return;
            }
            printString("alloc\n");
            addrs[i] = mem_alloc(sz*2);
            if(addrs[i] == 0){
                printString("not ok\n");;
                return;
            }
        }
        for(int i = 1 ; i<num;i+=2){
            printString("i:");
            printInteger(i);
            printString("free\n");
            int retval = mem_free(addrs[i]);
            if(retval != 0){
                printString("not ok\n");
                return;
            }
            printString("alloc\n");
            addrs[i] = mem_alloc(sz);
            if(addrs[i] == 0){
                printString("not ok\n");;
                return;
            }
        }
        sz-=10;
    }
    printString("ok\n");;
}

int main(){
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    //printInt(MemoryAllocation::availableMemory());
    printString("\n");
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    stressTesting();
    //printInt(MemoryAllocation::availableMemory());
    printString("\n");
    return 0;
}