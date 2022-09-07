
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	9b013103          	ld	sp,-1616(sp) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	451020ef          	jal	ra,80002c6c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5RiscV13pushRegistersEv>:
.global _ZN5RiscV13pushRegistersEv
.type _ZN5RiscV13pushRegistersEv, @function
_ZN5RiscV13pushRegistersEv:
    addi sp,sp, -256
    80001000:	f0010113          	addi	sp,sp,-256

    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31

    sd x\index, \index * 8 (sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5RiscV12popRegistersEv>:
.type _ZN5RiscV12popRegistersEv, @function
_ZN5RiscV12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31

    ld x\index, \index * 8 (sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp,sp, 256
    800010f0:	10010113          	addi	sp,sp,256


    800010f4:	00008067          	ret

00000000800010f8 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    800010f8:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    800010fc:	00b29a63          	bne	t0,a1,80001110 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001100:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001104:	fe029ae3          	bnez	t0,800010f8 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001108:	00000513          	li	a0,0
    jr ra                  # Return.
    8000110c:	00008067          	ret

0000000080001110 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001110:	00100513          	li	a0,1
    80001114:	00008067          	ret
	...

0000000080001120 <_ZN5RiscV14supervisorTrapEv>:
.align 4
.global _ZN5RiscV14supervisorTrapEv
.type _ZN5RiscV14supervisorTrapEv, @function
_ZN5RiscV14supervisorTrapEv:

    addi sp,sp, -256
    80001120:	f0010113          	addi	sp,sp,-256

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31

    sd x\index, \index * 8 (sp)
    .endr
    80001124:	00013023          	sd	zero,0(sp)
    80001128:	00113423          	sd	ra,8(sp)
    8000112c:	00213823          	sd	sp,16(sp)
    80001130:	00313c23          	sd	gp,24(sp)
    80001134:	02413023          	sd	tp,32(sp)
    80001138:	02513423          	sd	t0,40(sp)
    8000113c:	02613823          	sd	t1,48(sp)
    80001140:	02713c23          	sd	t2,56(sp)
    80001144:	04813023          	sd	s0,64(sp)
    80001148:	04913423          	sd	s1,72(sp)
    8000114c:	04a13823          	sd	a0,80(sp)
    80001150:	04b13c23          	sd	a1,88(sp)
    80001154:	06c13023          	sd	a2,96(sp)
    80001158:	06d13423          	sd	a3,104(sp)
    8000115c:	06e13823          	sd	a4,112(sp)
    80001160:	06f13c23          	sd	a5,120(sp)
    80001164:	09013023          	sd	a6,128(sp)
    80001168:	09113423          	sd	a7,136(sp)
    8000116c:	09213823          	sd	s2,144(sp)
    80001170:	09313c23          	sd	s3,152(sp)
    80001174:	0b413023          	sd	s4,160(sp)
    80001178:	0b513423          	sd	s5,168(sp)
    8000117c:	0b613823          	sd	s6,176(sp)
    80001180:	0b713c23          	sd	s7,184(sp)
    80001184:	0d813023          	sd	s8,192(sp)
    80001188:	0d913423          	sd	s9,200(sp)
    8000118c:	0da13823          	sd	s10,208(sp)
    80001190:	0db13c23          	sd	s11,216(sp)
    80001194:	0fc13023          	sd	t3,224(sp)
    80001198:	0fd13423          	sd	t4,232(sp)
    8000119c:	0fe13823          	sd	t5,240(sp)
    800011a0:	0ff13c23          	sd	t6,248(sp)

    call _ZN5RiscV20handleSupervisorTrapEv
    800011a4:	400000ef          	jal	ra,800015a4 <_ZN5RiscV20handleSupervisorTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31

    ld x\index, \index * 8 (sp)
    .endr #ovde puca kada se pozove mem_alloc prvo
    800011a8:	00013003          	ld	zero,0(sp)
    800011ac:	00813083          	ld	ra,8(sp)
    800011b0:	01013103          	ld	sp,16(sp)
    800011b4:	01813183          	ld	gp,24(sp)
    800011b8:	02013203          	ld	tp,32(sp)
    800011bc:	02813283          	ld	t0,40(sp)
    800011c0:	03013303          	ld	t1,48(sp)
    800011c4:	03813383          	ld	t2,56(sp)
    800011c8:	04013403          	ld	s0,64(sp)
    800011cc:	04813483          	ld	s1,72(sp)
    800011d0:	05013503          	ld	a0,80(sp)
    800011d4:	05813583          	ld	a1,88(sp)
    800011d8:	06013603          	ld	a2,96(sp)
    800011dc:	06813683          	ld	a3,104(sp)
    800011e0:	07013703          	ld	a4,112(sp)
    800011e4:	07813783          	ld	a5,120(sp)
    800011e8:	08013803          	ld	a6,128(sp)
    800011ec:	08813883          	ld	a7,136(sp)
    800011f0:	09013903          	ld	s2,144(sp)
    800011f4:	09813983          	ld	s3,152(sp)
    800011f8:	0a013a03          	ld	s4,160(sp)
    800011fc:	0a813a83          	ld	s5,168(sp)
    80001200:	0b013b03          	ld	s6,176(sp)
    80001204:	0b813b83          	ld	s7,184(sp)
    80001208:	0c013c03          	ld	s8,192(sp)
    8000120c:	0c813c83          	ld	s9,200(sp)
    80001210:	0d013d03          	ld	s10,208(sp)
    80001214:	0d813d83          	ld	s11,216(sp)
    80001218:	0e013e03          	ld	t3,224(sp)
    8000121c:	0e813e83          	ld	t4,232(sp)
    80001220:	0f013f03          	ld	t5,240(sp)
    80001224:	0f813f83          	ld	t6,248(sp)
    addi sp,sp, 256
    80001228:	10010113          	addi	sp,sp,256

    8000122c:	10200073          	sret

0000000080001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    #a0- old->context
    #a1- running->context
    sd ra, 0 * 8(a0)
    80001230:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001234:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001238:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000123c:	0085b103          	ld	sp,8(a1)

    80001240:	00008067          	ret

0000000080001244 <_Z9mem_allocm>:
#include "../h/RiscV.hpp"
//#include "../h/MemoryAllocation.hpp"



void *mem_alloc(size_t  size) {
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    void* pointer = nullptr;
    uint64 sysCallNr=0x01UL;
    //size=MemoryAllocation::bytesToBlocks(size);
    //mozda ovde mozes da koristis privremeni registar "scratch", da bi koristio sd
    __asm__ volatile("mv a1, %0" : : [size] "r" (size)); //izgleda da ipak mora sd, jer ne prepoznaje ni a0 ni a1
    80001250:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80001254:	00100793          	li	a5,1
    80001258:	00078513          	mv	a0,a5
     //ovo bi trebalo u mainu, ali kom mainu, gde ja uopste smem da deklarisem trap??????? izgleda da stvec skace na ecall
    __asm__ volatile("ecall");
    8000125c:	00000073          	ecall
    __asm__ volatile("mv %[pointer], a1" : [pointer] "=r"(pointer));
    80001260:	00058513          	mv	a0,a1
    return pointer;
}
    80001264:	00813403          	ld	s0,8(sp)
    80001268:	01010113          	addi	sp,sp,16
    8000126c:	00008067          	ret

0000000080001270 <_Z8mem_freePv>:

int mem_free(void * ptr) {
    80001270:	ff010113          	addi	sp,sp,-16
    80001274:	00813423          	sd	s0,8(sp)
    80001278:	01010413          	addi	s0,sp,16
    int ret=0;
    uint64 sysCallNr=0x02UL;
    __asm__ volatile("mv a1, %0" : : [ptr] "r" (ptr));
    8000127c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80001280:	00200793          	li	a5,2
    80001284:	00078513          	mv	a0,a5
    //RiscV::w_stvec((uint64) &Trap());
    __asm__ volatile("ecall");
    80001288:	00000073          	ecall
    __asm__ volatile("mv %[ret], a1" : [ret] "=r"(ret)); //kaze undefined reference
    8000128c:	00058513          	mv	a0,a1
    return ret;
}
    80001290:	0005051b          	sext.w	a0,a0
    80001294:	00813403          	ld	s0,8(sp)
    80001298:	01010113          	addi	sp,sp,16
    8000129c:	00008067          	ret

00000000800012a0 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    800012a0:	ff010113          	addi	sp,sp,-16
    800012a4:	00813423          	sd	s0,8(sp)
    800012a8:	01010413          	addi	s0,sp,16
    TCB* ret_value_thread;
    uint64 sysCallNr=0x11UL;
    //neki stack_space alokacija se pominje????
    __asm__ volatile("mv a3, %0" : : [arg] "r" (arg));
    800012ac:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : [start_routine] "r" (start_routine));
    800012b0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : [handle] "r" (handle));
    800012b4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    800012b8:	01100793          	li	a5,17
    800012bc:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012c0:	00000073          	ecall
    __asm__ volatile("mv %[ret_value_thread], a1" : [ret_value_thread] "=r"(ret_value_thread)); //kaze undefined reference
    800012c4:	00058793          	mv	a5,a1
    return 0;//todo
    //moras da vidis sta ovde treba da se vrati
}
    800012c8:	00000513          	li	a0,0
    800012cc:	00813403          	ld	s0,8(sp)
    800012d0:	01010113          	addi	sp,sp,16
    800012d4:	00008067          	ret

00000000800012d8 <_Z11thread_exitv>:

int thread_exit (){
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00813423          	sd	s0,8(sp)
    800012e0:	01010413          	addi	s0,sp,16
    int ret=0;
    uint64 sysCallNr=0x12UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    800012e4:	01200793          	li	a5,18
    800012e8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012ec:	00000073          	ecall
    //sta treba ovde da se vrati, verovatno da li je uspelo ili nije uspelo, PREBACI THREAD_EXIT U INT U TCB-U
    __asm__ volatile("mv %[ret], a1" : [ret] "=r"(ret)); //kaze undefined reference
    800012f0:	00058513          	mv	a0,a1
    return ret;
}
    800012f4:	0005051b          	sext.w	a0,a0
    800012f8:	00813403          	ld	s0,8(sp)
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00008067          	ret

0000000080001304 <_Z15thread_dispatchv>:

