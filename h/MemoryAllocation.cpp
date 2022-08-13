
#include "MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
MemoryAllocation * MemoryAllocation::instance= nullptr;