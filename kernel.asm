
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	52013103          	ld	sp,1312(sp) # 80005520 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1fc020ef          	jal	ra,80002218 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_Z11printStringPKc>:
#include "../lib/console.h"
#include "../h/MemoryAllocation.hpp"



void printString(const char *string){
    80001000:	fe010113          	addi	sp,sp,-32
    80001004:	00113c23          	sd	ra,24(sp)
    80001008:	00813823          	sd	s0,16(sp)
    8000100c:	00913423          	sd	s1,8(sp)
    80001010:	01213023          	sd	s2,0(sp)
    80001014:	02010413          	addi	s0,sp,32
    80001018:	00050913          	mv	s2,a0
    char c;
    int i = 0;
    8000101c:	00000793          	li	a5,0
    while((c=string[i++])!='\0') __putc(c);
    80001020:	0017849b          	addiw	s1,a5,1
    80001024:	00f907b3          	add	a5,s2,a5
    80001028:	0007c503          	lbu	a0,0(a5)
    8000102c:	00050a63          	beqz	a0,80001040 <_Z11printStringPKc+0x40>
    80001030:	00003097          	auipc	ra,0x3
    80001034:	2ac080e7          	jalr	684(ra) # 800042dc <__putc>
    80001038:	00048793          	mv	a5,s1
    8000103c:	fe5ff06f          	j	80001020 <_Z11printStringPKc+0x20>
}
    80001040:	01813083          	ld	ra,24(sp)
    80001044:	01013403          	ld	s0,16(sp)
    80001048:	00813483          	ld	s1,8(sp)
    8000104c:	00013903          	ld	s2,0(sp)
    80001050:	02010113          	addi	sp,sp,32
    80001054:	00008067          	ret

0000000080001058 <_Z10readStringPc>:

void readString(char rec[]){
    80001058:	fe010113          	addi	sp,sp,-32
    8000105c:	00113c23          	sd	ra,24(sp)
    80001060:	00813823          	sd	s0,16(sp)
    80001064:	00913423          	sd	s1,8(sp)
    80001068:	01213023          	sd	s2,0(sp)
    8000106c:	02010413          	addi	s0,sp,32
    80001070:	00050913          	mv	s2,a0
    char c;
    int i = 0;
    80001074:	00000493          	li	s1,0
    while((c=__getc())!='\n') rec[i++] = c;
    80001078:	00003097          	auipc	ra,0x3
    8000107c:	2a0080e7          	jalr	672(ra) # 80004318 <__getc>
    80001080:	00a00793          	li	a5,10
    80001084:	00f50a63          	beq	a0,a5,80001098 <_Z10readStringPc+0x40>
    80001088:	009907b3          	add	a5,s2,s1
    8000108c:	00a78023          	sb	a0,0(a5)
    80001090:	0014849b          	addiw	s1,s1,1
    80001094:	fe5ff06f          	j	80001078 <_Z10readStringPc+0x20>
}
    80001098:	01813083          	ld	ra,24(sp)
    8000109c:	01013403          	ld	s0,16(sp)
    800010a0:	00813483          	ld	s1,8(sp)
    800010a4:	00013903          	ld	s2,0(sp)
    800010a8:	02010113          	addi	sp,sp,32
    800010ac:	00008067          	ret

00000000800010b0 <_Z8printIntm>:


void printInt(uint64 n){
    800010b0:	fe010113          	addi	sp,sp,-32
    800010b4:	00113c23          	sd	ra,24(sp)
    800010b8:	00813823          	sd	s0,16(sp)
    800010bc:	00913423          	sd	s1,8(sp)
    800010c0:	02010413          	addi	s0,sp,32
    800010c4:	00050493          	mv	s1,a0
    if (n < 0) {
        __putc('-');
        n = -n;
    }
    if (n/10)
    800010c8:	00900793          	li	a5,9
    800010cc:	02a7e663          	bltu	a5,a0,800010f8 <_Z8printIntm+0x48>
        printInt(n/10);
    __putc(n%10 + '0');
    800010d0:	00a00513          	li	a0,10
    800010d4:	02a4f533          	remu	a0,s1,a0
    800010d8:	03050513          	addi	a0,a0,48 # 1030 <_entry-0x7fffefd0>
    800010dc:	00003097          	auipc	ra,0x3
    800010e0:	200080e7          	jalr	512(ra) # 800042dc <__putc>
}
    800010e4:	01813083          	ld	ra,24(sp)
    800010e8:	01013403          	ld	s0,16(sp)
    800010ec:	00813483          	ld	s1,8(sp)
    800010f0:	02010113          	addi	sp,sp,32
    800010f4:	00008067          	ret
        printInt(n/10);
    800010f8:	00a00513          	li	a0,10
    800010fc:	02a4d533          	divu	a0,s1,a0
    80001100:	00000097          	auipc	ra,0x0
    80001104:	fb0080e7          	jalr	-80(ra) # 800010b0 <_Z8printIntm>
    80001108:	fc9ff06f          	j	800010d0 <_Z8printIntm+0x20>

000000008000110c <_Z12printIntegerm>:

void printInteger(uint64 n){
    8000110c:	ff010113          	addi	sp,sp,-16
    80001110:	00113423          	sd	ra,8(sp)
    80001114:	00813023          	sd	s0,0(sp)
    80001118:	01010413          	addi	s0,sp,16
    printInt(n);
    8000111c:	00000097          	auipc	ra,0x0
    80001120:	f94080e7          	jalr	-108(ra) # 800010b0 <_Z8printIntm>
    __putc('\n');
    80001124:	00a00513          	li	a0,10
    80001128:	00003097          	auipc	ra,0x3
    8000112c:	1b4080e7          	jalr	436(ra) # 800042dc <__putc>
}
    80001130:	00813083          	ld	ra,8(sp)
    80001134:	00013403          	ld	s0,0(sp)
    80001138:	01010113          	addi	sp,sp,16
    8000113c:	00008067          	ret