void thread_dispatch (){
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00813423          	sd	s0,8(sp)
    8000130c:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80001310:	01300793          	li	a5,19
    80001314:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001318:	00000073          	ecall
}
    8000131c:	00813403          	ld	s0,8(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <_Z41__static_initialization_and_destruction_0ii>:

bool Queue::isEmpty() {
    if(queue.listEmpty()==true){
        return true;
    }else{return false;}
}
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00813423          	sd	s0,8(sp)
    80001330:	01010413          	addi	s0,sp,16
    80001334:	00100793          	li	a5,1
    80001338:	00f50863          	beq	a0,a5,80001348 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000133c:	00813403          	ld	s0,8(sp)
    80001340:	01010113          	addi	sp,sp,16
    80001344:	00008067          	ret
    80001348:	000107b7          	lui	a5,0x10
    8000134c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001350:	fef596e3          	bne	a1,a5,8000133c <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    80001354:	00004797          	auipc	a5,0x4
    80001358:	6ec78793          	addi	a5,a5,1772 # 80005a40 <_ZN5Queue5queueE>
    8000135c:	0007b023          	sd	zero,0(a5)
    80001360:	0007b423          	sd	zero,8(a5)
    80001364:	fd9ff06f          	j	8000133c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001368 <_ZN5Queue3putEP3TCB>:
void Queue::put(TCB *thread) {
    80001368:	ff010113          	addi	sp,sp,-16
    8000136c:	00813423          	sd	s0,8(sp)
    80001370:	01010413          	addi	s0,sp,16

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001374:	00004797          	auipc	a5,0x4
    80001378:	6547b783          	ld	a5,1620(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000137c:	0007b783          	ld	a5,0(a5)
    80001380:	0c078a63          	beqz	a5,80001454 <_ZN5Queue3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80001384:	00004717          	auipc	a4,0x4
    80001388:	64473703          	ld	a4,1604(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000138c:	00073683          	ld	a3,0(a4)
    80001390:	0006b683          	ld	a3,0(a3)
    80001394:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001398:	00073703          	ld	a4,0(a4)
    8000139c:	00873603          	ld	a2,8(a4)
    800013a0:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    800013a4:	0107b703          	ld	a4,16(a5)
    800013a8:	03f00593          	li	a1,63
    800013ac:	02e5f663          	bgeu	a1,a4,800013d8 <_ZN5Queue3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    800013b0:	fc070713          	addi	a4,a4,-64
    800013b4:	01800593          	li	a1,24
    800013b8:	02e5ec63          	bltu	a1,a4,800013f0 <_ZN5Queue3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    800013bc:	02060263          	beqz	a2,800013e0 <_ZN5Queue3putEP3TCB+0x78>
    800013c0:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    800013c4:	0007b703          	ld	a4,0(a5)
    800013c8:	08070663          	beqz	a4,80001454 <_ZN5Queue3putEP3TCB+0xec>
    800013cc:	0087b683          	ld	a3,8(a5)
    800013d0:	00d73423          	sd	a3,8(a4)
                return cur;
    800013d4:	0800006f          	j	80001454 <_ZN5Queue3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800013d8:	00068793          	mv	a5,a3
    800013dc:	fa5ff06f          	j	80001380 <_ZN5Queue3putEP3TCB+0x18>
                else fmem_head = cur->next;
    800013e0:	00004717          	auipc	a4,0x4
    800013e4:	5e873703          	ld	a4,1512(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800013e8:	00d73023          	sd	a3,0(a4)
    800013ec:	fd9ff06f          	j	800013c4 <_ZN5Queue3putEP3TCB+0x5c>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800013f0:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    800013f4:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800013f8:	0407b023          	sd	zero,64(a5)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800013fc:	0087b683          	ld	a3,8(a5)
    80001400:	08068063          	beqz	a3,80001480 <_ZN5Queue3putEP3TCB+0x118>
    80001404:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001408:	0007b683          	ld	a3,0(a5)
    8000140c:	00068463          	beqz	a3,80001414 <_ZN5Queue3putEP3TCB+0xac>
    80001410:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001414:	0087b603          	ld	a2,8(a5)
    80001418:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    8000141c:	0007b683          	ld	a3,0(a5)
    80001420:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001424:	0107b783          	ld	a5,16(a5)
    80001428:	fc078793          	addi	a5,a5,-64
    8000142c:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001430:	0c070693          	addi	a3,a4,192
    80001434:	00004597          	auipc	a1,0x4
    80001438:	5945b583          	ld	a1,1428(a1) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000143c:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001440:	00073583          	ld	a1,0(a4)
    80001444:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001448:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    8000144c:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001450:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    80001454:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80001458:	0007b423          	sd	zero,8(a5)
        if (tail){
    8000145c:	00004717          	auipc	a4,0x4
    80001460:	5ec73703          	ld	a4,1516(a4) # 80005a48 <_ZN5Queue5queueE+0x8>
    80001464:	02070863          	beqz	a4,80001494 <_ZN5Queue3putEP3TCB+0x12c>
            tail->next=elem;
    80001468:	00f73423          	sd	a5,8(a4)
            tail=elem;
    8000146c:	00004717          	auipc	a4,0x4
    80001470:	5cf73e23          	sd	a5,1500(a4) # 80005a48 <_ZN5Queue5queueE+0x8>
}
    80001474:	00813403          	ld	s0,8(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001480:	0c070693          	addi	a3,a4,192
    80001484:	00004617          	auipc	a2,0x4
    80001488:	54463603          	ld	a2,1348(a2) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000148c:	00d63023          	sd	a3,0(a2)
    80001490:	f79ff06f          	j	80001408 <_ZN5Queue3putEP3TCB+0xa0>
        }else{
            head=tail=elem;
    80001494:	00004717          	auipc	a4,0x4
    80001498:	5ac70713          	addi	a4,a4,1452 # 80005a40 <_ZN5Queue5queueE>
    8000149c:	00f73423          	sd	a5,8(a4)
    800014a0:	00f73023          	sd	a5,0(a4)
    800014a4:	fd1ff06f          	j	80001474 <_ZN5Queue3putEP3TCB+0x10c>

00000000800014a8 <_ZN5Queue3getEv>:
    {
    800014a8:	fe010113          	addi	sp,sp,-32
    800014ac:	00113c23          	sd	ra,24(sp)
    800014b0:	00813823          	sd	s0,16(sp)
    800014b4:	00913423          	sd	s1,8(sp)
    800014b8:	02010413          	addi	s0,sp,32
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    800014bc:	00004517          	auipc	a0,0x4
    800014c0:	58453503          	ld	a0,1412(a0) # 80005a40 <_ZN5Queue5queueE>
    800014c4:	04050263          	beqz	a0,80001508 <_ZN5Queue3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    800014c8:	00853783          	ld	a5,8(a0)
    800014cc:	00004717          	auipc	a4,0x4
    800014d0:	56f73a23          	sd	a5,1396(a4) # 80005a40 <_ZN5Queue5queueE>
        if(!head) {
    800014d4:	02078463          	beqz	a5,800014fc <_ZN5Queue3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    800014d8:	00053483          	ld	s1,0(a0)
        delete elem;
    800014dc:	00001097          	auipc	ra,0x1
    800014e0:	3dc080e7          	jalr	988(ra) # 800028b8 <_ZdlPv>
    }
    800014e4:	00048513          	mv	a0,s1
    800014e8:	01813083          	ld	ra,24(sp)
    800014ec:	01013403          	ld	s0,16(sp)
    800014f0:	00813483          	ld	s1,8(sp)
    800014f4:	02010113          	addi	sp,sp,32
    800014f8:	00008067          	ret
            tail = 0;
    800014fc:	00004797          	auipc	a5,0x4
    80001500:	5407b623          	sd	zero,1356(a5) # 80005a48 <_ZN5Queue5queueE+0x8>
    80001504:	fd5ff06f          	j	800014d8 <_ZN5Queue3getEv+0x30>
        if (!head) {return 0;}
    80001508:	00050493          	mv	s1,a0
        return thread;
    8000150c:	fd9ff06f          	j	800014e4 <_ZN5Queue3getEv+0x3c>

0000000080001510 <_ZN5Queue7isEmptyEv>:
bool Queue::isEmpty() {
    80001510:	ff010113          	addi	sp,sp,-16
    80001514:	00813423          	sd	s0,8(sp)
    80001518:	01010413          	addi	s0,sp,16
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    8000151c:	00004797          	auipc	a5,0x4
    80001520:	5247b783          	ld	a5,1316(a5) # 80005a40 <_ZN5Queue5queueE>
    80001524:	00078e63          	beqz	a5,80001540 <_ZN5Queue7isEmptyEv+0x30>
        return head->data;
    80001528:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    8000152c:	00078e63          	beqz	a5,80001548 <_ZN5Queue7isEmptyEv+0x38>
    }else{return false;}
    80001530:	00000513          	li	a0,0
}
    80001534:	00813403          	ld	s0,8(sp)
    80001538:	01010113          	addi	sp,sp,16
    8000153c:	00008067          	ret
        return true;
    80001540:	00100513          	li	a0,1
    80001544:	ff1ff06f          	j	80001534 <_ZN5Queue7isEmptyEv+0x24>
    80001548:	00100513          	li	a0,1
    8000154c:	fe9ff06f          	j	80001534 <_ZN5Queue7isEmptyEv+0x24>

0000000080001550 <_GLOBAL__sub_I__ZN5Queue5queueE>:
}
    80001550:	ff010113          	addi	sp,sp,-16
    80001554:	00113423          	sd	ra,8(sp)
    80001558:	00813023          	sd	s0,0(sp)
    8000155c:	01010413          	addi	s0,sp,16
    80001560:	000105b7          	lui	a1,0x10
    80001564:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001568:	00100513          	li	a0,1
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	dbc080e7          	jalr	-580(ra) # 80001328 <_Z41__static_initialization_and_destruction_0ii>
    80001574:	00813083          	ld	ra,8(sp)
    80001578:	00013403          	ld	s0,0(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_ZN5RiscV10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"


void RiscV::popSppSpie() {
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00813423          	sd	s0,8(sp)
    8000158c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001590:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001594:	10200073          	sret
}
    80001598:	00813403          	ld	s0,8(sp)
    8000159c:	01010113          	addi	sp,sp,16
    800015a0:	00008067          	ret

00000000800015a4 <_ZN5RiscV20handleSupervisorTrapEv>:

void RiscV::handleSupervisorTrap() {
    800015a4:	fb010113          	addi	sp,sp,-80
    800015a8:	04113423          	sd	ra,72(sp)
    800015ac:	04813023          	sd	s0,64(sp)
    800015b0:	05010413          	addi	s0,sp,80
    volatile uint64 size;
    volatile uint64 handle;
    volatile uint64 start_routine;
    volatile uint64 arg;
    volatile uint64 ptr;
    __asm__ volatile("sd a3, %0" : "=m"(arg));
    800015b4:	fcd43823          	sd	a3,-48(s0)
    __asm__ volatile("sd a2, %0" : "=m"(start_routine));
    800015b8:	fcc43c23          	sd	a2,-40(s0)
    __asm__ volatile("sd a1, %0" : "=m"(handle));
    800015bc:	feb43023          	sd	a1,-32(s0)
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    800015c0:	142027f3          	csrr	a5,scause
    800015c4:	faf43823          	sd	a5,-80(s0)
    return scause;
    800015c8:	fb043703          	ld	a4,-80(s0)

}

inline uint64 RiscV::r_sepc(){
    uint64  sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800015cc:	141027f3          	csrr	a5,sepc
    //__asm__ volatile("sd a1, %0" : "=m"(size));
    //__asm__ volatile("sd a1, %0" : "=m"(ptr));
    uint64 sysCallNr;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    800015d0:	00478793          	addi	a5,a5,4
    800015d4:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64  sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    800015d8:	100027f3          	csrr	a5,sstatus
    volatile uint64 sstatus = r_sstatus();
    800015dc:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    800015e0:	00050793          	mv	a5,a0
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
    800015e4:	ff870613          	addi	a2,a4,-8
    800015e8:	00100693          	li	a3,1
    800015ec:	02c6f863          	bgeu	a3,a2,8000161c <_ZN5RiscV20handleSupervisorTrapEv+0x78>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    800015f0:	fff00793          	li	a5,-1
    800015f4:	03f79793          	slli	a5,a5,0x3f
    800015f8:	00178793          	addi	a5,a5,1
    800015fc:	2ef70e63          	beq	a4,a5,800018f8 <_ZN5RiscV20handleSupervisorTrapEv+0x354>
        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    80001600:	fff00793          	li	a5,-1
    80001604:	03f79793          	slli	a5,a5,0x3f
    80001608:	00978793          	addi	a5,a5,9
    8000160c:	04f71463          	bne	a4,a5,80001654 <_ZN5RiscV20handleSupervisorTrapEv+0xb0>
        //supervisor external interrupt (console)
        console_handler();
    80001610:	00003097          	auipc	ra,0x3
    80001614:	790080e7          	jalr	1936(ra) # 80004da0 <console_handler>
        //print (scause)
        //print sepc
        //print sval

    }
    80001618:	03c0006f          	j	80001654 <_ZN5RiscV20handleSupervisorTrapEv+0xb0>
        if (sysCallNr == 0x01UL) {
    8000161c:	00100713          	li	a4,1
    80001620:	04e78263          	beq	a5,a4,80001664 <_ZN5RiscV20handleSupervisorTrapEv+0xc0>
        } else if (sysCallNr == 0x02UL) {
    80001624:	00200713          	li	a4,2
    80001628:	14e78a63          	beq	a5,a4,8000177c <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
        }else if(sysCallNr == 0x11UL){
    8000162c:	01100713          	li	a4,17
    80001630:	26e78663          	beq	a5,a4,8000189c <_ZN5RiscV20handleSupervisorTrapEv+0x2f8>
        }else if(sysCallNr == 0x12UL){
    80001634:	01200713          	li	a4,18
    80001638:	28e78263          	beq	a5,a4,800018bc <_ZN5RiscV20handleSupervisorTrapEv+0x318>
        }else if(sysCallNr == 0x13UL){
    8000163c:	01300713          	li	a4,19
    80001640:	2ae78663          	beq	a5,a4,800018ec <_ZN5RiscV20handleSupervisorTrapEv+0x348>
        w_sstatus(sstatus);
    80001644:	fb843783          	ld	a5,-72(s0)
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 volatile sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    80001648:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    8000164c:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    80001650:	14179073          	csrw	sepc,a5
    80001654:	04813083          	ld	ra,72(sp)
    80001658:	04013403          	ld	s0,64(sp)
    8000165c:	05010113          	addi	sp,sp,80
    80001660:	00008067          	ret
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
    80001664:	00058793          	mv	a5,a1
    80001668:	fef43423          	sd	a5,-24(s0)
            void* pointer=MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks((size_t)size)); //gore imas da pretvoris u bytes to blocks
    8000166c:	fe843783          	ld	a5,-24(s0)

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001670:	05778793          	addi	a5,a5,87
    80001674:	0067d793          	srli	a5,a5,0x6
    80001678:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    8000167c:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001680:	00004717          	auipc	a4,0x4
    80001684:	34873703          	ld	a4,840(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001688:	00073703          	ld	a4,0(a4)
    8000168c:	0c070863          	beqz	a4,8000175c <_ZN5RiscV20handleSupervisorTrapEv+0x1b8>
            cur->next=fmem_head->next;
    80001690:	00004697          	auipc	a3,0x4
    80001694:	3386b683          	ld	a3,824(a3) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001698:	0006b603          	ld	a2,0(a3)
    8000169c:	00063603          	ld	a2,0(a2)
    800016a0:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    800016a4:	0006b683          	ld	a3,0(a3)
    800016a8:	0086b583          	ld	a1,8(a3)
    800016ac:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    800016b0:	01073683          	ld	a3,16(a4)
    800016b4:	02f6e663          	bltu	a3,a5,800016e0 <_ZN5RiscV20handleSupervisorTrapEv+0x13c>
            if (cur->size-size<=sizeof(FreeMem)){
    800016b8:	40f686b3          	sub	a3,a3,a5
    800016bc:	01800513          	li	a0,24
    800016c0:	02d56c63          	bltu	a0,a3,800016f8 <_ZN5RiscV20handleSupervisorTrapEv+0x154>
                if (cur->prev) cur->prev->next = cur->next;
    800016c4:	02058263          	beqz	a1,800016e8 <_ZN5RiscV20handleSupervisorTrapEv+0x144>
    800016c8:	00c5b023          	sd	a2,0(a1)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    800016cc:	00073783          	ld	a5,0(a4)
    800016d0:	08078663          	beqz	a5,8000175c <_ZN5RiscV20handleSupervisorTrapEv+0x1b8>
    800016d4:	00873683          	ld	a3,8(a4)
    800016d8:	00d7b423          	sd	a3,8(a5)
                return cur;
    800016dc:	0800006f          	j	8000175c <_ZN5RiscV20handleSupervisorTrapEv+0x1b8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800016e0:	00060713          	mv	a4,a2
    800016e4:	fa9ff06f          	j	8000168c <_ZN5RiscV20handleSupervisorTrapEv+0xe8>
                else fmem_head = cur->next;
    800016e8:	00004797          	auipc	a5,0x4
    800016ec:	2e07b783          	ld	a5,736(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016f0:	00c7b023          	sd	a2,0(a5)
    800016f4:	fd9ff06f          	j	800016cc <_ZN5RiscV20handleSupervisorTrapEv+0x128>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800016f8:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    800016fc:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    80001700:	0006b023          	sd	zero,0(a3)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001704:	00873603          	ld	a2,8(a4)
    80001708:	06060063          	beqz	a2,80001768 <_ZN5RiscV20handleSupervisorTrapEv+0x1c4>
    8000170c:	00d63023          	sd	a3,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001710:	00073603          	ld	a2,0(a4)
    80001714:	00060463          	beqz	a2,8000171c <_ZN5RiscV20handleSupervisorTrapEv+0x178>
    80001718:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    8000171c:	00873603          	ld	a2,8(a4)
    80001720:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    80001724:	00073583          	ld	a1,0(a4)
    80001728:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    8000172c:	01073703          	ld	a4,16(a4)
    80001730:	40f707b3          	sub	a5,a4,a5
    80001734:	00f6b823          	sd	a5,16(a3)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001738:	0c068713          	addi	a4,a3,192
    8000173c:	00004597          	auipc	a1,0x4
    80001740:	28c5b583          	ld	a1,652(a1) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001744:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    80001748:	0006b583          	ld	a1,0(a3)
    8000174c:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    80001750:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    80001754:	0cf6b823          	sd	a5,208(a3)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001758:	00068713          	mv	a4,a3
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
    8000175c:	00070593          	mv	a1,a4
            __asm__ volatile("sd a1, 88(s0)");
    80001760:	04b43c23          	sd	a1,88(s0)
    80001764:	ee1ff06f          	j	80001644 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001768:	0c068613          	addi	a2,a3,192
    8000176c:	00004597          	auipc	a1,0x4
    80001770:	25c5b583          	ld	a1,604(a1) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001774:	00c5b023          	sd	a2,0(a1)
    80001778:	f99ff06f          	j	80001710 <_ZN5RiscV20handleSupervisorTrapEv+0x16c>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    8000177c:	00058793          	mv	a5,a1
    80001780:	fcf43423          	sd	a5,-56(s0)
            int ret=MemoryAllocation::mem_free((void*)ptr);
    80001784:	fc843703          	ld	a4,-56(s0)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001788:	00004797          	auipc	a5,0x4
    8000178c:	2407b783          	ld	a5,576(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001790:	0007b783          	ld	a5,0(a5)
    80001794:	00078e63          	beqz	a5,800017b0 <_ZN5RiscV20handleSupervisorTrapEv+0x20c>
    80001798:	02f76063          	bltu	a4,a5,800017b8 <_ZN5RiscV20handleSupervisorTrapEv+0x214>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    8000179c:	00078693          	mv	a3,a5
    800017a0:	0007b783          	ld	a5,0(a5)
    800017a4:	00f70c63          	beq	a4,a5,800017bc <_ZN5RiscV20handleSupervisorTrapEv+0x218>
    800017a8:	fee7eae3          	bltu	a5,a4,8000179c <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
    800017ac:	0100006f          	j	800017bc <_ZN5RiscV20handleSupervisorTrapEv+0x218>
            cur=nullptr;
    800017b0:	00078693          	mv	a3,a5
    800017b4:	0080006f          	j	800017bc <_ZN5RiscV20handleSupervisorTrapEv+0x218>
    800017b8:	00000693          	li	a3,0
                newSeg->next=nullptr;
    800017bc:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    800017c0:	04000793          	li	a5,64
    800017c4:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    800017c8:	00d73423          	sd	a3,8(a4)
                if(cur) {
    800017cc:	06068263          	beqz	a3,80001830 <_ZN5RiscV20handleSupervisorTrapEv+0x28c>
                    newSeg->next = cur->next;
    800017d0:	0006b783          	ld	a5,0(a3)
    800017d4:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    800017d8:	00073783          	ld	a5,0(a4)
    800017dc:	00078463          	beqz	a5,800017e4 <_ZN5RiscV20handleSupervisorTrapEv+0x240>
                    newSeg->next->prev=newSeg;
    800017e0:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    800017e4:	06068063          	beqz	a3,80001844 <_ZN5RiscV20handleSupervisorTrapEv+0x2a0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800017e8:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    800017ec:	00070c63          	beqz	a4,80001804 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800017f0:	00073783          	ld	a5,0(a4)
    800017f4:	00078863          	beqz	a5,80001804 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
    800017f8:	01073603          	ld	a2,16(a4)
    800017fc:	00c705b3          	add	a1,a4,a2
    80001800:	04b78a63          	beq	a5,a1,80001854 <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
        if (!curr) return;
    80001804:	00068c63          	beqz	a3,8000181c <_ZN5RiscV20handleSupervisorTrapEv+0x278>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001808:	0006b783          	ld	a5,0(a3)
    8000180c:	00078863          	beqz	a5,8000181c <_ZN5RiscV20handleSupervisorTrapEv+0x278>
    80001810:	0106b603          	ld	a2,16(a3)
    80001814:	00c685b3          	add	a1,a3,a2
    80001818:	04b78e63          	beq	a5,a1,80001874 <_ZN5RiscV20handleSupervisorTrapEv+0x2d0>
            if(newSeg==nullptr){
    8000181c:	06070c63          	beqz	a4,80001894 <_ZN5RiscV20handleSupervisorTrapEv+0x2f0>
            }else{return 0;}
    80001820:	00000793          	li	a5,0
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
    80001824:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
    80001828:	04b43c23          	sd	a1,88(s0)
    8000182c:	e19ff06f          	j	80001644 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
                    newSeg->next = fmem_head;
    80001830:	00004797          	auipc	a5,0x4
    80001834:	1987b783          	ld	a5,408(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001838:	0007b783          	ld	a5,0(a5)
    8000183c:	00f73023          	sd	a5,0(a4)
    80001840:	f99ff06f          	j	800017d8 <_ZN5RiscV20handleSupervisorTrapEv+0x234>
                    fmem_head = newSeg;
    80001844:	00004797          	auipc	a5,0x4
    80001848:	1847b783          	ld	a5,388(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000184c:	00e7b023          	sd	a4,0(a5)
    80001850:	f9dff06f          	j	800017ec <_ZN5RiscV20handleSupervisorTrapEv+0x248>
            curr->size += curr->next->size;
    80001854:	0107b583          	ld	a1,16(a5)
    80001858:	00b60633          	add	a2,a2,a1
    8000185c:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    80001860:	0007b783          	ld	a5,0(a5)
    80001864:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001868:	f8078ee3          	beqz	a5,80001804 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
    8000186c:	00e7b423          	sd	a4,8(a5)
    80001870:	f95ff06f          	j	80001804 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
            curr->size += curr->next->size;
    80001874:	0107b583          	ld	a1,16(a5)
    80001878:	00b60633          	add	a2,a2,a1
    8000187c:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    80001880:	0007b783          	ld	a5,0(a5)
    80001884:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    80001888:	f8078ae3          	beqz	a5,8000181c <_ZN5RiscV20handleSupervisorTrapEv+0x278>
    8000188c:	00d7b423          	sd	a3,8(a5)
    80001890:	f8dff06f          	j	8000181c <_ZN5RiscV20handleSupervisorTrapEv+0x278>
                return -1;
    80001894:	fff00793          	li	a5,-1
    80001898:	f8dff06f          	j	80001824 <_ZN5RiscV20handleSupervisorTrapEv+0x280>
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg);
    8000189c:	fd843503          	ld	a0,-40(s0)
    800018a0:	fe043583          	ld	a1,-32(s0)
    800018a4:	fd043603          	ld	a2,-48(s0)
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	a30080e7          	jalr	-1488(ra) # 800022d8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    800018b0:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    800018b4:	04b43c23          	sd	a1,88(s0)
    800018b8:	d8dff06f          	j	80001644 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
    static int createThread(Body body, TCB** handle, void* arguments);

    static void thread_dispatch(){dispatch();}

    static int thread_exit(){
        running->setFinished(true);
    800018bc:	00100593          	li	a1,1
    800018c0:	00004797          	auipc	a5,0x4
    800018c4:	1107b783          	ld	a5,272(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018c8:	0007b503          	ld	a0,0(a5)
    800018cc:	00001097          	auipc	ra,0x1
    800018d0:	9f0080e7          	jalr	-1552(ra) # 800022bc <_ZN3TCB11setFinishedEb>
        dispatch();
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	d44080e7          	jalr	-700(ra) # 80002618 <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    800018dc:	00000793          	li	a5,0
    800018e0:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    800018e4:	04b43c23          	sd	a1,88(s0)
    800018e8:	d5dff06f          	j	80001644 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
    static void thread_dispatch(){dispatch();}
    800018ec:	00001097          	auipc	ra,0x1
    800018f0:	d2c080e7          	jalr	-724(ra) # 80002618 <_ZN3TCB8dispatchEv>
    800018f4:	d51ff06f          	j	80001644 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    800018f8:	00200793          	li	a5,2
    800018fc:	1447b073          	csrc	sip,a5
}
    80001900:	d55ff06f          	j	80001654 <_ZN5RiscV20handleSupervisorTrapEv+0xb0>

0000000080001904 <_ZN9semaphore5blockEv>:
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"

void semaphore::block() {
    80001904:	fe010113          	addi	sp,sp,-32
    80001908:	00113c23          	sd	ra,24(sp)
    8000190c:	00813823          	sd	s0,16(sp)
    80001910:	00913423          	sd	s1,8(sp)
    80001914:	02010413          	addi	s0,sp,32
        //setjmp je linija old=running;
        TCB *old = TCB::running;
    80001918:	00004797          	auipc	a5,0x4
    8000191c:	0b87b783          	ld	a5,184(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001920:	0007b483          	ld	s1,0(a5)
        if (!old->isFinished()) {
    80001924:	00048513          	mv	a0,s1
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	978080e7          	jalr	-1672(ra) # 800022a0 <_ZNK3TCB10isFinishedEv>
    80001930:	02050e63          	beqz	a0,8000196c <_ZN9semaphore5blockEv+0x68>
            blocked.put(old);
        }
        TCB::running = Scheduler::get();
    80001934:	00000097          	auipc	ra,0x0
    80001938:	3ec080e7          	jalr	1004(ra) # 80001d20 <_ZN9Scheduler3getEv>
    8000193c:	00004797          	auipc	a5,0x4
    80001940:	0947b783          	ld	a5,148(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001944:	00a7b023          	sd	a0,0(a5)
        TCB::contextSwitch(&old->context, &TCB::running->context); //TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
    80001948:	01050593          	addi	a1,a0,16
    8000194c:	01048513          	addi	a0,s1,16
    80001950:	00000097          	auipc	ra,0x0
    80001954:	8e0080e7          	jalr	-1824(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
        //longjmp je linija context switch
        //mozda bi zapravo trebao ceo block da bude dispatch, jer pola blocka je slicno dispatchu, ili da napises block ovako:
        //TODO MILICEV JE SAM REKAO DA JE JEDINA RAZLIKA STO NE STAVLJAMO NIT U SCHEDULER NEGO JE STAVLJAMO U RED BLOKIRANIH
        //strana 261 u pdfu
        //marinko kaze da je dobar ovaj block
}
    80001958:	01813083          	ld	ra,24(sp)
    8000195c:	01013403          	ld	s0,16(sp)
    80001960:	00813483          	ld	s1,8(sp)
    80001964:	02010113          	addi	sp,sp,32
    80001968:	00008067          	ret
            blocked.put(old);
    8000196c:	00048513          	mv	a0,s1
    80001970:	00000097          	auipc	ra,0x0
    80001974:	9f8080e7          	jalr	-1544(ra) # 80001368 <_ZN5Queue3putEP3TCB>
    80001978:	fbdff06f          	j	80001934 <_ZN9semaphore5blockEv+0x30>

000000008000197c <_ZN9semaphore7unblockEv>:

void semaphore::unblock() {
    8000197c:	ff010113          	addi	sp,sp,-16
    80001980:	00113423          	sd	ra,8(sp)
    80001984:	00813023          	sd	s0,0(sp)
    80001988:	01010413          	addi	s0,sp,16
    TCB* t = blocked.get();
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	b1c080e7          	jalr	-1252(ra) # 800014a8 <_ZN5Queue3getEv>
    Scheduler::put(t);
    80001994:	00000097          	auipc	ra,0x0
    80001998:	3f4080e7          	jalr	1012(ra) # 80001d88 <_ZN9Scheduler3putEP3TCB>
}
    8000199c:	00813083          	ld	ra,8(sp)
    800019a0:	00013403          	ld	s0,0(sp)
    800019a4:	01010113          	addi	sp,sp,16
    800019a8:	00008067          	ret

00000000800019ac <_ZN9semaphore7semOpenEPPS_j>:

int semaphore::semOpen(semaphore **handle, unsigned int init) {
    800019ac:	ff010113          	addi	sp,sp,-16
    800019b0:	00813423          	sd	s0,8(sp)
    800019b4:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800019b8:	00004797          	auipc	a5,0x4
    800019bc:	0107b783          	ld	a5,16(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019c0:	0007b783          	ld	a5,0(a5)
    800019c4:	0c078a63          	beqz	a5,80001a98 <_ZN9semaphore7semOpenEPPS_j+0xec>
            cur->next=fmem_head->next;
    800019c8:	00004717          	auipc	a4,0x4
    800019cc:	00073703          	ld	a4,0(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019d0:	00073683          	ld	a3,0(a4)
    800019d4:	0006b683          	ld	a3,0(a3)
    800019d8:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    800019dc:	00073703          	ld	a4,0(a4)
    800019e0:	00873603          	ld	a2,8(a4)
    800019e4:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    800019e8:	0107b703          	ld	a4,16(a5)
    800019ec:	03f00813          	li	a6,63
    800019f0:	02e87663          	bgeu	a6,a4,80001a1c <_ZN9semaphore7semOpenEPPS_j+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    800019f4:	fc070713          	addi	a4,a4,-64
    800019f8:	01800813          	li	a6,24
    800019fc:	02e86c63          	bltu	a6,a4,80001a34 <_ZN9semaphore7semOpenEPPS_j+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001a00:	02060263          	beqz	a2,80001a24 <_ZN9semaphore7semOpenEPPS_j+0x78>
    80001a04:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001a08:	0007b703          	ld	a4,0(a5)
    80001a0c:	08070663          	beqz	a4,80001a98 <_ZN9semaphore7semOpenEPPS_j+0xec>
    80001a10:	0087b683          	ld	a3,8(a5)
    80001a14:	00d73423          	sd	a3,8(a4)
                return cur;
    80001a18:	0800006f          	j	80001a98 <_ZN9semaphore7semOpenEPPS_j+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001a1c:	00068793          	mv	a5,a3
    80001a20:	fa5ff06f          	j	800019c4 <_ZN9semaphore7semOpenEPPS_j+0x18>
                else fmem_head = cur->next;
    80001a24:	00004717          	auipc	a4,0x4
    80001a28:	fa473703          	ld	a4,-92(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a2c:	00d73023          	sd	a3,0(a4)
    80001a30:	fd9ff06f          	j	80001a08 <_ZN9semaphore7semOpenEPPS_j+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001a34:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001a38:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001a3c:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001a40:	0087b683          	ld	a3,8(a5)
    80001a44:	06068a63          	beqz	a3,80001ab8 <_ZN9semaphore7semOpenEPPS_j+0x10c>
    80001a48:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001a4c:	0007b683          	ld	a3,0(a5)
    80001a50:	00068463          	beqz	a3,80001a58 <_ZN9semaphore7semOpenEPPS_j+0xac>
    80001a54:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001a58:	0087b603          	ld	a2,8(a5)
    80001a5c:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001a60:	0007b683          	ld	a3,0(a5)
    80001a64:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001a68:	0107b783          	ld	a5,16(a5)
    80001a6c:	fc078793          	addi	a5,a5,-64
    80001a70:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001a74:	0c070693          	addi	a3,a4,192
    80001a78:	00004817          	auipc	a6,0x4
    80001a7c:	f5083803          	ld	a6,-176(a6) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a80:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80001a84:	00073803          	ld	a6,0(a4)
    80001a88:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001a8c:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001a90:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001a94:	00070793          	mv	a5,a4
    *handle=(semaphore*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(semaphore)));
    80001a98:	00f53023          	sd	a5,0(a0)
    (*handle)->val=init;
    80001a9c:	00b7a023          	sw	a1,0(a5)
    if (*handle==nullptr){
    80001aa0:	00053783          	ld	a5,0(a0)
    80001aa4:	02078463          	beqz	a5,80001acc <_ZN9semaphore7semOpenEPPS_j+0x120>
        return 0;
    }else{return 1;}
    80001aa8:	00100513          	li	a0,1
}
    80001aac:	00813403          	ld	s0,8(sp)
    80001ab0:	01010113          	addi	sp,sp,16
    80001ab4:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001ab8:	0c070693          	addi	a3,a4,192
    80001abc:	00004617          	auipc	a2,0x4
    80001ac0:	f0c63603          	ld	a2,-244(a2) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ac4:	00d63023          	sd	a3,0(a2)
    80001ac8:	f85ff06f          	j	80001a4c <_ZN9semaphore7semOpenEPPS_j+0xa0>
        return 0;
    80001acc:	00000513          	li	a0,0
    80001ad0:	fddff06f          	j	80001aac <_ZN9semaphore7semOpenEPPS_j+0x100>

0000000080001ad4 <_ZN9semaphore8semCloseEPPS_>:

int semaphore::semClose(semaphore **semID) {
    80001ad4:	fe010113          	addi	sp,sp,-32
    80001ad8:	00113c23          	sd	ra,24(sp)
    80001adc:	00813823          	sd	s0,16(sp)
    80001ae0:	00913423          	sd	s1,8(sp)
    80001ae4:	02010413          	addi	s0,sp,32
    80001ae8:	00050493          	mv	s1,a0
    while(((*semID)->blocked.isEmpty())==false){
    80001aec:	00000097          	auipc	ra,0x0
    80001af0:	a24080e7          	jalr	-1500(ra) # 80001510 <_ZN5Queue7isEmptyEv>
    80001af4:	00051863          	bnez	a0,80001b04 <_ZN9semaphore8semCloseEPPS_+0x30>
        unblock();
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	e84080e7          	jalr	-380(ra) # 8000197c <_ZN9semaphore7unblockEv>
    while(((*semID)->blocked.isEmpty())==false){
    80001b00:	fedff06f          	j	80001aec <_ZN9semaphore8semCloseEPPS_+0x18>
        //TODO wait treba da vrati gresku? Kako to?
    }
    MemoryAllocation::mem_free(*semID); //TODO mozda moze i samo (*handle)=nullptr
    80001b04:	0004b703          	ld	a4,0(s1)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001b08:	00004797          	auipc	a5,0x4
    80001b0c:	ec07b783          	ld	a5,-320(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b10:	0007b783          	ld	a5,0(a5)
    80001b14:	00078e63          	beqz	a5,80001b30 <_ZN9semaphore8semCloseEPPS_+0x5c>
    80001b18:	02f76063          	bltu	a4,a5,80001b38 <_ZN9semaphore8semCloseEPPS_+0x64>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001b1c:	00078693          	mv	a3,a5
    80001b20:	0007b783          	ld	a5,0(a5)
    80001b24:	00f70c63          	beq	a4,a5,80001b3c <_ZN9semaphore8semCloseEPPS_+0x68>
    80001b28:	fee7eae3          	bltu	a5,a4,80001b1c <_ZN9semaphore8semCloseEPPS_+0x48>
    80001b2c:	0100006f          	j	80001b3c <_ZN9semaphore8semCloseEPPS_+0x68>
            cur=nullptr;
    80001b30:	00078693          	mv	a3,a5
    80001b34:	0080006f          	j	80001b3c <_ZN9semaphore8semCloseEPPS_+0x68>
    80001b38:	00000693          	li	a3,0
                newSeg->next=nullptr;
    80001b3c:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001b40:	04000793          	li	a5,64
    80001b44:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    80001b48:	00d73423          	sd	a3,8(a4)
                if(cur) {
    80001b4c:	06068463          	beqz	a3,80001bb4 <_ZN9semaphore8semCloseEPPS_+0xe0>
                    newSeg->next = cur->next;
    80001b50:	0006b783          	ld	a5,0(a3)
    80001b54:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    80001b58:	00073783          	ld	a5,0(a4)
    80001b5c:	00078463          	beqz	a5,80001b64 <_ZN9semaphore8semCloseEPPS_+0x90>
                    newSeg->next->prev=newSeg;
    80001b60:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    80001b64:	06068263          	beqz	a3,80001bc8 <_ZN9semaphore8semCloseEPPS_+0xf4>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001b68:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    80001b6c:	00070c63          	beqz	a4,80001b84 <_ZN9semaphore8semCloseEPPS_+0xb0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001b70:	00073783          	ld	a5,0(a4)
    80001b74:	00078863          	beqz	a5,80001b84 <_ZN9semaphore8semCloseEPPS_+0xb0>
    80001b78:	01073603          	ld	a2,16(a4)
    80001b7c:	00c705b3          	add	a1,a4,a2
    80001b80:	04b78c63          	beq	a5,a1,80001bd8 <_ZN9semaphore8semCloseEPPS_+0x104>
        if (!curr) return;
    80001b84:	00068c63          	beqz	a3,80001b9c <_ZN9semaphore8semCloseEPPS_+0xc8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001b88:	0006b783          	ld	a5,0(a3)
    80001b8c:	00078863          	beqz	a5,80001b9c <_ZN9semaphore8semCloseEPPS_+0xc8>
    80001b90:	0106b703          	ld	a4,16(a3)
    80001b94:	00e68633          	add	a2,a3,a4
    80001b98:	06c78063          	beq	a5,a2,80001bf8 <_ZN9semaphore8semCloseEPPS_+0x124>
    return 0;
}
    80001b9c:	00000513          	li	a0,0
    80001ba0:	01813083          	ld	ra,24(sp)
    80001ba4:	01013403          	ld	s0,16(sp)
    80001ba8:	00813483          	ld	s1,8(sp)
    80001bac:	02010113          	addi	sp,sp,32
    80001bb0:	00008067          	ret
                    newSeg->next = fmem_head;
    80001bb4:	00004797          	auipc	a5,0x4
    80001bb8:	e147b783          	ld	a5,-492(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001bbc:	0007b783          	ld	a5,0(a5)
    80001bc0:	00f73023          	sd	a5,0(a4)
    80001bc4:	f95ff06f          	j	80001b58 <_ZN9semaphore8semCloseEPPS_+0x84>
                    fmem_head = newSeg;
    80001bc8:	00004797          	auipc	a5,0x4
    80001bcc:	e007b783          	ld	a5,-512(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001bd0:	00e7b023          	sd	a4,0(a5)
    80001bd4:	f99ff06f          	j	80001b6c <_ZN9semaphore8semCloseEPPS_+0x98>
            curr->size += curr->next->size;
    80001bd8:	0107b583          	ld	a1,16(a5)
    80001bdc:	00b60633          	add	a2,a2,a1
    80001be0:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    80001be4:	0007b783          	ld	a5,0(a5)
    80001be8:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001bec:	f8078ce3          	beqz	a5,80001b84 <_ZN9semaphore8semCloseEPPS_+0xb0>
    80001bf0:	00e7b423          	sd	a4,8(a5)
    80001bf4:	f91ff06f          	j	80001b84 <_ZN9semaphore8semCloseEPPS_+0xb0>
            curr->size += curr->next->size;
    80001bf8:	0107b603          	ld	a2,16(a5)
    80001bfc:	00c70733          	add	a4,a4,a2
    80001c00:	00e6b823          	sd	a4,16(a3)
            curr->next = curr->next->next;
    80001c04:	0007b783          	ld	a5,0(a5)
    80001c08:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    80001c0c:	f80788e3          	beqz	a5,80001b9c <_ZN9semaphore8semCloseEPPS_+0xc8>
    80001c10:	00d7b423          	sd	a3,8(a5)
    80001c14:	f89ff06f          	j	80001b9c <_ZN9semaphore8semCloseEPPS_+0xc8>

0000000080001c18 <_ZN9semaphore7semWaitEPPS_>:

int semaphore::semWait(semaphore **semID) {
    80001c18:	fe010113          	addi	sp,sp,-32
    80001c1c:	00113c23          	sd	ra,24(sp)
    80001c20:	00813823          	sd	s0,16(sp)
    80001c24:	00913423          	sd	s1,8(sp)
    80001c28:	02010413          	addi	s0,sp,32
    80001c2c:	00050493          	mv	s1,a0
    if((--((*semID)->val))<0) { (*semID) ->block(); }
    80001c30:	00053703          	ld	a4,0(a0)
    80001c34:	00072783          	lw	a5,0(a4)
    80001c38:	fff7879b          	addiw	a5,a5,-1
    80001c3c:	00f72023          	sw	a5,0(a4)
    80001c40:	02079713          	slli	a4,a5,0x20
    80001c44:	02074263          	bltz	a4,80001c68 <_ZN9semaphore7semWaitEPPS_+0x50>
    if(*semID == nullptr){return -1;}
    80001c48:	0004b783          	ld	a5,0(s1)
    80001c4c:	02078463          	beqz	a5,80001c74 <_ZN9semaphore7semWaitEPPS_+0x5c>
    else{return 0;}
    80001c50:	00000513          	li	a0,0
    return 0;
}
    80001c54:	01813083          	ld	ra,24(sp)
    80001c58:	01013403          	ld	s0,16(sp)
    80001c5c:	00813483          	ld	s1,8(sp)
    80001c60:	02010113          	addi	sp,sp,32
    80001c64:	00008067          	ret
    if((--((*semID)->val))<0) { (*semID) ->block(); }
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	c9c080e7          	jalr	-868(ra) # 80001904 <_ZN9semaphore5blockEv>
    80001c70:	fd9ff06f          	j	80001c48 <_ZN9semaphore7semWaitEPPS_+0x30>
    if(*semID == nullptr){return -1;}
    80001c74:	fff00513          	li	a0,-1
    80001c78:	fddff06f          	j	80001c54 <_ZN9semaphore7semWaitEPPS_+0x3c>

0000000080001c7c <_ZN9semaphore9semSignalEPPS_>:

int semaphore::semSignal(semaphore **semID) {
    if((++((*semID)->val))<=0) { (*semID)->block(); }
    80001c7c:	00053703          	ld	a4,0(a0)
    80001c80:	00072783          	lw	a5,0(a4)
    80001c84:	0017879b          	addiw	a5,a5,1
    80001c88:	0007869b          	sext.w	a3,a5
    80001c8c:	00f72023          	sw	a5,0(a4)
    80001c90:	00d05663          	blez	a3,80001c9c <_ZN9semaphore9semSignalEPPS_+0x20>
    return 0;
}
    80001c94:	00000513          	li	a0,0
    80001c98:	00008067          	ret
int semaphore::semSignal(semaphore **semID) {
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00113423          	sd	ra,8(sp)
    80001ca4:	00813023          	sd	s0,0(sp)
    80001ca8:	01010413          	addi	s0,sp,16
    if((++((*semID)->val))<=0) { (*semID)->block(); }
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	c58080e7          	jalr	-936(ra) # 80001904 <_ZN9semaphore5blockEv>
}
    80001cb4:	00000513          	li	a0,0
    80001cb8:	00813083          	ld	ra,8(sp)
    80001cbc:	00013403          	ld	s0,0(sp)
    80001cc0:	01010113          	addi	sp,sp,16
    80001cc4:	00008067          	ret

0000000080001cc8 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001cc8:	ff010113          	addi	sp,sp,-16
    80001ccc:	00813423          	sd	s0,8(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001cd4:	00813403          	ld	s0,8(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00813423          	sd	s0,8(sp)
    80001ce8:	01010413          	addi	s0,sp,16
    80001cec:	00100793          	li	a5,1
    80001cf0:	00f50863          	beq	a0,a5,80001d00 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001cf4:	00813403          	ld	s0,8(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret
    80001d00:	000107b7          	lui	a5,0x10
    80001d04:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001d08:	fef596e3          	bne	a1,a5,80001cf4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    LinkedList() : head(0), tail(0) {}
    80001d0c:	00004797          	auipc	a5,0x4
    80001d10:	d4478793          	addi	a5,a5,-700 # 80005a50 <_ZN9Scheduler19readyCoroutineQueueE>
    80001d14:	0007b023          	sd	zero,0(a5)
    80001d18:	0007b423          	sd	zero,8(a5)
    80001d1c:	fd9ff06f          	j	80001cf4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001d20 <_ZN9Scheduler3getEv>:
{
    80001d20:	fe010113          	addi	sp,sp,-32
    80001d24:	00113c23          	sd	ra,24(sp)
    80001d28:	00813823          	sd	s0,16(sp)
    80001d2c:	00913423          	sd	s1,8(sp)
    80001d30:	02010413          	addi	s0,sp,32
        if (!head) {return 0;}
    80001d34:	00004517          	auipc	a0,0x4
    80001d38:	d1c53503          	ld	a0,-740(a0) # 80005a50 <_ZN9Scheduler19readyCoroutineQueueE>
    80001d3c:	04050263          	beqz	a0,80001d80 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001d40:	00853783          	ld	a5,8(a0)
    80001d44:	00004717          	auipc	a4,0x4
    80001d48:	d0f73623          	sd	a5,-756(a4) # 80005a50 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80001d4c:	02078463          	beqz	a5,80001d74 <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    80001d50:	00053483          	ld	s1,0(a0)
        delete elem;
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	b64080e7          	jalr	-1180(ra) # 800028b8 <_ZdlPv>
}
    80001d5c:	00048513          	mv	a0,s1
    80001d60:	01813083          	ld	ra,24(sp)
    80001d64:	01013403          	ld	s0,16(sp)
    80001d68:	00813483          	ld	s1,8(sp)
    80001d6c:	02010113          	addi	sp,sp,32
    80001d70:	00008067          	ret
            tail = 0;
    80001d74:	00004797          	auipc	a5,0x4
    80001d78:	ce07b223          	sd	zero,-796(a5) # 80005a58 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001d7c:	fd5ff06f          	j	80001d50 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80001d80:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80001d84:	fd9ff06f          	j	80001d5c <_ZN9Scheduler3getEv+0x3c>

0000000080001d88 <_ZN9Scheduler3putEP3TCB>:
{
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00813423          	sd	s0,8(sp)
    80001d90:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001d94:	00004797          	auipc	a5,0x4
    80001d98:	c347b783          	ld	a5,-972(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d9c:	0007b783          	ld	a5,0(a5)
    80001da0:	0c078a63          	beqz	a5,80001e74 <_ZN9Scheduler3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80001da4:	00004717          	auipc	a4,0x4
    80001da8:	c2473703          	ld	a4,-988(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001dac:	00073683          	ld	a3,0(a4)
    80001db0:	0006b683          	ld	a3,0(a3)
    80001db4:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001db8:	00073703          	ld	a4,0(a4)
    80001dbc:	00873603          	ld	a2,8(a4)
    80001dc0:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001dc4:	0107b703          	ld	a4,16(a5)
    80001dc8:	03f00593          	li	a1,63
    80001dcc:	02e5f663          	bgeu	a1,a4,80001df8 <_ZN9Scheduler3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001dd0:	fc070713          	addi	a4,a4,-64
    80001dd4:	01800593          	li	a1,24
    80001dd8:	02e5ec63          	bltu	a1,a4,80001e10 <_ZN9Scheduler3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001ddc:	02060263          	beqz	a2,80001e00 <_ZN9Scheduler3putEP3TCB+0x78>
    80001de0:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001de4:	0007b703          	ld	a4,0(a5)
    80001de8:	08070663          	beqz	a4,80001e74 <_ZN9Scheduler3putEP3TCB+0xec>
    80001dec:	0087b683          	ld	a3,8(a5)
    80001df0:	00d73423          	sd	a3,8(a4)
                return cur;
    80001df4:	0800006f          	j	80001e74 <_ZN9Scheduler3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001df8:	00068793          	mv	a5,a3
    80001dfc:	fa5ff06f          	j	80001da0 <_ZN9Scheduler3putEP3TCB+0x18>
                else fmem_head = cur->next;
    80001e00:	00004717          	auipc	a4,0x4
    80001e04:	bc873703          	ld	a4,-1080(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e08:	00d73023          	sd	a3,0(a4)
    80001e0c:	fd9ff06f          	j	80001de4 <_ZN9Scheduler3putEP3TCB+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001e10:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001e14:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001e18:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001e1c:	0087b683          	ld	a3,8(a5)
    80001e20:	08068063          	beqz	a3,80001ea0 <_ZN9Scheduler3putEP3TCB+0x118>
    80001e24:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001e28:	0007b683          	ld	a3,0(a5)
    80001e2c:	00068463          	beqz	a3,80001e34 <_ZN9Scheduler3putEP3TCB+0xac>
    80001e30:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001e34:	0087b603          	ld	a2,8(a5)
    80001e38:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001e3c:	0007b683          	ld	a3,0(a5)
    80001e40:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001e44:	0107b783          	ld	a5,16(a5)
    80001e48:	fc078793          	addi	a5,a5,-64
    80001e4c:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001e50:	0c070693          	addi	a3,a4,192
    80001e54:	00004597          	auipc	a1,0x4
    80001e58:	b745b583          	ld	a1,-1164(a1) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e5c:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001e60:	00073583          	ld	a1,0(a4)
    80001e64:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001e68:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001e6c:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001e70:	00070793          	mv	a5,a4
        elem->data=data;
    80001e74:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80001e78:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001e7c:	00004717          	auipc	a4,0x4
    80001e80:	bdc73703          	ld	a4,-1060(a4) # 80005a58 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001e84:	02070863          	beqz	a4,80001eb4 <_ZN9Scheduler3putEP3TCB+0x12c>
            tail->next=elem;
    80001e88:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001e8c:	00004717          	auipc	a4,0x4
    80001e90:	bcf73623          	sd	a5,-1076(a4) # 80005a58 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001e94:	00813403          	ld	s0,8(sp)
    80001e98:	01010113          	addi	sp,sp,16
    80001e9c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001ea0:	0c070693          	addi	a3,a4,192
    80001ea4:	00004617          	auipc	a2,0x4
    80001ea8:	b2463603          	ld	a2,-1244(a2) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001eac:	00d63023          	sd	a3,0(a2)
    80001eb0:	f79ff06f          	j	80001e28 <_ZN9Scheduler3putEP3TCB+0xa0>
            head=tail=elem;
    80001eb4:	00004717          	auipc	a4,0x4
    80001eb8:	b9c70713          	addi	a4,a4,-1124 # 80005a50 <_ZN9Scheduler19readyCoroutineQueueE>
    80001ebc:	00f73423          	sd	a5,8(a4)
    80001ec0:	00f73023          	sd	a5,0(a4)
    80001ec4:	fd1ff06f          	j	80001e94 <_ZN9Scheduler3putEP3TCB+0x10c>

0000000080001ec8 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001ec8:	ff010113          	addi	sp,sp,-16
    80001ecc:	00113423          	sd	ra,8(sp)
    80001ed0:	00813023          	sd	s0,0(sp)
    80001ed4:	01010413          	addi	s0,sp,16
    80001ed8:	000105b7          	lui	a1,0x10
    80001edc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ee0:	00100513          	li	a0,1
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	dfc080e7          	jalr	-516(ra) # 80001ce0 <_Z41__static_initialization_and_destruction_0ii>
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret

0000000080001efc <_Z8agentfunPv>:
    //semaphore::semClose(matches);

    return 0;
}

void agentfun(void *args){
    80001efc:	fe010113          	addi	sp,sp,-32
    80001f00:	00113c23          	sd	ra,24(sp)
    80001f04:	00813823          	sd	s0,16(sp)
    80001f08:	00913423          	sd	s1,8(sp)
    80001f0c:	02010413          	addi	s0,sp,32
    int i=0;
    80001f10:	00000493          	li	s1,0
    80001f14:	0480006f          	j	80001f5c <_Z8agentfunPv+0x60>
            case 0:
                printString("Na stolu su: duvan i papir\n");
                semaphore::semSignal(&matches);
                break;
            case 1:
                printString("Na stolu su: duvan i sibice\n");
    80001f18:	00003517          	auipc	a0,0x3
    80001f1c:	12850513          	addi	a0,a0,296 # 80005040 <CONSOLE_STATUS+0x30>
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	c30080e7          	jalr	-976(ra) # 80002b50 <_Z11printStringPKc>
                semaphore::semSignal(&paper);
    80001f28:	00004517          	auipc	a0,0x4
    80001f2c:	b4850513          	addi	a0,a0,-1208 # 80005a70 <paper>
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	d4c080e7          	jalr	-692(ra) # 80001c7c <_ZN9semaphore9semSignalEPPS_>
            case 2:
                printString("Na stolu su: sibice i papir\n");
                semaphore::semSignal(&tabacco);
                break;
        }
        i++;
    80001f38:	0014849b          	addiw	s1,s1,1
        semaphore::semSignal(&mutex);
    80001f3c:	00004517          	auipc	a0,0x4
    80001f40:	b2450513          	addi	a0,a0,-1244 # 80005a60 <mutex>
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	d38080e7          	jalr	-712(ra) # 80001c7c <_ZN9semaphore9semSignalEPPS_>
        semaphore::semWait(&agent);
    80001f4c:	00004517          	auipc	a0,0x4
    80001f50:	b3450513          	addi	a0,a0,-1228 # 80005a80 <agent>
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	cc4080e7          	jalr	-828(ra) # 80001c18 <_ZN9semaphore7semWaitEPPS_>
        semaphore::semWait(&mutex);
    80001f5c:	00004517          	auipc	a0,0x4
    80001f60:	b0450513          	addi	a0,a0,-1276 # 80005a60 <mutex>
    80001f64:	00000097          	auipc	ra,0x0
    80001f68:	cb4080e7          	jalr	-844(ra) # 80001c18 <_ZN9semaphore7semWaitEPPS_>
        switch (i%3) {
    80001f6c:	00300793          	li	a5,3
    80001f70:	02f4e7bb          	remw	a5,s1,a5
    80001f74:	00100713          	li	a4,1
    80001f78:	fae780e3          	beq	a5,a4,80001f18 <_Z8agentfunPv+0x1c>
    80001f7c:	00200713          	li	a4,2
    80001f80:	02e78663          	beq	a5,a4,80001fac <_Z8agentfunPv+0xb0>
    80001f84:	fa079ae3          	bnez	a5,80001f38 <_Z8agentfunPv+0x3c>
                printString("Na stolu su: duvan i papir\n");
    80001f88:	00003517          	auipc	a0,0x3
    80001f8c:	09850513          	addi	a0,a0,152 # 80005020 <CONSOLE_STATUS+0x10>
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	bc0080e7          	jalr	-1088(ra) # 80002b50 <_Z11printStringPKc>
                semaphore::semSignal(&matches);
    80001f98:	00004517          	auipc	a0,0x4
    80001f9c:	ad050513          	addi	a0,a0,-1328 # 80005a68 <matches>
    80001fa0:	00000097          	auipc	ra,0x0
    80001fa4:	cdc080e7          	jalr	-804(ra) # 80001c7c <_ZN9semaphore9semSignalEPPS_>
                break;
    80001fa8:	f91ff06f          	j	80001f38 <_Z8agentfunPv+0x3c>
                printString("Na stolu su: sibice i papir\n");
    80001fac:	00003517          	auipc	a0,0x3
    80001fb0:	0b450513          	addi	a0,a0,180 # 80005060 <CONSOLE_STATUS+0x50>
    80001fb4:	00001097          	auipc	ra,0x1
    80001fb8:	b9c080e7          	jalr	-1124(ra) # 80002b50 <_Z11printStringPKc>
                semaphore::semSignal(&tabacco);
    80001fbc:	00004517          	auipc	a0,0x4
    80001fc0:	abc50513          	addi	a0,a0,-1348 # 80005a78 <tabacco>
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	cb8080e7          	jalr	-840(ra) # 80001c7c <_ZN9semaphore9semSignalEPPS_>
                break;
    80001fcc:	f6dff06f          	j	80001f38 <_Z8agentfunPv+0x3c>

0000000080001fd0 <_Z7smoker1Pv>:
    }
}

void smoker1(void *arg){
    80001fd0:	fe010113          	addi	sp,sp,-32
    80001fd4:	00113c23          	sd	ra,24(sp)
    80001fd8:	00813823          	sd	s0,16(sp)
    80001fdc:	00913423          	sd	s1,8(sp)
    80001fe0:	02010413          	addi	s0,sp,32
    while (true){
        semaphore::semWait(&paper);
    80001fe4:	00004497          	auipc	s1,0x4
    80001fe8:	a7c48493          	addi	s1,s1,-1412 # 80005a60 <mutex>
    80001fec:	00004517          	auipc	a0,0x4
    80001ff0:	a8450513          	addi	a0,a0,-1404 # 80005a70 <paper>
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	c24080e7          	jalr	-988(ra) # 80001c18 <_ZN9semaphore7semWaitEPPS_>
        semaphore::semWait(&mutex);
    80001ffc:	00048513          	mv	a0,s1
    80002000:	00000097          	auipc	ra,0x0
    80002004:	c18080e7          	jalr	-1000(ra) # 80001c18 <_ZN9semaphore7semWaitEPPS_>

        printString("Pera ima papir i pusi\n");
    80002008:	00003517          	auipc	a0,0x3
    8000200c:	07850513          	addi	a0,a0,120 # 80005080 <CONSOLE_STATUS+0x70>
    80002010:	00001097          	auipc	ra,0x1
    80002014:	b40080e7          	jalr	-1216(ra) # 80002b50 <_Z11printStringPKc>
        semaphore::semSignal(&agent);
    80002018:	00004517          	auipc	a0,0x4
    8000201c:	a6850513          	addi	a0,a0,-1432 # 80005a80 <agent>
    80002020:	00000097          	auipc	ra,0x0
    80002024:	c5c080e7          	jalr	-932(ra) # 80001c7c <_ZN9semaphore9semSignalEPPS_>
        semaphore::semSignal(&mutex);
    80002028:	00048513          	mv	a0,s1
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	c50080e7          	jalr	-944(ra) # 80001c7c <_ZN9semaphore9semSignalEPPS_>
    while (true){
    80002034:	fb1ff06f          	j	80001fe4 <_Z7smoker1Pv+0x14>

0000000080002038 <_Z7smoker2Pv>:
    }
}

void smoker2(void *arg){
    80002038:	fe010113          	addi	sp,sp,-32
    8000203c:	00113c23          	sd	ra,24(sp)
    80002040:	00813823          	sd	s0,16(sp)
    80002044:	00913423          	sd	s1,8(sp)
    80002048:	02010413          	addi	s0,sp,32
    while (true){
        semaphore::semWait(&matches);
    8000204c:	00004497          	auipc	s1,0x4
    80002050:	a1448493          	addi	s1,s1,-1516 # 80005a60 <mutex>
    80002054:	00004517          	auipc	a0,0x4
    80002058:	a1450513          	addi	a0,a0,-1516 # 80005a68 <matches>
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	bbc080e7          	jalr	-1092(ra) # 80001c18 <_ZN9semaphore7semWaitEPPS_>
        semaphore::semWait(&mutex);
    80002064:	00048513          	mv	a0,s1
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	bb0080e7          	jalr	-1104(ra) # 80001c18 <_ZN9semaphore7semWaitEPPS_>

        printString("Mika ima sibice i pusi\n");
    80002070:	00003517          	auipc	a0,0x3
    80002074:	02850513          	addi	a0,a0,40 # 80005098 <CONSOLE_STATUS+0x88>
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	ad8080e7          	jalr	-1320(ra) # 80002b50 <_Z11printStringPKc>
        semaphore::semSignal(&agent);
    80002080:	00004517          	auipc	a0,0x4
    80002084:	a0050513          	addi	a0,a0,-1536 # 80005a80 <agent>
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	bf4080e7          	jalr	-1036(ra) # 80001c7c <_ZN9semaphore9semSignalEPPS_>
        semaphore::semSignal(&mutex);
    80002090:	00048513          	mv	a0,s1
    80002094:	00000097          	auipc	ra,0x0
    80002098:	be8080e7          	jalr	-1048(ra) # 80001c7c <_ZN9semaphore9semSignalEPPS_>
    while (true){
    8000209c:	fb1ff06f          	j	8000204c <_Z7smoker2Pv+0x14>

00000000800020a0 <_Z7smoker3Pv>:
    }
}

void smoker3(void *arg){
    800020a0:	fe010113          	addi	sp,sp,-32
    800020a4:	00113c23          	sd	ra,24(sp)
    800020a8:	00813823          	sd	s0,16(sp)
    800020ac:	00913423          	sd	s1,8(sp)
    800020b0:	02010413          	addi	s0,sp,32
    while (true){
        semaphore::semWait(&tabacco);
    800020b4:	00004497          	auipc	s1,0x4
    800020b8:	9ac48493          	addi	s1,s1,-1620 # 80005a60 <mutex>
    800020bc:	00004517          	auipc	a0,0x4
    800020c0:	9bc50513          	addi	a0,a0,-1604 # 80005a78 <tabacco>
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	b54080e7          	jalr	-1196(ra) # 80001c18 <_ZN9semaphore7semWaitEPPS_>
        semaphore::semWait(&mutex);
    800020cc:	00048513          	mv	a0,s1
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	b48080e7          	jalr	-1208(ra) # 80001c18 <_ZN9semaphore7semWaitEPPS_>
        printString("Zika ima duvan i pusi\n");
    800020d8:	00003517          	auipc	a0,0x3
    800020dc:	fd850513          	addi	a0,a0,-40 # 800050b0 <CONSOLE_STATUS+0xa0>
    800020e0:	00001097          	auipc	ra,0x1
    800020e4:	a70080e7          	jalr	-1424(ra) # 80002b50 <_Z11printStringPKc>
        semaphore::semSignal(&agent);
    800020e8:	00004517          	auipc	a0,0x4
    800020ec:	99850513          	addi	a0,a0,-1640 # 80005a80 <agent>
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	b8c080e7          	jalr	-1140(ra) # 80001c7c <_ZN9semaphore9semSignalEPPS_>
        semaphore::semSignal(&mutex);
    800020f8:	00048513          	mv	a0,s1
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	b80080e7          	jalr	-1152(ra) # 80001c7c <_ZN9semaphore9semSignalEPPS_>
    while (true){
    80002104:	fb1ff06f          	j	800020b4 <_Z7smoker3Pv+0x14>

0000000080002108 <main>:
int main(){
    80002108:	fb010113          	addi	sp,sp,-80
    8000210c:	04113423          	sd	ra,72(sp)
    80002110:	04813023          	sd	s0,64(sp)
    80002114:	02913c23          	sd	s1,56(sp)
    80002118:	05010413          	addi	s0,sp,80
        if (!instance) {
    8000211c:	00004797          	auipc	a5,0x4
    80002120:	8a47b783          	ld	a5,-1884(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002124:	0007b783          	ld	a5,0(a5)
    80002128:	10078863          	beqz	a5,80002238 <main+0x130>
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    8000212c:	00004797          	auipc	a5,0x4
    80002130:	88c7b783          	ld	a5,-1908(a5) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    80002134:	10579073          	csrw	stvec,a5
    thread_create( &thread, nullptr, nullptr);
    80002138:	00000613          	li	a2,0
    8000213c:	00000593          	li	a1,0
    80002140:	fd840513          	addi	a0,s0,-40
    80002144:	fffff097          	auipc	ra,0xfffff
    80002148:	15c080e7          	jalr	348(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running=thread;
    8000214c:	00004797          	auipc	a5,0x4
    80002150:	8847b783          	ld	a5,-1916(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002154:	fd843703          	ld	a4,-40(s0)
    80002158:	00e7b023          	sd	a4,0(a5)
    semaphore::semOpen(&mutex,1);
    8000215c:	00100593          	li	a1,1
    80002160:	00004517          	auipc	a0,0x4
    80002164:	90050513          	addi	a0,a0,-1792 # 80005a60 <mutex>
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	844080e7          	jalr	-1980(ra) # 800019ac <_ZN9semaphore7semOpenEPPS_j>
    semaphore::semOpen(&paper,0);
    80002170:	00000593          	li	a1,0
    80002174:	00004517          	auipc	a0,0x4
    80002178:	8fc50513          	addi	a0,a0,-1796 # 80005a70 <paper>
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	830080e7          	jalr	-2000(ra) # 800019ac <_ZN9semaphore7semOpenEPPS_j>
    semaphore::semOpen(&matches,0);
    80002184:	00000593          	li	a1,0
    80002188:	00004517          	auipc	a0,0x4
    8000218c:	8e050513          	addi	a0,a0,-1824 # 80005a68 <matches>
    80002190:	00000097          	auipc	ra,0x0
    80002194:	81c080e7          	jalr	-2020(ra) # 800019ac <_ZN9semaphore7semOpenEPPS_j>
    semaphore::semOpen(&agent,0);
    80002198:	00000593          	li	a1,0
    8000219c:	00004517          	auipc	a0,0x4
    800021a0:	8e450513          	addi	a0,a0,-1820 # 80005a80 <agent>
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	808080e7          	jalr	-2040(ra) # 800019ac <_ZN9semaphore7semOpenEPPS_j>
    semaphore::semOpen(&tabacco,0);
    800021ac:	00000593          	li	a1,0
    800021b0:	00004517          	auipc	a0,0x4
    800021b4:	8c850513          	addi	a0,a0,-1848 # 80005a78 <tabacco>
    800021b8:	fffff097          	auipc	ra,0xfffff
    800021bc:	7f4080e7          	jalr	2036(ra) # 800019ac <_ZN9semaphore7semOpenEPPS_j>
    TCB* t= nullptr;
    800021c0:	fc043823          	sd	zero,-48(s0)
    TCB* t1= nullptr;
    800021c4:	fc043423          	sd	zero,-56(s0)
    TCB* t2= nullptr;
    800021c8:	fc043023          	sd	zero,-64(s0)
    TCB* t3= nullptr;
    800021cc:	fa043c23          	sd	zero,-72(s0)
    thread_create(&t, agentfun, nullptr);
    800021d0:	00000613          	li	a2,0
    800021d4:	00000597          	auipc	a1,0x0
    800021d8:	d2858593          	addi	a1,a1,-728 # 80001efc <_Z8agentfunPv>
    800021dc:	fd040513          	addi	a0,s0,-48
    800021e0:	fffff097          	auipc	ra,0xfffff
    800021e4:	0c0080e7          	jalr	192(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t1, smoker1, nullptr);
    800021e8:	00000613          	li	a2,0
    800021ec:	00000597          	auipc	a1,0x0
    800021f0:	de458593          	addi	a1,a1,-540 # 80001fd0 <_Z7smoker1Pv>
    800021f4:	fc840513          	addi	a0,s0,-56
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	0a8080e7          	jalr	168(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t2, smoker2, nullptr);
    80002200:	00000613          	li	a2,0
    80002204:	00000597          	auipc	a1,0x0
    80002208:	e3458593          	addi	a1,a1,-460 # 80002038 <_Z7smoker2Pv>
    8000220c:	fc040513          	addi	a0,s0,-64
    80002210:	fffff097          	auipc	ra,0xfffff
    80002214:	090080e7          	jalr	144(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t3, smoker3, nullptr);
    80002218:	00000613          	li	a2,0
    8000221c:	00000597          	auipc	a1,0x0
    80002220:	e8458593          	addi	a1,a1,-380 # 800020a0 <_Z7smoker3Pv>
    80002224:	fb840513          	addi	a0,s0,-72
    80002228:	fffff097          	auipc	ra,0xfffff
    8000222c:	078080e7          	jalr	120(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < 31; ++i) {
    80002230:	00000493          	li	s1,0
    80002234:	04c0006f          	j	80002280 <main+0x178>
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80002238:	00003797          	auipc	a5,0x3
    8000223c:	7707b783          	ld	a5,1904(a5) # 800059a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002240:	0007b783          	ld	a5,0(a5)
    80002244:	00003697          	auipc	a3,0x3
    80002248:	7846b683          	ld	a3,1924(a3) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000224c:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80002250:	00003717          	auipc	a4,0x3
    80002254:	78873703          	ld	a4,1928(a4) # 800059d8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002258:	00073703          	ld	a4,0(a4)
    8000225c:	40f70733          	sub	a4,a4,a5
    80002260:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    80002264:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80002268:	0006b783          	ld	a5,0(a3)
    8000226c:	0007b423          	sd	zero,8(a5)
            return instance;
    80002270:	ebdff06f          	j	8000212c <main+0x24>
        thread_dispatch();
    80002274:	fffff097          	auipc	ra,0xfffff
    80002278:	090080e7          	jalr	144(ra) # 80001304 <_Z15thread_dispatchv>
    for (int i = 0; i < 31; ++i) {
    8000227c:	0014849b          	addiw	s1,s1,1
    80002280:	01e00793          	li	a5,30
    80002284:	fe97d8e3          	bge	a5,s1,80002274 <main+0x16c>
}
    80002288:	00000513          	li	a0,0
    8000228c:	04813083          	ld	ra,72(sp)
    80002290:	04013403          	ld	s0,64(sp)
    80002294:	03813483          	ld	s1,56(sp)
    80002298:	05010113          	addi	sp,sp,80
    8000229c:	00008067          	ret

00000000800022a0 <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    800022a0:	ff010113          	addi	sp,sp,-16
    800022a4:	00813423          	sd	s0,8(sp)
    800022a8:	01010413          	addi	s0,sp,16
    return finished;
}
    800022ac:	02054503          	lbu	a0,32(a0)
    800022b0:	00813403          	ld	s0,8(sp)
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00008067          	ret

00000000800022bc <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    800022bc:	ff010113          	addi	sp,sp,-16
    800022c0:	00813423          	sd	s0,8(sp)
    800022c4:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    800022c8:	02b50023          	sb	a1,32(a0)
}
    800022cc:	00813403          	ld	s0,8(sp)
    800022d0:	01010113          	addi	sp,sp,16
    800022d4:	00008067          	ret

00000000800022d8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments) {
    800022d8:	fe010113          	addi	sp,sp,-32
    800022dc:	00113c23          	sd	ra,24(sp)
    800022e0:	00813823          	sd	s0,16(sp)
    800022e4:	00913423          	sd	s1,8(sp)
    800022e8:	02010413          	addi	s0,sp,32
    800022ec:	00058493          	mv	s1,a1
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800022f0:	00003797          	auipc	a5,0x3
    800022f4:	6d87b783          	ld	a5,1752(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022f8:	0007b783          	ld	a5,0(a5)
    800022fc:	0c078a63          	beqz	a5,800023d0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
            cur->next=fmem_head->next;
    80002300:	00003717          	auipc	a4,0x3
    80002304:	6c873703          	ld	a4,1736(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002308:	00073683          	ld	a3,0(a4)
    8000230c:	0006b683          	ld	a3,0(a3)
    80002310:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80002314:	00073703          	ld	a4,0(a4)
    80002318:	00873583          	ld	a1,8(a4)
    8000231c:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80002320:	0107b703          	ld	a4,16(a5)
    80002324:	07f00813          	li	a6,127
    80002328:	02e87663          	bgeu	a6,a4,80002354 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    8000232c:	f8070713          	addi	a4,a4,-128
    80002330:	01800813          	li	a6,24
    80002334:	02e86c63          	bltu	a6,a4,8000236c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002338:	02058263          	beqz	a1,8000235c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x84>
    8000233c:	00d5b023          	sd	a3,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    80002340:	0007b703          	ld	a4,0(a5)
    80002344:	08070663          	beqz	a4,800023d0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
    80002348:	0087b683          	ld	a3,8(a5)
    8000234c:	00d73423          	sd	a3,8(a4)
                return cur;
    80002350:	0800006f          	j	800023d0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002354:	00068793          	mv	a5,a3
    80002358:	fa5ff06f          	j	800022fc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24>
                else fmem_head = cur->next;
    8000235c:	00003717          	auipc	a4,0x3
    80002360:	66c73703          	ld	a4,1644(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002364:	00d73023          	sd	a3,0(a4)
    80002368:	fd9ff06f          	j	80002340 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    8000236c:	08078713          	addi	a4,a5,128
                newfrgm->prev=nullptr;
    80002370:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002374:	0807b023          	sd	zero,128(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002378:	0087b683          	ld	a3,8(a5)
    8000237c:	0c068c63          	beqz	a3,80002454 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x17c>
    80002380:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002384:	0007b683          	ld	a3,0(a5)
    80002388:	00068463          	beqz	a3,80002390 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xb8>
    8000238c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002390:	0087b583          	ld	a1,8(a5)
    80002394:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    80002398:	0007b683          	ld	a3,0(a5)
    8000239c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800023a0:	0107b783          	ld	a5,16(a5)
    800023a4:	f8078793          	addi	a5,a5,-128
    800023a8:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800023ac:	0c070693          	addi	a3,a4,192
    800023b0:	00003817          	auipc	a6,0x3
    800023b4:	61883803          	ld	a6,1560(a6) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023b8:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    800023bc:	00073803          	ld	a6,0(a4)
    800023c0:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    800023c4:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    800023c8:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800023cc:	00070793          	mv	a5,a4
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    800023d0:	00f4b023          	sd	a5,0(s1)
    (*handle)->body=body;
    800023d4:	00a7b023          	sd	a0,0(a5)
    (*handle)->arguments=arguments;
    800023d8:	0004b783          	ld	a5,0(s1)
    800023dc:	02c7b423          	sd	a2,40(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    800023e0:	12050663          	beqz	a0,8000250c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x234>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800023e4:	00003797          	auipc	a5,0x3
    800023e8:	5e47b783          	ld	a5,1508(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023ec:	0007b783          	ld	a5,0(a5)
    800023f0:	12078063          	beqz	a5,80002510 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
            cur->next=fmem_head->next;
    800023f4:	00003717          	auipc	a4,0x3
    800023f8:	5d473703          	ld	a4,1492(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023fc:	00073683          	ld	a3,0(a4)
    80002400:	0006b603          	ld	a2,0(a3)
    80002404:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    80002408:	00073703          	ld	a4,0(a4)
    8000240c:	00873583          	ld	a1,8(a4)
    80002410:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80002414:	0107b703          	ld	a4,16(a5)
    80002418:	000016b7          	lui	a3,0x1
    8000241c:	03f68693          	addi	a3,a3,63 # 103f <_entry-0x7fffefc1>
    80002420:	04e6f463          	bgeu	a3,a4,80002468 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x190>
            if (cur->size-size<=sizeof(FreeMem)){
    80002424:	fffff6b7          	lui	a3,0xfffff
    80002428:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff82c0>
    8000242c:	00d70733          	add	a4,a4,a3
    80002430:	01800693          	li	a3,24
    80002434:	04e6e663          	bltu	a3,a4,80002480 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1a8>
                if (cur->prev) cur->prev->next = cur->next;
    80002438:	02058c63          	beqz	a1,80002470 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x198>
    8000243c:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    80002440:	0007b703          	ld	a4,0(a5)
    80002444:	0c070663          	beqz	a4,80002510 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
    80002448:	0087b683          	ld	a3,8(a5)
    8000244c:	00d73423          	sd	a3,8(a4)
                return cur;
    80002450:	0c00006f          	j	80002510 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002454:	0c070693          	addi	a3,a4,192
    80002458:	00003597          	auipc	a1,0x3
    8000245c:	5705b583          	ld	a1,1392(a1) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002460:	00d5b023          	sd	a3,0(a1)
    80002464:	f21ff06f          	j	80002384 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xac>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002468:	00060793          	mv	a5,a2
    8000246c:	f85ff06f          	j	800023f0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x118>
                else fmem_head = cur->next;
    80002470:	00003717          	auipc	a4,0x3
    80002474:	55873703          	ld	a4,1368(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002478:	00c73023          	sd	a2,0(a4)
    8000247c:	fc5ff06f          	j	80002440 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x168>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002480:	00001737          	lui	a4,0x1
    80002484:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    80002488:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    8000248c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002490:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002494:	0087b683          	ld	a3,8(a5)
    80002498:	06068063          	beqz	a3,800024f8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x220>
    8000249c:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800024a0:	0007b683          	ld	a3,0(a5)
    800024a4:	00068463          	beqz	a3,800024ac <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1d4>
    800024a8:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800024ac:	0087b603          	ld	a2,8(a5)
    800024b0:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800024b4:	0007b683          	ld	a3,0(a5)
    800024b8:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800024bc:	0107b783          	ld	a5,16(a5)
    800024c0:	fffff6b7          	lui	a3,0xfffff
    800024c4:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff82c0>
    800024c8:	00d787b3          	add	a5,a5,a3
    800024cc:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800024d0:	0c070693          	addi	a3,a4,192
    800024d4:	00003597          	auipc	a1,0x3
    800024d8:	4f45b583          	ld	a1,1268(a1) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024dc:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800024e0:	00073583          	ld	a1,0(a4)
    800024e4:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    800024e8:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800024ec:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800024f0:	00070793          	mv	a5,a4
    800024f4:	01c0006f          	j	80002510 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800024f8:	0c070693          	addi	a3,a4,192
    800024fc:	00003617          	auipc	a2,0x3
    80002500:	4cc63603          	ld	a2,1228(a2) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002504:	00d63023          	sd	a3,0(a2)
    80002508:	f99ff06f          	j	800024a0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1c8>
    8000250c:	00000793          	li	a5,0
    80002510:	0004b703          	ld	a4,0(s1)
    80002514:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80002518:	06050263          	beqz	a0,8000257c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2a4>
    8000251c:	00000717          	auipc	a4,0x0
    80002520:	09c70713          	addi	a4,a4,156 # 800025b8 <_ZN3TCB13threadWrapperEv>
    80002524:	0004b783          	ld	a5,0(s1)
    80002528:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    8000252c:	0004b703          	ld	a4,0(s1)
    80002530:	00873783          	ld	a5,8(a4)
    80002534:	04078863          	beqz	a5,80002584 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2ac>
    80002538:	000086b7          	lui	a3,0x8
    8000253c:	00d787b3          	add	a5,a5,a3
    80002540:	00f73c23          	sd	a5,24(a4)
    (*handle)->finished=false;
    80002544:	0004b783          	ld	a5,0(s1)
    80002548:	02078023          	sb	zero,32(a5)
    if (body != nullptr) { Scheduler::put(*handle); }
    8000254c:	00050863          	beqz	a0,8000255c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x284>
    80002550:	0004b503          	ld	a0,0(s1)
    80002554:	00000097          	auipc	ra,0x0
    80002558:	834080e7          	jalr	-1996(ra) # 80001d88 <_ZN9Scheduler3putEP3TCB>
    if(*handle==nullptr){
    8000255c:	0004b783          	ld	a5,0(s1)
    80002560:	02078663          	beqz	a5,8000258c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2b4>
        return -1;
    }else{return 0;}
    80002564:	00000513          	li	a0,0
}
    80002568:	01813083          	ld	ra,24(sp)
    8000256c:	01013403          	ld	s0,16(sp)
    80002570:	00813483          	ld	s1,8(sp)
    80002574:	02010113          	addi	sp,sp,32
    80002578:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    8000257c:	00000713          	li	a4,0
    80002580:	fa5ff06f          	j	80002524 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24c>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80002584:	00000793          	li	a5,0
    80002588:	fb9ff06f          	j	80002540 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x268>
        return -1;
    8000258c:	fff00513          	li	a0,-1
    80002590:	fd9ff06f          	j	80002568 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x290>

0000000080002594 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80002594:	ff010113          	addi	sp,sp,-16
    80002598:	00813423          	sd	s0,8(sp)
    8000259c:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    800025a0:	01300793          	li	a5,19
    800025a4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800025a8:	00000073          	ecall

};
    800025ac:	00813403          	ld	s0,8(sp)
    800025b0:	01010113          	addi	sp,sp,16
    800025b4:	00008067          	ret

00000000800025b8 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    800025b8:	fe010113          	addi	sp,sp,-32
    800025bc:	00113c23          	sd	ra,24(sp)
    800025c0:	00813823          	sd	s0,16(sp)
    800025c4:	00913423          	sd	s1,8(sp)
    800025c8:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    800025cc:	fffff097          	auipc	ra,0xfffff
    800025d0:	fb8080e7          	jalr	-72(ra) # 80001584 <_ZN5RiscV10popSppSpieEv>
    running->body(running->arguments);
    800025d4:	00003497          	auipc	s1,0x3
    800025d8:	4bc48493          	addi	s1,s1,1212 # 80005a90 <_ZN3TCB7runningE>
    800025dc:	0004b783          	ld	a5,0(s1)
    800025e0:	0007b703          	ld	a4,0(a5)
    800025e4:	0287b503          	ld	a0,40(a5)
    800025e8:	000700e7          	jalr	a4
    running->setFinished(true);
    800025ec:	00100593          	li	a1,1
    800025f0:	0004b503          	ld	a0,0(s1)
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	cc8080e7          	jalr	-824(ra) # 800022bc <_ZN3TCB11setFinishedEb>
    TCB::yield();
    800025fc:	00000097          	auipc	ra,0x0
    80002600:	f98080e7          	jalr	-104(ra) # 80002594 <_ZN3TCB5yieldEv>
}
    80002604:	01813083          	ld	ra,24(sp)
    80002608:	01013403          	ld	s0,16(sp)
    8000260c:	00813483          	ld	s1,8(sp)
    80002610:	02010113          	addi	sp,sp,32
    80002614:	00008067          	ret

0000000080002618 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002618:	fe010113          	addi	sp,sp,-32
    8000261c:	00113c23          	sd	ra,24(sp)
    80002620:	00813823          	sd	s0,16(sp)
    80002624:	00913423          	sd	s1,8(sp)
    80002628:	02010413          	addi	s0,sp,32
    TCB *old = running;
    8000262c:	00003497          	auipc	s1,0x3
    80002630:	4644b483          	ld	s1,1124(s1) # 80005a90 <_ZN3TCB7runningE>
    if (!old->isFinished()) {
    80002634:	00048513          	mv	a0,s1
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	c68080e7          	jalr	-920(ra) # 800022a0 <_ZNK3TCB10isFinishedEv>
    80002640:	02050c63          	beqz	a0,80002678 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80002644:	fffff097          	auipc	ra,0xfffff
    80002648:	6dc080e7          	jalr	1756(ra) # 80001d20 <_ZN9Scheduler3getEv>
    8000264c:	00003797          	auipc	a5,0x3
    80002650:	44a7b223          	sd	a0,1092(a5) # 80005a90 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002654:	01050593          	addi	a1,a0,16
    80002658:	01048513          	addi	a0,s1,16
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	bd4080e7          	jalr	-1068(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002664:	01813083          	ld	ra,24(sp)
    80002668:	01013403          	ld	s0,16(sp)
    8000266c:	00813483          	ld	s1,8(sp)
    80002670:	02010113          	addi	sp,sp,32
    80002674:	00008067          	ret
        Scheduler::put(old);
    80002678:	00048513          	mv	a0,s1
    8000267c:	fffff097          	auipc	ra,0xfffff
    80002680:	70c080e7          	jalr	1804(ra) # 80001d88 <_ZN9Scheduler3putEP3TCB>
    80002684:	fc1ff06f          	j	80002644 <_ZN3TCB8dispatchEv+0x2c>

0000000080002688 <_Znwm>:
#include "../h/MemoryAllocation.hpp"
#include "../h/syscall_c.hpp"

//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    80002688:	ff010113          	addi	sp,sp,-16
    8000268c:	00813423          	sd	s0,8(sp)
    80002690:	01010413          	addi	s0,sp,16

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002694:	05750793          	addi	a5,a0,87
    80002698:	0067d793          	srli	a5,a5,0x6
    8000269c:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    800026a0:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800026a4:	00003717          	auipc	a4,0x3
    800026a8:	32473703          	ld	a4,804(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026ac:	00073503          	ld	a0,0(a4)
    800026b0:	0c050863          	beqz	a0,80002780 <_Znwm+0xf8>
            cur->next=fmem_head->next;
    800026b4:	00003717          	auipc	a4,0x3
    800026b8:	31473703          	ld	a4,788(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026bc:	00073683          	ld	a3,0(a4)
    800026c0:	0006b683          	ld	a3,0(a3) # 8000 <_entry-0x7fff8000>
    800026c4:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    800026c8:	00073703          	ld	a4,0(a4)
    800026cc:	00873603          	ld	a2,8(a4)
    800026d0:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    800026d4:	01053703          	ld	a4,16(a0)
    800026d8:	02f76663          	bltu	a4,a5,80002704 <_Znwm+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    800026dc:	40f70733          	sub	a4,a4,a5
    800026e0:	01800593          	li	a1,24
    800026e4:	02e5ec63          	bltu	a1,a4,8000271c <_Znwm+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    800026e8:	02060263          	beqz	a2,8000270c <_Znwm+0x84>
    800026ec:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    800026f0:	00053783          	ld	a5,0(a0)
    800026f4:	08078663          	beqz	a5,80002780 <_Znwm+0xf8>
    800026f8:	00853703          	ld	a4,8(a0)
    800026fc:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002700:	0800006f          	j	80002780 <_Znwm+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002704:	00068513          	mv	a0,a3
    80002708:	fa9ff06f          	j	800026b0 <_Znwm+0x28>
                else fmem_head = cur->next;
    8000270c:	00003797          	auipc	a5,0x3
    80002710:	2bc7b783          	ld	a5,700(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002714:	00d7b023          	sd	a3,0(a5)
    80002718:	fd9ff06f          	j	800026f0 <_Znwm+0x68>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    8000271c:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80002720:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002724:	00073023          	sd	zero,0(a4)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002728:	00853683          	ld	a3,8(a0)
    8000272c:	06068063          	beqz	a3,8000278c <_Znwm+0x104>
    80002730:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002734:	00053683          	ld	a3,0(a0)
    80002738:	00068463          	beqz	a3,80002740 <_Znwm+0xb8>
    8000273c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002740:	00853603          	ld	a2,8(a0)
    80002744:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002748:	00053683          	ld	a3,0(a0)
    8000274c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002750:	01053683          	ld	a3,16(a0)
    80002754:	40f687b3          	sub	a5,a3,a5
    80002758:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    8000275c:	0c070693          	addi	a3,a4,192
    80002760:	00003597          	auipc	a1,0x3
    80002764:	2685b583          	ld	a1,616(a1) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002768:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    8000276c:	00073583          	ld	a1,0(a4)
    80002770:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002774:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002778:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    8000277c:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}
    80002780:	00813403          	ld	s0,8(sp)
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    8000278c:	0c070693          	addi	a3,a4,192
    80002790:	00003617          	auipc	a2,0x3
    80002794:	23863603          	ld	a2,568(a2) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002798:	00d63023          	sd	a3,0(a2)
    8000279c:	f99ff06f          	j	80002734 <_Znwm+0xac>

00000000800027a0 <_Znam>:

void *operator new[](uint64 n){
    800027a0:	ff010113          	addi	sp,sp,-16
    800027a4:	00813423          	sd	s0,8(sp)
    800027a8:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800027ac:	05750793          	addi	a5,a0,87
    800027b0:	0067d793          	srli	a5,a5,0x6
    800027b4:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    800027b8:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800027bc:	00003717          	auipc	a4,0x3
    800027c0:	20c73703          	ld	a4,524(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027c4:	00073503          	ld	a0,0(a4)
    800027c8:	0c050863          	beqz	a0,80002898 <_Znam+0xf8>
            cur->next=fmem_head->next;
    800027cc:	00003717          	auipc	a4,0x3
    800027d0:	1fc73703          	ld	a4,508(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027d4:	00073683          	ld	a3,0(a4)
    800027d8:	0006b683          	ld	a3,0(a3)
    800027dc:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    800027e0:	00073703          	ld	a4,0(a4)
    800027e4:	00873603          	ld	a2,8(a4)
    800027e8:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    800027ec:	01053703          	ld	a4,16(a0)
    800027f0:	02f76663          	bltu	a4,a5,8000281c <_Znam+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    800027f4:	40f70733          	sub	a4,a4,a5
    800027f8:	01800593          	li	a1,24
    800027fc:	02e5ec63          	bltu	a1,a4,80002834 <_Znam+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002800:	02060263          	beqz	a2,80002824 <_Znam+0x84>
    80002804:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80002808:	00053783          	ld	a5,0(a0)
    8000280c:	08078663          	beqz	a5,80002898 <_Znam+0xf8>
    80002810:	00853703          	ld	a4,8(a0)
    80002814:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002818:	0800006f          	j	80002898 <_Znam+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000281c:	00068513          	mv	a0,a3
    80002820:	fa9ff06f          	j	800027c8 <_Znam+0x28>
                else fmem_head = cur->next;
    80002824:	00003797          	auipc	a5,0x3
    80002828:	1a47b783          	ld	a5,420(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000282c:	00d7b023          	sd	a3,0(a5)
    80002830:	fd9ff06f          	j	80002808 <_Znam+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002834:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80002838:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    8000283c:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002840:	00853683          	ld	a3,8(a0)
    80002844:	06068063          	beqz	a3,800028a4 <_Znam+0x104>
    80002848:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    8000284c:	00053683          	ld	a3,0(a0)
    80002850:	00068463          	beqz	a3,80002858 <_Znam+0xb8>
    80002854:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002858:	00853603          	ld	a2,8(a0)
    8000285c:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002860:	00053683          	ld	a3,0(a0)
    80002864:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002868:	01053683          	ld	a3,16(a0)
    8000286c:	40f687b3          	sub	a5,a3,a5
    80002870:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002874:	0c070693          	addi	a3,a4,192
    80002878:	00003597          	auipc	a1,0x3
    8000287c:	1505b583          	ld	a1,336(a1) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002880:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002884:	00073583          	ld	a1,0(a4)
    80002888:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    8000288c:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002890:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002894:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
}
    80002898:	00813403          	ld	s0,8(sp)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800028a4:	0c070693          	addi	a3,a4,192
    800028a8:	00003617          	auipc	a2,0x3
    800028ac:	12063603          	ld	a2,288(a2) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800028b0:	00d63023          	sd	a3,0(a2)
    800028b4:	f99ff06f          	j	8000284c <_Znam+0xac>

00000000800028b8 <_ZdlPv>:

void operator delete(void *p) noexcept {
    800028b8:	ff010113          	addi	sp,sp,-16
    800028bc:	00813423          	sd	s0,8(sp)
    800028c0:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    800028c4:	00003797          	auipc	a5,0x3
    800028c8:	1047b783          	ld	a5,260(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800028cc:	0007b703          	ld	a4,0(a5)
    800028d0:	00070e63          	beqz	a4,800028ec <_ZdlPv+0x34>
    800028d4:	02e56063          	bltu	a0,a4,800028f4 <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800028d8:	00070793          	mv	a5,a4
    800028dc:	00073703          	ld	a4,0(a4)
    800028e0:	00e50c63          	beq	a0,a4,800028f8 <_ZdlPv+0x40>
    800028e4:	fea76ae3          	bltu	a4,a0,800028d8 <_ZdlPv+0x20>
    800028e8:	0100006f          	j	800028f8 <_ZdlPv+0x40>
            cur=nullptr;
    800028ec:	00070793          	mv	a5,a4
    800028f0:	0080006f          	j	800028f8 <_ZdlPv+0x40>
    800028f4:	00000793          	li	a5,0
                newSeg->next=nullptr;
    800028f8:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    800028fc:	04000713          	li	a4,64
    80002900:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002904:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80002908:	04078e63          	beqz	a5,80002964 <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    8000290c:	0007b703          	ld	a4,0(a5)
    80002910:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002914:	00053703          	ld	a4,0(a0)
    80002918:	00070463          	beqz	a4,80002920 <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    8000291c:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80002920:	04078c63          	beqz	a5,80002978 <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002924:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002928:	00050c63          	beqz	a0,80002940 <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000292c:	00053703          	ld	a4,0(a0)
    80002930:	00070863          	beqz	a4,80002940 <_ZdlPv+0x88>
    80002934:	01053683          	ld	a3,16(a0)
    80002938:	00d50633          	add	a2,a0,a3
    8000293c:	04c70663          	beq	a4,a2,80002988 <_ZdlPv+0xd0>
        if (!curr) return;
    80002940:	00078c63          	beqz	a5,80002958 <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002944:	0007b703          	ld	a4,0(a5)
    80002948:	00070863          	beqz	a4,80002958 <_ZdlPv+0xa0>
    8000294c:	0107b683          	ld	a3,16(a5)
    80002950:	00d78633          	add	a2,a5,a3
    80002954:	04c70a63          	beq	a4,a2,800029a8 <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    80002958:	00813403          	ld	s0,8(sp)
    8000295c:	01010113          	addi	sp,sp,16
    80002960:	00008067          	ret
                    newSeg->next = fmem_head;
    80002964:	00003717          	auipc	a4,0x3
    80002968:	06473703          	ld	a4,100(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000296c:	00073703          	ld	a4,0(a4)
    80002970:	00e53023          	sd	a4,0(a0)
    80002974:	fa1ff06f          	j	80002914 <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    80002978:	00003717          	auipc	a4,0x3
    8000297c:	05073703          	ld	a4,80(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002980:	00a73023          	sd	a0,0(a4)
    80002984:	fa5ff06f          	j	80002928 <_ZdlPv+0x70>
            curr->size += curr->next->size;
    80002988:	01073603          	ld	a2,16(a4)
    8000298c:	00c686b3          	add	a3,a3,a2
    80002990:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80002994:	00073703          	ld	a4,0(a4)
    80002998:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    8000299c:	fa0702e3          	beqz	a4,80002940 <_ZdlPv+0x88>
    800029a0:	00a73423          	sd	a0,8(a4)
    800029a4:	f9dff06f          	j	80002940 <_ZdlPv+0x88>
            curr->size += curr->next->size;
    800029a8:	01073603          	ld	a2,16(a4)
    800029ac:	00c686b3          	add	a3,a3,a2
    800029b0:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    800029b4:	00073703          	ld	a4,0(a4)
    800029b8:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    800029bc:	f8070ee3          	beqz	a4,80002958 <_ZdlPv+0xa0>
    800029c0:	00f73423          	sd	a5,8(a4)
    800029c4:	f95ff06f          	j	80002958 <_ZdlPv+0xa0>

00000000800029c8 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    800029c8:	ff010113          	addi	sp,sp,-16
    800029cc:	00813423          	sd	s0,8(sp)
    800029d0:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    800029d4:	00003797          	auipc	a5,0x3
    800029d8:	ff47b783          	ld	a5,-12(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800029dc:	0007b703          	ld	a4,0(a5)
    800029e0:	00070e63          	beqz	a4,800029fc <_ZdaPv+0x34>
    800029e4:	02e56063          	bltu	a0,a4,80002a04 <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800029e8:	00070793          	mv	a5,a4
    800029ec:	00073703          	ld	a4,0(a4)
    800029f0:	00e50c63          	beq	a0,a4,80002a08 <_ZdaPv+0x40>
    800029f4:	fea76ae3          	bltu	a4,a0,800029e8 <_ZdaPv+0x20>
    800029f8:	0100006f          	j	80002a08 <_ZdaPv+0x40>
            cur=nullptr;
    800029fc:	00070793          	mv	a5,a4
    80002a00:	0080006f          	j	80002a08 <_ZdaPv+0x40>
    80002a04:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80002a08:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002a0c:	04000713          	li	a4,64
    80002a10:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002a14:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80002a18:	04078e63          	beqz	a5,80002a74 <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    80002a1c:	0007b703          	ld	a4,0(a5)
    80002a20:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002a24:	00053703          	ld	a4,0(a0)
    80002a28:	00070463          	beqz	a4,80002a30 <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    80002a2c:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80002a30:	04078c63          	beqz	a5,80002a88 <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002a34:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002a38:	00050c63          	beqz	a0,80002a50 <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002a3c:	00053703          	ld	a4,0(a0)
    80002a40:	00070863          	beqz	a4,80002a50 <_ZdaPv+0x88>
    80002a44:	01053683          	ld	a3,16(a0)
    80002a48:	00d50633          	add	a2,a0,a3
    80002a4c:	04c70663          	beq	a4,a2,80002a98 <_ZdaPv+0xd0>
        if (!curr) return;
    80002a50:	00078c63          	beqz	a5,80002a68 <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002a54:	0007b703          	ld	a4,0(a5)
    80002a58:	00070863          	beqz	a4,80002a68 <_ZdaPv+0xa0>
    80002a5c:	0107b683          	ld	a3,16(a5)
    80002a60:	00d78633          	add	a2,a5,a3
    80002a64:	04c70a63          	beq	a4,a2,80002ab8 <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
    80002a68:	00813403          	ld	s0,8(sp)
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret
                    newSeg->next = fmem_head;
    80002a74:	00003717          	auipc	a4,0x3
    80002a78:	f5473703          	ld	a4,-172(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a7c:	00073703          	ld	a4,0(a4)
    80002a80:	00e53023          	sd	a4,0(a0)
    80002a84:	fa1ff06f          	j	80002a24 <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    80002a88:	00003717          	auipc	a4,0x3
    80002a8c:	f4073703          	ld	a4,-192(a4) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a90:	00a73023          	sd	a0,0(a4)
    80002a94:	fa5ff06f          	j	80002a38 <_ZdaPv+0x70>
            curr->size += curr->next->size;
    80002a98:	01073603          	ld	a2,16(a4)
    80002a9c:	00c686b3          	add	a3,a3,a2
    80002aa0:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80002aa4:	00073703          	ld	a4,0(a4)
    80002aa8:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80002aac:	fa0702e3          	beqz	a4,80002a50 <_ZdaPv+0x88>
    80002ab0:	00a73423          	sd	a0,8(a4)
    80002ab4:	f9dff06f          	j	80002a50 <_ZdaPv+0x88>
            curr->size += curr->next->size;
    80002ab8:	01073603          	ld	a2,16(a4)
    80002abc:	00c686b3          	add	a3,a3,a2
    80002ac0:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002ac4:	00073703          	ld	a4,0(a4)
    80002ac8:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80002acc:	f8070ee3          	beqz	a4,80002a68 <_ZdaPv+0xa0>
    80002ad0:	00f73423          	sd	a5,8(a4)
    80002ad4:	f95ff06f          	j	80002a68 <_ZdaPv+0xa0>

0000000080002ad8 <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002ad8:	ff010113          	addi	sp,sp,-16
    80002adc:	00813423          	sd	s0,8(sp)
    80002ae0:	01010413          	addi	s0,sp,16
    80002ae4:	00100793          	li	a5,1
    80002ae8:	00f50863          	beq	a0,a5,80002af8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002aec:	00813403          	ld	s0,8(sp)
    80002af0:	01010113          	addi	sp,sp,16
    80002af4:	00008067          	ret
    80002af8:	000107b7          	lui	a5,0x10
    80002afc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b00:	fef596e3          	bne	a1,a5,80002aec <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002b04:	00003797          	auipc	a5,0x3
    80002b08:	ea47b783          	ld	a5,-348(a5) # 800059a8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002b0c:	0007b783          	ld	a5,0(a5)
    80002b10:	00003717          	auipc	a4,0x3
    80002b14:	f8f73823          	sd	a5,-112(a4) # 80005aa0 <_ZN16MemoryAllocation9fmem_headE>
    80002b18:	fd5ff06f          	j	80002aec <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002b1c <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    80002b1c:	ff010113          	addi	sp,sp,-16
    80002b20:	00113423          	sd	ra,8(sp)
    80002b24:	00813023          	sd	s0,0(sp)
    80002b28:	01010413          	addi	s0,sp,16
    80002b2c:	000105b7          	lui	a1,0x10
    80002b30:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002b34:	00100513          	li	a0,1
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	fa0080e7          	jalr	-96(ra) # 80002ad8 <_Z41__static_initialization_and_destruction_0ii>
    80002b40:	00813083          	ld	ra,8(sp)
    80002b44:	00013403          	ld	s0,0(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_Z11printStringPKc>:

#include "../h/Print.hpp"
#include "../lib/console.h"
#include "../h/RiscV.hpp"
//promenjeni print string i integer na vezbama 2, 1:10:00 tu negde, da bi se onemogucili prekidi u samoj niti
void printString(char const *string){
    80002b50:	fe010113          	addi	sp,sp,-32
    80002b54:	00113c23          	sd	ra,24(sp)
    80002b58:	00813823          	sd	s0,16(sp)
    80002b5c:	00913423          	sd	s1,8(sp)
    80002b60:	01213023          	sd	s2,0(sp)
    80002b64:	02010413          	addi	s0,sp,32
    80002b68:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80002b6c:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80002b70:	00200793          	li	a5,2
    80002b74:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = RiscV::r_sstatus();
    RiscV::mc_sstatus(RiscV::SSTATUS_SIE);
    while(*string!='\0'){
    80002b78:	0004c503          	lbu	a0,0(s1)
    80002b7c:	00050a63          	beqz	a0,80002b90 <_Z11printStringPKc+0x40>
        __putc(*string);
    80002b80:	00002097          	auipc	ra,0x2
    80002b84:	1ac080e7          	jalr	428(ra) # 80004d2c <__putc>
        string++;
    80002b88:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80002b8c:	fedff06f          	j	80002b78 <_Z11printStringPKc+0x28>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80002b90:	0009091b          	sext.w	s2,s2
    80002b94:	00297913          	andi	s2,s2,2
    80002b98:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    80002b9c:	10092073          	csrs	sstatus,s2
}
    80002ba0:	01813083          	ld	ra,24(sp)
    80002ba4:	01013403          	ld	s0,16(sp)
    80002ba8:	00813483          	ld	s1,8(sp)
    80002bac:	00013903          	ld	s2,0(sp)
    80002bb0:	02010113          	addi	sp,sp,32
    80002bb4:	00008067          	ret

0000000080002bb8 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    80002bb8:	fd010113          	addi	sp,sp,-48
    80002bbc:	02113423          	sd	ra,40(sp)
    80002bc0:	02813023          	sd	s0,32(sp)
    80002bc4:	00913c23          	sd	s1,24(sp)
    80002bc8:	01213823          	sd	s2,16(sp)
    80002bcc:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80002bd0:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80002bd4:	00200793          	li	a5,2
    80002bd8:	1007b073          	csrc	sstatus,a5
    neg=0;
    if(integer<0){
        neg=1;
        x=-integer;
    }else{
        x=integer;
    80002bdc:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80002be0:	00000493          	li	s1,0
    do {
        buf[i++] = digits [x%10];
    80002be4:	00a00613          	li	a2,10
    80002be8:	02c5773b          	remuw	a4,a0,a2
    80002bec:	02071693          	slli	a3,a4,0x20
    80002bf0:	0206d693          	srli	a3,a3,0x20
    80002bf4:	00002717          	auipc	a4,0x2
    80002bf8:	4d470713          	addi	a4,a4,1236 # 800050c8 <_ZZ12printIntegermE6digits>
    80002bfc:	00d70733          	add	a4,a4,a3
    80002c00:	00074703          	lbu	a4,0(a4)
    80002c04:	fe040693          	addi	a3,s0,-32
    80002c08:	009687b3          	add	a5,a3,s1
    80002c0c:	0014849b          	addiw	s1,s1,1
    80002c10:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002c14:	0005071b          	sext.w	a4,a0
    80002c18:	02c5553b          	divuw	a0,a0,a2
    80002c1c:	00900793          	li	a5,9
    80002c20:	fce7e2e3          	bltu	a5,a4,80002be4 <_Z12printIntegerm+0x2c>
    if(neg) buf[i++] = '-';

    while(--i >= 0){
    80002c24:	fff4849b          	addiw	s1,s1,-1
    80002c28:	0004ce63          	bltz	s1,80002c44 <_Z12printIntegerm+0x8c>
        __putc(buf[i]);
    80002c2c:	fe040793          	addi	a5,s0,-32
    80002c30:	009787b3          	add	a5,a5,s1
    80002c34:	ff07c503          	lbu	a0,-16(a5)
    80002c38:	00002097          	auipc	ra,0x2
    80002c3c:	0f4080e7          	jalr	244(ra) # 80004d2c <__putc>
    80002c40:	fe5ff06f          	j	80002c24 <_Z12printIntegerm+0x6c>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80002c44:	0009091b          	sext.w	s2,s2
    80002c48:	00297913          	andi	s2,s2,2
    80002c4c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    80002c50:	10092073          	csrs	sstatus,s2
}
    80002c54:	02813083          	ld	ra,40(sp)
    80002c58:	02013403          	ld	s0,32(sp)
    80002c5c:	01813483          	ld	s1,24(sp)
    80002c60:	01013903          	ld	s2,16(sp)
    80002c64:	03010113          	addi	sp,sp,48
    80002c68:	00008067          	ret

0000000080002c6c <start>:
    80002c6c:	ff010113          	addi	sp,sp,-16
    80002c70:	00813423          	sd	s0,8(sp)
    80002c74:	01010413          	addi	s0,sp,16
    80002c78:	300027f3          	csrr	a5,mstatus
    80002c7c:	ffffe737          	lui	a4,0xffffe
    80002c80:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7aff>
    80002c84:	00e7f7b3          	and	a5,a5,a4
    80002c88:	00001737          	lui	a4,0x1
    80002c8c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002c90:	00e7e7b3          	or	a5,a5,a4
    80002c94:	30079073          	csrw	mstatus,a5
    80002c98:	00000797          	auipc	a5,0x0
    80002c9c:	16078793          	addi	a5,a5,352 # 80002df8 <system_main>
    80002ca0:	34179073          	csrw	mepc,a5
    80002ca4:	00000793          	li	a5,0
    80002ca8:	18079073          	csrw	satp,a5
    80002cac:	000107b7          	lui	a5,0x10
    80002cb0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002cb4:	30279073          	csrw	medeleg,a5
    80002cb8:	30379073          	csrw	mideleg,a5
    80002cbc:	104027f3          	csrr	a5,sie
    80002cc0:	2227e793          	ori	a5,a5,546
    80002cc4:	10479073          	csrw	sie,a5
    80002cc8:	fff00793          	li	a5,-1
    80002ccc:	00a7d793          	srli	a5,a5,0xa
    80002cd0:	3b079073          	csrw	pmpaddr0,a5
    80002cd4:	00f00793          	li	a5,15
    80002cd8:	3a079073          	csrw	pmpcfg0,a5
    80002cdc:	f14027f3          	csrr	a5,mhartid
    80002ce0:	0200c737          	lui	a4,0x200c
    80002ce4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002ce8:	0007869b          	sext.w	a3,a5
    80002cec:	00269713          	slli	a4,a3,0x2
    80002cf0:	000f4637          	lui	a2,0xf4
    80002cf4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002cf8:	00d70733          	add	a4,a4,a3
    80002cfc:	0037979b          	slliw	a5,a5,0x3
    80002d00:	020046b7          	lui	a3,0x2004
    80002d04:	00d787b3          	add	a5,a5,a3
    80002d08:	00c585b3          	add	a1,a1,a2
    80002d0c:	00371693          	slli	a3,a4,0x3
    80002d10:	00003717          	auipc	a4,0x3
    80002d14:	da070713          	addi	a4,a4,-608 # 80005ab0 <timer_scratch>
    80002d18:	00b7b023          	sd	a1,0(a5)
    80002d1c:	00d70733          	add	a4,a4,a3
    80002d20:	00f73c23          	sd	a5,24(a4)
    80002d24:	02c73023          	sd	a2,32(a4)
    80002d28:	34071073          	csrw	mscratch,a4
    80002d2c:	00000797          	auipc	a5,0x0
    80002d30:	6e478793          	addi	a5,a5,1764 # 80003410 <timervec>
    80002d34:	30579073          	csrw	mtvec,a5
    80002d38:	300027f3          	csrr	a5,mstatus
    80002d3c:	0087e793          	ori	a5,a5,8
    80002d40:	30079073          	csrw	mstatus,a5
    80002d44:	304027f3          	csrr	a5,mie
    80002d48:	0807e793          	ori	a5,a5,128
    80002d4c:	30479073          	csrw	mie,a5
    80002d50:	f14027f3          	csrr	a5,mhartid
    80002d54:	0007879b          	sext.w	a5,a5
    80002d58:	00078213          	mv	tp,a5
    80002d5c:	30200073          	mret
    80002d60:	00813403          	ld	s0,8(sp)
    80002d64:	01010113          	addi	sp,sp,16
    80002d68:	00008067          	ret

0000000080002d6c <timerinit>:
    80002d6c:	ff010113          	addi	sp,sp,-16
    80002d70:	00813423          	sd	s0,8(sp)
    80002d74:	01010413          	addi	s0,sp,16
    80002d78:	f14027f3          	csrr	a5,mhartid
    80002d7c:	0200c737          	lui	a4,0x200c
    80002d80:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002d84:	0007869b          	sext.w	a3,a5
    80002d88:	00269713          	slli	a4,a3,0x2
    80002d8c:	000f4637          	lui	a2,0xf4
    80002d90:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002d94:	00d70733          	add	a4,a4,a3
    80002d98:	0037979b          	slliw	a5,a5,0x3
    80002d9c:	020046b7          	lui	a3,0x2004
    80002da0:	00d787b3          	add	a5,a5,a3
    80002da4:	00c585b3          	add	a1,a1,a2
    80002da8:	00371693          	slli	a3,a4,0x3
    80002dac:	00003717          	auipc	a4,0x3
    80002db0:	d0470713          	addi	a4,a4,-764 # 80005ab0 <timer_scratch>
    80002db4:	00b7b023          	sd	a1,0(a5)
    80002db8:	00d70733          	add	a4,a4,a3
    80002dbc:	00f73c23          	sd	a5,24(a4)
    80002dc0:	02c73023          	sd	a2,32(a4)
    80002dc4:	34071073          	csrw	mscratch,a4
    80002dc8:	00000797          	auipc	a5,0x0
    80002dcc:	64878793          	addi	a5,a5,1608 # 80003410 <timervec>
    80002dd0:	30579073          	csrw	mtvec,a5
    80002dd4:	300027f3          	csrr	a5,mstatus
    80002dd8:	0087e793          	ori	a5,a5,8
    80002ddc:	30079073          	csrw	mstatus,a5
    80002de0:	304027f3          	csrr	a5,mie
    80002de4:	0807e793          	ori	a5,a5,128
    80002de8:	30479073          	csrw	mie,a5
    80002dec:	00813403          	ld	s0,8(sp)
    80002df0:	01010113          	addi	sp,sp,16
    80002df4:	00008067          	ret

0000000080002df8 <system_main>:
    80002df8:	fe010113          	addi	sp,sp,-32
    80002dfc:	00813823          	sd	s0,16(sp)
    80002e00:	00913423          	sd	s1,8(sp)
    80002e04:	00113c23          	sd	ra,24(sp)
    80002e08:	02010413          	addi	s0,sp,32
    80002e0c:	00000097          	auipc	ra,0x0
    80002e10:	0c4080e7          	jalr	196(ra) # 80002ed0 <cpuid>
    80002e14:	00003497          	auipc	s1,0x3
    80002e18:	bfc48493          	addi	s1,s1,-1028 # 80005a10 <started>
    80002e1c:	02050263          	beqz	a0,80002e40 <system_main+0x48>
    80002e20:	0004a783          	lw	a5,0(s1)
    80002e24:	0007879b          	sext.w	a5,a5
    80002e28:	fe078ce3          	beqz	a5,80002e20 <system_main+0x28>
    80002e2c:	0ff0000f          	fence
    80002e30:	00002517          	auipc	a0,0x2
    80002e34:	2d850513          	addi	a0,a0,728 # 80005108 <_ZZ12printIntegermE6digits+0x40>
    80002e38:	00001097          	auipc	ra,0x1
    80002e3c:	a74080e7          	jalr	-1420(ra) # 800038ac <panic>
    80002e40:	00001097          	auipc	ra,0x1
    80002e44:	9c8080e7          	jalr	-1592(ra) # 80003808 <consoleinit>
    80002e48:	00001097          	auipc	ra,0x1
    80002e4c:	154080e7          	jalr	340(ra) # 80003f9c <printfinit>
    80002e50:	00002517          	auipc	a0,0x2
    80002e54:	39850513          	addi	a0,a0,920 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80002e58:	00001097          	auipc	ra,0x1
    80002e5c:	ab0080e7          	jalr	-1360(ra) # 80003908 <__printf>
    80002e60:	00002517          	auipc	a0,0x2
    80002e64:	27850513          	addi	a0,a0,632 # 800050d8 <_ZZ12printIntegermE6digits+0x10>
    80002e68:	00001097          	auipc	ra,0x1
    80002e6c:	aa0080e7          	jalr	-1376(ra) # 80003908 <__printf>
    80002e70:	00002517          	auipc	a0,0x2
    80002e74:	37850513          	addi	a0,a0,888 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    80002e78:	00001097          	auipc	ra,0x1
    80002e7c:	a90080e7          	jalr	-1392(ra) # 80003908 <__printf>
    80002e80:	00001097          	auipc	ra,0x1
    80002e84:	4a8080e7          	jalr	1192(ra) # 80004328 <kinit>
    80002e88:	00000097          	auipc	ra,0x0
    80002e8c:	148080e7          	jalr	328(ra) # 80002fd0 <trapinit>
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	16c080e7          	jalr	364(ra) # 80002ffc <trapinithart>
    80002e98:	00000097          	auipc	ra,0x0
    80002e9c:	5b8080e7          	jalr	1464(ra) # 80003450 <plicinit>
    80002ea0:	00000097          	auipc	ra,0x0
    80002ea4:	5d8080e7          	jalr	1496(ra) # 80003478 <plicinithart>
    80002ea8:	00000097          	auipc	ra,0x0
    80002eac:	078080e7          	jalr	120(ra) # 80002f20 <userinit>
    80002eb0:	0ff0000f          	fence
    80002eb4:	00100793          	li	a5,1
    80002eb8:	00002517          	auipc	a0,0x2
    80002ebc:	23850513          	addi	a0,a0,568 # 800050f0 <_ZZ12printIntegermE6digits+0x28>
    80002ec0:	00f4a023          	sw	a5,0(s1)
    80002ec4:	00001097          	auipc	ra,0x1
    80002ec8:	a44080e7          	jalr	-1468(ra) # 80003908 <__printf>
    80002ecc:	0000006f          	j	80002ecc <system_main+0xd4>

0000000080002ed0 <cpuid>:
    80002ed0:	ff010113          	addi	sp,sp,-16
    80002ed4:	00813423          	sd	s0,8(sp)
    80002ed8:	01010413          	addi	s0,sp,16
    80002edc:	00020513          	mv	a0,tp
    80002ee0:	00813403          	ld	s0,8(sp)
    80002ee4:	0005051b          	sext.w	a0,a0
    80002ee8:	01010113          	addi	sp,sp,16
    80002eec:	00008067          	ret

0000000080002ef0 <mycpu>:
    80002ef0:	ff010113          	addi	sp,sp,-16
    80002ef4:	00813423          	sd	s0,8(sp)
    80002ef8:	01010413          	addi	s0,sp,16
    80002efc:	00020793          	mv	a5,tp
    80002f00:	00813403          	ld	s0,8(sp)
    80002f04:	0007879b          	sext.w	a5,a5
    80002f08:	00779793          	slli	a5,a5,0x7
    80002f0c:	00004517          	auipc	a0,0x4
    80002f10:	bd450513          	addi	a0,a0,-1068 # 80006ae0 <cpus>
    80002f14:	00f50533          	add	a0,a0,a5
    80002f18:	01010113          	addi	sp,sp,16
    80002f1c:	00008067          	ret

0000000080002f20 <userinit>:
    80002f20:	ff010113          	addi	sp,sp,-16
    80002f24:	00813423          	sd	s0,8(sp)
    80002f28:	01010413          	addi	s0,sp,16
    80002f2c:	00813403          	ld	s0,8(sp)
    80002f30:	01010113          	addi	sp,sp,16
    80002f34:	fffff317          	auipc	t1,0xfffff
    80002f38:	1d430067          	jr	468(t1) # 80002108 <main>

0000000080002f3c <either_copyout>:
    80002f3c:	ff010113          	addi	sp,sp,-16
    80002f40:	00813023          	sd	s0,0(sp)
    80002f44:	00113423          	sd	ra,8(sp)
    80002f48:	01010413          	addi	s0,sp,16
    80002f4c:	02051663          	bnez	a0,80002f78 <either_copyout+0x3c>
    80002f50:	00058513          	mv	a0,a1
    80002f54:	00060593          	mv	a1,a2
    80002f58:	0006861b          	sext.w	a2,a3
    80002f5c:	00002097          	auipc	ra,0x2
    80002f60:	c58080e7          	jalr	-936(ra) # 80004bb4 <__memmove>
    80002f64:	00813083          	ld	ra,8(sp)
    80002f68:	00013403          	ld	s0,0(sp)
    80002f6c:	00000513          	li	a0,0
    80002f70:	01010113          	addi	sp,sp,16
    80002f74:	00008067          	ret
    80002f78:	00002517          	auipc	a0,0x2
    80002f7c:	1b850513          	addi	a0,a0,440 # 80005130 <_ZZ12printIntegermE6digits+0x68>
    80002f80:	00001097          	auipc	ra,0x1
    80002f84:	92c080e7          	jalr	-1748(ra) # 800038ac <panic>

0000000080002f88 <either_copyin>:
    80002f88:	ff010113          	addi	sp,sp,-16
    80002f8c:	00813023          	sd	s0,0(sp)
    80002f90:	00113423          	sd	ra,8(sp)
    80002f94:	01010413          	addi	s0,sp,16
    80002f98:	02059463          	bnez	a1,80002fc0 <either_copyin+0x38>
    80002f9c:	00060593          	mv	a1,a2
    80002fa0:	0006861b          	sext.w	a2,a3
    80002fa4:	00002097          	auipc	ra,0x2
    80002fa8:	c10080e7          	jalr	-1008(ra) # 80004bb4 <__memmove>
    80002fac:	00813083          	ld	ra,8(sp)
    80002fb0:	00013403          	ld	s0,0(sp)
    80002fb4:	00000513          	li	a0,0
    80002fb8:	01010113          	addi	sp,sp,16
    80002fbc:	00008067          	ret
    80002fc0:	00002517          	auipc	a0,0x2
    80002fc4:	19850513          	addi	a0,a0,408 # 80005158 <_ZZ12printIntegermE6digits+0x90>
    80002fc8:	00001097          	auipc	ra,0x1
    80002fcc:	8e4080e7          	jalr	-1820(ra) # 800038ac <panic>

0000000080002fd0 <trapinit>:
    80002fd0:	ff010113          	addi	sp,sp,-16
    80002fd4:	00813423          	sd	s0,8(sp)
    80002fd8:	01010413          	addi	s0,sp,16
    80002fdc:	00813403          	ld	s0,8(sp)
    80002fe0:	00002597          	auipc	a1,0x2
    80002fe4:	1a058593          	addi	a1,a1,416 # 80005180 <_ZZ12printIntegermE6digits+0xb8>
    80002fe8:	00004517          	auipc	a0,0x4
    80002fec:	b7850513          	addi	a0,a0,-1160 # 80006b60 <tickslock>
    80002ff0:	01010113          	addi	sp,sp,16
    80002ff4:	00001317          	auipc	t1,0x1
    80002ff8:	5c430067          	jr	1476(t1) # 800045b8 <initlock>

0000000080002ffc <trapinithart>:
    80002ffc:	ff010113          	addi	sp,sp,-16
    80003000:	00813423          	sd	s0,8(sp)
    80003004:	01010413          	addi	s0,sp,16
    80003008:	00000797          	auipc	a5,0x0
    8000300c:	2f878793          	addi	a5,a5,760 # 80003300 <kernelvec>
    80003010:	10579073          	csrw	stvec,a5
    80003014:	00813403          	ld	s0,8(sp)
    80003018:	01010113          	addi	sp,sp,16
    8000301c:	00008067          	ret

0000000080003020 <usertrap>:
    80003020:	ff010113          	addi	sp,sp,-16
    80003024:	00813423          	sd	s0,8(sp)
    80003028:	01010413          	addi	s0,sp,16
    8000302c:	00813403          	ld	s0,8(sp)
    80003030:	01010113          	addi	sp,sp,16
    80003034:	00008067          	ret

0000000080003038 <usertrapret>:
    80003038:	ff010113          	addi	sp,sp,-16
    8000303c:	00813423          	sd	s0,8(sp)
    80003040:	01010413          	addi	s0,sp,16
    80003044:	00813403          	ld	s0,8(sp)
    80003048:	01010113          	addi	sp,sp,16
    8000304c:	00008067          	ret

0000000080003050 <kerneltrap>:
    80003050:	fe010113          	addi	sp,sp,-32
    80003054:	00813823          	sd	s0,16(sp)
    80003058:	00113c23          	sd	ra,24(sp)
    8000305c:	00913423          	sd	s1,8(sp)
    80003060:	02010413          	addi	s0,sp,32
    80003064:	142025f3          	csrr	a1,scause
    80003068:	100027f3          	csrr	a5,sstatus
    8000306c:	0027f793          	andi	a5,a5,2
    80003070:	10079c63          	bnez	a5,80003188 <kerneltrap+0x138>
    80003074:	142027f3          	csrr	a5,scause
    80003078:	0207ce63          	bltz	a5,800030b4 <kerneltrap+0x64>
    8000307c:	00002517          	auipc	a0,0x2
    80003080:	14c50513          	addi	a0,a0,332 # 800051c8 <_ZZ12printIntegermE6digits+0x100>
    80003084:	00001097          	auipc	ra,0x1
    80003088:	884080e7          	jalr	-1916(ra) # 80003908 <__printf>
    8000308c:	141025f3          	csrr	a1,sepc
    80003090:	14302673          	csrr	a2,stval
    80003094:	00002517          	auipc	a0,0x2
    80003098:	14450513          	addi	a0,a0,324 # 800051d8 <_ZZ12printIntegermE6digits+0x110>
    8000309c:	00001097          	auipc	ra,0x1
    800030a0:	86c080e7          	jalr	-1940(ra) # 80003908 <__printf>
    800030a4:	00002517          	auipc	a0,0x2
    800030a8:	14c50513          	addi	a0,a0,332 # 800051f0 <_ZZ12printIntegermE6digits+0x128>
    800030ac:	00001097          	auipc	ra,0x1
    800030b0:	800080e7          	jalr	-2048(ra) # 800038ac <panic>
    800030b4:	0ff7f713          	andi	a4,a5,255
    800030b8:	00900693          	li	a3,9
    800030bc:	04d70063          	beq	a4,a3,800030fc <kerneltrap+0xac>
    800030c0:	fff00713          	li	a4,-1
    800030c4:	03f71713          	slli	a4,a4,0x3f
    800030c8:	00170713          	addi	a4,a4,1
    800030cc:	fae798e3          	bne	a5,a4,8000307c <kerneltrap+0x2c>
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	e00080e7          	jalr	-512(ra) # 80002ed0 <cpuid>
    800030d8:	06050663          	beqz	a0,80003144 <kerneltrap+0xf4>
    800030dc:	144027f3          	csrr	a5,sip
    800030e0:	ffd7f793          	andi	a5,a5,-3
    800030e4:	14479073          	csrw	sip,a5
    800030e8:	01813083          	ld	ra,24(sp)
    800030ec:	01013403          	ld	s0,16(sp)
    800030f0:	00813483          	ld	s1,8(sp)
    800030f4:	02010113          	addi	sp,sp,32
    800030f8:	00008067          	ret
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	3c8080e7          	jalr	968(ra) # 800034c4 <plic_claim>
    80003104:	00a00793          	li	a5,10
    80003108:	00050493          	mv	s1,a0
    8000310c:	06f50863          	beq	a0,a5,8000317c <kerneltrap+0x12c>
    80003110:	fc050ce3          	beqz	a0,800030e8 <kerneltrap+0x98>
    80003114:	00050593          	mv	a1,a0
    80003118:	00002517          	auipc	a0,0x2
    8000311c:	09050513          	addi	a0,a0,144 # 800051a8 <_ZZ12printIntegermE6digits+0xe0>
    80003120:	00000097          	auipc	ra,0x0
    80003124:	7e8080e7          	jalr	2024(ra) # 80003908 <__printf>
    80003128:	01013403          	ld	s0,16(sp)
    8000312c:	01813083          	ld	ra,24(sp)
    80003130:	00048513          	mv	a0,s1
    80003134:	00813483          	ld	s1,8(sp)
    80003138:	02010113          	addi	sp,sp,32
    8000313c:	00000317          	auipc	t1,0x0
    80003140:	3c030067          	jr	960(t1) # 800034fc <plic_complete>
    80003144:	00004517          	auipc	a0,0x4
    80003148:	a1c50513          	addi	a0,a0,-1508 # 80006b60 <tickslock>
    8000314c:	00001097          	auipc	ra,0x1
    80003150:	490080e7          	jalr	1168(ra) # 800045dc <acquire>
    80003154:	00003717          	auipc	a4,0x3
    80003158:	8c070713          	addi	a4,a4,-1856 # 80005a14 <ticks>
    8000315c:	00072783          	lw	a5,0(a4)
    80003160:	00004517          	auipc	a0,0x4
    80003164:	a0050513          	addi	a0,a0,-1536 # 80006b60 <tickslock>
    80003168:	0017879b          	addiw	a5,a5,1
    8000316c:	00f72023          	sw	a5,0(a4)
    80003170:	00001097          	auipc	ra,0x1
    80003174:	538080e7          	jalr	1336(ra) # 800046a8 <release>
    80003178:	f65ff06f          	j	800030dc <kerneltrap+0x8c>
    8000317c:	00001097          	auipc	ra,0x1
    80003180:	094080e7          	jalr	148(ra) # 80004210 <uartintr>
    80003184:	fa5ff06f          	j	80003128 <kerneltrap+0xd8>
    80003188:	00002517          	auipc	a0,0x2
    8000318c:	00050513          	mv	a0,a0
    80003190:	00000097          	auipc	ra,0x0
    80003194:	71c080e7          	jalr	1820(ra) # 800038ac <panic>

0000000080003198 <clockintr>:
    80003198:	fe010113          	addi	sp,sp,-32
    8000319c:	00813823          	sd	s0,16(sp)
    800031a0:	00913423          	sd	s1,8(sp)
    800031a4:	00113c23          	sd	ra,24(sp)
    800031a8:	02010413          	addi	s0,sp,32
    800031ac:	00004497          	auipc	s1,0x4
    800031b0:	9b448493          	addi	s1,s1,-1612 # 80006b60 <tickslock>
    800031b4:	00048513          	mv	a0,s1
    800031b8:	00001097          	auipc	ra,0x1
    800031bc:	424080e7          	jalr	1060(ra) # 800045dc <acquire>
    800031c0:	00003717          	auipc	a4,0x3
    800031c4:	85470713          	addi	a4,a4,-1964 # 80005a14 <ticks>
    800031c8:	00072783          	lw	a5,0(a4)
    800031cc:	01013403          	ld	s0,16(sp)
    800031d0:	01813083          	ld	ra,24(sp)
    800031d4:	00048513          	mv	a0,s1
    800031d8:	0017879b          	addiw	a5,a5,1
    800031dc:	00813483          	ld	s1,8(sp)
    800031e0:	00f72023          	sw	a5,0(a4)
    800031e4:	02010113          	addi	sp,sp,32
    800031e8:	00001317          	auipc	t1,0x1
    800031ec:	4c030067          	jr	1216(t1) # 800046a8 <release>

00000000800031f0 <devintr>:
    800031f0:	142027f3          	csrr	a5,scause
    800031f4:	00000513          	li	a0,0
    800031f8:	0007c463          	bltz	a5,80003200 <devintr+0x10>
    800031fc:	00008067          	ret
    80003200:	fe010113          	addi	sp,sp,-32
    80003204:	00813823          	sd	s0,16(sp)
    80003208:	00113c23          	sd	ra,24(sp)
    8000320c:	00913423          	sd	s1,8(sp)
    80003210:	02010413          	addi	s0,sp,32
    80003214:	0ff7f713          	andi	a4,a5,255
    80003218:	00900693          	li	a3,9
    8000321c:	04d70c63          	beq	a4,a3,80003274 <devintr+0x84>
    80003220:	fff00713          	li	a4,-1
    80003224:	03f71713          	slli	a4,a4,0x3f
    80003228:	00170713          	addi	a4,a4,1
    8000322c:	00e78c63          	beq	a5,a4,80003244 <devintr+0x54>
    80003230:	01813083          	ld	ra,24(sp)
    80003234:	01013403          	ld	s0,16(sp)
    80003238:	00813483          	ld	s1,8(sp)
    8000323c:	02010113          	addi	sp,sp,32
    80003240:	00008067          	ret
    80003244:	00000097          	auipc	ra,0x0
    80003248:	c8c080e7          	jalr	-884(ra) # 80002ed0 <cpuid>
    8000324c:	06050663          	beqz	a0,800032b8 <devintr+0xc8>
    80003250:	144027f3          	csrr	a5,sip
    80003254:	ffd7f793          	andi	a5,a5,-3
    80003258:	14479073          	csrw	sip,a5
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	00813483          	ld	s1,8(sp)
    80003268:	00200513          	li	a0,2
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret
    80003274:	00000097          	auipc	ra,0x0
    80003278:	250080e7          	jalr	592(ra) # 800034c4 <plic_claim>
    8000327c:	00a00793          	li	a5,10
    80003280:	00050493          	mv	s1,a0
    80003284:	06f50663          	beq	a0,a5,800032f0 <devintr+0x100>
    80003288:	00100513          	li	a0,1
    8000328c:	fa0482e3          	beqz	s1,80003230 <devintr+0x40>
    80003290:	00048593          	mv	a1,s1
    80003294:	00002517          	auipc	a0,0x2
    80003298:	f1450513          	addi	a0,a0,-236 # 800051a8 <_ZZ12printIntegermE6digits+0xe0>
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	66c080e7          	jalr	1644(ra) # 80003908 <__printf>
    800032a4:	00048513          	mv	a0,s1
    800032a8:	00000097          	auipc	ra,0x0
    800032ac:	254080e7          	jalr	596(ra) # 800034fc <plic_complete>
    800032b0:	00100513          	li	a0,1
    800032b4:	f7dff06f          	j	80003230 <devintr+0x40>
    800032b8:	00004517          	auipc	a0,0x4
    800032bc:	8a850513          	addi	a0,a0,-1880 # 80006b60 <tickslock>
    800032c0:	00001097          	auipc	ra,0x1
    800032c4:	31c080e7          	jalr	796(ra) # 800045dc <acquire>
    800032c8:	00002717          	auipc	a4,0x2
    800032cc:	74c70713          	addi	a4,a4,1868 # 80005a14 <ticks>
    800032d0:	00072783          	lw	a5,0(a4)
    800032d4:	00004517          	auipc	a0,0x4
    800032d8:	88c50513          	addi	a0,a0,-1908 # 80006b60 <tickslock>
    800032dc:	0017879b          	addiw	a5,a5,1
    800032e0:	00f72023          	sw	a5,0(a4)
    800032e4:	00001097          	auipc	ra,0x1
    800032e8:	3c4080e7          	jalr	964(ra) # 800046a8 <release>
    800032ec:	f65ff06f          	j	80003250 <devintr+0x60>
    800032f0:	00001097          	auipc	ra,0x1
    800032f4:	f20080e7          	jalr	-224(ra) # 80004210 <uartintr>
    800032f8:	fadff06f          	j	800032a4 <devintr+0xb4>
    800032fc:	0000                	unimp
	...

0000000080003300 <kernelvec>:
    80003300:	f0010113          	addi	sp,sp,-256
    80003304:	00113023          	sd	ra,0(sp)
    80003308:	00213423          	sd	sp,8(sp)
    8000330c:	00313823          	sd	gp,16(sp)
    80003310:	00413c23          	sd	tp,24(sp)
    80003314:	02513023          	sd	t0,32(sp)
    80003318:	02613423          	sd	t1,40(sp)
    8000331c:	02713823          	sd	t2,48(sp)
    80003320:	02813c23          	sd	s0,56(sp)
    80003324:	04913023          	sd	s1,64(sp)
    80003328:	04a13423          	sd	a0,72(sp)
    8000332c:	04b13823          	sd	a1,80(sp)
    80003330:	04c13c23          	sd	a2,88(sp)
    80003334:	06d13023          	sd	a3,96(sp)
    80003338:	06e13423          	sd	a4,104(sp)
    8000333c:	06f13823          	sd	a5,112(sp)
    80003340:	07013c23          	sd	a6,120(sp)
    80003344:	09113023          	sd	a7,128(sp)
    80003348:	09213423          	sd	s2,136(sp)
    8000334c:	09313823          	sd	s3,144(sp)
    80003350:	09413c23          	sd	s4,152(sp)
    80003354:	0b513023          	sd	s5,160(sp)
    80003358:	0b613423          	sd	s6,168(sp)
    8000335c:	0b713823          	sd	s7,176(sp)
    80003360:	0b813c23          	sd	s8,184(sp)
    80003364:	0d913023          	sd	s9,192(sp)
    80003368:	0da13423          	sd	s10,200(sp)
    8000336c:	0db13823          	sd	s11,208(sp)
    80003370:	0dc13c23          	sd	t3,216(sp)
    80003374:	0fd13023          	sd	t4,224(sp)
    80003378:	0fe13423          	sd	t5,232(sp)
    8000337c:	0ff13823          	sd	t6,240(sp)
    80003380:	cd1ff0ef          	jal	ra,80003050 <kerneltrap>
    80003384:	00013083          	ld	ra,0(sp)
    80003388:	00813103          	ld	sp,8(sp)
    8000338c:	01013183          	ld	gp,16(sp)
    80003390:	02013283          	ld	t0,32(sp)
    80003394:	02813303          	ld	t1,40(sp)
    80003398:	03013383          	ld	t2,48(sp)
    8000339c:	03813403          	ld	s0,56(sp)
    800033a0:	04013483          	ld	s1,64(sp)
    800033a4:	04813503          	ld	a0,72(sp)
    800033a8:	05013583          	ld	a1,80(sp)
    800033ac:	05813603          	ld	a2,88(sp)
    800033b0:	06013683          	ld	a3,96(sp)
    800033b4:	06813703          	ld	a4,104(sp)
    800033b8:	07013783          	ld	a5,112(sp)
    800033bc:	07813803          	ld	a6,120(sp)
    800033c0:	08013883          	ld	a7,128(sp)
    800033c4:	08813903          	ld	s2,136(sp)
    800033c8:	09013983          	ld	s3,144(sp)
    800033cc:	09813a03          	ld	s4,152(sp)
    800033d0:	0a013a83          	ld	s5,160(sp)
    800033d4:	0a813b03          	ld	s6,168(sp)
    800033d8:	0b013b83          	ld	s7,176(sp)
    800033dc:	0b813c03          	ld	s8,184(sp)
    800033e0:	0c013c83          	ld	s9,192(sp)
    800033e4:	0c813d03          	ld	s10,200(sp)
    800033e8:	0d013d83          	ld	s11,208(sp)
    800033ec:	0d813e03          	ld	t3,216(sp)
    800033f0:	0e013e83          	ld	t4,224(sp)
    800033f4:	0e813f03          	ld	t5,232(sp)
    800033f8:	0f013f83          	ld	t6,240(sp)
    800033fc:	10010113          	addi	sp,sp,256
    80003400:	10200073          	sret
    80003404:	00000013          	nop
    80003408:	00000013          	nop
    8000340c:	00000013          	nop

0000000080003410 <timervec>:
    80003410:	34051573          	csrrw	a0,mscratch,a0
    80003414:	00b53023          	sd	a1,0(a0)
    80003418:	00c53423          	sd	a2,8(a0)
    8000341c:	00d53823          	sd	a3,16(a0)
    80003420:	01853583          	ld	a1,24(a0)
    80003424:	02053603          	ld	a2,32(a0)
    80003428:	0005b683          	ld	a3,0(a1)
    8000342c:	00c686b3          	add	a3,a3,a2
    80003430:	00d5b023          	sd	a3,0(a1)
    80003434:	00200593          	li	a1,2
    80003438:	14459073          	csrw	sip,a1
    8000343c:	01053683          	ld	a3,16(a0)
    80003440:	00853603          	ld	a2,8(a0)
    80003444:	00053583          	ld	a1,0(a0)
    80003448:	34051573          	csrrw	a0,mscratch,a0
    8000344c:	30200073          	mret

0000000080003450 <plicinit>:
    80003450:	ff010113          	addi	sp,sp,-16
    80003454:	00813423          	sd	s0,8(sp)
    80003458:	01010413          	addi	s0,sp,16
    8000345c:	00813403          	ld	s0,8(sp)
    80003460:	0c0007b7          	lui	a5,0xc000
    80003464:	00100713          	li	a4,1
    80003468:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000346c:	00e7a223          	sw	a4,4(a5)
    80003470:	01010113          	addi	sp,sp,16
    80003474:	00008067          	ret

0000000080003478 <plicinithart>:
    80003478:	ff010113          	addi	sp,sp,-16
    8000347c:	00813023          	sd	s0,0(sp)
    80003480:	00113423          	sd	ra,8(sp)
    80003484:	01010413          	addi	s0,sp,16
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	a48080e7          	jalr	-1464(ra) # 80002ed0 <cpuid>
    80003490:	0085171b          	slliw	a4,a0,0x8
    80003494:	0c0027b7          	lui	a5,0xc002
    80003498:	00e787b3          	add	a5,a5,a4
    8000349c:	40200713          	li	a4,1026
    800034a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800034a4:	00813083          	ld	ra,8(sp)
    800034a8:	00013403          	ld	s0,0(sp)
    800034ac:	00d5151b          	slliw	a0,a0,0xd
    800034b0:	0c2017b7          	lui	a5,0xc201
    800034b4:	00a78533          	add	a0,a5,a0
    800034b8:	00052023          	sw	zero,0(a0)
    800034bc:	01010113          	addi	sp,sp,16
    800034c0:	00008067          	ret

00000000800034c4 <plic_claim>:
    800034c4:	ff010113          	addi	sp,sp,-16
    800034c8:	00813023          	sd	s0,0(sp)
    800034cc:	00113423          	sd	ra,8(sp)
    800034d0:	01010413          	addi	s0,sp,16
    800034d4:	00000097          	auipc	ra,0x0
    800034d8:	9fc080e7          	jalr	-1540(ra) # 80002ed0 <cpuid>
    800034dc:	00813083          	ld	ra,8(sp)
    800034e0:	00013403          	ld	s0,0(sp)
    800034e4:	00d5151b          	slliw	a0,a0,0xd
    800034e8:	0c2017b7          	lui	a5,0xc201
    800034ec:	00a78533          	add	a0,a5,a0
    800034f0:	00452503          	lw	a0,4(a0)
    800034f4:	01010113          	addi	sp,sp,16
    800034f8:	00008067          	ret

00000000800034fc <plic_complete>:
    800034fc:	fe010113          	addi	sp,sp,-32
    80003500:	00813823          	sd	s0,16(sp)
    80003504:	00913423          	sd	s1,8(sp)
    80003508:	00113c23          	sd	ra,24(sp)
    8000350c:	02010413          	addi	s0,sp,32
    80003510:	00050493          	mv	s1,a0
    80003514:	00000097          	auipc	ra,0x0
    80003518:	9bc080e7          	jalr	-1604(ra) # 80002ed0 <cpuid>
    8000351c:	01813083          	ld	ra,24(sp)
    80003520:	01013403          	ld	s0,16(sp)
    80003524:	00d5179b          	slliw	a5,a0,0xd
    80003528:	0c201737          	lui	a4,0xc201
    8000352c:	00f707b3          	add	a5,a4,a5
    80003530:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003534:	00813483          	ld	s1,8(sp)
    80003538:	02010113          	addi	sp,sp,32
    8000353c:	00008067          	ret

0000000080003540 <consolewrite>:
    80003540:	fb010113          	addi	sp,sp,-80
    80003544:	04813023          	sd	s0,64(sp)
    80003548:	04113423          	sd	ra,72(sp)
    8000354c:	02913c23          	sd	s1,56(sp)
    80003550:	03213823          	sd	s2,48(sp)
    80003554:	03313423          	sd	s3,40(sp)
    80003558:	03413023          	sd	s4,32(sp)
    8000355c:	01513c23          	sd	s5,24(sp)
    80003560:	05010413          	addi	s0,sp,80
    80003564:	06c05c63          	blez	a2,800035dc <consolewrite+0x9c>
    80003568:	00060993          	mv	s3,a2
    8000356c:	00050a13          	mv	s4,a0
    80003570:	00058493          	mv	s1,a1
    80003574:	00000913          	li	s2,0
    80003578:	fff00a93          	li	s5,-1
    8000357c:	01c0006f          	j	80003598 <consolewrite+0x58>
    80003580:	fbf44503          	lbu	a0,-65(s0)
    80003584:	0019091b          	addiw	s2,s2,1
    80003588:	00148493          	addi	s1,s1,1
    8000358c:	00001097          	auipc	ra,0x1
    80003590:	a9c080e7          	jalr	-1380(ra) # 80004028 <uartputc>
    80003594:	03298063          	beq	s3,s2,800035b4 <consolewrite+0x74>
    80003598:	00048613          	mv	a2,s1
    8000359c:	00100693          	li	a3,1
    800035a0:	000a0593          	mv	a1,s4
    800035a4:	fbf40513          	addi	a0,s0,-65
    800035a8:	00000097          	auipc	ra,0x0
    800035ac:	9e0080e7          	jalr	-1568(ra) # 80002f88 <either_copyin>
    800035b0:	fd5518e3          	bne	a0,s5,80003580 <consolewrite+0x40>
    800035b4:	04813083          	ld	ra,72(sp)
    800035b8:	04013403          	ld	s0,64(sp)
    800035bc:	03813483          	ld	s1,56(sp)
    800035c0:	02813983          	ld	s3,40(sp)
    800035c4:	02013a03          	ld	s4,32(sp)
    800035c8:	01813a83          	ld	s5,24(sp)
    800035cc:	00090513          	mv	a0,s2
    800035d0:	03013903          	ld	s2,48(sp)
    800035d4:	05010113          	addi	sp,sp,80
    800035d8:	00008067          	ret
    800035dc:	00000913          	li	s2,0
    800035e0:	fd5ff06f          	j	800035b4 <consolewrite+0x74>

00000000800035e4 <consoleread>:
    800035e4:	f9010113          	addi	sp,sp,-112
    800035e8:	06813023          	sd	s0,96(sp)
    800035ec:	04913c23          	sd	s1,88(sp)
    800035f0:	05213823          	sd	s2,80(sp)
    800035f4:	05313423          	sd	s3,72(sp)
    800035f8:	05413023          	sd	s4,64(sp)
    800035fc:	03513c23          	sd	s5,56(sp)
    80003600:	03613823          	sd	s6,48(sp)
    80003604:	03713423          	sd	s7,40(sp)
    80003608:	03813023          	sd	s8,32(sp)
    8000360c:	06113423          	sd	ra,104(sp)
    80003610:	01913c23          	sd	s9,24(sp)
    80003614:	07010413          	addi	s0,sp,112
    80003618:	00060b93          	mv	s7,a2
    8000361c:	00050913          	mv	s2,a0
    80003620:	00058c13          	mv	s8,a1
    80003624:	00060b1b          	sext.w	s6,a2
    80003628:	00003497          	auipc	s1,0x3
    8000362c:	55048493          	addi	s1,s1,1360 # 80006b78 <cons>
    80003630:	00400993          	li	s3,4
    80003634:	fff00a13          	li	s4,-1
    80003638:	00a00a93          	li	s5,10
    8000363c:	05705e63          	blez	s7,80003698 <consoleread+0xb4>
    80003640:	09c4a703          	lw	a4,156(s1)
    80003644:	0984a783          	lw	a5,152(s1)
    80003648:	0007071b          	sext.w	a4,a4
    8000364c:	08e78463          	beq	a5,a4,800036d4 <consoleread+0xf0>
    80003650:	07f7f713          	andi	a4,a5,127
    80003654:	00e48733          	add	a4,s1,a4
    80003658:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000365c:	0017869b          	addiw	a3,a5,1
    80003660:	08d4ac23          	sw	a3,152(s1)
    80003664:	00070c9b          	sext.w	s9,a4
    80003668:	0b370663          	beq	a4,s3,80003714 <consoleread+0x130>
    8000366c:	00100693          	li	a3,1
    80003670:	f9f40613          	addi	a2,s0,-97
    80003674:	000c0593          	mv	a1,s8
    80003678:	00090513          	mv	a0,s2
    8000367c:	f8e40fa3          	sb	a4,-97(s0)
    80003680:	00000097          	auipc	ra,0x0
    80003684:	8bc080e7          	jalr	-1860(ra) # 80002f3c <either_copyout>
    80003688:	01450863          	beq	a0,s4,80003698 <consoleread+0xb4>
    8000368c:	001c0c13          	addi	s8,s8,1
    80003690:	fffb8b9b          	addiw	s7,s7,-1
    80003694:	fb5c94e3          	bne	s9,s5,8000363c <consoleread+0x58>
    80003698:	000b851b          	sext.w	a0,s7
    8000369c:	06813083          	ld	ra,104(sp)
    800036a0:	06013403          	ld	s0,96(sp)
    800036a4:	05813483          	ld	s1,88(sp)
    800036a8:	05013903          	ld	s2,80(sp)
    800036ac:	04813983          	ld	s3,72(sp)
    800036b0:	04013a03          	ld	s4,64(sp)
    800036b4:	03813a83          	ld	s5,56(sp)
    800036b8:	02813b83          	ld	s7,40(sp)
    800036bc:	02013c03          	ld	s8,32(sp)
    800036c0:	01813c83          	ld	s9,24(sp)
    800036c4:	40ab053b          	subw	a0,s6,a0
    800036c8:	03013b03          	ld	s6,48(sp)
    800036cc:	07010113          	addi	sp,sp,112
    800036d0:	00008067          	ret
    800036d4:	00001097          	auipc	ra,0x1
    800036d8:	1d8080e7          	jalr	472(ra) # 800048ac <push_on>
    800036dc:	0984a703          	lw	a4,152(s1)
    800036e0:	09c4a783          	lw	a5,156(s1)
    800036e4:	0007879b          	sext.w	a5,a5
    800036e8:	fef70ce3          	beq	a4,a5,800036e0 <consoleread+0xfc>
    800036ec:	00001097          	auipc	ra,0x1
    800036f0:	234080e7          	jalr	564(ra) # 80004920 <pop_on>
    800036f4:	0984a783          	lw	a5,152(s1)
    800036f8:	07f7f713          	andi	a4,a5,127
    800036fc:	00e48733          	add	a4,s1,a4
    80003700:	01874703          	lbu	a4,24(a4)
    80003704:	0017869b          	addiw	a3,a5,1
    80003708:	08d4ac23          	sw	a3,152(s1)
    8000370c:	00070c9b          	sext.w	s9,a4
    80003710:	f5371ee3          	bne	a4,s3,8000366c <consoleread+0x88>
    80003714:	000b851b          	sext.w	a0,s7
    80003718:	f96bf2e3          	bgeu	s7,s6,8000369c <consoleread+0xb8>
    8000371c:	08f4ac23          	sw	a5,152(s1)
    80003720:	f7dff06f          	j	8000369c <consoleread+0xb8>

0000000080003724 <consputc>:
    80003724:	10000793          	li	a5,256
    80003728:	00f50663          	beq	a0,a5,80003734 <consputc+0x10>
    8000372c:	00001317          	auipc	t1,0x1
    80003730:	9f430067          	jr	-1548(t1) # 80004120 <uartputc_sync>
    80003734:	ff010113          	addi	sp,sp,-16
    80003738:	00113423          	sd	ra,8(sp)
    8000373c:	00813023          	sd	s0,0(sp)
    80003740:	01010413          	addi	s0,sp,16
    80003744:	00800513          	li	a0,8
    80003748:	00001097          	auipc	ra,0x1
    8000374c:	9d8080e7          	jalr	-1576(ra) # 80004120 <uartputc_sync>
    80003750:	02000513          	li	a0,32
    80003754:	00001097          	auipc	ra,0x1
    80003758:	9cc080e7          	jalr	-1588(ra) # 80004120 <uartputc_sync>
    8000375c:	00013403          	ld	s0,0(sp)
    80003760:	00813083          	ld	ra,8(sp)
    80003764:	00800513          	li	a0,8
    80003768:	01010113          	addi	sp,sp,16
    8000376c:	00001317          	auipc	t1,0x1
    80003770:	9b430067          	jr	-1612(t1) # 80004120 <uartputc_sync>

0000000080003774 <consoleintr>:
    80003774:	fe010113          	addi	sp,sp,-32
    80003778:	00813823          	sd	s0,16(sp)
    8000377c:	00913423          	sd	s1,8(sp)
    80003780:	01213023          	sd	s2,0(sp)
    80003784:	00113c23          	sd	ra,24(sp)
    80003788:	02010413          	addi	s0,sp,32
    8000378c:	00003917          	auipc	s2,0x3
    80003790:	3ec90913          	addi	s2,s2,1004 # 80006b78 <cons>
    80003794:	00050493          	mv	s1,a0
    80003798:	00090513          	mv	a0,s2
    8000379c:	00001097          	auipc	ra,0x1
    800037a0:	e40080e7          	jalr	-448(ra) # 800045dc <acquire>
    800037a4:	02048c63          	beqz	s1,800037dc <consoleintr+0x68>
    800037a8:	0a092783          	lw	a5,160(s2)
    800037ac:	09892703          	lw	a4,152(s2)
    800037b0:	07f00693          	li	a3,127
    800037b4:	40e7873b          	subw	a4,a5,a4
    800037b8:	02e6e263          	bltu	a3,a4,800037dc <consoleintr+0x68>
    800037bc:	00d00713          	li	a4,13
    800037c0:	04e48063          	beq	s1,a4,80003800 <consoleintr+0x8c>
    800037c4:	07f7f713          	andi	a4,a5,127
    800037c8:	00e90733          	add	a4,s2,a4
    800037cc:	0017879b          	addiw	a5,a5,1
    800037d0:	0af92023          	sw	a5,160(s2)
    800037d4:	00970c23          	sb	s1,24(a4)
    800037d8:	08f92e23          	sw	a5,156(s2)
    800037dc:	01013403          	ld	s0,16(sp)
    800037e0:	01813083          	ld	ra,24(sp)
    800037e4:	00813483          	ld	s1,8(sp)
    800037e8:	00013903          	ld	s2,0(sp)
    800037ec:	00003517          	auipc	a0,0x3
    800037f0:	38c50513          	addi	a0,a0,908 # 80006b78 <cons>
    800037f4:	02010113          	addi	sp,sp,32
    800037f8:	00001317          	auipc	t1,0x1
    800037fc:	eb030067          	jr	-336(t1) # 800046a8 <release>
    80003800:	00a00493          	li	s1,10
    80003804:	fc1ff06f          	j	800037c4 <consoleintr+0x50>

0000000080003808 <consoleinit>:
    80003808:	fe010113          	addi	sp,sp,-32
    8000380c:	00113c23          	sd	ra,24(sp)
    80003810:	00813823          	sd	s0,16(sp)
    80003814:	00913423          	sd	s1,8(sp)
    80003818:	02010413          	addi	s0,sp,32
    8000381c:	00003497          	auipc	s1,0x3
    80003820:	35c48493          	addi	s1,s1,860 # 80006b78 <cons>
    80003824:	00048513          	mv	a0,s1
    80003828:	00002597          	auipc	a1,0x2
    8000382c:	9d858593          	addi	a1,a1,-1576 # 80005200 <_ZZ12printIntegermE6digits+0x138>
    80003830:	00001097          	auipc	ra,0x1
    80003834:	d88080e7          	jalr	-632(ra) # 800045b8 <initlock>
    80003838:	00000097          	auipc	ra,0x0
    8000383c:	7ac080e7          	jalr	1964(ra) # 80003fe4 <uartinit>
    80003840:	01813083          	ld	ra,24(sp)
    80003844:	01013403          	ld	s0,16(sp)
    80003848:	00000797          	auipc	a5,0x0
    8000384c:	d9c78793          	addi	a5,a5,-612 # 800035e4 <consoleread>
    80003850:	0af4bc23          	sd	a5,184(s1)
    80003854:	00000797          	auipc	a5,0x0
    80003858:	cec78793          	addi	a5,a5,-788 # 80003540 <consolewrite>
    8000385c:	0cf4b023          	sd	a5,192(s1)
    80003860:	00813483          	ld	s1,8(sp)
    80003864:	02010113          	addi	sp,sp,32
    80003868:	00008067          	ret

000000008000386c <console_read>:
    8000386c:	ff010113          	addi	sp,sp,-16
    80003870:	00813423          	sd	s0,8(sp)
    80003874:	01010413          	addi	s0,sp,16
    80003878:	00813403          	ld	s0,8(sp)
    8000387c:	00003317          	auipc	t1,0x3
    80003880:	3b433303          	ld	t1,948(t1) # 80006c30 <devsw+0x10>
    80003884:	01010113          	addi	sp,sp,16
    80003888:	00030067          	jr	t1

000000008000388c <console_write>:
    8000388c:	ff010113          	addi	sp,sp,-16
    80003890:	00813423          	sd	s0,8(sp)
    80003894:	01010413          	addi	s0,sp,16
    80003898:	00813403          	ld	s0,8(sp)
    8000389c:	00003317          	auipc	t1,0x3
    800038a0:	39c33303          	ld	t1,924(t1) # 80006c38 <devsw+0x18>
    800038a4:	01010113          	addi	sp,sp,16
    800038a8:	00030067          	jr	t1

00000000800038ac <panic>:
    800038ac:	fe010113          	addi	sp,sp,-32
    800038b0:	00113c23          	sd	ra,24(sp)
    800038b4:	00813823          	sd	s0,16(sp)
    800038b8:	00913423          	sd	s1,8(sp)
    800038bc:	02010413          	addi	s0,sp,32
    800038c0:	00050493          	mv	s1,a0
    800038c4:	00002517          	auipc	a0,0x2
    800038c8:	94450513          	addi	a0,a0,-1724 # 80005208 <_ZZ12printIntegermE6digits+0x140>
    800038cc:	00003797          	auipc	a5,0x3
    800038d0:	4007a623          	sw	zero,1036(a5) # 80006cd8 <pr+0x18>
    800038d4:	00000097          	auipc	ra,0x0
    800038d8:	034080e7          	jalr	52(ra) # 80003908 <__printf>
    800038dc:	00048513          	mv	a0,s1
    800038e0:	00000097          	auipc	ra,0x0
    800038e4:	028080e7          	jalr	40(ra) # 80003908 <__printf>
    800038e8:	00002517          	auipc	a0,0x2
    800038ec:	90050513          	addi	a0,a0,-1792 # 800051e8 <_ZZ12printIntegermE6digits+0x120>
    800038f0:	00000097          	auipc	ra,0x0
    800038f4:	018080e7          	jalr	24(ra) # 80003908 <__printf>
    800038f8:	00100793          	li	a5,1
    800038fc:	00002717          	auipc	a4,0x2
    80003900:	10f72e23          	sw	a5,284(a4) # 80005a18 <panicked>
    80003904:	0000006f          	j	80003904 <panic+0x58>

0000000080003908 <__printf>:
    80003908:	f3010113          	addi	sp,sp,-208
    8000390c:	08813023          	sd	s0,128(sp)
    80003910:	07313423          	sd	s3,104(sp)
    80003914:	09010413          	addi	s0,sp,144
    80003918:	05813023          	sd	s8,64(sp)
    8000391c:	08113423          	sd	ra,136(sp)
    80003920:	06913c23          	sd	s1,120(sp)
    80003924:	07213823          	sd	s2,112(sp)
    80003928:	07413023          	sd	s4,96(sp)
    8000392c:	05513c23          	sd	s5,88(sp)
    80003930:	05613823          	sd	s6,80(sp)
    80003934:	05713423          	sd	s7,72(sp)
    80003938:	03913c23          	sd	s9,56(sp)
    8000393c:	03a13823          	sd	s10,48(sp)
    80003940:	03b13423          	sd	s11,40(sp)
    80003944:	00003317          	auipc	t1,0x3
    80003948:	37c30313          	addi	t1,t1,892 # 80006cc0 <pr>
    8000394c:	01832c03          	lw	s8,24(t1)
    80003950:	00b43423          	sd	a1,8(s0)
    80003954:	00c43823          	sd	a2,16(s0)
    80003958:	00d43c23          	sd	a3,24(s0)
    8000395c:	02e43023          	sd	a4,32(s0)
    80003960:	02f43423          	sd	a5,40(s0)
    80003964:	03043823          	sd	a6,48(s0)
    80003968:	03143c23          	sd	a7,56(s0)
    8000396c:	00050993          	mv	s3,a0
    80003970:	4a0c1663          	bnez	s8,80003e1c <__printf+0x514>
    80003974:	60098c63          	beqz	s3,80003f8c <__printf+0x684>
    80003978:	0009c503          	lbu	a0,0(s3)
    8000397c:	00840793          	addi	a5,s0,8
    80003980:	f6f43c23          	sd	a5,-136(s0)
    80003984:	00000493          	li	s1,0
    80003988:	22050063          	beqz	a0,80003ba8 <__printf+0x2a0>
    8000398c:	00002a37          	lui	s4,0x2
    80003990:	00018ab7          	lui	s5,0x18
    80003994:	000f4b37          	lui	s6,0xf4
    80003998:	00989bb7          	lui	s7,0x989
    8000399c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800039a0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800039a4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800039a8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800039ac:	00148c9b          	addiw	s9,s1,1
    800039b0:	02500793          	li	a5,37
    800039b4:	01998933          	add	s2,s3,s9
    800039b8:	38f51263          	bne	a0,a5,80003d3c <__printf+0x434>
    800039bc:	00094783          	lbu	a5,0(s2)
    800039c0:	00078c9b          	sext.w	s9,a5
    800039c4:	1e078263          	beqz	a5,80003ba8 <__printf+0x2a0>
    800039c8:	0024849b          	addiw	s1,s1,2
    800039cc:	07000713          	li	a4,112
    800039d0:	00998933          	add	s2,s3,s1
    800039d4:	38e78a63          	beq	a5,a4,80003d68 <__printf+0x460>
    800039d8:	20f76863          	bltu	a4,a5,80003be8 <__printf+0x2e0>
    800039dc:	42a78863          	beq	a5,a0,80003e0c <__printf+0x504>
    800039e0:	06400713          	li	a4,100
    800039e4:	40e79663          	bne	a5,a4,80003df0 <__printf+0x4e8>
    800039e8:	f7843783          	ld	a5,-136(s0)
    800039ec:	0007a603          	lw	a2,0(a5)
    800039f0:	00878793          	addi	a5,a5,8
    800039f4:	f6f43c23          	sd	a5,-136(s0)
    800039f8:	42064a63          	bltz	a2,80003e2c <__printf+0x524>
    800039fc:	00a00713          	li	a4,10
    80003a00:	02e677bb          	remuw	a5,a2,a4
    80003a04:	00002d97          	auipc	s11,0x2
    80003a08:	82cd8d93          	addi	s11,s11,-2004 # 80005230 <digits>
    80003a0c:	00900593          	li	a1,9
    80003a10:	0006051b          	sext.w	a0,a2
    80003a14:	00000c93          	li	s9,0
    80003a18:	02079793          	slli	a5,a5,0x20
    80003a1c:	0207d793          	srli	a5,a5,0x20
    80003a20:	00fd87b3          	add	a5,s11,a5
    80003a24:	0007c783          	lbu	a5,0(a5)
    80003a28:	02e656bb          	divuw	a3,a2,a4
    80003a2c:	f8f40023          	sb	a5,-128(s0)
    80003a30:	14c5d863          	bge	a1,a2,80003b80 <__printf+0x278>
    80003a34:	06300593          	li	a1,99
    80003a38:	00100c93          	li	s9,1
    80003a3c:	02e6f7bb          	remuw	a5,a3,a4
    80003a40:	02079793          	slli	a5,a5,0x20
    80003a44:	0207d793          	srli	a5,a5,0x20
    80003a48:	00fd87b3          	add	a5,s11,a5
    80003a4c:	0007c783          	lbu	a5,0(a5)
    80003a50:	02e6d73b          	divuw	a4,a3,a4
    80003a54:	f8f400a3          	sb	a5,-127(s0)
    80003a58:	12a5f463          	bgeu	a1,a0,80003b80 <__printf+0x278>
    80003a5c:	00a00693          	li	a3,10
    80003a60:	00900593          	li	a1,9
    80003a64:	02d777bb          	remuw	a5,a4,a3
    80003a68:	02079793          	slli	a5,a5,0x20
    80003a6c:	0207d793          	srli	a5,a5,0x20
    80003a70:	00fd87b3          	add	a5,s11,a5
    80003a74:	0007c503          	lbu	a0,0(a5)
    80003a78:	02d757bb          	divuw	a5,a4,a3
    80003a7c:	f8a40123          	sb	a0,-126(s0)
    80003a80:	48e5f263          	bgeu	a1,a4,80003f04 <__printf+0x5fc>
    80003a84:	06300513          	li	a0,99
    80003a88:	02d7f5bb          	remuw	a1,a5,a3
    80003a8c:	02059593          	slli	a1,a1,0x20
    80003a90:	0205d593          	srli	a1,a1,0x20
    80003a94:	00bd85b3          	add	a1,s11,a1
    80003a98:	0005c583          	lbu	a1,0(a1)
    80003a9c:	02d7d7bb          	divuw	a5,a5,a3
    80003aa0:	f8b401a3          	sb	a1,-125(s0)
    80003aa4:	48e57263          	bgeu	a0,a4,80003f28 <__printf+0x620>
    80003aa8:	3e700513          	li	a0,999
    80003aac:	02d7f5bb          	remuw	a1,a5,a3
    80003ab0:	02059593          	slli	a1,a1,0x20
    80003ab4:	0205d593          	srli	a1,a1,0x20
    80003ab8:	00bd85b3          	add	a1,s11,a1
    80003abc:	0005c583          	lbu	a1,0(a1)
    80003ac0:	02d7d7bb          	divuw	a5,a5,a3
    80003ac4:	f8b40223          	sb	a1,-124(s0)
    80003ac8:	46e57663          	bgeu	a0,a4,80003f34 <__printf+0x62c>
    80003acc:	02d7f5bb          	remuw	a1,a5,a3
    80003ad0:	02059593          	slli	a1,a1,0x20
    80003ad4:	0205d593          	srli	a1,a1,0x20
    80003ad8:	00bd85b3          	add	a1,s11,a1
    80003adc:	0005c583          	lbu	a1,0(a1)
    80003ae0:	02d7d7bb          	divuw	a5,a5,a3
    80003ae4:	f8b402a3          	sb	a1,-123(s0)
    80003ae8:	46ea7863          	bgeu	s4,a4,80003f58 <__printf+0x650>
    80003aec:	02d7f5bb          	remuw	a1,a5,a3
    80003af0:	02059593          	slli	a1,a1,0x20
    80003af4:	0205d593          	srli	a1,a1,0x20
    80003af8:	00bd85b3          	add	a1,s11,a1
    80003afc:	0005c583          	lbu	a1,0(a1)
    80003b00:	02d7d7bb          	divuw	a5,a5,a3
    80003b04:	f8b40323          	sb	a1,-122(s0)
    80003b08:	3eeaf863          	bgeu	s5,a4,80003ef8 <__printf+0x5f0>
    80003b0c:	02d7f5bb          	remuw	a1,a5,a3
    80003b10:	02059593          	slli	a1,a1,0x20
    80003b14:	0205d593          	srli	a1,a1,0x20
    80003b18:	00bd85b3          	add	a1,s11,a1
    80003b1c:	0005c583          	lbu	a1,0(a1)
    80003b20:	02d7d7bb          	divuw	a5,a5,a3
    80003b24:	f8b403a3          	sb	a1,-121(s0)
    80003b28:	42eb7e63          	bgeu	s6,a4,80003f64 <__printf+0x65c>
    80003b2c:	02d7f5bb          	remuw	a1,a5,a3
    80003b30:	02059593          	slli	a1,a1,0x20
    80003b34:	0205d593          	srli	a1,a1,0x20
    80003b38:	00bd85b3          	add	a1,s11,a1
    80003b3c:	0005c583          	lbu	a1,0(a1)
    80003b40:	02d7d7bb          	divuw	a5,a5,a3
    80003b44:	f8b40423          	sb	a1,-120(s0)
    80003b48:	42ebfc63          	bgeu	s7,a4,80003f80 <__printf+0x678>
    80003b4c:	02079793          	slli	a5,a5,0x20
    80003b50:	0207d793          	srli	a5,a5,0x20
    80003b54:	00fd8db3          	add	s11,s11,a5
    80003b58:	000dc703          	lbu	a4,0(s11)
    80003b5c:	00a00793          	li	a5,10
    80003b60:	00900c93          	li	s9,9
    80003b64:	f8e404a3          	sb	a4,-119(s0)
    80003b68:	00065c63          	bgez	a2,80003b80 <__printf+0x278>
    80003b6c:	f9040713          	addi	a4,s0,-112
    80003b70:	00f70733          	add	a4,a4,a5
    80003b74:	02d00693          	li	a3,45
    80003b78:	fed70823          	sb	a3,-16(a4)
    80003b7c:	00078c93          	mv	s9,a5
    80003b80:	f8040793          	addi	a5,s0,-128
    80003b84:	01978cb3          	add	s9,a5,s9
    80003b88:	f7f40d13          	addi	s10,s0,-129
    80003b8c:	000cc503          	lbu	a0,0(s9)
    80003b90:	fffc8c93          	addi	s9,s9,-1
    80003b94:	00000097          	auipc	ra,0x0
    80003b98:	b90080e7          	jalr	-1136(ra) # 80003724 <consputc>
    80003b9c:	ffac98e3          	bne	s9,s10,80003b8c <__printf+0x284>
    80003ba0:	00094503          	lbu	a0,0(s2)
    80003ba4:	e00514e3          	bnez	a0,800039ac <__printf+0xa4>
    80003ba8:	1a0c1663          	bnez	s8,80003d54 <__printf+0x44c>
    80003bac:	08813083          	ld	ra,136(sp)
    80003bb0:	08013403          	ld	s0,128(sp)
    80003bb4:	07813483          	ld	s1,120(sp)
    80003bb8:	07013903          	ld	s2,112(sp)
    80003bbc:	06813983          	ld	s3,104(sp)
    80003bc0:	06013a03          	ld	s4,96(sp)
    80003bc4:	05813a83          	ld	s5,88(sp)
    80003bc8:	05013b03          	ld	s6,80(sp)
    80003bcc:	04813b83          	ld	s7,72(sp)
    80003bd0:	04013c03          	ld	s8,64(sp)
    80003bd4:	03813c83          	ld	s9,56(sp)
    80003bd8:	03013d03          	ld	s10,48(sp)
    80003bdc:	02813d83          	ld	s11,40(sp)
    80003be0:	0d010113          	addi	sp,sp,208
    80003be4:	00008067          	ret
    80003be8:	07300713          	li	a4,115
    80003bec:	1ce78a63          	beq	a5,a4,80003dc0 <__printf+0x4b8>
    80003bf0:	07800713          	li	a4,120
    80003bf4:	1ee79e63          	bne	a5,a4,80003df0 <__printf+0x4e8>
    80003bf8:	f7843783          	ld	a5,-136(s0)
    80003bfc:	0007a703          	lw	a4,0(a5)
    80003c00:	00878793          	addi	a5,a5,8
    80003c04:	f6f43c23          	sd	a5,-136(s0)
    80003c08:	28074263          	bltz	a4,80003e8c <__printf+0x584>
    80003c0c:	00001d97          	auipc	s11,0x1
    80003c10:	624d8d93          	addi	s11,s11,1572 # 80005230 <digits>
    80003c14:	00f77793          	andi	a5,a4,15
    80003c18:	00fd87b3          	add	a5,s11,a5
    80003c1c:	0007c683          	lbu	a3,0(a5)
    80003c20:	00f00613          	li	a2,15
    80003c24:	0007079b          	sext.w	a5,a4
    80003c28:	f8d40023          	sb	a3,-128(s0)
    80003c2c:	0047559b          	srliw	a1,a4,0x4
    80003c30:	0047569b          	srliw	a3,a4,0x4
    80003c34:	00000c93          	li	s9,0
    80003c38:	0ee65063          	bge	a2,a4,80003d18 <__printf+0x410>
    80003c3c:	00f6f693          	andi	a3,a3,15
    80003c40:	00dd86b3          	add	a3,s11,a3
    80003c44:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003c48:	0087d79b          	srliw	a5,a5,0x8
    80003c4c:	00100c93          	li	s9,1
    80003c50:	f8d400a3          	sb	a3,-127(s0)
    80003c54:	0cb67263          	bgeu	a2,a1,80003d18 <__printf+0x410>
    80003c58:	00f7f693          	andi	a3,a5,15
    80003c5c:	00dd86b3          	add	a3,s11,a3
    80003c60:	0006c583          	lbu	a1,0(a3)
    80003c64:	00f00613          	li	a2,15
    80003c68:	0047d69b          	srliw	a3,a5,0x4
    80003c6c:	f8b40123          	sb	a1,-126(s0)
    80003c70:	0047d593          	srli	a1,a5,0x4
    80003c74:	28f67e63          	bgeu	a2,a5,80003f10 <__printf+0x608>
    80003c78:	00f6f693          	andi	a3,a3,15
    80003c7c:	00dd86b3          	add	a3,s11,a3
    80003c80:	0006c503          	lbu	a0,0(a3)
    80003c84:	0087d813          	srli	a6,a5,0x8
    80003c88:	0087d69b          	srliw	a3,a5,0x8
    80003c8c:	f8a401a3          	sb	a0,-125(s0)
    80003c90:	28b67663          	bgeu	a2,a1,80003f1c <__printf+0x614>
    80003c94:	00f6f693          	andi	a3,a3,15
    80003c98:	00dd86b3          	add	a3,s11,a3
    80003c9c:	0006c583          	lbu	a1,0(a3)
    80003ca0:	00c7d513          	srli	a0,a5,0xc
    80003ca4:	00c7d69b          	srliw	a3,a5,0xc
    80003ca8:	f8b40223          	sb	a1,-124(s0)
    80003cac:	29067a63          	bgeu	a2,a6,80003f40 <__printf+0x638>
    80003cb0:	00f6f693          	andi	a3,a3,15
    80003cb4:	00dd86b3          	add	a3,s11,a3
    80003cb8:	0006c583          	lbu	a1,0(a3)
    80003cbc:	0107d813          	srli	a6,a5,0x10
    80003cc0:	0107d69b          	srliw	a3,a5,0x10
    80003cc4:	f8b402a3          	sb	a1,-123(s0)
    80003cc8:	28a67263          	bgeu	a2,a0,80003f4c <__printf+0x644>
    80003ccc:	00f6f693          	andi	a3,a3,15
    80003cd0:	00dd86b3          	add	a3,s11,a3
    80003cd4:	0006c683          	lbu	a3,0(a3)
    80003cd8:	0147d79b          	srliw	a5,a5,0x14
    80003cdc:	f8d40323          	sb	a3,-122(s0)
    80003ce0:	21067663          	bgeu	a2,a6,80003eec <__printf+0x5e4>
    80003ce4:	02079793          	slli	a5,a5,0x20
    80003ce8:	0207d793          	srli	a5,a5,0x20
    80003cec:	00fd8db3          	add	s11,s11,a5
    80003cf0:	000dc683          	lbu	a3,0(s11)
    80003cf4:	00800793          	li	a5,8
    80003cf8:	00700c93          	li	s9,7
    80003cfc:	f8d403a3          	sb	a3,-121(s0)
    80003d00:	00075c63          	bgez	a4,80003d18 <__printf+0x410>
    80003d04:	f9040713          	addi	a4,s0,-112
    80003d08:	00f70733          	add	a4,a4,a5
    80003d0c:	02d00693          	li	a3,45
    80003d10:	fed70823          	sb	a3,-16(a4)
    80003d14:	00078c93          	mv	s9,a5
    80003d18:	f8040793          	addi	a5,s0,-128
    80003d1c:	01978cb3          	add	s9,a5,s9
    80003d20:	f7f40d13          	addi	s10,s0,-129
    80003d24:	000cc503          	lbu	a0,0(s9)
    80003d28:	fffc8c93          	addi	s9,s9,-1
    80003d2c:	00000097          	auipc	ra,0x0
    80003d30:	9f8080e7          	jalr	-1544(ra) # 80003724 <consputc>
    80003d34:	ff9d18e3          	bne	s10,s9,80003d24 <__printf+0x41c>
    80003d38:	0100006f          	j	80003d48 <__printf+0x440>
    80003d3c:	00000097          	auipc	ra,0x0
    80003d40:	9e8080e7          	jalr	-1560(ra) # 80003724 <consputc>
    80003d44:	000c8493          	mv	s1,s9
    80003d48:	00094503          	lbu	a0,0(s2)
    80003d4c:	c60510e3          	bnez	a0,800039ac <__printf+0xa4>
    80003d50:	e40c0ee3          	beqz	s8,80003bac <__printf+0x2a4>
    80003d54:	00003517          	auipc	a0,0x3
    80003d58:	f6c50513          	addi	a0,a0,-148 # 80006cc0 <pr>
    80003d5c:	00001097          	auipc	ra,0x1
    80003d60:	94c080e7          	jalr	-1716(ra) # 800046a8 <release>
    80003d64:	e49ff06f          	j	80003bac <__printf+0x2a4>
    80003d68:	f7843783          	ld	a5,-136(s0)
    80003d6c:	03000513          	li	a0,48
    80003d70:	01000d13          	li	s10,16
    80003d74:	00878713          	addi	a4,a5,8
    80003d78:	0007bc83          	ld	s9,0(a5)
    80003d7c:	f6e43c23          	sd	a4,-136(s0)
    80003d80:	00000097          	auipc	ra,0x0
    80003d84:	9a4080e7          	jalr	-1628(ra) # 80003724 <consputc>
    80003d88:	07800513          	li	a0,120
    80003d8c:	00000097          	auipc	ra,0x0
    80003d90:	998080e7          	jalr	-1640(ra) # 80003724 <consputc>
    80003d94:	00001d97          	auipc	s11,0x1
    80003d98:	49cd8d93          	addi	s11,s11,1180 # 80005230 <digits>
    80003d9c:	03ccd793          	srli	a5,s9,0x3c
    80003da0:	00fd87b3          	add	a5,s11,a5
    80003da4:	0007c503          	lbu	a0,0(a5)
    80003da8:	fffd0d1b          	addiw	s10,s10,-1
    80003dac:	004c9c93          	slli	s9,s9,0x4
    80003db0:	00000097          	auipc	ra,0x0
    80003db4:	974080e7          	jalr	-1676(ra) # 80003724 <consputc>
    80003db8:	fe0d12e3          	bnez	s10,80003d9c <__printf+0x494>
    80003dbc:	f8dff06f          	j	80003d48 <__printf+0x440>
    80003dc0:	f7843783          	ld	a5,-136(s0)
    80003dc4:	0007bc83          	ld	s9,0(a5)
    80003dc8:	00878793          	addi	a5,a5,8
    80003dcc:	f6f43c23          	sd	a5,-136(s0)
    80003dd0:	000c9a63          	bnez	s9,80003de4 <__printf+0x4dc>
    80003dd4:	1080006f          	j	80003edc <__printf+0x5d4>
    80003dd8:	001c8c93          	addi	s9,s9,1
    80003ddc:	00000097          	auipc	ra,0x0
    80003de0:	948080e7          	jalr	-1720(ra) # 80003724 <consputc>
    80003de4:	000cc503          	lbu	a0,0(s9)
    80003de8:	fe0518e3          	bnez	a0,80003dd8 <__printf+0x4d0>
    80003dec:	f5dff06f          	j	80003d48 <__printf+0x440>
    80003df0:	02500513          	li	a0,37
    80003df4:	00000097          	auipc	ra,0x0
    80003df8:	930080e7          	jalr	-1744(ra) # 80003724 <consputc>
    80003dfc:	000c8513          	mv	a0,s9
    80003e00:	00000097          	auipc	ra,0x0
    80003e04:	924080e7          	jalr	-1756(ra) # 80003724 <consputc>
    80003e08:	f41ff06f          	j	80003d48 <__printf+0x440>
    80003e0c:	02500513          	li	a0,37
    80003e10:	00000097          	auipc	ra,0x0
    80003e14:	914080e7          	jalr	-1772(ra) # 80003724 <consputc>
    80003e18:	f31ff06f          	j	80003d48 <__printf+0x440>
    80003e1c:	00030513          	mv	a0,t1
    80003e20:	00000097          	auipc	ra,0x0
    80003e24:	7bc080e7          	jalr	1980(ra) # 800045dc <acquire>
    80003e28:	b4dff06f          	j	80003974 <__printf+0x6c>
    80003e2c:	40c0053b          	negw	a0,a2
    80003e30:	00a00713          	li	a4,10
    80003e34:	02e576bb          	remuw	a3,a0,a4
    80003e38:	00001d97          	auipc	s11,0x1
    80003e3c:	3f8d8d93          	addi	s11,s11,1016 # 80005230 <digits>
    80003e40:	ff700593          	li	a1,-9
    80003e44:	02069693          	slli	a3,a3,0x20
    80003e48:	0206d693          	srli	a3,a3,0x20
    80003e4c:	00dd86b3          	add	a3,s11,a3
    80003e50:	0006c683          	lbu	a3,0(a3)
    80003e54:	02e557bb          	divuw	a5,a0,a4
    80003e58:	f8d40023          	sb	a3,-128(s0)
    80003e5c:	10b65e63          	bge	a2,a1,80003f78 <__printf+0x670>
    80003e60:	06300593          	li	a1,99
    80003e64:	02e7f6bb          	remuw	a3,a5,a4
    80003e68:	02069693          	slli	a3,a3,0x20
    80003e6c:	0206d693          	srli	a3,a3,0x20
    80003e70:	00dd86b3          	add	a3,s11,a3
    80003e74:	0006c683          	lbu	a3,0(a3)
    80003e78:	02e7d73b          	divuw	a4,a5,a4
    80003e7c:	00200793          	li	a5,2
    80003e80:	f8d400a3          	sb	a3,-127(s0)
    80003e84:	bca5ece3          	bltu	a1,a0,80003a5c <__printf+0x154>
    80003e88:	ce5ff06f          	j	80003b6c <__printf+0x264>
    80003e8c:	40e007bb          	negw	a5,a4
    80003e90:	00001d97          	auipc	s11,0x1
    80003e94:	3a0d8d93          	addi	s11,s11,928 # 80005230 <digits>
    80003e98:	00f7f693          	andi	a3,a5,15
    80003e9c:	00dd86b3          	add	a3,s11,a3
    80003ea0:	0006c583          	lbu	a1,0(a3)
    80003ea4:	ff100613          	li	a2,-15
    80003ea8:	0047d69b          	srliw	a3,a5,0x4
    80003eac:	f8b40023          	sb	a1,-128(s0)
    80003eb0:	0047d59b          	srliw	a1,a5,0x4
    80003eb4:	0ac75e63          	bge	a4,a2,80003f70 <__printf+0x668>
    80003eb8:	00f6f693          	andi	a3,a3,15
    80003ebc:	00dd86b3          	add	a3,s11,a3
    80003ec0:	0006c603          	lbu	a2,0(a3)
    80003ec4:	00f00693          	li	a3,15
    80003ec8:	0087d79b          	srliw	a5,a5,0x8
    80003ecc:	f8c400a3          	sb	a2,-127(s0)
    80003ed0:	d8b6e4e3          	bltu	a3,a1,80003c58 <__printf+0x350>
    80003ed4:	00200793          	li	a5,2
    80003ed8:	e2dff06f          	j	80003d04 <__printf+0x3fc>
    80003edc:	00001c97          	auipc	s9,0x1
    80003ee0:	334c8c93          	addi	s9,s9,820 # 80005210 <_ZZ12printIntegermE6digits+0x148>
    80003ee4:	02800513          	li	a0,40
    80003ee8:	ef1ff06f          	j	80003dd8 <__printf+0x4d0>
    80003eec:	00700793          	li	a5,7
    80003ef0:	00600c93          	li	s9,6
    80003ef4:	e0dff06f          	j	80003d00 <__printf+0x3f8>
    80003ef8:	00700793          	li	a5,7
    80003efc:	00600c93          	li	s9,6
    80003f00:	c69ff06f          	j	80003b68 <__printf+0x260>
    80003f04:	00300793          	li	a5,3
    80003f08:	00200c93          	li	s9,2
    80003f0c:	c5dff06f          	j	80003b68 <__printf+0x260>
    80003f10:	00300793          	li	a5,3
    80003f14:	00200c93          	li	s9,2
    80003f18:	de9ff06f          	j	80003d00 <__printf+0x3f8>
    80003f1c:	00400793          	li	a5,4
    80003f20:	00300c93          	li	s9,3
    80003f24:	dddff06f          	j	80003d00 <__printf+0x3f8>
    80003f28:	00400793          	li	a5,4
    80003f2c:	00300c93          	li	s9,3
    80003f30:	c39ff06f          	j	80003b68 <__printf+0x260>
    80003f34:	00500793          	li	a5,5
    80003f38:	00400c93          	li	s9,4
    80003f3c:	c2dff06f          	j	80003b68 <__printf+0x260>
    80003f40:	00500793          	li	a5,5
    80003f44:	00400c93          	li	s9,4
    80003f48:	db9ff06f          	j	80003d00 <__printf+0x3f8>
    80003f4c:	00600793          	li	a5,6
    80003f50:	00500c93          	li	s9,5
    80003f54:	dadff06f          	j	80003d00 <__printf+0x3f8>
    80003f58:	00600793          	li	a5,6
    80003f5c:	00500c93          	li	s9,5
    80003f60:	c09ff06f          	j	80003b68 <__printf+0x260>
    80003f64:	00800793          	li	a5,8
    80003f68:	00700c93          	li	s9,7
    80003f6c:	bfdff06f          	j	80003b68 <__printf+0x260>
    80003f70:	00100793          	li	a5,1
    80003f74:	d91ff06f          	j	80003d04 <__printf+0x3fc>
    80003f78:	00100793          	li	a5,1
    80003f7c:	bf1ff06f          	j	80003b6c <__printf+0x264>
    80003f80:	00900793          	li	a5,9
    80003f84:	00800c93          	li	s9,8
    80003f88:	be1ff06f          	j	80003b68 <__printf+0x260>
    80003f8c:	00001517          	auipc	a0,0x1
    80003f90:	28c50513          	addi	a0,a0,652 # 80005218 <_ZZ12printIntegermE6digits+0x150>
    80003f94:	00000097          	auipc	ra,0x0
    80003f98:	918080e7          	jalr	-1768(ra) # 800038ac <panic>

0000000080003f9c <printfinit>:
    80003f9c:	fe010113          	addi	sp,sp,-32
    80003fa0:	00813823          	sd	s0,16(sp)
    80003fa4:	00913423          	sd	s1,8(sp)
    80003fa8:	00113c23          	sd	ra,24(sp)
    80003fac:	02010413          	addi	s0,sp,32
    80003fb0:	00003497          	auipc	s1,0x3
    80003fb4:	d1048493          	addi	s1,s1,-752 # 80006cc0 <pr>
    80003fb8:	00048513          	mv	a0,s1
    80003fbc:	00001597          	auipc	a1,0x1
    80003fc0:	26c58593          	addi	a1,a1,620 # 80005228 <_ZZ12printIntegermE6digits+0x160>
    80003fc4:	00000097          	auipc	ra,0x0
    80003fc8:	5f4080e7          	jalr	1524(ra) # 800045b8 <initlock>
    80003fcc:	01813083          	ld	ra,24(sp)
    80003fd0:	01013403          	ld	s0,16(sp)
    80003fd4:	0004ac23          	sw	zero,24(s1)
    80003fd8:	00813483          	ld	s1,8(sp)
    80003fdc:	02010113          	addi	sp,sp,32
    80003fe0:	00008067          	ret

0000000080003fe4 <uartinit>:
    80003fe4:	ff010113          	addi	sp,sp,-16
    80003fe8:	00813423          	sd	s0,8(sp)
    80003fec:	01010413          	addi	s0,sp,16
    80003ff0:	100007b7          	lui	a5,0x10000
    80003ff4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003ff8:	f8000713          	li	a4,-128
    80003ffc:	00e781a3          	sb	a4,3(a5)
    80004000:	00300713          	li	a4,3
    80004004:	00e78023          	sb	a4,0(a5)
    80004008:	000780a3          	sb	zero,1(a5)
    8000400c:	00e781a3          	sb	a4,3(a5)
    80004010:	00700693          	li	a3,7
    80004014:	00d78123          	sb	a3,2(a5)
    80004018:	00e780a3          	sb	a4,1(a5)
    8000401c:	00813403          	ld	s0,8(sp)
    80004020:	01010113          	addi	sp,sp,16
    80004024:	00008067          	ret

0000000080004028 <uartputc>:
    80004028:	00002797          	auipc	a5,0x2
    8000402c:	9f07a783          	lw	a5,-1552(a5) # 80005a18 <panicked>
    80004030:	00078463          	beqz	a5,80004038 <uartputc+0x10>
    80004034:	0000006f          	j	80004034 <uartputc+0xc>
    80004038:	fd010113          	addi	sp,sp,-48
    8000403c:	02813023          	sd	s0,32(sp)
    80004040:	00913c23          	sd	s1,24(sp)
    80004044:	01213823          	sd	s2,16(sp)
    80004048:	01313423          	sd	s3,8(sp)
    8000404c:	02113423          	sd	ra,40(sp)
    80004050:	03010413          	addi	s0,sp,48
    80004054:	00002917          	auipc	s2,0x2
    80004058:	9cc90913          	addi	s2,s2,-1588 # 80005a20 <uart_tx_r>
    8000405c:	00093783          	ld	a5,0(s2)
    80004060:	00002497          	auipc	s1,0x2
    80004064:	9c848493          	addi	s1,s1,-1592 # 80005a28 <uart_tx_w>
    80004068:	0004b703          	ld	a4,0(s1)
    8000406c:	02078693          	addi	a3,a5,32
    80004070:	00050993          	mv	s3,a0
    80004074:	02e69c63          	bne	a3,a4,800040ac <uartputc+0x84>
    80004078:	00001097          	auipc	ra,0x1
    8000407c:	834080e7          	jalr	-1996(ra) # 800048ac <push_on>
    80004080:	00093783          	ld	a5,0(s2)
    80004084:	0004b703          	ld	a4,0(s1)
    80004088:	02078793          	addi	a5,a5,32
    8000408c:	00e79463          	bne	a5,a4,80004094 <uartputc+0x6c>
    80004090:	0000006f          	j	80004090 <uartputc+0x68>
    80004094:	00001097          	auipc	ra,0x1
    80004098:	88c080e7          	jalr	-1908(ra) # 80004920 <pop_on>
    8000409c:	00093783          	ld	a5,0(s2)
    800040a0:	0004b703          	ld	a4,0(s1)
    800040a4:	02078693          	addi	a3,a5,32
    800040a8:	fce688e3          	beq	a3,a4,80004078 <uartputc+0x50>
    800040ac:	01f77693          	andi	a3,a4,31
    800040b0:	00003597          	auipc	a1,0x3
    800040b4:	c3058593          	addi	a1,a1,-976 # 80006ce0 <uart_tx_buf>
    800040b8:	00d586b3          	add	a3,a1,a3
    800040bc:	00170713          	addi	a4,a4,1
    800040c0:	01368023          	sb	s3,0(a3)
    800040c4:	00e4b023          	sd	a4,0(s1)
    800040c8:	10000637          	lui	a2,0x10000
    800040cc:	02f71063          	bne	a4,a5,800040ec <uartputc+0xc4>
    800040d0:	0340006f          	j	80004104 <uartputc+0xdc>
    800040d4:	00074703          	lbu	a4,0(a4)
    800040d8:	00f93023          	sd	a5,0(s2)
    800040dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800040e0:	00093783          	ld	a5,0(s2)
    800040e4:	0004b703          	ld	a4,0(s1)
    800040e8:	00f70e63          	beq	a4,a5,80004104 <uartputc+0xdc>
    800040ec:	00564683          	lbu	a3,5(a2)
    800040f0:	01f7f713          	andi	a4,a5,31
    800040f4:	00e58733          	add	a4,a1,a4
    800040f8:	0206f693          	andi	a3,a3,32
    800040fc:	00178793          	addi	a5,a5,1
    80004100:	fc069ae3          	bnez	a3,800040d4 <uartputc+0xac>
    80004104:	02813083          	ld	ra,40(sp)
    80004108:	02013403          	ld	s0,32(sp)
    8000410c:	01813483          	ld	s1,24(sp)
    80004110:	01013903          	ld	s2,16(sp)
    80004114:	00813983          	ld	s3,8(sp)
    80004118:	03010113          	addi	sp,sp,48
    8000411c:	00008067          	ret

0000000080004120 <uartputc_sync>:
    80004120:	ff010113          	addi	sp,sp,-16
    80004124:	00813423          	sd	s0,8(sp)
    80004128:	01010413          	addi	s0,sp,16
    8000412c:	00002717          	auipc	a4,0x2
    80004130:	8ec72703          	lw	a4,-1812(a4) # 80005a18 <panicked>
    80004134:	02071663          	bnez	a4,80004160 <uartputc_sync+0x40>
    80004138:	00050793          	mv	a5,a0
    8000413c:	100006b7          	lui	a3,0x10000
    80004140:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004144:	02077713          	andi	a4,a4,32
    80004148:	fe070ce3          	beqz	a4,80004140 <uartputc_sync+0x20>
    8000414c:	0ff7f793          	andi	a5,a5,255
    80004150:	00f68023          	sb	a5,0(a3)
    80004154:	00813403          	ld	s0,8(sp)
    80004158:	01010113          	addi	sp,sp,16
    8000415c:	00008067          	ret
    80004160:	0000006f          	j	80004160 <uartputc_sync+0x40>

0000000080004164 <uartstart>:
    80004164:	ff010113          	addi	sp,sp,-16
    80004168:	00813423          	sd	s0,8(sp)
    8000416c:	01010413          	addi	s0,sp,16
    80004170:	00002617          	auipc	a2,0x2
    80004174:	8b060613          	addi	a2,a2,-1872 # 80005a20 <uart_tx_r>
    80004178:	00002517          	auipc	a0,0x2
    8000417c:	8b050513          	addi	a0,a0,-1872 # 80005a28 <uart_tx_w>
    80004180:	00063783          	ld	a5,0(a2)
    80004184:	00053703          	ld	a4,0(a0)
    80004188:	04f70263          	beq	a4,a5,800041cc <uartstart+0x68>
    8000418c:	100005b7          	lui	a1,0x10000
    80004190:	00003817          	auipc	a6,0x3
    80004194:	b5080813          	addi	a6,a6,-1200 # 80006ce0 <uart_tx_buf>
    80004198:	01c0006f          	j	800041b4 <uartstart+0x50>
    8000419c:	0006c703          	lbu	a4,0(a3)
    800041a0:	00f63023          	sd	a5,0(a2)
    800041a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800041a8:	00063783          	ld	a5,0(a2)
    800041ac:	00053703          	ld	a4,0(a0)
    800041b0:	00f70e63          	beq	a4,a5,800041cc <uartstart+0x68>
    800041b4:	01f7f713          	andi	a4,a5,31
    800041b8:	00e806b3          	add	a3,a6,a4
    800041bc:	0055c703          	lbu	a4,5(a1)
    800041c0:	00178793          	addi	a5,a5,1
    800041c4:	02077713          	andi	a4,a4,32
    800041c8:	fc071ae3          	bnez	a4,8000419c <uartstart+0x38>
    800041cc:	00813403          	ld	s0,8(sp)
    800041d0:	01010113          	addi	sp,sp,16
    800041d4:	00008067          	ret

00000000800041d8 <uartgetc>:
    800041d8:	ff010113          	addi	sp,sp,-16
    800041dc:	00813423          	sd	s0,8(sp)
    800041e0:	01010413          	addi	s0,sp,16
    800041e4:	10000737          	lui	a4,0x10000
    800041e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800041ec:	0017f793          	andi	a5,a5,1
    800041f0:	00078c63          	beqz	a5,80004208 <uartgetc+0x30>
    800041f4:	00074503          	lbu	a0,0(a4)
    800041f8:	0ff57513          	andi	a0,a0,255
    800041fc:	00813403          	ld	s0,8(sp)
    80004200:	01010113          	addi	sp,sp,16
    80004204:	00008067          	ret
    80004208:	fff00513          	li	a0,-1
    8000420c:	ff1ff06f          	j	800041fc <uartgetc+0x24>

0000000080004210 <uartintr>:
    80004210:	100007b7          	lui	a5,0x10000
    80004214:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004218:	0017f793          	andi	a5,a5,1
    8000421c:	0a078463          	beqz	a5,800042c4 <uartintr+0xb4>
    80004220:	fe010113          	addi	sp,sp,-32
    80004224:	00813823          	sd	s0,16(sp)
    80004228:	00913423          	sd	s1,8(sp)
    8000422c:	00113c23          	sd	ra,24(sp)
    80004230:	02010413          	addi	s0,sp,32
    80004234:	100004b7          	lui	s1,0x10000
    80004238:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000423c:	0ff57513          	andi	a0,a0,255
    80004240:	fffff097          	auipc	ra,0xfffff
    80004244:	534080e7          	jalr	1332(ra) # 80003774 <consoleintr>
    80004248:	0054c783          	lbu	a5,5(s1)
    8000424c:	0017f793          	andi	a5,a5,1
    80004250:	fe0794e3          	bnez	a5,80004238 <uartintr+0x28>
    80004254:	00001617          	auipc	a2,0x1
    80004258:	7cc60613          	addi	a2,a2,1996 # 80005a20 <uart_tx_r>
    8000425c:	00001517          	auipc	a0,0x1
    80004260:	7cc50513          	addi	a0,a0,1996 # 80005a28 <uart_tx_w>
    80004264:	00063783          	ld	a5,0(a2)
    80004268:	00053703          	ld	a4,0(a0)
    8000426c:	04f70263          	beq	a4,a5,800042b0 <uartintr+0xa0>
    80004270:	100005b7          	lui	a1,0x10000
    80004274:	00003817          	auipc	a6,0x3
    80004278:	a6c80813          	addi	a6,a6,-1428 # 80006ce0 <uart_tx_buf>
    8000427c:	01c0006f          	j	80004298 <uartintr+0x88>
    80004280:	0006c703          	lbu	a4,0(a3)
    80004284:	00f63023          	sd	a5,0(a2)
    80004288:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000428c:	00063783          	ld	a5,0(a2)
    80004290:	00053703          	ld	a4,0(a0)
    80004294:	00f70e63          	beq	a4,a5,800042b0 <uartintr+0xa0>
    80004298:	01f7f713          	andi	a4,a5,31
    8000429c:	00e806b3          	add	a3,a6,a4
    800042a0:	0055c703          	lbu	a4,5(a1)
    800042a4:	00178793          	addi	a5,a5,1
    800042a8:	02077713          	andi	a4,a4,32
    800042ac:	fc071ae3          	bnez	a4,80004280 <uartintr+0x70>
    800042b0:	01813083          	ld	ra,24(sp)
    800042b4:	01013403          	ld	s0,16(sp)
    800042b8:	00813483          	ld	s1,8(sp)
    800042bc:	02010113          	addi	sp,sp,32
    800042c0:	00008067          	ret
    800042c4:	00001617          	auipc	a2,0x1
    800042c8:	75c60613          	addi	a2,a2,1884 # 80005a20 <uart_tx_r>
    800042cc:	00001517          	auipc	a0,0x1
    800042d0:	75c50513          	addi	a0,a0,1884 # 80005a28 <uart_tx_w>
    800042d4:	00063783          	ld	a5,0(a2)
    800042d8:	00053703          	ld	a4,0(a0)
    800042dc:	04f70263          	beq	a4,a5,80004320 <uartintr+0x110>
    800042e0:	100005b7          	lui	a1,0x10000
    800042e4:	00003817          	auipc	a6,0x3
    800042e8:	9fc80813          	addi	a6,a6,-1540 # 80006ce0 <uart_tx_buf>
    800042ec:	01c0006f          	j	80004308 <uartintr+0xf8>
    800042f0:	0006c703          	lbu	a4,0(a3)
    800042f4:	00f63023          	sd	a5,0(a2)
    800042f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800042fc:	00063783          	ld	a5,0(a2)
    80004300:	00053703          	ld	a4,0(a0)
    80004304:	02f70063          	beq	a4,a5,80004324 <uartintr+0x114>
    80004308:	01f7f713          	andi	a4,a5,31
    8000430c:	00e806b3          	add	a3,a6,a4
    80004310:	0055c703          	lbu	a4,5(a1)
    80004314:	00178793          	addi	a5,a5,1
    80004318:	02077713          	andi	a4,a4,32
    8000431c:	fc071ae3          	bnez	a4,800042f0 <uartintr+0xe0>
    80004320:	00008067          	ret
    80004324:	00008067          	ret

0000000080004328 <kinit>:
    80004328:	fc010113          	addi	sp,sp,-64
    8000432c:	02913423          	sd	s1,40(sp)
    80004330:	fffff7b7          	lui	a5,0xfffff
    80004334:	00004497          	auipc	s1,0x4
    80004338:	9cb48493          	addi	s1,s1,-1589 # 80007cff <end+0xfff>
    8000433c:	02813823          	sd	s0,48(sp)
    80004340:	01313c23          	sd	s3,24(sp)
    80004344:	00f4f4b3          	and	s1,s1,a5
    80004348:	02113c23          	sd	ra,56(sp)
    8000434c:	03213023          	sd	s2,32(sp)
    80004350:	01413823          	sd	s4,16(sp)
    80004354:	01513423          	sd	s5,8(sp)
    80004358:	04010413          	addi	s0,sp,64
    8000435c:	000017b7          	lui	a5,0x1
    80004360:	01100993          	li	s3,17
    80004364:	00f487b3          	add	a5,s1,a5
    80004368:	01b99993          	slli	s3,s3,0x1b
    8000436c:	06f9e063          	bltu	s3,a5,800043cc <kinit+0xa4>
    80004370:	00003a97          	auipc	s5,0x3
    80004374:	990a8a93          	addi	s5,s5,-1648 # 80006d00 <end>
    80004378:	0754ec63          	bltu	s1,s5,800043f0 <kinit+0xc8>
    8000437c:	0734fa63          	bgeu	s1,s3,800043f0 <kinit+0xc8>
    80004380:	00088a37          	lui	s4,0x88
    80004384:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004388:	00001917          	auipc	s2,0x1
    8000438c:	6a890913          	addi	s2,s2,1704 # 80005a30 <kmem>
    80004390:	00ca1a13          	slli	s4,s4,0xc
    80004394:	0140006f          	j	800043a8 <kinit+0x80>
    80004398:	000017b7          	lui	a5,0x1
    8000439c:	00f484b3          	add	s1,s1,a5
    800043a0:	0554e863          	bltu	s1,s5,800043f0 <kinit+0xc8>
    800043a4:	0534f663          	bgeu	s1,s3,800043f0 <kinit+0xc8>
    800043a8:	00001637          	lui	a2,0x1
    800043ac:	00100593          	li	a1,1
    800043b0:	00048513          	mv	a0,s1
    800043b4:	00000097          	auipc	ra,0x0
    800043b8:	5e4080e7          	jalr	1508(ra) # 80004998 <__memset>
    800043bc:	00093783          	ld	a5,0(s2)
    800043c0:	00f4b023          	sd	a5,0(s1)
    800043c4:	00993023          	sd	s1,0(s2)
    800043c8:	fd4498e3          	bne	s1,s4,80004398 <kinit+0x70>
    800043cc:	03813083          	ld	ra,56(sp)
    800043d0:	03013403          	ld	s0,48(sp)
    800043d4:	02813483          	ld	s1,40(sp)
    800043d8:	02013903          	ld	s2,32(sp)
    800043dc:	01813983          	ld	s3,24(sp)
    800043e0:	01013a03          	ld	s4,16(sp)
    800043e4:	00813a83          	ld	s5,8(sp)
    800043e8:	04010113          	addi	sp,sp,64
    800043ec:	00008067          	ret
    800043f0:	00001517          	auipc	a0,0x1
    800043f4:	e5850513          	addi	a0,a0,-424 # 80005248 <digits+0x18>
    800043f8:	fffff097          	auipc	ra,0xfffff
    800043fc:	4b4080e7          	jalr	1204(ra) # 800038ac <panic>

0000000080004400 <freerange>:
    80004400:	fc010113          	addi	sp,sp,-64
    80004404:	000017b7          	lui	a5,0x1
    80004408:	02913423          	sd	s1,40(sp)
    8000440c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004410:	009504b3          	add	s1,a0,s1
    80004414:	fffff537          	lui	a0,0xfffff
    80004418:	02813823          	sd	s0,48(sp)
    8000441c:	02113c23          	sd	ra,56(sp)
    80004420:	03213023          	sd	s2,32(sp)
    80004424:	01313c23          	sd	s3,24(sp)
    80004428:	01413823          	sd	s4,16(sp)
    8000442c:	01513423          	sd	s5,8(sp)
    80004430:	01613023          	sd	s6,0(sp)
    80004434:	04010413          	addi	s0,sp,64
    80004438:	00a4f4b3          	and	s1,s1,a0
    8000443c:	00f487b3          	add	a5,s1,a5
    80004440:	06f5e463          	bltu	a1,a5,800044a8 <freerange+0xa8>
    80004444:	00003a97          	auipc	s5,0x3
    80004448:	8bca8a93          	addi	s5,s5,-1860 # 80006d00 <end>
    8000444c:	0954e263          	bltu	s1,s5,800044d0 <freerange+0xd0>
    80004450:	01100993          	li	s3,17
    80004454:	01b99993          	slli	s3,s3,0x1b
    80004458:	0734fc63          	bgeu	s1,s3,800044d0 <freerange+0xd0>
    8000445c:	00058a13          	mv	s4,a1
    80004460:	00001917          	auipc	s2,0x1
    80004464:	5d090913          	addi	s2,s2,1488 # 80005a30 <kmem>
    80004468:	00002b37          	lui	s6,0x2
    8000446c:	0140006f          	j	80004480 <freerange+0x80>
    80004470:	000017b7          	lui	a5,0x1
    80004474:	00f484b3          	add	s1,s1,a5
    80004478:	0554ec63          	bltu	s1,s5,800044d0 <freerange+0xd0>
    8000447c:	0534fa63          	bgeu	s1,s3,800044d0 <freerange+0xd0>
    80004480:	00001637          	lui	a2,0x1
    80004484:	00100593          	li	a1,1
    80004488:	00048513          	mv	a0,s1
    8000448c:	00000097          	auipc	ra,0x0
    80004490:	50c080e7          	jalr	1292(ra) # 80004998 <__memset>
    80004494:	00093703          	ld	a4,0(s2)
    80004498:	016487b3          	add	a5,s1,s6
    8000449c:	00e4b023          	sd	a4,0(s1)
    800044a0:	00993023          	sd	s1,0(s2)
    800044a4:	fcfa76e3          	bgeu	s4,a5,80004470 <freerange+0x70>
    800044a8:	03813083          	ld	ra,56(sp)
    800044ac:	03013403          	ld	s0,48(sp)
    800044b0:	02813483          	ld	s1,40(sp)
    800044b4:	02013903          	ld	s2,32(sp)
    800044b8:	01813983          	ld	s3,24(sp)
    800044bc:	01013a03          	ld	s4,16(sp)
    800044c0:	00813a83          	ld	s5,8(sp)
    800044c4:	00013b03          	ld	s6,0(sp)
    800044c8:	04010113          	addi	sp,sp,64
    800044cc:	00008067          	ret
    800044d0:	00001517          	auipc	a0,0x1
    800044d4:	d7850513          	addi	a0,a0,-648 # 80005248 <digits+0x18>
    800044d8:	fffff097          	auipc	ra,0xfffff
    800044dc:	3d4080e7          	jalr	980(ra) # 800038ac <panic>

00000000800044e0 <kfree>:
    800044e0:	fe010113          	addi	sp,sp,-32
    800044e4:	00813823          	sd	s0,16(sp)
    800044e8:	00113c23          	sd	ra,24(sp)
    800044ec:	00913423          	sd	s1,8(sp)
    800044f0:	02010413          	addi	s0,sp,32
    800044f4:	03451793          	slli	a5,a0,0x34
    800044f8:	04079c63          	bnez	a5,80004550 <kfree+0x70>
    800044fc:	00003797          	auipc	a5,0x3
    80004500:	80478793          	addi	a5,a5,-2044 # 80006d00 <end>
    80004504:	00050493          	mv	s1,a0
    80004508:	04f56463          	bltu	a0,a5,80004550 <kfree+0x70>
    8000450c:	01100793          	li	a5,17
    80004510:	01b79793          	slli	a5,a5,0x1b
    80004514:	02f57e63          	bgeu	a0,a5,80004550 <kfree+0x70>
    80004518:	00001637          	lui	a2,0x1
    8000451c:	00100593          	li	a1,1
    80004520:	00000097          	auipc	ra,0x0
    80004524:	478080e7          	jalr	1144(ra) # 80004998 <__memset>
    80004528:	00001797          	auipc	a5,0x1
    8000452c:	50878793          	addi	a5,a5,1288 # 80005a30 <kmem>
    80004530:	0007b703          	ld	a4,0(a5)
    80004534:	01813083          	ld	ra,24(sp)
    80004538:	01013403          	ld	s0,16(sp)
    8000453c:	00e4b023          	sd	a4,0(s1)
    80004540:	0097b023          	sd	s1,0(a5)
    80004544:	00813483          	ld	s1,8(sp)
    80004548:	02010113          	addi	sp,sp,32
    8000454c:	00008067          	ret
    80004550:	00001517          	auipc	a0,0x1
    80004554:	cf850513          	addi	a0,a0,-776 # 80005248 <digits+0x18>
    80004558:	fffff097          	auipc	ra,0xfffff
    8000455c:	354080e7          	jalr	852(ra) # 800038ac <panic>

0000000080004560 <kalloc>:
    80004560:	fe010113          	addi	sp,sp,-32
    80004564:	00813823          	sd	s0,16(sp)
    80004568:	00913423          	sd	s1,8(sp)
    8000456c:	00113c23          	sd	ra,24(sp)
    80004570:	02010413          	addi	s0,sp,32
    80004574:	00001797          	auipc	a5,0x1
    80004578:	4bc78793          	addi	a5,a5,1212 # 80005a30 <kmem>
    8000457c:	0007b483          	ld	s1,0(a5)
    80004580:	02048063          	beqz	s1,800045a0 <kalloc+0x40>
    80004584:	0004b703          	ld	a4,0(s1)
    80004588:	00001637          	lui	a2,0x1
    8000458c:	00500593          	li	a1,5
    80004590:	00048513          	mv	a0,s1
    80004594:	00e7b023          	sd	a4,0(a5)
    80004598:	00000097          	auipc	ra,0x0
    8000459c:	400080e7          	jalr	1024(ra) # 80004998 <__memset>
    800045a0:	01813083          	ld	ra,24(sp)
    800045a4:	01013403          	ld	s0,16(sp)
    800045a8:	00048513          	mv	a0,s1
    800045ac:	00813483          	ld	s1,8(sp)
    800045b0:	02010113          	addi	sp,sp,32
    800045b4:	00008067          	ret

00000000800045b8 <initlock>:
    800045b8:	ff010113          	addi	sp,sp,-16
    800045bc:	00813423          	sd	s0,8(sp)
    800045c0:	01010413          	addi	s0,sp,16
    800045c4:	00813403          	ld	s0,8(sp)
    800045c8:	00b53423          	sd	a1,8(a0)
    800045cc:	00052023          	sw	zero,0(a0)
    800045d0:	00053823          	sd	zero,16(a0)
    800045d4:	01010113          	addi	sp,sp,16
    800045d8:	00008067          	ret

00000000800045dc <acquire>:
    800045dc:	fe010113          	addi	sp,sp,-32
    800045e0:	00813823          	sd	s0,16(sp)
    800045e4:	00913423          	sd	s1,8(sp)
    800045e8:	00113c23          	sd	ra,24(sp)
    800045ec:	01213023          	sd	s2,0(sp)
    800045f0:	02010413          	addi	s0,sp,32
    800045f4:	00050493          	mv	s1,a0
    800045f8:	10002973          	csrr	s2,sstatus
    800045fc:	100027f3          	csrr	a5,sstatus
    80004600:	ffd7f793          	andi	a5,a5,-3
    80004604:	10079073          	csrw	sstatus,a5
    80004608:	fffff097          	auipc	ra,0xfffff
    8000460c:	8e8080e7          	jalr	-1816(ra) # 80002ef0 <mycpu>
    80004610:	07852783          	lw	a5,120(a0)
    80004614:	06078e63          	beqz	a5,80004690 <acquire+0xb4>
    80004618:	fffff097          	auipc	ra,0xfffff
    8000461c:	8d8080e7          	jalr	-1832(ra) # 80002ef0 <mycpu>
    80004620:	07852783          	lw	a5,120(a0)
    80004624:	0004a703          	lw	a4,0(s1)
    80004628:	0017879b          	addiw	a5,a5,1
    8000462c:	06f52c23          	sw	a5,120(a0)
    80004630:	04071063          	bnez	a4,80004670 <acquire+0x94>
    80004634:	00100713          	li	a4,1
    80004638:	00070793          	mv	a5,a4
    8000463c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004640:	0007879b          	sext.w	a5,a5
    80004644:	fe079ae3          	bnez	a5,80004638 <acquire+0x5c>
    80004648:	0ff0000f          	fence
    8000464c:	fffff097          	auipc	ra,0xfffff
    80004650:	8a4080e7          	jalr	-1884(ra) # 80002ef0 <mycpu>
    80004654:	01813083          	ld	ra,24(sp)
    80004658:	01013403          	ld	s0,16(sp)
    8000465c:	00a4b823          	sd	a0,16(s1)
    80004660:	00013903          	ld	s2,0(sp)
    80004664:	00813483          	ld	s1,8(sp)
    80004668:	02010113          	addi	sp,sp,32
    8000466c:	00008067          	ret
    80004670:	0104b903          	ld	s2,16(s1)
    80004674:	fffff097          	auipc	ra,0xfffff
    80004678:	87c080e7          	jalr	-1924(ra) # 80002ef0 <mycpu>
    8000467c:	faa91ce3          	bne	s2,a0,80004634 <acquire+0x58>
    80004680:	00001517          	auipc	a0,0x1
    80004684:	bd050513          	addi	a0,a0,-1072 # 80005250 <digits+0x20>
    80004688:	fffff097          	auipc	ra,0xfffff
    8000468c:	224080e7          	jalr	548(ra) # 800038ac <panic>
    80004690:	00195913          	srli	s2,s2,0x1
    80004694:	fffff097          	auipc	ra,0xfffff
    80004698:	85c080e7          	jalr	-1956(ra) # 80002ef0 <mycpu>
    8000469c:	00197913          	andi	s2,s2,1
    800046a0:	07252e23          	sw	s2,124(a0)
    800046a4:	f75ff06f          	j	80004618 <acquire+0x3c>

00000000800046a8 <release>:
    800046a8:	fe010113          	addi	sp,sp,-32
    800046ac:	00813823          	sd	s0,16(sp)
    800046b0:	00113c23          	sd	ra,24(sp)
    800046b4:	00913423          	sd	s1,8(sp)
    800046b8:	01213023          	sd	s2,0(sp)
    800046bc:	02010413          	addi	s0,sp,32
    800046c0:	00052783          	lw	a5,0(a0)
    800046c4:	00079a63          	bnez	a5,800046d8 <release+0x30>
    800046c8:	00001517          	auipc	a0,0x1
    800046cc:	b9050513          	addi	a0,a0,-1136 # 80005258 <digits+0x28>
    800046d0:	fffff097          	auipc	ra,0xfffff
    800046d4:	1dc080e7          	jalr	476(ra) # 800038ac <panic>
    800046d8:	01053903          	ld	s2,16(a0)
    800046dc:	00050493          	mv	s1,a0
    800046e0:	fffff097          	auipc	ra,0xfffff
    800046e4:	810080e7          	jalr	-2032(ra) # 80002ef0 <mycpu>
    800046e8:	fea910e3          	bne	s2,a0,800046c8 <release+0x20>
    800046ec:	0004b823          	sd	zero,16(s1)
    800046f0:	0ff0000f          	fence
    800046f4:	0f50000f          	fence	iorw,ow
    800046f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800046fc:	ffffe097          	auipc	ra,0xffffe
    80004700:	7f4080e7          	jalr	2036(ra) # 80002ef0 <mycpu>
    80004704:	100027f3          	csrr	a5,sstatus
    80004708:	0027f793          	andi	a5,a5,2
    8000470c:	04079a63          	bnez	a5,80004760 <release+0xb8>
    80004710:	07852783          	lw	a5,120(a0)
    80004714:	02f05e63          	blez	a5,80004750 <release+0xa8>
    80004718:	fff7871b          	addiw	a4,a5,-1
    8000471c:	06e52c23          	sw	a4,120(a0)
    80004720:	00071c63          	bnez	a4,80004738 <release+0x90>
    80004724:	07c52783          	lw	a5,124(a0)
    80004728:	00078863          	beqz	a5,80004738 <release+0x90>
    8000472c:	100027f3          	csrr	a5,sstatus
    80004730:	0027e793          	ori	a5,a5,2
    80004734:	10079073          	csrw	sstatus,a5
    80004738:	01813083          	ld	ra,24(sp)
    8000473c:	01013403          	ld	s0,16(sp)
    80004740:	00813483          	ld	s1,8(sp)
    80004744:	00013903          	ld	s2,0(sp)
    80004748:	02010113          	addi	sp,sp,32
    8000474c:	00008067          	ret
    80004750:	00001517          	auipc	a0,0x1
    80004754:	b2850513          	addi	a0,a0,-1240 # 80005278 <digits+0x48>
    80004758:	fffff097          	auipc	ra,0xfffff
    8000475c:	154080e7          	jalr	340(ra) # 800038ac <panic>
    80004760:	00001517          	auipc	a0,0x1
    80004764:	b0050513          	addi	a0,a0,-1280 # 80005260 <digits+0x30>
    80004768:	fffff097          	auipc	ra,0xfffff
    8000476c:	144080e7          	jalr	324(ra) # 800038ac <panic>

0000000080004770 <holding>:
    80004770:	00052783          	lw	a5,0(a0)
    80004774:	00079663          	bnez	a5,80004780 <holding+0x10>
    80004778:	00000513          	li	a0,0
    8000477c:	00008067          	ret
    80004780:	fe010113          	addi	sp,sp,-32
    80004784:	00813823          	sd	s0,16(sp)
    80004788:	00913423          	sd	s1,8(sp)
    8000478c:	00113c23          	sd	ra,24(sp)
    80004790:	02010413          	addi	s0,sp,32
    80004794:	01053483          	ld	s1,16(a0)
    80004798:	ffffe097          	auipc	ra,0xffffe
    8000479c:	758080e7          	jalr	1880(ra) # 80002ef0 <mycpu>
    800047a0:	01813083          	ld	ra,24(sp)
    800047a4:	01013403          	ld	s0,16(sp)
    800047a8:	40a48533          	sub	a0,s1,a0
    800047ac:	00153513          	seqz	a0,a0
    800047b0:	00813483          	ld	s1,8(sp)
    800047b4:	02010113          	addi	sp,sp,32
    800047b8:	00008067          	ret

00000000800047bc <push_off>:
    800047bc:	fe010113          	addi	sp,sp,-32
    800047c0:	00813823          	sd	s0,16(sp)
    800047c4:	00113c23          	sd	ra,24(sp)
    800047c8:	00913423          	sd	s1,8(sp)
    800047cc:	02010413          	addi	s0,sp,32
    800047d0:	100024f3          	csrr	s1,sstatus
    800047d4:	100027f3          	csrr	a5,sstatus
    800047d8:	ffd7f793          	andi	a5,a5,-3
    800047dc:	10079073          	csrw	sstatus,a5
    800047e0:	ffffe097          	auipc	ra,0xffffe
    800047e4:	710080e7          	jalr	1808(ra) # 80002ef0 <mycpu>
    800047e8:	07852783          	lw	a5,120(a0)
    800047ec:	02078663          	beqz	a5,80004818 <push_off+0x5c>
    800047f0:	ffffe097          	auipc	ra,0xffffe
    800047f4:	700080e7          	jalr	1792(ra) # 80002ef0 <mycpu>
    800047f8:	07852783          	lw	a5,120(a0)
    800047fc:	01813083          	ld	ra,24(sp)
    80004800:	01013403          	ld	s0,16(sp)
    80004804:	0017879b          	addiw	a5,a5,1
    80004808:	06f52c23          	sw	a5,120(a0)
    8000480c:	00813483          	ld	s1,8(sp)
    80004810:	02010113          	addi	sp,sp,32
    80004814:	00008067          	ret
    80004818:	0014d493          	srli	s1,s1,0x1
    8000481c:	ffffe097          	auipc	ra,0xffffe
    80004820:	6d4080e7          	jalr	1748(ra) # 80002ef0 <mycpu>
    80004824:	0014f493          	andi	s1,s1,1
    80004828:	06952e23          	sw	s1,124(a0)
    8000482c:	fc5ff06f          	j	800047f0 <push_off+0x34>

0000000080004830 <pop_off>:
    80004830:	ff010113          	addi	sp,sp,-16
    80004834:	00813023          	sd	s0,0(sp)
    80004838:	00113423          	sd	ra,8(sp)
    8000483c:	01010413          	addi	s0,sp,16
    80004840:	ffffe097          	auipc	ra,0xffffe
    80004844:	6b0080e7          	jalr	1712(ra) # 80002ef0 <mycpu>
    80004848:	100027f3          	csrr	a5,sstatus
    8000484c:	0027f793          	andi	a5,a5,2
    80004850:	04079663          	bnez	a5,8000489c <pop_off+0x6c>
    80004854:	07852783          	lw	a5,120(a0)
    80004858:	02f05a63          	blez	a5,8000488c <pop_off+0x5c>
    8000485c:	fff7871b          	addiw	a4,a5,-1
    80004860:	06e52c23          	sw	a4,120(a0)
    80004864:	00071c63          	bnez	a4,8000487c <pop_off+0x4c>
    80004868:	07c52783          	lw	a5,124(a0)
    8000486c:	00078863          	beqz	a5,8000487c <pop_off+0x4c>
    80004870:	100027f3          	csrr	a5,sstatus
    80004874:	0027e793          	ori	a5,a5,2
    80004878:	10079073          	csrw	sstatus,a5
    8000487c:	00813083          	ld	ra,8(sp)
    80004880:	00013403          	ld	s0,0(sp)
    80004884:	01010113          	addi	sp,sp,16
    80004888:	00008067          	ret
    8000488c:	00001517          	auipc	a0,0x1
    80004890:	9ec50513          	addi	a0,a0,-1556 # 80005278 <digits+0x48>
    80004894:	fffff097          	auipc	ra,0xfffff
    80004898:	018080e7          	jalr	24(ra) # 800038ac <panic>
    8000489c:	00001517          	auipc	a0,0x1
    800048a0:	9c450513          	addi	a0,a0,-1596 # 80005260 <digits+0x30>
    800048a4:	fffff097          	auipc	ra,0xfffff
    800048a8:	008080e7          	jalr	8(ra) # 800038ac <panic>

00000000800048ac <push_on>:
    800048ac:	fe010113          	addi	sp,sp,-32
    800048b0:	00813823          	sd	s0,16(sp)
    800048b4:	00113c23          	sd	ra,24(sp)
    800048b8:	00913423          	sd	s1,8(sp)
    800048bc:	02010413          	addi	s0,sp,32
    800048c0:	100024f3          	csrr	s1,sstatus
    800048c4:	100027f3          	csrr	a5,sstatus
    800048c8:	0027e793          	ori	a5,a5,2
    800048cc:	10079073          	csrw	sstatus,a5
    800048d0:	ffffe097          	auipc	ra,0xffffe
    800048d4:	620080e7          	jalr	1568(ra) # 80002ef0 <mycpu>
    800048d8:	07852783          	lw	a5,120(a0)
    800048dc:	02078663          	beqz	a5,80004908 <push_on+0x5c>
    800048e0:	ffffe097          	auipc	ra,0xffffe
    800048e4:	610080e7          	jalr	1552(ra) # 80002ef0 <mycpu>
    800048e8:	07852783          	lw	a5,120(a0)
    800048ec:	01813083          	ld	ra,24(sp)
    800048f0:	01013403          	ld	s0,16(sp)
    800048f4:	0017879b          	addiw	a5,a5,1
    800048f8:	06f52c23          	sw	a5,120(a0)
    800048fc:	00813483          	ld	s1,8(sp)
    80004900:	02010113          	addi	sp,sp,32
    80004904:	00008067          	ret
    80004908:	0014d493          	srli	s1,s1,0x1
    8000490c:	ffffe097          	auipc	ra,0xffffe
    80004910:	5e4080e7          	jalr	1508(ra) # 80002ef0 <mycpu>
    80004914:	0014f493          	andi	s1,s1,1
    80004918:	06952e23          	sw	s1,124(a0)
    8000491c:	fc5ff06f          	j	800048e0 <push_on+0x34>

0000000080004920 <pop_on>:
    80004920:	ff010113          	addi	sp,sp,-16
    80004924:	00813023          	sd	s0,0(sp)
    80004928:	00113423          	sd	ra,8(sp)
    8000492c:	01010413          	addi	s0,sp,16
    80004930:	ffffe097          	auipc	ra,0xffffe
    80004934:	5c0080e7          	jalr	1472(ra) # 80002ef0 <mycpu>
    80004938:	100027f3          	csrr	a5,sstatus
    8000493c:	0027f793          	andi	a5,a5,2
    80004940:	04078463          	beqz	a5,80004988 <pop_on+0x68>
    80004944:	07852783          	lw	a5,120(a0)
    80004948:	02f05863          	blez	a5,80004978 <pop_on+0x58>
    8000494c:	fff7879b          	addiw	a5,a5,-1
    80004950:	06f52c23          	sw	a5,120(a0)
    80004954:	07853783          	ld	a5,120(a0)
    80004958:	00079863          	bnez	a5,80004968 <pop_on+0x48>
    8000495c:	100027f3          	csrr	a5,sstatus
    80004960:	ffd7f793          	andi	a5,a5,-3
    80004964:	10079073          	csrw	sstatus,a5
    80004968:	00813083          	ld	ra,8(sp)
    8000496c:	00013403          	ld	s0,0(sp)
    80004970:	01010113          	addi	sp,sp,16
    80004974:	00008067          	ret
    80004978:	00001517          	auipc	a0,0x1
    8000497c:	92850513          	addi	a0,a0,-1752 # 800052a0 <digits+0x70>
    80004980:	fffff097          	auipc	ra,0xfffff
    80004984:	f2c080e7          	jalr	-212(ra) # 800038ac <panic>
    80004988:	00001517          	auipc	a0,0x1
    8000498c:	8f850513          	addi	a0,a0,-1800 # 80005280 <digits+0x50>
    80004990:	fffff097          	auipc	ra,0xfffff
    80004994:	f1c080e7          	jalr	-228(ra) # 800038ac <panic>

0000000080004998 <__memset>:
    80004998:	ff010113          	addi	sp,sp,-16
    8000499c:	00813423          	sd	s0,8(sp)
    800049a0:	01010413          	addi	s0,sp,16
    800049a4:	1a060e63          	beqz	a2,80004b60 <__memset+0x1c8>
    800049a8:	40a007b3          	neg	a5,a0
    800049ac:	0077f793          	andi	a5,a5,7
    800049b0:	00778693          	addi	a3,a5,7
    800049b4:	00b00813          	li	a6,11
    800049b8:	0ff5f593          	andi	a1,a1,255
    800049bc:	fff6071b          	addiw	a4,a2,-1
    800049c0:	1b06e663          	bltu	a3,a6,80004b6c <__memset+0x1d4>
    800049c4:	1cd76463          	bltu	a4,a3,80004b8c <__memset+0x1f4>
    800049c8:	1a078e63          	beqz	a5,80004b84 <__memset+0x1ec>
    800049cc:	00b50023          	sb	a1,0(a0)
    800049d0:	00100713          	li	a4,1
    800049d4:	1ae78463          	beq	a5,a4,80004b7c <__memset+0x1e4>
    800049d8:	00b500a3          	sb	a1,1(a0)
    800049dc:	00200713          	li	a4,2
    800049e0:	1ae78a63          	beq	a5,a4,80004b94 <__memset+0x1fc>
    800049e4:	00b50123          	sb	a1,2(a0)
    800049e8:	00300713          	li	a4,3
    800049ec:	18e78463          	beq	a5,a4,80004b74 <__memset+0x1dc>
    800049f0:	00b501a3          	sb	a1,3(a0)
    800049f4:	00400713          	li	a4,4
    800049f8:	1ae78263          	beq	a5,a4,80004b9c <__memset+0x204>
    800049fc:	00b50223          	sb	a1,4(a0)
    80004a00:	00500713          	li	a4,5
    80004a04:	1ae78063          	beq	a5,a4,80004ba4 <__memset+0x20c>
    80004a08:	00b502a3          	sb	a1,5(a0)
    80004a0c:	00700713          	li	a4,7
    80004a10:	18e79e63          	bne	a5,a4,80004bac <__memset+0x214>
    80004a14:	00b50323          	sb	a1,6(a0)
    80004a18:	00700e93          	li	t4,7
    80004a1c:	00859713          	slli	a4,a1,0x8
    80004a20:	00e5e733          	or	a4,a1,a4
    80004a24:	01059e13          	slli	t3,a1,0x10
    80004a28:	01c76e33          	or	t3,a4,t3
    80004a2c:	01859313          	slli	t1,a1,0x18
    80004a30:	006e6333          	or	t1,t3,t1
    80004a34:	02059893          	slli	a7,a1,0x20
    80004a38:	40f60e3b          	subw	t3,a2,a5
    80004a3c:	011368b3          	or	a7,t1,a7
    80004a40:	02859813          	slli	a6,a1,0x28
    80004a44:	0108e833          	or	a6,a7,a6
    80004a48:	03059693          	slli	a3,a1,0x30
    80004a4c:	003e589b          	srliw	a7,t3,0x3
    80004a50:	00d866b3          	or	a3,a6,a3
    80004a54:	03859713          	slli	a4,a1,0x38
    80004a58:	00389813          	slli	a6,a7,0x3
    80004a5c:	00f507b3          	add	a5,a0,a5
    80004a60:	00e6e733          	or	a4,a3,a4
    80004a64:	000e089b          	sext.w	a7,t3
    80004a68:	00f806b3          	add	a3,a6,a5
    80004a6c:	00e7b023          	sd	a4,0(a5)
    80004a70:	00878793          	addi	a5,a5,8
    80004a74:	fed79ce3          	bne	a5,a3,80004a6c <__memset+0xd4>
    80004a78:	ff8e7793          	andi	a5,t3,-8
    80004a7c:	0007871b          	sext.w	a4,a5
    80004a80:	01d787bb          	addw	a5,a5,t4
    80004a84:	0ce88e63          	beq	a7,a4,80004b60 <__memset+0x1c8>
    80004a88:	00f50733          	add	a4,a0,a5
    80004a8c:	00b70023          	sb	a1,0(a4)
    80004a90:	0017871b          	addiw	a4,a5,1
    80004a94:	0cc77663          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004a98:	00e50733          	add	a4,a0,a4
    80004a9c:	00b70023          	sb	a1,0(a4)
    80004aa0:	0027871b          	addiw	a4,a5,2
    80004aa4:	0ac77e63          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004aa8:	00e50733          	add	a4,a0,a4
    80004aac:	00b70023          	sb	a1,0(a4)
    80004ab0:	0037871b          	addiw	a4,a5,3
    80004ab4:	0ac77663          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004ab8:	00e50733          	add	a4,a0,a4
    80004abc:	00b70023          	sb	a1,0(a4)
    80004ac0:	0047871b          	addiw	a4,a5,4
    80004ac4:	08c77e63          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004ac8:	00e50733          	add	a4,a0,a4
    80004acc:	00b70023          	sb	a1,0(a4)
    80004ad0:	0057871b          	addiw	a4,a5,5
    80004ad4:	08c77663          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004ad8:	00e50733          	add	a4,a0,a4
    80004adc:	00b70023          	sb	a1,0(a4)
    80004ae0:	0067871b          	addiw	a4,a5,6
    80004ae4:	06c77e63          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004ae8:	00e50733          	add	a4,a0,a4
    80004aec:	00b70023          	sb	a1,0(a4)
    80004af0:	0077871b          	addiw	a4,a5,7
    80004af4:	06c77663          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004af8:	00e50733          	add	a4,a0,a4
    80004afc:	00b70023          	sb	a1,0(a4)
    80004b00:	0087871b          	addiw	a4,a5,8
    80004b04:	04c77e63          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004b08:	00e50733          	add	a4,a0,a4
    80004b0c:	00b70023          	sb	a1,0(a4)
    80004b10:	0097871b          	addiw	a4,a5,9
    80004b14:	04c77663          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004b18:	00e50733          	add	a4,a0,a4
    80004b1c:	00b70023          	sb	a1,0(a4)
    80004b20:	00a7871b          	addiw	a4,a5,10
    80004b24:	02c77e63          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004b28:	00e50733          	add	a4,a0,a4
    80004b2c:	00b70023          	sb	a1,0(a4)
    80004b30:	00b7871b          	addiw	a4,a5,11
    80004b34:	02c77663          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004b38:	00e50733          	add	a4,a0,a4
    80004b3c:	00b70023          	sb	a1,0(a4)
    80004b40:	00c7871b          	addiw	a4,a5,12
    80004b44:	00c77e63          	bgeu	a4,a2,80004b60 <__memset+0x1c8>
    80004b48:	00e50733          	add	a4,a0,a4
    80004b4c:	00b70023          	sb	a1,0(a4)
    80004b50:	00d7879b          	addiw	a5,a5,13
    80004b54:	00c7f663          	bgeu	a5,a2,80004b60 <__memset+0x1c8>
    80004b58:	00f507b3          	add	a5,a0,a5
    80004b5c:	00b78023          	sb	a1,0(a5)
    80004b60:	00813403          	ld	s0,8(sp)
    80004b64:	01010113          	addi	sp,sp,16
    80004b68:	00008067          	ret
    80004b6c:	00b00693          	li	a3,11
    80004b70:	e55ff06f          	j	800049c4 <__memset+0x2c>
    80004b74:	00300e93          	li	t4,3
    80004b78:	ea5ff06f          	j	80004a1c <__memset+0x84>
    80004b7c:	00100e93          	li	t4,1
    80004b80:	e9dff06f          	j	80004a1c <__memset+0x84>
    80004b84:	00000e93          	li	t4,0
    80004b88:	e95ff06f          	j	80004a1c <__memset+0x84>
    80004b8c:	00000793          	li	a5,0
    80004b90:	ef9ff06f          	j	80004a88 <__memset+0xf0>
    80004b94:	00200e93          	li	t4,2
    80004b98:	e85ff06f          	j	80004a1c <__memset+0x84>
    80004b9c:	00400e93          	li	t4,4
    80004ba0:	e7dff06f          	j	80004a1c <__memset+0x84>
    80004ba4:	00500e93          	li	t4,5
    80004ba8:	e75ff06f          	j	80004a1c <__memset+0x84>
    80004bac:	00600e93          	li	t4,6
    80004bb0:	e6dff06f          	j	80004a1c <__memset+0x84>

0000000080004bb4 <__memmove>:
    80004bb4:	ff010113          	addi	sp,sp,-16
    80004bb8:	00813423          	sd	s0,8(sp)
    80004bbc:	01010413          	addi	s0,sp,16
    80004bc0:	0e060863          	beqz	a2,80004cb0 <__memmove+0xfc>
    80004bc4:	fff6069b          	addiw	a3,a2,-1
    80004bc8:	0006881b          	sext.w	a6,a3
    80004bcc:	0ea5e863          	bltu	a1,a0,80004cbc <__memmove+0x108>
    80004bd0:	00758713          	addi	a4,a1,7
    80004bd4:	00a5e7b3          	or	a5,a1,a0
    80004bd8:	40a70733          	sub	a4,a4,a0
    80004bdc:	0077f793          	andi	a5,a5,7
    80004be0:	00f73713          	sltiu	a4,a4,15
    80004be4:	00174713          	xori	a4,a4,1
    80004be8:	0017b793          	seqz	a5,a5
    80004bec:	00e7f7b3          	and	a5,a5,a4
    80004bf0:	10078863          	beqz	a5,80004d00 <__memmove+0x14c>
    80004bf4:	00900793          	li	a5,9
    80004bf8:	1107f463          	bgeu	a5,a6,80004d00 <__memmove+0x14c>
    80004bfc:	0036581b          	srliw	a6,a2,0x3
    80004c00:	fff8081b          	addiw	a6,a6,-1
    80004c04:	02081813          	slli	a6,a6,0x20
    80004c08:	01d85893          	srli	a7,a6,0x1d
    80004c0c:	00858813          	addi	a6,a1,8
    80004c10:	00058793          	mv	a5,a1
    80004c14:	00050713          	mv	a4,a0
    80004c18:	01088833          	add	a6,a7,a6
    80004c1c:	0007b883          	ld	a7,0(a5)
    80004c20:	00878793          	addi	a5,a5,8
    80004c24:	00870713          	addi	a4,a4,8
    80004c28:	ff173c23          	sd	a7,-8(a4)
    80004c2c:	ff0798e3          	bne	a5,a6,80004c1c <__memmove+0x68>
    80004c30:	ff867713          	andi	a4,a2,-8
    80004c34:	02071793          	slli	a5,a4,0x20
    80004c38:	0207d793          	srli	a5,a5,0x20
    80004c3c:	00f585b3          	add	a1,a1,a5
    80004c40:	40e686bb          	subw	a3,a3,a4
    80004c44:	00f507b3          	add	a5,a0,a5
    80004c48:	06e60463          	beq	a2,a4,80004cb0 <__memmove+0xfc>
    80004c4c:	0005c703          	lbu	a4,0(a1)
    80004c50:	00e78023          	sb	a4,0(a5)
    80004c54:	04068e63          	beqz	a3,80004cb0 <__memmove+0xfc>
    80004c58:	0015c603          	lbu	a2,1(a1)
    80004c5c:	00100713          	li	a4,1
    80004c60:	00c780a3          	sb	a2,1(a5)
    80004c64:	04e68663          	beq	a3,a4,80004cb0 <__memmove+0xfc>
    80004c68:	0025c603          	lbu	a2,2(a1)
    80004c6c:	00200713          	li	a4,2
    80004c70:	00c78123          	sb	a2,2(a5)
    80004c74:	02e68e63          	beq	a3,a4,80004cb0 <__memmove+0xfc>
    80004c78:	0035c603          	lbu	a2,3(a1)
    80004c7c:	00300713          	li	a4,3
    80004c80:	00c781a3          	sb	a2,3(a5)
    80004c84:	02e68663          	beq	a3,a4,80004cb0 <__memmove+0xfc>
    80004c88:	0045c603          	lbu	a2,4(a1)
    80004c8c:	00400713          	li	a4,4
    80004c90:	00c78223          	sb	a2,4(a5)
    80004c94:	00e68e63          	beq	a3,a4,80004cb0 <__memmove+0xfc>
    80004c98:	0055c603          	lbu	a2,5(a1)
    80004c9c:	00500713          	li	a4,5
    80004ca0:	00c782a3          	sb	a2,5(a5)
    80004ca4:	00e68663          	beq	a3,a4,80004cb0 <__memmove+0xfc>
    80004ca8:	0065c703          	lbu	a4,6(a1)
    80004cac:	00e78323          	sb	a4,6(a5)
    80004cb0:	00813403          	ld	s0,8(sp)
    80004cb4:	01010113          	addi	sp,sp,16
    80004cb8:	00008067          	ret
    80004cbc:	02061713          	slli	a4,a2,0x20
    80004cc0:	02075713          	srli	a4,a4,0x20
    80004cc4:	00e587b3          	add	a5,a1,a4
    80004cc8:	f0f574e3          	bgeu	a0,a5,80004bd0 <__memmove+0x1c>
    80004ccc:	02069613          	slli	a2,a3,0x20
    80004cd0:	02065613          	srli	a2,a2,0x20
    80004cd4:	fff64613          	not	a2,a2
    80004cd8:	00e50733          	add	a4,a0,a4
    80004cdc:	00c78633          	add	a2,a5,a2
    80004ce0:	fff7c683          	lbu	a3,-1(a5)
    80004ce4:	fff78793          	addi	a5,a5,-1
    80004ce8:	fff70713          	addi	a4,a4,-1
    80004cec:	00d70023          	sb	a3,0(a4)
    80004cf0:	fec798e3          	bne	a5,a2,80004ce0 <__memmove+0x12c>
    80004cf4:	00813403          	ld	s0,8(sp)
    80004cf8:	01010113          	addi	sp,sp,16
    80004cfc:	00008067          	ret
    80004d00:	02069713          	slli	a4,a3,0x20
    80004d04:	02075713          	srli	a4,a4,0x20
    80004d08:	00170713          	addi	a4,a4,1
    80004d0c:	00e50733          	add	a4,a0,a4
    80004d10:	00050793          	mv	a5,a0
    80004d14:	0005c683          	lbu	a3,0(a1)
    80004d18:	00178793          	addi	a5,a5,1
    80004d1c:	00158593          	addi	a1,a1,1
    80004d20:	fed78fa3          	sb	a3,-1(a5)
    80004d24:	fee798e3          	bne	a5,a4,80004d14 <__memmove+0x160>
    80004d28:	f89ff06f          	j	80004cb0 <__memmove+0xfc>

0000000080004d2c <__putc>:
    80004d2c:	fe010113          	addi	sp,sp,-32
    80004d30:	00813823          	sd	s0,16(sp)
    80004d34:	00113c23          	sd	ra,24(sp)
    80004d38:	02010413          	addi	s0,sp,32
    80004d3c:	00050793          	mv	a5,a0
    80004d40:	fef40593          	addi	a1,s0,-17
    80004d44:	00100613          	li	a2,1
    80004d48:	00000513          	li	a0,0
    80004d4c:	fef407a3          	sb	a5,-17(s0)
    80004d50:	fffff097          	auipc	ra,0xfffff
    80004d54:	b3c080e7          	jalr	-1220(ra) # 8000388c <console_write>
    80004d58:	01813083          	ld	ra,24(sp)
    80004d5c:	01013403          	ld	s0,16(sp)
    80004d60:	02010113          	addi	sp,sp,32
    80004d64:	00008067          	ret

0000000080004d68 <__getc>:
    80004d68:	fe010113          	addi	sp,sp,-32
    80004d6c:	00813823          	sd	s0,16(sp)
    80004d70:	00113c23          	sd	ra,24(sp)
    80004d74:	02010413          	addi	s0,sp,32
    80004d78:	fe840593          	addi	a1,s0,-24
    80004d7c:	00100613          	li	a2,1
    80004d80:	00000513          	li	a0,0
    80004d84:	fffff097          	auipc	ra,0xfffff
    80004d88:	ae8080e7          	jalr	-1304(ra) # 8000386c <console_read>
    80004d8c:	fe844503          	lbu	a0,-24(s0)
    80004d90:	01813083          	ld	ra,24(sp)
    80004d94:	01013403          	ld	s0,16(sp)
    80004d98:	02010113          	addi	sp,sp,32
    80004d9c:	00008067          	ret

0000000080004da0 <console_handler>:
    80004da0:	fe010113          	addi	sp,sp,-32
    80004da4:	00813823          	sd	s0,16(sp)
    80004da8:	00113c23          	sd	ra,24(sp)
    80004dac:	00913423          	sd	s1,8(sp)
    80004db0:	02010413          	addi	s0,sp,32
    80004db4:	14202773          	csrr	a4,scause
    80004db8:	100027f3          	csrr	a5,sstatus
    80004dbc:	0027f793          	andi	a5,a5,2
    80004dc0:	06079e63          	bnez	a5,80004e3c <console_handler+0x9c>
    80004dc4:	00074c63          	bltz	a4,80004ddc <console_handler+0x3c>
    80004dc8:	01813083          	ld	ra,24(sp)
    80004dcc:	01013403          	ld	s0,16(sp)
    80004dd0:	00813483          	ld	s1,8(sp)
    80004dd4:	02010113          	addi	sp,sp,32
    80004dd8:	00008067          	ret
    80004ddc:	0ff77713          	andi	a4,a4,255
    80004de0:	00900793          	li	a5,9
    80004de4:	fef712e3          	bne	a4,a5,80004dc8 <console_handler+0x28>
    80004de8:	ffffe097          	auipc	ra,0xffffe
    80004dec:	6dc080e7          	jalr	1756(ra) # 800034c4 <plic_claim>
    80004df0:	00a00793          	li	a5,10
    80004df4:	00050493          	mv	s1,a0
    80004df8:	02f50c63          	beq	a0,a5,80004e30 <console_handler+0x90>
    80004dfc:	fc0506e3          	beqz	a0,80004dc8 <console_handler+0x28>
    80004e00:	00050593          	mv	a1,a0
    80004e04:	00000517          	auipc	a0,0x0
    80004e08:	3a450513          	addi	a0,a0,932 # 800051a8 <_ZZ12printIntegermE6digits+0xe0>
    80004e0c:	fffff097          	auipc	ra,0xfffff
    80004e10:	afc080e7          	jalr	-1284(ra) # 80003908 <__printf>
    80004e14:	01013403          	ld	s0,16(sp)
    80004e18:	01813083          	ld	ra,24(sp)
    80004e1c:	00048513          	mv	a0,s1
    80004e20:	00813483          	ld	s1,8(sp)
    80004e24:	02010113          	addi	sp,sp,32
    80004e28:	ffffe317          	auipc	t1,0xffffe
    80004e2c:	6d430067          	jr	1748(t1) # 800034fc <plic_complete>
    80004e30:	fffff097          	auipc	ra,0xfffff
    80004e34:	3e0080e7          	jalr	992(ra) # 80004210 <uartintr>
    80004e38:	fddff06f          	j	80004e14 <console_handler+0x74>
    80004e3c:	00000517          	auipc	a0,0x0
    80004e40:	46c50513          	addi	a0,a0,1132 # 800052a8 <digits+0x78>
    80004e44:	fffff097          	auipc	ra,0xfffff
    80004e48:	a68080e7          	jalr	-1432(ra) # 800038ac <panic>
	...
