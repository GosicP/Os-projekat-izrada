#include "../h/MemoryAllocation.hpp"

void *operator new(uint64 n){
    return MemoryAllocation::mem_alloc(n); //njemu je samo __mem_alloc???
}

void *operator new[](uint64 n){
    return MemoryAllocation::mem_alloc(n);
}

void operator delete(void *p) noexcept {
    MemoryAllocation::mem_free(p);
}

void operator delete[] (void *p) noexcept{
    MemoryAllocation::mem_free(p);
}