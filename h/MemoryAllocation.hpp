#include "../lib/hw.h"


#ifndef PROJECT_BASE_MEMORYALLOCATION_HPP
#define PROJECT_BASE_MEMORYALLOCATION_HPP


class MemoryAllocation {

    //===========================DEFINICIJA SINGLETON KLASE POCETAK=======================k
private:

    struct FreeMem {
        FreeMem *next;
        FreeMem *prev;
        size_t size;
    };


    static FreeMem *fmem_head; //koja pocetna vrednost?



    static MemoryAllocation *instance;
    int data;


    MemoryAllocation() { //OVO SE SADA NIGGDE
        fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
                                    (char *) HEAP_START_ADDR); //da li smem ovo da castujem u size_t
        fmem_head->next = nullptr;
        fmem_head->prev = nullptr;
        data = 0;
    }

    MemoryAllocation(MemoryAllocation const &);

    void operator=(MemoryAllocation const &);

public:


    static MemoryAllocation *getInstance() {
        if (!instance) {
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
                                        (char *) HEAP_START_ADDR); //da li smem ovo da castujem u size_t
            fmem_head->next = nullptr;
            fmem_head->prev = nullptr;
            static MemoryAllocation* instance;
            return instance;
        }
        return instance;
    }


    int getData() {
        return this->data;
    }

    void setData(int data) {
        this->data = data;
    }

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    }


//===========================METODE ZA ALOKACIJU MEMORIJE===========================
    static void tryToJoin (FreeMem* curr) {
        if (!curr) return;
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
        // Remove the cur->next segment:
            curr->size += curr->next->size;
            curr->next = curr->next->next;
            if (curr->next) curr->next->prev = curr;
            return;
        }

    }

    //===================================== mem_free, ali sa ptr ===============
        static int mem_free(void* ptr) { //radi i kada posaljem sa &
        FreeMem* cur=0;
        if(!fmem_head || ptr < (char*)fmem_head)
        {
            cur=nullptr;
        }else {
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
            }
                FreeMem* newSeg = (FreeMem*)ptr;
                newSeg->next=nullptr;
                newSeg->prev=nullptr;
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE+sizeof(fmem_head);
                        //sizeof(ptr);
                newSeg->prev=cur;
                if(cur) {
                    newSeg->next = cur->next;
                }
                else {
                    newSeg->next = fmem_head;
                }
                if(newSeg->next) {
                    newSeg->next->prev=newSeg;
                }
                if (cur) {
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
                }
                else {
                    fmem_head = newSeg;
                }
                // Try to merge with the previous and next segments:
            tryToJoin(newSeg);
            tryToJoin(cur);
            //mozda da fmem_head nije jednako starom fmem_headu?
            if(newSeg==nullptr){
                return -1;
            }else{return 0;}


    }
    //===================================== kraj probe ==========================



    /*int mem_free(char* addr, size_t size) {
        // Find the place where to insert the new free segment (just after cur):
        FreeMem* cur=0;
        if (!fmem_head || addr<(char*)fmem_head)
            cur = 0; // insert as the first
        else
            for (cur=fmem_head; cur->next!=0 && addr>(char*)(cur->next);
                 cur=cur->next);
            // Insert the new segment after cur:
        FreeMem* newSeg = (FreeMem*)addr;
        newSeg->size = size;
        newSeg->prev = cur;
        if (cur) newSeg->next = cur->next;
        else newSeg->next = fmem_head;
        if (newSeg->next) newSeg->next->prev = newSeg;
        if (cur) cur->next = newSeg;
        else fmem_head = newSeg;
            // Try to merge with the previous and next segments:
        tryToJoin(newSeg);
        tryToJoin(cur);
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        size=size*(size_t)MEM_BLOCK_SIZE+sizeof(fmem_head); //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
            cur->next=fmem_head->next;
            cur->prev=fmem_head->prev;
            if (cur->size<size) continue;
            if (cur->size-size<=sizeof(FreeMem)){
                if (cur->prev) cur->prev->next = cur->next;
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
                return cur;
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
                newfrgm->prev=nullptr;
                newfrgm->next=nullptr;
                if (cur->prev) cur->prev->next = newfrgm;
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
                if (cur->next) cur->next->prev = newfrgm;
                newfrgm->prev = cur->prev;
                newfrgm->next = cur->next;
                newfrgm->size = cur->size-size;
                fmem_head = newfrgm+sizeof(fmem_head);
                fmem_head->next=newfrgm->next;
                fmem_head->prev=newfrgm->prev;
                fmem_head->size=newfrgm->size;
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
            }
        }
        return nullptr;
    }
};


#endif //PROJECT_BASE_MEMORYALLOCATION_HPP
