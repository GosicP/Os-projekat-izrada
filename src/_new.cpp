#include "../h/MemoryAllocation.hpp"
#include "../h/syscall_c.hpp"

//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    return mem_alloc(n); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}

void *operator new[](uint64 n){
    return mem_alloc(n);
    //return __mem_alloc(n);
}

void operator delete(void *p) noexcept {
    mem_free(p);
    //__mem_free(p);
}

void operator delete[] (void *p) noexcept{
    mem_free(p);
    //__mem_free(p);
}