0000000080001140 <_Z10mallocFreev>:
void mallocFree(){
    80001140:	cd010113          	addi	sp,sp,-816
    80001144:	32113423          	sd	ra,808(sp)
    80001148:	32813023          	sd	s0,800(sp)
    8000114c:	33010413          	addi	s0,sp,816
    //================PROVERI CEO OVAJ SEGMENT U DEBUGGERU VEOMA DETALJNO, SADA KADA "RADI"=====================
    printString("mallocFree\n");
    80001150:	00004517          	auipc	a0,0x4
    80001154:	ed050513          	addi	a0,a0,-304 # 80005020 <CONSOLE_STATUS+0x10>
    80001158:	00000097          	auipc	ra,0x0
    8000115c:	ea8080e7          	jalr	-344(ra) # 80001000 <_Z11printStringPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i<num;i++){
    80001160:	00000693          	li	a3,0
    80001164:	0980006f          	j	800011fc <_Z10mallocFreev+0xbc>
        tryToJoin(cur);
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        size=size*(size_t)MEM_BLOCK_SIZE+sizeof(fmem_head); //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001168:	00060793          	mv	a5,a2
    8000116c:	0a40006f          	j	80001210 <_Z10mallocFreev+0xd0>
            cur->next=fmem_head->next;
            cur->prev=fmem_head->prev;
            if (cur->size<size) continue;
            if (cur->size-size<=sizeof(FreeMem)){
                if (cur->prev) cur->prev->next = cur->next;
                else fmem_head = cur->next;
    80001170:	00004717          	auipc	a4,0x4
    80001174:	3c073703          	ld	a4,960(a4) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001178:	00c73023          	sd	a2,0(a4)
    8000117c:	0d80006f          	j	80001254 <_Z10mallocFreev+0x114>
                if (cur->next) cur->next->prev = cur->prev;
                return cur;
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001180:	04878713          	addi	a4,a5,72
                newfrgm->prev=nullptr;
    80001184:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001188:	0407b423          	sd	zero,72(a5)
                if (cur->prev) cur->prev->next = newfrgm;
    8000118c:	0087b603          	ld	a2,8(a5)
    80001190:	0c060c63          	beqz	a2,80001268 <_Z10mallocFreev+0x128>
    80001194:	00e63023          	sd	a4,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
                if (cur->next) cur->next->prev = newfrgm;
    80001198:	0007b603          	ld	a2,0(a5)
    8000119c:	00060463          	beqz	a2,800011a4 <_Z10mallocFreev+0x64>
    800011a0:	00e63423          	sd	a4,8(a2)
                newfrgm->prev = cur->prev;
    800011a4:	0087b583          	ld	a1,8(a5)
    800011a8:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    800011ac:	0007b603          	ld	a2,0(a5)
    800011b0:	00c73023          	sd	a2,0(a4)
                newfrgm->size = cur->size-size;
    800011b4:	0107b783          	ld	a5,16(a5)
    800011b8:	fb878793          	addi	a5,a5,-72
    800011bc:	00f73823          	sd	a5,16(a4)
                fmem_head = newfrgm+sizeof(fmem_head);
    800011c0:	0c070613          	addi	a2,a4,192
    800011c4:	00004517          	auipc	a0,0x4
    800011c8:	36c53503          	ld	a0,876(a0) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800011cc:	00c53023          	sd	a2,0(a0)
                fmem_head->next=newfrgm->next;
    800011d0:	00073503          	ld	a0,0(a4)
    800011d4:	0ca73023          	sd	a0,192(a4)
                fmem_head->prev=newfrgm->prev;
    800011d8:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    800011dc:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    800011e0:	00070793          	mv	a5,a4
        addrs[i] = MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(50));
    800011e4:	00369713          	slli	a4,a3,0x3
    800011e8:	ff040613          	addi	a2,s0,-16
    800011ec:	00e60733          	add	a4,a2,a4
    800011f0:	cef73023          	sd	a5,-800(a4)
        if(addrs[i] == 0){
    800011f4:	08078463          	beqz	a5,8000127c <_Z10mallocFreev+0x13c>
    for(int i = 0; i<num;i++){
    800011f8:	0016869b          	addiw	a3,a3,1
    800011fc:	06300793          	li	a5,99
    80001200:	08d7ce63          	blt	a5,a3,8000129c <_Z10mallocFreev+0x15c>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001204:	00004797          	auipc	a5,0x4
    80001208:	32c7b783          	ld	a5,812(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000120c:	0007b783          	ld	a5,0(a5)
    80001210:	fc078ae3          	beqz	a5,800011e4 <_Z10mallocFreev+0xa4>
            cur->next=fmem_head->next;
    80001214:	00004717          	auipc	a4,0x4
    80001218:	31c73703          	ld	a4,796(a4) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000121c:	00073603          	ld	a2,0(a4)
    80001220:	00063603          	ld	a2,0(a2)
    80001224:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    80001228:	00073703          	ld	a4,0(a4)
    8000122c:	00873583          	ld	a1,8(a4)
    80001230:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80001234:	0107b703          	ld	a4,16(a5)
    80001238:	04700513          	li	a0,71
    8000123c:	f2e576e3          	bgeu	a0,a4,80001168 <_Z10mallocFreev+0x28>
            if (cur->size-size<=sizeof(FreeMem)){
    80001240:	fb870713          	addi	a4,a4,-72
    80001244:	01800513          	li	a0,24
    80001248:	f2e56ce3          	bltu	a0,a4,80001180 <_Z10mallocFreev+0x40>
                if (cur->prev) cur->prev->next = cur->next;
    8000124c:	f20582e3          	beqz	a1,80001170 <_Z10mallocFreev+0x30>
    80001250:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    80001254:	0007b703          	ld	a4,0(a5)
    80001258:	f80706e3          	beqz	a4,800011e4 <_Z10mallocFreev+0xa4>
    8000125c:	0087b603          	ld	a2,8(a5)
    80001260:	00c73423          	sd	a2,8(a4)
                return cur;
    80001264:	f81ff06f          	j	800011e4 <_Z10mallocFreev+0xa4>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
    80001268:	0c070613          	addi	a2,a4,192
    8000126c:	00004597          	auipc	a1,0x4
    80001270:	2c45b583          	ld	a1,708(a1) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001274:	00c5b023          	sd	a2,0(a1)
    80001278:	f21ff06f          	j	80001198 <_Z10mallocFreev+0x58>
            printString("not ok 1 \n");
    8000127c:	00004517          	auipc	a0,0x4
    80001280:	db450513          	addi	a0,a0,-588 # 80005030 <CONSOLE_STATUS+0x20>
    80001284:	00000097          	auipc	ra,0x0
    80001288:	d7c080e7          	jalr	-644(ra) # 80001000 <_Z11printStringPKc>
            return;
        }
    }

    printString("ok\n");;
}
    8000128c:	32813083          	ld	ra,808(sp)
    80001290:	32013403          	ld	s0,800(sp)
    80001294:	33010113          	addi	sp,sp,816
    80001298:	00008067          	ret
    printString("ok 1 \n");
    8000129c:	00004517          	auipc	a0,0x4
    800012a0:	da450513          	addi	a0,a0,-604 # 80005040 <CONSOLE_STATUS+0x30>
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	d5c080e7          	jalr	-676(ra) # 80001000 <_Z11printStringPKc>
    for(int i = 0 ; i<num;i+=2){
    800012ac:	00000613          	li	a2,0
    800012b0:	0800006f          	j	80001330 <_Z10mallocFreev+0x1f0>
            cur=nullptr;
    800012b4:	00078693          	mv	a3,a5
    800012b8:	0080006f          	j	800012c0 <_Z10mallocFreev+0x180>
    800012bc:	00000693          	li	a3,0
                newSeg->next=nullptr;
    800012c0:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE+sizeof(fmem_head);
    800012c4:	04800793          	li	a5,72
    800012c8:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    800012cc:	00d73423          	sd	a3,8(a4)
                if(cur) {
    800012d0:	0a068063          	beqz	a3,80001370 <_Z10mallocFreev+0x230>
                    newSeg->next = cur->next;
    800012d4:	0006b783          	ld	a5,0(a3)
    800012d8:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    800012dc:	00073783          	ld	a5,0(a4)
    800012e0:	00078463          	beqz	a5,800012e8 <_Z10mallocFreev+0x1a8>
                    newSeg->next->prev=newSeg;
    800012e4:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    800012e8:	08068e63          	beqz	a3,80001384 <_Z10mallocFreev+0x244>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800012ec:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    800012f0:	00070c63          	beqz	a4,80001308 <_Z10mallocFreev+0x1c8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800012f4:	00073783          	ld	a5,0(a4)
    800012f8:	00078863          	beqz	a5,80001308 <_Z10mallocFreev+0x1c8>
    800012fc:	01073583          	ld	a1,16(a4)
    80001300:	00b70533          	add	a0,a4,a1
    80001304:	08a78863          	beq	a5,a0,80001394 <_Z10mallocFreev+0x254>
        if (!curr) return;
    80001308:	00068c63          	beqz	a3,80001320 <_Z10mallocFreev+0x1e0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000130c:	0006b783          	ld	a5,0(a3)
    80001310:	00078863          	beqz	a5,80001320 <_Z10mallocFreev+0x1e0>
    80001314:	0106b583          	ld	a1,16(a3)
    80001318:	00b68533          	add	a0,a3,a1
    8000131c:	08a78c63          	beq	a5,a0,800013b4 <_Z10mallocFreev+0x274>
            if(newSeg==nullptr){
    80001320:	0a070a63          	beqz	a4,800013d4 <_Z10mallocFreev+0x294>
            }else{return 0;}
    80001324:	00000793          	li	a5,0
        if(retval != 0){
    80001328:	0a079a63          	bnez	a5,800013dc <_Z10mallocFreev+0x29c>
    for(int i = 0 ; i<num;i+=2){
    8000132c:	0026061b          	addiw	a2,a2,2
    80001330:	06300793          	li	a5,99
    80001334:	0ac7ce63          	blt	a5,a2,800013f0 <_Z10mallocFreev+0x2b0>
        int retval = MemoryAllocation::mem_free(addrs[i]); //stavi ove sa &
    80001338:	00361793          	slli	a5,a2,0x3
    8000133c:	ff040713          	addi	a4,s0,-16
    80001340:	00f707b3          	add	a5,a4,a5
    80001344:	ce07b703          	ld	a4,-800(a5)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001348:	00004797          	auipc	a5,0x4
    8000134c:	1e87b783          	ld	a5,488(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001350:	0007b783          	ld	a5,0(a5)
    80001354:	f60780e3          	beqz	a5,800012b4 <_Z10mallocFreev+0x174>
    80001358:	f6f762e3          	bltu	a4,a5,800012bc <_Z10mallocFreev+0x17c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    8000135c:	00078693          	mv	a3,a5
    80001360:	0007b783          	ld	a5,0(a5)
    80001364:	f4f70ee3          	beq	a4,a5,800012c0 <_Z10mallocFreev+0x180>
    80001368:	fee7eae3          	bltu	a5,a4,8000135c <_Z10mallocFreev+0x21c>
    8000136c:	f55ff06f          	j	800012c0 <_Z10mallocFreev+0x180>
                    newSeg->next = fmem_head;
    80001370:	00004797          	auipc	a5,0x4
    80001374:	1c07b783          	ld	a5,448(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001378:	0007b783          	ld	a5,0(a5)
    8000137c:	00f73023          	sd	a5,0(a4)
    80001380:	f5dff06f          	j	800012dc <_Z10mallocFreev+0x19c>
                    fmem_head = newSeg;
    80001384:	00004797          	auipc	a5,0x4
    80001388:	1ac7b783          	ld	a5,428(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000138c:	00e7b023          	sd	a4,0(a5)
    80001390:	f61ff06f          	j	800012f0 <_Z10mallocFreev+0x1b0>
            curr->size += curr->next->size;
    80001394:	0107b503          	ld	a0,16(a5)
    80001398:	00a585b3          	add	a1,a1,a0
    8000139c:	00b73823          	sd	a1,16(a4)
            curr->next = curr->next->next;
    800013a0:	0007b783          	ld	a5,0(a5)
    800013a4:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    800013a8:	f60780e3          	beqz	a5,80001308 <_Z10mallocFreev+0x1c8>
    800013ac:	00e7b423          	sd	a4,8(a5)
    800013b0:	f59ff06f          	j	80001308 <_Z10mallocFreev+0x1c8>
            curr->size += curr->next->size;
    800013b4:	0107b503          	ld	a0,16(a5)
    800013b8:	00a585b3          	add	a1,a1,a0
    800013bc:	00b6b823          	sd	a1,16(a3)
            curr->next = curr->next->next;
    800013c0:	0007b783          	ld	a5,0(a5)
    800013c4:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    800013c8:	f4078ce3          	beqz	a5,80001320 <_Z10mallocFreev+0x1e0>
    800013cc:	00d7b423          	sd	a3,8(a5)
    800013d0:	f51ff06f          	j	80001320 <_Z10mallocFreev+0x1e0>
                return -1;
    800013d4:	fff00793          	li	a5,-1
    800013d8:	f51ff06f          	j	80001328 <_Z10mallocFreev+0x1e8>
            printString("not ok 2\n");
    800013dc:	00004517          	auipc	a0,0x4
    800013e0:	c6c50513          	addi	a0,a0,-916 # 80005048 <CONSOLE_STATUS+0x38>
    800013e4:	00000097          	auipc	ra,0x0
    800013e8:	c1c080e7          	jalr	-996(ra) # 80001000 <_Z11printStringPKc>
            return;
    800013ec:	ea1ff06f          	j	8000128c <_Z10mallocFreev+0x14c>
    printString("ok 2 \n");
    800013f0:	00004517          	auipc	a0,0x4
    800013f4:	c6850513          	addi	a0,a0,-920 # 80005058 <CONSOLE_STATUS+0x48>
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	c08080e7          	jalr	-1016(ra) # 80001000 <_Z11printStringPKc>
    for(int i = 0 ; i<num;i+=2){
    80001400:	00000693          	li	a3,0
    80001404:	0980006f          	j	8000149c <_Z10mallocFreev+0x35c>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001408:	00060793          	mv	a5,a2
    8000140c:	0a40006f          	j	800014b0 <_Z10mallocFreev+0x370>
                else fmem_head = cur->next;
    80001410:	00004717          	auipc	a4,0x4
    80001414:	12073703          	ld	a4,288(a4) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001418:	00c73023          	sd	a2,0(a4)
    8000141c:	0d80006f          	j	800014f4 <_Z10mallocFreev+0x3b4>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001420:	04878713          	addi	a4,a5,72
                newfrgm->prev=nullptr;
    80001424:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001428:	0407b423          	sd	zero,72(a5)
                if (cur->prev) cur->prev->next = newfrgm;
    8000142c:	0087b603          	ld	a2,8(a5)
    80001430:	0c060c63          	beqz	a2,80001508 <_Z10mallocFreev+0x3c8>
    80001434:	00e63023          	sd	a4,0(a2)
                if (cur->next) cur->next->prev = newfrgm;
    80001438:	0007b603          	ld	a2,0(a5)
    8000143c:	00060463          	beqz	a2,80001444 <_Z10mallocFreev+0x304>
    80001440:	00e63423          	sd	a4,8(a2)
                newfrgm->prev = cur->prev;
    80001444:	0087b583          	ld	a1,8(a5)
    80001448:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    8000144c:	0007b603          	ld	a2,0(a5)
    80001450:	00c73023          	sd	a2,0(a4)
                newfrgm->size = cur->size-size;
    80001454:	0107b783          	ld	a5,16(a5)
    80001458:	fb878793          	addi	a5,a5,-72
    8000145c:	00f73823          	sd	a5,16(a4)
                fmem_head = newfrgm+sizeof(fmem_head);
    80001460:	0c070613          	addi	a2,a4,192
    80001464:	00004517          	auipc	a0,0x4
    80001468:	0cc53503          	ld	a0,204(a0) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000146c:	00c53023          	sd	a2,0(a0)
                fmem_head->next=newfrgm->next;
    80001470:	00073503          	ld	a0,0(a4)
    80001474:	0ca73023          	sd	a0,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001478:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    8000147c:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001480:	00070793          	mv	a5,a4
        addrs[i] = MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(20));
    80001484:	00369713          	slli	a4,a3,0x3
    80001488:	ff040613          	addi	a2,s0,-16
    8000148c:	00e60733          	add	a4,a2,a4
    80001490:	cef73023          	sd	a5,-800(a4)
        if(addrs[i] == 0){
    80001494:	08078463          	beqz	a5,8000151c <_Z10mallocFreev+0x3dc>
    for(int i = 0 ; i<num;i+=2){
    80001498:	0026869b          	addiw	a3,a3,2
    8000149c:	06300793          	li	a5,99
    800014a0:	08d7c863          	blt	a5,a3,80001530 <_Z10mallocFreev+0x3f0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800014a4:	00004797          	auipc	a5,0x4
    800014a8:	08c7b783          	ld	a5,140(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800014ac:	0007b783          	ld	a5,0(a5)
    800014b0:	fc078ae3          	beqz	a5,80001484 <_Z10mallocFreev+0x344>
            cur->next=fmem_head->next;
    800014b4:	00004717          	auipc	a4,0x4
    800014b8:	07c73703          	ld	a4,124(a4) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800014bc:	00073603          	ld	a2,0(a4)
    800014c0:	00063603          	ld	a2,0(a2)
    800014c4:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    800014c8:	00073703          	ld	a4,0(a4)
    800014cc:	00873583          	ld	a1,8(a4)
    800014d0:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    800014d4:	0107b703          	ld	a4,16(a5)
    800014d8:	04700513          	li	a0,71
    800014dc:	f2e576e3          	bgeu	a0,a4,80001408 <_Z10mallocFreev+0x2c8>
            if (cur->size-size<=sizeof(FreeMem)){
    800014e0:	fb870713          	addi	a4,a4,-72
    800014e4:	01800513          	li	a0,24
    800014e8:	f2e56ce3          	bltu	a0,a4,80001420 <_Z10mallocFreev+0x2e0>
                if (cur->prev) cur->prev->next = cur->next;
    800014ec:	f20582e3          	beqz	a1,80001410 <_Z10mallocFreev+0x2d0>
    800014f0:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    800014f4:	0007b703          	ld	a4,0(a5)
    800014f8:	f80706e3          	beqz	a4,80001484 <_Z10mallocFreev+0x344>
    800014fc:	0087b603          	ld	a2,8(a5)
    80001500:	00c73423          	sd	a2,8(a4)
                return cur;
    80001504:	f81ff06f          	j	80001484 <_Z10mallocFreev+0x344>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
    80001508:	0c070613          	addi	a2,a4,192
    8000150c:	00004597          	auipc	a1,0x4
    80001510:	0245b583          	ld	a1,36(a1) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001514:	00c5b023          	sd	a2,0(a1)
    80001518:	f21ff06f          	j	80001438 <_Z10mallocFreev+0x2f8>
            printString("not ok 3\n");;
    8000151c:	00004517          	auipc	a0,0x4
    80001520:	b4450513          	addi	a0,a0,-1212 # 80005060 <CONSOLE_STATUS+0x50>
    80001524:	00000097          	auipc	ra,0x0
    80001528:	adc080e7          	jalr	-1316(ra) # 80001000 <_Z11printStringPKc>
            return;
    8000152c:	d61ff06f          	j	8000128c <_Z10mallocFreev+0x14c>
    printString("ok 3 \n");
    80001530:	00004517          	auipc	a0,0x4
    80001534:	b4050513          	addi	a0,a0,-1216 # 80005070 <CONSOLE_STATUS+0x60>
    80001538:	00000097          	auipc	ra,0x0
    8000153c:	ac8080e7          	jalr	-1336(ra) # 80001000 <_Z11printStringPKc>
    for(int i = 0; i<num;i++){
    80001540:	00000613          	li	a2,0
    80001544:	0800006f          	j	800015c4 <_Z10mallocFreev+0x484>
            cur=nullptr;
    80001548:	00078693          	mv	a3,a5
    8000154c:	0080006f          	j	80001554 <_Z10mallocFreev+0x414>
    80001550:	00000693          	li	a3,0
                newSeg->next=nullptr;
    80001554:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE+sizeof(fmem_head);
    80001558:	04800793          	li	a5,72
    8000155c:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    80001560:	00d73423          	sd	a3,8(a4)
                if(cur) {
    80001564:	0a068063          	beqz	a3,80001604 <_Z10mallocFreev+0x4c4>
                    newSeg->next = cur->next;
    80001568:	0006b783          	ld	a5,0(a3)
    8000156c:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    80001570:	00073783          	ld	a5,0(a4)
    80001574:	00078463          	beqz	a5,8000157c <_Z10mallocFreev+0x43c>
                    newSeg->next->prev=newSeg;
    80001578:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    8000157c:	08068e63          	beqz	a3,80001618 <_Z10mallocFreev+0x4d8>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001580:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    80001584:	00070c63          	beqz	a4,8000159c <_Z10mallocFreev+0x45c>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001588:	00073783          	ld	a5,0(a4)
    8000158c:	00078863          	beqz	a5,8000159c <_Z10mallocFreev+0x45c>
    80001590:	01073583          	ld	a1,16(a4)
    80001594:	00b70533          	add	a0,a4,a1
    80001598:	08a78863          	beq	a5,a0,80001628 <_Z10mallocFreev+0x4e8>
        if (!curr) return;
    8000159c:	00068c63          	beqz	a3,800015b4 <_Z10mallocFreev+0x474>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800015a0:	0006b783          	ld	a5,0(a3)
    800015a4:	00078863          	beqz	a5,800015b4 <_Z10mallocFreev+0x474>
    800015a8:	0106b583          	ld	a1,16(a3)
    800015ac:	00b68533          	add	a0,a3,a1
    800015b0:	08a78c63          	beq	a5,a0,80001648 <_Z10mallocFreev+0x508>
            if(newSeg==nullptr){
    800015b4:	0a070a63          	beqz	a4,80001668 <_Z10mallocFreev+0x528>
            }else{return 0;}
    800015b8:	00000793          	li	a5,0
        if(retval != 0){
    800015bc:	0a079a63          	bnez	a5,80001670 <_Z10mallocFreev+0x530>
    for(int i = 0; i<num;i++){
    800015c0:	0016061b          	addiw	a2,a2,1
    800015c4:	06300793          	li	a5,99
    800015c8:	0ac7ce63          	blt	a5,a2,80001684 <_Z10mallocFreev+0x544>
        int retval = MemoryAllocation::mem_free(addrs[i]);
    800015cc:	00361793          	slli	a5,a2,0x3
    800015d0:	ff040713          	addi	a4,s0,-16
    800015d4:	00f707b3          	add	a5,a4,a5
    800015d8:	ce07b703          	ld	a4,-800(a5)
        if(!fmem_head || ptr < (char*)fmem_head)
    800015dc:	00004797          	auipc	a5,0x4
    800015e0:	f547b783          	ld	a5,-172(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800015e4:	0007b783          	ld	a5,0(a5)
    800015e8:	f60780e3          	beqz	a5,80001548 <_Z10mallocFreev+0x408>
    800015ec:	f6f762e3          	bltu	a4,a5,80001550 <_Z10mallocFreev+0x410>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800015f0:	00078693          	mv	a3,a5
    800015f4:	0007b783          	ld	a5,0(a5)
    800015f8:	f4f70ee3          	beq	a4,a5,80001554 <_Z10mallocFreev+0x414>
    800015fc:	fee7eae3          	bltu	a5,a4,800015f0 <_Z10mallocFreev+0x4b0>
    80001600:	f55ff06f          	j	80001554 <_Z10mallocFreev+0x414>
                    newSeg->next = fmem_head;
    80001604:	00004797          	auipc	a5,0x4
    80001608:	f2c7b783          	ld	a5,-212(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000160c:	0007b783          	ld	a5,0(a5)
    80001610:	00f73023          	sd	a5,0(a4)
    80001614:	f5dff06f          	j	80001570 <_Z10mallocFreev+0x430>
                    fmem_head = newSeg;
    80001618:	00004797          	auipc	a5,0x4
    8000161c:	f187b783          	ld	a5,-232(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001620:	00e7b023          	sd	a4,0(a5)
    80001624:	f61ff06f          	j	80001584 <_Z10mallocFreev+0x444>
            curr->size += curr->next->size;
    80001628:	0107b503          	ld	a0,16(a5)
    8000162c:	00a585b3          	add	a1,a1,a0
    80001630:	00b73823          	sd	a1,16(a4)
            curr->next = curr->next->next;
    80001634:	0007b783          	ld	a5,0(a5)
    80001638:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    8000163c:	f60780e3          	beqz	a5,8000159c <_Z10mallocFreev+0x45c>
    80001640:	00e7b423          	sd	a4,8(a5)
    80001644:	f59ff06f          	j	8000159c <_Z10mallocFreev+0x45c>
            curr->size += curr->next->size;
    80001648:	0107b503          	ld	a0,16(a5)
    8000164c:	00a585b3          	add	a1,a1,a0
    80001650:	00b6b823          	sd	a1,16(a3)
            curr->next = curr->next->next;
    80001654:	0007b783          	ld	a5,0(a5)
    80001658:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    8000165c:	f4078ce3          	beqz	a5,800015b4 <_Z10mallocFreev+0x474>
    80001660:	00d7b423          	sd	a3,8(a5)
    80001664:	f51ff06f          	j	800015b4 <_Z10mallocFreev+0x474>
                return -1;
    80001668:	fff00793          	li	a5,-1
    8000166c:	f51ff06f          	j	800015bc <_Z10mallocFreev+0x47c>
            printString("not ok 4\n");;
    80001670:	00004517          	auipc	a0,0x4
    80001674:	a0850513          	addi	a0,a0,-1528 # 80005078 <CONSOLE_STATUS+0x68>
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	988080e7          	jalr	-1656(ra) # 80001000 <_Z11printStringPKc>
            return;
    80001680:	c0dff06f          	j	8000128c <_Z10mallocFreev+0x14c>
    printString("ok\n");;
    80001684:	00004517          	auipc	a0,0x4
    80001688:	a0450513          	addi	a0,a0,-1532 # 80005088 <CONSOLE_STATUS+0x78>
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	974080e7          	jalr	-1676(ra) # 80001000 <_Z11printStringPKc>
    80001694:	bf9ff06f          	j	8000128c <_Z10mallocFreev+0x14c>

0000000080001698 <_Z9bigMallocv>:


void bigMalloc(){
    80001698:	ff010113          	addi	sp,sp,-16
    8000169c:	00113423          	sd	ra,8(sp)
    800016a0:	00813023          	sd	s0,0(sp)
    800016a4:	01010413          	addi	s0,sp,16
    printString("big Malloc\n");;
    800016a8:	00004517          	auipc	a0,0x4
    800016ac:	9e850513          	addi	a0,a0,-1560 # 80005090 <CONSOLE_STATUS+0x80>
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	950080e7          	jalr	-1712(ra) # 80001000 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    800016b8:	00004797          	auipc	a5,0x4
    800016bc:	e807b783          	ld	a5,-384(a5) # 80005538 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016c0:	0007b783          	ld	a5,0(a5)
    800016c4:	00004717          	auipc	a4,0x4
    800016c8:	e5473703          	ld	a4,-428(a4) # 80005518 <_GLOBAL_OFFSET_TABLE_+0x8>
    800016cc:	00073703          	ld	a4,0(a4)
    800016d0:	40e787b3          	sub	a5,a5,a4
    800016d4:	06478793          	addi	a5,a5,100
        size=size*(size_t)MEM_BLOCK_SIZE+sizeof(fmem_head); //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    800016d8:	00679793          	slli	a5,a5,0x6
    800016dc:	00878793          	addi	a5,a5,8
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800016e0:	00004717          	auipc	a4,0x4
    800016e4:	e5073703          	ld	a4,-432(a4) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800016e8:	00073703          	ld	a4,0(a4)
    800016ec:	0c070863          	beqz	a4,800017bc <_Z9bigMallocv+0x124>
            cur->next=fmem_head->next;
    800016f0:	00004697          	auipc	a3,0x4
    800016f4:	e406b683          	ld	a3,-448(a3) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800016f8:	0006b603          	ld	a2,0(a3)
    800016fc:	00063603          	ld	a2,0(a2)
    80001700:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    80001704:	0006b683          	ld	a3,0(a3)
    80001708:	0086b583          	ld	a1,8(a3)
    8000170c:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    80001710:	01073683          	ld	a3,16(a4)
    80001714:	02f6e663          	bltu	a3,a5,80001740 <_Z9bigMallocv+0xa8>
            if (cur->size-size<=sizeof(FreeMem)){
    80001718:	40f686b3          	sub	a3,a3,a5
    8000171c:	01800513          	li	a0,24
    80001720:	02d56c63          	bltu	a0,a3,80001758 <_Z9bigMallocv+0xc0>
                if (cur->prev) cur->prev->next = cur->next;
    80001724:	02058263          	beqz	a1,80001748 <_Z9bigMallocv+0xb0>
    80001728:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    8000172c:	00073783          	ld	a5,0(a4)
    80001730:	08078663          	beqz	a5,800017bc <_Z9bigMallocv+0x124>
    80001734:	00873683          	ld	a3,8(a4)
    80001738:	00d7b423          	sd	a3,8(a5)
                return cur;
    8000173c:	0800006f          	j	800017bc <_Z9bigMallocv+0x124>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001740:	00060713          	mv	a4,a2
    80001744:	fa9ff06f          	j	800016ec <_Z9bigMallocv+0x54>
                else fmem_head = cur->next;
    80001748:	00004797          	auipc	a5,0x4
    8000174c:	de87b783          	ld	a5,-536(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001750:	00c7b023          	sd	a2,0(a5)
    80001754:	fd9ff06f          	j	8000172c <_Z9bigMallocv+0x94>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001758:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    8000175c:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    80001760:	0006b023          	sd	zero,0(a3)
                if (cur->prev) cur->prev->next = newfrgm;
    80001764:	00873603          	ld	a2,8(a4)
    80001768:	06060c63          	beqz	a2,800017e0 <_Z9bigMallocv+0x148>
    8000176c:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = newfrgm;
    80001770:	00073603          	ld	a2,0(a4)
    80001774:	00060463          	beqz	a2,8000177c <_Z9bigMallocv+0xe4>
    80001778:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    8000177c:	00873603          	ld	a2,8(a4)
    80001780:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    80001784:	00073583          	ld	a1,0(a4)
    80001788:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    8000178c:	01073703          	ld	a4,16(a4)
    80001790:	40f707b3          	sub	a5,a4,a5
    80001794:	00f6b823          	sd	a5,16(a3)
                fmem_head = newfrgm+sizeof(fmem_head);
    80001798:	0c068713          	addi	a4,a3,192
    8000179c:	00004597          	auipc	a1,0x4
    800017a0:	d945b583          	ld	a1,-620(a1) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800017a4:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    800017a8:	0006b583          	ld	a1,0(a3)
    800017ac:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    800017b0:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    800017b4:	0cf6b823          	sd	a5,208(a3)
                return newfrgm;
    800017b8:	00068713          	mv	a4,a3
    void* p = MemoryAllocation::mem_alloc(x);
    if(p == 0) printString("ok\n");
    800017bc:	02070c63          	beqz	a4,800017f4 <_Z9bigMallocv+0x15c>
    else printString("not ok\n");
    800017c0:	00004517          	auipc	a0,0x4
    800017c4:	8e050513          	addi	a0,a0,-1824 # 800050a0 <CONSOLE_STATUS+0x90>
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	838080e7          	jalr	-1992(ra) # 80001000 <_Z11printStringPKc>
}
    800017d0:	00813083          	ld	ra,8(sp)
    800017d4:	00013403          	ld	s0,0(sp)
    800017d8:	01010113          	addi	sp,sp,16
    800017dc:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
    800017e0:	0c068613          	addi	a2,a3,192
    800017e4:	00004597          	auipc	a1,0x4
    800017e8:	d4c5b583          	ld	a1,-692(a1) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800017ec:	00c5b023          	sd	a2,0(a1)
    800017f0:	f81ff06f          	j	80001770 <_Z9bigMallocv+0xd8>
    if(p == 0) printString("ok\n");
    800017f4:	00004517          	auipc	a0,0x4
    800017f8:	89450513          	addi	a0,a0,-1900 # 80005088 <CONSOLE_STATUS+0x78>
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	804080e7          	jalr	-2044(ra) # 80001000 <_Z11printStringPKc>
    80001804:	fcdff06f          	j	800017d0 <_Z9bigMallocv+0x138>

0000000080001808 <_Z17lotOfSmallMallocsv>:
    int a,b,c,d,e;
};



void lotOfSmallMallocs(){
    80001808:	fe010113          	addi	sp,sp,-32
    8000180c:	00113c23          	sd	ra,24(sp)
    80001810:	00813823          	sd	s0,16(sp)
    80001814:	00913423          	sd	s1,8(sp)
    80001818:	01213023          	sd	s2,0(sp)
    8000181c:	02010413          	addi	s0,sp,32
    printString("lotOfSmallMallocs\n");;
    80001820:	00004517          	auipc	a0,0x4
    80001824:	88850513          	addi	a0,a0,-1912 # 800050a8 <CONSOLE_STATUS+0x98>
    80001828:	fffff097          	auipc	ra,0xfffff
    8000182c:	7d8080e7          	jalr	2008(ra) # 80001000 <_Z11printStringPKc>
    int cnt = 0;
    int sum = 0;
    int N = 100000;
    int X = 10;
    for(int i = 0; i<N;i++) {
    80001830:	00000693          	li	a3,0
    int sum = 0;
    80001834:	00000913          	li	s2,0
    int cnt = 0;
    80001838:	00000493          	li	s1,0
    8000183c:	0a80006f          	j	800018e4 <_Z17lotOfSmallMallocsv+0xdc>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001840:	00060793          	mv	a5,a2
    80001844:	0b80006f          	j	800018fc <_Z17lotOfSmallMallocsv+0xf4>
                else fmem_head = cur->next;
    80001848:	00004717          	auipc	a4,0x4
    8000184c:	ce873703          	ld	a4,-792(a4) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001850:	00c73023          	sd	a2,0(a4)
    80001854:	0ec0006f          	j	80001940 <_Z17lotOfSmallMallocsv+0x138>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001858:	04878713          	addi	a4,a5,72
                newfrgm->prev=nullptr;
    8000185c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001860:	0407b423          	sd	zero,72(a5)
                if (cur->prev) cur->prev->next = newfrgm;
    80001864:	0087b603          	ld	a2,8(a5)
    80001868:	0e060663          	beqz	a2,80001954 <_Z17lotOfSmallMallocsv+0x14c>
    8000186c:	00e63023          	sd	a4,0(a2)
                if (cur->next) cur->next->prev = newfrgm;
    80001870:	0007b603          	ld	a2,0(a5)
    80001874:	00060463          	beqz	a2,8000187c <_Z17lotOfSmallMallocsv+0x74>
    80001878:	00e63423          	sd	a4,8(a2)
                newfrgm->prev = cur->prev;
    8000187c:	0087b583          	ld	a1,8(a5)
    80001880:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    80001884:	0007b603          	ld	a2,0(a5)
    80001888:	00c73023          	sd	a2,0(a4)
                newfrgm->size = cur->size-size;
    8000188c:	0107b783          	ld	a5,16(a5)
    80001890:	fb878793          	addi	a5,a5,-72
    80001894:	00f73823          	sd	a5,16(a4)
                fmem_head = newfrgm+sizeof(fmem_head);
    80001898:	0c070613          	addi	a2,a4,192
    8000189c:	00004517          	auipc	a0,0x4
    800018a0:	c9453503          	ld	a0,-876(a0) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018a4:	00c53023          	sd	a2,0(a0)
                fmem_head->next=newfrgm->next;
    800018a8:	00073503          	ld	a0,0(a4)
    800018ac:	0ca73023          	sd	a0,192(a4)
                fmem_head->prev=newfrgm->prev;
    800018b0:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    800018b4:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800018b8:	00070793          	mv	a5,a4
        Test *t = (Test*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Test)));
        if(t == 0)break;
    800018bc:	0a078663          	beqz	a5,80001968 <_Z17lotOfSmallMallocsv+0x160>
        t->a = X;
    800018c0:	00a00713          	li	a4,10
    800018c4:	00e7a023          	sw	a4,0(a5)
        t->b = X;
    800018c8:	00e7a223          	sw	a4,4(a5)
        t->c = X;
    800018cc:	00e7a423          	sw	a4,8(a5)
        t->d = X;
    800018d0:	00e7a623          	sw	a4,12(a5)
        t->e = X;
    800018d4:	00e7a823          	sw	a4,16(a5)

        sum+=X;
    800018d8:	00a9091b          	addiw	s2,s2,10
        cnt++;
    800018dc:	0014849b          	addiw	s1,s1,1
    for(int i = 0; i<N;i++) {
    800018e0:	0016869b          	addiw	a3,a3,1
    800018e4:	000187b7          	lui	a5,0x18
    800018e8:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    800018ec:	06d7ce63          	blt	a5,a3,80001968 <_Z17lotOfSmallMallocsv+0x160>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800018f0:	00004797          	auipc	a5,0x4
    800018f4:	c407b783          	ld	a5,-960(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018f8:	0007b783          	ld	a5,0(a5)
    800018fc:	fc0780e3          	beqz	a5,800018bc <_Z17lotOfSmallMallocsv+0xb4>
            cur->next=fmem_head->next;
    80001900:	00004717          	auipc	a4,0x4
    80001904:	c3073703          	ld	a4,-976(a4) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001908:	00073603          	ld	a2,0(a4)
    8000190c:	00063603          	ld	a2,0(a2)
    80001910:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    80001914:	00073703          	ld	a4,0(a4)
    80001918:	00873583          	ld	a1,8(a4)
    8000191c:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80001920:	0107b703          	ld	a4,16(a5)
    80001924:	04700513          	li	a0,71
    80001928:	f0e57ce3          	bgeu	a0,a4,80001840 <_Z17lotOfSmallMallocsv+0x38>
            if (cur->size-size<=sizeof(FreeMem)){
    8000192c:	fb870713          	addi	a4,a4,-72
    80001930:	01800513          	li	a0,24
    80001934:	f2e562e3          	bltu	a0,a4,80001858 <_Z17lotOfSmallMallocsv+0x50>
                if (cur->prev) cur->prev->next = cur->next;
    80001938:	f00588e3          	beqz	a1,80001848 <_Z17lotOfSmallMallocsv+0x40>
    8000193c:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    80001940:	0007b703          	ld	a4,0(a5)
    80001944:	f6070ce3          	beqz	a4,800018bc <_Z17lotOfSmallMallocsv+0xb4>
    80001948:	0087b603          	ld	a2,8(a5)
    8000194c:	00c73423          	sd	a2,8(a4)
                return cur;
    80001950:	f6dff06f          	j	800018bc <_Z17lotOfSmallMallocsv+0xb4>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
    80001954:	0c070613          	addi	a2,a4,192
    80001958:	00004597          	auipc	a1,0x4
    8000195c:	bd85b583          	ld	a1,-1064(a1) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001960:	00c5b023          	sd	a2,0(a1)
    80001964:	f0dff06f          	j	80001870 <_Z17lotOfSmallMallocsv+0x68>
    }
    printInteger(cnt);
    80001968:	00048513          	mv	a0,s1
    8000196c:	fffff097          	auipc	ra,0xfffff
    80001970:	7a0080e7          	jalr	1952(ra) # 8000110c <_Z12printIntegerm>
    printString("\n");
    80001974:	00003517          	auipc	a0,0x3
    80001978:	6dc50513          	addi	a0,a0,1756 # 80005050 <CONSOLE_STATUS+0x40>
    8000197c:	fffff097          	auipc	ra,0xfffff
    80001980:	684080e7          	jalr	1668(ra) # 80001000 <_Z11printStringPKc>
    if(sum == X*cnt) printString("ok\n");
    80001984:	0024979b          	slliw	a5,s1,0x2
    80001988:	009784bb          	addw	s1,a5,s1
    8000198c:	0014979b          	slliw	a5,s1,0x1
    80001990:	0007879b          	sext.w	a5,a5
    80001994:	03278663          	beq	a5,s2,800019c0 <_Z17lotOfSmallMallocsv+0x1b8>
    else printString("not ok\n");
    80001998:	00003517          	auipc	a0,0x3
    8000199c:	70850513          	addi	a0,a0,1800 # 800050a0 <CONSOLE_STATUS+0x90>
    800019a0:	fffff097          	auipc	ra,0xfffff
    800019a4:	660080e7          	jalr	1632(ra) # 80001000 <_Z11printStringPKc>
}
    800019a8:	01813083          	ld	ra,24(sp)
    800019ac:	01013403          	ld	s0,16(sp)
    800019b0:	00813483          	ld	s1,8(sp)
    800019b4:	00013903          	ld	s2,0(sp)
    800019b8:	02010113          	addi	sp,sp,32
    800019bc:	00008067          	ret
    if(sum == X*cnt) printString("ok\n");
    800019c0:	00003517          	auipc	a0,0x3
    800019c4:	6c850513          	addi	a0,a0,1736 # 80005088 <CONSOLE_STATUS+0x78>
    800019c8:	fffff097          	auipc	ra,0xfffff
    800019cc:	638080e7          	jalr	1592(ra) # 80001000 <_Z11printStringPKc>
    800019d0:	fd9ff06f          	j	800019a8 <_Z17lotOfSmallMallocsv+0x1a0>

00000000800019d4 <_Z13stressTestingv>:

void stressTesting(){
    800019d4:	81010113          	addi	sp,sp,-2032
    800019d8:	7e113423          	sd	ra,2024(sp)
    800019dc:	7e813023          	sd	s0,2016(sp)
    800019e0:	7c913c23          	sd	s1,2008(sp)
    800019e4:	7d213823          	sd	s2,2000(sp)
    800019e8:	7d313423          	sd	s3,1992(sp)
    800019ec:	7f010413          	addi	s0,sp,2032
    800019f0:	93010113          	addi	sp,sp,-1744
    printString("stressTesting\n");
    800019f4:	00003517          	auipc	a0,0x3
    800019f8:	6cc50513          	addi	a0,a0,1740 # 800050c0 <CONSOLE_STATUS+0xb0>
    800019fc:	fffff097          	auipc	ra,0xfffff
    80001a00:	604080e7          	jalr	1540(ra) # 80001000 <_Z11printStringPKc>
    constexpr int num = 465;
    void* addrs[num];
    for(int i = 0; i<num;i++){
    80001a04:	00000613          	li	a2,0
    80001a08:	0a00006f          	j	80001aa8 <_Z13stressTestingv+0xd4>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001a0c:	00068793          	mv	a5,a3
    80001a10:	0ac0006f          	j	80001abc <_Z13stressTestingv+0xe8>
                else fmem_head = cur->next;
    80001a14:	00004717          	auipc	a4,0x4
    80001a18:	b1c73703          	ld	a4,-1252(a4) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a1c:	00d73023          	sd	a3,0(a4)
    80001a20:	0e00006f          	j	80001b00 <_Z13stressTestingv+0x12c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001a24:	04878713          	addi	a4,a5,72
                newfrgm->prev=nullptr;
    80001a28:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001a2c:	0407b423          	sd	zero,72(a5)
                if (cur->prev) cur->prev->next = newfrgm;
    80001a30:	0087b683          	ld	a3,8(a5)
    80001a34:	0e068063          	beqz	a3,80001b14 <_Z13stressTestingv+0x140>
    80001a38:	00e6b023          	sd	a4,0(a3)
                if (cur->next) cur->next->prev = newfrgm;
    80001a3c:	0007b683          	ld	a3,0(a5)
    80001a40:	00068463          	beqz	a3,80001a48 <_Z13stressTestingv+0x74>
    80001a44:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001a48:	0087b583          	ld	a1,8(a5)
    80001a4c:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    80001a50:	0007b683          	ld	a3,0(a5)
    80001a54:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001a58:	0107b783          	ld	a5,16(a5)
    80001a5c:	fb878793          	addi	a5,a5,-72
    80001a60:	00f73823          	sd	a5,16(a4)
                fmem_head = newfrgm+sizeof(fmem_head);
    80001a64:	0c070693          	addi	a3,a4,192
    80001a68:	00004517          	auipc	a0,0x4
    80001a6c:	ac853503          	ld	a0,-1336(a0) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a70:	00d53023          	sd	a3,0(a0)
                fmem_head->next=newfrgm->next;
    80001a74:	00073503          	ld	a0,0(a4)
    80001a78:	0ca73023          	sd	a0,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001a7c:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    80001a80:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001a84:	00070793          	mv	a5,a4
        addrs[i] = MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(1));
    80001a88:	fffff6b7          	lui	a3,0xfffff
    80001a8c:	00361713          	slli	a4,a2,0x3
    80001a90:	fd040593          	addi	a1,s0,-48
    80001a94:	00d586b3          	add	a3,a1,a3
    80001a98:	00e68733          	add	a4,a3,a4
    80001a9c:	16f73c23          	sd	a5,376(a4)
        if(addrs[i] == 0){
    80001aa0:	08078463          	beqz	a5,80001b28 <_Z13stressTestingv+0x154>
    for(int i = 0; i<num;i++){
    80001aa4:	0016061b          	addiw	a2,a2,1
    80001aa8:	1d000793          	li	a5,464
    80001aac:	0ac7c663          	blt	a5,a2,80001b58 <_Z13stressTestingv+0x184>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001ab0:	00004797          	auipc	a5,0x4
    80001ab4:	a807b783          	ld	a5,-1408(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ab8:	0007b783          	ld	a5,0(a5)
    80001abc:	fc0786e3          	beqz	a5,80001a88 <_Z13stressTestingv+0xb4>
            cur->next=fmem_head->next;
    80001ac0:	00004717          	auipc	a4,0x4
    80001ac4:	a7073703          	ld	a4,-1424(a4) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ac8:	00073683          	ld	a3,0(a4)
    80001acc:	0006b683          	ld	a3,0(a3) # fffffffffffff000 <end+0xffffffff7fff8810>
    80001ad0:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001ad4:	00073703          	ld	a4,0(a4)
    80001ad8:	00873583          	ld	a1,8(a4)
    80001adc:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80001ae0:	0107b703          	ld	a4,16(a5)
    80001ae4:	04700513          	li	a0,71
    80001ae8:	f2e572e3          	bgeu	a0,a4,80001a0c <_Z13stressTestingv+0x38>
            if (cur->size-size<=sizeof(FreeMem)){
    80001aec:	fb870713          	addi	a4,a4,-72
    80001af0:	01800513          	li	a0,24
    80001af4:	f2e568e3          	bltu	a0,a4,80001a24 <_Z13stressTestingv+0x50>
                if (cur->prev) cur->prev->next = cur->next;
    80001af8:	f0058ee3          	beqz	a1,80001a14 <_Z13stressTestingv+0x40>
    80001afc:	00d5b023          	sd	a3,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    80001b00:	0007b703          	ld	a4,0(a5)
    80001b04:	f80702e3          	beqz	a4,80001a88 <_Z13stressTestingv+0xb4>
    80001b08:	0087b683          	ld	a3,8(a5)
    80001b0c:	00d73423          	sd	a3,8(a4)
                return cur;
    80001b10:	f79ff06f          	j	80001a88 <_Z13stressTestingv+0xb4>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
    80001b14:	0c070693          	addi	a3,a4,192
    80001b18:	00004597          	auipc	a1,0x4
    80001b1c:	a185b583          	ld	a1,-1512(a1) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001b20:	00d5b023          	sd	a3,0(a1)
    80001b24:	f19ff06f          	j	80001a3c <_Z13stressTestingv+0x68>
            printString("not ok\n");
    80001b28:	00003517          	auipc	a0,0x3
    80001b2c:	57850513          	addi	a0,a0,1400 # 800050a0 <CONSOLE_STATUS+0x90>
    80001b30:	fffff097          	auipc	ra,0xfffff
    80001b34:	4d0080e7          	jalr	1232(ra) # 80001000 <_Z11printStringPKc>
            }
        }
        sz-=10;
    }
    printString("ok\n");;
}
    80001b38:	6d010113          	addi	sp,sp,1744
    80001b3c:	7e813083          	ld	ra,2024(sp)
    80001b40:	7e013403          	ld	s0,2016(sp)
    80001b44:	7d813483          	ld	s1,2008(sp)
    80001b48:	7d013903          	ld	s2,2000(sp)
    80001b4c:	7c813983          	ld	s3,1992(sp)
    80001b50:	7f010113          	addi	sp,sp,2032
    80001b54:	00008067          	ret
    int sz = 5;
    80001b58:	00500913          	li	s2,5
    while(sz > 0){
    80001b5c:	59205c63          	blez	s2,800020f4 <_Z13stressTestingv+0x720>
        printString("sz:");
    80001b60:	00003517          	auipc	a0,0x3
    80001b64:	57050513          	addi	a0,a0,1392 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001b68:	fffff097          	auipc	ra,0xfffff
    80001b6c:	498080e7          	jalr	1176(ra) # 80001000 <_Z11printStringPKc>
        printInteger(sz);
    80001b70:	00090993          	mv	s3,s2
    80001b74:	00090513          	mv	a0,s2
    80001b78:	fffff097          	auipc	ra,0xfffff
    80001b7c:	594080e7          	jalr	1428(ra) # 8000110c <_Z12printIntegerm>
        for(int i = 0 ; i<num;i+=2){
    80001b80:	00000493          	li	s1,0
    80001b84:	2180006f          	j	80001d9c <_Z13stressTestingv+0x3c8>
            cur=nullptr;
    80001b88:	00078693          	mv	a3,a5
    80001b8c:	0080006f          	j	80001b94 <_Z13stressTestingv+0x1c0>
    80001b90:	00000693          	li	a3,0
                newSeg->next=nullptr;
    80001b94:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE+sizeof(fmem_head);
    80001b98:	04800793          	li	a5,72
    80001b9c:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    80001ba0:	00d73423          	sd	a3,8(a4)
                if(cur) {
    80001ba4:	0c068e63          	beqz	a3,80001c80 <_Z13stressTestingv+0x2ac>
                    newSeg->next = cur->next;
    80001ba8:	0006b783          	ld	a5,0(a3)
    80001bac:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    80001bb0:	00073783          	ld	a5,0(a4)
    80001bb4:	00078463          	beqz	a5,80001bbc <_Z13stressTestingv+0x1e8>
                    newSeg->next->prev=newSeg;
    80001bb8:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    80001bbc:	0c068c63          	beqz	a3,80001c94 <_Z13stressTestingv+0x2c0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001bc0:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    80001bc4:	00070c63          	beqz	a4,80001bdc <_Z13stressTestingv+0x208>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001bc8:	00073783          	ld	a5,0(a4)
    80001bcc:	00078863          	beqz	a5,80001bdc <_Z13stressTestingv+0x208>
    80001bd0:	01073603          	ld	a2,16(a4)
    80001bd4:	00c705b3          	add	a1,a4,a2
    80001bd8:	0cb78663          	beq	a5,a1,80001ca4 <_Z13stressTestingv+0x2d0>
        if (!curr) return;
    80001bdc:	00068c63          	beqz	a3,80001bf4 <_Z13stressTestingv+0x220>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001be0:	0006b783          	ld	a5,0(a3)
    80001be4:	00078863          	beqz	a5,80001bf4 <_Z13stressTestingv+0x220>
    80001be8:	0106b603          	ld	a2,16(a3)
    80001bec:	00c685b3          	add	a1,a3,a2
    80001bf0:	0cb78a63          	beq	a5,a1,80001cc4 <_Z13stressTestingv+0x2f0>
            if(newSeg==nullptr){
    80001bf4:	0e070863          	beqz	a4,80001ce4 <_Z13stressTestingv+0x310>
            }else{return 0;}
    80001bf8:	00000793          	li	a5,0
            if(retval != 0){
    80001bfc:	0e079863          	bnez	a5,80001cec <_Z13stressTestingv+0x318>
            printString("alloc\n");
    80001c00:	00003517          	auipc	a0,0x3
    80001c04:	4e850513          	addi	a0,a0,1256 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001c08:	fffff097          	auipc	ra,0xfffff
    80001c0c:	3f8080e7          	jalr	1016(ra) # 80001000 <_Z11printStringPKc>
            addrs[i] = MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sz*2));
    80001c10:	0019171b          	slliw	a4,s2,0x1
        return (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001c14:	03f70713          	addi	a4,a4,63
        size=size*(size_t)MEM_BLOCK_SIZE+sizeof(fmem_head); //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80001c18:	fc077713          	andi	a4,a4,-64
    80001c1c:	00870713          	addi	a4,a4,8
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001c20:	00004797          	auipc	a5,0x4
    80001c24:	9107b783          	ld	a5,-1776(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c28:	0007b783          	ld	a5,0(a5)
    80001c2c:	14078863          	beqz	a5,80001d7c <_Z13stressTestingv+0x3a8>
            cur->next=fmem_head->next;
    80001c30:	00004697          	auipc	a3,0x4
    80001c34:	9006b683          	ld	a3,-1792(a3) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c38:	0006b603          	ld	a2,0(a3)
    80001c3c:	00063603          	ld	a2,0(a2)
    80001c40:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    80001c44:	0006b683          	ld	a3,0(a3)
    80001c48:	0086b583          	ld	a1,8(a3)
    80001c4c:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80001c50:	0107b683          	ld	a3,16(a5)
    80001c54:	0ae6e663          	bltu	a3,a4,80001d00 <_Z13stressTestingv+0x32c>
            if (cur->size-size<=sizeof(FreeMem)){
    80001c58:	40e686b3          	sub	a3,a3,a4
    80001c5c:	01800513          	li	a0,24
    80001c60:	0ad56c63          	bltu	a0,a3,80001d18 <_Z13stressTestingv+0x344>
                if (cur->prev) cur->prev->next = cur->next;
    80001c64:	0a058263          	beqz	a1,80001d08 <_Z13stressTestingv+0x334>
    80001c68:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    80001c6c:	0007b703          	ld	a4,0(a5)
    80001c70:	10070663          	beqz	a4,80001d7c <_Z13stressTestingv+0x3a8>
    80001c74:	0087b683          	ld	a3,8(a5)
    80001c78:	00d73423          	sd	a3,8(a4)
                return cur;
    80001c7c:	1000006f          	j	80001d7c <_Z13stressTestingv+0x3a8>
                    newSeg->next = fmem_head;
    80001c80:	00004797          	auipc	a5,0x4
    80001c84:	8b07b783          	ld	a5,-1872(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c88:	0007b783          	ld	a5,0(a5)
    80001c8c:	00f73023          	sd	a5,0(a4)
    80001c90:	f21ff06f          	j	80001bb0 <_Z13stressTestingv+0x1dc>
                    fmem_head = newSeg;
    80001c94:	00004797          	auipc	a5,0x4
    80001c98:	89c7b783          	ld	a5,-1892(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001c9c:	00e7b023          	sd	a4,0(a5)
    80001ca0:	f25ff06f          	j	80001bc4 <_Z13stressTestingv+0x1f0>
            curr->size += curr->next->size;
    80001ca4:	0107b583          	ld	a1,16(a5)
    80001ca8:	00b60633          	add	a2,a2,a1
    80001cac:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    80001cb0:	0007b783          	ld	a5,0(a5)
    80001cb4:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001cb8:	f20782e3          	beqz	a5,80001bdc <_Z13stressTestingv+0x208>
    80001cbc:	00e7b423          	sd	a4,8(a5)
    80001cc0:	f1dff06f          	j	80001bdc <_Z13stressTestingv+0x208>
            curr->size += curr->next->size;
    80001cc4:	0107b583          	ld	a1,16(a5)
    80001cc8:	00b60633          	add	a2,a2,a1
    80001ccc:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    80001cd0:	0007b783          	ld	a5,0(a5)
    80001cd4:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    80001cd8:	f0078ee3          	beqz	a5,80001bf4 <_Z13stressTestingv+0x220>
    80001cdc:	00d7b423          	sd	a3,8(a5)
    80001ce0:	f15ff06f          	j	80001bf4 <_Z13stressTestingv+0x220>
                return -1;
    80001ce4:	fff00793          	li	a5,-1
    80001ce8:	f15ff06f          	j	80001bfc <_Z13stressTestingv+0x228>
                printString("not ok\n");
    80001cec:	00003517          	auipc	a0,0x3
    80001cf0:	3b450513          	addi	a0,a0,948 # 800050a0 <CONSOLE_STATUS+0x90>
    80001cf4:	fffff097          	auipc	ra,0xfffff
    80001cf8:	30c080e7          	jalr	780(ra) # 80001000 <_Z11printStringPKc>
                return;
    80001cfc:	e3dff06f          	j	80001b38 <_Z13stressTestingv+0x164>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001d00:	00060793          	mv	a5,a2
    80001d04:	f29ff06f          	j	80001c2c <_Z13stressTestingv+0x258>
                else fmem_head = cur->next;
    80001d08:	00004717          	auipc	a4,0x4
    80001d0c:	82873703          	ld	a4,-2008(a4) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d10:	00c73023          	sd	a2,0(a4)
    80001d14:	f59ff06f          	j	80001c6c <_Z13stressTestingv+0x298>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001d18:	00e786b3          	add	a3,a5,a4
                newfrgm->prev=nullptr;
    80001d1c:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    80001d20:	0006b023          	sd	zero,0(a3)
                if (cur->prev) cur->prev->next = newfrgm;
    80001d24:	0087b603          	ld	a2,8(a5)
    80001d28:	0e060463          	beqz	a2,80001e10 <_Z13stressTestingv+0x43c>
    80001d2c:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = newfrgm;
    80001d30:	0007b603          	ld	a2,0(a5)
    80001d34:	00060463          	beqz	a2,80001d3c <_Z13stressTestingv+0x368>
    80001d38:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    80001d3c:	0087b603          	ld	a2,8(a5)
    80001d40:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    80001d44:	0007b583          	ld	a1,0(a5)
    80001d48:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    80001d4c:	0107b783          	ld	a5,16(a5)
    80001d50:	40e78733          	sub	a4,a5,a4
    80001d54:	00e6b823          	sd	a4,16(a3)
                fmem_head = newfrgm+sizeof(fmem_head);
    80001d58:	0c068793          	addi	a5,a3,192
    80001d5c:	00003597          	auipc	a1,0x3
    80001d60:	7d45b583          	ld	a1,2004(a1) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d64:	00f5b023          	sd	a5,0(a1)
                fmem_head->next=newfrgm->next;
    80001d68:	0006b583          	ld	a1,0(a3)
    80001d6c:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    80001d70:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    80001d74:	0ce6b823          	sd	a4,208(a3)
                return newfrgm;
    80001d78:	00068793          	mv	a5,a3
            addrs[i] = MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sz*2));
    80001d7c:	fffff6b7          	lui	a3,0xfffff
    80001d80:	00349713          	slli	a4,s1,0x3
    80001d84:	fd040613          	addi	a2,s0,-48
    80001d88:	00d606b3          	add	a3,a2,a3
    80001d8c:	00e68733          	add	a4,a3,a4
    80001d90:	16f73c23          	sd	a5,376(a4)
            if(addrs[i] == 0){
    80001d94:	08078863          	beqz	a5,80001e24 <_Z13stressTestingv+0x450>
        for(int i = 0 ; i<num;i+=2){
    80001d98:	0024849b          	addiw	s1,s1,2
    80001d9c:	1d000793          	li	a5,464
    80001da0:	0897cc63          	blt	a5,s1,80001e38 <_Z13stressTestingv+0x464>
            printString("i:");
    80001da4:	00003517          	auipc	a0,0x3
    80001da8:	33450513          	addi	a0,a0,820 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001dac:	fffff097          	auipc	ra,0xfffff
    80001db0:	254080e7          	jalr	596(ra) # 80001000 <_Z11printStringPKc>
            printInteger(i);
    80001db4:	00048513          	mv	a0,s1
    80001db8:	fffff097          	auipc	ra,0xfffff
    80001dbc:	354080e7          	jalr	852(ra) # 8000110c <_Z12printIntegerm>
            printString("free\n");
    80001dc0:	00003517          	auipc	a0,0x3
    80001dc4:	32050513          	addi	a0,a0,800 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001dc8:	fffff097          	auipc	ra,0xfffff
    80001dcc:	238080e7          	jalr	568(ra) # 80001000 <_Z11printStringPKc>
            int retval = MemoryAllocation::mem_free(addrs[i]);
    80001dd0:	fffff737          	lui	a4,0xfffff
    80001dd4:	00349793          	slli	a5,s1,0x3
    80001dd8:	fd040693          	addi	a3,s0,-48
    80001ddc:	00e68733          	add	a4,a3,a4
    80001de0:	00f707b3          	add	a5,a4,a5
    80001de4:	1787b703          	ld	a4,376(a5)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001de8:	00003797          	auipc	a5,0x3
    80001dec:	7487b783          	ld	a5,1864(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001df0:	0007b783          	ld	a5,0(a5)
    80001df4:	d8078ae3          	beqz	a5,80001b88 <_Z13stressTestingv+0x1b4>
    80001df8:	d8f76ce3          	bltu	a4,a5,80001b90 <_Z13stressTestingv+0x1bc>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001dfc:	00078693          	mv	a3,a5
    80001e00:	0007b783          	ld	a5,0(a5)
    80001e04:	d8f708e3          	beq	a4,a5,80001b94 <_Z13stressTestingv+0x1c0>
    80001e08:	fee7eae3          	bltu	a5,a4,80001dfc <_Z13stressTestingv+0x428>
    80001e0c:	d89ff06f          	j	80001b94 <_Z13stressTestingv+0x1c0>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
    80001e10:	0c068613          	addi	a2,a3,192 # fffffffffffff0c0 <end+0xffffffff7fff88d0>
    80001e14:	00003597          	auipc	a1,0x3
    80001e18:	71c5b583          	ld	a1,1820(a1) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e1c:	00c5b023          	sd	a2,0(a1)
    80001e20:	f11ff06f          	j	80001d30 <_Z13stressTestingv+0x35c>
                printString("not ok\n");;
    80001e24:	00003517          	auipc	a0,0x3
    80001e28:	27c50513          	addi	a0,a0,636 # 800050a0 <CONSOLE_STATUS+0x90>
    80001e2c:	fffff097          	auipc	ra,0xfffff
    80001e30:	1d4080e7          	jalr	468(ra) # 80001000 <_Z11printStringPKc>
                return;
    80001e34:	d05ff06f          	j	80001b38 <_Z13stressTestingv+0x164>
        for(int i = 1 ; i<num;i+=2){
    80001e38:	00100493          	li	s1,1
    80001e3c:	2140006f          	j	80002050 <_Z13stressTestingv+0x67c>
            cur=nullptr;
    80001e40:	00078693          	mv	a3,a5
    80001e44:	0080006f          	j	80001e4c <_Z13stressTestingv+0x478>
    80001e48:	00000693          	li	a3,0
                newSeg->next=nullptr;
    80001e4c:	00073023          	sd	zero,0(a4) # fffffffffffff000 <end+0xffffffff7fff8810>
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE+sizeof(fmem_head);
    80001e50:	04800793          	li	a5,72
    80001e54:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    80001e58:	00d73423          	sd	a3,8(a4)
                if(cur) {
    80001e5c:	0c068c63          	beqz	a3,80001f34 <_Z13stressTestingv+0x560>
                    newSeg->next = cur->next;
    80001e60:	0006b783          	ld	a5,0(a3)
    80001e64:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    80001e68:	00073783          	ld	a5,0(a4)
    80001e6c:	00078463          	beqz	a5,80001e74 <_Z13stressTestingv+0x4a0>
                    newSeg->next->prev=newSeg;
    80001e70:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    80001e74:	0c068a63          	beqz	a3,80001f48 <_Z13stressTestingv+0x574>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001e78:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    80001e7c:	00070c63          	beqz	a4,80001e94 <_Z13stressTestingv+0x4c0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001e80:	00073783          	ld	a5,0(a4)
    80001e84:	00078863          	beqz	a5,80001e94 <_Z13stressTestingv+0x4c0>
    80001e88:	01073603          	ld	a2,16(a4)
    80001e8c:	00c705b3          	add	a1,a4,a2
    80001e90:	0cb78463          	beq	a5,a1,80001f58 <_Z13stressTestingv+0x584>
        if (!curr) return;
    80001e94:	00068c63          	beqz	a3,80001eac <_Z13stressTestingv+0x4d8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001e98:	0006b783          	ld	a5,0(a3)
    80001e9c:	00078863          	beqz	a5,80001eac <_Z13stressTestingv+0x4d8>
    80001ea0:	0106b603          	ld	a2,16(a3)
    80001ea4:	00c685b3          	add	a1,a3,a2
    80001ea8:	0cb78863          	beq	a5,a1,80001f78 <_Z13stressTestingv+0x5a4>
            if(newSeg==nullptr){
    80001eac:	0e070663          	beqz	a4,80001f98 <_Z13stressTestingv+0x5c4>
            }else{return 0;}
    80001eb0:	00000793          	li	a5,0
            if(retval != 0){
    80001eb4:	0e079663          	bnez	a5,80001fa0 <_Z13stressTestingv+0x5cc>
            printString("alloc\n");
    80001eb8:	00003517          	auipc	a0,0x3
    80001ebc:	23050513          	addi	a0,a0,560 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001ec0:	fffff097          	auipc	ra,0xfffff
    80001ec4:	140080e7          	jalr	320(ra) # 80001000 <_Z11printStringPKc>
        return (size+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001ec8:	03f98713          	addi	a4,s3,63
        size=size*(size_t)MEM_BLOCK_SIZE+sizeof(fmem_head); //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80001ecc:	fc077713          	andi	a4,a4,-64
    80001ed0:	00870713          	addi	a4,a4,8
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001ed4:	00003797          	auipc	a5,0x3
    80001ed8:	65c7b783          	ld	a5,1628(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001edc:	0007b783          	ld	a5,0(a5)
    80001ee0:	14078863          	beqz	a5,80002030 <_Z13stressTestingv+0x65c>
            cur->next=fmem_head->next;
    80001ee4:	00003697          	auipc	a3,0x3
    80001ee8:	64c6b683          	ld	a3,1612(a3) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001eec:	0006b603          	ld	a2,0(a3)
    80001ef0:	00063603          	ld	a2,0(a2)
    80001ef4:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    80001ef8:	0006b683          	ld	a3,0(a3)
    80001efc:	0086b583          	ld	a1,8(a3)
    80001f00:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80001f04:	0107b683          	ld	a3,16(a5)
    80001f08:	0ae6e663          	bltu	a3,a4,80001fb4 <_Z13stressTestingv+0x5e0>
            if (cur->size-size<=sizeof(FreeMem)){
    80001f0c:	40e686b3          	sub	a3,a3,a4
    80001f10:	01800513          	li	a0,24
    80001f14:	0ad56c63          	bltu	a0,a3,80001fcc <_Z13stressTestingv+0x5f8>
                if (cur->prev) cur->prev->next = cur->next;
    80001f18:	0a058263          	beqz	a1,80001fbc <_Z13stressTestingv+0x5e8>
    80001f1c:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    80001f20:	0007b703          	ld	a4,0(a5)
    80001f24:	10070663          	beqz	a4,80002030 <_Z13stressTestingv+0x65c>
    80001f28:	0087b683          	ld	a3,8(a5)
    80001f2c:	00d73423          	sd	a3,8(a4)
                return cur;
    80001f30:	1000006f          	j	80002030 <_Z13stressTestingv+0x65c>
                    newSeg->next = fmem_head;
    80001f34:	00003797          	auipc	a5,0x3
    80001f38:	5fc7b783          	ld	a5,1532(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001f3c:	0007b783          	ld	a5,0(a5)
    80001f40:	00f73023          	sd	a5,0(a4)
    80001f44:	f25ff06f          	j	80001e68 <_Z13stressTestingv+0x494>
                    fmem_head = newSeg;
    80001f48:	00003797          	auipc	a5,0x3
    80001f4c:	5e87b783          	ld	a5,1512(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001f50:	00e7b023          	sd	a4,0(a5)
    80001f54:	f29ff06f          	j	80001e7c <_Z13stressTestingv+0x4a8>
            curr->size += curr->next->size;
    80001f58:	0107b583          	ld	a1,16(a5)
    80001f5c:	00b60633          	add	a2,a2,a1
    80001f60:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    80001f64:	0007b783          	ld	a5,0(a5)
    80001f68:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001f6c:	f20784e3          	beqz	a5,80001e94 <_Z13stressTestingv+0x4c0>
    80001f70:	00e7b423          	sd	a4,8(a5)
    80001f74:	f21ff06f          	j	80001e94 <_Z13stressTestingv+0x4c0>
            curr->size += curr->next->size;
    80001f78:	0107b583          	ld	a1,16(a5)
    80001f7c:	00b60633          	add	a2,a2,a1
    80001f80:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    80001f84:	0007b783          	ld	a5,0(a5)
    80001f88:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    80001f8c:	f20780e3          	beqz	a5,80001eac <_Z13stressTestingv+0x4d8>
    80001f90:	00d7b423          	sd	a3,8(a5)
    80001f94:	f19ff06f          	j	80001eac <_Z13stressTestingv+0x4d8>
                return -1;
    80001f98:	fff00793          	li	a5,-1
    80001f9c:	f19ff06f          	j	80001eb4 <_Z13stressTestingv+0x4e0>
                printString("not ok\n");
    80001fa0:	00003517          	auipc	a0,0x3
    80001fa4:	10050513          	addi	a0,a0,256 # 800050a0 <CONSOLE_STATUS+0x90>
    80001fa8:	fffff097          	auipc	ra,0xfffff
    80001fac:	058080e7          	jalr	88(ra) # 80001000 <_Z11printStringPKc>
                return;
    80001fb0:	b89ff06f          	j	80001b38 <_Z13stressTestingv+0x164>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001fb4:	00060793          	mv	a5,a2
    80001fb8:	f29ff06f          	j	80001ee0 <_Z13stressTestingv+0x50c>
                else fmem_head = cur->next;
    80001fbc:	00003717          	auipc	a4,0x3
    80001fc0:	57473703          	ld	a4,1396(a4) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001fc4:	00c73023          	sd	a2,0(a4)
    80001fc8:	f59ff06f          	j	80001f20 <_Z13stressTestingv+0x54c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001fcc:	00e786b3          	add	a3,a5,a4
                newfrgm->prev=nullptr;
    80001fd0:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    80001fd4:	0006b023          	sd	zero,0(a3)
                if (cur->prev) cur->prev->next = newfrgm;
    80001fd8:	0087b603          	ld	a2,8(a5)
    80001fdc:	0e060463          	beqz	a2,800020c4 <_Z13stressTestingv+0x6f0>
    80001fe0:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = newfrgm;
    80001fe4:	0007b603          	ld	a2,0(a5)
    80001fe8:	00060463          	beqz	a2,80001ff0 <_Z13stressTestingv+0x61c>
    80001fec:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    80001ff0:	0087b603          	ld	a2,8(a5)
    80001ff4:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    80001ff8:	0007b583          	ld	a1,0(a5)
    80001ffc:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    80002000:	0107b783          	ld	a5,16(a5)
    80002004:	40e78733          	sub	a4,a5,a4
    80002008:	00e6b823          	sd	a4,16(a3)
                fmem_head = newfrgm+sizeof(fmem_head);
    8000200c:	0c068793          	addi	a5,a3,192
    80002010:	00003597          	auipc	a1,0x3
    80002014:	5205b583          	ld	a1,1312(a1) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002018:	00f5b023          	sd	a5,0(a1)
                fmem_head->next=newfrgm->next;
    8000201c:	0006b583          	ld	a1,0(a3)
    80002020:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    80002024:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    80002028:	0ce6b823          	sd	a4,208(a3)
                return newfrgm;
    8000202c:	00068793          	mv	a5,a3
            addrs[i] = MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sz));
    80002030:	fffff6b7          	lui	a3,0xfffff
    80002034:	00349713          	slli	a4,s1,0x3
    80002038:	fd040613          	addi	a2,s0,-48
    8000203c:	00d606b3          	add	a3,a2,a3
    80002040:	00e68733          	add	a4,a3,a4
    80002044:	16f73c23          	sd	a5,376(a4)
            if(addrs[i] == 0){
    80002048:	08078863          	beqz	a5,800020d8 <_Z13stressTestingv+0x704>
        for(int i = 1 ; i<num;i+=2){
    8000204c:	0024849b          	addiw	s1,s1,2
    80002050:	1d000793          	li	a5,464
    80002054:	0897cc63          	blt	a5,s1,800020ec <_Z13stressTestingv+0x718>
            printString("i:");
    80002058:	00003517          	auipc	a0,0x3
    8000205c:	08050513          	addi	a0,a0,128 # 800050d8 <CONSOLE_STATUS+0xc8>
    80002060:	fffff097          	auipc	ra,0xfffff
    80002064:	fa0080e7          	jalr	-96(ra) # 80001000 <_Z11printStringPKc>
            printInteger(i);
    80002068:	00048513          	mv	a0,s1
    8000206c:	fffff097          	auipc	ra,0xfffff
    80002070:	0a0080e7          	jalr	160(ra) # 8000110c <_Z12printIntegerm>
            printString("free\n");
    80002074:	00003517          	auipc	a0,0x3
    80002078:	06c50513          	addi	a0,a0,108 # 800050e0 <CONSOLE_STATUS+0xd0>
    8000207c:	fffff097          	auipc	ra,0xfffff
    80002080:	f84080e7          	jalr	-124(ra) # 80001000 <_Z11printStringPKc>
            int retval = MemoryAllocation::mem_free(addrs[i]);
    80002084:	fffff737          	lui	a4,0xfffff
    80002088:	00349793          	slli	a5,s1,0x3
    8000208c:	fd040693          	addi	a3,s0,-48
    80002090:	00e68733          	add	a4,a3,a4
    80002094:	00f707b3          	add	a5,a4,a5
    80002098:	1787b703          	ld	a4,376(a5)
        if(!fmem_head || ptr < (char*)fmem_head)
    8000209c:	00003797          	auipc	a5,0x3
    800020a0:	4947b783          	ld	a5,1172(a5) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800020a4:	0007b783          	ld	a5,0(a5)
    800020a8:	d8078ce3          	beqz	a5,80001e40 <_Z13stressTestingv+0x46c>
    800020ac:	d8f76ee3          	bltu	a4,a5,80001e48 <_Z13stressTestingv+0x474>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800020b0:	00078693          	mv	a3,a5
    800020b4:	0007b783          	ld	a5,0(a5)
    800020b8:	d8f70ae3          	beq	a4,a5,80001e4c <_Z13stressTestingv+0x478>
    800020bc:	fee7eae3          	bltu	a5,a4,800020b0 <_Z13stressTestingv+0x6dc>
    800020c0:	d8dff06f          	j	80001e4c <_Z13stressTestingv+0x478>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
    800020c4:	0c068613          	addi	a2,a3,192 # fffffffffffff0c0 <end+0xffffffff7fff88d0>
    800020c8:	00003597          	auipc	a1,0x3
    800020cc:	4685b583          	ld	a1,1128(a1) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    800020d0:	00c5b023          	sd	a2,0(a1)
    800020d4:	f11ff06f          	j	80001fe4 <_Z13stressTestingv+0x610>
                printString("not ok\n");;
    800020d8:	00003517          	auipc	a0,0x3
    800020dc:	fc850513          	addi	a0,a0,-56 # 800050a0 <CONSOLE_STATUS+0x90>
    800020e0:	fffff097          	auipc	ra,0xfffff
    800020e4:	f20080e7          	jalr	-224(ra) # 80001000 <_Z11printStringPKc>
                return;
    800020e8:	a51ff06f          	j	80001b38 <_Z13stressTestingv+0x164>
        sz-=10;
    800020ec:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0){
    800020f0:	a6dff06f          	j	80001b5c <_Z13stressTestingv+0x188>
    printString("ok\n");;
    800020f4:	00003517          	auipc	a0,0x3
    800020f8:	f9450513          	addi	a0,a0,-108 # 80005088 <CONSOLE_STATUS+0x78>
    800020fc:	fffff097          	auipc	ra,0xfffff
    80002100:	f04080e7          	jalr	-252(ra) # 80001000 <_Z11printStringPKc>
    80002104:	a35ff06f          	j	80001b38 <_Z13stressTestingv+0x164>

0000000080002108 <main>:


int main(){
    80002108:	ff010113          	addi	sp,sp,-16
    8000210c:	00113423          	sd	ra,8(sp)
    80002110:	00813023          	sd	s0,0(sp)
    80002114:	01010413          	addi	s0,sp,16
        if (!instance) {
    80002118:	00003797          	auipc	a5,0x3
    8000211c:	4107b783          	ld	a5,1040(a5) # 80005528 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002120:	0007b783          	ld	a5,0(a5)
    80002124:	04078063          	beqz	a5,80002164 <main+0x5c>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    //printInt(MemoryAllocation::availableMemory());
    printString("\n");
    80002128:	00003517          	auipc	a0,0x3
    8000212c:	f2850513          	addi	a0,a0,-216 # 80005050 <CONSOLE_STATUS+0x40>
    80002130:	fffff097          	auipc	ra,0xfffff
    80002134:	ed0080e7          	jalr	-304(ra) # 80001000 <_Z11printStringPKc>
    //bigMalloc();

    //lotOfSmallMallocs();
    mallocFree();
    80002138:	fffff097          	auipc	ra,0xfffff
    8000213c:	008080e7          	jalr	8(ra) # 80001140 <_Z10mallocFreev>
    //stressTesting();
    //printInt(MemoryAllocation::availableMemory());
    printString("\n");
    80002140:	00003517          	auipc	a0,0x3
    80002144:	f1050513          	addi	a0,a0,-240 # 80005050 <CONSOLE_STATUS+0x40>
    80002148:	fffff097          	auipc	ra,0xfffff
    8000214c:	eb8080e7          	jalr	-328(ra) # 80001000 <_Z11printStringPKc>
    return 0;
    80002150:	00000513          	li	a0,0
    80002154:	00813083          	ld	ra,8(sp)
    80002158:	00013403          	ld	s0,0(sp)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80002164:	00003797          	auipc	a5,0x3
    80002168:	3b47b783          	ld	a5,948(a5) # 80005518 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000216c:	0007b783          	ld	a5,0(a5)
    80002170:	00003697          	auipc	a3,0x3
    80002174:	3c06b683          	ld	a3,960(a3) # 80005530 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002178:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    8000217c:	00003717          	auipc	a4,0x3
    80002180:	3bc73703          	ld	a4,956(a4) # 80005538 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002184:	00073703          	ld	a4,0(a4)
    80002188:	40f70733          	sub	a4,a4,a5
    8000218c:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    80002190:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80002194:	0006b783          	ld	a5,0(a3)
    80002198:	0007b423          	sd	zero,8(a5)
            return instance;
    8000219c:	f8dff06f          	j	80002128 <main+0x20>

00000000800021a0 <_Z41__static_initialization_and_destruction_0ii>:

#include "MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    800021a0:	ff010113          	addi	sp,sp,-16
    800021a4:	00813423          	sd	s0,8(sp)
    800021a8:	01010413          	addi	s0,sp,16
    800021ac:	00100793          	li	a5,1
    800021b0:	00f50863          	beq	a0,a5,800021c0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800021b4:	00813403          	ld	s0,8(sp)
    800021b8:	01010113          	addi	sp,sp,16
    800021bc:	00008067          	ret
    800021c0:	000107b7          	lui	a5,0x10
    800021c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800021c8:	fef596e3          	bne	a1,a5,800021b4 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    800021cc:	00003797          	auipc	a5,0x3
    800021d0:	34c7b783          	ld	a5,844(a5) # 80005518 <_GLOBAL_OFFSET_TABLE_+0x8>
    800021d4:	0007b783          	ld	a5,0(a5)
    800021d8:	00003717          	auipc	a4,0x3
    800021dc:	3af73c23          	sd	a5,952(a4) # 80005590 <_ZN16MemoryAllocation9fmem_headE>
    800021e0:	fd5ff06f          	j	800021b4 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800021e4 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00113423          	sd	ra,8(sp)
    800021ec:	00813023          	sd	s0,0(sp)
    800021f0:	01010413          	addi	s0,sp,16
    800021f4:	000105b7          	lui	a1,0x10
    800021f8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800021fc:	00100513          	li	a0,1
    80002200:	00000097          	auipc	ra,0x0
    80002204:	fa0080e7          	jalr	-96(ra) # 800021a0 <_Z41__static_initialization_and_destruction_0ii>
    80002208:	00813083          	ld	ra,8(sp)
    8000220c:	00013403          	ld	s0,0(sp)
    80002210:	01010113          	addi	sp,sp,16
    80002214:	00008067          	ret

0000000080002218 <start>:
    80002218:	ff010113          	addi	sp,sp,-16
    8000221c:	00813423          	sd	s0,8(sp)
    80002220:	01010413          	addi	s0,sp,16
    80002224:	300027f3          	csrr	a5,mstatus
    80002228:	ffffe737          	lui	a4,0xffffe
    8000222c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff800f>
    80002230:	00e7f7b3          	and	a5,a5,a4
    80002234:	00001737          	lui	a4,0x1
    80002238:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000223c:	00e7e7b3          	or	a5,a5,a4
    80002240:	30079073          	csrw	mstatus,a5
    80002244:	00000797          	auipc	a5,0x0
    80002248:	16078793          	addi	a5,a5,352 # 800023a4 <system_main>
    8000224c:	34179073          	csrw	mepc,a5
    80002250:	00000793          	li	a5,0
    80002254:	18079073          	csrw	satp,a5
    80002258:	000107b7          	lui	a5,0x10
    8000225c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002260:	30279073          	csrw	medeleg,a5
    80002264:	30379073          	csrw	mideleg,a5
    80002268:	104027f3          	csrr	a5,sie
    8000226c:	2227e793          	ori	a5,a5,546
    80002270:	10479073          	csrw	sie,a5
    80002274:	fff00793          	li	a5,-1
    80002278:	00a7d793          	srli	a5,a5,0xa
    8000227c:	3b079073          	csrw	pmpaddr0,a5
    80002280:	00f00793          	li	a5,15
    80002284:	3a079073          	csrw	pmpcfg0,a5
    80002288:	f14027f3          	csrr	a5,mhartid
    8000228c:	0200c737          	lui	a4,0x200c
    80002290:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002294:	0007869b          	sext.w	a3,a5
    80002298:	00269713          	slli	a4,a3,0x2
    8000229c:	000f4637          	lui	a2,0xf4
    800022a0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800022a4:	00d70733          	add	a4,a4,a3
    800022a8:	0037979b          	slliw	a5,a5,0x3
    800022ac:	020046b7          	lui	a3,0x2004
    800022b0:	00d787b3          	add	a5,a5,a3
    800022b4:	00c585b3          	add	a1,a1,a2
    800022b8:	00371693          	slli	a3,a4,0x3
    800022bc:	00003717          	auipc	a4,0x3
    800022c0:	2e470713          	addi	a4,a4,740 # 800055a0 <timer_scratch>
    800022c4:	00b7b023          	sd	a1,0(a5)
    800022c8:	00d70733          	add	a4,a4,a3
    800022cc:	00f73c23          	sd	a5,24(a4)
    800022d0:	02c73023          	sd	a2,32(a4)
    800022d4:	34071073          	csrw	mscratch,a4
    800022d8:	00000797          	auipc	a5,0x0
    800022dc:	6e878793          	addi	a5,a5,1768 # 800029c0 <timervec>
    800022e0:	30579073          	csrw	mtvec,a5
    800022e4:	300027f3          	csrr	a5,mstatus
    800022e8:	0087e793          	ori	a5,a5,8
    800022ec:	30079073          	csrw	mstatus,a5
    800022f0:	304027f3          	csrr	a5,mie
    800022f4:	0807e793          	ori	a5,a5,128
    800022f8:	30479073          	csrw	mie,a5
    800022fc:	f14027f3          	csrr	a5,mhartid
    80002300:	0007879b          	sext.w	a5,a5
    80002304:	00078213          	mv	tp,a5
    80002308:	30200073          	mret
    8000230c:	00813403          	ld	s0,8(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <timerinit>:
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00813423          	sd	s0,8(sp)
    80002320:	01010413          	addi	s0,sp,16
    80002324:	f14027f3          	csrr	a5,mhartid
    80002328:	0200c737          	lui	a4,0x200c
    8000232c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002330:	0007869b          	sext.w	a3,a5
    80002334:	00269713          	slli	a4,a3,0x2
    80002338:	000f4637          	lui	a2,0xf4
    8000233c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002340:	00d70733          	add	a4,a4,a3
    80002344:	0037979b          	slliw	a5,a5,0x3
    80002348:	020046b7          	lui	a3,0x2004
    8000234c:	00d787b3          	add	a5,a5,a3
    80002350:	00c585b3          	add	a1,a1,a2
    80002354:	00371693          	slli	a3,a4,0x3
    80002358:	00003717          	auipc	a4,0x3
    8000235c:	24870713          	addi	a4,a4,584 # 800055a0 <timer_scratch>
    80002360:	00b7b023          	sd	a1,0(a5)
    80002364:	00d70733          	add	a4,a4,a3
    80002368:	00f73c23          	sd	a5,24(a4)
    8000236c:	02c73023          	sd	a2,32(a4)
    80002370:	34071073          	csrw	mscratch,a4
    80002374:	00000797          	auipc	a5,0x0
    80002378:	64c78793          	addi	a5,a5,1612 # 800029c0 <timervec>
    8000237c:	30579073          	csrw	mtvec,a5
    80002380:	300027f3          	csrr	a5,mstatus
    80002384:	0087e793          	ori	a5,a5,8
    80002388:	30079073          	csrw	mstatus,a5
    8000238c:	304027f3          	csrr	a5,mie
    80002390:	0807e793          	ori	a5,a5,128
    80002394:	30479073          	csrw	mie,a5
    80002398:	00813403          	ld	s0,8(sp)
    8000239c:	01010113          	addi	sp,sp,16
    800023a0:	00008067          	ret

00000000800023a4 <system_main>:
    800023a4:	fe010113          	addi	sp,sp,-32
    800023a8:	00813823          	sd	s0,16(sp)
    800023ac:	00913423          	sd	s1,8(sp)
    800023b0:	00113c23          	sd	ra,24(sp)
    800023b4:	02010413          	addi	s0,sp,32
    800023b8:	00000097          	auipc	ra,0x0
    800023bc:	0c4080e7          	jalr	196(ra) # 8000247c <cpuid>
    800023c0:	00003497          	auipc	s1,0x3
    800023c4:	1a048493          	addi	s1,s1,416 # 80005560 <started>
    800023c8:	02050263          	beqz	a0,800023ec <system_main+0x48>
    800023cc:	0004a783          	lw	a5,0(s1)
    800023d0:	0007879b          	sext.w	a5,a5
    800023d4:	fe078ce3          	beqz	a5,800023cc <system_main+0x28>
    800023d8:	0ff0000f          	fence
    800023dc:	00003517          	auipc	a0,0x3
    800023e0:	d4450513          	addi	a0,a0,-700 # 80005120 <CONSOLE_STATUS+0x110>
    800023e4:	00001097          	auipc	ra,0x1
    800023e8:	a78080e7          	jalr	-1416(ra) # 80002e5c <panic>
    800023ec:	00001097          	auipc	ra,0x1
    800023f0:	9cc080e7          	jalr	-1588(ra) # 80002db8 <consoleinit>
    800023f4:	00001097          	auipc	ra,0x1
    800023f8:	158080e7          	jalr	344(ra) # 8000354c <printfinit>
    800023fc:	00003517          	auipc	a0,0x3
    80002400:	c5450513          	addi	a0,a0,-940 # 80005050 <CONSOLE_STATUS+0x40>
    80002404:	00001097          	auipc	ra,0x1
    80002408:	ab4080e7          	jalr	-1356(ra) # 80002eb8 <__printf>
    8000240c:	00003517          	auipc	a0,0x3
    80002410:	ce450513          	addi	a0,a0,-796 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002414:	00001097          	auipc	ra,0x1
    80002418:	aa4080e7          	jalr	-1372(ra) # 80002eb8 <__printf>
    8000241c:	00003517          	auipc	a0,0x3
    80002420:	c3450513          	addi	a0,a0,-972 # 80005050 <CONSOLE_STATUS+0x40>
    80002424:	00001097          	auipc	ra,0x1
    80002428:	a94080e7          	jalr	-1388(ra) # 80002eb8 <__printf>
    8000242c:	00001097          	auipc	ra,0x1
    80002430:	4ac080e7          	jalr	1196(ra) # 800038d8 <kinit>
    80002434:	00000097          	auipc	ra,0x0
    80002438:	148080e7          	jalr	328(ra) # 8000257c <trapinit>
    8000243c:	00000097          	auipc	ra,0x0
    80002440:	16c080e7          	jalr	364(ra) # 800025a8 <trapinithart>
    80002444:	00000097          	auipc	ra,0x0
    80002448:	5bc080e7          	jalr	1468(ra) # 80002a00 <plicinit>
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	5dc080e7          	jalr	1500(ra) # 80002a28 <plicinithart>
    80002454:	00000097          	auipc	ra,0x0
    80002458:	078080e7          	jalr	120(ra) # 800024cc <userinit>
    8000245c:	0ff0000f          	fence
    80002460:	00100793          	li	a5,1
    80002464:	00003517          	auipc	a0,0x3
    80002468:	ca450513          	addi	a0,a0,-860 # 80005108 <CONSOLE_STATUS+0xf8>
    8000246c:	00f4a023          	sw	a5,0(s1)
    80002470:	00001097          	auipc	ra,0x1
    80002474:	a48080e7          	jalr	-1464(ra) # 80002eb8 <__printf>
    80002478:	0000006f          	j	80002478 <system_main+0xd4>

000000008000247c <cpuid>:
    8000247c:	ff010113          	addi	sp,sp,-16
    80002480:	00813423          	sd	s0,8(sp)
    80002484:	01010413          	addi	s0,sp,16
    80002488:	00020513          	mv	a0,tp
    8000248c:	00813403          	ld	s0,8(sp)
    80002490:	0005051b          	sext.w	a0,a0
    80002494:	01010113          	addi	sp,sp,16
    80002498:	00008067          	ret

000000008000249c <mycpu>:
    8000249c:	ff010113          	addi	sp,sp,-16
    800024a0:	00813423          	sd	s0,8(sp)
    800024a4:	01010413          	addi	s0,sp,16
    800024a8:	00020793          	mv	a5,tp
    800024ac:	00813403          	ld	s0,8(sp)
    800024b0:	0007879b          	sext.w	a5,a5
    800024b4:	00779793          	slli	a5,a5,0x7
    800024b8:	00004517          	auipc	a0,0x4
    800024bc:	11850513          	addi	a0,a0,280 # 800065d0 <cpus>
    800024c0:	00f50533          	add	a0,a0,a5
    800024c4:	01010113          	addi	sp,sp,16
    800024c8:	00008067          	ret

00000000800024cc <userinit>:
    800024cc:	ff010113          	addi	sp,sp,-16
    800024d0:	00813423          	sd	s0,8(sp)
    800024d4:	01010413          	addi	s0,sp,16
    800024d8:	00813403          	ld	s0,8(sp)
    800024dc:	01010113          	addi	sp,sp,16
    800024e0:	00000317          	auipc	t1,0x0
    800024e4:	c2830067          	jr	-984(t1) # 80002108 <main>

00000000800024e8 <either_copyout>:
    800024e8:	ff010113          	addi	sp,sp,-16
    800024ec:	00813023          	sd	s0,0(sp)
    800024f0:	00113423          	sd	ra,8(sp)
    800024f4:	01010413          	addi	s0,sp,16
    800024f8:	02051663          	bnez	a0,80002524 <either_copyout+0x3c>
    800024fc:	00058513          	mv	a0,a1
    80002500:	00060593          	mv	a1,a2
    80002504:	0006861b          	sext.w	a2,a3
    80002508:	00002097          	auipc	ra,0x2
    8000250c:	c5c080e7          	jalr	-932(ra) # 80004164 <__memmove>
    80002510:	00813083          	ld	ra,8(sp)
    80002514:	00013403          	ld	s0,0(sp)
    80002518:	00000513          	li	a0,0
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret
    80002524:	00003517          	auipc	a0,0x3
    80002528:	c2450513          	addi	a0,a0,-988 # 80005148 <CONSOLE_STATUS+0x138>
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	930080e7          	jalr	-1744(ra) # 80002e5c <panic>

0000000080002534 <either_copyin>:
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00813023          	sd	s0,0(sp)
    8000253c:	00113423          	sd	ra,8(sp)
    80002540:	01010413          	addi	s0,sp,16
    80002544:	02059463          	bnez	a1,8000256c <either_copyin+0x38>
    80002548:	00060593          	mv	a1,a2
    8000254c:	0006861b          	sext.w	a2,a3
    80002550:	00002097          	auipc	ra,0x2
    80002554:	c14080e7          	jalr	-1004(ra) # 80004164 <__memmove>
    80002558:	00813083          	ld	ra,8(sp)
    8000255c:	00013403          	ld	s0,0(sp)
    80002560:	00000513          	li	a0,0
    80002564:	01010113          	addi	sp,sp,16
    80002568:	00008067          	ret
    8000256c:	00003517          	auipc	a0,0x3
    80002570:	c0450513          	addi	a0,a0,-1020 # 80005170 <CONSOLE_STATUS+0x160>
    80002574:	00001097          	auipc	ra,0x1
    80002578:	8e8080e7          	jalr	-1816(ra) # 80002e5c <panic>

000000008000257c <trapinit>:
    8000257c:	ff010113          	addi	sp,sp,-16
    80002580:	00813423          	sd	s0,8(sp)
    80002584:	01010413          	addi	s0,sp,16
    80002588:	00813403          	ld	s0,8(sp)
    8000258c:	00003597          	auipc	a1,0x3
    80002590:	c0c58593          	addi	a1,a1,-1012 # 80005198 <CONSOLE_STATUS+0x188>
    80002594:	00004517          	auipc	a0,0x4
    80002598:	0bc50513          	addi	a0,a0,188 # 80006650 <tickslock>
    8000259c:	01010113          	addi	sp,sp,16
    800025a0:	00001317          	auipc	t1,0x1
    800025a4:	5c830067          	jr	1480(t1) # 80003b68 <initlock>

00000000800025a8 <trapinithart>:
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00813423          	sd	s0,8(sp)
    800025b0:	01010413          	addi	s0,sp,16
    800025b4:	00000797          	auipc	a5,0x0
    800025b8:	2fc78793          	addi	a5,a5,764 # 800028b0 <kernelvec>
    800025bc:	10579073          	csrw	stvec,a5
    800025c0:	00813403          	ld	s0,8(sp)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <usertrap>:
    800025cc:	ff010113          	addi	sp,sp,-16
    800025d0:	00813423          	sd	s0,8(sp)
    800025d4:	01010413          	addi	s0,sp,16
    800025d8:	00813403          	ld	s0,8(sp)
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret

00000000800025e4 <usertrapret>:
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00813423          	sd	s0,8(sp)
    800025ec:	01010413          	addi	s0,sp,16
    800025f0:	00813403          	ld	s0,8(sp)
    800025f4:	01010113          	addi	sp,sp,16
    800025f8:	00008067          	ret

00000000800025fc <kerneltrap>:
    800025fc:	fe010113          	addi	sp,sp,-32
    80002600:	00813823          	sd	s0,16(sp)
    80002604:	00113c23          	sd	ra,24(sp)
    80002608:	00913423          	sd	s1,8(sp)
    8000260c:	02010413          	addi	s0,sp,32
    80002610:	142025f3          	csrr	a1,scause
    80002614:	100027f3          	csrr	a5,sstatus
    80002618:	0027f793          	andi	a5,a5,2
    8000261c:	10079c63          	bnez	a5,80002734 <kerneltrap+0x138>
    80002620:	142027f3          	csrr	a5,scause
    80002624:	0207ce63          	bltz	a5,80002660 <kerneltrap+0x64>
    80002628:	00003517          	auipc	a0,0x3
    8000262c:	bb850513          	addi	a0,a0,-1096 # 800051e0 <CONSOLE_STATUS+0x1d0>
    80002630:	00001097          	auipc	ra,0x1
    80002634:	888080e7          	jalr	-1912(ra) # 80002eb8 <__printf>
    80002638:	141025f3          	csrr	a1,sepc
    8000263c:	14302673          	csrr	a2,stval
    80002640:	00003517          	auipc	a0,0x3
    80002644:	bb050513          	addi	a0,a0,-1104 # 800051f0 <CONSOLE_STATUS+0x1e0>
    80002648:	00001097          	auipc	ra,0x1
    8000264c:	870080e7          	jalr	-1936(ra) # 80002eb8 <__printf>
    80002650:	00003517          	auipc	a0,0x3
    80002654:	bb850513          	addi	a0,a0,-1096 # 80005208 <CONSOLE_STATUS+0x1f8>
    80002658:	00001097          	auipc	ra,0x1
    8000265c:	804080e7          	jalr	-2044(ra) # 80002e5c <panic>
    80002660:	0ff7f713          	andi	a4,a5,255
    80002664:	00900693          	li	a3,9
    80002668:	04d70063          	beq	a4,a3,800026a8 <kerneltrap+0xac>
    8000266c:	fff00713          	li	a4,-1
    80002670:	03f71713          	slli	a4,a4,0x3f
    80002674:	00170713          	addi	a4,a4,1
    80002678:	fae798e3          	bne	a5,a4,80002628 <kerneltrap+0x2c>
    8000267c:	00000097          	auipc	ra,0x0
    80002680:	e00080e7          	jalr	-512(ra) # 8000247c <cpuid>
    80002684:	06050663          	beqz	a0,800026f0 <kerneltrap+0xf4>
    80002688:	144027f3          	csrr	a5,sip
    8000268c:	ffd7f793          	andi	a5,a5,-3
    80002690:	14479073          	csrw	sip,a5
    80002694:	01813083          	ld	ra,24(sp)
    80002698:	01013403          	ld	s0,16(sp)
    8000269c:	00813483          	ld	s1,8(sp)
    800026a0:	02010113          	addi	sp,sp,32
    800026a4:	00008067          	ret
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	3cc080e7          	jalr	972(ra) # 80002a74 <plic_claim>
    800026b0:	00a00793          	li	a5,10
    800026b4:	00050493          	mv	s1,a0
    800026b8:	06f50863          	beq	a0,a5,80002728 <kerneltrap+0x12c>
    800026bc:	fc050ce3          	beqz	a0,80002694 <kerneltrap+0x98>
    800026c0:	00050593          	mv	a1,a0
    800026c4:	00003517          	auipc	a0,0x3
    800026c8:	afc50513          	addi	a0,a0,-1284 # 800051c0 <CONSOLE_STATUS+0x1b0>
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	7ec080e7          	jalr	2028(ra) # 80002eb8 <__printf>
    800026d4:	01013403          	ld	s0,16(sp)
    800026d8:	01813083          	ld	ra,24(sp)
    800026dc:	00048513          	mv	a0,s1
    800026e0:	00813483          	ld	s1,8(sp)
    800026e4:	02010113          	addi	sp,sp,32
    800026e8:	00000317          	auipc	t1,0x0
    800026ec:	3c430067          	jr	964(t1) # 80002aac <plic_complete>
    800026f0:	00004517          	auipc	a0,0x4
    800026f4:	f6050513          	addi	a0,a0,-160 # 80006650 <tickslock>
    800026f8:	00001097          	auipc	ra,0x1
    800026fc:	494080e7          	jalr	1172(ra) # 80003b8c <acquire>
    80002700:	00003717          	auipc	a4,0x3
    80002704:	e6470713          	addi	a4,a4,-412 # 80005564 <ticks>
    80002708:	00072783          	lw	a5,0(a4)
    8000270c:	00004517          	auipc	a0,0x4
    80002710:	f4450513          	addi	a0,a0,-188 # 80006650 <tickslock>
    80002714:	0017879b          	addiw	a5,a5,1
    80002718:	00f72023          	sw	a5,0(a4)
    8000271c:	00001097          	auipc	ra,0x1
    80002720:	53c080e7          	jalr	1340(ra) # 80003c58 <release>
    80002724:	f65ff06f          	j	80002688 <kerneltrap+0x8c>
    80002728:	00001097          	auipc	ra,0x1
    8000272c:	098080e7          	jalr	152(ra) # 800037c0 <uartintr>
    80002730:	fa5ff06f          	j	800026d4 <kerneltrap+0xd8>
    80002734:	00003517          	auipc	a0,0x3
    80002738:	a6c50513          	addi	a0,a0,-1428 # 800051a0 <CONSOLE_STATUS+0x190>
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	720080e7          	jalr	1824(ra) # 80002e5c <panic>

0000000080002744 <clockintr>:
    80002744:	fe010113          	addi	sp,sp,-32
    80002748:	00813823          	sd	s0,16(sp)
    8000274c:	00913423          	sd	s1,8(sp)
    80002750:	00113c23          	sd	ra,24(sp)
    80002754:	02010413          	addi	s0,sp,32
    80002758:	00004497          	auipc	s1,0x4
    8000275c:	ef848493          	addi	s1,s1,-264 # 80006650 <tickslock>
    80002760:	00048513          	mv	a0,s1
    80002764:	00001097          	auipc	ra,0x1
    80002768:	428080e7          	jalr	1064(ra) # 80003b8c <acquire>
    8000276c:	00003717          	auipc	a4,0x3
    80002770:	df870713          	addi	a4,a4,-520 # 80005564 <ticks>
    80002774:	00072783          	lw	a5,0(a4)
    80002778:	01013403          	ld	s0,16(sp)
    8000277c:	01813083          	ld	ra,24(sp)
    80002780:	00048513          	mv	a0,s1
    80002784:	0017879b          	addiw	a5,a5,1
    80002788:	00813483          	ld	s1,8(sp)
    8000278c:	00f72023          	sw	a5,0(a4)
    80002790:	02010113          	addi	sp,sp,32
    80002794:	00001317          	auipc	t1,0x1
    80002798:	4c430067          	jr	1220(t1) # 80003c58 <release>

000000008000279c <devintr>:
    8000279c:	142027f3          	csrr	a5,scause
    800027a0:	00000513          	li	a0,0
    800027a4:	0007c463          	bltz	a5,800027ac <devintr+0x10>
    800027a8:	00008067          	ret
    800027ac:	fe010113          	addi	sp,sp,-32
    800027b0:	00813823          	sd	s0,16(sp)
    800027b4:	00113c23          	sd	ra,24(sp)
    800027b8:	00913423          	sd	s1,8(sp)
    800027bc:	02010413          	addi	s0,sp,32
    800027c0:	0ff7f713          	andi	a4,a5,255
    800027c4:	00900693          	li	a3,9
    800027c8:	04d70c63          	beq	a4,a3,80002820 <devintr+0x84>
    800027cc:	fff00713          	li	a4,-1
    800027d0:	03f71713          	slli	a4,a4,0x3f
    800027d4:	00170713          	addi	a4,a4,1
    800027d8:	00e78c63          	beq	a5,a4,800027f0 <devintr+0x54>
    800027dc:	01813083          	ld	ra,24(sp)
    800027e0:	01013403          	ld	s0,16(sp)
    800027e4:	00813483          	ld	s1,8(sp)
    800027e8:	02010113          	addi	sp,sp,32
    800027ec:	00008067          	ret
    800027f0:	00000097          	auipc	ra,0x0
    800027f4:	c8c080e7          	jalr	-884(ra) # 8000247c <cpuid>
    800027f8:	06050663          	beqz	a0,80002864 <devintr+0xc8>
    800027fc:	144027f3          	csrr	a5,sip
    80002800:	ffd7f793          	andi	a5,a5,-3
    80002804:	14479073          	csrw	sip,a5
    80002808:	01813083          	ld	ra,24(sp)
    8000280c:	01013403          	ld	s0,16(sp)
    80002810:	00813483          	ld	s1,8(sp)
    80002814:	00200513          	li	a0,2
    80002818:	02010113          	addi	sp,sp,32
    8000281c:	00008067          	ret
    80002820:	00000097          	auipc	ra,0x0
    80002824:	254080e7          	jalr	596(ra) # 80002a74 <plic_claim>
    80002828:	00a00793          	li	a5,10
    8000282c:	00050493          	mv	s1,a0
    80002830:	06f50663          	beq	a0,a5,8000289c <devintr+0x100>
    80002834:	00100513          	li	a0,1
    80002838:	fa0482e3          	beqz	s1,800027dc <devintr+0x40>
    8000283c:	00048593          	mv	a1,s1
    80002840:	00003517          	auipc	a0,0x3
    80002844:	98050513          	addi	a0,a0,-1664 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	670080e7          	jalr	1648(ra) # 80002eb8 <__printf>
    80002850:	00048513          	mv	a0,s1
    80002854:	00000097          	auipc	ra,0x0
    80002858:	258080e7          	jalr	600(ra) # 80002aac <plic_complete>
    8000285c:	00100513          	li	a0,1
    80002860:	f7dff06f          	j	800027dc <devintr+0x40>
    80002864:	00004517          	auipc	a0,0x4
    80002868:	dec50513          	addi	a0,a0,-532 # 80006650 <tickslock>
    8000286c:	00001097          	auipc	ra,0x1
    80002870:	320080e7          	jalr	800(ra) # 80003b8c <acquire>
    80002874:	00003717          	auipc	a4,0x3
    80002878:	cf070713          	addi	a4,a4,-784 # 80005564 <ticks>
    8000287c:	00072783          	lw	a5,0(a4)
    80002880:	00004517          	auipc	a0,0x4
    80002884:	dd050513          	addi	a0,a0,-560 # 80006650 <tickslock>
    80002888:	0017879b          	addiw	a5,a5,1
    8000288c:	00f72023          	sw	a5,0(a4)
    80002890:	00001097          	auipc	ra,0x1
    80002894:	3c8080e7          	jalr	968(ra) # 80003c58 <release>
    80002898:	f65ff06f          	j	800027fc <devintr+0x60>
    8000289c:	00001097          	auipc	ra,0x1
    800028a0:	f24080e7          	jalr	-220(ra) # 800037c0 <uartintr>
    800028a4:	fadff06f          	j	80002850 <devintr+0xb4>
	...

00000000800028b0 <kernelvec>:
    800028b0:	f0010113          	addi	sp,sp,-256
    800028b4:	00113023          	sd	ra,0(sp)
    800028b8:	00213423          	sd	sp,8(sp)
    800028bc:	00313823          	sd	gp,16(sp)
    800028c0:	00413c23          	sd	tp,24(sp)
    800028c4:	02513023          	sd	t0,32(sp)
    800028c8:	02613423          	sd	t1,40(sp)
    800028cc:	02713823          	sd	t2,48(sp)
    800028d0:	02813c23          	sd	s0,56(sp)
    800028d4:	04913023          	sd	s1,64(sp)
    800028d8:	04a13423          	sd	a0,72(sp)
    800028dc:	04b13823          	sd	a1,80(sp)
    800028e0:	04c13c23          	sd	a2,88(sp)
    800028e4:	06d13023          	sd	a3,96(sp)
    800028e8:	06e13423          	sd	a4,104(sp)
    800028ec:	06f13823          	sd	a5,112(sp)
    800028f0:	07013c23          	sd	a6,120(sp)
    800028f4:	09113023          	sd	a7,128(sp)
    800028f8:	09213423          	sd	s2,136(sp)
    800028fc:	09313823          	sd	s3,144(sp)
    80002900:	09413c23          	sd	s4,152(sp)
    80002904:	0b513023          	sd	s5,160(sp)
    80002908:	0b613423          	sd	s6,168(sp)
    8000290c:	0b713823          	sd	s7,176(sp)
    80002910:	0b813c23          	sd	s8,184(sp)
    80002914:	0d913023          	sd	s9,192(sp)
    80002918:	0da13423          	sd	s10,200(sp)
    8000291c:	0db13823          	sd	s11,208(sp)
    80002920:	0dc13c23          	sd	t3,216(sp)
    80002924:	0fd13023          	sd	t4,224(sp)
    80002928:	0fe13423          	sd	t5,232(sp)
    8000292c:	0ff13823          	sd	t6,240(sp)
    80002930:	ccdff0ef          	jal	ra,800025fc <kerneltrap>
    80002934:	00013083          	ld	ra,0(sp)
    80002938:	00813103          	ld	sp,8(sp)
    8000293c:	01013183          	ld	gp,16(sp)
    80002940:	02013283          	ld	t0,32(sp)
    80002944:	02813303          	ld	t1,40(sp)
    80002948:	03013383          	ld	t2,48(sp)
    8000294c:	03813403          	ld	s0,56(sp)
    80002950:	04013483          	ld	s1,64(sp)
    80002954:	04813503          	ld	a0,72(sp)
    80002958:	05013583          	ld	a1,80(sp)
    8000295c:	05813603          	ld	a2,88(sp)
    80002960:	06013683          	ld	a3,96(sp)
    80002964:	06813703          	ld	a4,104(sp)
    80002968:	07013783          	ld	a5,112(sp)
    8000296c:	07813803          	ld	a6,120(sp)
    80002970:	08013883          	ld	a7,128(sp)
    80002974:	08813903          	ld	s2,136(sp)
    80002978:	09013983          	ld	s3,144(sp)
    8000297c:	09813a03          	ld	s4,152(sp)
    80002980:	0a013a83          	ld	s5,160(sp)
    80002984:	0a813b03          	ld	s6,168(sp)
    80002988:	0b013b83          	ld	s7,176(sp)
    8000298c:	0b813c03          	ld	s8,184(sp)
    80002990:	0c013c83          	ld	s9,192(sp)
    80002994:	0c813d03          	ld	s10,200(sp)
    80002998:	0d013d83          	ld	s11,208(sp)
    8000299c:	0d813e03          	ld	t3,216(sp)
    800029a0:	0e013e83          	ld	t4,224(sp)
    800029a4:	0e813f03          	ld	t5,232(sp)
    800029a8:	0f013f83          	ld	t6,240(sp)
    800029ac:	10010113          	addi	sp,sp,256
    800029b0:	10200073          	sret
    800029b4:	00000013          	nop
    800029b8:	00000013          	nop
    800029bc:	00000013          	nop

00000000800029c0 <timervec>:
    800029c0:	34051573          	csrrw	a0,mscratch,a0
    800029c4:	00b53023          	sd	a1,0(a0)
    800029c8:	00c53423          	sd	a2,8(a0)
    800029cc:	00d53823          	sd	a3,16(a0)
    800029d0:	01853583          	ld	a1,24(a0)
    800029d4:	02053603          	ld	a2,32(a0)
    800029d8:	0005b683          	ld	a3,0(a1)
    800029dc:	00c686b3          	add	a3,a3,a2
    800029e0:	00d5b023          	sd	a3,0(a1)
    800029e4:	00200593          	li	a1,2
    800029e8:	14459073          	csrw	sip,a1
    800029ec:	01053683          	ld	a3,16(a0)
    800029f0:	00853603          	ld	a2,8(a0)
    800029f4:	00053583          	ld	a1,0(a0)
    800029f8:	34051573          	csrrw	a0,mscratch,a0
    800029fc:	30200073          	mret

0000000080002a00 <plicinit>:
    80002a00:	ff010113          	addi	sp,sp,-16
    80002a04:	00813423          	sd	s0,8(sp)
    80002a08:	01010413          	addi	s0,sp,16
    80002a0c:	00813403          	ld	s0,8(sp)
    80002a10:	0c0007b7          	lui	a5,0xc000
    80002a14:	00100713          	li	a4,1
    80002a18:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002a1c:	00e7a223          	sw	a4,4(a5)
    80002a20:	01010113          	addi	sp,sp,16
    80002a24:	00008067          	ret

0000000080002a28 <plicinithart>:
    80002a28:	ff010113          	addi	sp,sp,-16
    80002a2c:	00813023          	sd	s0,0(sp)
    80002a30:	00113423          	sd	ra,8(sp)
    80002a34:	01010413          	addi	s0,sp,16
    80002a38:	00000097          	auipc	ra,0x0
    80002a3c:	a44080e7          	jalr	-1468(ra) # 8000247c <cpuid>
    80002a40:	0085171b          	slliw	a4,a0,0x8
    80002a44:	0c0027b7          	lui	a5,0xc002
    80002a48:	00e787b3          	add	a5,a5,a4
    80002a4c:	40200713          	li	a4,1026
    80002a50:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002a54:	00813083          	ld	ra,8(sp)
    80002a58:	00013403          	ld	s0,0(sp)
    80002a5c:	00d5151b          	slliw	a0,a0,0xd
    80002a60:	0c2017b7          	lui	a5,0xc201
    80002a64:	00a78533          	add	a0,a5,a0
    80002a68:	00052023          	sw	zero,0(a0)
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret

0000000080002a74 <plic_claim>:
    80002a74:	ff010113          	addi	sp,sp,-16
    80002a78:	00813023          	sd	s0,0(sp)
    80002a7c:	00113423          	sd	ra,8(sp)
    80002a80:	01010413          	addi	s0,sp,16
    80002a84:	00000097          	auipc	ra,0x0
    80002a88:	9f8080e7          	jalr	-1544(ra) # 8000247c <cpuid>
    80002a8c:	00813083          	ld	ra,8(sp)
    80002a90:	00013403          	ld	s0,0(sp)
    80002a94:	00d5151b          	slliw	a0,a0,0xd
    80002a98:	0c2017b7          	lui	a5,0xc201
    80002a9c:	00a78533          	add	a0,a5,a0
    80002aa0:	00452503          	lw	a0,4(a0)
    80002aa4:	01010113          	addi	sp,sp,16
    80002aa8:	00008067          	ret

0000000080002aac <plic_complete>:
    80002aac:	fe010113          	addi	sp,sp,-32
    80002ab0:	00813823          	sd	s0,16(sp)
    80002ab4:	00913423          	sd	s1,8(sp)
    80002ab8:	00113c23          	sd	ra,24(sp)
    80002abc:	02010413          	addi	s0,sp,32
    80002ac0:	00050493          	mv	s1,a0
    80002ac4:	00000097          	auipc	ra,0x0
    80002ac8:	9b8080e7          	jalr	-1608(ra) # 8000247c <cpuid>
    80002acc:	01813083          	ld	ra,24(sp)
    80002ad0:	01013403          	ld	s0,16(sp)
    80002ad4:	00d5179b          	slliw	a5,a0,0xd
    80002ad8:	0c201737          	lui	a4,0xc201
    80002adc:	00f707b3          	add	a5,a4,a5
    80002ae0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002ae4:	00813483          	ld	s1,8(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret

0000000080002af0 <consolewrite>:
    80002af0:	fb010113          	addi	sp,sp,-80
    80002af4:	04813023          	sd	s0,64(sp)
    80002af8:	04113423          	sd	ra,72(sp)
    80002afc:	02913c23          	sd	s1,56(sp)
    80002b00:	03213823          	sd	s2,48(sp)
    80002b04:	03313423          	sd	s3,40(sp)
    80002b08:	03413023          	sd	s4,32(sp)
    80002b0c:	01513c23          	sd	s5,24(sp)
    80002b10:	05010413          	addi	s0,sp,80
    80002b14:	06c05c63          	blez	a2,80002b8c <consolewrite+0x9c>
    80002b18:	00060993          	mv	s3,a2
    80002b1c:	00050a13          	mv	s4,a0
    80002b20:	00058493          	mv	s1,a1
    80002b24:	00000913          	li	s2,0
    80002b28:	fff00a93          	li	s5,-1
    80002b2c:	01c0006f          	j	80002b48 <consolewrite+0x58>
    80002b30:	fbf44503          	lbu	a0,-65(s0)
    80002b34:	0019091b          	addiw	s2,s2,1
    80002b38:	00148493          	addi	s1,s1,1
    80002b3c:	00001097          	auipc	ra,0x1
    80002b40:	a9c080e7          	jalr	-1380(ra) # 800035d8 <uartputc>
    80002b44:	03298063          	beq	s3,s2,80002b64 <consolewrite+0x74>
    80002b48:	00048613          	mv	a2,s1
    80002b4c:	00100693          	li	a3,1
    80002b50:	000a0593          	mv	a1,s4
    80002b54:	fbf40513          	addi	a0,s0,-65
    80002b58:	00000097          	auipc	ra,0x0
    80002b5c:	9dc080e7          	jalr	-1572(ra) # 80002534 <either_copyin>
    80002b60:	fd5518e3          	bne	a0,s5,80002b30 <consolewrite+0x40>
    80002b64:	04813083          	ld	ra,72(sp)
    80002b68:	04013403          	ld	s0,64(sp)
    80002b6c:	03813483          	ld	s1,56(sp)
    80002b70:	02813983          	ld	s3,40(sp)
    80002b74:	02013a03          	ld	s4,32(sp)
    80002b78:	01813a83          	ld	s5,24(sp)
    80002b7c:	00090513          	mv	a0,s2
    80002b80:	03013903          	ld	s2,48(sp)
    80002b84:	05010113          	addi	sp,sp,80
    80002b88:	00008067          	ret
    80002b8c:	00000913          	li	s2,0
    80002b90:	fd5ff06f          	j	80002b64 <consolewrite+0x74>

0000000080002b94 <consoleread>:
    80002b94:	f9010113          	addi	sp,sp,-112
    80002b98:	06813023          	sd	s0,96(sp)
    80002b9c:	04913c23          	sd	s1,88(sp)
    80002ba0:	05213823          	sd	s2,80(sp)
    80002ba4:	05313423          	sd	s3,72(sp)
    80002ba8:	05413023          	sd	s4,64(sp)
    80002bac:	03513c23          	sd	s5,56(sp)
    80002bb0:	03613823          	sd	s6,48(sp)
    80002bb4:	03713423          	sd	s7,40(sp)
    80002bb8:	03813023          	sd	s8,32(sp)
    80002bbc:	06113423          	sd	ra,104(sp)
    80002bc0:	01913c23          	sd	s9,24(sp)
    80002bc4:	07010413          	addi	s0,sp,112
    80002bc8:	00060b93          	mv	s7,a2
    80002bcc:	00050913          	mv	s2,a0
    80002bd0:	00058c13          	mv	s8,a1
    80002bd4:	00060b1b          	sext.w	s6,a2
    80002bd8:	00004497          	auipc	s1,0x4
    80002bdc:	a9048493          	addi	s1,s1,-1392 # 80006668 <cons>
    80002be0:	00400993          	li	s3,4
    80002be4:	fff00a13          	li	s4,-1
    80002be8:	00a00a93          	li	s5,10
    80002bec:	05705e63          	blez	s7,80002c48 <consoleread+0xb4>
    80002bf0:	09c4a703          	lw	a4,156(s1)
    80002bf4:	0984a783          	lw	a5,152(s1)
    80002bf8:	0007071b          	sext.w	a4,a4
    80002bfc:	08e78463          	beq	a5,a4,80002c84 <consoleread+0xf0>
    80002c00:	07f7f713          	andi	a4,a5,127
    80002c04:	00e48733          	add	a4,s1,a4
    80002c08:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002c0c:	0017869b          	addiw	a3,a5,1
    80002c10:	08d4ac23          	sw	a3,152(s1)
    80002c14:	00070c9b          	sext.w	s9,a4
    80002c18:	0b370663          	beq	a4,s3,80002cc4 <consoleread+0x130>
    80002c1c:	00100693          	li	a3,1
    80002c20:	f9f40613          	addi	a2,s0,-97
    80002c24:	000c0593          	mv	a1,s8
    80002c28:	00090513          	mv	a0,s2
    80002c2c:	f8e40fa3          	sb	a4,-97(s0)
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	8b8080e7          	jalr	-1864(ra) # 800024e8 <either_copyout>
    80002c38:	01450863          	beq	a0,s4,80002c48 <consoleread+0xb4>
    80002c3c:	001c0c13          	addi	s8,s8,1
    80002c40:	fffb8b9b          	addiw	s7,s7,-1
    80002c44:	fb5c94e3          	bne	s9,s5,80002bec <consoleread+0x58>
    80002c48:	000b851b          	sext.w	a0,s7
    80002c4c:	06813083          	ld	ra,104(sp)
    80002c50:	06013403          	ld	s0,96(sp)
    80002c54:	05813483          	ld	s1,88(sp)
    80002c58:	05013903          	ld	s2,80(sp)
    80002c5c:	04813983          	ld	s3,72(sp)
    80002c60:	04013a03          	ld	s4,64(sp)
    80002c64:	03813a83          	ld	s5,56(sp)
    80002c68:	02813b83          	ld	s7,40(sp)
    80002c6c:	02013c03          	ld	s8,32(sp)
    80002c70:	01813c83          	ld	s9,24(sp)
    80002c74:	40ab053b          	subw	a0,s6,a0
    80002c78:	03013b03          	ld	s6,48(sp)
    80002c7c:	07010113          	addi	sp,sp,112
    80002c80:	00008067          	ret
    80002c84:	00001097          	auipc	ra,0x1
    80002c88:	1d8080e7          	jalr	472(ra) # 80003e5c <push_on>
    80002c8c:	0984a703          	lw	a4,152(s1)
    80002c90:	09c4a783          	lw	a5,156(s1)
    80002c94:	0007879b          	sext.w	a5,a5
    80002c98:	fef70ce3          	beq	a4,a5,80002c90 <consoleread+0xfc>
    80002c9c:	00001097          	auipc	ra,0x1
    80002ca0:	234080e7          	jalr	564(ra) # 80003ed0 <pop_on>
    80002ca4:	0984a783          	lw	a5,152(s1)
    80002ca8:	07f7f713          	andi	a4,a5,127
    80002cac:	00e48733          	add	a4,s1,a4
    80002cb0:	01874703          	lbu	a4,24(a4)
    80002cb4:	0017869b          	addiw	a3,a5,1
    80002cb8:	08d4ac23          	sw	a3,152(s1)
    80002cbc:	00070c9b          	sext.w	s9,a4
    80002cc0:	f5371ee3          	bne	a4,s3,80002c1c <consoleread+0x88>
    80002cc4:	000b851b          	sext.w	a0,s7
    80002cc8:	f96bf2e3          	bgeu	s7,s6,80002c4c <consoleread+0xb8>
    80002ccc:	08f4ac23          	sw	a5,152(s1)
    80002cd0:	f7dff06f          	j	80002c4c <consoleread+0xb8>

0000000080002cd4 <consputc>:
    80002cd4:	10000793          	li	a5,256
    80002cd8:	00f50663          	beq	a0,a5,80002ce4 <consputc+0x10>
    80002cdc:	00001317          	auipc	t1,0x1
    80002ce0:	9f430067          	jr	-1548(t1) # 800036d0 <uartputc_sync>
    80002ce4:	ff010113          	addi	sp,sp,-16
    80002ce8:	00113423          	sd	ra,8(sp)
    80002cec:	00813023          	sd	s0,0(sp)
    80002cf0:	01010413          	addi	s0,sp,16
    80002cf4:	00800513          	li	a0,8
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	9d8080e7          	jalr	-1576(ra) # 800036d0 <uartputc_sync>
    80002d00:	02000513          	li	a0,32
    80002d04:	00001097          	auipc	ra,0x1
    80002d08:	9cc080e7          	jalr	-1588(ra) # 800036d0 <uartputc_sync>
    80002d0c:	00013403          	ld	s0,0(sp)
    80002d10:	00813083          	ld	ra,8(sp)
    80002d14:	00800513          	li	a0,8
    80002d18:	01010113          	addi	sp,sp,16
    80002d1c:	00001317          	auipc	t1,0x1
    80002d20:	9b430067          	jr	-1612(t1) # 800036d0 <uartputc_sync>

0000000080002d24 <consoleintr>:
    80002d24:	fe010113          	addi	sp,sp,-32
    80002d28:	00813823          	sd	s0,16(sp)
    80002d2c:	00913423          	sd	s1,8(sp)
    80002d30:	01213023          	sd	s2,0(sp)
    80002d34:	00113c23          	sd	ra,24(sp)
    80002d38:	02010413          	addi	s0,sp,32
    80002d3c:	00004917          	auipc	s2,0x4
    80002d40:	92c90913          	addi	s2,s2,-1748 # 80006668 <cons>
    80002d44:	00050493          	mv	s1,a0
    80002d48:	00090513          	mv	a0,s2
    80002d4c:	00001097          	auipc	ra,0x1
    80002d50:	e40080e7          	jalr	-448(ra) # 80003b8c <acquire>
    80002d54:	02048c63          	beqz	s1,80002d8c <consoleintr+0x68>
    80002d58:	0a092783          	lw	a5,160(s2)
    80002d5c:	09892703          	lw	a4,152(s2)
    80002d60:	07f00693          	li	a3,127
    80002d64:	40e7873b          	subw	a4,a5,a4
    80002d68:	02e6e263          	bltu	a3,a4,80002d8c <consoleintr+0x68>
    80002d6c:	00d00713          	li	a4,13
    80002d70:	04e48063          	beq	s1,a4,80002db0 <consoleintr+0x8c>
    80002d74:	07f7f713          	andi	a4,a5,127
    80002d78:	00e90733          	add	a4,s2,a4
    80002d7c:	0017879b          	addiw	a5,a5,1
    80002d80:	0af92023          	sw	a5,160(s2)
    80002d84:	00970c23          	sb	s1,24(a4)
    80002d88:	08f92e23          	sw	a5,156(s2)
    80002d8c:	01013403          	ld	s0,16(sp)
    80002d90:	01813083          	ld	ra,24(sp)
    80002d94:	00813483          	ld	s1,8(sp)
    80002d98:	00013903          	ld	s2,0(sp)
    80002d9c:	00004517          	auipc	a0,0x4
    80002da0:	8cc50513          	addi	a0,a0,-1844 # 80006668 <cons>
    80002da4:	02010113          	addi	sp,sp,32
    80002da8:	00001317          	auipc	t1,0x1
    80002dac:	eb030067          	jr	-336(t1) # 80003c58 <release>
    80002db0:	00a00493          	li	s1,10
    80002db4:	fc1ff06f          	j	80002d74 <consoleintr+0x50>

0000000080002db8 <consoleinit>:
    80002db8:	fe010113          	addi	sp,sp,-32
    80002dbc:	00113c23          	sd	ra,24(sp)
    80002dc0:	00813823          	sd	s0,16(sp)
    80002dc4:	00913423          	sd	s1,8(sp)
    80002dc8:	02010413          	addi	s0,sp,32
    80002dcc:	00004497          	auipc	s1,0x4
    80002dd0:	89c48493          	addi	s1,s1,-1892 # 80006668 <cons>
    80002dd4:	00048513          	mv	a0,s1
    80002dd8:	00002597          	auipc	a1,0x2
    80002ddc:	44058593          	addi	a1,a1,1088 # 80005218 <CONSOLE_STATUS+0x208>
    80002de0:	00001097          	auipc	ra,0x1
    80002de4:	d88080e7          	jalr	-632(ra) # 80003b68 <initlock>
    80002de8:	00000097          	auipc	ra,0x0
    80002dec:	7ac080e7          	jalr	1964(ra) # 80003594 <uartinit>
    80002df0:	01813083          	ld	ra,24(sp)
    80002df4:	01013403          	ld	s0,16(sp)
    80002df8:	00000797          	auipc	a5,0x0
    80002dfc:	d9c78793          	addi	a5,a5,-612 # 80002b94 <consoleread>
    80002e00:	0af4bc23          	sd	a5,184(s1)
    80002e04:	00000797          	auipc	a5,0x0
    80002e08:	cec78793          	addi	a5,a5,-788 # 80002af0 <consolewrite>
    80002e0c:	0cf4b023          	sd	a5,192(s1)
    80002e10:	00813483          	ld	s1,8(sp)
    80002e14:	02010113          	addi	sp,sp,32
    80002e18:	00008067          	ret

0000000080002e1c <console_read>:
    80002e1c:	ff010113          	addi	sp,sp,-16
    80002e20:	00813423          	sd	s0,8(sp)
    80002e24:	01010413          	addi	s0,sp,16
    80002e28:	00813403          	ld	s0,8(sp)
    80002e2c:	00004317          	auipc	t1,0x4
    80002e30:	8f433303          	ld	t1,-1804(t1) # 80006720 <devsw+0x10>
    80002e34:	01010113          	addi	sp,sp,16
    80002e38:	00030067          	jr	t1

0000000080002e3c <console_write>:
    80002e3c:	ff010113          	addi	sp,sp,-16
    80002e40:	00813423          	sd	s0,8(sp)
    80002e44:	01010413          	addi	s0,sp,16
    80002e48:	00813403          	ld	s0,8(sp)
    80002e4c:	00004317          	auipc	t1,0x4
    80002e50:	8dc33303          	ld	t1,-1828(t1) # 80006728 <devsw+0x18>
    80002e54:	01010113          	addi	sp,sp,16
    80002e58:	00030067          	jr	t1

0000000080002e5c <panic>:
    80002e5c:	fe010113          	addi	sp,sp,-32
    80002e60:	00113c23          	sd	ra,24(sp)
    80002e64:	00813823          	sd	s0,16(sp)
    80002e68:	00913423          	sd	s1,8(sp)
    80002e6c:	02010413          	addi	s0,sp,32
    80002e70:	00050493          	mv	s1,a0
    80002e74:	00002517          	auipc	a0,0x2
    80002e78:	3ac50513          	addi	a0,a0,940 # 80005220 <CONSOLE_STATUS+0x210>
    80002e7c:	00004797          	auipc	a5,0x4
    80002e80:	9407a623          	sw	zero,-1716(a5) # 800067c8 <pr+0x18>
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	034080e7          	jalr	52(ra) # 80002eb8 <__printf>
    80002e8c:	00048513          	mv	a0,s1
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	028080e7          	jalr	40(ra) # 80002eb8 <__printf>
    80002e98:	00002517          	auipc	a0,0x2
    80002e9c:	1b850513          	addi	a0,a0,440 # 80005050 <CONSOLE_STATUS+0x40>
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	018080e7          	jalr	24(ra) # 80002eb8 <__printf>
    80002ea8:	00100793          	li	a5,1
    80002eac:	00002717          	auipc	a4,0x2
    80002eb0:	6af72e23          	sw	a5,1724(a4) # 80005568 <panicked>
    80002eb4:	0000006f          	j	80002eb4 <panic+0x58>

0000000080002eb8 <__printf>:
    80002eb8:	f3010113          	addi	sp,sp,-208
    80002ebc:	08813023          	sd	s0,128(sp)
    80002ec0:	07313423          	sd	s3,104(sp)
    80002ec4:	09010413          	addi	s0,sp,144
    80002ec8:	05813023          	sd	s8,64(sp)
    80002ecc:	08113423          	sd	ra,136(sp)
    80002ed0:	06913c23          	sd	s1,120(sp)
    80002ed4:	07213823          	sd	s2,112(sp)
    80002ed8:	07413023          	sd	s4,96(sp)
    80002edc:	05513c23          	sd	s5,88(sp)
    80002ee0:	05613823          	sd	s6,80(sp)
    80002ee4:	05713423          	sd	s7,72(sp)
    80002ee8:	03913c23          	sd	s9,56(sp)
    80002eec:	03a13823          	sd	s10,48(sp)
    80002ef0:	03b13423          	sd	s11,40(sp)
    80002ef4:	00004317          	auipc	t1,0x4
    80002ef8:	8bc30313          	addi	t1,t1,-1860 # 800067b0 <pr>
    80002efc:	01832c03          	lw	s8,24(t1)
    80002f00:	00b43423          	sd	a1,8(s0)
    80002f04:	00c43823          	sd	a2,16(s0)
    80002f08:	00d43c23          	sd	a3,24(s0)
    80002f0c:	02e43023          	sd	a4,32(s0)
    80002f10:	02f43423          	sd	a5,40(s0)
    80002f14:	03043823          	sd	a6,48(s0)
    80002f18:	03143c23          	sd	a7,56(s0)
    80002f1c:	00050993          	mv	s3,a0
    80002f20:	4a0c1663          	bnez	s8,800033cc <__printf+0x514>
    80002f24:	60098c63          	beqz	s3,8000353c <__printf+0x684>
    80002f28:	0009c503          	lbu	a0,0(s3)
    80002f2c:	00840793          	addi	a5,s0,8
    80002f30:	f6f43c23          	sd	a5,-136(s0)
    80002f34:	00000493          	li	s1,0
    80002f38:	22050063          	beqz	a0,80003158 <__printf+0x2a0>
    80002f3c:	00002a37          	lui	s4,0x2
    80002f40:	00018ab7          	lui	s5,0x18
    80002f44:	000f4b37          	lui	s6,0xf4
    80002f48:	00989bb7          	lui	s7,0x989
    80002f4c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002f50:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002f54:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002f58:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002f5c:	00148c9b          	addiw	s9,s1,1
    80002f60:	02500793          	li	a5,37
    80002f64:	01998933          	add	s2,s3,s9
    80002f68:	38f51263          	bne	a0,a5,800032ec <__printf+0x434>
    80002f6c:	00094783          	lbu	a5,0(s2)
    80002f70:	00078c9b          	sext.w	s9,a5
    80002f74:	1e078263          	beqz	a5,80003158 <__printf+0x2a0>
    80002f78:	0024849b          	addiw	s1,s1,2
    80002f7c:	07000713          	li	a4,112
    80002f80:	00998933          	add	s2,s3,s1
    80002f84:	38e78a63          	beq	a5,a4,80003318 <__printf+0x460>
    80002f88:	20f76863          	bltu	a4,a5,80003198 <__printf+0x2e0>
    80002f8c:	42a78863          	beq	a5,a0,800033bc <__printf+0x504>
    80002f90:	06400713          	li	a4,100
    80002f94:	40e79663          	bne	a5,a4,800033a0 <__printf+0x4e8>
    80002f98:	f7843783          	ld	a5,-136(s0)
    80002f9c:	0007a603          	lw	a2,0(a5)
    80002fa0:	00878793          	addi	a5,a5,8
    80002fa4:	f6f43c23          	sd	a5,-136(s0)
    80002fa8:	42064a63          	bltz	a2,800033dc <__printf+0x524>
    80002fac:	00a00713          	li	a4,10
    80002fb0:	02e677bb          	remuw	a5,a2,a4
    80002fb4:	00002d97          	auipc	s11,0x2
    80002fb8:	294d8d93          	addi	s11,s11,660 # 80005248 <digits>
    80002fbc:	00900593          	li	a1,9
    80002fc0:	0006051b          	sext.w	a0,a2
    80002fc4:	00000c93          	li	s9,0
    80002fc8:	02079793          	slli	a5,a5,0x20
    80002fcc:	0207d793          	srli	a5,a5,0x20
    80002fd0:	00fd87b3          	add	a5,s11,a5
    80002fd4:	0007c783          	lbu	a5,0(a5)
    80002fd8:	02e656bb          	divuw	a3,a2,a4
    80002fdc:	f8f40023          	sb	a5,-128(s0)
    80002fe0:	14c5d863          	bge	a1,a2,80003130 <__printf+0x278>
    80002fe4:	06300593          	li	a1,99
    80002fe8:	00100c93          	li	s9,1
    80002fec:	02e6f7bb          	remuw	a5,a3,a4
    80002ff0:	02079793          	slli	a5,a5,0x20
    80002ff4:	0207d793          	srli	a5,a5,0x20
    80002ff8:	00fd87b3          	add	a5,s11,a5
    80002ffc:	0007c783          	lbu	a5,0(a5)
    80003000:	02e6d73b          	divuw	a4,a3,a4
    80003004:	f8f400a3          	sb	a5,-127(s0)
    80003008:	12a5f463          	bgeu	a1,a0,80003130 <__printf+0x278>
    8000300c:	00a00693          	li	a3,10
    80003010:	00900593          	li	a1,9
    80003014:	02d777bb          	remuw	a5,a4,a3
    80003018:	02079793          	slli	a5,a5,0x20
    8000301c:	0207d793          	srli	a5,a5,0x20
    80003020:	00fd87b3          	add	a5,s11,a5
    80003024:	0007c503          	lbu	a0,0(a5)
    80003028:	02d757bb          	divuw	a5,a4,a3
    8000302c:	f8a40123          	sb	a0,-126(s0)
    80003030:	48e5f263          	bgeu	a1,a4,800034b4 <__printf+0x5fc>
    80003034:	06300513          	li	a0,99
    80003038:	02d7f5bb          	remuw	a1,a5,a3
    8000303c:	02059593          	slli	a1,a1,0x20
    80003040:	0205d593          	srli	a1,a1,0x20
    80003044:	00bd85b3          	add	a1,s11,a1
    80003048:	0005c583          	lbu	a1,0(a1)
    8000304c:	02d7d7bb          	divuw	a5,a5,a3
    80003050:	f8b401a3          	sb	a1,-125(s0)
    80003054:	48e57263          	bgeu	a0,a4,800034d8 <__printf+0x620>
    80003058:	3e700513          	li	a0,999
    8000305c:	02d7f5bb          	remuw	a1,a5,a3
    80003060:	02059593          	slli	a1,a1,0x20
    80003064:	0205d593          	srli	a1,a1,0x20
    80003068:	00bd85b3          	add	a1,s11,a1
    8000306c:	0005c583          	lbu	a1,0(a1)
    80003070:	02d7d7bb          	divuw	a5,a5,a3
    80003074:	f8b40223          	sb	a1,-124(s0)
    80003078:	46e57663          	bgeu	a0,a4,800034e4 <__printf+0x62c>
    8000307c:	02d7f5bb          	remuw	a1,a5,a3
    80003080:	02059593          	slli	a1,a1,0x20
    80003084:	0205d593          	srli	a1,a1,0x20
    80003088:	00bd85b3          	add	a1,s11,a1
    8000308c:	0005c583          	lbu	a1,0(a1)
    80003090:	02d7d7bb          	divuw	a5,a5,a3
    80003094:	f8b402a3          	sb	a1,-123(s0)
    80003098:	46ea7863          	bgeu	s4,a4,80003508 <__printf+0x650>
    8000309c:	02d7f5bb          	remuw	a1,a5,a3
    800030a0:	02059593          	slli	a1,a1,0x20
    800030a4:	0205d593          	srli	a1,a1,0x20
    800030a8:	00bd85b3          	add	a1,s11,a1
    800030ac:	0005c583          	lbu	a1,0(a1)
    800030b0:	02d7d7bb          	divuw	a5,a5,a3
    800030b4:	f8b40323          	sb	a1,-122(s0)
    800030b8:	3eeaf863          	bgeu	s5,a4,800034a8 <__printf+0x5f0>
    800030bc:	02d7f5bb          	remuw	a1,a5,a3
    800030c0:	02059593          	slli	a1,a1,0x20
    800030c4:	0205d593          	srli	a1,a1,0x20
    800030c8:	00bd85b3          	add	a1,s11,a1
    800030cc:	0005c583          	lbu	a1,0(a1)
    800030d0:	02d7d7bb          	divuw	a5,a5,a3
    800030d4:	f8b403a3          	sb	a1,-121(s0)
    800030d8:	42eb7e63          	bgeu	s6,a4,80003514 <__printf+0x65c>
    800030dc:	02d7f5bb          	remuw	a1,a5,a3
    800030e0:	02059593          	slli	a1,a1,0x20
    800030e4:	0205d593          	srli	a1,a1,0x20
    800030e8:	00bd85b3          	add	a1,s11,a1
    800030ec:	0005c583          	lbu	a1,0(a1)
    800030f0:	02d7d7bb          	divuw	a5,a5,a3
    800030f4:	f8b40423          	sb	a1,-120(s0)
    800030f8:	42ebfc63          	bgeu	s7,a4,80003530 <__printf+0x678>
    800030fc:	02079793          	slli	a5,a5,0x20
    80003100:	0207d793          	srli	a5,a5,0x20
    80003104:	00fd8db3          	add	s11,s11,a5
    80003108:	000dc703          	lbu	a4,0(s11)
    8000310c:	00a00793          	li	a5,10
    80003110:	00900c93          	li	s9,9
    80003114:	f8e404a3          	sb	a4,-119(s0)
    80003118:	00065c63          	bgez	a2,80003130 <__printf+0x278>
    8000311c:	f9040713          	addi	a4,s0,-112
    80003120:	00f70733          	add	a4,a4,a5
    80003124:	02d00693          	li	a3,45
    80003128:	fed70823          	sb	a3,-16(a4)
    8000312c:	00078c93          	mv	s9,a5
    80003130:	f8040793          	addi	a5,s0,-128
    80003134:	01978cb3          	add	s9,a5,s9
    80003138:	f7f40d13          	addi	s10,s0,-129
    8000313c:	000cc503          	lbu	a0,0(s9)
    80003140:	fffc8c93          	addi	s9,s9,-1
    80003144:	00000097          	auipc	ra,0x0
    80003148:	b90080e7          	jalr	-1136(ra) # 80002cd4 <consputc>
    8000314c:	ffac98e3          	bne	s9,s10,8000313c <__printf+0x284>
    80003150:	00094503          	lbu	a0,0(s2)
    80003154:	e00514e3          	bnez	a0,80002f5c <__printf+0xa4>
    80003158:	1a0c1663          	bnez	s8,80003304 <__printf+0x44c>
    8000315c:	08813083          	ld	ra,136(sp)
    80003160:	08013403          	ld	s0,128(sp)
    80003164:	07813483          	ld	s1,120(sp)
    80003168:	07013903          	ld	s2,112(sp)
    8000316c:	06813983          	ld	s3,104(sp)
    80003170:	06013a03          	ld	s4,96(sp)
    80003174:	05813a83          	ld	s5,88(sp)
    80003178:	05013b03          	ld	s6,80(sp)
    8000317c:	04813b83          	ld	s7,72(sp)
    80003180:	04013c03          	ld	s8,64(sp)
    80003184:	03813c83          	ld	s9,56(sp)
    80003188:	03013d03          	ld	s10,48(sp)
    8000318c:	02813d83          	ld	s11,40(sp)
    80003190:	0d010113          	addi	sp,sp,208
    80003194:	00008067          	ret
    80003198:	07300713          	li	a4,115
    8000319c:	1ce78a63          	beq	a5,a4,80003370 <__printf+0x4b8>
    800031a0:	07800713          	li	a4,120
    800031a4:	1ee79e63          	bne	a5,a4,800033a0 <__printf+0x4e8>
    800031a8:	f7843783          	ld	a5,-136(s0)
    800031ac:	0007a703          	lw	a4,0(a5)
    800031b0:	00878793          	addi	a5,a5,8
    800031b4:	f6f43c23          	sd	a5,-136(s0)
    800031b8:	28074263          	bltz	a4,8000343c <__printf+0x584>
    800031bc:	00002d97          	auipc	s11,0x2
    800031c0:	08cd8d93          	addi	s11,s11,140 # 80005248 <digits>
    800031c4:	00f77793          	andi	a5,a4,15
    800031c8:	00fd87b3          	add	a5,s11,a5
    800031cc:	0007c683          	lbu	a3,0(a5)
    800031d0:	00f00613          	li	a2,15
    800031d4:	0007079b          	sext.w	a5,a4
    800031d8:	f8d40023          	sb	a3,-128(s0)
    800031dc:	0047559b          	srliw	a1,a4,0x4
    800031e0:	0047569b          	srliw	a3,a4,0x4
    800031e4:	00000c93          	li	s9,0
    800031e8:	0ee65063          	bge	a2,a4,800032c8 <__printf+0x410>
    800031ec:	00f6f693          	andi	a3,a3,15
    800031f0:	00dd86b3          	add	a3,s11,a3
    800031f4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800031f8:	0087d79b          	srliw	a5,a5,0x8
    800031fc:	00100c93          	li	s9,1
    80003200:	f8d400a3          	sb	a3,-127(s0)
    80003204:	0cb67263          	bgeu	a2,a1,800032c8 <__printf+0x410>
    80003208:	00f7f693          	andi	a3,a5,15
    8000320c:	00dd86b3          	add	a3,s11,a3
    80003210:	0006c583          	lbu	a1,0(a3)
    80003214:	00f00613          	li	a2,15
    80003218:	0047d69b          	srliw	a3,a5,0x4
    8000321c:	f8b40123          	sb	a1,-126(s0)
    80003220:	0047d593          	srli	a1,a5,0x4
    80003224:	28f67e63          	bgeu	a2,a5,800034c0 <__printf+0x608>
    80003228:	00f6f693          	andi	a3,a3,15
    8000322c:	00dd86b3          	add	a3,s11,a3
    80003230:	0006c503          	lbu	a0,0(a3)
    80003234:	0087d813          	srli	a6,a5,0x8
    80003238:	0087d69b          	srliw	a3,a5,0x8
    8000323c:	f8a401a3          	sb	a0,-125(s0)
    80003240:	28b67663          	bgeu	a2,a1,800034cc <__printf+0x614>
    80003244:	00f6f693          	andi	a3,a3,15
    80003248:	00dd86b3          	add	a3,s11,a3
    8000324c:	0006c583          	lbu	a1,0(a3)
    80003250:	00c7d513          	srli	a0,a5,0xc
    80003254:	00c7d69b          	srliw	a3,a5,0xc
    80003258:	f8b40223          	sb	a1,-124(s0)
    8000325c:	29067a63          	bgeu	a2,a6,800034f0 <__printf+0x638>
    80003260:	00f6f693          	andi	a3,a3,15
    80003264:	00dd86b3          	add	a3,s11,a3
    80003268:	0006c583          	lbu	a1,0(a3)
    8000326c:	0107d813          	srli	a6,a5,0x10
    80003270:	0107d69b          	srliw	a3,a5,0x10
    80003274:	f8b402a3          	sb	a1,-123(s0)
    80003278:	28a67263          	bgeu	a2,a0,800034fc <__printf+0x644>
    8000327c:	00f6f693          	andi	a3,a3,15
    80003280:	00dd86b3          	add	a3,s11,a3
    80003284:	0006c683          	lbu	a3,0(a3)
    80003288:	0147d79b          	srliw	a5,a5,0x14
    8000328c:	f8d40323          	sb	a3,-122(s0)
    80003290:	21067663          	bgeu	a2,a6,8000349c <__printf+0x5e4>
    80003294:	02079793          	slli	a5,a5,0x20
    80003298:	0207d793          	srli	a5,a5,0x20
    8000329c:	00fd8db3          	add	s11,s11,a5
    800032a0:	000dc683          	lbu	a3,0(s11)
    800032a4:	00800793          	li	a5,8
    800032a8:	00700c93          	li	s9,7
    800032ac:	f8d403a3          	sb	a3,-121(s0)
    800032b0:	00075c63          	bgez	a4,800032c8 <__printf+0x410>
    800032b4:	f9040713          	addi	a4,s0,-112
    800032b8:	00f70733          	add	a4,a4,a5
    800032bc:	02d00693          	li	a3,45
    800032c0:	fed70823          	sb	a3,-16(a4)
    800032c4:	00078c93          	mv	s9,a5
    800032c8:	f8040793          	addi	a5,s0,-128
    800032cc:	01978cb3          	add	s9,a5,s9
    800032d0:	f7f40d13          	addi	s10,s0,-129
    800032d4:	000cc503          	lbu	a0,0(s9)
    800032d8:	fffc8c93          	addi	s9,s9,-1
    800032dc:	00000097          	auipc	ra,0x0
    800032e0:	9f8080e7          	jalr	-1544(ra) # 80002cd4 <consputc>
    800032e4:	ff9d18e3          	bne	s10,s9,800032d4 <__printf+0x41c>
    800032e8:	0100006f          	j	800032f8 <__printf+0x440>
    800032ec:	00000097          	auipc	ra,0x0
    800032f0:	9e8080e7          	jalr	-1560(ra) # 80002cd4 <consputc>
    800032f4:	000c8493          	mv	s1,s9
    800032f8:	00094503          	lbu	a0,0(s2)
    800032fc:	c60510e3          	bnez	a0,80002f5c <__printf+0xa4>
    80003300:	e40c0ee3          	beqz	s8,8000315c <__printf+0x2a4>
    80003304:	00003517          	auipc	a0,0x3
    80003308:	4ac50513          	addi	a0,a0,1196 # 800067b0 <pr>
    8000330c:	00001097          	auipc	ra,0x1
    80003310:	94c080e7          	jalr	-1716(ra) # 80003c58 <release>
    80003314:	e49ff06f          	j	8000315c <__printf+0x2a4>
    80003318:	f7843783          	ld	a5,-136(s0)
    8000331c:	03000513          	li	a0,48
    80003320:	01000d13          	li	s10,16
    80003324:	00878713          	addi	a4,a5,8
    80003328:	0007bc83          	ld	s9,0(a5)
    8000332c:	f6e43c23          	sd	a4,-136(s0)
    80003330:	00000097          	auipc	ra,0x0
    80003334:	9a4080e7          	jalr	-1628(ra) # 80002cd4 <consputc>
    80003338:	07800513          	li	a0,120
    8000333c:	00000097          	auipc	ra,0x0
    80003340:	998080e7          	jalr	-1640(ra) # 80002cd4 <consputc>
    80003344:	00002d97          	auipc	s11,0x2
    80003348:	f04d8d93          	addi	s11,s11,-252 # 80005248 <digits>
    8000334c:	03ccd793          	srli	a5,s9,0x3c
    80003350:	00fd87b3          	add	a5,s11,a5
    80003354:	0007c503          	lbu	a0,0(a5)
    80003358:	fffd0d1b          	addiw	s10,s10,-1
    8000335c:	004c9c93          	slli	s9,s9,0x4
    80003360:	00000097          	auipc	ra,0x0
    80003364:	974080e7          	jalr	-1676(ra) # 80002cd4 <consputc>
    80003368:	fe0d12e3          	bnez	s10,8000334c <__printf+0x494>
    8000336c:	f8dff06f          	j	800032f8 <__printf+0x440>
    80003370:	f7843783          	ld	a5,-136(s0)
    80003374:	0007bc83          	ld	s9,0(a5)
    80003378:	00878793          	addi	a5,a5,8
    8000337c:	f6f43c23          	sd	a5,-136(s0)
    80003380:	000c9a63          	bnez	s9,80003394 <__printf+0x4dc>
    80003384:	1080006f          	j	8000348c <__printf+0x5d4>
    80003388:	001c8c93          	addi	s9,s9,1
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	948080e7          	jalr	-1720(ra) # 80002cd4 <consputc>
    80003394:	000cc503          	lbu	a0,0(s9)
    80003398:	fe0518e3          	bnez	a0,80003388 <__printf+0x4d0>
    8000339c:	f5dff06f          	j	800032f8 <__printf+0x440>
    800033a0:	02500513          	li	a0,37
    800033a4:	00000097          	auipc	ra,0x0
    800033a8:	930080e7          	jalr	-1744(ra) # 80002cd4 <consputc>
    800033ac:	000c8513          	mv	a0,s9
    800033b0:	00000097          	auipc	ra,0x0
    800033b4:	924080e7          	jalr	-1756(ra) # 80002cd4 <consputc>
    800033b8:	f41ff06f          	j	800032f8 <__printf+0x440>
    800033bc:	02500513          	li	a0,37
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	914080e7          	jalr	-1772(ra) # 80002cd4 <consputc>
    800033c8:	f31ff06f          	j	800032f8 <__printf+0x440>
    800033cc:	00030513          	mv	a0,t1
    800033d0:	00000097          	auipc	ra,0x0
    800033d4:	7bc080e7          	jalr	1980(ra) # 80003b8c <acquire>
    800033d8:	b4dff06f          	j	80002f24 <__printf+0x6c>
    800033dc:	40c0053b          	negw	a0,a2
    800033e0:	00a00713          	li	a4,10
    800033e4:	02e576bb          	remuw	a3,a0,a4
    800033e8:	00002d97          	auipc	s11,0x2
    800033ec:	e60d8d93          	addi	s11,s11,-416 # 80005248 <digits>
    800033f0:	ff700593          	li	a1,-9
    800033f4:	02069693          	slli	a3,a3,0x20
    800033f8:	0206d693          	srli	a3,a3,0x20
    800033fc:	00dd86b3          	add	a3,s11,a3
    80003400:	0006c683          	lbu	a3,0(a3)
    80003404:	02e557bb          	divuw	a5,a0,a4
    80003408:	f8d40023          	sb	a3,-128(s0)
    8000340c:	10b65e63          	bge	a2,a1,80003528 <__printf+0x670>
    80003410:	06300593          	li	a1,99
    80003414:	02e7f6bb          	remuw	a3,a5,a4
    80003418:	02069693          	slli	a3,a3,0x20
    8000341c:	0206d693          	srli	a3,a3,0x20
    80003420:	00dd86b3          	add	a3,s11,a3
    80003424:	0006c683          	lbu	a3,0(a3)
    80003428:	02e7d73b          	divuw	a4,a5,a4
    8000342c:	00200793          	li	a5,2
    80003430:	f8d400a3          	sb	a3,-127(s0)
    80003434:	bca5ece3          	bltu	a1,a0,8000300c <__printf+0x154>
    80003438:	ce5ff06f          	j	8000311c <__printf+0x264>
    8000343c:	40e007bb          	negw	a5,a4
    80003440:	00002d97          	auipc	s11,0x2
    80003444:	e08d8d93          	addi	s11,s11,-504 # 80005248 <digits>
    80003448:	00f7f693          	andi	a3,a5,15
    8000344c:	00dd86b3          	add	a3,s11,a3
    80003450:	0006c583          	lbu	a1,0(a3)
    80003454:	ff100613          	li	a2,-15
    80003458:	0047d69b          	srliw	a3,a5,0x4
    8000345c:	f8b40023          	sb	a1,-128(s0)
    80003460:	0047d59b          	srliw	a1,a5,0x4
    80003464:	0ac75e63          	bge	a4,a2,80003520 <__printf+0x668>
    80003468:	00f6f693          	andi	a3,a3,15
    8000346c:	00dd86b3          	add	a3,s11,a3
    80003470:	0006c603          	lbu	a2,0(a3)
    80003474:	00f00693          	li	a3,15
    80003478:	0087d79b          	srliw	a5,a5,0x8
    8000347c:	f8c400a3          	sb	a2,-127(s0)
    80003480:	d8b6e4e3          	bltu	a3,a1,80003208 <__printf+0x350>
    80003484:	00200793          	li	a5,2
    80003488:	e2dff06f          	j	800032b4 <__printf+0x3fc>
    8000348c:	00002c97          	auipc	s9,0x2
    80003490:	d9cc8c93          	addi	s9,s9,-612 # 80005228 <CONSOLE_STATUS+0x218>
    80003494:	02800513          	li	a0,40
    80003498:	ef1ff06f          	j	80003388 <__printf+0x4d0>
    8000349c:	00700793          	li	a5,7
    800034a0:	00600c93          	li	s9,6
    800034a4:	e0dff06f          	j	800032b0 <__printf+0x3f8>
    800034a8:	00700793          	li	a5,7
    800034ac:	00600c93          	li	s9,6
    800034b0:	c69ff06f          	j	80003118 <__printf+0x260>
    800034b4:	00300793          	li	a5,3
    800034b8:	00200c93          	li	s9,2
    800034bc:	c5dff06f          	j	80003118 <__printf+0x260>
    800034c0:	00300793          	li	a5,3
    800034c4:	00200c93          	li	s9,2
    800034c8:	de9ff06f          	j	800032b0 <__printf+0x3f8>
    800034cc:	00400793          	li	a5,4
    800034d0:	00300c93          	li	s9,3
    800034d4:	dddff06f          	j	800032b0 <__printf+0x3f8>
    800034d8:	00400793          	li	a5,4
    800034dc:	00300c93          	li	s9,3
    800034e0:	c39ff06f          	j	80003118 <__printf+0x260>
    800034e4:	00500793          	li	a5,5
    800034e8:	00400c93          	li	s9,4
    800034ec:	c2dff06f          	j	80003118 <__printf+0x260>
    800034f0:	00500793          	li	a5,5
    800034f4:	00400c93          	li	s9,4
    800034f8:	db9ff06f          	j	800032b0 <__printf+0x3f8>
    800034fc:	00600793          	li	a5,6
    80003500:	00500c93          	li	s9,5
    80003504:	dadff06f          	j	800032b0 <__printf+0x3f8>
    80003508:	00600793          	li	a5,6
    8000350c:	00500c93          	li	s9,5
    80003510:	c09ff06f          	j	80003118 <__printf+0x260>
    80003514:	00800793          	li	a5,8
    80003518:	00700c93          	li	s9,7
    8000351c:	bfdff06f          	j	80003118 <__printf+0x260>
    80003520:	00100793          	li	a5,1
    80003524:	d91ff06f          	j	800032b4 <__printf+0x3fc>
    80003528:	00100793          	li	a5,1
    8000352c:	bf1ff06f          	j	8000311c <__printf+0x264>
    80003530:	00900793          	li	a5,9
    80003534:	00800c93          	li	s9,8
    80003538:	be1ff06f          	j	80003118 <__printf+0x260>
    8000353c:	00002517          	auipc	a0,0x2
    80003540:	cf450513          	addi	a0,a0,-780 # 80005230 <CONSOLE_STATUS+0x220>
    80003544:	00000097          	auipc	ra,0x0
    80003548:	918080e7          	jalr	-1768(ra) # 80002e5c <panic>

000000008000354c <printfinit>:
    8000354c:	fe010113          	addi	sp,sp,-32
    80003550:	00813823          	sd	s0,16(sp)
    80003554:	00913423          	sd	s1,8(sp)
    80003558:	00113c23          	sd	ra,24(sp)
    8000355c:	02010413          	addi	s0,sp,32
    80003560:	00003497          	auipc	s1,0x3
    80003564:	25048493          	addi	s1,s1,592 # 800067b0 <pr>
    80003568:	00048513          	mv	a0,s1
    8000356c:	00002597          	auipc	a1,0x2
    80003570:	cd458593          	addi	a1,a1,-812 # 80005240 <CONSOLE_STATUS+0x230>
    80003574:	00000097          	auipc	ra,0x0
    80003578:	5f4080e7          	jalr	1524(ra) # 80003b68 <initlock>
    8000357c:	01813083          	ld	ra,24(sp)
    80003580:	01013403          	ld	s0,16(sp)
    80003584:	0004ac23          	sw	zero,24(s1)
    80003588:	00813483          	ld	s1,8(sp)
    8000358c:	02010113          	addi	sp,sp,32
    80003590:	00008067          	ret

0000000080003594 <uartinit>:
    80003594:	ff010113          	addi	sp,sp,-16
    80003598:	00813423          	sd	s0,8(sp)
    8000359c:	01010413          	addi	s0,sp,16
    800035a0:	100007b7          	lui	a5,0x10000
    800035a4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800035a8:	f8000713          	li	a4,-128
    800035ac:	00e781a3          	sb	a4,3(a5)
    800035b0:	00300713          	li	a4,3
    800035b4:	00e78023          	sb	a4,0(a5)
    800035b8:	000780a3          	sb	zero,1(a5)
    800035bc:	00e781a3          	sb	a4,3(a5)
    800035c0:	00700693          	li	a3,7
    800035c4:	00d78123          	sb	a3,2(a5)
    800035c8:	00e780a3          	sb	a4,1(a5)
    800035cc:	00813403          	ld	s0,8(sp)
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret

00000000800035d8 <uartputc>:
    800035d8:	00002797          	auipc	a5,0x2
    800035dc:	f907a783          	lw	a5,-112(a5) # 80005568 <panicked>
    800035e0:	00078463          	beqz	a5,800035e8 <uartputc+0x10>
    800035e4:	0000006f          	j	800035e4 <uartputc+0xc>
    800035e8:	fd010113          	addi	sp,sp,-48
    800035ec:	02813023          	sd	s0,32(sp)
    800035f0:	00913c23          	sd	s1,24(sp)
    800035f4:	01213823          	sd	s2,16(sp)
    800035f8:	01313423          	sd	s3,8(sp)
    800035fc:	02113423          	sd	ra,40(sp)
    80003600:	03010413          	addi	s0,sp,48
    80003604:	00002917          	auipc	s2,0x2
    80003608:	f6c90913          	addi	s2,s2,-148 # 80005570 <uart_tx_r>
    8000360c:	00093783          	ld	a5,0(s2)
    80003610:	00002497          	auipc	s1,0x2
    80003614:	f6848493          	addi	s1,s1,-152 # 80005578 <uart_tx_w>
    80003618:	0004b703          	ld	a4,0(s1)
    8000361c:	02078693          	addi	a3,a5,32
    80003620:	00050993          	mv	s3,a0
    80003624:	02e69c63          	bne	a3,a4,8000365c <uartputc+0x84>
    80003628:	00001097          	auipc	ra,0x1
    8000362c:	834080e7          	jalr	-1996(ra) # 80003e5c <push_on>
    80003630:	00093783          	ld	a5,0(s2)
    80003634:	0004b703          	ld	a4,0(s1)
    80003638:	02078793          	addi	a5,a5,32
    8000363c:	00e79463          	bne	a5,a4,80003644 <uartputc+0x6c>
    80003640:	0000006f          	j	80003640 <uartputc+0x68>
    80003644:	00001097          	auipc	ra,0x1
    80003648:	88c080e7          	jalr	-1908(ra) # 80003ed0 <pop_on>
    8000364c:	00093783          	ld	a5,0(s2)
    80003650:	0004b703          	ld	a4,0(s1)
    80003654:	02078693          	addi	a3,a5,32
    80003658:	fce688e3          	beq	a3,a4,80003628 <uartputc+0x50>
    8000365c:	01f77693          	andi	a3,a4,31
    80003660:	00003597          	auipc	a1,0x3
    80003664:	17058593          	addi	a1,a1,368 # 800067d0 <uart_tx_buf>
    80003668:	00d586b3          	add	a3,a1,a3
    8000366c:	00170713          	addi	a4,a4,1
    80003670:	01368023          	sb	s3,0(a3)
    80003674:	00e4b023          	sd	a4,0(s1)
    80003678:	10000637          	lui	a2,0x10000
    8000367c:	02f71063          	bne	a4,a5,8000369c <uartputc+0xc4>
    80003680:	0340006f          	j	800036b4 <uartputc+0xdc>
    80003684:	00074703          	lbu	a4,0(a4)
    80003688:	00f93023          	sd	a5,0(s2)
    8000368c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003690:	00093783          	ld	a5,0(s2)
    80003694:	0004b703          	ld	a4,0(s1)
    80003698:	00f70e63          	beq	a4,a5,800036b4 <uartputc+0xdc>
    8000369c:	00564683          	lbu	a3,5(a2)
    800036a0:	01f7f713          	andi	a4,a5,31
    800036a4:	00e58733          	add	a4,a1,a4
    800036a8:	0206f693          	andi	a3,a3,32
    800036ac:	00178793          	addi	a5,a5,1
    800036b0:	fc069ae3          	bnez	a3,80003684 <uartputc+0xac>
    800036b4:	02813083          	ld	ra,40(sp)
    800036b8:	02013403          	ld	s0,32(sp)
    800036bc:	01813483          	ld	s1,24(sp)
    800036c0:	01013903          	ld	s2,16(sp)
    800036c4:	00813983          	ld	s3,8(sp)
    800036c8:	03010113          	addi	sp,sp,48
    800036cc:	00008067          	ret

00000000800036d0 <uartputc_sync>:
    800036d0:	ff010113          	addi	sp,sp,-16
    800036d4:	00813423          	sd	s0,8(sp)
    800036d8:	01010413          	addi	s0,sp,16
    800036dc:	00002717          	auipc	a4,0x2
    800036e0:	e8c72703          	lw	a4,-372(a4) # 80005568 <panicked>
    800036e4:	02071663          	bnez	a4,80003710 <uartputc_sync+0x40>
    800036e8:	00050793          	mv	a5,a0
    800036ec:	100006b7          	lui	a3,0x10000
    800036f0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800036f4:	02077713          	andi	a4,a4,32
    800036f8:	fe070ce3          	beqz	a4,800036f0 <uartputc_sync+0x20>
    800036fc:	0ff7f793          	andi	a5,a5,255
    80003700:	00f68023          	sb	a5,0(a3)
    80003704:	00813403          	ld	s0,8(sp)
    80003708:	01010113          	addi	sp,sp,16
    8000370c:	00008067          	ret
    80003710:	0000006f          	j	80003710 <uartputc_sync+0x40>

0000000080003714 <uartstart>:
    80003714:	ff010113          	addi	sp,sp,-16
    80003718:	00813423          	sd	s0,8(sp)
    8000371c:	01010413          	addi	s0,sp,16
    80003720:	00002617          	auipc	a2,0x2
    80003724:	e5060613          	addi	a2,a2,-432 # 80005570 <uart_tx_r>
    80003728:	00002517          	auipc	a0,0x2
    8000372c:	e5050513          	addi	a0,a0,-432 # 80005578 <uart_tx_w>
    80003730:	00063783          	ld	a5,0(a2)
    80003734:	00053703          	ld	a4,0(a0)
    80003738:	04f70263          	beq	a4,a5,8000377c <uartstart+0x68>
    8000373c:	100005b7          	lui	a1,0x10000
    80003740:	00003817          	auipc	a6,0x3
    80003744:	09080813          	addi	a6,a6,144 # 800067d0 <uart_tx_buf>
    80003748:	01c0006f          	j	80003764 <uartstart+0x50>
    8000374c:	0006c703          	lbu	a4,0(a3)
    80003750:	00f63023          	sd	a5,0(a2)
    80003754:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003758:	00063783          	ld	a5,0(a2)
    8000375c:	00053703          	ld	a4,0(a0)
    80003760:	00f70e63          	beq	a4,a5,8000377c <uartstart+0x68>
    80003764:	01f7f713          	andi	a4,a5,31
    80003768:	00e806b3          	add	a3,a6,a4
    8000376c:	0055c703          	lbu	a4,5(a1)
    80003770:	00178793          	addi	a5,a5,1
    80003774:	02077713          	andi	a4,a4,32
    80003778:	fc071ae3          	bnez	a4,8000374c <uartstart+0x38>
    8000377c:	00813403          	ld	s0,8(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret

0000000080003788 <uartgetc>:
    80003788:	ff010113          	addi	sp,sp,-16
    8000378c:	00813423          	sd	s0,8(sp)
    80003790:	01010413          	addi	s0,sp,16
    80003794:	10000737          	lui	a4,0x10000
    80003798:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000379c:	0017f793          	andi	a5,a5,1
    800037a0:	00078c63          	beqz	a5,800037b8 <uartgetc+0x30>
    800037a4:	00074503          	lbu	a0,0(a4)
    800037a8:	0ff57513          	andi	a0,a0,255
    800037ac:	00813403          	ld	s0,8(sp)
    800037b0:	01010113          	addi	sp,sp,16
    800037b4:	00008067          	ret
    800037b8:	fff00513          	li	a0,-1
    800037bc:	ff1ff06f          	j	800037ac <uartgetc+0x24>

00000000800037c0 <uartintr>:
    800037c0:	100007b7          	lui	a5,0x10000
    800037c4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800037c8:	0017f793          	andi	a5,a5,1
    800037cc:	0a078463          	beqz	a5,80003874 <uartintr+0xb4>
    800037d0:	fe010113          	addi	sp,sp,-32
    800037d4:	00813823          	sd	s0,16(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	00113c23          	sd	ra,24(sp)
    800037e0:	02010413          	addi	s0,sp,32
    800037e4:	100004b7          	lui	s1,0x10000
    800037e8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800037ec:	0ff57513          	andi	a0,a0,255
    800037f0:	fffff097          	auipc	ra,0xfffff
    800037f4:	534080e7          	jalr	1332(ra) # 80002d24 <consoleintr>
    800037f8:	0054c783          	lbu	a5,5(s1)
    800037fc:	0017f793          	andi	a5,a5,1
    80003800:	fe0794e3          	bnez	a5,800037e8 <uartintr+0x28>
    80003804:	00002617          	auipc	a2,0x2
    80003808:	d6c60613          	addi	a2,a2,-660 # 80005570 <uart_tx_r>
    8000380c:	00002517          	auipc	a0,0x2
    80003810:	d6c50513          	addi	a0,a0,-660 # 80005578 <uart_tx_w>
    80003814:	00063783          	ld	a5,0(a2)
    80003818:	00053703          	ld	a4,0(a0)
    8000381c:	04f70263          	beq	a4,a5,80003860 <uartintr+0xa0>
    80003820:	100005b7          	lui	a1,0x10000
    80003824:	00003817          	auipc	a6,0x3
    80003828:	fac80813          	addi	a6,a6,-84 # 800067d0 <uart_tx_buf>
    8000382c:	01c0006f          	j	80003848 <uartintr+0x88>
    80003830:	0006c703          	lbu	a4,0(a3)
    80003834:	00f63023          	sd	a5,0(a2)
    80003838:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000383c:	00063783          	ld	a5,0(a2)
    80003840:	00053703          	ld	a4,0(a0)
    80003844:	00f70e63          	beq	a4,a5,80003860 <uartintr+0xa0>
    80003848:	01f7f713          	andi	a4,a5,31
    8000384c:	00e806b3          	add	a3,a6,a4
    80003850:	0055c703          	lbu	a4,5(a1)
    80003854:	00178793          	addi	a5,a5,1
    80003858:	02077713          	andi	a4,a4,32
    8000385c:	fc071ae3          	bnez	a4,80003830 <uartintr+0x70>
    80003860:	01813083          	ld	ra,24(sp)
    80003864:	01013403          	ld	s0,16(sp)
    80003868:	00813483          	ld	s1,8(sp)
    8000386c:	02010113          	addi	sp,sp,32
    80003870:	00008067          	ret
    80003874:	00002617          	auipc	a2,0x2
    80003878:	cfc60613          	addi	a2,a2,-772 # 80005570 <uart_tx_r>
    8000387c:	00002517          	auipc	a0,0x2
    80003880:	cfc50513          	addi	a0,a0,-772 # 80005578 <uart_tx_w>
    80003884:	00063783          	ld	a5,0(a2)
    80003888:	00053703          	ld	a4,0(a0)
    8000388c:	04f70263          	beq	a4,a5,800038d0 <uartintr+0x110>
    80003890:	100005b7          	lui	a1,0x10000
    80003894:	00003817          	auipc	a6,0x3
    80003898:	f3c80813          	addi	a6,a6,-196 # 800067d0 <uart_tx_buf>
    8000389c:	01c0006f          	j	800038b8 <uartintr+0xf8>
    800038a0:	0006c703          	lbu	a4,0(a3)
    800038a4:	00f63023          	sd	a5,0(a2)
    800038a8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800038ac:	00063783          	ld	a5,0(a2)
    800038b0:	00053703          	ld	a4,0(a0)
    800038b4:	02f70063          	beq	a4,a5,800038d4 <uartintr+0x114>
    800038b8:	01f7f713          	andi	a4,a5,31
    800038bc:	00e806b3          	add	a3,a6,a4
    800038c0:	0055c703          	lbu	a4,5(a1)
    800038c4:	00178793          	addi	a5,a5,1
    800038c8:	02077713          	andi	a4,a4,32
    800038cc:	fc071ae3          	bnez	a4,800038a0 <uartintr+0xe0>
    800038d0:	00008067          	ret
    800038d4:	00008067          	ret

00000000800038d8 <kinit>:
    800038d8:	fc010113          	addi	sp,sp,-64
    800038dc:	02913423          	sd	s1,40(sp)
    800038e0:	fffff7b7          	lui	a5,0xfffff
    800038e4:	00004497          	auipc	s1,0x4
    800038e8:	f0b48493          	addi	s1,s1,-245 # 800077ef <end+0xfff>
    800038ec:	02813823          	sd	s0,48(sp)
    800038f0:	01313c23          	sd	s3,24(sp)
    800038f4:	00f4f4b3          	and	s1,s1,a5
    800038f8:	02113c23          	sd	ra,56(sp)
    800038fc:	03213023          	sd	s2,32(sp)
    80003900:	01413823          	sd	s4,16(sp)
    80003904:	01513423          	sd	s5,8(sp)
    80003908:	04010413          	addi	s0,sp,64
    8000390c:	000017b7          	lui	a5,0x1
    80003910:	01100993          	li	s3,17
    80003914:	00f487b3          	add	a5,s1,a5
    80003918:	01b99993          	slli	s3,s3,0x1b
    8000391c:	06f9e063          	bltu	s3,a5,8000397c <kinit+0xa4>
    80003920:	00003a97          	auipc	s5,0x3
    80003924:	ed0a8a93          	addi	s5,s5,-304 # 800067f0 <end>
    80003928:	0754ec63          	bltu	s1,s5,800039a0 <kinit+0xc8>
    8000392c:	0734fa63          	bgeu	s1,s3,800039a0 <kinit+0xc8>
    80003930:	00088a37          	lui	s4,0x88
    80003934:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003938:	00002917          	auipc	s2,0x2
    8000393c:	c4890913          	addi	s2,s2,-952 # 80005580 <kmem>
    80003940:	00ca1a13          	slli	s4,s4,0xc
    80003944:	0140006f          	j	80003958 <kinit+0x80>
    80003948:	000017b7          	lui	a5,0x1
    8000394c:	00f484b3          	add	s1,s1,a5
    80003950:	0554e863          	bltu	s1,s5,800039a0 <kinit+0xc8>
    80003954:	0534f663          	bgeu	s1,s3,800039a0 <kinit+0xc8>
    80003958:	00001637          	lui	a2,0x1
    8000395c:	00100593          	li	a1,1
    80003960:	00048513          	mv	a0,s1
    80003964:	00000097          	auipc	ra,0x0
    80003968:	5e4080e7          	jalr	1508(ra) # 80003f48 <__memset>
    8000396c:	00093783          	ld	a5,0(s2)
    80003970:	00f4b023          	sd	a5,0(s1)
    80003974:	00993023          	sd	s1,0(s2)
    80003978:	fd4498e3          	bne	s1,s4,80003948 <kinit+0x70>
    8000397c:	03813083          	ld	ra,56(sp)
    80003980:	03013403          	ld	s0,48(sp)
    80003984:	02813483          	ld	s1,40(sp)
    80003988:	02013903          	ld	s2,32(sp)
    8000398c:	01813983          	ld	s3,24(sp)
    80003990:	01013a03          	ld	s4,16(sp)
    80003994:	00813a83          	ld	s5,8(sp)
    80003998:	04010113          	addi	sp,sp,64
    8000399c:	00008067          	ret
    800039a0:	00002517          	auipc	a0,0x2
    800039a4:	8c050513          	addi	a0,a0,-1856 # 80005260 <digits+0x18>
    800039a8:	fffff097          	auipc	ra,0xfffff
    800039ac:	4b4080e7          	jalr	1204(ra) # 80002e5c <panic>

00000000800039b0 <freerange>:
    800039b0:	fc010113          	addi	sp,sp,-64
    800039b4:	000017b7          	lui	a5,0x1
    800039b8:	02913423          	sd	s1,40(sp)
    800039bc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800039c0:	009504b3          	add	s1,a0,s1
    800039c4:	fffff537          	lui	a0,0xfffff
    800039c8:	02813823          	sd	s0,48(sp)
    800039cc:	02113c23          	sd	ra,56(sp)
    800039d0:	03213023          	sd	s2,32(sp)
    800039d4:	01313c23          	sd	s3,24(sp)
    800039d8:	01413823          	sd	s4,16(sp)
    800039dc:	01513423          	sd	s5,8(sp)
    800039e0:	01613023          	sd	s6,0(sp)
    800039e4:	04010413          	addi	s0,sp,64
    800039e8:	00a4f4b3          	and	s1,s1,a0
    800039ec:	00f487b3          	add	a5,s1,a5
    800039f0:	06f5e463          	bltu	a1,a5,80003a58 <freerange+0xa8>
    800039f4:	00003a97          	auipc	s5,0x3
    800039f8:	dfca8a93          	addi	s5,s5,-516 # 800067f0 <end>
    800039fc:	0954e263          	bltu	s1,s5,80003a80 <freerange+0xd0>
    80003a00:	01100993          	li	s3,17
    80003a04:	01b99993          	slli	s3,s3,0x1b
    80003a08:	0734fc63          	bgeu	s1,s3,80003a80 <freerange+0xd0>
    80003a0c:	00058a13          	mv	s4,a1
    80003a10:	00002917          	auipc	s2,0x2
    80003a14:	b7090913          	addi	s2,s2,-1168 # 80005580 <kmem>
    80003a18:	00002b37          	lui	s6,0x2
    80003a1c:	0140006f          	j	80003a30 <freerange+0x80>
    80003a20:	000017b7          	lui	a5,0x1
    80003a24:	00f484b3          	add	s1,s1,a5
    80003a28:	0554ec63          	bltu	s1,s5,80003a80 <freerange+0xd0>
    80003a2c:	0534fa63          	bgeu	s1,s3,80003a80 <freerange+0xd0>
    80003a30:	00001637          	lui	a2,0x1
    80003a34:	00100593          	li	a1,1
    80003a38:	00048513          	mv	a0,s1
    80003a3c:	00000097          	auipc	ra,0x0
    80003a40:	50c080e7          	jalr	1292(ra) # 80003f48 <__memset>
    80003a44:	00093703          	ld	a4,0(s2)
    80003a48:	016487b3          	add	a5,s1,s6
    80003a4c:	00e4b023          	sd	a4,0(s1)
    80003a50:	00993023          	sd	s1,0(s2)
    80003a54:	fcfa76e3          	bgeu	s4,a5,80003a20 <freerange+0x70>
    80003a58:	03813083          	ld	ra,56(sp)
    80003a5c:	03013403          	ld	s0,48(sp)
    80003a60:	02813483          	ld	s1,40(sp)
    80003a64:	02013903          	ld	s2,32(sp)
    80003a68:	01813983          	ld	s3,24(sp)
    80003a6c:	01013a03          	ld	s4,16(sp)
    80003a70:	00813a83          	ld	s5,8(sp)
    80003a74:	00013b03          	ld	s6,0(sp)
    80003a78:	04010113          	addi	sp,sp,64
    80003a7c:	00008067          	ret
    80003a80:	00001517          	auipc	a0,0x1
    80003a84:	7e050513          	addi	a0,a0,2016 # 80005260 <digits+0x18>
    80003a88:	fffff097          	auipc	ra,0xfffff
    80003a8c:	3d4080e7          	jalr	980(ra) # 80002e5c <panic>

0000000080003a90 <kfree>:
    80003a90:	fe010113          	addi	sp,sp,-32
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00113c23          	sd	ra,24(sp)
    80003a9c:	00913423          	sd	s1,8(sp)
    80003aa0:	02010413          	addi	s0,sp,32
    80003aa4:	03451793          	slli	a5,a0,0x34
    80003aa8:	04079c63          	bnez	a5,80003b00 <kfree+0x70>
    80003aac:	00003797          	auipc	a5,0x3
    80003ab0:	d4478793          	addi	a5,a5,-700 # 800067f0 <end>
    80003ab4:	00050493          	mv	s1,a0
    80003ab8:	04f56463          	bltu	a0,a5,80003b00 <kfree+0x70>
    80003abc:	01100793          	li	a5,17
    80003ac0:	01b79793          	slli	a5,a5,0x1b
    80003ac4:	02f57e63          	bgeu	a0,a5,80003b00 <kfree+0x70>
    80003ac8:	00001637          	lui	a2,0x1
    80003acc:	00100593          	li	a1,1
    80003ad0:	00000097          	auipc	ra,0x0
    80003ad4:	478080e7          	jalr	1144(ra) # 80003f48 <__memset>
    80003ad8:	00002797          	auipc	a5,0x2
    80003adc:	aa878793          	addi	a5,a5,-1368 # 80005580 <kmem>
    80003ae0:	0007b703          	ld	a4,0(a5)
    80003ae4:	01813083          	ld	ra,24(sp)
    80003ae8:	01013403          	ld	s0,16(sp)
    80003aec:	00e4b023          	sd	a4,0(s1)
    80003af0:	0097b023          	sd	s1,0(a5)
    80003af4:	00813483          	ld	s1,8(sp)
    80003af8:	02010113          	addi	sp,sp,32
    80003afc:	00008067          	ret
    80003b00:	00001517          	auipc	a0,0x1
    80003b04:	76050513          	addi	a0,a0,1888 # 80005260 <digits+0x18>
    80003b08:	fffff097          	auipc	ra,0xfffff
    80003b0c:	354080e7          	jalr	852(ra) # 80002e5c <panic>

0000000080003b10 <kalloc>:
    80003b10:	fe010113          	addi	sp,sp,-32
    80003b14:	00813823          	sd	s0,16(sp)
    80003b18:	00913423          	sd	s1,8(sp)
    80003b1c:	00113c23          	sd	ra,24(sp)
    80003b20:	02010413          	addi	s0,sp,32
    80003b24:	00002797          	auipc	a5,0x2
    80003b28:	a5c78793          	addi	a5,a5,-1444 # 80005580 <kmem>
    80003b2c:	0007b483          	ld	s1,0(a5)
    80003b30:	02048063          	beqz	s1,80003b50 <kalloc+0x40>
    80003b34:	0004b703          	ld	a4,0(s1)
    80003b38:	00001637          	lui	a2,0x1
    80003b3c:	00500593          	li	a1,5
    80003b40:	00048513          	mv	a0,s1
    80003b44:	00e7b023          	sd	a4,0(a5)
    80003b48:	00000097          	auipc	ra,0x0
    80003b4c:	400080e7          	jalr	1024(ra) # 80003f48 <__memset>
    80003b50:	01813083          	ld	ra,24(sp)
    80003b54:	01013403          	ld	s0,16(sp)
    80003b58:	00048513          	mv	a0,s1
    80003b5c:	00813483          	ld	s1,8(sp)
    80003b60:	02010113          	addi	sp,sp,32
    80003b64:	00008067          	ret

0000000080003b68 <initlock>:
    80003b68:	ff010113          	addi	sp,sp,-16
    80003b6c:	00813423          	sd	s0,8(sp)
    80003b70:	01010413          	addi	s0,sp,16
    80003b74:	00813403          	ld	s0,8(sp)
    80003b78:	00b53423          	sd	a1,8(a0)
    80003b7c:	00052023          	sw	zero,0(a0)
    80003b80:	00053823          	sd	zero,16(a0)
    80003b84:	01010113          	addi	sp,sp,16
    80003b88:	00008067          	ret

0000000080003b8c <acquire>:
    80003b8c:	fe010113          	addi	sp,sp,-32
    80003b90:	00813823          	sd	s0,16(sp)
    80003b94:	00913423          	sd	s1,8(sp)
    80003b98:	00113c23          	sd	ra,24(sp)
    80003b9c:	01213023          	sd	s2,0(sp)
    80003ba0:	02010413          	addi	s0,sp,32
    80003ba4:	00050493          	mv	s1,a0
    80003ba8:	10002973          	csrr	s2,sstatus
    80003bac:	100027f3          	csrr	a5,sstatus
    80003bb0:	ffd7f793          	andi	a5,a5,-3
    80003bb4:	10079073          	csrw	sstatus,a5
    80003bb8:	fffff097          	auipc	ra,0xfffff
    80003bbc:	8e4080e7          	jalr	-1820(ra) # 8000249c <mycpu>
    80003bc0:	07852783          	lw	a5,120(a0)
    80003bc4:	06078e63          	beqz	a5,80003c40 <acquire+0xb4>
    80003bc8:	fffff097          	auipc	ra,0xfffff
    80003bcc:	8d4080e7          	jalr	-1836(ra) # 8000249c <mycpu>
    80003bd0:	07852783          	lw	a5,120(a0)
    80003bd4:	0004a703          	lw	a4,0(s1)
    80003bd8:	0017879b          	addiw	a5,a5,1
    80003bdc:	06f52c23          	sw	a5,120(a0)
    80003be0:	04071063          	bnez	a4,80003c20 <acquire+0x94>
    80003be4:	00100713          	li	a4,1
    80003be8:	00070793          	mv	a5,a4
    80003bec:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003bf0:	0007879b          	sext.w	a5,a5
    80003bf4:	fe079ae3          	bnez	a5,80003be8 <acquire+0x5c>
    80003bf8:	0ff0000f          	fence
    80003bfc:	fffff097          	auipc	ra,0xfffff
    80003c00:	8a0080e7          	jalr	-1888(ra) # 8000249c <mycpu>
    80003c04:	01813083          	ld	ra,24(sp)
    80003c08:	01013403          	ld	s0,16(sp)
    80003c0c:	00a4b823          	sd	a0,16(s1)
    80003c10:	00013903          	ld	s2,0(sp)
    80003c14:	00813483          	ld	s1,8(sp)
    80003c18:	02010113          	addi	sp,sp,32
    80003c1c:	00008067          	ret
    80003c20:	0104b903          	ld	s2,16(s1)
    80003c24:	fffff097          	auipc	ra,0xfffff
    80003c28:	878080e7          	jalr	-1928(ra) # 8000249c <mycpu>
    80003c2c:	faa91ce3          	bne	s2,a0,80003be4 <acquire+0x58>
    80003c30:	00001517          	auipc	a0,0x1
    80003c34:	63850513          	addi	a0,a0,1592 # 80005268 <digits+0x20>
    80003c38:	fffff097          	auipc	ra,0xfffff
    80003c3c:	224080e7          	jalr	548(ra) # 80002e5c <panic>
    80003c40:	00195913          	srli	s2,s2,0x1
    80003c44:	fffff097          	auipc	ra,0xfffff
    80003c48:	858080e7          	jalr	-1960(ra) # 8000249c <mycpu>
    80003c4c:	00197913          	andi	s2,s2,1
    80003c50:	07252e23          	sw	s2,124(a0)
    80003c54:	f75ff06f          	j	80003bc8 <acquire+0x3c>

0000000080003c58 <release>:
    80003c58:	fe010113          	addi	sp,sp,-32
    80003c5c:	00813823          	sd	s0,16(sp)
    80003c60:	00113c23          	sd	ra,24(sp)
    80003c64:	00913423          	sd	s1,8(sp)
    80003c68:	01213023          	sd	s2,0(sp)
    80003c6c:	02010413          	addi	s0,sp,32
    80003c70:	00052783          	lw	a5,0(a0)
    80003c74:	00079a63          	bnez	a5,80003c88 <release+0x30>
    80003c78:	00001517          	auipc	a0,0x1
    80003c7c:	5f850513          	addi	a0,a0,1528 # 80005270 <digits+0x28>
    80003c80:	fffff097          	auipc	ra,0xfffff
    80003c84:	1dc080e7          	jalr	476(ra) # 80002e5c <panic>
    80003c88:	01053903          	ld	s2,16(a0)
    80003c8c:	00050493          	mv	s1,a0
    80003c90:	fffff097          	auipc	ra,0xfffff
    80003c94:	80c080e7          	jalr	-2036(ra) # 8000249c <mycpu>
    80003c98:	fea910e3          	bne	s2,a0,80003c78 <release+0x20>
    80003c9c:	0004b823          	sd	zero,16(s1)
    80003ca0:	0ff0000f          	fence
    80003ca4:	0f50000f          	fence	iorw,ow
    80003ca8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003cac:	ffffe097          	auipc	ra,0xffffe
    80003cb0:	7f0080e7          	jalr	2032(ra) # 8000249c <mycpu>
    80003cb4:	100027f3          	csrr	a5,sstatus
    80003cb8:	0027f793          	andi	a5,a5,2
    80003cbc:	04079a63          	bnez	a5,80003d10 <release+0xb8>
    80003cc0:	07852783          	lw	a5,120(a0)
    80003cc4:	02f05e63          	blez	a5,80003d00 <release+0xa8>
    80003cc8:	fff7871b          	addiw	a4,a5,-1
    80003ccc:	06e52c23          	sw	a4,120(a0)
    80003cd0:	00071c63          	bnez	a4,80003ce8 <release+0x90>
    80003cd4:	07c52783          	lw	a5,124(a0)
    80003cd8:	00078863          	beqz	a5,80003ce8 <release+0x90>
    80003cdc:	100027f3          	csrr	a5,sstatus
    80003ce0:	0027e793          	ori	a5,a5,2
    80003ce4:	10079073          	csrw	sstatus,a5
    80003ce8:	01813083          	ld	ra,24(sp)
    80003cec:	01013403          	ld	s0,16(sp)
    80003cf0:	00813483          	ld	s1,8(sp)
    80003cf4:	00013903          	ld	s2,0(sp)
    80003cf8:	02010113          	addi	sp,sp,32
    80003cfc:	00008067          	ret
    80003d00:	00001517          	auipc	a0,0x1
    80003d04:	59050513          	addi	a0,a0,1424 # 80005290 <digits+0x48>
    80003d08:	fffff097          	auipc	ra,0xfffff
    80003d0c:	154080e7          	jalr	340(ra) # 80002e5c <panic>
    80003d10:	00001517          	auipc	a0,0x1
    80003d14:	56850513          	addi	a0,a0,1384 # 80005278 <digits+0x30>
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	144080e7          	jalr	324(ra) # 80002e5c <panic>

0000000080003d20 <holding>:
    80003d20:	00052783          	lw	a5,0(a0)
    80003d24:	00079663          	bnez	a5,80003d30 <holding+0x10>
    80003d28:	00000513          	li	a0,0
    80003d2c:	00008067          	ret
    80003d30:	fe010113          	addi	sp,sp,-32
    80003d34:	00813823          	sd	s0,16(sp)
    80003d38:	00913423          	sd	s1,8(sp)
    80003d3c:	00113c23          	sd	ra,24(sp)
    80003d40:	02010413          	addi	s0,sp,32
    80003d44:	01053483          	ld	s1,16(a0)
    80003d48:	ffffe097          	auipc	ra,0xffffe
    80003d4c:	754080e7          	jalr	1876(ra) # 8000249c <mycpu>
    80003d50:	01813083          	ld	ra,24(sp)
    80003d54:	01013403          	ld	s0,16(sp)
    80003d58:	40a48533          	sub	a0,s1,a0
    80003d5c:	00153513          	seqz	a0,a0
    80003d60:	00813483          	ld	s1,8(sp)
    80003d64:	02010113          	addi	sp,sp,32
    80003d68:	00008067          	ret

0000000080003d6c <push_off>:
    80003d6c:	fe010113          	addi	sp,sp,-32
    80003d70:	00813823          	sd	s0,16(sp)
    80003d74:	00113c23          	sd	ra,24(sp)
    80003d78:	00913423          	sd	s1,8(sp)
    80003d7c:	02010413          	addi	s0,sp,32
    80003d80:	100024f3          	csrr	s1,sstatus
    80003d84:	100027f3          	csrr	a5,sstatus
    80003d88:	ffd7f793          	andi	a5,a5,-3
    80003d8c:	10079073          	csrw	sstatus,a5
    80003d90:	ffffe097          	auipc	ra,0xffffe
    80003d94:	70c080e7          	jalr	1804(ra) # 8000249c <mycpu>
    80003d98:	07852783          	lw	a5,120(a0)
    80003d9c:	02078663          	beqz	a5,80003dc8 <push_off+0x5c>
    80003da0:	ffffe097          	auipc	ra,0xffffe
    80003da4:	6fc080e7          	jalr	1788(ra) # 8000249c <mycpu>
    80003da8:	07852783          	lw	a5,120(a0)
    80003dac:	01813083          	ld	ra,24(sp)
    80003db0:	01013403          	ld	s0,16(sp)
    80003db4:	0017879b          	addiw	a5,a5,1
    80003db8:	06f52c23          	sw	a5,120(a0)
    80003dbc:	00813483          	ld	s1,8(sp)
    80003dc0:	02010113          	addi	sp,sp,32
    80003dc4:	00008067          	ret
    80003dc8:	0014d493          	srli	s1,s1,0x1
    80003dcc:	ffffe097          	auipc	ra,0xffffe
    80003dd0:	6d0080e7          	jalr	1744(ra) # 8000249c <mycpu>
    80003dd4:	0014f493          	andi	s1,s1,1
    80003dd8:	06952e23          	sw	s1,124(a0)
    80003ddc:	fc5ff06f          	j	80003da0 <push_off+0x34>

0000000080003de0 <pop_off>:
    80003de0:	ff010113          	addi	sp,sp,-16
    80003de4:	00813023          	sd	s0,0(sp)
    80003de8:	00113423          	sd	ra,8(sp)
    80003dec:	01010413          	addi	s0,sp,16
    80003df0:	ffffe097          	auipc	ra,0xffffe
    80003df4:	6ac080e7          	jalr	1708(ra) # 8000249c <mycpu>
    80003df8:	100027f3          	csrr	a5,sstatus
    80003dfc:	0027f793          	andi	a5,a5,2
    80003e00:	04079663          	bnez	a5,80003e4c <pop_off+0x6c>
    80003e04:	07852783          	lw	a5,120(a0)
    80003e08:	02f05a63          	blez	a5,80003e3c <pop_off+0x5c>
    80003e0c:	fff7871b          	addiw	a4,a5,-1
    80003e10:	06e52c23          	sw	a4,120(a0)
    80003e14:	00071c63          	bnez	a4,80003e2c <pop_off+0x4c>
    80003e18:	07c52783          	lw	a5,124(a0)
    80003e1c:	00078863          	beqz	a5,80003e2c <pop_off+0x4c>
    80003e20:	100027f3          	csrr	a5,sstatus
    80003e24:	0027e793          	ori	a5,a5,2
    80003e28:	10079073          	csrw	sstatus,a5
    80003e2c:	00813083          	ld	ra,8(sp)
    80003e30:	00013403          	ld	s0,0(sp)
    80003e34:	01010113          	addi	sp,sp,16
    80003e38:	00008067          	ret
    80003e3c:	00001517          	auipc	a0,0x1
    80003e40:	45450513          	addi	a0,a0,1108 # 80005290 <digits+0x48>
    80003e44:	fffff097          	auipc	ra,0xfffff
    80003e48:	018080e7          	jalr	24(ra) # 80002e5c <panic>
    80003e4c:	00001517          	auipc	a0,0x1
    80003e50:	42c50513          	addi	a0,a0,1068 # 80005278 <digits+0x30>
    80003e54:	fffff097          	auipc	ra,0xfffff
    80003e58:	008080e7          	jalr	8(ra) # 80002e5c <panic>

0000000080003e5c <push_on>:
    80003e5c:	fe010113          	addi	sp,sp,-32
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00113c23          	sd	ra,24(sp)
    80003e68:	00913423          	sd	s1,8(sp)
    80003e6c:	02010413          	addi	s0,sp,32
    80003e70:	100024f3          	csrr	s1,sstatus
    80003e74:	100027f3          	csrr	a5,sstatus
    80003e78:	0027e793          	ori	a5,a5,2
    80003e7c:	10079073          	csrw	sstatus,a5
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	61c080e7          	jalr	1564(ra) # 8000249c <mycpu>
    80003e88:	07852783          	lw	a5,120(a0)
    80003e8c:	02078663          	beqz	a5,80003eb8 <push_on+0x5c>
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	60c080e7          	jalr	1548(ra) # 8000249c <mycpu>
    80003e98:	07852783          	lw	a5,120(a0)
    80003e9c:	01813083          	ld	ra,24(sp)
    80003ea0:	01013403          	ld	s0,16(sp)
    80003ea4:	0017879b          	addiw	a5,a5,1
    80003ea8:	06f52c23          	sw	a5,120(a0)
    80003eac:	00813483          	ld	s1,8(sp)
    80003eb0:	02010113          	addi	sp,sp,32
    80003eb4:	00008067          	ret
    80003eb8:	0014d493          	srli	s1,s1,0x1
    80003ebc:	ffffe097          	auipc	ra,0xffffe
    80003ec0:	5e0080e7          	jalr	1504(ra) # 8000249c <mycpu>
    80003ec4:	0014f493          	andi	s1,s1,1
    80003ec8:	06952e23          	sw	s1,124(a0)
    80003ecc:	fc5ff06f          	j	80003e90 <push_on+0x34>

0000000080003ed0 <pop_on>:
    80003ed0:	ff010113          	addi	sp,sp,-16
    80003ed4:	00813023          	sd	s0,0(sp)
    80003ed8:	00113423          	sd	ra,8(sp)
    80003edc:	01010413          	addi	s0,sp,16
    80003ee0:	ffffe097          	auipc	ra,0xffffe
    80003ee4:	5bc080e7          	jalr	1468(ra) # 8000249c <mycpu>
    80003ee8:	100027f3          	csrr	a5,sstatus
    80003eec:	0027f793          	andi	a5,a5,2
    80003ef0:	04078463          	beqz	a5,80003f38 <pop_on+0x68>
    80003ef4:	07852783          	lw	a5,120(a0)
    80003ef8:	02f05863          	blez	a5,80003f28 <pop_on+0x58>
    80003efc:	fff7879b          	addiw	a5,a5,-1
    80003f00:	06f52c23          	sw	a5,120(a0)
    80003f04:	07853783          	ld	a5,120(a0)
    80003f08:	00079863          	bnez	a5,80003f18 <pop_on+0x48>
    80003f0c:	100027f3          	csrr	a5,sstatus
    80003f10:	ffd7f793          	andi	a5,a5,-3
    80003f14:	10079073          	csrw	sstatus,a5
    80003f18:	00813083          	ld	ra,8(sp)
    80003f1c:	00013403          	ld	s0,0(sp)
    80003f20:	01010113          	addi	sp,sp,16
    80003f24:	00008067          	ret
    80003f28:	00001517          	auipc	a0,0x1
    80003f2c:	39050513          	addi	a0,a0,912 # 800052b8 <digits+0x70>
    80003f30:	fffff097          	auipc	ra,0xfffff
    80003f34:	f2c080e7          	jalr	-212(ra) # 80002e5c <panic>
    80003f38:	00001517          	auipc	a0,0x1
    80003f3c:	36050513          	addi	a0,a0,864 # 80005298 <digits+0x50>
    80003f40:	fffff097          	auipc	ra,0xfffff
    80003f44:	f1c080e7          	jalr	-228(ra) # 80002e5c <panic>

0000000080003f48 <__memset>:
    80003f48:	ff010113          	addi	sp,sp,-16
    80003f4c:	00813423          	sd	s0,8(sp)
    80003f50:	01010413          	addi	s0,sp,16
    80003f54:	1a060e63          	beqz	a2,80004110 <__memset+0x1c8>
    80003f58:	40a007b3          	neg	a5,a0
    80003f5c:	0077f793          	andi	a5,a5,7
    80003f60:	00778693          	addi	a3,a5,7
    80003f64:	00b00813          	li	a6,11
    80003f68:	0ff5f593          	andi	a1,a1,255
    80003f6c:	fff6071b          	addiw	a4,a2,-1
    80003f70:	1b06e663          	bltu	a3,a6,8000411c <__memset+0x1d4>
    80003f74:	1cd76463          	bltu	a4,a3,8000413c <__memset+0x1f4>
    80003f78:	1a078e63          	beqz	a5,80004134 <__memset+0x1ec>
    80003f7c:	00b50023          	sb	a1,0(a0)
    80003f80:	00100713          	li	a4,1
    80003f84:	1ae78463          	beq	a5,a4,8000412c <__memset+0x1e4>
    80003f88:	00b500a3          	sb	a1,1(a0)
    80003f8c:	00200713          	li	a4,2
    80003f90:	1ae78a63          	beq	a5,a4,80004144 <__memset+0x1fc>
    80003f94:	00b50123          	sb	a1,2(a0)
    80003f98:	00300713          	li	a4,3
    80003f9c:	18e78463          	beq	a5,a4,80004124 <__memset+0x1dc>
    80003fa0:	00b501a3          	sb	a1,3(a0)
    80003fa4:	00400713          	li	a4,4
    80003fa8:	1ae78263          	beq	a5,a4,8000414c <__memset+0x204>
    80003fac:	00b50223          	sb	a1,4(a0)
    80003fb0:	00500713          	li	a4,5
    80003fb4:	1ae78063          	beq	a5,a4,80004154 <__memset+0x20c>
    80003fb8:	00b502a3          	sb	a1,5(a0)
    80003fbc:	00700713          	li	a4,7
    80003fc0:	18e79e63          	bne	a5,a4,8000415c <__memset+0x214>
    80003fc4:	00b50323          	sb	a1,6(a0)
    80003fc8:	00700e93          	li	t4,7
    80003fcc:	00859713          	slli	a4,a1,0x8
    80003fd0:	00e5e733          	or	a4,a1,a4
    80003fd4:	01059e13          	slli	t3,a1,0x10
    80003fd8:	01c76e33          	or	t3,a4,t3
    80003fdc:	01859313          	slli	t1,a1,0x18
    80003fe0:	006e6333          	or	t1,t3,t1
    80003fe4:	02059893          	slli	a7,a1,0x20
    80003fe8:	40f60e3b          	subw	t3,a2,a5
    80003fec:	011368b3          	or	a7,t1,a7
    80003ff0:	02859813          	slli	a6,a1,0x28
    80003ff4:	0108e833          	or	a6,a7,a6
    80003ff8:	03059693          	slli	a3,a1,0x30
    80003ffc:	003e589b          	srliw	a7,t3,0x3
    80004000:	00d866b3          	or	a3,a6,a3
    80004004:	03859713          	slli	a4,a1,0x38
    80004008:	00389813          	slli	a6,a7,0x3
    8000400c:	00f507b3          	add	a5,a0,a5
    80004010:	00e6e733          	or	a4,a3,a4
    80004014:	000e089b          	sext.w	a7,t3
    80004018:	00f806b3          	add	a3,a6,a5
    8000401c:	00e7b023          	sd	a4,0(a5)
    80004020:	00878793          	addi	a5,a5,8
    80004024:	fed79ce3          	bne	a5,a3,8000401c <__memset+0xd4>
    80004028:	ff8e7793          	andi	a5,t3,-8
    8000402c:	0007871b          	sext.w	a4,a5
    80004030:	01d787bb          	addw	a5,a5,t4
    80004034:	0ce88e63          	beq	a7,a4,80004110 <__memset+0x1c8>
    80004038:	00f50733          	add	a4,a0,a5
    8000403c:	00b70023          	sb	a1,0(a4)
    80004040:	0017871b          	addiw	a4,a5,1
    80004044:	0cc77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004048:	00e50733          	add	a4,a0,a4
    8000404c:	00b70023          	sb	a1,0(a4)
    80004050:	0027871b          	addiw	a4,a5,2
    80004054:	0ac77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004058:	00e50733          	add	a4,a0,a4
    8000405c:	00b70023          	sb	a1,0(a4)
    80004060:	0037871b          	addiw	a4,a5,3
    80004064:	0ac77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004068:	00e50733          	add	a4,a0,a4
    8000406c:	00b70023          	sb	a1,0(a4)
    80004070:	0047871b          	addiw	a4,a5,4
    80004074:	08c77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004078:	00e50733          	add	a4,a0,a4
    8000407c:	00b70023          	sb	a1,0(a4)
    80004080:	0057871b          	addiw	a4,a5,5
    80004084:	08c77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004088:	00e50733          	add	a4,a0,a4
    8000408c:	00b70023          	sb	a1,0(a4)
    80004090:	0067871b          	addiw	a4,a5,6
    80004094:	06c77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    80004098:	00e50733          	add	a4,a0,a4
    8000409c:	00b70023          	sb	a1,0(a4)
    800040a0:	0077871b          	addiw	a4,a5,7
    800040a4:	06c77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040a8:	00e50733          	add	a4,a0,a4
    800040ac:	00b70023          	sb	a1,0(a4)
    800040b0:	0087871b          	addiw	a4,a5,8
    800040b4:	04c77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040b8:	00e50733          	add	a4,a0,a4
    800040bc:	00b70023          	sb	a1,0(a4)
    800040c0:	0097871b          	addiw	a4,a5,9
    800040c4:	04c77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040c8:	00e50733          	add	a4,a0,a4
    800040cc:	00b70023          	sb	a1,0(a4)
    800040d0:	00a7871b          	addiw	a4,a5,10
    800040d4:	02c77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040d8:	00e50733          	add	a4,a0,a4
    800040dc:	00b70023          	sb	a1,0(a4)
    800040e0:	00b7871b          	addiw	a4,a5,11
    800040e4:	02c77663          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040e8:	00e50733          	add	a4,a0,a4
    800040ec:	00b70023          	sb	a1,0(a4)
    800040f0:	00c7871b          	addiw	a4,a5,12
    800040f4:	00c77e63          	bgeu	a4,a2,80004110 <__memset+0x1c8>
    800040f8:	00e50733          	add	a4,a0,a4
    800040fc:	00b70023          	sb	a1,0(a4)
    80004100:	00d7879b          	addiw	a5,a5,13
    80004104:	00c7f663          	bgeu	a5,a2,80004110 <__memset+0x1c8>
    80004108:	00f507b3          	add	a5,a0,a5
    8000410c:	00b78023          	sb	a1,0(a5)
    80004110:	00813403          	ld	s0,8(sp)
    80004114:	01010113          	addi	sp,sp,16
    80004118:	00008067          	ret
    8000411c:	00b00693          	li	a3,11
    80004120:	e55ff06f          	j	80003f74 <__memset+0x2c>
    80004124:	00300e93          	li	t4,3
    80004128:	ea5ff06f          	j	80003fcc <__memset+0x84>
    8000412c:	00100e93          	li	t4,1
    80004130:	e9dff06f          	j	80003fcc <__memset+0x84>
    80004134:	00000e93          	li	t4,0
    80004138:	e95ff06f          	j	80003fcc <__memset+0x84>
    8000413c:	00000793          	li	a5,0
    80004140:	ef9ff06f          	j	80004038 <__memset+0xf0>
    80004144:	00200e93          	li	t4,2
    80004148:	e85ff06f          	j	80003fcc <__memset+0x84>
    8000414c:	00400e93          	li	t4,4
    80004150:	e7dff06f          	j	80003fcc <__memset+0x84>
    80004154:	00500e93          	li	t4,5
    80004158:	e75ff06f          	j	80003fcc <__memset+0x84>
    8000415c:	00600e93          	li	t4,6
    80004160:	e6dff06f          	j	80003fcc <__memset+0x84>

0000000080004164 <__memmove>:
    80004164:	ff010113          	addi	sp,sp,-16
    80004168:	00813423          	sd	s0,8(sp)
    8000416c:	01010413          	addi	s0,sp,16
    80004170:	0e060863          	beqz	a2,80004260 <__memmove+0xfc>
    80004174:	fff6069b          	addiw	a3,a2,-1
    80004178:	0006881b          	sext.w	a6,a3
    8000417c:	0ea5e863          	bltu	a1,a0,8000426c <__memmove+0x108>
    80004180:	00758713          	addi	a4,a1,7
    80004184:	00a5e7b3          	or	a5,a1,a0
    80004188:	40a70733          	sub	a4,a4,a0
    8000418c:	0077f793          	andi	a5,a5,7
    80004190:	00f73713          	sltiu	a4,a4,15
    80004194:	00174713          	xori	a4,a4,1
    80004198:	0017b793          	seqz	a5,a5
    8000419c:	00e7f7b3          	and	a5,a5,a4
    800041a0:	10078863          	beqz	a5,800042b0 <__memmove+0x14c>
    800041a4:	00900793          	li	a5,9
    800041a8:	1107f463          	bgeu	a5,a6,800042b0 <__memmove+0x14c>
    800041ac:	0036581b          	srliw	a6,a2,0x3
    800041b0:	fff8081b          	addiw	a6,a6,-1
    800041b4:	02081813          	slli	a6,a6,0x20
    800041b8:	01d85893          	srli	a7,a6,0x1d
    800041bc:	00858813          	addi	a6,a1,8
    800041c0:	00058793          	mv	a5,a1
    800041c4:	00050713          	mv	a4,a0
    800041c8:	01088833          	add	a6,a7,a6
    800041cc:	0007b883          	ld	a7,0(a5)
    800041d0:	00878793          	addi	a5,a5,8
    800041d4:	00870713          	addi	a4,a4,8
    800041d8:	ff173c23          	sd	a7,-8(a4)
    800041dc:	ff0798e3          	bne	a5,a6,800041cc <__memmove+0x68>
    800041e0:	ff867713          	andi	a4,a2,-8
    800041e4:	02071793          	slli	a5,a4,0x20
    800041e8:	0207d793          	srli	a5,a5,0x20
    800041ec:	00f585b3          	add	a1,a1,a5
    800041f0:	40e686bb          	subw	a3,a3,a4
    800041f4:	00f507b3          	add	a5,a0,a5
    800041f8:	06e60463          	beq	a2,a4,80004260 <__memmove+0xfc>
    800041fc:	0005c703          	lbu	a4,0(a1)
    80004200:	00e78023          	sb	a4,0(a5)
    80004204:	04068e63          	beqz	a3,80004260 <__memmove+0xfc>
    80004208:	0015c603          	lbu	a2,1(a1)
    8000420c:	00100713          	li	a4,1
    80004210:	00c780a3          	sb	a2,1(a5)
    80004214:	04e68663          	beq	a3,a4,80004260 <__memmove+0xfc>
    80004218:	0025c603          	lbu	a2,2(a1)
    8000421c:	00200713          	li	a4,2
    80004220:	00c78123          	sb	a2,2(a5)
    80004224:	02e68e63          	beq	a3,a4,80004260 <__memmove+0xfc>
    80004228:	0035c603          	lbu	a2,3(a1)
    8000422c:	00300713          	li	a4,3
    80004230:	00c781a3          	sb	a2,3(a5)
    80004234:	02e68663          	beq	a3,a4,80004260 <__memmove+0xfc>
    80004238:	0045c603          	lbu	a2,4(a1)
    8000423c:	00400713          	li	a4,4
    80004240:	00c78223          	sb	a2,4(a5)
    80004244:	00e68e63          	beq	a3,a4,80004260 <__memmove+0xfc>
    80004248:	0055c603          	lbu	a2,5(a1)
    8000424c:	00500713          	li	a4,5
    80004250:	00c782a3          	sb	a2,5(a5)
    80004254:	00e68663          	beq	a3,a4,80004260 <__memmove+0xfc>
    80004258:	0065c703          	lbu	a4,6(a1)
    8000425c:	00e78323          	sb	a4,6(a5)
    80004260:	00813403          	ld	s0,8(sp)
    80004264:	01010113          	addi	sp,sp,16
    80004268:	00008067          	ret
    8000426c:	02061713          	slli	a4,a2,0x20
    80004270:	02075713          	srli	a4,a4,0x20
    80004274:	00e587b3          	add	a5,a1,a4
    80004278:	f0f574e3          	bgeu	a0,a5,80004180 <__memmove+0x1c>
    8000427c:	02069613          	slli	a2,a3,0x20
    80004280:	02065613          	srli	a2,a2,0x20
    80004284:	fff64613          	not	a2,a2
    80004288:	00e50733          	add	a4,a0,a4
    8000428c:	00c78633          	add	a2,a5,a2
    80004290:	fff7c683          	lbu	a3,-1(a5)
    80004294:	fff78793          	addi	a5,a5,-1
    80004298:	fff70713          	addi	a4,a4,-1
    8000429c:	00d70023          	sb	a3,0(a4)
    800042a0:	fec798e3          	bne	a5,a2,80004290 <__memmove+0x12c>
    800042a4:	00813403          	ld	s0,8(sp)
    800042a8:	01010113          	addi	sp,sp,16
    800042ac:	00008067          	ret
    800042b0:	02069713          	slli	a4,a3,0x20
    800042b4:	02075713          	srli	a4,a4,0x20
    800042b8:	00170713          	addi	a4,a4,1
    800042bc:	00e50733          	add	a4,a0,a4
    800042c0:	00050793          	mv	a5,a0
    800042c4:	0005c683          	lbu	a3,0(a1)
    800042c8:	00178793          	addi	a5,a5,1
    800042cc:	00158593          	addi	a1,a1,1
    800042d0:	fed78fa3          	sb	a3,-1(a5)
    800042d4:	fee798e3          	bne	a5,a4,800042c4 <__memmove+0x160>
    800042d8:	f89ff06f          	j	80004260 <__memmove+0xfc>

00000000800042dc <__putc>:
    800042dc:	fe010113          	addi	sp,sp,-32
    800042e0:	00813823          	sd	s0,16(sp)
    800042e4:	00113c23          	sd	ra,24(sp)
    800042e8:	02010413          	addi	s0,sp,32
    800042ec:	00050793          	mv	a5,a0
    800042f0:	fef40593          	addi	a1,s0,-17
    800042f4:	00100613          	li	a2,1
    800042f8:	00000513          	li	a0,0
    800042fc:	fef407a3          	sb	a5,-17(s0)
    80004300:	fffff097          	auipc	ra,0xfffff
    80004304:	b3c080e7          	jalr	-1220(ra) # 80002e3c <console_write>
    80004308:	01813083          	ld	ra,24(sp)
    8000430c:	01013403          	ld	s0,16(sp)
    80004310:	02010113          	addi	sp,sp,32
    80004314:	00008067          	ret

0000000080004318 <__getc>:
    80004318:	fe010113          	addi	sp,sp,-32
    8000431c:	00813823          	sd	s0,16(sp)
    80004320:	00113c23          	sd	ra,24(sp)
    80004324:	02010413          	addi	s0,sp,32
    80004328:	fe840593          	addi	a1,s0,-24
    8000432c:	00100613          	li	a2,1
    80004330:	00000513          	li	a0,0
    80004334:	fffff097          	auipc	ra,0xfffff
    80004338:	ae8080e7          	jalr	-1304(ra) # 80002e1c <console_read>
    8000433c:	fe844503          	lbu	a0,-24(s0)
    80004340:	01813083          	ld	ra,24(sp)
    80004344:	01013403          	ld	s0,16(sp)
    80004348:	02010113          	addi	sp,sp,32
    8000434c:	00008067          	ret

0000000080004350 <console_handler>:
    80004350:	fe010113          	addi	sp,sp,-32
    80004354:	00813823          	sd	s0,16(sp)
    80004358:	00113c23          	sd	ra,24(sp)
    8000435c:	00913423          	sd	s1,8(sp)
    80004360:	02010413          	addi	s0,sp,32
    80004364:	14202773          	csrr	a4,scause
    80004368:	100027f3          	csrr	a5,sstatus
    8000436c:	0027f793          	andi	a5,a5,2
    80004370:	06079e63          	bnez	a5,800043ec <console_handler+0x9c>
    80004374:	00074c63          	bltz	a4,8000438c <console_handler+0x3c>
    80004378:	01813083          	ld	ra,24(sp)
    8000437c:	01013403          	ld	s0,16(sp)
    80004380:	00813483          	ld	s1,8(sp)
    80004384:	02010113          	addi	sp,sp,32
    80004388:	00008067          	ret
    8000438c:	0ff77713          	andi	a4,a4,255
    80004390:	00900793          	li	a5,9
    80004394:	fef712e3          	bne	a4,a5,80004378 <console_handler+0x28>
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	6dc080e7          	jalr	1756(ra) # 80002a74 <plic_claim>
    800043a0:	00a00793          	li	a5,10
    800043a4:	00050493          	mv	s1,a0
    800043a8:	02f50c63          	beq	a0,a5,800043e0 <console_handler+0x90>
    800043ac:	fc0506e3          	beqz	a0,80004378 <console_handler+0x28>
    800043b0:	00050593          	mv	a1,a0
    800043b4:	00001517          	auipc	a0,0x1
    800043b8:	e0c50513          	addi	a0,a0,-500 # 800051c0 <CONSOLE_STATUS+0x1b0>
    800043bc:	fffff097          	auipc	ra,0xfffff
    800043c0:	afc080e7          	jalr	-1284(ra) # 80002eb8 <__printf>
    800043c4:	01013403          	ld	s0,16(sp)
    800043c8:	01813083          	ld	ra,24(sp)
    800043cc:	00048513          	mv	a0,s1
    800043d0:	00813483          	ld	s1,8(sp)
    800043d4:	02010113          	addi	sp,sp,32
    800043d8:	ffffe317          	auipc	t1,0xffffe
    800043dc:	6d430067          	jr	1748(t1) # 80002aac <plic_complete>
    800043e0:	fffff097          	auipc	ra,0xfffff
    800043e4:	3e0080e7          	jalr	992(ra) # 800037c0 <uartintr>
    800043e8:	fddff06f          	j	800043c4 <console_handler+0x74>
    800043ec:	00001517          	auipc	a0,0x1
    800043f0:	ed450513          	addi	a0,a0,-300 # 800052c0 <digits+0x78>
    800043f4:	fffff097          	auipc	ra,0xfffff
    800043f8:	a68080e7          	jalr	-1432(ra) # 80002e5c <panic>
	...
