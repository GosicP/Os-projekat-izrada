#include "../h/MemoryAllocation.hpp"
#include "../lib/mem.h"

void *operator new(uint64 n){
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}

void *operator new[](uint64 n){
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