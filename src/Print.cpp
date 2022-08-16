//
// Created by os on 8/15/22.
//

#include "../h/Print.hpp"
#include "../lib/console.h"
//promenjeni print string i integer na vezbama 2, 1:10:00 tu negde, da bi se onemogucili prekidi u samoj niti
void printString(char const *string){
    while(*string!='\0'){
        __putc(*string);
        string++;
    }
}

void printInteger(uint64 integer){
    static char digits[] = "0123456789";
    char buf[16];
    int i, neg;
    uint x;

    neg=0;
    if(integer<0){
        neg=1;
        x=-integer;
    }else{
        x=integer;
    }

    i=0;
    do {
        buf[i++] = digits [x%10];
    }while((x/=10) != 0);
    if(neg) buf[i++] = '-';

    while(--i >= 0){
        __putc(buf[i]);
    }
}