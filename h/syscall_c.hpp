
#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP


class syscall_c {
public:
    void* mem_alloc (size_t size);

    int mem_free (void*);


};


#endif //PROJECT_BASE_SYSCALL_C_HPP
