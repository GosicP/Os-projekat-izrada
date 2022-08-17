

#ifndef PROJECT_BASE_LINKEDLIST_HPP
#define PROJECT_BASE_LINKEDLIST_HPP


//uradi sutra kada te ne bi mrzelo, jer me sada mrzi da radim double linked, a vrv ce te i sutra mrzeti to da radis, ali ja se kockam na to da nece
template<typename T>
class LinkedList{
    private:
    struct Elem{
        T* data;
        Elem* next;

        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}

    LinkedList(const LinkedList<T> &) = delete;

    LinkedList<T> &operator=(const LinkedList<T> &) = delete;

    void addFirst(T *data){
        Elem *elem = new Elem (data, head);
        head=elem;
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = new Elem(data, 0);
        if (tail){
            tail->next=elem;
            tail=elem;
        }else{
            head=tail=elem;
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
        Elem *elem = head;
        head = head->next;
        if(!head) {
            tail = 0;
        }
        T* ret = elem->data;
        delete elem;
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
        return head->data;
    }

    T* removeLast() {
        if (!head) { return 0;}
        Elem *prev = 0;

        for (Elem* curr = head; curr && curr!=tail; curr=curr->next){prev-curr;}

        Elem *elem=tail;
        if(prev) {prev->next = 0;}
        else{head=0;}
        tail=prev;

        T* ret = elem->data;
        delete elem;
        return ret;
    }

    T* peekList(){
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
            return true;
        }else{return false;}
    }

};

#endif //PROJECT_BASE_LINKEDLIST_HPP
