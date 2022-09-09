
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	a1013103          	ld	sp,-1520(sp) # 80006a10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7ed020ef          	jal	ra,80003008 <start>

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
    80001354:	00005797          	auipc	a5,0x5
    80001358:	74c78793          	addi	a5,a5,1868 # 80006aa0 <_ZN5Queue5queueE>
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
    80001374:	00005797          	auipc	a5,0x5
    80001378:	6b47b783          	ld	a5,1716(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000137c:	0007b783          	ld	a5,0(a5)
    80001380:	0c078a63          	beqz	a5,80001454 <_ZN5Queue3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80001384:	00005717          	auipc	a4,0x5
    80001388:	6a473703          	ld	a4,1700(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800013e0:	00005717          	auipc	a4,0x5
    800013e4:	64873703          	ld	a4,1608(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001434:	00005597          	auipc	a1,0x5
    80001438:	5f45b583          	ld	a1,1524(a1) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    8000145c:	00005717          	auipc	a4,0x5
    80001460:	64c73703          	ld	a4,1612(a4) # 80006aa8 <_ZN5Queue5queueE+0x8>
    80001464:	02070863          	beqz	a4,80001494 <_ZN5Queue3putEP3TCB+0x12c>
            tail->next=elem;
    80001468:	00f73423          	sd	a5,8(a4)
            tail=elem;
    8000146c:	00005717          	auipc	a4,0x5
    80001470:	62f73e23          	sd	a5,1596(a4) # 80006aa8 <_ZN5Queue5queueE+0x8>
}
    80001474:	00813403          	ld	s0,8(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001480:	0c070693          	addi	a3,a4,192
    80001484:	00005617          	auipc	a2,0x5
    80001488:	5a463603          	ld	a2,1444(a2) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000148c:	00d63023          	sd	a3,0(a2)
    80001490:	f79ff06f          	j	80001408 <_ZN5Queue3putEP3TCB+0xa0>
        }else{
            head=tail=elem;
    80001494:	00005717          	auipc	a4,0x5
    80001498:	60c70713          	addi	a4,a4,1548 # 80006aa0 <_ZN5Queue5queueE>
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
    800014bc:	00005517          	auipc	a0,0x5
    800014c0:	5e453503          	ld	a0,1508(a0) # 80006aa0 <_ZN5Queue5queueE>
    800014c4:	04050263          	beqz	a0,80001508 <_ZN5Queue3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    800014c8:	00853783          	ld	a5,8(a0)
    800014cc:	00005717          	auipc	a4,0x5
    800014d0:	5cf73a23          	sd	a5,1492(a4) # 80006aa0 <_ZN5Queue5queueE>
        if(!head) {
    800014d4:	02078463          	beqz	a5,800014fc <_ZN5Queue3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    800014d8:	00053483          	ld	s1,0(a0)
        delete elem;
    800014dc:	00001097          	auipc	ra,0x1
    800014e0:	748080e7          	jalr	1864(ra) # 80002c24 <_ZdlPv>
    }
    800014e4:	00048513          	mv	a0,s1
    800014e8:	01813083          	ld	ra,24(sp)
    800014ec:	01013403          	ld	s0,16(sp)
    800014f0:	00813483          	ld	s1,8(sp)
    800014f4:	02010113          	addi	sp,sp,32
    800014f8:	00008067          	ret
            tail = 0;
    800014fc:	00005797          	auipc	a5,0x5
    80001500:	5a07b623          	sd	zero,1452(a5) # 80006aa8 <_ZN5Queue5queueE+0x8>
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
    8000151c:	00005797          	auipc	a5,0x5
    80001520:	5847b783          	ld	a5,1412(a5) # 80006aa0 <_ZN5Queue5queueE>
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
    uint64 sstatus;
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
    80001610:	00004097          	auipc	ra,0x4
    80001614:	b30080e7          	jalr	-1232(ra) # 80005140 <console_handler>
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
    80001680:	00005717          	auipc	a4,0x5
    80001684:	3a873703          	ld	a4,936(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001688:	00073703          	ld	a4,0(a4)
    8000168c:	0c070863          	beqz	a4,8000175c <_ZN5RiscV20handleSupervisorTrapEv+0x1b8>
            cur->next=fmem_head->next;
    80001690:	00005697          	auipc	a3,0x5
    80001694:	3986b683          	ld	a3,920(a3) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800016e8:	00005797          	auipc	a5,0x5
    800016ec:	3407b783          	ld	a5,832(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    8000173c:	00005597          	auipc	a1,0x5
    80001740:	2ec5b583          	ld	a1,748(a1) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    8000176c:	00005597          	auipc	a1,0x5
    80001770:	2bc5b583          	ld	a1,700(a1) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001774:	00c5b023          	sd	a2,0(a1)
    80001778:	f99ff06f          	j	80001710 <_ZN5RiscV20handleSupervisorTrapEv+0x16c>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    8000177c:	00058793          	mv	a5,a1
    80001780:	fcf43423          	sd	a5,-56(s0)
            int ret=MemoryAllocation::mem_free((void*)ptr);
    80001784:	fc843703          	ld	a4,-56(s0)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001788:	00005797          	auipc	a5,0x5
    8000178c:	2a07b783          	ld	a5,672(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001830:	00005797          	auipc	a5,0x5
    80001834:	1f87b783          	ld	a5,504(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001838:	0007b783          	ld	a5,0(a5)
    8000183c:	00f73023          	sd	a5,0(a4)
    80001840:	f99ff06f          	j	800017d8 <_ZN5RiscV20handleSupervisorTrapEv+0x234>
                    fmem_head = newSeg;
    80001844:	00005797          	auipc	a5,0x5
    80001848:	1e47b783          	ld	a5,484(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800018ac:	d90080e7          	jalr	-624(ra) # 80002638 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>
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
    800018c0:	00005797          	auipc	a5,0x5
    800018c4:	1707b783          	ld	a5,368(a5) # 80006a30 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018c8:	0007b503          	ld	a0,0(a5)
    800018cc:	00001097          	auipc	ra,0x1
    800018d0:	d50080e7          	jalr	-688(ra) # 8000261c <_ZN3TCB11setFinishedEb>
        dispatch();
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	0a8080e7          	jalr	168(ra) # 8000297c <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    800018dc:	00000793          	li	a5,0
    800018e0:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    800018e4:	04b43c23          	sd	a1,88(s0)
    800018e8:	d5dff06f          	j	80001644 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
    static void thread_dispatch(){dispatch();}
    800018ec:	00001097          	auipc	ra,0x1
    800018f0:	090080e7          	jalr	144(ra) # 8000297c <_ZN3TCB8dispatchEv>
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
    80001914:	01213023          	sd	s2,0(sp)
    80001918:	02010413          	addi	s0,sp,32
    8000191c:	00050913          	mv	s2,a0
        //setjmp je linija old=running;
        TCB *old = TCB::running;
    80001920:	00005797          	auipc	a5,0x5
    80001924:	1107b783          	ld	a5,272(a5) # 80006a30 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001928:	0007b483          	ld	s1,0(a5)
        old->semBlocked=this;
    8000192c:	02a4b823          	sd	a0,48(s1)
        if (!old->isFinished()) {
    80001930:	00048513          	mv	a0,s1
    80001934:	00001097          	auipc	ra,0x1
    80001938:	ccc080e7          	jalr	-820(ra) # 80002600 <_ZNK3TCB10isFinishedEv>
    8000193c:	04050063          	beqz	a0,8000197c <_ZN9semaphore5blockEv+0x78>
            blocked->addLast(old);
        }
        TCB::running = Scheduler::get();
    80001940:	00000097          	auipc	ra,0x0
    80001944:	628080e7          	jalr	1576(ra) # 80001f68 <_ZN9Scheduler3getEv>
    80001948:	00005797          	auipc	a5,0x5
    8000194c:	0e87b783          	ld	a5,232(a5) # 80006a30 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001950:	00a7b023          	sd	a0,0(a5)


        TCB::contextSwitch(&old->context, &TCB::running->context);//TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
    80001954:	01050593          	addi	a1,a0,16
    80001958:	01048513          	addi	a0,s1,16
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	8d4080e7          	jalr	-1836(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
        //marinko kaze da je dobar ovaj block

        //TCB::running->semBlocked=this;
        //this->blocked->put(TCB::running);
        //TCB::dispatch();
}
    80001964:	01813083          	ld	ra,24(sp)
    80001968:	01013403          	ld	s0,16(sp)
    8000196c:	00813483          	ld	s1,8(sp)
    80001970:	00013903          	ld	s2,0(sp)
    80001974:	02010113          	addi	sp,sp,32
    80001978:	00008067          	ret
            blocked->addLast(old);
    8000197c:	00893583          	ld	a1,8(s2)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001980:	00005797          	auipc	a5,0x5
    80001984:	0a87b783          	ld	a5,168(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001988:	0007b783          	ld	a5,0(a5)
    8000198c:	0c078a63          	beqz	a5,80001a60 <_ZN9semaphore5blockEv+0x15c>
            cur->next=fmem_head->next;
    80001990:	00005717          	auipc	a4,0x5
    80001994:	09873703          	ld	a4,152(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001998:	00073683          	ld	a3,0(a4)
    8000199c:	0006b683          	ld	a3,0(a3)
    800019a0:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    800019a4:	00073703          	ld	a4,0(a4)
    800019a8:	00873603          	ld	a2,8(a4)
    800019ac:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    800019b0:	0107b703          	ld	a4,16(a5)
    800019b4:	03f00513          	li	a0,63
    800019b8:	02e57663          	bgeu	a0,a4,800019e4 <_ZN9semaphore5blockEv+0xe0>
            if (cur->size-size<=sizeof(FreeMem)){
    800019bc:	fc070713          	addi	a4,a4,-64
    800019c0:	01800513          	li	a0,24
    800019c4:	02e56c63          	bltu	a0,a4,800019fc <_ZN9semaphore5blockEv+0xf8>
                if (cur->prev) cur->prev->next = cur->next;
    800019c8:	02060263          	beqz	a2,800019ec <_ZN9semaphore5blockEv+0xe8>
    800019cc:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    800019d0:	0007b703          	ld	a4,0(a5)
    800019d4:	08070663          	beqz	a4,80001a60 <_ZN9semaphore5blockEv+0x15c>
    800019d8:	0087b683          	ld	a3,8(a5)
    800019dc:	00d73423          	sd	a3,8(a4)
                return cur;
    800019e0:	0800006f          	j	80001a60 <_ZN9semaphore5blockEv+0x15c>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800019e4:	00068793          	mv	a5,a3
    800019e8:	fa5ff06f          	j	8000198c <_ZN9semaphore5blockEv+0x88>
                else fmem_head = cur->next;
    800019ec:	00005717          	auipc	a4,0x5
    800019f0:	03c73703          	ld	a4,60(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019f4:	00d73023          	sd	a3,0(a4)
    800019f8:	fd9ff06f          	j	800019d0 <_ZN9semaphore5blockEv+0xcc>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800019fc:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001a00:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001a04:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001a08:	0087b683          	ld	a3,8(a5)
    80001a0c:	06068863          	beqz	a3,80001a7c <_ZN9semaphore5blockEv+0x178>
    80001a10:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001a14:	0007b683          	ld	a3,0(a5)
    80001a18:	00068463          	beqz	a3,80001a20 <_ZN9semaphore5blockEv+0x11c>
    80001a1c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001a20:	0087b603          	ld	a2,8(a5)
    80001a24:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001a28:	0007b683          	ld	a3,0(a5)
    80001a2c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001a30:	0107b783          	ld	a5,16(a5)
    80001a34:	fc078793          	addi	a5,a5,-64
    80001a38:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001a3c:	0c070693          	addi	a3,a4,192
    80001a40:	00005517          	auipc	a0,0x5
    80001a44:	fe853503          	ld	a0,-24(a0) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a48:	00d53023          	sd	a3,0(a0)
                fmem_head->next=newfrgm->next;
    80001a4c:	00073503          	ld	a0,0(a4)
    80001a50:	0ca73023          	sd	a0,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001a54:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001a58:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001a5c:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    80001a60:	0097b023          	sd	s1,0(a5)
        elem->next=nullptr;
    80001a64:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001a68:	0085b703          	ld	a4,8(a1)
    80001a6c:	02070263          	beqz	a4,80001a90 <_ZN9semaphore5blockEv+0x18c>
            tail->next=elem;
    80001a70:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001a74:	00f5b423          	sd	a5,8(a1)
    80001a78:	ec9ff06f          	j	80001940 <_ZN9semaphore5blockEv+0x3c>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001a7c:	0c070693          	addi	a3,a4,192
    80001a80:	00005617          	auipc	a2,0x5
    80001a84:	fa863603          	ld	a2,-88(a2) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a88:	00d63023          	sd	a3,0(a2)
    80001a8c:	f89ff06f          	j	80001a14 <_ZN9semaphore5blockEv+0x110>
        }else{
            head=tail=elem;
    80001a90:	00f5b423          	sd	a5,8(a1)
    80001a94:	00f5b023          	sd	a5,0(a1)
    80001a98:	ea9ff06f          	j	80001940 <_ZN9semaphore5blockEv+0x3c>

0000000080001a9c <_ZN9semaphore7unblockEv>:

void semaphore::unblock() {
    80001a9c:	fe010113          	addi	sp,sp,-32
    80001aa0:	00113c23          	sd	ra,24(sp)
    80001aa4:	00813823          	sd	s0,16(sp)
    80001aa8:	00913423          	sd	s1,8(sp)
    80001aac:	02010413          	addi	s0,sp,32
    TCB* t = blocked->removeFirst();
    80001ab0:	00853783          	ld	a5,8(a0)
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001ab4:	0007b503          	ld	a0,0(a5)
    80001ab8:	04050463          	beqz	a0,80001b00 <_ZN9semaphore7unblockEv+0x64>
        Elem *elem = head;
        head = head->next;
    80001abc:	00853703          	ld	a4,8(a0)
    80001ac0:	00e7b023          	sd	a4,0(a5)
        if(!head) {
    80001ac4:	02070a63          	beqz	a4,80001af8 <_ZN9semaphore7unblockEv+0x5c>
            tail = 0;
        }
        T* ret = elem->data;
    80001ac8:	00053483          	ld	s1,0(a0)
        delete elem;
    80001acc:	00001097          	auipc	ra,0x1
    80001ad0:	158080e7          	jalr	344(ra) # 80002c24 <_ZdlPv>
    t->semBlocked=nullptr;
    80001ad4:	0204b823          	sd	zero,48(s1)
    Scheduler::put(t);
    80001ad8:	00048513          	mv	a0,s1
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	4f4080e7          	jalr	1268(ra) # 80001fd0 <_ZN9Scheduler3putEP3TCB>
}
    80001ae4:	01813083          	ld	ra,24(sp)
    80001ae8:	01013403          	ld	s0,16(sp)
    80001aec:	00813483          	ld	s1,8(sp)
    80001af0:	02010113          	addi	sp,sp,32
    80001af4:	00008067          	ret
            tail = 0;
    80001af8:	0007b423          	sd	zero,8(a5)
    80001afc:	fcdff06f          	j	80001ac8 <_ZN9semaphore7unblockEv+0x2c>
        if (!head) {return 0;}
    80001b00:	00050493          	mv	s1,a0
    80001b04:	fd1ff06f          	j	80001ad4 <_ZN9semaphore7unblockEv+0x38>

0000000080001b08 <_ZN9semaphore7semOpenEPPS_i>:

int semaphore::semOpen(semaphore **handle, int init) {
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00813423          	sd	s0,8(sp)
    80001b10:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001b14:	00005797          	auipc	a5,0x5
    80001b18:	f147b783          	ld	a5,-236(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b1c:	0007b783          	ld	a5,0(a5)
    80001b20:	0c078a63          	beqz	a5,80001bf4 <_ZN9semaphore7semOpenEPPS_i+0xec>
            cur->next=fmem_head->next;
    80001b24:	00005717          	auipc	a4,0x5
    80001b28:	f0473703          	ld	a4,-252(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b2c:	00073683          	ld	a3,0(a4)
    80001b30:	0006b683          	ld	a3,0(a3)
    80001b34:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001b38:	00073703          	ld	a4,0(a4)
    80001b3c:	00873603          	ld	a2,8(a4)
    80001b40:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001b44:	0107b703          	ld	a4,16(a5)
    80001b48:	03f00813          	li	a6,63
    80001b4c:	02e87663          	bgeu	a6,a4,80001b78 <_ZN9semaphore7semOpenEPPS_i+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001b50:	fc070713          	addi	a4,a4,-64
    80001b54:	01800813          	li	a6,24
    80001b58:	02e86c63          	bltu	a6,a4,80001b90 <_ZN9semaphore7semOpenEPPS_i+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001b5c:	02060263          	beqz	a2,80001b80 <_ZN9semaphore7semOpenEPPS_i+0x78>
    80001b60:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001b64:	0007b703          	ld	a4,0(a5)
    80001b68:	08070663          	beqz	a4,80001bf4 <_ZN9semaphore7semOpenEPPS_i+0xec>
    80001b6c:	0087b683          	ld	a3,8(a5)
    80001b70:	00d73423          	sd	a3,8(a4)
                return cur;
    80001b74:	0800006f          	j	80001bf4 <_ZN9semaphore7semOpenEPPS_i+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001b78:	00068793          	mv	a5,a3
    80001b7c:	fa5ff06f          	j	80001b20 <_ZN9semaphore7semOpenEPPS_i+0x18>
                else fmem_head = cur->next;
    80001b80:	00005717          	auipc	a4,0x5
    80001b84:	ea873703          	ld	a4,-344(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b88:	00d73023          	sd	a3,0(a4)
    80001b8c:	fd9ff06f          	j	80001b64 <_ZN9semaphore7semOpenEPPS_i+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001b90:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001b94:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001b98:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001b9c:	0087b683          	ld	a3,8(a5)
    80001ba0:	0c068463          	beqz	a3,80001c68 <_ZN9semaphore7semOpenEPPS_i+0x160>
    80001ba4:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001ba8:	0007b683          	ld	a3,0(a5)
    80001bac:	00068463          	beqz	a3,80001bb4 <_ZN9semaphore7semOpenEPPS_i+0xac>
    80001bb0:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001bb4:	0087b603          	ld	a2,8(a5)
    80001bb8:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001bbc:	0007b683          	ld	a3,0(a5)
    80001bc0:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001bc4:	0107b783          	ld	a5,16(a5)
    80001bc8:	fc078793          	addi	a5,a5,-64
    80001bcc:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001bd0:	0c070693          	addi	a3,a4,192
    80001bd4:	00005817          	auipc	a6,0x5
    80001bd8:	e5483803          	ld	a6,-428(a6) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001bdc:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80001be0:	00073803          	ld	a6,0(a4)
    80001be4:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001be8:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001bec:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001bf0:	00070793          	mv	a5,a4
    *handle=(semaphore*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(semaphore)));
    80001bf4:	00f53023          	sd	a5,0(a0)
    if (*handle==nullptr){
    80001bf8:	12078463          	beqz	a5,80001d20 <_ZN9semaphore7semOpenEPPS_i+0x218>
        return -1;
    }
    (*handle)->val=init;
    80001bfc:	00b7a023          	sw	a1,0(a5)
    (*handle)->blocked=(LinkedList<TCB>*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(LinkedList<TCB>)));
    80001c00:	00053503          	ld	a0,0(a0)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001c04:	00005797          	auipc	a5,0x5
    80001c08:	e247b783          	ld	a5,-476(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c0c:	0007b783          	ld	a5,0(a5)
    80001c10:	0e078463          	beqz	a5,80001cf8 <_ZN9semaphore7semOpenEPPS_i+0x1f0>
            cur->next=fmem_head->next;
    80001c14:	00005717          	auipc	a4,0x5
    80001c18:	e1473703          	ld	a4,-492(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c1c:	00073683          	ld	a3,0(a4)
    80001c20:	0006b683          	ld	a3,0(a3)
    80001c24:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001c28:	00073703          	ld	a4,0(a4)
    80001c2c:	00873603          	ld	a2,8(a4)
    80001c30:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001c34:	0107b703          	ld	a4,16(a5)
    80001c38:	03f00593          	li	a1,63
    80001c3c:	04e5f063          	bgeu	a1,a4,80001c7c <_ZN9semaphore7semOpenEPPS_i+0x174>
            if (cur->size-size<=sizeof(FreeMem)){
    80001c40:	fc070713          	addi	a4,a4,-64
    80001c44:	01800593          	li	a1,24
    80001c48:	04e5e663          	bltu	a1,a4,80001c94 <_ZN9semaphore7semOpenEPPS_i+0x18c>
                if (cur->prev) cur->prev->next = cur->next;
    80001c4c:	02060c63          	beqz	a2,80001c84 <_ZN9semaphore7semOpenEPPS_i+0x17c>
    80001c50:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001c54:	0007b703          	ld	a4,0(a5)
    80001c58:	0a070063          	beqz	a4,80001cf8 <_ZN9semaphore7semOpenEPPS_i+0x1f0>
    80001c5c:	0087b683          	ld	a3,8(a5)
    80001c60:	00d73423          	sd	a3,8(a4)
                return cur;
    80001c64:	0940006f          	j	80001cf8 <_ZN9semaphore7semOpenEPPS_i+0x1f0>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001c68:	0c070693          	addi	a3,a4,192
    80001c6c:	00005617          	auipc	a2,0x5
    80001c70:	dbc63603          	ld	a2,-580(a2) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c74:	00d63023          	sd	a3,0(a2)
    80001c78:	f31ff06f          	j	80001ba8 <_ZN9semaphore7semOpenEPPS_i+0xa0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001c7c:	00068793          	mv	a5,a3
    80001c80:	f91ff06f          	j	80001c10 <_ZN9semaphore7semOpenEPPS_i+0x108>
                else fmem_head = cur->next;
    80001c84:	00005717          	auipc	a4,0x5
    80001c88:	da473703          	ld	a4,-604(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c8c:	00d73023          	sd	a3,0(a4)
    80001c90:	fc5ff06f          	j	80001c54 <_ZN9semaphore7semOpenEPPS_i+0x14c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001c94:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001c98:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001c9c:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001ca0:	0087b683          	ld	a3,8(a5)
    80001ca4:	06068463          	beqz	a3,80001d0c <_ZN9semaphore7semOpenEPPS_i+0x204>
    80001ca8:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001cac:	0007b683          	ld	a3,0(a5)
    80001cb0:	00068463          	beqz	a3,80001cb8 <_ZN9semaphore7semOpenEPPS_i+0x1b0>
    80001cb4:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001cb8:	0087b603          	ld	a2,8(a5)
    80001cbc:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001cc0:	0007b683          	ld	a3,0(a5)
    80001cc4:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001cc8:	0107b783          	ld	a5,16(a5)
    80001ccc:	fc078793          	addi	a5,a5,-64
    80001cd0:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001cd4:	0c070693          	addi	a3,a4,192
    80001cd8:	00005597          	auipc	a1,0x5
    80001cdc:	d505b583          	ld	a1,-688(a1) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ce0:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001ce4:	00073583          	ld	a1,0(a4)
    80001ce8:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001cec:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001cf0:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001cf4:	00070793          	mv	a5,a4
    80001cf8:	00f53423          	sd	a5,8(a0)
    return  0;
    80001cfc:	00000513          	li	a0,0
}
    80001d00:	00813403          	ld	s0,8(sp)
    80001d04:	01010113          	addi	sp,sp,16
    80001d08:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001d0c:	0c070693          	addi	a3,a4,192
    80001d10:	00005617          	auipc	a2,0x5
    80001d14:	d1863603          	ld	a2,-744(a2) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d18:	00d63023          	sd	a3,0(a2)
    80001d1c:	f91ff06f          	j	80001cac <_ZN9semaphore7semOpenEPPS_i+0x1a4>
        return -1;
    80001d20:	fff00513          	li	a0,-1
    80001d24:	fddff06f          	j	80001d00 <_ZN9semaphore7semOpenEPPS_i+0x1f8>

0000000080001d28 <_ZN9semaphore8semCloseEPS_>:

int semaphore::semClose(semaphore *semID) {
    80001d28:	fe010113          	addi	sp,sp,-32
    80001d2c:	00113c23          	sd	ra,24(sp)
    80001d30:	00813823          	sd	s0,16(sp)
    80001d34:	00913423          	sd	s1,8(sp)
    80001d38:	02010413          	addi	s0,sp,32
    80001d3c:	00050493          	mv	s1,a0
    while(((semID)->blocked->listEmpty())==false){
    80001d40:	0084b783          	ld	a5,8(s1)
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    80001d44:	0007b783          	ld	a5,0(a5)
    80001d48:	00078e63          	beqz	a5,80001d64 <_ZN9semaphore8semCloseEPS_+0x3c>
        return head->data;
    80001d4c:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    80001d50:	00078a63          	beqz	a5,80001d64 <_ZN9semaphore8semCloseEPS_+0x3c>
        (semID)->unblock();
    80001d54:	00048513          	mv	a0,s1
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	d44080e7          	jalr	-700(ra) # 80001a9c <_ZN9semaphore7unblockEv>
    while(((semID)->blocked->listEmpty())==false){
    80001d60:	fe1ff06f          	j	80001d40 <_ZN9semaphore8semCloseEPS_+0x18>
        if(!fmem_head || ptr < (char*)fmem_head)
    80001d64:	00005797          	auipc	a5,0x5
    80001d68:	cc47b783          	ld	a5,-828(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d6c:	0007b783          	ld	a5,0(a5)
    80001d70:	00078e63          	beqz	a5,80001d8c <_ZN9semaphore8semCloseEPS_+0x64>
    80001d74:	02f4e063          	bltu	s1,a5,80001d94 <_ZN9semaphore8semCloseEPS_+0x6c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001d78:	00078713          	mv	a4,a5
    80001d7c:	0007b783          	ld	a5,0(a5)
    80001d80:	00f48c63          	beq	s1,a5,80001d98 <_ZN9semaphore8semCloseEPS_+0x70>
    80001d84:	fe97eae3          	bltu	a5,s1,80001d78 <_ZN9semaphore8semCloseEPS_+0x50>
    80001d88:	0100006f          	j	80001d98 <_ZN9semaphore8semCloseEPS_+0x70>
            cur=nullptr;
    80001d8c:	00078713          	mv	a4,a5
    80001d90:	0080006f          	j	80001d98 <_ZN9semaphore8semCloseEPS_+0x70>
    80001d94:	00000713          	li	a4,0
                newSeg->next=nullptr;
    80001d98:	0004b023          	sd	zero,0(s1)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001d9c:	04000793          	li	a5,64
    80001da0:	00f4b823          	sd	a5,16(s1)
                newSeg->prev=cur;
    80001da4:	00e4b423          	sd	a4,8(s1)
                if(cur) {
    80001da8:	06070463          	beqz	a4,80001e10 <_ZN9semaphore8semCloseEPS_+0xe8>
                    newSeg->next = cur->next;
    80001dac:	00073783          	ld	a5,0(a4)
    80001db0:	00f4b023          	sd	a5,0(s1)
                if(newSeg->next) {
    80001db4:	0004b783          	ld	a5,0(s1)
    80001db8:	00078463          	beqz	a5,80001dc0 <_ZN9semaphore8semCloseEPS_+0x98>
                    newSeg->next->prev=newSeg;
    80001dbc:	0097b423          	sd	s1,8(a5)
                if (cur) {
    80001dc0:	06070263          	beqz	a4,80001e24 <_ZN9semaphore8semCloseEPS_+0xfc>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001dc4:	00973023          	sd	s1,0(a4)
        if (!curr) return;
    80001dc8:	00048c63          	beqz	s1,80001de0 <_ZN9semaphore8semCloseEPS_+0xb8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001dcc:	0004b783          	ld	a5,0(s1)
    80001dd0:	00078863          	beqz	a5,80001de0 <_ZN9semaphore8semCloseEPS_+0xb8>
    80001dd4:	0104b683          	ld	a3,16(s1)
    80001dd8:	00d48633          	add	a2,s1,a3
    80001ddc:	04c78c63          	beq	a5,a2,80001e34 <_ZN9semaphore8semCloseEPS_+0x10c>
        if (!curr) return;
    80001de0:	00070c63          	beqz	a4,80001df8 <_ZN9semaphore8semCloseEPS_+0xd0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001de4:	00073783          	ld	a5,0(a4)
    80001de8:	00078863          	beqz	a5,80001df8 <_ZN9semaphore8semCloseEPS_+0xd0>
    80001dec:	01073683          	ld	a3,16(a4)
    80001df0:	00d70633          	add	a2,a4,a3
    80001df4:	06c78063          	beq	a5,a2,80001e54 <_ZN9semaphore8semCloseEPS_+0x12c>
        //TODO wait treba da vrati gresku? Kako to?
    }
    MemoryAllocation::mem_free(semID); //TODO mozda moze i samo (*handle)=nullptr
    return 0;
}
    80001df8:	00000513          	li	a0,0
    80001dfc:	01813083          	ld	ra,24(sp)
    80001e00:	01013403          	ld	s0,16(sp)
    80001e04:	00813483          	ld	s1,8(sp)
    80001e08:	02010113          	addi	sp,sp,32
    80001e0c:	00008067          	ret
                    newSeg->next = fmem_head;
    80001e10:	00005797          	auipc	a5,0x5
    80001e14:	c187b783          	ld	a5,-1000(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e18:	0007b783          	ld	a5,0(a5)
    80001e1c:	00f4b023          	sd	a5,0(s1)
    80001e20:	f95ff06f          	j	80001db4 <_ZN9semaphore8semCloseEPS_+0x8c>
                    fmem_head = newSeg;
    80001e24:	00005797          	auipc	a5,0x5
    80001e28:	c047b783          	ld	a5,-1020(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e2c:	0097b023          	sd	s1,0(a5)
    80001e30:	f99ff06f          	j	80001dc8 <_ZN9semaphore8semCloseEPS_+0xa0>
            curr->size += curr->next->size;
    80001e34:	0107b603          	ld	a2,16(a5)
    80001e38:	00c686b3          	add	a3,a3,a2
    80001e3c:	00d4b823          	sd	a3,16(s1)
            curr->next = curr->next->next;
    80001e40:	0007b783          	ld	a5,0(a5)
    80001e44:	00f4b023          	sd	a5,0(s1)
            if (curr->next) curr->next->prev = curr;
    80001e48:	f8078ce3          	beqz	a5,80001de0 <_ZN9semaphore8semCloseEPS_+0xb8>
    80001e4c:	0097b423          	sd	s1,8(a5)
    80001e50:	f91ff06f          	j	80001de0 <_ZN9semaphore8semCloseEPS_+0xb8>
            curr->size += curr->next->size;
    80001e54:	0107b603          	ld	a2,16(a5)
    80001e58:	00c686b3          	add	a3,a3,a2
    80001e5c:	00d73823          	sd	a3,16(a4)
            curr->next = curr->next->next;
    80001e60:	0007b783          	ld	a5,0(a5)
    80001e64:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001e68:	f80788e3          	beqz	a5,80001df8 <_ZN9semaphore8semCloseEPS_+0xd0>
    80001e6c:	00e7b423          	sd	a4,8(a5)
    80001e70:	f89ff06f          	j	80001df8 <_ZN9semaphore8semCloseEPS_+0xd0>

0000000080001e74 <_ZN9semaphore7semWaitEPS_>:

int semaphore::semWait(semaphore *semID) {
    if(semID == nullptr){return -1;}
    80001e74:	04050663          	beqz	a0,80001ec0 <_ZN9semaphore7semWaitEPS_+0x4c>
    if((--((semID)->val))<0) { (semID)->block(); }
    80001e78:	00052783          	lw	a5,0(a0)
    80001e7c:	fff7879b          	addiw	a5,a5,-1
    80001e80:	00f52023          	sw	a5,0(a0)
    80001e84:	02079713          	slli	a4,a5,0x20
    80001e88:	00074663          	bltz	a4,80001e94 <_ZN9semaphore7semWaitEPS_+0x20>
    return 0;
    80001e8c:	00000513          	li	a0,0
}
    80001e90:	00008067          	ret
int semaphore::semWait(semaphore *semID) {
    80001e94:	ff010113          	addi	sp,sp,-16
    80001e98:	00113423          	sd	ra,8(sp)
    80001e9c:	00813023          	sd	s0,0(sp)
    80001ea0:	01010413          	addi	s0,sp,16
    if((--((semID)->val))<0) { (semID)->block(); }
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	a60080e7          	jalr	-1440(ra) # 80001904 <_ZN9semaphore5blockEv>
    return 0;
    80001eac:	00000513          	li	a0,0
}
    80001eb0:	00813083          	ld	ra,8(sp)
    80001eb4:	00013403          	ld	s0,0(sp)
    80001eb8:	01010113          	addi	sp,sp,16
    80001ebc:	00008067          	ret
    if(semID == nullptr){return -1;}
    80001ec0:	fff00513          	li	a0,-1
    80001ec4:	00008067          	ret

0000000080001ec8 <_ZN9semaphore9semSignalEPS_>:

int semaphore::semSignal(semaphore *semID) {
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    80001ec8:	00052783          	lw	a5,0(a0)
    80001ecc:	0017879b          	addiw	a5,a5,1
    80001ed0:	0007871b          	sext.w	a4,a5
    80001ed4:	00f52023          	sw	a5,0(a0)
    80001ed8:	00e05663          	blez	a4,80001ee4 <_ZN9semaphore9semSignalEPS_+0x1c>
    return 0;
}
    80001edc:	00000513          	li	a0,0
    80001ee0:	00008067          	ret
int semaphore::semSignal(semaphore *semID) {
    80001ee4:	ff010113          	addi	sp,sp,-16
    80001ee8:	00113423          	sd	ra,8(sp)
    80001eec:	00813023          	sd	s0,0(sp)
    80001ef0:	01010413          	addi	s0,sp,16
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	ba8080e7          	jalr	-1112(ra) # 80001a9c <_ZN9semaphore7unblockEv>
}
    80001efc:	00000513          	li	a0,0
    80001f00:	00813083          	ld	ra,8(sp)
    80001f04:	00013403          	ld	s0,0(sp)
    80001f08:	01010113          	addi	sp,sp,16
    80001f0c:	00008067          	ret

0000000080001f10 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001f10:	ff010113          	addi	sp,sp,-16
    80001f14:	00813423          	sd	s0,8(sp)
    80001f18:	01010413          	addi	s0,sp,16
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001f1c:	00813403          	ld	s0,8(sp)
    80001f20:	01010113          	addi	sp,sp,16
    80001f24:	00008067          	ret

0000000080001f28 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80001f28:	ff010113          	addi	sp,sp,-16
    80001f2c:	00813423          	sd	s0,8(sp)
    80001f30:	01010413          	addi	s0,sp,16
    80001f34:	00100793          	li	a5,1
    80001f38:	00f50863          	beq	a0,a5,80001f48 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001f3c:	00813403          	ld	s0,8(sp)
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret
    80001f48:	000107b7          	lui	a5,0x10
    80001f4c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f50:	fef596e3          	bne	a1,a5,80001f3c <_Z41__static_initialization_and_destruction_0ii+0x14>
    LinkedList() : head(0), tail(0) {}
    80001f54:	00005797          	auipc	a5,0x5
    80001f58:	b5c78793          	addi	a5,a5,-1188 # 80006ab0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001f5c:	0007b023          	sd	zero,0(a5)
    80001f60:	0007b423          	sd	zero,8(a5)
    80001f64:	fd9ff06f          	j	80001f3c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001f68 <_ZN9Scheduler3getEv>:
{
    80001f68:	fe010113          	addi	sp,sp,-32
    80001f6c:	00113c23          	sd	ra,24(sp)
    80001f70:	00813823          	sd	s0,16(sp)
    80001f74:	00913423          	sd	s1,8(sp)
    80001f78:	02010413          	addi	s0,sp,32
        if (!head) {return 0;}
    80001f7c:	00005517          	auipc	a0,0x5
    80001f80:	b3453503          	ld	a0,-1228(a0) # 80006ab0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001f84:	04050263          	beqz	a0,80001fc8 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001f88:	00853783          	ld	a5,8(a0)
    80001f8c:	00005717          	auipc	a4,0x5
    80001f90:	b2f73223          	sd	a5,-1244(a4) # 80006ab0 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80001f94:	02078463          	beqz	a5,80001fbc <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    80001f98:	00053483          	ld	s1,0(a0)
        delete elem;
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	c88080e7          	jalr	-888(ra) # 80002c24 <_ZdlPv>
}
    80001fa4:	00048513          	mv	a0,s1
    80001fa8:	01813083          	ld	ra,24(sp)
    80001fac:	01013403          	ld	s0,16(sp)
    80001fb0:	00813483          	ld	s1,8(sp)
    80001fb4:	02010113          	addi	sp,sp,32
    80001fb8:	00008067          	ret
            tail = 0;
    80001fbc:	00005797          	auipc	a5,0x5
    80001fc0:	ae07be23          	sd	zero,-1284(a5) # 80006ab8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001fc4:	fd5ff06f          	j	80001f98 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80001fc8:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80001fcc:	fd9ff06f          	j	80001fa4 <_ZN9Scheduler3getEv+0x3c>

0000000080001fd0 <_ZN9Scheduler3putEP3TCB>:
{
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001fdc:	00005797          	auipc	a5,0x5
    80001fe0:	a4c7b783          	ld	a5,-1460(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fe4:	0007b783          	ld	a5,0(a5)
    80001fe8:	0c078a63          	beqz	a5,800020bc <_ZN9Scheduler3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80001fec:	00005717          	auipc	a4,0x5
    80001ff0:	a3c73703          	ld	a4,-1476(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ff4:	00073683          	ld	a3,0(a4)
    80001ff8:	0006b683          	ld	a3,0(a3)
    80001ffc:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80002000:	00073703          	ld	a4,0(a4)
    80002004:	00873603          	ld	a2,8(a4)
    80002008:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    8000200c:	0107b703          	ld	a4,16(a5)
    80002010:	03f00593          	li	a1,63
    80002014:	02e5f663          	bgeu	a1,a4,80002040 <_ZN9Scheduler3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80002018:	fc070713          	addi	a4,a4,-64
    8000201c:	01800593          	li	a1,24
    80002020:	02e5ec63          	bltu	a1,a4,80002058 <_ZN9Scheduler3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80002024:	02060263          	beqz	a2,80002048 <_ZN9Scheduler3putEP3TCB+0x78>
    80002028:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    8000202c:	0007b703          	ld	a4,0(a5)
    80002030:	08070663          	beqz	a4,800020bc <_ZN9Scheduler3putEP3TCB+0xec>
    80002034:	0087b683          	ld	a3,8(a5)
    80002038:	00d73423          	sd	a3,8(a4)
                return cur;
    8000203c:	0800006f          	j	800020bc <_ZN9Scheduler3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002040:	00068793          	mv	a5,a3
    80002044:	fa5ff06f          	j	80001fe8 <_ZN9Scheduler3putEP3TCB+0x18>
                else fmem_head = cur->next;
    80002048:	00005717          	auipc	a4,0x5
    8000204c:	9e073703          	ld	a4,-1568(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002050:	00d73023          	sd	a3,0(a4)
    80002054:	fd9ff06f          	j	8000202c <_ZN9Scheduler3putEP3TCB+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002058:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    8000205c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002060:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002064:	0087b683          	ld	a3,8(a5)
    80002068:	08068063          	beqz	a3,800020e8 <_ZN9Scheduler3putEP3TCB+0x118>
    8000206c:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002070:	0007b683          	ld	a3,0(a5)
    80002074:	00068463          	beqz	a3,8000207c <_ZN9Scheduler3putEP3TCB+0xac>
    80002078:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    8000207c:	0087b603          	ld	a2,8(a5)
    80002080:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002084:	0007b683          	ld	a3,0(a5)
    80002088:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    8000208c:	0107b783          	ld	a5,16(a5)
    80002090:	fc078793          	addi	a5,a5,-64
    80002094:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002098:	0c070693          	addi	a3,a4,192
    8000209c:	00005597          	auipc	a1,0x5
    800020a0:	98c5b583          	ld	a1,-1652(a1) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020a4:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800020a8:	00073583          	ld	a1,0(a4)
    800020ac:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    800020b0:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800020b4:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800020b8:	00070793          	mv	a5,a4
        elem->data=data;
    800020bc:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    800020c0:	0007b423          	sd	zero,8(a5)
        if (tail){
    800020c4:	00005717          	auipc	a4,0x5
    800020c8:	9f473703          	ld	a4,-1548(a4) # 80006ab8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800020cc:	02070863          	beqz	a4,800020fc <_ZN9Scheduler3putEP3TCB+0x12c>
            tail->next=elem;
    800020d0:	00f73423          	sd	a5,8(a4)
            tail=elem;
    800020d4:	00005717          	auipc	a4,0x5
    800020d8:	9ef73223          	sd	a5,-1564(a4) # 80006ab8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800020dc:	00813403          	ld	s0,8(sp)
    800020e0:	01010113          	addi	sp,sp,16
    800020e4:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800020e8:	0c070693          	addi	a3,a4,192
    800020ec:	00005617          	auipc	a2,0x5
    800020f0:	93c63603          	ld	a2,-1732(a2) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020f4:	00d63023          	sd	a3,0(a2)
    800020f8:	f79ff06f          	j	80002070 <_ZN9Scheduler3putEP3TCB+0xa0>
            head=tail=elem;
    800020fc:	00005717          	auipc	a4,0x5
    80002100:	9b470713          	addi	a4,a4,-1612 # 80006ab0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002104:	00f73423          	sd	a5,8(a4)
    80002108:	00f73023          	sd	a5,0(a4)
    8000210c:	fd1ff06f          	j	800020dc <_ZN9Scheduler3putEP3TCB+0x10c>

0000000080002110 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00113423          	sd	ra,8(sp)
    80002118:	00813023          	sd	s0,0(sp)
    8000211c:	01010413          	addi	s0,sp,16
    80002120:	000105b7          	lui	a1,0x10
    80002124:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002128:	00100513          	li	a0,1
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	dfc080e7          	jalr	-516(ra) # 80001f28 <_Z41__static_initialization_and_destruction_0ii>
    80002134:	00813083          	ld	ra,8(sp)
    80002138:	00013403          	ld	s0,0(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_Z8dummyfunPv>:
        printString("sibiceee i papirr cigaraaa\n");
        semaphore::semSignal(agent);
        semaphore::semSignal(mutex);
    }
}
void dummyfun(void *){
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00113423          	sd	ra,8(sp)
    8000214c:	00813023          	sd	s0,0(sp)
    80002150:	01010413          	addi	s0,sp,16
    int i = semaphore::semWait(dummy);
    80002154:	00005517          	auipc	a0,0x5
    80002158:	96c53503          	ld	a0,-1684(a0) # 80006ac0 <dummy>
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	d18080e7          	jalr	-744(ra) # 80001e74 <_ZN9semaphore7semWaitEPS_>
    if(i==-1)printString("waitvreacagreskukadjeubijemnem \n");
    80002164:	fff00793          	li	a5,-1
    80002168:	02f50263          	beq	a0,a5,8000218c <_Z8dummyfunPv+0x48>
    printString("kitaljka\n");
    8000216c:	00004517          	auipc	a0,0x4
    80002170:	edc50513          	addi	a0,a0,-292 # 80006048 <CONSOLE_STATUS+0x38>
    80002174:	00001097          	auipc	ra,0x1
    80002178:	d48080e7          	jalr	-696(ra) # 80002ebc <_Z11printStringPKc>
    8000217c:	00813083          	ld	ra,8(sp)
    80002180:	00013403          	ld	s0,0(sp)
    80002184:	01010113          	addi	sp,sp,16
    80002188:	00008067          	ret
    if(i==-1)printString("waitvreacagreskukadjeubijemnem \n");
    8000218c:	00004517          	auipc	a0,0x4
    80002190:	e9450513          	addi	a0,a0,-364 # 80006020 <CONSOLE_STATUS+0x10>
    80002194:	00001097          	auipc	ra,0x1
    80002198:	d28080e7          	jalr	-728(ra) # 80002ebc <_Z11printStringPKc>
    8000219c:	fd1ff06f          	j	8000216c <_Z8dummyfunPv+0x28>

00000000800021a0 <_Z7smoker1Pv>:
void smoker1(void *arg){
    800021a0:	fe010113          	addi	sp,sp,-32
    800021a4:	00113c23          	sd	ra,24(sp)
    800021a8:	00813823          	sd	s0,16(sp)
    800021ac:	00913423          	sd	s1,8(sp)
    800021b0:	02010413          	addi	s0,sp,32
        semaphore::semWait(paper);
    800021b4:	00005497          	auipc	s1,0x5
    800021b8:	90c48493          	addi	s1,s1,-1780 # 80006ac0 <dummy>
    800021bc:	0084b503          	ld	a0,8(s1)
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	cb4080e7          	jalr	-844(ra) # 80001e74 <_ZN9semaphore7semWaitEPS_>
        semaphore::semWait(mutex);
    800021c8:	0104b503          	ld	a0,16(s1)
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	ca8080e7          	jalr	-856(ra) # 80001e74 <_ZN9semaphore7semWaitEPS_>
        printString("duvan i sibice cigaraaa\n");
    800021d4:	00004517          	auipc	a0,0x4
    800021d8:	e8450513          	addi	a0,a0,-380 # 80006058 <CONSOLE_STATUS+0x48>
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	ce0080e7          	jalr	-800(ra) # 80002ebc <_Z11printStringPKc>
        semaphore::semSignal(agent);
    800021e4:	0184b503          	ld	a0,24(s1)
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	ce0080e7          	jalr	-800(ra) # 80001ec8 <_ZN9semaphore9semSignalEPS_>
        semaphore::semSignal(mutex);
    800021f0:	0104b503          	ld	a0,16(s1)
    800021f4:	00000097          	auipc	ra,0x0
    800021f8:	cd4080e7          	jalr	-812(ra) # 80001ec8 <_ZN9semaphore9semSignalEPS_>
    while (true){
    800021fc:	fb9ff06f          	j	800021b4 <_Z7smoker1Pv+0x14>

0000000080002200 <_Z7smoker2Pv>:
void smoker2(void *arg){
    80002200:	fe010113          	addi	sp,sp,-32
    80002204:	00113c23          	sd	ra,24(sp)
    80002208:	00813823          	sd	s0,16(sp)
    8000220c:	00913423          	sd	s1,8(sp)
    80002210:	02010413          	addi	s0,sp,32
        semaphore::semWait(matches);
    80002214:	00005497          	auipc	s1,0x5
    80002218:	8ac48493          	addi	s1,s1,-1876 # 80006ac0 <dummy>
    8000221c:	0204b503          	ld	a0,32(s1)
    80002220:	00000097          	auipc	ra,0x0
    80002224:	c54080e7          	jalr	-940(ra) # 80001e74 <_ZN9semaphore7semWaitEPS_>
        semaphore::semWait(mutex);
    80002228:	0104b503          	ld	a0,16(s1)
    8000222c:	00000097          	auipc	ra,0x0
    80002230:	c48080e7          	jalr	-952(ra) # 80001e74 <_ZN9semaphore7semWaitEPS_>
        printString("duvan i papir cigaraaaaa\n");
    80002234:	00004517          	auipc	a0,0x4
    80002238:	e4450513          	addi	a0,a0,-444 # 80006078 <CONSOLE_STATUS+0x68>
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	c80080e7          	jalr	-896(ra) # 80002ebc <_Z11printStringPKc>
        semaphore::semSignal(agent);
    80002244:	0184b503          	ld	a0,24(s1)
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	c80080e7          	jalr	-896(ra) # 80001ec8 <_ZN9semaphore9semSignalEPS_>
        semaphore::semSignal(mutex);
    80002250:	0104b503          	ld	a0,16(s1)
    80002254:	00000097          	auipc	ra,0x0
    80002258:	c74080e7          	jalr	-908(ra) # 80001ec8 <_ZN9semaphore9semSignalEPS_>
    while (true){
    8000225c:	fb9ff06f          	j	80002214 <_Z7smoker2Pv+0x14>

0000000080002260 <_Z7smoker3Pv>:
void smoker3(void *arg){
    80002260:	fe010113          	addi	sp,sp,-32
    80002264:	00113c23          	sd	ra,24(sp)
    80002268:	00813823          	sd	s0,16(sp)
    8000226c:	00913423          	sd	s1,8(sp)
    80002270:	02010413          	addi	s0,sp,32
        semaphore::semWait(tabacco);
    80002274:	00005497          	auipc	s1,0x5
    80002278:	84c48493          	addi	s1,s1,-1972 # 80006ac0 <dummy>
    8000227c:	0284b503          	ld	a0,40(s1)
    80002280:	00000097          	auipc	ra,0x0
    80002284:	bf4080e7          	jalr	-1036(ra) # 80001e74 <_ZN9semaphore7semWaitEPS_>
        semaphore::semWait(mutex);
    80002288:	0104b503          	ld	a0,16(s1)
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	be8080e7          	jalr	-1048(ra) # 80001e74 <_ZN9semaphore7semWaitEPS_>
        printString("sibiceee i papirr cigaraaa\n");
    80002294:	00004517          	auipc	a0,0x4
    80002298:	e0450513          	addi	a0,a0,-508 # 80006098 <CONSOLE_STATUS+0x88>
    8000229c:	00001097          	auipc	ra,0x1
    800022a0:	c20080e7          	jalr	-992(ra) # 80002ebc <_Z11printStringPKc>
        semaphore::semSignal(agent);
    800022a4:	0184b503          	ld	a0,24(s1)
    800022a8:	00000097          	auipc	ra,0x0
    800022ac:	c20080e7          	jalr	-992(ra) # 80001ec8 <_ZN9semaphore9semSignalEPS_>
        semaphore::semSignal(mutex);
    800022b0:	0104b503          	ld	a0,16(s1)
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	c14080e7          	jalr	-1004(ra) # 80001ec8 <_ZN9semaphore9semSignalEPS_>
    while (true){
    800022bc:	fb9ff06f          	j	80002274 <_Z7smoker3Pv+0x14>

00000000800022c0 <_Z8agentfunPv>:
void agentfun(void *args){
    800022c0:	fe010113          	addi	sp,sp,-32
    800022c4:	00113c23          	sd	ra,24(sp)
    800022c8:	00813823          	sd	s0,16(sp)
    800022cc:	00913423          	sd	s1,8(sp)
    800022d0:	01213023          	sd	s2,0(sp)
    800022d4:	02010413          	addi	s0,sp,32
    int i=0;
    800022d8:	00000493          	li	s1,0
    800022dc:	0940006f          	j	80002370 <_Z8agentfunPv+0xb0>
                printString("duvan i papir\n");
    800022e0:	00004517          	auipc	a0,0x4
    800022e4:	dd850513          	addi	a0,a0,-552 # 800060b8 <CONSOLE_STATUS+0xa8>
    800022e8:	00001097          	auipc	ra,0x1
    800022ec:	bd4080e7          	jalr	-1068(ra) # 80002ebc <_Z11printStringPKc>
                semaphore::semSignal(matches);
    800022f0:	00004517          	auipc	a0,0x4
    800022f4:	7f053503          	ld	a0,2032(a0) # 80006ae0 <matches>
    800022f8:	00000097          	auipc	ra,0x0
    800022fc:	bd0080e7          	jalr	-1072(ra) # 80001ec8 <_ZN9semaphore9semSignalEPS_>
                break;
    80002300:	09c0006f          	j	8000239c <_Z8agentfunPv+0xdc>
                printString("duvan i sibice\n");
    80002304:	00004517          	auipc	a0,0x4
    80002308:	dc450513          	addi	a0,a0,-572 # 800060c8 <CONSOLE_STATUS+0xb8>
    8000230c:	00001097          	auipc	ra,0x1
    80002310:	bb0080e7          	jalr	-1104(ra) # 80002ebc <_Z11printStringPKc>
                semaphore::semSignal(paper);
    80002314:	00004517          	auipc	a0,0x4
    80002318:	7b453503          	ld	a0,1972(a0) # 80006ac8 <paper>
    8000231c:	00000097          	auipc	ra,0x0
    80002320:	bac080e7          	jalr	-1108(ra) # 80001ec8 <_ZN9semaphore9semSignalEPS_>
                break;
    80002324:	0780006f          	j	8000239c <_Z8agentfunPv+0xdc>
                printString("sibice i papir\n");
    80002328:	00004517          	auipc	a0,0x4
    8000232c:	db050513          	addi	a0,a0,-592 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002330:	00001097          	auipc	ra,0x1
    80002334:	b8c080e7          	jalr	-1140(ra) # 80002ebc <_Z11printStringPKc>
                semaphore::semSignal(tabacco);
    80002338:	00004517          	auipc	a0,0x4
    8000233c:	7b053503          	ld	a0,1968(a0) # 80006ae8 <tabacco>
    80002340:	00000097          	auipc	ra,0x0
    80002344:	b88080e7          	jalr	-1144(ra) # 80001ec8 <_ZN9semaphore9semSignalEPS_>
                break;
    80002348:	0540006f          	j	8000239c <_Z8agentfunPv+0xdc>
        i++;
    8000234c:	0014849b          	addiw	s1,s1,1
        semaphore::semSignal(mutex);
    80002350:	00004917          	auipc	s2,0x4
    80002354:	77090913          	addi	s2,s2,1904 # 80006ac0 <dummy>
    80002358:	01093503          	ld	a0,16(s2)
    8000235c:	00000097          	auipc	ra,0x0
    80002360:	b6c080e7          	jalr	-1172(ra) # 80001ec8 <_ZN9semaphore9semSignalEPS_>
        semaphore::semWait(agent);
    80002364:	01893503          	ld	a0,24(s2)
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	b0c080e7          	jalr	-1268(ra) # 80001e74 <_ZN9semaphore7semWaitEPS_>
        semaphore::semWait(mutex);
    80002370:	00004517          	auipc	a0,0x4
    80002374:	76053503          	ld	a0,1888(a0) # 80006ad0 <mutex>
    80002378:	00000097          	auipc	ra,0x0
    8000237c:	afc080e7          	jalr	-1284(ra) # 80001e74 <_ZN9semaphore7semWaitEPS_>
        switch (i%3) {
    80002380:	00300793          	li	a5,3
    80002384:	02f4e7bb          	remw	a5,s1,a5
    80002388:	00100713          	li	a4,1
    8000238c:	f6e78ce3          	beq	a5,a4,80002304 <_Z8agentfunPv+0x44>
    80002390:	00200713          	li	a4,2
    80002394:	f8e78ae3          	beq	a5,a4,80002328 <_Z8agentfunPv+0x68>
    80002398:	f40784e3          	beqz	a5,800022e0 <_Z8agentfunPv+0x20>
        if(i==50) semaphore::semClose(dummy);
    8000239c:	03200793          	li	a5,50
    800023a0:	faf496e3          	bne	s1,a5,8000234c <_Z8agentfunPv+0x8c>
    800023a4:	00004517          	auipc	a0,0x4
    800023a8:	71c53503          	ld	a0,1820(a0) # 80006ac0 <dummy>
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	97c080e7          	jalr	-1668(ra) # 80001d28 <_ZN9semaphore8semCloseEPS_>
    800023b4:	f99ff06f          	j	8000234c <_Z8agentfunPv+0x8c>

00000000800023b8 <main>:
int main(){
    800023b8:	f9010113          	addi	sp,sp,-112
    800023bc:	06113423          	sd	ra,104(sp)
    800023c0:	06813023          	sd	s0,96(sp)
    800023c4:	04913c23          	sd	s1,88(sp)
    800023c8:	07010413          	addi	s0,sp,112
        if (!instance) {
    800023cc:	00004797          	auipc	a5,0x4
    800023d0:	6547b783          	ld	a5,1620(a5) # 80006a20 <_GLOBAL_OFFSET_TABLE_+0x20>
    800023d4:	0007b783          	ld	a5,0(a5)
    800023d8:	18078a63          	beqz	a5,8000256c <main+0x1b4>
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    800023dc:	00004797          	auipc	a5,0x4
    800023e0:	63c7b783          	ld	a5,1596(a5) # 80006a18 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    800023e4:	10579073          	csrw	stvec,a5
    thread_create(&main, nullptr, nullptr);
    800023e8:	00000613          	li	a2,0
    800023ec:	00000593          	li	a1,0
    800023f0:	fd840513          	addi	a0,s0,-40
    800023f4:	fffff097          	auipc	ra,0xfffff
    800023f8:	eac080e7          	jalr	-340(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    800023fc:	00004797          	auipc	a5,0x4
    80002400:	6347b783          	ld	a5,1588(a5) # 80006a30 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002404:	fd843703          	ld	a4,-40(s0)
    80002408:	00e7b023          	sd	a4,0(a5)
    semaphore::semOpen(&mutex,1);
    8000240c:	00100593          	li	a1,1
    80002410:	00004517          	auipc	a0,0x4
    80002414:	6c050513          	addi	a0,a0,1728 # 80006ad0 <mutex>
    80002418:	fffff097          	auipc	ra,0xfffff
    8000241c:	6f0080e7          	jalr	1776(ra) # 80001b08 <_ZN9semaphore7semOpenEPPS_i>
    semaphore::semOpen(&paper,0);
    80002420:	00000593          	li	a1,0
    80002424:	00004517          	auipc	a0,0x4
    80002428:	6a450513          	addi	a0,a0,1700 # 80006ac8 <paper>
    8000242c:	fffff097          	auipc	ra,0xfffff
    80002430:	6dc080e7          	jalr	1756(ra) # 80001b08 <_ZN9semaphore7semOpenEPPS_i>
    semaphore::semOpen(&matches, 0);
    80002434:	00000593          	li	a1,0
    80002438:	00004517          	auipc	a0,0x4
    8000243c:	6a850513          	addi	a0,a0,1704 # 80006ae0 <matches>
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	6c8080e7          	jalr	1736(ra) # 80001b08 <_ZN9semaphore7semOpenEPPS_i>
    semaphore::semOpen(&agent,0);
    80002448:	00000593          	li	a1,0
    8000244c:	00004517          	auipc	a0,0x4
    80002450:	68c50513          	addi	a0,a0,1676 # 80006ad8 <agent>
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	6b4080e7          	jalr	1716(ra) # 80001b08 <_ZN9semaphore7semOpenEPPS_i>
    semaphore::semOpen(&tabacco,0);
    8000245c:	00000593          	li	a1,0
    80002460:	00004517          	auipc	a0,0x4
    80002464:	68850513          	addi	a0,a0,1672 # 80006ae8 <tabacco>
    80002468:	fffff097          	auipc	ra,0xfffff
    8000246c:	6a0080e7          	jalr	1696(ra) # 80001b08 <_ZN9semaphore7semOpenEPPS_i>
    thread_t t= nullptr;
    80002470:	fc043823          	sd	zero,-48(s0)
    thread_t t1= nullptr;
    80002474:	fc043423          	sd	zero,-56(s0)
    thread_t t2= nullptr;
    80002478:	fc043023          	sd	zero,-64(s0)
    thread_t t3= nullptr;
    8000247c:	fa043c23          	sd	zero,-72(s0)
    thread_create(&t, agentfun, nullptr);
    80002480:	00000613          	li	a2,0
    80002484:	00000597          	auipc	a1,0x0
    80002488:	e3c58593          	addi	a1,a1,-452 # 800022c0 <_Z8agentfunPv>
    8000248c:	fd040513          	addi	a0,s0,-48
    80002490:	fffff097          	auipc	ra,0xfffff
    80002494:	e10080e7          	jalr	-496(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t1, smoker1, nullptr);
    80002498:	00000613          	li	a2,0
    8000249c:	00000597          	auipc	a1,0x0
    800024a0:	d0458593          	addi	a1,a1,-764 # 800021a0 <_Z7smoker1Pv>
    800024a4:	fc840513          	addi	a0,s0,-56
    800024a8:	fffff097          	auipc	ra,0xfffff
    800024ac:	df8080e7          	jalr	-520(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t2, smoker2, nullptr);
    800024b0:	00000613          	li	a2,0
    800024b4:	00000597          	auipc	a1,0x0
    800024b8:	d4c58593          	addi	a1,a1,-692 # 80002200 <_Z7smoker2Pv>
    800024bc:	fc040513          	addi	a0,s0,-64
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	de0080e7          	jalr	-544(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t3, smoker3, nullptr);
    800024c8:	00000613          	li	a2,0
    800024cc:	00000597          	auipc	a1,0x0
    800024d0:	d9458593          	addi	a1,a1,-620 # 80002260 <_Z7smoker3Pv>
    800024d4:	fb840513          	addi	a0,s0,-72
    800024d8:	fffff097          	auipc	ra,0xfffff
    800024dc:	dc8080e7          	jalr	-568(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    semaphore::semOpen(&dummy,-1);
    800024e0:	fff00593          	li	a1,-1
    800024e4:	00004517          	auipc	a0,0x4
    800024e8:	5dc50513          	addi	a0,a0,1500 # 80006ac0 <dummy>
    800024ec:	fffff097          	auipc	ra,0xfffff
    800024f0:	61c080e7          	jalr	1564(ra) # 80001b08 <_ZN9semaphore7semOpenEPPS_i>
    thread_t tt= nullptr;
    800024f4:	fa043823          	sd	zero,-80(s0)
    thread_t t11= nullptr;
    800024f8:	fa043423          	sd	zero,-88(s0)
    thread_t t21= nullptr;
    800024fc:	fa043023          	sd	zero,-96(s0)
    thread_t t31= nullptr;
    80002500:	f8043c23          	sd	zero,-104(s0)
    thread_create(&tt, dummyfun, nullptr);
    80002504:	00000613          	li	a2,0
    80002508:	00000597          	auipc	a1,0x0
    8000250c:	c3c58593          	addi	a1,a1,-964 # 80002144 <_Z8dummyfunPv>
    80002510:	fb040513          	addi	a0,s0,-80
    80002514:	fffff097          	auipc	ra,0xfffff
    80002518:	d8c080e7          	jalr	-628(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t11, dummyfun, nullptr);
    8000251c:	00000613          	li	a2,0
    80002520:	00000597          	auipc	a1,0x0
    80002524:	c2458593          	addi	a1,a1,-988 # 80002144 <_Z8dummyfunPv>
    80002528:	fa840513          	addi	a0,s0,-88
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	d74080e7          	jalr	-652(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t21, dummyfun, nullptr);
    80002534:	00000613          	li	a2,0
    80002538:	00000597          	auipc	a1,0x0
    8000253c:	c0c58593          	addi	a1,a1,-1012 # 80002144 <_Z8dummyfunPv>
    80002540:	fa040513          	addi	a0,s0,-96
    80002544:	fffff097          	auipc	ra,0xfffff
    80002548:	d5c080e7          	jalr	-676(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t31, dummyfun, nullptr);
    8000254c:	00000613          	li	a2,0
    80002550:	00000597          	auipc	a1,0x0
    80002554:	bf458593          	addi	a1,a1,-1036 # 80002144 <_Z8dummyfunPv>
    80002558:	f9840513          	addi	a0,s0,-104
    8000255c:	fffff097          	auipc	ra,0xfffff
    80002560:	d44080e7          	jalr	-700(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < 30; ++i) {
    80002564:	00000493          	li	s1,0
    80002568:	04c0006f          	j	800025b4 <main+0x1fc>
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    8000256c:	00004797          	auipc	a5,0x4
    80002570:	49c7b783          	ld	a5,1180(a5) # 80006a08 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002574:	0007b783          	ld	a5,0(a5)
    80002578:	00004697          	auipc	a3,0x4
    8000257c:	4b06b683          	ld	a3,1200(a3) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002580:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80002584:	00004717          	auipc	a4,0x4
    80002588:	4b473703          	ld	a4,1204(a4) # 80006a38 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000258c:	00073703          	ld	a4,0(a4)
    80002590:	40f70733          	sub	a4,a4,a5
    80002594:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    80002598:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    8000259c:	0006b783          	ld	a5,0(a3)
    800025a0:	0007b423          	sd	zero,8(a5)
            return instance;
    800025a4:	e39ff06f          	j	800023dc <main+0x24>
        thread_dispatch();
    800025a8:	fffff097          	auipc	ra,0xfffff
    800025ac:	d5c080e7          	jalr	-676(ra) # 80001304 <_Z15thread_dispatchv>
    for (int i = 0; i < 30; ++i) {
    800025b0:	0014849b          	addiw	s1,s1,1
    800025b4:	01d00793          	li	a5,29
    800025b8:	fe97d8e3          	bge	a5,s1,800025a8 <main+0x1f0>
    if(semaphore::semWait(dummy)==-1) printString("ubien semafor\n");
    800025bc:	00004517          	auipc	a0,0x4
    800025c0:	50453503          	ld	a0,1284(a0) # 80006ac0 <dummy>
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	8b0080e7          	jalr	-1872(ra) # 80001e74 <_ZN9semaphore7semWaitEPS_>
    800025cc:	fff00793          	li	a5,-1
    800025d0:	00f50e63          	beq	a0,a5,800025ec <main+0x234>
}
    800025d4:	00000513          	li	a0,0
    800025d8:	06813083          	ld	ra,104(sp)
    800025dc:	06013403          	ld	s0,96(sp)
    800025e0:	05813483          	ld	s1,88(sp)
    800025e4:	07010113          	addi	sp,sp,112
    800025e8:	00008067          	ret
    if(semaphore::semWait(dummy)==-1) printString("ubien semafor\n");
    800025ec:	00004517          	auipc	a0,0x4
    800025f0:	afc50513          	addi	a0,a0,-1284 # 800060e8 <CONSOLE_STATUS+0xd8>
    800025f4:	00001097          	auipc	ra,0x1
    800025f8:	8c8080e7          	jalr	-1848(ra) # 80002ebc <_Z11printStringPKc>
    800025fc:	fd9ff06f          	j	800025d4 <main+0x21c>

0000000080002600 <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    80002600:	ff010113          	addi	sp,sp,-16
    80002604:	00813423          	sd	s0,8(sp)
    80002608:	01010413          	addi	s0,sp,16
    return finished;
}
    8000260c:	02054503          	lbu	a0,32(a0)
    80002610:	00813403          	ld	s0,8(sp)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret

000000008000261c <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    8000261c:	ff010113          	addi	sp,sp,-16
    80002620:	00813423          	sd	s0,8(sp)
    80002624:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    80002628:	02b50023          	sb	a1,32(a0)
}
    8000262c:	00813403          	ld	s0,8(sp)
    80002630:	01010113          	addi	sp,sp,16
    80002634:	00008067          	ret

0000000080002638 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments) {
    80002638:	fe010113          	addi	sp,sp,-32
    8000263c:	00113c23          	sd	ra,24(sp)
    80002640:	00813823          	sd	s0,16(sp)
    80002644:	00913423          	sd	s1,8(sp)
    80002648:	02010413          	addi	s0,sp,32
    8000264c:	00058493          	mv	s1,a1
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002650:	00004797          	auipc	a5,0x4
    80002654:	3d87b783          	ld	a5,984(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002658:	0007b783          	ld	a5,0(a5)
    8000265c:	0c078a63          	beqz	a5,80002730 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
            cur->next=fmem_head->next;
    80002660:	00004717          	auipc	a4,0x4
    80002664:	3c873703          	ld	a4,968(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002668:	00073683          	ld	a3,0(a4)
    8000266c:	0006b683          	ld	a3,0(a3)
    80002670:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80002674:	00073703          	ld	a4,0(a4)
    80002678:	00873583          	ld	a1,8(a4)
    8000267c:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80002680:	0107b703          	ld	a4,16(a5)
    80002684:	07f00813          	li	a6,127
    80002688:	02e87663          	bgeu	a6,a4,800026b4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    8000268c:	f8070713          	addi	a4,a4,-128
    80002690:	01800813          	li	a6,24
    80002694:	02e86c63          	bltu	a6,a4,800026cc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002698:	02058263          	beqz	a1,800026bc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x84>
    8000269c:	00d5b023          	sd	a3,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    800026a0:	0007b703          	ld	a4,0(a5)
    800026a4:	08070663          	beqz	a4,80002730 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
    800026a8:	0087b683          	ld	a3,8(a5)
    800026ac:	00d73423          	sd	a3,8(a4)
                return cur;
    800026b0:	0800006f          	j	80002730 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800026b4:	00068793          	mv	a5,a3
    800026b8:	fa5ff06f          	j	8000265c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24>
                else fmem_head = cur->next;
    800026bc:	00004717          	auipc	a4,0x4
    800026c0:	36c73703          	ld	a4,876(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026c4:	00d73023          	sd	a3,0(a4)
    800026c8:	fd9ff06f          	j	800026a0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800026cc:	08078713          	addi	a4,a5,128
                newfrgm->prev=nullptr;
    800026d0:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800026d4:	0807b023          	sd	zero,128(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800026d8:	0087b683          	ld	a3,8(a5)
    800026dc:	0c068c63          	beqz	a3,800027b4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x17c>
    800026e0:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800026e4:	0007b683          	ld	a3,0(a5)
    800026e8:	00068463          	beqz	a3,800026f0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xb8>
    800026ec:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800026f0:	0087b583          	ld	a1,8(a5)
    800026f4:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    800026f8:	0007b683          	ld	a3,0(a5)
    800026fc:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002700:	0107b783          	ld	a5,16(a5)
    80002704:	f8078793          	addi	a5,a5,-128
    80002708:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    8000270c:	0c070693          	addi	a3,a4,192
    80002710:	00004817          	auipc	a6,0x4
    80002714:	31883803          	ld	a6,792(a6) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002718:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    8000271c:	00073803          	ld	a6,0(a4)
    80002720:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002724:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    80002728:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    8000272c:	00070793          	mv	a5,a4
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    80002730:	00f4b023          	sd	a5,0(s1)
    (*handle)->body=body;
    80002734:	00a7b023          	sd	a0,0(a5)
    (*handle)->arguments=arguments;
    80002738:	0004b783          	ld	a5,0(s1)
    8000273c:	02c7b423          	sd	a2,40(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    80002740:	12050663          	beqz	a0,8000286c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x234>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002744:	00004797          	auipc	a5,0x4
    80002748:	2e47b783          	ld	a5,740(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000274c:	0007b783          	ld	a5,0(a5)
    80002750:	12078063          	beqz	a5,80002870 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
            cur->next=fmem_head->next;
    80002754:	00004717          	auipc	a4,0x4
    80002758:	2d473703          	ld	a4,724(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000275c:	00073683          	ld	a3,0(a4)
    80002760:	0006b603          	ld	a2,0(a3)
    80002764:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    80002768:	00073703          	ld	a4,0(a4)
    8000276c:	00873583          	ld	a1,8(a4)
    80002770:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80002774:	0107b703          	ld	a4,16(a5)
    80002778:	000016b7          	lui	a3,0x1
    8000277c:	03f68693          	addi	a3,a3,63 # 103f <_entry-0x7fffefc1>
    80002780:	04e6f463          	bgeu	a3,a4,800027c8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x190>
            if (cur->size-size<=sizeof(FreeMem)){
    80002784:	fffff6b7          	lui	a3,0xfffff
    80002788:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff7260>
    8000278c:	00d70733          	add	a4,a4,a3
    80002790:	01800693          	li	a3,24
    80002794:	04e6e663          	bltu	a3,a4,800027e0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1a8>
                if (cur->prev) cur->prev->next = cur->next;
    80002798:	02058c63          	beqz	a1,800027d0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x198>
    8000279c:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    800027a0:	0007b703          	ld	a4,0(a5)
    800027a4:	0c070663          	beqz	a4,80002870 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
    800027a8:	0087b683          	ld	a3,8(a5)
    800027ac:	00d73423          	sd	a3,8(a4)
                return cur;
    800027b0:	0c00006f          	j	80002870 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800027b4:	0c070693          	addi	a3,a4,192
    800027b8:	00004597          	auipc	a1,0x4
    800027bc:	2705b583          	ld	a1,624(a1) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027c0:	00d5b023          	sd	a3,0(a1)
    800027c4:	f21ff06f          	j	800026e4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xac>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800027c8:	00060793          	mv	a5,a2
    800027cc:	f85ff06f          	j	80002750 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x118>
                else fmem_head = cur->next;
    800027d0:	00004717          	auipc	a4,0x4
    800027d4:	25873703          	ld	a4,600(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027d8:	00c73023          	sd	a2,0(a4)
    800027dc:	fc5ff06f          	j	800027a0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x168>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800027e0:	00001737          	lui	a4,0x1
    800027e4:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    800027e8:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    800027ec:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800027f0:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800027f4:	0087b683          	ld	a3,8(a5)
    800027f8:	06068063          	beqz	a3,80002858 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x220>
    800027fc:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002800:	0007b683          	ld	a3,0(a5)
    80002804:	00068463          	beqz	a3,8000280c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1d4>
    80002808:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    8000280c:	0087b603          	ld	a2,8(a5)
    80002810:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002814:	0007b683          	ld	a3,0(a5)
    80002818:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    8000281c:	0107b783          	ld	a5,16(a5)
    80002820:	fffff6b7          	lui	a3,0xfffff
    80002824:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff7260>
    80002828:	00d787b3          	add	a5,a5,a3
    8000282c:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002830:	0c070693          	addi	a3,a4,192
    80002834:	00004597          	auipc	a1,0x4
    80002838:	1f45b583          	ld	a1,500(a1) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000283c:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002840:	00073583          	ld	a1,0(a4)
    80002844:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002848:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    8000284c:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002850:	00070793          	mv	a5,a4
    80002854:	01c0006f          	j	80002870 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002858:	0c070693          	addi	a3,a4,192
    8000285c:	00004617          	auipc	a2,0x4
    80002860:	1cc63603          	ld	a2,460(a2) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002864:	00d63023          	sd	a3,0(a2)
    80002868:	f99ff06f          	j	80002800 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1c8>
    8000286c:	00000793          	li	a5,0
    80002870:	0004b703          	ld	a4,0(s1)
    80002874:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80002878:	06050663          	beqz	a0,800028e4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2ac>
    8000287c:	00000717          	auipc	a4,0x0
    80002880:	0a470713          	addi	a4,a4,164 # 80002920 <_ZN3TCB13threadWrapperEv>
    80002884:	0004b783          	ld	a5,0(s1)
    80002888:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    8000288c:	0004b703          	ld	a4,0(s1)
    80002890:	00873783          	ld	a5,8(a4)
    80002894:	04078c63          	beqz	a5,800028ec <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2b4>
    80002898:	000086b7          	lui	a3,0x8
    8000289c:	00d787b3          	add	a5,a5,a3
    800028a0:	00f73c23          	sd	a5,24(a4)
    (*handle)->finished=false;
    800028a4:	0004b783          	ld	a5,0(s1)
    800028a8:	02078023          	sb	zero,32(a5)
    (*handle)->semBlocked=nullptr;
    800028ac:	0004b783          	ld	a5,0(s1)
    800028b0:	0207b823          	sd	zero,48(a5)
    if (body != nullptr) { Scheduler::put(*handle); }
    800028b4:	00050863          	beqz	a0,800028c4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x28c>
    800028b8:	0004b503          	ld	a0,0(s1)
    800028bc:	fffff097          	auipc	ra,0xfffff
    800028c0:	714080e7          	jalr	1812(ra) # 80001fd0 <_ZN9Scheduler3putEP3TCB>
    if(*handle==nullptr){
    800028c4:	0004b783          	ld	a5,0(s1)
    800028c8:	02078663          	beqz	a5,800028f4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2bc>
        return -1;
    }else{return 0;}
    800028cc:	00000513          	li	a0,0
}
    800028d0:	01813083          	ld	ra,24(sp)
    800028d4:	01013403          	ld	s0,16(sp)
    800028d8:	00813483          	ld	s1,8(sp)
    800028dc:	02010113          	addi	sp,sp,32
    800028e0:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    800028e4:	00000713          	li	a4,0
    800028e8:	f9dff06f          	j	80002884 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24c>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    800028ec:	00000793          	li	a5,0
    800028f0:	fb1ff06f          	j	800028a0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x268>
        return -1;
    800028f4:	fff00513          	li	a0,-1
    800028f8:	fd9ff06f          	j	800028d0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x298>

00000000800028fc <_ZN3TCB5yieldEv>:

void TCB::yield(){
    800028fc:	ff010113          	addi	sp,sp,-16
    80002900:	00813423          	sd	s0,8(sp)
    80002904:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80002908:	01300793          	li	a5,19
    8000290c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80002910:	00000073          	ecall

};
    80002914:	00813403          	ld	s0,8(sp)
    80002918:	01010113          	addi	sp,sp,16
    8000291c:	00008067          	ret

0000000080002920 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80002920:	fe010113          	addi	sp,sp,-32
    80002924:	00113c23          	sd	ra,24(sp)
    80002928:	00813823          	sd	s0,16(sp)
    8000292c:	00913423          	sd	s1,8(sp)
    80002930:	02010413          	addi	s0,sp,32
    //RiscV::popSppSpie();
    __asm__ volatile ("csrw sepc, ra");
    80002934:	14109073          	csrw	sepc,ra
    //__asm__ volatile ("sret");
    running->body(running->arguments);
    80002938:	00004497          	auipc	s1,0x4
    8000293c:	1b848493          	addi	s1,s1,440 # 80006af0 <_ZN3TCB7runningE>
    80002940:	0004b783          	ld	a5,0(s1)
    80002944:	0007b703          	ld	a4,0(a5)
    80002948:	0287b503          	ld	a0,40(a5)
    8000294c:	000700e7          	jalr	a4
    running->setFinished(true);
    80002950:	00100593          	li	a1,1
    80002954:	0004b503          	ld	a0,0(s1)
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	cc4080e7          	jalr	-828(ra) # 8000261c <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80002960:	00000097          	auipc	ra,0x0
    80002964:	f9c080e7          	jalr	-100(ra) # 800028fc <_ZN3TCB5yieldEv>
}
    80002968:	01813083          	ld	ra,24(sp)
    8000296c:	01013403          	ld	s0,16(sp)
    80002970:	00813483          	ld	s1,8(sp)
    80002974:	02010113          	addi	sp,sp,32
    80002978:	00008067          	ret

000000008000297c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    8000297c:	fe010113          	addi	sp,sp,-32
    80002980:	00113c23          	sd	ra,24(sp)
    80002984:	00813823          	sd	s0,16(sp)
    80002988:	00913423          	sd	s1,8(sp)
    8000298c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002990:	00004497          	auipc	s1,0x4
    80002994:	1604b483          	ld	s1,352(s1) # 80006af0 <_ZN3TCB7runningE>
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80002998:	0304b783          	ld	a5,48(s1)
    8000299c:	02078c63          	beqz	a5,800029d4 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	5c8080e7          	jalr	1480(ra) # 80001f68 <_ZN9Scheduler3getEv>
    800029a8:	00004797          	auipc	a5,0x4
    800029ac:	14a7b423          	sd	a0,328(a5) # 80006af0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800029b0:	01050593          	addi	a1,a0,16
    800029b4:	01048513          	addi	a0,s1,16
    800029b8:	fffff097          	auipc	ra,0xfffff
    800029bc:	878080e7          	jalr	-1928(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800029c0:	01813083          	ld	ra,24(sp)
    800029c4:	01013403          	ld	s0,16(sp)
    800029c8:	00813483          	ld	s1,8(sp)
    800029cc:	02010113          	addi	sp,sp,32
    800029d0:	00008067          	ret
    if (old->semBlocked==nullptr && !old->isFinished()) {
    800029d4:	00048513          	mv	a0,s1
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	c28080e7          	jalr	-984(ra) # 80002600 <_ZNK3TCB10isFinishedEv>
    800029e0:	fc0510e3          	bnez	a0,800029a0 <_ZN3TCB8dispatchEv+0x24>
        Scheduler::put(old);
    800029e4:	00048513          	mv	a0,s1
    800029e8:	fffff097          	auipc	ra,0xfffff
    800029ec:	5e8080e7          	jalr	1512(ra) # 80001fd0 <_ZN9Scheduler3putEP3TCB>
    800029f0:	fb1ff06f          	j	800029a0 <_ZN3TCB8dispatchEv+0x24>

00000000800029f4 <_Znwm>:
#include "../h/MemoryAllocation.hpp"
#include "../h/syscall_c.hpp"

//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    800029f4:	ff010113          	addi	sp,sp,-16
    800029f8:	00813423          	sd	s0,8(sp)
    800029fc:	01010413          	addi	s0,sp,16

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002a00:	05750793          	addi	a5,a0,87
    80002a04:	0067d793          	srli	a5,a5,0x6
    80002a08:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80002a0c:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002a10:	00004717          	auipc	a4,0x4
    80002a14:	01873703          	ld	a4,24(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a18:	00073503          	ld	a0,0(a4)
    80002a1c:	0c050863          	beqz	a0,80002aec <_Znwm+0xf8>
            cur->next=fmem_head->next;
    80002a20:	00004717          	auipc	a4,0x4
    80002a24:	00873703          	ld	a4,8(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a28:	00073683          	ld	a3,0(a4)
    80002a2c:	0006b683          	ld	a3,0(a3) # 8000 <_entry-0x7fff8000>
    80002a30:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80002a34:	00073703          	ld	a4,0(a4)
    80002a38:	00873603          	ld	a2,8(a4)
    80002a3c:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80002a40:	01053703          	ld	a4,16(a0)
    80002a44:	02f76663          	bltu	a4,a5,80002a70 <_Znwm+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002a48:	40f70733          	sub	a4,a4,a5
    80002a4c:	01800593          	li	a1,24
    80002a50:	02e5ec63          	bltu	a1,a4,80002a88 <_Znwm+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002a54:	02060263          	beqz	a2,80002a78 <_Znwm+0x84>
    80002a58:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80002a5c:	00053783          	ld	a5,0(a0)
    80002a60:	08078663          	beqz	a5,80002aec <_Znwm+0xf8>
    80002a64:	00853703          	ld	a4,8(a0)
    80002a68:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002a6c:	0800006f          	j	80002aec <_Znwm+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002a70:	00068513          	mv	a0,a3
    80002a74:	fa9ff06f          	j	80002a1c <_Znwm+0x28>
                else fmem_head = cur->next;
    80002a78:	00004797          	auipc	a5,0x4
    80002a7c:	fb07b783          	ld	a5,-80(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a80:	00d7b023          	sd	a3,0(a5)
    80002a84:	fd9ff06f          	j	80002a5c <_Znwm+0x68>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002a88:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80002a8c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002a90:	00073023          	sd	zero,0(a4)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002a94:	00853683          	ld	a3,8(a0)
    80002a98:	06068063          	beqz	a3,80002af8 <_Znwm+0x104>
    80002a9c:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002aa0:	00053683          	ld	a3,0(a0)
    80002aa4:	00068463          	beqz	a3,80002aac <_Znwm+0xb8>
    80002aa8:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002aac:	00853603          	ld	a2,8(a0)
    80002ab0:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002ab4:	00053683          	ld	a3,0(a0)
    80002ab8:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002abc:	01053683          	ld	a3,16(a0)
    80002ac0:	40f687b3          	sub	a5,a3,a5
    80002ac4:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002ac8:	0c070693          	addi	a3,a4,192
    80002acc:	00004597          	auipc	a1,0x4
    80002ad0:	f5c5b583          	ld	a1,-164(a1) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ad4:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002ad8:	00073583          	ld	a1,0(a4)
    80002adc:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002ae0:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002ae4:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80002ae8:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}
    80002aec:	00813403          	ld	s0,8(sp)
    80002af0:	01010113          	addi	sp,sp,16
    80002af4:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002af8:	0c070693          	addi	a3,a4,192
    80002afc:	00004617          	auipc	a2,0x4
    80002b00:	f2c63603          	ld	a2,-212(a2) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b04:	00d63023          	sd	a3,0(a2)
    80002b08:	f99ff06f          	j	80002aa0 <_Znwm+0xac>

0000000080002b0c <_Znam>:

void *operator new[](uint64 n){
    80002b0c:	ff010113          	addi	sp,sp,-16
    80002b10:	00813423          	sd	s0,8(sp)
    80002b14:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002b18:	05750793          	addi	a5,a0,87
    80002b1c:	0067d793          	srli	a5,a5,0x6
    80002b20:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80002b24:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002b28:	00004717          	auipc	a4,0x4
    80002b2c:	f0073703          	ld	a4,-256(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b30:	00073503          	ld	a0,0(a4)
    80002b34:	0c050863          	beqz	a0,80002c04 <_Znam+0xf8>
            cur->next=fmem_head->next;
    80002b38:	00004717          	auipc	a4,0x4
    80002b3c:	ef073703          	ld	a4,-272(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b40:	00073683          	ld	a3,0(a4)
    80002b44:	0006b683          	ld	a3,0(a3)
    80002b48:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80002b4c:	00073703          	ld	a4,0(a4)
    80002b50:	00873603          	ld	a2,8(a4)
    80002b54:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80002b58:	01053703          	ld	a4,16(a0)
    80002b5c:	02f76663          	bltu	a4,a5,80002b88 <_Znam+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002b60:	40f70733          	sub	a4,a4,a5
    80002b64:	01800593          	li	a1,24
    80002b68:	02e5ec63          	bltu	a1,a4,80002ba0 <_Znam+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002b6c:	02060263          	beqz	a2,80002b90 <_Znam+0x84>
    80002b70:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80002b74:	00053783          	ld	a5,0(a0)
    80002b78:	08078663          	beqz	a5,80002c04 <_Znam+0xf8>
    80002b7c:	00853703          	ld	a4,8(a0)
    80002b80:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002b84:	0800006f          	j	80002c04 <_Znam+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002b88:	00068513          	mv	a0,a3
    80002b8c:	fa9ff06f          	j	80002b34 <_Znam+0x28>
                else fmem_head = cur->next;
    80002b90:	00004797          	auipc	a5,0x4
    80002b94:	e987b783          	ld	a5,-360(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b98:	00d7b023          	sd	a3,0(a5)
    80002b9c:	fd9ff06f          	j	80002b74 <_Znam+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002ba0:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80002ba4:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002ba8:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002bac:	00853683          	ld	a3,8(a0)
    80002bb0:	06068063          	beqz	a3,80002c10 <_Znam+0x104>
    80002bb4:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002bb8:	00053683          	ld	a3,0(a0)
    80002bbc:	00068463          	beqz	a3,80002bc4 <_Znam+0xb8>
    80002bc0:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002bc4:	00853603          	ld	a2,8(a0)
    80002bc8:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002bcc:	00053683          	ld	a3,0(a0)
    80002bd0:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002bd4:	01053683          	ld	a3,16(a0)
    80002bd8:	40f687b3          	sub	a5,a3,a5
    80002bdc:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002be0:	0c070693          	addi	a3,a4,192
    80002be4:	00004597          	auipc	a1,0x4
    80002be8:	e445b583          	ld	a1,-444(a1) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002bec:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002bf0:	00073583          	ld	a1,0(a4)
    80002bf4:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002bf8:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002bfc:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002c00:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
}
    80002c04:	00813403          	ld	s0,8(sp)
    80002c08:	01010113          	addi	sp,sp,16
    80002c0c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002c10:	0c070693          	addi	a3,a4,192
    80002c14:	00004617          	auipc	a2,0x4
    80002c18:	e1463603          	ld	a2,-492(a2) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c1c:	00d63023          	sd	a3,0(a2)
    80002c20:	f99ff06f          	j	80002bb8 <_Znam+0xac>

0000000080002c24 <_ZdlPv>:

void operator delete(void *p) noexcept {
    80002c24:	ff010113          	addi	sp,sp,-16
    80002c28:	00813423          	sd	s0,8(sp)
    80002c2c:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002c30:	00004797          	auipc	a5,0x4
    80002c34:	df87b783          	ld	a5,-520(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c38:	0007b703          	ld	a4,0(a5)
    80002c3c:	00070e63          	beqz	a4,80002c58 <_ZdlPv+0x34>
    80002c40:	02e56063          	bltu	a0,a4,80002c60 <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002c44:	00070793          	mv	a5,a4
    80002c48:	00073703          	ld	a4,0(a4)
    80002c4c:	00e50c63          	beq	a0,a4,80002c64 <_ZdlPv+0x40>
    80002c50:	fea76ae3          	bltu	a4,a0,80002c44 <_ZdlPv+0x20>
    80002c54:	0100006f          	j	80002c64 <_ZdlPv+0x40>
            cur=nullptr;
    80002c58:	00070793          	mv	a5,a4
    80002c5c:	0080006f          	j	80002c64 <_ZdlPv+0x40>
    80002c60:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80002c64:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002c68:	04000713          	li	a4,64
    80002c6c:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002c70:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80002c74:	04078e63          	beqz	a5,80002cd0 <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    80002c78:	0007b703          	ld	a4,0(a5)
    80002c7c:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002c80:	00053703          	ld	a4,0(a0)
    80002c84:	00070463          	beqz	a4,80002c8c <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    80002c88:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80002c8c:	04078c63          	beqz	a5,80002ce4 <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002c90:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002c94:	00050c63          	beqz	a0,80002cac <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002c98:	00053703          	ld	a4,0(a0)
    80002c9c:	00070863          	beqz	a4,80002cac <_ZdlPv+0x88>
    80002ca0:	01053683          	ld	a3,16(a0)
    80002ca4:	00d50633          	add	a2,a0,a3
    80002ca8:	04c70663          	beq	a4,a2,80002cf4 <_ZdlPv+0xd0>
        if (!curr) return;
    80002cac:	00078c63          	beqz	a5,80002cc4 <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002cb0:	0007b703          	ld	a4,0(a5)
    80002cb4:	00070863          	beqz	a4,80002cc4 <_ZdlPv+0xa0>
    80002cb8:	0107b683          	ld	a3,16(a5)
    80002cbc:	00d78633          	add	a2,a5,a3
    80002cc0:	04c70a63          	beq	a4,a2,80002d14 <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    80002cc4:	00813403          	ld	s0,8(sp)
    80002cc8:	01010113          	addi	sp,sp,16
    80002ccc:	00008067          	ret
                    newSeg->next = fmem_head;
    80002cd0:	00004717          	auipc	a4,0x4
    80002cd4:	d5873703          	ld	a4,-680(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002cd8:	00073703          	ld	a4,0(a4)
    80002cdc:	00e53023          	sd	a4,0(a0)
    80002ce0:	fa1ff06f          	j	80002c80 <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    80002ce4:	00004717          	auipc	a4,0x4
    80002ce8:	d4473703          	ld	a4,-700(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002cec:	00a73023          	sd	a0,0(a4)
    80002cf0:	fa5ff06f          	j	80002c94 <_ZdlPv+0x70>
            curr->size += curr->next->size;
    80002cf4:	01073603          	ld	a2,16(a4)
    80002cf8:	00c686b3          	add	a3,a3,a2
    80002cfc:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80002d00:	00073703          	ld	a4,0(a4)
    80002d04:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80002d08:	fa0702e3          	beqz	a4,80002cac <_ZdlPv+0x88>
    80002d0c:	00a73423          	sd	a0,8(a4)
    80002d10:	f9dff06f          	j	80002cac <_ZdlPv+0x88>
            curr->size += curr->next->size;
    80002d14:	01073603          	ld	a2,16(a4)
    80002d18:	00c686b3          	add	a3,a3,a2
    80002d1c:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002d20:	00073703          	ld	a4,0(a4)
    80002d24:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80002d28:	f8070ee3          	beqz	a4,80002cc4 <_ZdlPv+0xa0>
    80002d2c:	00f73423          	sd	a5,8(a4)
    80002d30:	f95ff06f          	j	80002cc4 <_ZdlPv+0xa0>

0000000080002d34 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    80002d34:	ff010113          	addi	sp,sp,-16
    80002d38:	00813423          	sd	s0,8(sp)
    80002d3c:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002d40:	00004797          	auipc	a5,0x4
    80002d44:	ce87b783          	ld	a5,-792(a5) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d48:	0007b703          	ld	a4,0(a5)
    80002d4c:	00070e63          	beqz	a4,80002d68 <_ZdaPv+0x34>
    80002d50:	02e56063          	bltu	a0,a4,80002d70 <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002d54:	00070793          	mv	a5,a4
    80002d58:	00073703          	ld	a4,0(a4)
    80002d5c:	00e50c63          	beq	a0,a4,80002d74 <_ZdaPv+0x40>
    80002d60:	fea76ae3          	bltu	a4,a0,80002d54 <_ZdaPv+0x20>
    80002d64:	0100006f          	j	80002d74 <_ZdaPv+0x40>
            cur=nullptr;
    80002d68:	00070793          	mv	a5,a4
    80002d6c:	0080006f          	j	80002d74 <_ZdaPv+0x40>
    80002d70:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80002d74:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002d78:	04000713          	li	a4,64
    80002d7c:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002d80:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80002d84:	04078e63          	beqz	a5,80002de0 <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    80002d88:	0007b703          	ld	a4,0(a5)
    80002d8c:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002d90:	00053703          	ld	a4,0(a0)
    80002d94:	00070463          	beqz	a4,80002d9c <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    80002d98:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80002d9c:	04078c63          	beqz	a5,80002df4 <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002da0:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002da4:	00050c63          	beqz	a0,80002dbc <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002da8:	00053703          	ld	a4,0(a0)
    80002dac:	00070863          	beqz	a4,80002dbc <_ZdaPv+0x88>
    80002db0:	01053683          	ld	a3,16(a0)
    80002db4:	00d50633          	add	a2,a0,a3
    80002db8:	04c70663          	beq	a4,a2,80002e04 <_ZdaPv+0xd0>
        if (!curr) return;
    80002dbc:	00078c63          	beqz	a5,80002dd4 <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002dc0:	0007b703          	ld	a4,0(a5)
    80002dc4:	00070863          	beqz	a4,80002dd4 <_ZdaPv+0xa0>
    80002dc8:	0107b683          	ld	a3,16(a5)
    80002dcc:	00d78633          	add	a2,a5,a3
    80002dd0:	04c70a63          	beq	a4,a2,80002e24 <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
    80002dd4:	00813403          	ld	s0,8(sp)
    80002dd8:	01010113          	addi	sp,sp,16
    80002ddc:	00008067          	ret
                    newSeg->next = fmem_head;
    80002de0:	00004717          	auipc	a4,0x4
    80002de4:	c4873703          	ld	a4,-952(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002de8:	00073703          	ld	a4,0(a4)
    80002dec:	00e53023          	sd	a4,0(a0)
    80002df0:	fa1ff06f          	j	80002d90 <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    80002df4:	00004717          	auipc	a4,0x4
    80002df8:	c3473703          	ld	a4,-972(a4) # 80006a28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002dfc:	00a73023          	sd	a0,0(a4)
    80002e00:	fa5ff06f          	j	80002da4 <_ZdaPv+0x70>
            curr->size += curr->next->size;
    80002e04:	01073603          	ld	a2,16(a4)
    80002e08:	00c686b3          	add	a3,a3,a2
    80002e0c:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80002e10:	00073703          	ld	a4,0(a4)
    80002e14:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80002e18:	fa0702e3          	beqz	a4,80002dbc <_ZdaPv+0x88>
    80002e1c:	00a73423          	sd	a0,8(a4)
    80002e20:	f9dff06f          	j	80002dbc <_ZdaPv+0x88>
            curr->size += curr->next->size;
    80002e24:	01073603          	ld	a2,16(a4)
    80002e28:	00c686b3          	add	a3,a3,a2
    80002e2c:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002e30:	00073703          	ld	a4,0(a4)
    80002e34:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80002e38:	f8070ee3          	beqz	a4,80002dd4 <_ZdaPv+0xa0>
    80002e3c:	00f73423          	sd	a5,8(a4)
    80002e40:	f95ff06f          	j	80002dd4 <_ZdaPv+0xa0>

0000000080002e44 <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00813423          	sd	s0,8(sp)
    80002e4c:	01010413          	addi	s0,sp,16
    80002e50:	00100793          	li	a5,1
    80002e54:	00f50863          	beq	a0,a5,80002e64 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002e58:	00813403          	ld	s0,8(sp)
    80002e5c:	01010113          	addi	sp,sp,16
    80002e60:	00008067          	ret
    80002e64:	000107b7          	lui	a5,0x10
    80002e68:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002e6c:	fef596e3          	bne	a1,a5,80002e58 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002e70:	00004797          	auipc	a5,0x4
    80002e74:	b987b783          	ld	a5,-1128(a5) # 80006a08 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002e78:	0007b783          	ld	a5,0(a5)
    80002e7c:	00004717          	auipc	a4,0x4
    80002e80:	c8f73223          	sd	a5,-892(a4) # 80006b00 <_ZN16MemoryAllocation9fmem_headE>
    80002e84:	fd5ff06f          	j	80002e58 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002e88 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    80002e88:	ff010113          	addi	sp,sp,-16
    80002e8c:	00113423          	sd	ra,8(sp)
    80002e90:	00813023          	sd	s0,0(sp)
    80002e94:	01010413          	addi	s0,sp,16
    80002e98:	000105b7          	lui	a1,0x10
    80002e9c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002ea0:	00100513          	li	a0,1
    80002ea4:	00000097          	auipc	ra,0x0
    80002ea8:	fa0080e7          	jalr	-96(ra) # 80002e44 <_Z41__static_initialization_and_destruction_0ii>
    80002eac:	00813083          	ld	ra,8(sp)
    80002eb0:	00013403          	ld	s0,0(sp)
    80002eb4:	01010113          	addi	sp,sp,16
    80002eb8:	00008067          	ret

0000000080002ebc <_Z11printStringPKc>:

#include "../h/Print.hpp"
#include "../lib/console.h"
#include "../h/RiscV.hpp"
//promenjeni print string i integer na vezbama 2, 1:10:00 tu negde, da bi se onemogucili prekidi u samoj niti
void printString(char const *string){
    80002ebc:	fe010113          	addi	sp,sp,-32
    80002ec0:	00113c23          	sd	ra,24(sp)
    80002ec4:	00813823          	sd	s0,16(sp)
    80002ec8:	00913423          	sd	s1,8(sp)
    80002ecc:	01213023          	sd	s2,0(sp)
    80002ed0:	02010413          	addi	s0,sp,32
    80002ed4:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80002ed8:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80002edc:	00200793          	li	a5,2
    80002ee0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = RiscV::r_sstatus();
    RiscV::mc_sstatus(RiscV::SSTATUS_SIE);
    while(*string!='\0'){
    80002ee4:	0004c503          	lbu	a0,0(s1)
    80002ee8:	00050a63          	beqz	a0,80002efc <_Z11printStringPKc+0x40>
        __putc(*string);
    80002eec:	00002097          	auipc	ra,0x2
    80002ef0:	1e0080e7          	jalr	480(ra) # 800050cc <__putc>
        string++;
    80002ef4:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80002ef8:	fedff06f          	j	80002ee4 <_Z11printStringPKc+0x28>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80002efc:	0009091b          	sext.w	s2,s2
    80002f00:	00297913          	andi	s2,s2,2
    80002f04:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    80002f08:	10092073          	csrs	sstatus,s2
}
    80002f0c:	01813083          	ld	ra,24(sp)
    80002f10:	01013403          	ld	s0,16(sp)
    80002f14:	00813483          	ld	s1,8(sp)
    80002f18:	00013903          	ld	s2,0(sp)
    80002f1c:	02010113          	addi	sp,sp,32
    80002f20:	00008067          	ret

0000000080002f24 <_Z12printIntegeri>:

void printInteger(int integer){
    80002f24:	fd010113          	addi	sp,sp,-48
    80002f28:	02113423          	sd	ra,40(sp)
    80002f2c:	02813023          	sd	s0,32(sp)
    80002f30:	00913c23          	sd	s1,24(sp)
    80002f34:	01213823          	sd	s2,16(sp)
    80002f38:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80002f3c:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80002f40:	00200793          	li	a5,2
    80002f44:	1007b073          	csrc	sstatus,a5
    char buf[16];
    int i, neg;
    uint x;

    neg=0;
    if(integer<0){
    80002f48:	08054663          	bltz	a0,80002fd4 <_Z12printIntegeri+0xb0>
        neg=1;
        x=-integer;
    }else{
        x=integer;
    80002f4c:	0005051b          	sext.w	a0,a0
    neg=0;
    80002f50:	00000593          	li	a1,0
    }

    i=0;
    80002f54:	00000493          	li	s1,0
    do {
        buf[i++] = digits [x%10];
    80002f58:	00a00693          	li	a3,10
    80002f5c:	02d577bb          	remuw	a5,a0,a3
    80002f60:	00048613          	mv	a2,s1
    80002f64:	0014849b          	addiw	s1,s1,1
    80002f68:	02079713          	slli	a4,a5,0x20
    80002f6c:	02075713          	srli	a4,a4,0x20
    80002f70:	00003797          	auipc	a5,0x3
    80002f74:	18878793          	addi	a5,a5,392 # 800060f8 <_ZZ12printIntegeriE6digits>
    80002f78:	00e787b3          	add	a5,a5,a4
    80002f7c:	0007c703          	lbu	a4,0(a5)
    80002f80:	fe040793          	addi	a5,s0,-32
    80002f84:	00c787b3          	add	a5,a5,a2
    80002f88:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002f8c:	0005071b          	sext.w	a4,a0
    80002f90:	02d5553b          	divuw	a0,a0,a3
    80002f94:	00900793          	li	a5,9
    80002f98:	fce7e0e3          	bltu	a5,a4,80002f58 <_Z12printIntegeri+0x34>
    if(neg) buf[i++] = '-';
    80002f9c:	00058c63          	beqz	a1,80002fb4 <_Z12printIntegeri+0x90>
    80002fa0:	fe040793          	addi	a5,s0,-32
    80002fa4:	009784b3          	add	s1,a5,s1
    80002fa8:	02d00793          	li	a5,45
    80002fac:	fef48823          	sb	a5,-16(s1)
    80002fb0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0){
    80002fb4:	fff4849b          	addiw	s1,s1,-1
    80002fb8:	0204c463          	bltz	s1,80002fe0 <_Z12printIntegeri+0xbc>
        __putc(buf[i]);
    80002fbc:	fe040793          	addi	a5,s0,-32
    80002fc0:	009787b3          	add	a5,a5,s1
    80002fc4:	ff07c503          	lbu	a0,-16(a5)
    80002fc8:	00002097          	auipc	ra,0x2
    80002fcc:	104080e7          	jalr	260(ra) # 800050cc <__putc>
    80002fd0:	fe5ff06f          	j	80002fb4 <_Z12printIntegeri+0x90>
        x=-integer;
    80002fd4:	40a0053b          	negw	a0,a0
        neg=1;
    80002fd8:	00100593          	li	a1,1
    80002fdc:	f79ff06f          	j	80002f54 <_Z12printIntegeri+0x30>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80002fe0:	0009091b          	sext.w	s2,s2
    80002fe4:	00297913          	andi	s2,s2,2
    80002fe8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    80002fec:	10092073          	csrs	sstatus,s2
}
    80002ff0:	02813083          	ld	ra,40(sp)
    80002ff4:	02013403          	ld	s0,32(sp)
    80002ff8:	01813483          	ld	s1,24(sp)
    80002ffc:	01013903          	ld	s2,16(sp)
    80003000:	03010113          	addi	sp,sp,48
    80003004:	00008067          	ret

0000000080003008 <start>:
    80003008:	ff010113          	addi	sp,sp,-16
    8000300c:	00813423          	sd	s0,8(sp)
    80003010:	01010413          	addi	s0,sp,16
    80003014:	300027f3          	csrr	a5,mstatus
    80003018:	ffffe737          	lui	a4,0xffffe
    8000301c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff6a9f>
    80003020:	00e7f7b3          	and	a5,a5,a4
    80003024:	00001737          	lui	a4,0x1
    80003028:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000302c:	00e7e7b3          	or	a5,a5,a4
    80003030:	30079073          	csrw	mstatus,a5
    80003034:	00000797          	auipc	a5,0x0
    80003038:	16078793          	addi	a5,a5,352 # 80003194 <system_main>
    8000303c:	34179073          	csrw	mepc,a5
    80003040:	00000793          	li	a5,0
    80003044:	18079073          	csrw	satp,a5
    80003048:	000107b7          	lui	a5,0x10
    8000304c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003050:	30279073          	csrw	medeleg,a5
    80003054:	30379073          	csrw	mideleg,a5
    80003058:	104027f3          	csrr	a5,sie
    8000305c:	2227e793          	ori	a5,a5,546
    80003060:	10479073          	csrw	sie,a5
    80003064:	fff00793          	li	a5,-1
    80003068:	00a7d793          	srli	a5,a5,0xa
    8000306c:	3b079073          	csrw	pmpaddr0,a5
    80003070:	00f00793          	li	a5,15
    80003074:	3a079073          	csrw	pmpcfg0,a5
    80003078:	f14027f3          	csrr	a5,mhartid
    8000307c:	0200c737          	lui	a4,0x200c
    80003080:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003084:	0007869b          	sext.w	a3,a5
    80003088:	00269713          	slli	a4,a3,0x2
    8000308c:	000f4637          	lui	a2,0xf4
    80003090:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003094:	00d70733          	add	a4,a4,a3
    80003098:	0037979b          	slliw	a5,a5,0x3
    8000309c:	020046b7          	lui	a3,0x2004
    800030a0:	00d787b3          	add	a5,a5,a3
    800030a4:	00c585b3          	add	a1,a1,a2
    800030a8:	00371693          	slli	a3,a4,0x3
    800030ac:	00004717          	auipc	a4,0x4
    800030b0:	a6470713          	addi	a4,a4,-1436 # 80006b10 <timer_scratch>
    800030b4:	00b7b023          	sd	a1,0(a5)
    800030b8:	00d70733          	add	a4,a4,a3
    800030bc:	00f73c23          	sd	a5,24(a4)
    800030c0:	02c73023          	sd	a2,32(a4)
    800030c4:	34071073          	csrw	mscratch,a4
    800030c8:	00000797          	auipc	a5,0x0
    800030cc:	6e878793          	addi	a5,a5,1768 # 800037b0 <timervec>
    800030d0:	30579073          	csrw	mtvec,a5
    800030d4:	300027f3          	csrr	a5,mstatus
    800030d8:	0087e793          	ori	a5,a5,8
    800030dc:	30079073          	csrw	mstatus,a5
    800030e0:	304027f3          	csrr	a5,mie
    800030e4:	0807e793          	ori	a5,a5,128
    800030e8:	30479073          	csrw	mie,a5
    800030ec:	f14027f3          	csrr	a5,mhartid
    800030f0:	0007879b          	sext.w	a5,a5
    800030f4:	00078213          	mv	tp,a5
    800030f8:	30200073          	mret
    800030fc:	00813403          	ld	s0,8(sp)
    80003100:	01010113          	addi	sp,sp,16
    80003104:	00008067          	ret

0000000080003108 <timerinit>:
    80003108:	ff010113          	addi	sp,sp,-16
    8000310c:	00813423          	sd	s0,8(sp)
    80003110:	01010413          	addi	s0,sp,16
    80003114:	f14027f3          	csrr	a5,mhartid
    80003118:	0200c737          	lui	a4,0x200c
    8000311c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003120:	0007869b          	sext.w	a3,a5
    80003124:	00269713          	slli	a4,a3,0x2
    80003128:	000f4637          	lui	a2,0xf4
    8000312c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003130:	00d70733          	add	a4,a4,a3
    80003134:	0037979b          	slliw	a5,a5,0x3
    80003138:	020046b7          	lui	a3,0x2004
    8000313c:	00d787b3          	add	a5,a5,a3
    80003140:	00c585b3          	add	a1,a1,a2
    80003144:	00371693          	slli	a3,a4,0x3
    80003148:	00004717          	auipc	a4,0x4
    8000314c:	9c870713          	addi	a4,a4,-1592 # 80006b10 <timer_scratch>
    80003150:	00b7b023          	sd	a1,0(a5)
    80003154:	00d70733          	add	a4,a4,a3
    80003158:	00f73c23          	sd	a5,24(a4)
    8000315c:	02c73023          	sd	a2,32(a4)
    80003160:	34071073          	csrw	mscratch,a4
    80003164:	00000797          	auipc	a5,0x0
    80003168:	64c78793          	addi	a5,a5,1612 # 800037b0 <timervec>
    8000316c:	30579073          	csrw	mtvec,a5
    80003170:	300027f3          	csrr	a5,mstatus
    80003174:	0087e793          	ori	a5,a5,8
    80003178:	30079073          	csrw	mstatus,a5
    8000317c:	304027f3          	csrr	a5,mie
    80003180:	0807e793          	ori	a5,a5,128
    80003184:	30479073          	csrw	mie,a5
    80003188:	00813403          	ld	s0,8(sp)
    8000318c:	01010113          	addi	sp,sp,16
    80003190:	00008067          	ret

0000000080003194 <system_main>:
    80003194:	fe010113          	addi	sp,sp,-32
    80003198:	00813823          	sd	s0,16(sp)
    8000319c:	00913423          	sd	s1,8(sp)
    800031a0:	00113c23          	sd	ra,24(sp)
    800031a4:	02010413          	addi	s0,sp,32
    800031a8:	00000097          	auipc	ra,0x0
    800031ac:	0c4080e7          	jalr	196(ra) # 8000326c <cpuid>
    800031b0:	00004497          	auipc	s1,0x4
    800031b4:	8c048493          	addi	s1,s1,-1856 # 80006a70 <started>
    800031b8:	02050263          	beqz	a0,800031dc <system_main+0x48>
    800031bc:	0004a783          	lw	a5,0(s1)
    800031c0:	0007879b          	sext.w	a5,a5
    800031c4:	fe078ce3          	beqz	a5,800031bc <system_main+0x28>
    800031c8:	0ff0000f          	fence
    800031cc:	00003517          	auipc	a0,0x3
    800031d0:	f6c50513          	addi	a0,a0,-148 # 80006138 <_ZZ12printIntegeriE6digits+0x40>
    800031d4:	00001097          	auipc	ra,0x1
    800031d8:	a78080e7          	jalr	-1416(ra) # 80003c4c <panic>
    800031dc:	00001097          	auipc	ra,0x1
    800031e0:	9cc080e7          	jalr	-1588(ra) # 80003ba8 <consoleinit>
    800031e4:	00001097          	auipc	ra,0x1
    800031e8:	158080e7          	jalr	344(ra) # 8000433c <printfinit>
    800031ec:	00003517          	auipc	a0,0x3
    800031f0:	ea450513          	addi	a0,a0,-348 # 80006090 <CONSOLE_STATUS+0x80>
    800031f4:	00001097          	auipc	ra,0x1
    800031f8:	ab4080e7          	jalr	-1356(ra) # 80003ca8 <__printf>
    800031fc:	00003517          	auipc	a0,0x3
    80003200:	f0c50513          	addi	a0,a0,-244 # 80006108 <_ZZ12printIntegeriE6digits+0x10>
    80003204:	00001097          	auipc	ra,0x1
    80003208:	aa4080e7          	jalr	-1372(ra) # 80003ca8 <__printf>
    8000320c:	00003517          	auipc	a0,0x3
    80003210:	e8450513          	addi	a0,a0,-380 # 80006090 <CONSOLE_STATUS+0x80>
    80003214:	00001097          	auipc	ra,0x1
    80003218:	a94080e7          	jalr	-1388(ra) # 80003ca8 <__printf>
    8000321c:	00001097          	auipc	ra,0x1
    80003220:	4ac080e7          	jalr	1196(ra) # 800046c8 <kinit>
    80003224:	00000097          	auipc	ra,0x0
    80003228:	148080e7          	jalr	328(ra) # 8000336c <trapinit>
    8000322c:	00000097          	auipc	ra,0x0
    80003230:	16c080e7          	jalr	364(ra) # 80003398 <trapinithart>
    80003234:	00000097          	auipc	ra,0x0
    80003238:	5bc080e7          	jalr	1468(ra) # 800037f0 <plicinit>
    8000323c:	00000097          	auipc	ra,0x0
    80003240:	5dc080e7          	jalr	1500(ra) # 80003818 <plicinithart>
    80003244:	00000097          	auipc	ra,0x0
    80003248:	078080e7          	jalr	120(ra) # 800032bc <userinit>
    8000324c:	0ff0000f          	fence
    80003250:	00100793          	li	a5,1
    80003254:	00003517          	auipc	a0,0x3
    80003258:	ecc50513          	addi	a0,a0,-308 # 80006120 <_ZZ12printIntegeriE6digits+0x28>
    8000325c:	00f4a023          	sw	a5,0(s1)
    80003260:	00001097          	auipc	ra,0x1
    80003264:	a48080e7          	jalr	-1464(ra) # 80003ca8 <__printf>
    80003268:	0000006f          	j	80003268 <system_main+0xd4>

000000008000326c <cpuid>:
    8000326c:	ff010113          	addi	sp,sp,-16
    80003270:	00813423          	sd	s0,8(sp)
    80003274:	01010413          	addi	s0,sp,16
    80003278:	00020513          	mv	a0,tp
    8000327c:	00813403          	ld	s0,8(sp)
    80003280:	0005051b          	sext.w	a0,a0
    80003284:	01010113          	addi	sp,sp,16
    80003288:	00008067          	ret

000000008000328c <mycpu>:
    8000328c:	ff010113          	addi	sp,sp,-16
    80003290:	00813423          	sd	s0,8(sp)
    80003294:	01010413          	addi	s0,sp,16
    80003298:	00020793          	mv	a5,tp
    8000329c:	00813403          	ld	s0,8(sp)
    800032a0:	0007879b          	sext.w	a5,a5
    800032a4:	00779793          	slli	a5,a5,0x7
    800032a8:	00005517          	auipc	a0,0x5
    800032ac:	89850513          	addi	a0,a0,-1896 # 80007b40 <cpus>
    800032b0:	00f50533          	add	a0,a0,a5
    800032b4:	01010113          	addi	sp,sp,16
    800032b8:	00008067          	ret

00000000800032bc <userinit>:
    800032bc:	ff010113          	addi	sp,sp,-16
    800032c0:	00813423          	sd	s0,8(sp)
    800032c4:	01010413          	addi	s0,sp,16
    800032c8:	00813403          	ld	s0,8(sp)
    800032cc:	01010113          	addi	sp,sp,16
    800032d0:	fffff317          	auipc	t1,0xfffff
    800032d4:	0e830067          	jr	232(t1) # 800023b8 <main>

00000000800032d8 <either_copyout>:
    800032d8:	ff010113          	addi	sp,sp,-16
    800032dc:	00813023          	sd	s0,0(sp)
    800032e0:	00113423          	sd	ra,8(sp)
    800032e4:	01010413          	addi	s0,sp,16
    800032e8:	02051663          	bnez	a0,80003314 <either_copyout+0x3c>
    800032ec:	00058513          	mv	a0,a1
    800032f0:	00060593          	mv	a1,a2
    800032f4:	0006861b          	sext.w	a2,a3
    800032f8:	00002097          	auipc	ra,0x2
    800032fc:	c5c080e7          	jalr	-932(ra) # 80004f54 <__memmove>
    80003300:	00813083          	ld	ra,8(sp)
    80003304:	00013403          	ld	s0,0(sp)
    80003308:	00000513          	li	a0,0
    8000330c:	01010113          	addi	sp,sp,16
    80003310:	00008067          	ret
    80003314:	00003517          	auipc	a0,0x3
    80003318:	e4c50513          	addi	a0,a0,-436 # 80006160 <_ZZ12printIntegeriE6digits+0x68>
    8000331c:	00001097          	auipc	ra,0x1
    80003320:	930080e7          	jalr	-1744(ra) # 80003c4c <panic>

0000000080003324 <either_copyin>:
    80003324:	ff010113          	addi	sp,sp,-16
    80003328:	00813023          	sd	s0,0(sp)
    8000332c:	00113423          	sd	ra,8(sp)
    80003330:	01010413          	addi	s0,sp,16
    80003334:	02059463          	bnez	a1,8000335c <either_copyin+0x38>
    80003338:	00060593          	mv	a1,a2
    8000333c:	0006861b          	sext.w	a2,a3
    80003340:	00002097          	auipc	ra,0x2
    80003344:	c14080e7          	jalr	-1004(ra) # 80004f54 <__memmove>
    80003348:	00813083          	ld	ra,8(sp)
    8000334c:	00013403          	ld	s0,0(sp)
    80003350:	00000513          	li	a0,0
    80003354:	01010113          	addi	sp,sp,16
    80003358:	00008067          	ret
    8000335c:	00003517          	auipc	a0,0x3
    80003360:	e2c50513          	addi	a0,a0,-468 # 80006188 <_ZZ12printIntegeriE6digits+0x90>
    80003364:	00001097          	auipc	ra,0x1
    80003368:	8e8080e7          	jalr	-1816(ra) # 80003c4c <panic>

000000008000336c <trapinit>:
    8000336c:	ff010113          	addi	sp,sp,-16
    80003370:	00813423          	sd	s0,8(sp)
    80003374:	01010413          	addi	s0,sp,16
    80003378:	00813403          	ld	s0,8(sp)
    8000337c:	00003597          	auipc	a1,0x3
    80003380:	e3458593          	addi	a1,a1,-460 # 800061b0 <_ZZ12printIntegeriE6digits+0xb8>
    80003384:	00005517          	auipc	a0,0x5
    80003388:	83c50513          	addi	a0,a0,-1988 # 80007bc0 <tickslock>
    8000338c:	01010113          	addi	sp,sp,16
    80003390:	00001317          	auipc	t1,0x1
    80003394:	5c830067          	jr	1480(t1) # 80004958 <initlock>

0000000080003398 <trapinithart>:
    80003398:	ff010113          	addi	sp,sp,-16
    8000339c:	00813423          	sd	s0,8(sp)
    800033a0:	01010413          	addi	s0,sp,16
    800033a4:	00000797          	auipc	a5,0x0
    800033a8:	2fc78793          	addi	a5,a5,764 # 800036a0 <kernelvec>
    800033ac:	10579073          	csrw	stvec,a5
    800033b0:	00813403          	ld	s0,8(sp)
    800033b4:	01010113          	addi	sp,sp,16
    800033b8:	00008067          	ret

00000000800033bc <usertrap>:
    800033bc:	ff010113          	addi	sp,sp,-16
    800033c0:	00813423          	sd	s0,8(sp)
    800033c4:	01010413          	addi	s0,sp,16
    800033c8:	00813403          	ld	s0,8(sp)
    800033cc:	01010113          	addi	sp,sp,16
    800033d0:	00008067          	ret

00000000800033d4 <usertrapret>:
    800033d4:	ff010113          	addi	sp,sp,-16
    800033d8:	00813423          	sd	s0,8(sp)
    800033dc:	01010413          	addi	s0,sp,16
    800033e0:	00813403          	ld	s0,8(sp)
    800033e4:	01010113          	addi	sp,sp,16
    800033e8:	00008067          	ret

00000000800033ec <kerneltrap>:
    800033ec:	fe010113          	addi	sp,sp,-32
    800033f0:	00813823          	sd	s0,16(sp)
    800033f4:	00113c23          	sd	ra,24(sp)
    800033f8:	00913423          	sd	s1,8(sp)
    800033fc:	02010413          	addi	s0,sp,32
    80003400:	142025f3          	csrr	a1,scause
    80003404:	100027f3          	csrr	a5,sstatus
    80003408:	0027f793          	andi	a5,a5,2
    8000340c:	10079c63          	bnez	a5,80003524 <kerneltrap+0x138>
    80003410:	142027f3          	csrr	a5,scause
    80003414:	0207ce63          	bltz	a5,80003450 <kerneltrap+0x64>
    80003418:	00003517          	auipc	a0,0x3
    8000341c:	de050513          	addi	a0,a0,-544 # 800061f8 <_ZZ12printIntegeriE6digits+0x100>
    80003420:	00001097          	auipc	ra,0x1
    80003424:	888080e7          	jalr	-1912(ra) # 80003ca8 <__printf>
    80003428:	141025f3          	csrr	a1,sepc
    8000342c:	14302673          	csrr	a2,stval
    80003430:	00003517          	auipc	a0,0x3
    80003434:	dd850513          	addi	a0,a0,-552 # 80006208 <_ZZ12printIntegeriE6digits+0x110>
    80003438:	00001097          	auipc	ra,0x1
    8000343c:	870080e7          	jalr	-1936(ra) # 80003ca8 <__printf>
    80003440:	00003517          	auipc	a0,0x3
    80003444:	de050513          	addi	a0,a0,-544 # 80006220 <_ZZ12printIntegeriE6digits+0x128>
    80003448:	00001097          	auipc	ra,0x1
    8000344c:	804080e7          	jalr	-2044(ra) # 80003c4c <panic>
    80003450:	0ff7f713          	andi	a4,a5,255
    80003454:	00900693          	li	a3,9
    80003458:	04d70063          	beq	a4,a3,80003498 <kerneltrap+0xac>
    8000345c:	fff00713          	li	a4,-1
    80003460:	03f71713          	slli	a4,a4,0x3f
    80003464:	00170713          	addi	a4,a4,1
    80003468:	fae798e3          	bne	a5,a4,80003418 <kerneltrap+0x2c>
    8000346c:	00000097          	auipc	ra,0x0
    80003470:	e00080e7          	jalr	-512(ra) # 8000326c <cpuid>
    80003474:	06050663          	beqz	a0,800034e0 <kerneltrap+0xf4>
    80003478:	144027f3          	csrr	a5,sip
    8000347c:	ffd7f793          	andi	a5,a5,-3
    80003480:	14479073          	csrw	sip,a5
    80003484:	01813083          	ld	ra,24(sp)
    80003488:	01013403          	ld	s0,16(sp)
    8000348c:	00813483          	ld	s1,8(sp)
    80003490:	02010113          	addi	sp,sp,32
    80003494:	00008067          	ret
    80003498:	00000097          	auipc	ra,0x0
    8000349c:	3cc080e7          	jalr	972(ra) # 80003864 <plic_claim>
    800034a0:	00a00793          	li	a5,10
    800034a4:	00050493          	mv	s1,a0
    800034a8:	06f50863          	beq	a0,a5,80003518 <kerneltrap+0x12c>
    800034ac:	fc050ce3          	beqz	a0,80003484 <kerneltrap+0x98>
    800034b0:	00050593          	mv	a1,a0
    800034b4:	00003517          	auipc	a0,0x3
    800034b8:	d2450513          	addi	a0,a0,-732 # 800061d8 <_ZZ12printIntegeriE6digits+0xe0>
    800034bc:	00000097          	auipc	ra,0x0
    800034c0:	7ec080e7          	jalr	2028(ra) # 80003ca8 <__printf>
    800034c4:	01013403          	ld	s0,16(sp)
    800034c8:	01813083          	ld	ra,24(sp)
    800034cc:	00048513          	mv	a0,s1
    800034d0:	00813483          	ld	s1,8(sp)
    800034d4:	02010113          	addi	sp,sp,32
    800034d8:	00000317          	auipc	t1,0x0
    800034dc:	3c430067          	jr	964(t1) # 8000389c <plic_complete>
    800034e0:	00004517          	auipc	a0,0x4
    800034e4:	6e050513          	addi	a0,a0,1760 # 80007bc0 <tickslock>
    800034e8:	00001097          	auipc	ra,0x1
    800034ec:	494080e7          	jalr	1172(ra) # 8000497c <acquire>
    800034f0:	00003717          	auipc	a4,0x3
    800034f4:	58470713          	addi	a4,a4,1412 # 80006a74 <ticks>
    800034f8:	00072783          	lw	a5,0(a4)
    800034fc:	00004517          	auipc	a0,0x4
    80003500:	6c450513          	addi	a0,a0,1732 # 80007bc0 <tickslock>
    80003504:	0017879b          	addiw	a5,a5,1
    80003508:	00f72023          	sw	a5,0(a4)
    8000350c:	00001097          	auipc	ra,0x1
    80003510:	53c080e7          	jalr	1340(ra) # 80004a48 <release>
    80003514:	f65ff06f          	j	80003478 <kerneltrap+0x8c>
    80003518:	00001097          	auipc	ra,0x1
    8000351c:	098080e7          	jalr	152(ra) # 800045b0 <uartintr>
    80003520:	fa5ff06f          	j	800034c4 <kerneltrap+0xd8>
    80003524:	00003517          	auipc	a0,0x3
    80003528:	c9450513          	addi	a0,a0,-876 # 800061b8 <_ZZ12printIntegeriE6digits+0xc0>
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	720080e7          	jalr	1824(ra) # 80003c4c <panic>

0000000080003534 <clockintr>:
    80003534:	fe010113          	addi	sp,sp,-32
    80003538:	00813823          	sd	s0,16(sp)
    8000353c:	00913423          	sd	s1,8(sp)
    80003540:	00113c23          	sd	ra,24(sp)
    80003544:	02010413          	addi	s0,sp,32
    80003548:	00004497          	auipc	s1,0x4
    8000354c:	67848493          	addi	s1,s1,1656 # 80007bc0 <tickslock>
    80003550:	00048513          	mv	a0,s1
    80003554:	00001097          	auipc	ra,0x1
    80003558:	428080e7          	jalr	1064(ra) # 8000497c <acquire>
    8000355c:	00003717          	auipc	a4,0x3
    80003560:	51870713          	addi	a4,a4,1304 # 80006a74 <ticks>
    80003564:	00072783          	lw	a5,0(a4)
    80003568:	01013403          	ld	s0,16(sp)
    8000356c:	01813083          	ld	ra,24(sp)
    80003570:	00048513          	mv	a0,s1
    80003574:	0017879b          	addiw	a5,a5,1
    80003578:	00813483          	ld	s1,8(sp)
    8000357c:	00f72023          	sw	a5,0(a4)
    80003580:	02010113          	addi	sp,sp,32
    80003584:	00001317          	auipc	t1,0x1
    80003588:	4c430067          	jr	1220(t1) # 80004a48 <release>

000000008000358c <devintr>:
    8000358c:	142027f3          	csrr	a5,scause
    80003590:	00000513          	li	a0,0
    80003594:	0007c463          	bltz	a5,8000359c <devintr+0x10>
    80003598:	00008067          	ret
    8000359c:	fe010113          	addi	sp,sp,-32
    800035a0:	00813823          	sd	s0,16(sp)
    800035a4:	00113c23          	sd	ra,24(sp)
    800035a8:	00913423          	sd	s1,8(sp)
    800035ac:	02010413          	addi	s0,sp,32
    800035b0:	0ff7f713          	andi	a4,a5,255
    800035b4:	00900693          	li	a3,9
    800035b8:	04d70c63          	beq	a4,a3,80003610 <devintr+0x84>
    800035bc:	fff00713          	li	a4,-1
    800035c0:	03f71713          	slli	a4,a4,0x3f
    800035c4:	00170713          	addi	a4,a4,1
    800035c8:	00e78c63          	beq	a5,a4,800035e0 <devintr+0x54>
    800035cc:	01813083          	ld	ra,24(sp)
    800035d0:	01013403          	ld	s0,16(sp)
    800035d4:	00813483          	ld	s1,8(sp)
    800035d8:	02010113          	addi	sp,sp,32
    800035dc:	00008067          	ret
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	c8c080e7          	jalr	-884(ra) # 8000326c <cpuid>
    800035e8:	06050663          	beqz	a0,80003654 <devintr+0xc8>
    800035ec:	144027f3          	csrr	a5,sip
    800035f0:	ffd7f793          	andi	a5,a5,-3
    800035f4:	14479073          	csrw	sip,a5
    800035f8:	01813083          	ld	ra,24(sp)
    800035fc:	01013403          	ld	s0,16(sp)
    80003600:	00813483          	ld	s1,8(sp)
    80003604:	00200513          	li	a0,2
    80003608:	02010113          	addi	sp,sp,32
    8000360c:	00008067          	ret
    80003610:	00000097          	auipc	ra,0x0
    80003614:	254080e7          	jalr	596(ra) # 80003864 <plic_claim>
    80003618:	00a00793          	li	a5,10
    8000361c:	00050493          	mv	s1,a0
    80003620:	06f50663          	beq	a0,a5,8000368c <devintr+0x100>
    80003624:	00100513          	li	a0,1
    80003628:	fa0482e3          	beqz	s1,800035cc <devintr+0x40>
    8000362c:	00048593          	mv	a1,s1
    80003630:	00003517          	auipc	a0,0x3
    80003634:	ba850513          	addi	a0,a0,-1112 # 800061d8 <_ZZ12printIntegeriE6digits+0xe0>
    80003638:	00000097          	auipc	ra,0x0
    8000363c:	670080e7          	jalr	1648(ra) # 80003ca8 <__printf>
    80003640:	00048513          	mv	a0,s1
    80003644:	00000097          	auipc	ra,0x0
    80003648:	258080e7          	jalr	600(ra) # 8000389c <plic_complete>
    8000364c:	00100513          	li	a0,1
    80003650:	f7dff06f          	j	800035cc <devintr+0x40>
    80003654:	00004517          	auipc	a0,0x4
    80003658:	56c50513          	addi	a0,a0,1388 # 80007bc0 <tickslock>
    8000365c:	00001097          	auipc	ra,0x1
    80003660:	320080e7          	jalr	800(ra) # 8000497c <acquire>
    80003664:	00003717          	auipc	a4,0x3
    80003668:	41070713          	addi	a4,a4,1040 # 80006a74 <ticks>
    8000366c:	00072783          	lw	a5,0(a4)
    80003670:	00004517          	auipc	a0,0x4
    80003674:	55050513          	addi	a0,a0,1360 # 80007bc0 <tickslock>
    80003678:	0017879b          	addiw	a5,a5,1
    8000367c:	00f72023          	sw	a5,0(a4)
    80003680:	00001097          	auipc	ra,0x1
    80003684:	3c8080e7          	jalr	968(ra) # 80004a48 <release>
    80003688:	f65ff06f          	j	800035ec <devintr+0x60>
    8000368c:	00001097          	auipc	ra,0x1
    80003690:	f24080e7          	jalr	-220(ra) # 800045b0 <uartintr>
    80003694:	fadff06f          	j	80003640 <devintr+0xb4>
	...

00000000800036a0 <kernelvec>:
    800036a0:	f0010113          	addi	sp,sp,-256
    800036a4:	00113023          	sd	ra,0(sp)
    800036a8:	00213423          	sd	sp,8(sp)
    800036ac:	00313823          	sd	gp,16(sp)
    800036b0:	00413c23          	sd	tp,24(sp)
    800036b4:	02513023          	sd	t0,32(sp)
    800036b8:	02613423          	sd	t1,40(sp)
    800036bc:	02713823          	sd	t2,48(sp)
    800036c0:	02813c23          	sd	s0,56(sp)
    800036c4:	04913023          	sd	s1,64(sp)
    800036c8:	04a13423          	sd	a0,72(sp)
    800036cc:	04b13823          	sd	a1,80(sp)
    800036d0:	04c13c23          	sd	a2,88(sp)
    800036d4:	06d13023          	sd	a3,96(sp)
    800036d8:	06e13423          	sd	a4,104(sp)
    800036dc:	06f13823          	sd	a5,112(sp)
    800036e0:	07013c23          	sd	a6,120(sp)
    800036e4:	09113023          	sd	a7,128(sp)
    800036e8:	09213423          	sd	s2,136(sp)
    800036ec:	09313823          	sd	s3,144(sp)
    800036f0:	09413c23          	sd	s4,152(sp)
    800036f4:	0b513023          	sd	s5,160(sp)
    800036f8:	0b613423          	sd	s6,168(sp)
    800036fc:	0b713823          	sd	s7,176(sp)
    80003700:	0b813c23          	sd	s8,184(sp)
    80003704:	0d913023          	sd	s9,192(sp)
    80003708:	0da13423          	sd	s10,200(sp)
    8000370c:	0db13823          	sd	s11,208(sp)
    80003710:	0dc13c23          	sd	t3,216(sp)
    80003714:	0fd13023          	sd	t4,224(sp)
    80003718:	0fe13423          	sd	t5,232(sp)
    8000371c:	0ff13823          	sd	t6,240(sp)
    80003720:	ccdff0ef          	jal	ra,800033ec <kerneltrap>
    80003724:	00013083          	ld	ra,0(sp)
    80003728:	00813103          	ld	sp,8(sp)
    8000372c:	01013183          	ld	gp,16(sp)
    80003730:	02013283          	ld	t0,32(sp)
    80003734:	02813303          	ld	t1,40(sp)
    80003738:	03013383          	ld	t2,48(sp)
    8000373c:	03813403          	ld	s0,56(sp)
    80003740:	04013483          	ld	s1,64(sp)
    80003744:	04813503          	ld	a0,72(sp)
    80003748:	05013583          	ld	a1,80(sp)
    8000374c:	05813603          	ld	a2,88(sp)
    80003750:	06013683          	ld	a3,96(sp)
    80003754:	06813703          	ld	a4,104(sp)
    80003758:	07013783          	ld	a5,112(sp)
    8000375c:	07813803          	ld	a6,120(sp)
    80003760:	08013883          	ld	a7,128(sp)
    80003764:	08813903          	ld	s2,136(sp)
    80003768:	09013983          	ld	s3,144(sp)
    8000376c:	09813a03          	ld	s4,152(sp)
    80003770:	0a013a83          	ld	s5,160(sp)
    80003774:	0a813b03          	ld	s6,168(sp)
    80003778:	0b013b83          	ld	s7,176(sp)
    8000377c:	0b813c03          	ld	s8,184(sp)
    80003780:	0c013c83          	ld	s9,192(sp)
    80003784:	0c813d03          	ld	s10,200(sp)
    80003788:	0d013d83          	ld	s11,208(sp)
    8000378c:	0d813e03          	ld	t3,216(sp)
    80003790:	0e013e83          	ld	t4,224(sp)
    80003794:	0e813f03          	ld	t5,232(sp)
    80003798:	0f013f83          	ld	t6,240(sp)
    8000379c:	10010113          	addi	sp,sp,256
    800037a0:	10200073          	sret
    800037a4:	00000013          	nop
    800037a8:	00000013          	nop
    800037ac:	00000013          	nop

00000000800037b0 <timervec>:
    800037b0:	34051573          	csrrw	a0,mscratch,a0
    800037b4:	00b53023          	sd	a1,0(a0)
    800037b8:	00c53423          	sd	a2,8(a0)
    800037bc:	00d53823          	sd	a3,16(a0)
    800037c0:	01853583          	ld	a1,24(a0)
    800037c4:	02053603          	ld	a2,32(a0)
    800037c8:	0005b683          	ld	a3,0(a1)
    800037cc:	00c686b3          	add	a3,a3,a2
    800037d0:	00d5b023          	sd	a3,0(a1)
    800037d4:	00200593          	li	a1,2
    800037d8:	14459073          	csrw	sip,a1
    800037dc:	01053683          	ld	a3,16(a0)
    800037e0:	00853603          	ld	a2,8(a0)
    800037e4:	00053583          	ld	a1,0(a0)
    800037e8:	34051573          	csrrw	a0,mscratch,a0
    800037ec:	30200073          	mret

00000000800037f0 <plicinit>:
    800037f0:	ff010113          	addi	sp,sp,-16
    800037f4:	00813423          	sd	s0,8(sp)
    800037f8:	01010413          	addi	s0,sp,16
    800037fc:	00813403          	ld	s0,8(sp)
    80003800:	0c0007b7          	lui	a5,0xc000
    80003804:	00100713          	li	a4,1
    80003808:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000380c:	00e7a223          	sw	a4,4(a5)
    80003810:	01010113          	addi	sp,sp,16
    80003814:	00008067          	ret

0000000080003818 <plicinithart>:
    80003818:	ff010113          	addi	sp,sp,-16
    8000381c:	00813023          	sd	s0,0(sp)
    80003820:	00113423          	sd	ra,8(sp)
    80003824:	01010413          	addi	s0,sp,16
    80003828:	00000097          	auipc	ra,0x0
    8000382c:	a44080e7          	jalr	-1468(ra) # 8000326c <cpuid>
    80003830:	0085171b          	slliw	a4,a0,0x8
    80003834:	0c0027b7          	lui	a5,0xc002
    80003838:	00e787b3          	add	a5,a5,a4
    8000383c:	40200713          	li	a4,1026
    80003840:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003844:	00813083          	ld	ra,8(sp)
    80003848:	00013403          	ld	s0,0(sp)
    8000384c:	00d5151b          	slliw	a0,a0,0xd
    80003850:	0c2017b7          	lui	a5,0xc201
    80003854:	00a78533          	add	a0,a5,a0
    80003858:	00052023          	sw	zero,0(a0)
    8000385c:	01010113          	addi	sp,sp,16
    80003860:	00008067          	ret

0000000080003864 <plic_claim>:
    80003864:	ff010113          	addi	sp,sp,-16
    80003868:	00813023          	sd	s0,0(sp)
    8000386c:	00113423          	sd	ra,8(sp)
    80003870:	01010413          	addi	s0,sp,16
    80003874:	00000097          	auipc	ra,0x0
    80003878:	9f8080e7          	jalr	-1544(ra) # 8000326c <cpuid>
    8000387c:	00813083          	ld	ra,8(sp)
    80003880:	00013403          	ld	s0,0(sp)
    80003884:	00d5151b          	slliw	a0,a0,0xd
    80003888:	0c2017b7          	lui	a5,0xc201
    8000388c:	00a78533          	add	a0,a5,a0
    80003890:	00452503          	lw	a0,4(a0)
    80003894:	01010113          	addi	sp,sp,16
    80003898:	00008067          	ret

000000008000389c <plic_complete>:
    8000389c:	fe010113          	addi	sp,sp,-32
    800038a0:	00813823          	sd	s0,16(sp)
    800038a4:	00913423          	sd	s1,8(sp)
    800038a8:	00113c23          	sd	ra,24(sp)
    800038ac:	02010413          	addi	s0,sp,32
    800038b0:	00050493          	mv	s1,a0
    800038b4:	00000097          	auipc	ra,0x0
    800038b8:	9b8080e7          	jalr	-1608(ra) # 8000326c <cpuid>
    800038bc:	01813083          	ld	ra,24(sp)
    800038c0:	01013403          	ld	s0,16(sp)
    800038c4:	00d5179b          	slliw	a5,a0,0xd
    800038c8:	0c201737          	lui	a4,0xc201
    800038cc:	00f707b3          	add	a5,a4,a5
    800038d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800038d4:	00813483          	ld	s1,8(sp)
    800038d8:	02010113          	addi	sp,sp,32
    800038dc:	00008067          	ret

00000000800038e0 <consolewrite>:
    800038e0:	fb010113          	addi	sp,sp,-80
    800038e4:	04813023          	sd	s0,64(sp)
    800038e8:	04113423          	sd	ra,72(sp)
    800038ec:	02913c23          	sd	s1,56(sp)
    800038f0:	03213823          	sd	s2,48(sp)
    800038f4:	03313423          	sd	s3,40(sp)
    800038f8:	03413023          	sd	s4,32(sp)
    800038fc:	01513c23          	sd	s5,24(sp)
    80003900:	05010413          	addi	s0,sp,80
    80003904:	06c05c63          	blez	a2,8000397c <consolewrite+0x9c>
    80003908:	00060993          	mv	s3,a2
    8000390c:	00050a13          	mv	s4,a0
    80003910:	00058493          	mv	s1,a1
    80003914:	00000913          	li	s2,0
    80003918:	fff00a93          	li	s5,-1
    8000391c:	01c0006f          	j	80003938 <consolewrite+0x58>
    80003920:	fbf44503          	lbu	a0,-65(s0)
    80003924:	0019091b          	addiw	s2,s2,1
    80003928:	00148493          	addi	s1,s1,1
    8000392c:	00001097          	auipc	ra,0x1
    80003930:	a9c080e7          	jalr	-1380(ra) # 800043c8 <uartputc>
    80003934:	03298063          	beq	s3,s2,80003954 <consolewrite+0x74>
    80003938:	00048613          	mv	a2,s1
    8000393c:	00100693          	li	a3,1
    80003940:	000a0593          	mv	a1,s4
    80003944:	fbf40513          	addi	a0,s0,-65
    80003948:	00000097          	auipc	ra,0x0
    8000394c:	9dc080e7          	jalr	-1572(ra) # 80003324 <either_copyin>
    80003950:	fd5518e3          	bne	a0,s5,80003920 <consolewrite+0x40>
    80003954:	04813083          	ld	ra,72(sp)
    80003958:	04013403          	ld	s0,64(sp)
    8000395c:	03813483          	ld	s1,56(sp)
    80003960:	02813983          	ld	s3,40(sp)
    80003964:	02013a03          	ld	s4,32(sp)
    80003968:	01813a83          	ld	s5,24(sp)
    8000396c:	00090513          	mv	a0,s2
    80003970:	03013903          	ld	s2,48(sp)
    80003974:	05010113          	addi	sp,sp,80
    80003978:	00008067          	ret
    8000397c:	00000913          	li	s2,0
    80003980:	fd5ff06f          	j	80003954 <consolewrite+0x74>

0000000080003984 <consoleread>:
    80003984:	f9010113          	addi	sp,sp,-112
    80003988:	06813023          	sd	s0,96(sp)
    8000398c:	04913c23          	sd	s1,88(sp)
    80003990:	05213823          	sd	s2,80(sp)
    80003994:	05313423          	sd	s3,72(sp)
    80003998:	05413023          	sd	s4,64(sp)
    8000399c:	03513c23          	sd	s5,56(sp)
    800039a0:	03613823          	sd	s6,48(sp)
    800039a4:	03713423          	sd	s7,40(sp)
    800039a8:	03813023          	sd	s8,32(sp)
    800039ac:	06113423          	sd	ra,104(sp)
    800039b0:	01913c23          	sd	s9,24(sp)
    800039b4:	07010413          	addi	s0,sp,112
    800039b8:	00060b93          	mv	s7,a2
    800039bc:	00050913          	mv	s2,a0
    800039c0:	00058c13          	mv	s8,a1
    800039c4:	00060b1b          	sext.w	s6,a2
    800039c8:	00004497          	auipc	s1,0x4
    800039cc:	21048493          	addi	s1,s1,528 # 80007bd8 <cons>
    800039d0:	00400993          	li	s3,4
    800039d4:	fff00a13          	li	s4,-1
    800039d8:	00a00a93          	li	s5,10
    800039dc:	05705e63          	blez	s7,80003a38 <consoleread+0xb4>
    800039e0:	09c4a703          	lw	a4,156(s1)
    800039e4:	0984a783          	lw	a5,152(s1)
    800039e8:	0007071b          	sext.w	a4,a4
    800039ec:	08e78463          	beq	a5,a4,80003a74 <consoleread+0xf0>
    800039f0:	07f7f713          	andi	a4,a5,127
    800039f4:	00e48733          	add	a4,s1,a4
    800039f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800039fc:	0017869b          	addiw	a3,a5,1
    80003a00:	08d4ac23          	sw	a3,152(s1)
    80003a04:	00070c9b          	sext.w	s9,a4
    80003a08:	0b370663          	beq	a4,s3,80003ab4 <consoleread+0x130>
    80003a0c:	00100693          	li	a3,1
    80003a10:	f9f40613          	addi	a2,s0,-97
    80003a14:	000c0593          	mv	a1,s8
    80003a18:	00090513          	mv	a0,s2
    80003a1c:	f8e40fa3          	sb	a4,-97(s0)
    80003a20:	00000097          	auipc	ra,0x0
    80003a24:	8b8080e7          	jalr	-1864(ra) # 800032d8 <either_copyout>
    80003a28:	01450863          	beq	a0,s4,80003a38 <consoleread+0xb4>
    80003a2c:	001c0c13          	addi	s8,s8,1
    80003a30:	fffb8b9b          	addiw	s7,s7,-1
    80003a34:	fb5c94e3          	bne	s9,s5,800039dc <consoleread+0x58>
    80003a38:	000b851b          	sext.w	a0,s7
    80003a3c:	06813083          	ld	ra,104(sp)
    80003a40:	06013403          	ld	s0,96(sp)
    80003a44:	05813483          	ld	s1,88(sp)
    80003a48:	05013903          	ld	s2,80(sp)
    80003a4c:	04813983          	ld	s3,72(sp)
    80003a50:	04013a03          	ld	s4,64(sp)
    80003a54:	03813a83          	ld	s5,56(sp)
    80003a58:	02813b83          	ld	s7,40(sp)
    80003a5c:	02013c03          	ld	s8,32(sp)
    80003a60:	01813c83          	ld	s9,24(sp)
    80003a64:	40ab053b          	subw	a0,s6,a0
    80003a68:	03013b03          	ld	s6,48(sp)
    80003a6c:	07010113          	addi	sp,sp,112
    80003a70:	00008067          	ret
    80003a74:	00001097          	auipc	ra,0x1
    80003a78:	1d8080e7          	jalr	472(ra) # 80004c4c <push_on>
    80003a7c:	0984a703          	lw	a4,152(s1)
    80003a80:	09c4a783          	lw	a5,156(s1)
    80003a84:	0007879b          	sext.w	a5,a5
    80003a88:	fef70ce3          	beq	a4,a5,80003a80 <consoleread+0xfc>
    80003a8c:	00001097          	auipc	ra,0x1
    80003a90:	234080e7          	jalr	564(ra) # 80004cc0 <pop_on>
    80003a94:	0984a783          	lw	a5,152(s1)
    80003a98:	07f7f713          	andi	a4,a5,127
    80003a9c:	00e48733          	add	a4,s1,a4
    80003aa0:	01874703          	lbu	a4,24(a4)
    80003aa4:	0017869b          	addiw	a3,a5,1
    80003aa8:	08d4ac23          	sw	a3,152(s1)
    80003aac:	00070c9b          	sext.w	s9,a4
    80003ab0:	f5371ee3          	bne	a4,s3,80003a0c <consoleread+0x88>
    80003ab4:	000b851b          	sext.w	a0,s7
    80003ab8:	f96bf2e3          	bgeu	s7,s6,80003a3c <consoleread+0xb8>
    80003abc:	08f4ac23          	sw	a5,152(s1)
    80003ac0:	f7dff06f          	j	80003a3c <consoleread+0xb8>

0000000080003ac4 <consputc>:
    80003ac4:	10000793          	li	a5,256
    80003ac8:	00f50663          	beq	a0,a5,80003ad4 <consputc+0x10>
    80003acc:	00001317          	auipc	t1,0x1
    80003ad0:	9f430067          	jr	-1548(t1) # 800044c0 <uartputc_sync>
    80003ad4:	ff010113          	addi	sp,sp,-16
    80003ad8:	00113423          	sd	ra,8(sp)
    80003adc:	00813023          	sd	s0,0(sp)
    80003ae0:	01010413          	addi	s0,sp,16
    80003ae4:	00800513          	li	a0,8
    80003ae8:	00001097          	auipc	ra,0x1
    80003aec:	9d8080e7          	jalr	-1576(ra) # 800044c0 <uartputc_sync>
    80003af0:	02000513          	li	a0,32
    80003af4:	00001097          	auipc	ra,0x1
    80003af8:	9cc080e7          	jalr	-1588(ra) # 800044c0 <uartputc_sync>
    80003afc:	00013403          	ld	s0,0(sp)
    80003b00:	00813083          	ld	ra,8(sp)
    80003b04:	00800513          	li	a0,8
    80003b08:	01010113          	addi	sp,sp,16
    80003b0c:	00001317          	auipc	t1,0x1
    80003b10:	9b430067          	jr	-1612(t1) # 800044c0 <uartputc_sync>

0000000080003b14 <consoleintr>:
    80003b14:	fe010113          	addi	sp,sp,-32
    80003b18:	00813823          	sd	s0,16(sp)
    80003b1c:	00913423          	sd	s1,8(sp)
    80003b20:	01213023          	sd	s2,0(sp)
    80003b24:	00113c23          	sd	ra,24(sp)
    80003b28:	02010413          	addi	s0,sp,32
    80003b2c:	00004917          	auipc	s2,0x4
    80003b30:	0ac90913          	addi	s2,s2,172 # 80007bd8 <cons>
    80003b34:	00050493          	mv	s1,a0
    80003b38:	00090513          	mv	a0,s2
    80003b3c:	00001097          	auipc	ra,0x1
    80003b40:	e40080e7          	jalr	-448(ra) # 8000497c <acquire>
    80003b44:	02048c63          	beqz	s1,80003b7c <consoleintr+0x68>
    80003b48:	0a092783          	lw	a5,160(s2)
    80003b4c:	09892703          	lw	a4,152(s2)
    80003b50:	07f00693          	li	a3,127
    80003b54:	40e7873b          	subw	a4,a5,a4
    80003b58:	02e6e263          	bltu	a3,a4,80003b7c <consoleintr+0x68>
    80003b5c:	00d00713          	li	a4,13
    80003b60:	04e48063          	beq	s1,a4,80003ba0 <consoleintr+0x8c>
    80003b64:	07f7f713          	andi	a4,a5,127
    80003b68:	00e90733          	add	a4,s2,a4
    80003b6c:	0017879b          	addiw	a5,a5,1
    80003b70:	0af92023          	sw	a5,160(s2)
    80003b74:	00970c23          	sb	s1,24(a4)
    80003b78:	08f92e23          	sw	a5,156(s2)
    80003b7c:	01013403          	ld	s0,16(sp)
    80003b80:	01813083          	ld	ra,24(sp)
    80003b84:	00813483          	ld	s1,8(sp)
    80003b88:	00013903          	ld	s2,0(sp)
    80003b8c:	00004517          	auipc	a0,0x4
    80003b90:	04c50513          	addi	a0,a0,76 # 80007bd8 <cons>
    80003b94:	02010113          	addi	sp,sp,32
    80003b98:	00001317          	auipc	t1,0x1
    80003b9c:	eb030067          	jr	-336(t1) # 80004a48 <release>
    80003ba0:	00a00493          	li	s1,10
    80003ba4:	fc1ff06f          	j	80003b64 <consoleintr+0x50>

0000000080003ba8 <consoleinit>:
    80003ba8:	fe010113          	addi	sp,sp,-32
    80003bac:	00113c23          	sd	ra,24(sp)
    80003bb0:	00813823          	sd	s0,16(sp)
    80003bb4:	00913423          	sd	s1,8(sp)
    80003bb8:	02010413          	addi	s0,sp,32
    80003bbc:	00004497          	auipc	s1,0x4
    80003bc0:	01c48493          	addi	s1,s1,28 # 80007bd8 <cons>
    80003bc4:	00048513          	mv	a0,s1
    80003bc8:	00002597          	auipc	a1,0x2
    80003bcc:	66858593          	addi	a1,a1,1640 # 80006230 <_ZZ12printIntegeriE6digits+0x138>
    80003bd0:	00001097          	auipc	ra,0x1
    80003bd4:	d88080e7          	jalr	-632(ra) # 80004958 <initlock>
    80003bd8:	00000097          	auipc	ra,0x0
    80003bdc:	7ac080e7          	jalr	1964(ra) # 80004384 <uartinit>
    80003be0:	01813083          	ld	ra,24(sp)
    80003be4:	01013403          	ld	s0,16(sp)
    80003be8:	00000797          	auipc	a5,0x0
    80003bec:	d9c78793          	addi	a5,a5,-612 # 80003984 <consoleread>
    80003bf0:	0af4bc23          	sd	a5,184(s1)
    80003bf4:	00000797          	auipc	a5,0x0
    80003bf8:	cec78793          	addi	a5,a5,-788 # 800038e0 <consolewrite>
    80003bfc:	0cf4b023          	sd	a5,192(s1)
    80003c00:	00813483          	ld	s1,8(sp)
    80003c04:	02010113          	addi	sp,sp,32
    80003c08:	00008067          	ret

0000000080003c0c <console_read>:
    80003c0c:	ff010113          	addi	sp,sp,-16
    80003c10:	00813423          	sd	s0,8(sp)
    80003c14:	01010413          	addi	s0,sp,16
    80003c18:	00813403          	ld	s0,8(sp)
    80003c1c:	00004317          	auipc	t1,0x4
    80003c20:	07433303          	ld	t1,116(t1) # 80007c90 <devsw+0x10>
    80003c24:	01010113          	addi	sp,sp,16
    80003c28:	00030067          	jr	t1

0000000080003c2c <console_write>:
    80003c2c:	ff010113          	addi	sp,sp,-16
    80003c30:	00813423          	sd	s0,8(sp)
    80003c34:	01010413          	addi	s0,sp,16
    80003c38:	00813403          	ld	s0,8(sp)
    80003c3c:	00004317          	auipc	t1,0x4
    80003c40:	05c33303          	ld	t1,92(t1) # 80007c98 <devsw+0x18>
    80003c44:	01010113          	addi	sp,sp,16
    80003c48:	00030067          	jr	t1

0000000080003c4c <panic>:
    80003c4c:	fe010113          	addi	sp,sp,-32
    80003c50:	00113c23          	sd	ra,24(sp)
    80003c54:	00813823          	sd	s0,16(sp)
    80003c58:	00913423          	sd	s1,8(sp)
    80003c5c:	02010413          	addi	s0,sp,32
    80003c60:	00050493          	mv	s1,a0
    80003c64:	00002517          	auipc	a0,0x2
    80003c68:	5d450513          	addi	a0,a0,1492 # 80006238 <_ZZ12printIntegeriE6digits+0x140>
    80003c6c:	00004797          	auipc	a5,0x4
    80003c70:	0c07a623          	sw	zero,204(a5) # 80007d38 <pr+0x18>
    80003c74:	00000097          	auipc	ra,0x0
    80003c78:	034080e7          	jalr	52(ra) # 80003ca8 <__printf>
    80003c7c:	00048513          	mv	a0,s1
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	028080e7          	jalr	40(ra) # 80003ca8 <__printf>
    80003c88:	00002517          	auipc	a0,0x2
    80003c8c:	40850513          	addi	a0,a0,1032 # 80006090 <CONSOLE_STATUS+0x80>
    80003c90:	00000097          	auipc	ra,0x0
    80003c94:	018080e7          	jalr	24(ra) # 80003ca8 <__printf>
    80003c98:	00100793          	li	a5,1
    80003c9c:	00003717          	auipc	a4,0x3
    80003ca0:	dcf72e23          	sw	a5,-548(a4) # 80006a78 <panicked>
    80003ca4:	0000006f          	j	80003ca4 <panic+0x58>

0000000080003ca8 <__printf>:
    80003ca8:	f3010113          	addi	sp,sp,-208
    80003cac:	08813023          	sd	s0,128(sp)
    80003cb0:	07313423          	sd	s3,104(sp)
    80003cb4:	09010413          	addi	s0,sp,144
    80003cb8:	05813023          	sd	s8,64(sp)
    80003cbc:	08113423          	sd	ra,136(sp)
    80003cc0:	06913c23          	sd	s1,120(sp)
    80003cc4:	07213823          	sd	s2,112(sp)
    80003cc8:	07413023          	sd	s4,96(sp)
    80003ccc:	05513c23          	sd	s5,88(sp)
    80003cd0:	05613823          	sd	s6,80(sp)
    80003cd4:	05713423          	sd	s7,72(sp)
    80003cd8:	03913c23          	sd	s9,56(sp)
    80003cdc:	03a13823          	sd	s10,48(sp)
    80003ce0:	03b13423          	sd	s11,40(sp)
    80003ce4:	00004317          	auipc	t1,0x4
    80003ce8:	03c30313          	addi	t1,t1,60 # 80007d20 <pr>
    80003cec:	01832c03          	lw	s8,24(t1)
    80003cf0:	00b43423          	sd	a1,8(s0)
    80003cf4:	00c43823          	sd	a2,16(s0)
    80003cf8:	00d43c23          	sd	a3,24(s0)
    80003cfc:	02e43023          	sd	a4,32(s0)
    80003d00:	02f43423          	sd	a5,40(s0)
    80003d04:	03043823          	sd	a6,48(s0)
    80003d08:	03143c23          	sd	a7,56(s0)
    80003d0c:	00050993          	mv	s3,a0
    80003d10:	4a0c1663          	bnez	s8,800041bc <__printf+0x514>
    80003d14:	60098c63          	beqz	s3,8000432c <__printf+0x684>
    80003d18:	0009c503          	lbu	a0,0(s3)
    80003d1c:	00840793          	addi	a5,s0,8
    80003d20:	f6f43c23          	sd	a5,-136(s0)
    80003d24:	00000493          	li	s1,0
    80003d28:	22050063          	beqz	a0,80003f48 <__printf+0x2a0>
    80003d2c:	00002a37          	lui	s4,0x2
    80003d30:	00018ab7          	lui	s5,0x18
    80003d34:	000f4b37          	lui	s6,0xf4
    80003d38:	00989bb7          	lui	s7,0x989
    80003d3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003d40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003d44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003d48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003d4c:	00148c9b          	addiw	s9,s1,1
    80003d50:	02500793          	li	a5,37
    80003d54:	01998933          	add	s2,s3,s9
    80003d58:	38f51263          	bne	a0,a5,800040dc <__printf+0x434>
    80003d5c:	00094783          	lbu	a5,0(s2)
    80003d60:	00078c9b          	sext.w	s9,a5
    80003d64:	1e078263          	beqz	a5,80003f48 <__printf+0x2a0>
    80003d68:	0024849b          	addiw	s1,s1,2
    80003d6c:	07000713          	li	a4,112
    80003d70:	00998933          	add	s2,s3,s1
    80003d74:	38e78a63          	beq	a5,a4,80004108 <__printf+0x460>
    80003d78:	20f76863          	bltu	a4,a5,80003f88 <__printf+0x2e0>
    80003d7c:	42a78863          	beq	a5,a0,800041ac <__printf+0x504>
    80003d80:	06400713          	li	a4,100
    80003d84:	40e79663          	bne	a5,a4,80004190 <__printf+0x4e8>
    80003d88:	f7843783          	ld	a5,-136(s0)
    80003d8c:	0007a603          	lw	a2,0(a5)
    80003d90:	00878793          	addi	a5,a5,8
    80003d94:	f6f43c23          	sd	a5,-136(s0)
    80003d98:	42064a63          	bltz	a2,800041cc <__printf+0x524>
    80003d9c:	00a00713          	li	a4,10
    80003da0:	02e677bb          	remuw	a5,a2,a4
    80003da4:	00002d97          	auipc	s11,0x2
    80003da8:	4bcd8d93          	addi	s11,s11,1212 # 80006260 <digits>
    80003dac:	00900593          	li	a1,9
    80003db0:	0006051b          	sext.w	a0,a2
    80003db4:	00000c93          	li	s9,0
    80003db8:	02079793          	slli	a5,a5,0x20
    80003dbc:	0207d793          	srli	a5,a5,0x20
    80003dc0:	00fd87b3          	add	a5,s11,a5
    80003dc4:	0007c783          	lbu	a5,0(a5)
    80003dc8:	02e656bb          	divuw	a3,a2,a4
    80003dcc:	f8f40023          	sb	a5,-128(s0)
    80003dd0:	14c5d863          	bge	a1,a2,80003f20 <__printf+0x278>
    80003dd4:	06300593          	li	a1,99
    80003dd8:	00100c93          	li	s9,1
    80003ddc:	02e6f7bb          	remuw	a5,a3,a4
    80003de0:	02079793          	slli	a5,a5,0x20
    80003de4:	0207d793          	srli	a5,a5,0x20
    80003de8:	00fd87b3          	add	a5,s11,a5
    80003dec:	0007c783          	lbu	a5,0(a5)
    80003df0:	02e6d73b          	divuw	a4,a3,a4
    80003df4:	f8f400a3          	sb	a5,-127(s0)
    80003df8:	12a5f463          	bgeu	a1,a0,80003f20 <__printf+0x278>
    80003dfc:	00a00693          	li	a3,10
    80003e00:	00900593          	li	a1,9
    80003e04:	02d777bb          	remuw	a5,a4,a3
    80003e08:	02079793          	slli	a5,a5,0x20
    80003e0c:	0207d793          	srli	a5,a5,0x20
    80003e10:	00fd87b3          	add	a5,s11,a5
    80003e14:	0007c503          	lbu	a0,0(a5)
    80003e18:	02d757bb          	divuw	a5,a4,a3
    80003e1c:	f8a40123          	sb	a0,-126(s0)
    80003e20:	48e5f263          	bgeu	a1,a4,800042a4 <__printf+0x5fc>
    80003e24:	06300513          	li	a0,99
    80003e28:	02d7f5bb          	remuw	a1,a5,a3
    80003e2c:	02059593          	slli	a1,a1,0x20
    80003e30:	0205d593          	srli	a1,a1,0x20
    80003e34:	00bd85b3          	add	a1,s11,a1
    80003e38:	0005c583          	lbu	a1,0(a1)
    80003e3c:	02d7d7bb          	divuw	a5,a5,a3
    80003e40:	f8b401a3          	sb	a1,-125(s0)
    80003e44:	48e57263          	bgeu	a0,a4,800042c8 <__printf+0x620>
    80003e48:	3e700513          	li	a0,999
    80003e4c:	02d7f5bb          	remuw	a1,a5,a3
    80003e50:	02059593          	slli	a1,a1,0x20
    80003e54:	0205d593          	srli	a1,a1,0x20
    80003e58:	00bd85b3          	add	a1,s11,a1
    80003e5c:	0005c583          	lbu	a1,0(a1)
    80003e60:	02d7d7bb          	divuw	a5,a5,a3
    80003e64:	f8b40223          	sb	a1,-124(s0)
    80003e68:	46e57663          	bgeu	a0,a4,800042d4 <__printf+0x62c>
    80003e6c:	02d7f5bb          	remuw	a1,a5,a3
    80003e70:	02059593          	slli	a1,a1,0x20
    80003e74:	0205d593          	srli	a1,a1,0x20
    80003e78:	00bd85b3          	add	a1,s11,a1
    80003e7c:	0005c583          	lbu	a1,0(a1)
    80003e80:	02d7d7bb          	divuw	a5,a5,a3
    80003e84:	f8b402a3          	sb	a1,-123(s0)
    80003e88:	46ea7863          	bgeu	s4,a4,800042f8 <__printf+0x650>
    80003e8c:	02d7f5bb          	remuw	a1,a5,a3
    80003e90:	02059593          	slli	a1,a1,0x20
    80003e94:	0205d593          	srli	a1,a1,0x20
    80003e98:	00bd85b3          	add	a1,s11,a1
    80003e9c:	0005c583          	lbu	a1,0(a1)
    80003ea0:	02d7d7bb          	divuw	a5,a5,a3
    80003ea4:	f8b40323          	sb	a1,-122(s0)
    80003ea8:	3eeaf863          	bgeu	s5,a4,80004298 <__printf+0x5f0>
    80003eac:	02d7f5bb          	remuw	a1,a5,a3
    80003eb0:	02059593          	slli	a1,a1,0x20
    80003eb4:	0205d593          	srli	a1,a1,0x20
    80003eb8:	00bd85b3          	add	a1,s11,a1
    80003ebc:	0005c583          	lbu	a1,0(a1)
    80003ec0:	02d7d7bb          	divuw	a5,a5,a3
    80003ec4:	f8b403a3          	sb	a1,-121(s0)
    80003ec8:	42eb7e63          	bgeu	s6,a4,80004304 <__printf+0x65c>
    80003ecc:	02d7f5bb          	remuw	a1,a5,a3
    80003ed0:	02059593          	slli	a1,a1,0x20
    80003ed4:	0205d593          	srli	a1,a1,0x20
    80003ed8:	00bd85b3          	add	a1,s11,a1
    80003edc:	0005c583          	lbu	a1,0(a1)
    80003ee0:	02d7d7bb          	divuw	a5,a5,a3
    80003ee4:	f8b40423          	sb	a1,-120(s0)
    80003ee8:	42ebfc63          	bgeu	s7,a4,80004320 <__printf+0x678>
    80003eec:	02079793          	slli	a5,a5,0x20
    80003ef0:	0207d793          	srli	a5,a5,0x20
    80003ef4:	00fd8db3          	add	s11,s11,a5
    80003ef8:	000dc703          	lbu	a4,0(s11)
    80003efc:	00a00793          	li	a5,10
    80003f00:	00900c93          	li	s9,9
    80003f04:	f8e404a3          	sb	a4,-119(s0)
    80003f08:	00065c63          	bgez	a2,80003f20 <__printf+0x278>
    80003f0c:	f9040713          	addi	a4,s0,-112
    80003f10:	00f70733          	add	a4,a4,a5
    80003f14:	02d00693          	li	a3,45
    80003f18:	fed70823          	sb	a3,-16(a4)
    80003f1c:	00078c93          	mv	s9,a5
    80003f20:	f8040793          	addi	a5,s0,-128
    80003f24:	01978cb3          	add	s9,a5,s9
    80003f28:	f7f40d13          	addi	s10,s0,-129
    80003f2c:	000cc503          	lbu	a0,0(s9)
    80003f30:	fffc8c93          	addi	s9,s9,-1
    80003f34:	00000097          	auipc	ra,0x0
    80003f38:	b90080e7          	jalr	-1136(ra) # 80003ac4 <consputc>
    80003f3c:	ffac98e3          	bne	s9,s10,80003f2c <__printf+0x284>
    80003f40:	00094503          	lbu	a0,0(s2)
    80003f44:	e00514e3          	bnez	a0,80003d4c <__printf+0xa4>
    80003f48:	1a0c1663          	bnez	s8,800040f4 <__printf+0x44c>
    80003f4c:	08813083          	ld	ra,136(sp)
    80003f50:	08013403          	ld	s0,128(sp)
    80003f54:	07813483          	ld	s1,120(sp)
    80003f58:	07013903          	ld	s2,112(sp)
    80003f5c:	06813983          	ld	s3,104(sp)
    80003f60:	06013a03          	ld	s4,96(sp)
    80003f64:	05813a83          	ld	s5,88(sp)
    80003f68:	05013b03          	ld	s6,80(sp)
    80003f6c:	04813b83          	ld	s7,72(sp)
    80003f70:	04013c03          	ld	s8,64(sp)
    80003f74:	03813c83          	ld	s9,56(sp)
    80003f78:	03013d03          	ld	s10,48(sp)
    80003f7c:	02813d83          	ld	s11,40(sp)
    80003f80:	0d010113          	addi	sp,sp,208
    80003f84:	00008067          	ret
    80003f88:	07300713          	li	a4,115
    80003f8c:	1ce78a63          	beq	a5,a4,80004160 <__printf+0x4b8>
    80003f90:	07800713          	li	a4,120
    80003f94:	1ee79e63          	bne	a5,a4,80004190 <__printf+0x4e8>
    80003f98:	f7843783          	ld	a5,-136(s0)
    80003f9c:	0007a703          	lw	a4,0(a5)
    80003fa0:	00878793          	addi	a5,a5,8
    80003fa4:	f6f43c23          	sd	a5,-136(s0)
    80003fa8:	28074263          	bltz	a4,8000422c <__printf+0x584>
    80003fac:	00002d97          	auipc	s11,0x2
    80003fb0:	2b4d8d93          	addi	s11,s11,692 # 80006260 <digits>
    80003fb4:	00f77793          	andi	a5,a4,15
    80003fb8:	00fd87b3          	add	a5,s11,a5
    80003fbc:	0007c683          	lbu	a3,0(a5)
    80003fc0:	00f00613          	li	a2,15
    80003fc4:	0007079b          	sext.w	a5,a4
    80003fc8:	f8d40023          	sb	a3,-128(s0)
    80003fcc:	0047559b          	srliw	a1,a4,0x4
    80003fd0:	0047569b          	srliw	a3,a4,0x4
    80003fd4:	00000c93          	li	s9,0
    80003fd8:	0ee65063          	bge	a2,a4,800040b8 <__printf+0x410>
    80003fdc:	00f6f693          	andi	a3,a3,15
    80003fe0:	00dd86b3          	add	a3,s11,a3
    80003fe4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003fe8:	0087d79b          	srliw	a5,a5,0x8
    80003fec:	00100c93          	li	s9,1
    80003ff0:	f8d400a3          	sb	a3,-127(s0)
    80003ff4:	0cb67263          	bgeu	a2,a1,800040b8 <__printf+0x410>
    80003ff8:	00f7f693          	andi	a3,a5,15
    80003ffc:	00dd86b3          	add	a3,s11,a3
    80004000:	0006c583          	lbu	a1,0(a3)
    80004004:	00f00613          	li	a2,15
    80004008:	0047d69b          	srliw	a3,a5,0x4
    8000400c:	f8b40123          	sb	a1,-126(s0)
    80004010:	0047d593          	srli	a1,a5,0x4
    80004014:	28f67e63          	bgeu	a2,a5,800042b0 <__printf+0x608>
    80004018:	00f6f693          	andi	a3,a3,15
    8000401c:	00dd86b3          	add	a3,s11,a3
    80004020:	0006c503          	lbu	a0,0(a3)
    80004024:	0087d813          	srli	a6,a5,0x8
    80004028:	0087d69b          	srliw	a3,a5,0x8
    8000402c:	f8a401a3          	sb	a0,-125(s0)
    80004030:	28b67663          	bgeu	a2,a1,800042bc <__printf+0x614>
    80004034:	00f6f693          	andi	a3,a3,15
    80004038:	00dd86b3          	add	a3,s11,a3
    8000403c:	0006c583          	lbu	a1,0(a3)
    80004040:	00c7d513          	srli	a0,a5,0xc
    80004044:	00c7d69b          	srliw	a3,a5,0xc
    80004048:	f8b40223          	sb	a1,-124(s0)
    8000404c:	29067a63          	bgeu	a2,a6,800042e0 <__printf+0x638>
    80004050:	00f6f693          	andi	a3,a3,15
    80004054:	00dd86b3          	add	a3,s11,a3
    80004058:	0006c583          	lbu	a1,0(a3)
    8000405c:	0107d813          	srli	a6,a5,0x10
    80004060:	0107d69b          	srliw	a3,a5,0x10
    80004064:	f8b402a3          	sb	a1,-123(s0)
    80004068:	28a67263          	bgeu	a2,a0,800042ec <__printf+0x644>
    8000406c:	00f6f693          	andi	a3,a3,15
    80004070:	00dd86b3          	add	a3,s11,a3
    80004074:	0006c683          	lbu	a3,0(a3)
    80004078:	0147d79b          	srliw	a5,a5,0x14
    8000407c:	f8d40323          	sb	a3,-122(s0)
    80004080:	21067663          	bgeu	a2,a6,8000428c <__printf+0x5e4>
    80004084:	02079793          	slli	a5,a5,0x20
    80004088:	0207d793          	srli	a5,a5,0x20
    8000408c:	00fd8db3          	add	s11,s11,a5
    80004090:	000dc683          	lbu	a3,0(s11)
    80004094:	00800793          	li	a5,8
    80004098:	00700c93          	li	s9,7
    8000409c:	f8d403a3          	sb	a3,-121(s0)
    800040a0:	00075c63          	bgez	a4,800040b8 <__printf+0x410>
    800040a4:	f9040713          	addi	a4,s0,-112
    800040a8:	00f70733          	add	a4,a4,a5
    800040ac:	02d00693          	li	a3,45
    800040b0:	fed70823          	sb	a3,-16(a4)
    800040b4:	00078c93          	mv	s9,a5
    800040b8:	f8040793          	addi	a5,s0,-128
    800040bc:	01978cb3          	add	s9,a5,s9
    800040c0:	f7f40d13          	addi	s10,s0,-129
    800040c4:	000cc503          	lbu	a0,0(s9)
    800040c8:	fffc8c93          	addi	s9,s9,-1
    800040cc:	00000097          	auipc	ra,0x0
    800040d0:	9f8080e7          	jalr	-1544(ra) # 80003ac4 <consputc>
    800040d4:	ff9d18e3          	bne	s10,s9,800040c4 <__printf+0x41c>
    800040d8:	0100006f          	j	800040e8 <__printf+0x440>
    800040dc:	00000097          	auipc	ra,0x0
    800040e0:	9e8080e7          	jalr	-1560(ra) # 80003ac4 <consputc>
    800040e4:	000c8493          	mv	s1,s9
    800040e8:	00094503          	lbu	a0,0(s2)
    800040ec:	c60510e3          	bnez	a0,80003d4c <__printf+0xa4>
    800040f0:	e40c0ee3          	beqz	s8,80003f4c <__printf+0x2a4>
    800040f4:	00004517          	auipc	a0,0x4
    800040f8:	c2c50513          	addi	a0,a0,-980 # 80007d20 <pr>
    800040fc:	00001097          	auipc	ra,0x1
    80004100:	94c080e7          	jalr	-1716(ra) # 80004a48 <release>
    80004104:	e49ff06f          	j	80003f4c <__printf+0x2a4>
    80004108:	f7843783          	ld	a5,-136(s0)
    8000410c:	03000513          	li	a0,48
    80004110:	01000d13          	li	s10,16
    80004114:	00878713          	addi	a4,a5,8
    80004118:	0007bc83          	ld	s9,0(a5)
    8000411c:	f6e43c23          	sd	a4,-136(s0)
    80004120:	00000097          	auipc	ra,0x0
    80004124:	9a4080e7          	jalr	-1628(ra) # 80003ac4 <consputc>
    80004128:	07800513          	li	a0,120
    8000412c:	00000097          	auipc	ra,0x0
    80004130:	998080e7          	jalr	-1640(ra) # 80003ac4 <consputc>
    80004134:	00002d97          	auipc	s11,0x2
    80004138:	12cd8d93          	addi	s11,s11,300 # 80006260 <digits>
    8000413c:	03ccd793          	srli	a5,s9,0x3c
    80004140:	00fd87b3          	add	a5,s11,a5
    80004144:	0007c503          	lbu	a0,0(a5)
    80004148:	fffd0d1b          	addiw	s10,s10,-1
    8000414c:	004c9c93          	slli	s9,s9,0x4
    80004150:	00000097          	auipc	ra,0x0
    80004154:	974080e7          	jalr	-1676(ra) # 80003ac4 <consputc>
    80004158:	fe0d12e3          	bnez	s10,8000413c <__printf+0x494>
    8000415c:	f8dff06f          	j	800040e8 <__printf+0x440>
    80004160:	f7843783          	ld	a5,-136(s0)
    80004164:	0007bc83          	ld	s9,0(a5)
    80004168:	00878793          	addi	a5,a5,8
    8000416c:	f6f43c23          	sd	a5,-136(s0)
    80004170:	000c9a63          	bnez	s9,80004184 <__printf+0x4dc>
    80004174:	1080006f          	j	8000427c <__printf+0x5d4>
    80004178:	001c8c93          	addi	s9,s9,1
    8000417c:	00000097          	auipc	ra,0x0
    80004180:	948080e7          	jalr	-1720(ra) # 80003ac4 <consputc>
    80004184:	000cc503          	lbu	a0,0(s9)
    80004188:	fe0518e3          	bnez	a0,80004178 <__printf+0x4d0>
    8000418c:	f5dff06f          	j	800040e8 <__printf+0x440>
    80004190:	02500513          	li	a0,37
    80004194:	00000097          	auipc	ra,0x0
    80004198:	930080e7          	jalr	-1744(ra) # 80003ac4 <consputc>
    8000419c:	000c8513          	mv	a0,s9
    800041a0:	00000097          	auipc	ra,0x0
    800041a4:	924080e7          	jalr	-1756(ra) # 80003ac4 <consputc>
    800041a8:	f41ff06f          	j	800040e8 <__printf+0x440>
    800041ac:	02500513          	li	a0,37
    800041b0:	00000097          	auipc	ra,0x0
    800041b4:	914080e7          	jalr	-1772(ra) # 80003ac4 <consputc>
    800041b8:	f31ff06f          	j	800040e8 <__printf+0x440>
    800041bc:	00030513          	mv	a0,t1
    800041c0:	00000097          	auipc	ra,0x0
    800041c4:	7bc080e7          	jalr	1980(ra) # 8000497c <acquire>
    800041c8:	b4dff06f          	j	80003d14 <__printf+0x6c>
    800041cc:	40c0053b          	negw	a0,a2
    800041d0:	00a00713          	li	a4,10
    800041d4:	02e576bb          	remuw	a3,a0,a4
    800041d8:	00002d97          	auipc	s11,0x2
    800041dc:	088d8d93          	addi	s11,s11,136 # 80006260 <digits>
    800041e0:	ff700593          	li	a1,-9
    800041e4:	02069693          	slli	a3,a3,0x20
    800041e8:	0206d693          	srli	a3,a3,0x20
    800041ec:	00dd86b3          	add	a3,s11,a3
    800041f0:	0006c683          	lbu	a3,0(a3)
    800041f4:	02e557bb          	divuw	a5,a0,a4
    800041f8:	f8d40023          	sb	a3,-128(s0)
    800041fc:	10b65e63          	bge	a2,a1,80004318 <__printf+0x670>
    80004200:	06300593          	li	a1,99
    80004204:	02e7f6bb          	remuw	a3,a5,a4
    80004208:	02069693          	slli	a3,a3,0x20
    8000420c:	0206d693          	srli	a3,a3,0x20
    80004210:	00dd86b3          	add	a3,s11,a3
    80004214:	0006c683          	lbu	a3,0(a3)
    80004218:	02e7d73b          	divuw	a4,a5,a4
    8000421c:	00200793          	li	a5,2
    80004220:	f8d400a3          	sb	a3,-127(s0)
    80004224:	bca5ece3          	bltu	a1,a0,80003dfc <__printf+0x154>
    80004228:	ce5ff06f          	j	80003f0c <__printf+0x264>
    8000422c:	40e007bb          	negw	a5,a4
    80004230:	00002d97          	auipc	s11,0x2
    80004234:	030d8d93          	addi	s11,s11,48 # 80006260 <digits>
    80004238:	00f7f693          	andi	a3,a5,15
    8000423c:	00dd86b3          	add	a3,s11,a3
    80004240:	0006c583          	lbu	a1,0(a3)
    80004244:	ff100613          	li	a2,-15
    80004248:	0047d69b          	srliw	a3,a5,0x4
    8000424c:	f8b40023          	sb	a1,-128(s0)
    80004250:	0047d59b          	srliw	a1,a5,0x4
    80004254:	0ac75e63          	bge	a4,a2,80004310 <__printf+0x668>
    80004258:	00f6f693          	andi	a3,a3,15
    8000425c:	00dd86b3          	add	a3,s11,a3
    80004260:	0006c603          	lbu	a2,0(a3)
    80004264:	00f00693          	li	a3,15
    80004268:	0087d79b          	srliw	a5,a5,0x8
    8000426c:	f8c400a3          	sb	a2,-127(s0)
    80004270:	d8b6e4e3          	bltu	a3,a1,80003ff8 <__printf+0x350>
    80004274:	00200793          	li	a5,2
    80004278:	e2dff06f          	j	800040a4 <__printf+0x3fc>
    8000427c:	00002c97          	auipc	s9,0x2
    80004280:	fc4c8c93          	addi	s9,s9,-60 # 80006240 <_ZZ12printIntegeriE6digits+0x148>
    80004284:	02800513          	li	a0,40
    80004288:	ef1ff06f          	j	80004178 <__printf+0x4d0>
    8000428c:	00700793          	li	a5,7
    80004290:	00600c93          	li	s9,6
    80004294:	e0dff06f          	j	800040a0 <__printf+0x3f8>
    80004298:	00700793          	li	a5,7
    8000429c:	00600c93          	li	s9,6
    800042a0:	c69ff06f          	j	80003f08 <__printf+0x260>
    800042a4:	00300793          	li	a5,3
    800042a8:	00200c93          	li	s9,2
    800042ac:	c5dff06f          	j	80003f08 <__printf+0x260>
    800042b0:	00300793          	li	a5,3
    800042b4:	00200c93          	li	s9,2
    800042b8:	de9ff06f          	j	800040a0 <__printf+0x3f8>
    800042bc:	00400793          	li	a5,4
    800042c0:	00300c93          	li	s9,3
    800042c4:	dddff06f          	j	800040a0 <__printf+0x3f8>
    800042c8:	00400793          	li	a5,4
    800042cc:	00300c93          	li	s9,3
    800042d0:	c39ff06f          	j	80003f08 <__printf+0x260>
    800042d4:	00500793          	li	a5,5
    800042d8:	00400c93          	li	s9,4
    800042dc:	c2dff06f          	j	80003f08 <__printf+0x260>
    800042e0:	00500793          	li	a5,5
    800042e4:	00400c93          	li	s9,4
    800042e8:	db9ff06f          	j	800040a0 <__printf+0x3f8>
    800042ec:	00600793          	li	a5,6
    800042f0:	00500c93          	li	s9,5
    800042f4:	dadff06f          	j	800040a0 <__printf+0x3f8>
    800042f8:	00600793          	li	a5,6
    800042fc:	00500c93          	li	s9,5
    80004300:	c09ff06f          	j	80003f08 <__printf+0x260>
    80004304:	00800793          	li	a5,8
    80004308:	00700c93          	li	s9,7
    8000430c:	bfdff06f          	j	80003f08 <__printf+0x260>
    80004310:	00100793          	li	a5,1
    80004314:	d91ff06f          	j	800040a4 <__printf+0x3fc>
    80004318:	00100793          	li	a5,1
    8000431c:	bf1ff06f          	j	80003f0c <__printf+0x264>
    80004320:	00900793          	li	a5,9
    80004324:	00800c93          	li	s9,8
    80004328:	be1ff06f          	j	80003f08 <__printf+0x260>
    8000432c:	00002517          	auipc	a0,0x2
    80004330:	f1c50513          	addi	a0,a0,-228 # 80006248 <_ZZ12printIntegeriE6digits+0x150>
    80004334:	00000097          	auipc	ra,0x0
    80004338:	918080e7          	jalr	-1768(ra) # 80003c4c <panic>

000000008000433c <printfinit>:
    8000433c:	fe010113          	addi	sp,sp,-32
    80004340:	00813823          	sd	s0,16(sp)
    80004344:	00913423          	sd	s1,8(sp)
    80004348:	00113c23          	sd	ra,24(sp)
    8000434c:	02010413          	addi	s0,sp,32
    80004350:	00004497          	auipc	s1,0x4
    80004354:	9d048493          	addi	s1,s1,-1584 # 80007d20 <pr>
    80004358:	00048513          	mv	a0,s1
    8000435c:	00002597          	auipc	a1,0x2
    80004360:	efc58593          	addi	a1,a1,-260 # 80006258 <_ZZ12printIntegeriE6digits+0x160>
    80004364:	00000097          	auipc	ra,0x0
    80004368:	5f4080e7          	jalr	1524(ra) # 80004958 <initlock>
    8000436c:	01813083          	ld	ra,24(sp)
    80004370:	01013403          	ld	s0,16(sp)
    80004374:	0004ac23          	sw	zero,24(s1)
    80004378:	00813483          	ld	s1,8(sp)
    8000437c:	02010113          	addi	sp,sp,32
    80004380:	00008067          	ret

0000000080004384 <uartinit>:
    80004384:	ff010113          	addi	sp,sp,-16
    80004388:	00813423          	sd	s0,8(sp)
    8000438c:	01010413          	addi	s0,sp,16
    80004390:	100007b7          	lui	a5,0x10000
    80004394:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004398:	f8000713          	li	a4,-128
    8000439c:	00e781a3          	sb	a4,3(a5)
    800043a0:	00300713          	li	a4,3
    800043a4:	00e78023          	sb	a4,0(a5)
    800043a8:	000780a3          	sb	zero,1(a5)
    800043ac:	00e781a3          	sb	a4,3(a5)
    800043b0:	00700693          	li	a3,7
    800043b4:	00d78123          	sb	a3,2(a5)
    800043b8:	00e780a3          	sb	a4,1(a5)
    800043bc:	00813403          	ld	s0,8(sp)
    800043c0:	01010113          	addi	sp,sp,16
    800043c4:	00008067          	ret

00000000800043c8 <uartputc>:
    800043c8:	00002797          	auipc	a5,0x2
    800043cc:	6b07a783          	lw	a5,1712(a5) # 80006a78 <panicked>
    800043d0:	00078463          	beqz	a5,800043d8 <uartputc+0x10>
    800043d4:	0000006f          	j	800043d4 <uartputc+0xc>
    800043d8:	fd010113          	addi	sp,sp,-48
    800043dc:	02813023          	sd	s0,32(sp)
    800043e0:	00913c23          	sd	s1,24(sp)
    800043e4:	01213823          	sd	s2,16(sp)
    800043e8:	01313423          	sd	s3,8(sp)
    800043ec:	02113423          	sd	ra,40(sp)
    800043f0:	03010413          	addi	s0,sp,48
    800043f4:	00002917          	auipc	s2,0x2
    800043f8:	68c90913          	addi	s2,s2,1676 # 80006a80 <uart_tx_r>
    800043fc:	00093783          	ld	a5,0(s2)
    80004400:	00002497          	auipc	s1,0x2
    80004404:	68848493          	addi	s1,s1,1672 # 80006a88 <uart_tx_w>
    80004408:	0004b703          	ld	a4,0(s1)
    8000440c:	02078693          	addi	a3,a5,32
    80004410:	00050993          	mv	s3,a0
    80004414:	02e69c63          	bne	a3,a4,8000444c <uartputc+0x84>
    80004418:	00001097          	auipc	ra,0x1
    8000441c:	834080e7          	jalr	-1996(ra) # 80004c4c <push_on>
    80004420:	00093783          	ld	a5,0(s2)
    80004424:	0004b703          	ld	a4,0(s1)
    80004428:	02078793          	addi	a5,a5,32
    8000442c:	00e79463          	bne	a5,a4,80004434 <uartputc+0x6c>
    80004430:	0000006f          	j	80004430 <uartputc+0x68>
    80004434:	00001097          	auipc	ra,0x1
    80004438:	88c080e7          	jalr	-1908(ra) # 80004cc0 <pop_on>
    8000443c:	00093783          	ld	a5,0(s2)
    80004440:	0004b703          	ld	a4,0(s1)
    80004444:	02078693          	addi	a3,a5,32
    80004448:	fce688e3          	beq	a3,a4,80004418 <uartputc+0x50>
    8000444c:	01f77693          	andi	a3,a4,31
    80004450:	00004597          	auipc	a1,0x4
    80004454:	8f058593          	addi	a1,a1,-1808 # 80007d40 <uart_tx_buf>
    80004458:	00d586b3          	add	a3,a1,a3
    8000445c:	00170713          	addi	a4,a4,1
    80004460:	01368023          	sb	s3,0(a3)
    80004464:	00e4b023          	sd	a4,0(s1)
    80004468:	10000637          	lui	a2,0x10000
    8000446c:	02f71063          	bne	a4,a5,8000448c <uartputc+0xc4>
    80004470:	0340006f          	j	800044a4 <uartputc+0xdc>
    80004474:	00074703          	lbu	a4,0(a4)
    80004478:	00f93023          	sd	a5,0(s2)
    8000447c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004480:	00093783          	ld	a5,0(s2)
    80004484:	0004b703          	ld	a4,0(s1)
    80004488:	00f70e63          	beq	a4,a5,800044a4 <uartputc+0xdc>
    8000448c:	00564683          	lbu	a3,5(a2)
    80004490:	01f7f713          	andi	a4,a5,31
    80004494:	00e58733          	add	a4,a1,a4
    80004498:	0206f693          	andi	a3,a3,32
    8000449c:	00178793          	addi	a5,a5,1
    800044a0:	fc069ae3          	bnez	a3,80004474 <uartputc+0xac>
    800044a4:	02813083          	ld	ra,40(sp)
    800044a8:	02013403          	ld	s0,32(sp)
    800044ac:	01813483          	ld	s1,24(sp)
    800044b0:	01013903          	ld	s2,16(sp)
    800044b4:	00813983          	ld	s3,8(sp)
    800044b8:	03010113          	addi	sp,sp,48
    800044bc:	00008067          	ret

00000000800044c0 <uartputc_sync>:
    800044c0:	ff010113          	addi	sp,sp,-16
    800044c4:	00813423          	sd	s0,8(sp)
    800044c8:	01010413          	addi	s0,sp,16
    800044cc:	00002717          	auipc	a4,0x2
    800044d0:	5ac72703          	lw	a4,1452(a4) # 80006a78 <panicked>
    800044d4:	02071663          	bnez	a4,80004500 <uartputc_sync+0x40>
    800044d8:	00050793          	mv	a5,a0
    800044dc:	100006b7          	lui	a3,0x10000
    800044e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800044e4:	02077713          	andi	a4,a4,32
    800044e8:	fe070ce3          	beqz	a4,800044e0 <uartputc_sync+0x20>
    800044ec:	0ff7f793          	andi	a5,a5,255
    800044f0:	00f68023          	sb	a5,0(a3)
    800044f4:	00813403          	ld	s0,8(sp)
    800044f8:	01010113          	addi	sp,sp,16
    800044fc:	00008067          	ret
    80004500:	0000006f          	j	80004500 <uartputc_sync+0x40>

0000000080004504 <uartstart>:
    80004504:	ff010113          	addi	sp,sp,-16
    80004508:	00813423          	sd	s0,8(sp)
    8000450c:	01010413          	addi	s0,sp,16
    80004510:	00002617          	auipc	a2,0x2
    80004514:	57060613          	addi	a2,a2,1392 # 80006a80 <uart_tx_r>
    80004518:	00002517          	auipc	a0,0x2
    8000451c:	57050513          	addi	a0,a0,1392 # 80006a88 <uart_tx_w>
    80004520:	00063783          	ld	a5,0(a2)
    80004524:	00053703          	ld	a4,0(a0)
    80004528:	04f70263          	beq	a4,a5,8000456c <uartstart+0x68>
    8000452c:	100005b7          	lui	a1,0x10000
    80004530:	00004817          	auipc	a6,0x4
    80004534:	81080813          	addi	a6,a6,-2032 # 80007d40 <uart_tx_buf>
    80004538:	01c0006f          	j	80004554 <uartstart+0x50>
    8000453c:	0006c703          	lbu	a4,0(a3)
    80004540:	00f63023          	sd	a5,0(a2)
    80004544:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004548:	00063783          	ld	a5,0(a2)
    8000454c:	00053703          	ld	a4,0(a0)
    80004550:	00f70e63          	beq	a4,a5,8000456c <uartstart+0x68>
    80004554:	01f7f713          	andi	a4,a5,31
    80004558:	00e806b3          	add	a3,a6,a4
    8000455c:	0055c703          	lbu	a4,5(a1)
    80004560:	00178793          	addi	a5,a5,1
    80004564:	02077713          	andi	a4,a4,32
    80004568:	fc071ae3          	bnez	a4,8000453c <uartstart+0x38>
    8000456c:	00813403          	ld	s0,8(sp)
    80004570:	01010113          	addi	sp,sp,16
    80004574:	00008067          	ret

0000000080004578 <uartgetc>:
    80004578:	ff010113          	addi	sp,sp,-16
    8000457c:	00813423          	sd	s0,8(sp)
    80004580:	01010413          	addi	s0,sp,16
    80004584:	10000737          	lui	a4,0x10000
    80004588:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000458c:	0017f793          	andi	a5,a5,1
    80004590:	00078c63          	beqz	a5,800045a8 <uartgetc+0x30>
    80004594:	00074503          	lbu	a0,0(a4)
    80004598:	0ff57513          	andi	a0,a0,255
    8000459c:	00813403          	ld	s0,8(sp)
    800045a0:	01010113          	addi	sp,sp,16
    800045a4:	00008067          	ret
    800045a8:	fff00513          	li	a0,-1
    800045ac:	ff1ff06f          	j	8000459c <uartgetc+0x24>

00000000800045b0 <uartintr>:
    800045b0:	100007b7          	lui	a5,0x10000
    800045b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800045b8:	0017f793          	andi	a5,a5,1
    800045bc:	0a078463          	beqz	a5,80004664 <uartintr+0xb4>
    800045c0:	fe010113          	addi	sp,sp,-32
    800045c4:	00813823          	sd	s0,16(sp)
    800045c8:	00913423          	sd	s1,8(sp)
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	02010413          	addi	s0,sp,32
    800045d4:	100004b7          	lui	s1,0x10000
    800045d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800045dc:	0ff57513          	andi	a0,a0,255
    800045e0:	fffff097          	auipc	ra,0xfffff
    800045e4:	534080e7          	jalr	1332(ra) # 80003b14 <consoleintr>
    800045e8:	0054c783          	lbu	a5,5(s1)
    800045ec:	0017f793          	andi	a5,a5,1
    800045f0:	fe0794e3          	bnez	a5,800045d8 <uartintr+0x28>
    800045f4:	00002617          	auipc	a2,0x2
    800045f8:	48c60613          	addi	a2,a2,1164 # 80006a80 <uart_tx_r>
    800045fc:	00002517          	auipc	a0,0x2
    80004600:	48c50513          	addi	a0,a0,1164 # 80006a88 <uart_tx_w>
    80004604:	00063783          	ld	a5,0(a2)
    80004608:	00053703          	ld	a4,0(a0)
    8000460c:	04f70263          	beq	a4,a5,80004650 <uartintr+0xa0>
    80004610:	100005b7          	lui	a1,0x10000
    80004614:	00003817          	auipc	a6,0x3
    80004618:	72c80813          	addi	a6,a6,1836 # 80007d40 <uart_tx_buf>
    8000461c:	01c0006f          	j	80004638 <uartintr+0x88>
    80004620:	0006c703          	lbu	a4,0(a3)
    80004624:	00f63023          	sd	a5,0(a2)
    80004628:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000462c:	00063783          	ld	a5,0(a2)
    80004630:	00053703          	ld	a4,0(a0)
    80004634:	00f70e63          	beq	a4,a5,80004650 <uartintr+0xa0>
    80004638:	01f7f713          	andi	a4,a5,31
    8000463c:	00e806b3          	add	a3,a6,a4
    80004640:	0055c703          	lbu	a4,5(a1)
    80004644:	00178793          	addi	a5,a5,1
    80004648:	02077713          	andi	a4,a4,32
    8000464c:	fc071ae3          	bnez	a4,80004620 <uartintr+0x70>
    80004650:	01813083          	ld	ra,24(sp)
    80004654:	01013403          	ld	s0,16(sp)
    80004658:	00813483          	ld	s1,8(sp)
    8000465c:	02010113          	addi	sp,sp,32
    80004660:	00008067          	ret
    80004664:	00002617          	auipc	a2,0x2
    80004668:	41c60613          	addi	a2,a2,1052 # 80006a80 <uart_tx_r>
    8000466c:	00002517          	auipc	a0,0x2
    80004670:	41c50513          	addi	a0,a0,1052 # 80006a88 <uart_tx_w>
    80004674:	00063783          	ld	a5,0(a2)
    80004678:	00053703          	ld	a4,0(a0)
    8000467c:	04f70263          	beq	a4,a5,800046c0 <uartintr+0x110>
    80004680:	100005b7          	lui	a1,0x10000
    80004684:	00003817          	auipc	a6,0x3
    80004688:	6bc80813          	addi	a6,a6,1724 # 80007d40 <uart_tx_buf>
    8000468c:	01c0006f          	j	800046a8 <uartintr+0xf8>
    80004690:	0006c703          	lbu	a4,0(a3)
    80004694:	00f63023          	sd	a5,0(a2)
    80004698:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000469c:	00063783          	ld	a5,0(a2)
    800046a0:	00053703          	ld	a4,0(a0)
    800046a4:	02f70063          	beq	a4,a5,800046c4 <uartintr+0x114>
    800046a8:	01f7f713          	andi	a4,a5,31
    800046ac:	00e806b3          	add	a3,a6,a4
    800046b0:	0055c703          	lbu	a4,5(a1)
    800046b4:	00178793          	addi	a5,a5,1
    800046b8:	02077713          	andi	a4,a4,32
    800046bc:	fc071ae3          	bnez	a4,80004690 <uartintr+0xe0>
    800046c0:	00008067          	ret
    800046c4:	00008067          	ret

00000000800046c8 <kinit>:
    800046c8:	fc010113          	addi	sp,sp,-64
    800046cc:	02913423          	sd	s1,40(sp)
    800046d0:	fffff7b7          	lui	a5,0xfffff
    800046d4:	00004497          	auipc	s1,0x4
    800046d8:	68b48493          	addi	s1,s1,1675 # 80008d5f <end+0xfff>
    800046dc:	02813823          	sd	s0,48(sp)
    800046e0:	01313c23          	sd	s3,24(sp)
    800046e4:	00f4f4b3          	and	s1,s1,a5
    800046e8:	02113c23          	sd	ra,56(sp)
    800046ec:	03213023          	sd	s2,32(sp)
    800046f0:	01413823          	sd	s4,16(sp)
    800046f4:	01513423          	sd	s5,8(sp)
    800046f8:	04010413          	addi	s0,sp,64
    800046fc:	000017b7          	lui	a5,0x1
    80004700:	01100993          	li	s3,17
    80004704:	00f487b3          	add	a5,s1,a5
    80004708:	01b99993          	slli	s3,s3,0x1b
    8000470c:	06f9e063          	bltu	s3,a5,8000476c <kinit+0xa4>
    80004710:	00003a97          	auipc	s5,0x3
    80004714:	650a8a93          	addi	s5,s5,1616 # 80007d60 <end>
    80004718:	0754ec63          	bltu	s1,s5,80004790 <kinit+0xc8>
    8000471c:	0734fa63          	bgeu	s1,s3,80004790 <kinit+0xc8>
    80004720:	00088a37          	lui	s4,0x88
    80004724:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004728:	00002917          	auipc	s2,0x2
    8000472c:	36890913          	addi	s2,s2,872 # 80006a90 <kmem>
    80004730:	00ca1a13          	slli	s4,s4,0xc
    80004734:	0140006f          	j	80004748 <kinit+0x80>
    80004738:	000017b7          	lui	a5,0x1
    8000473c:	00f484b3          	add	s1,s1,a5
    80004740:	0554e863          	bltu	s1,s5,80004790 <kinit+0xc8>
    80004744:	0534f663          	bgeu	s1,s3,80004790 <kinit+0xc8>
    80004748:	00001637          	lui	a2,0x1
    8000474c:	00100593          	li	a1,1
    80004750:	00048513          	mv	a0,s1
    80004754:	00000097          	auipc	ra,0x0
    80004758:	5e4080e7          	jalr	1508(ra) # 80004d38 <__memset>
    8000475c:	00093783          	ld	a5,0(s2)
    80004760:	00f4b023          	sd	a5,0(s1)
    80004764:	00993023          	sd	s1,0(s2)
    80004768:	fd4498e3          	bne	s1,s4,80004738 <kinit+0x70>
    8000476c:	03813083          	ld	ra,56(sp)
    80004770:	03013403          	ld	s0,48(sp)
    80004774:	02813483          	ld	s1,40(sp)
    80004778:	02013903          	ld	s2,32(sp)
    8000477c:	01813983          	ld	s3,24(sp)
    80004780:	01013a03          	ld	s4,16(sp)
    80004784:	00813a83          	ld	s5,8(sp)
    80004788:	04010113          	addi	sp,sp,64
    8000478c:	00008067          	ret
    80004790:	00002517          	auipc	a0,0x2
    80004794:	ae850513          	addi	a0,a0,-1304 # 80006278 <digits+0x18>
    80004798:	fffff097          	auipc	ra,0xfffff
    8000479c:	4b4080e7          	jalr	1204(ra) # 80003c4c <panic>

00000000800047a0 <freerange>:
    800047a0:	fc010113          	addi	sp,sp,-64
    800047a4:	000017b7          	lui	a5,0x1
    800047a8:	02913423          	sd	s1,40(sp)
    800047ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800047b0:	009504b3          	add	s1,a0,s1
    800047b4:	fffff537          	lui	a0,0xfffff
    800047b8:	02813823          	sd	s0,48(sp)
    800047bc:	02113c23          	sd	ra,56(sp)
    800047c0:	03213023          	sd	s2,32(sp)
    800047c4:	01313c23          	sd	s3,24(sp)
    800047c8:	01413823          	sd	s4,16(sp)
    800047cc:	01513423          	sd	s5,8(sp)
    800047d0:	01613023          	sd	s6,0(sp)
    800047d4:	04010413          	addi	s0,sp,64
    800047d8:	00a4f4b3          	and	s1,s1,a0
    800047dc:	00f487b3          	add	a5,s1,a5
    800047e0:	06f5e463          	bltu	a1,a5,80004848 <freerange+0xa8>
    800047e4:	00003a97          	auipc	s5,0x3
    800047e8:	57ca8a93          	addi	s5,s5,1404 # 80007d60 <end>
    800047ec:	0954e263          	bltu	s1,s5,80004870 <freerange+0xd0>
    800047f0:	01100993          	li	s3,17
    800047f4:	01b99993          	slli	s3,s3,0x1b
    800047f8:	0734fc63          	bgeu	s1,s3,80004870 <freerange+0xd0>
    800047fc:	00058a13          	mv	s4,a1
    80004800:	00002917          	auipc	s2,0x2
    80004804:	29090913          	addi	s2,s2,656 # 80006a90 <kmem>
    80004808:	00002b37          	lui	s6,0x2
    8000480c:	0140006f          	j	80004820 <freerange+0x80>
    80004810:	000017b7          	lui	a5,0x1
    80004814:	00f484b3          	add	s1,s1,a5
    80004818:	0554ec63          	bltu	s1,s5,80004870 <freerange+0xd0>
    8000481c:	0534fa63          	bgeu	s1,s3,80004870 <freerange+0xd0>
    80004820:	00001637          	lui	a2,0x1
    80004824:	00100593          	li	a1,1
    80004828:	00048513          	mv	a0,s1
    8000482c:	00000097          	auipc	ra,0x0
    80004830:	50c080e7          	jalr	1292(ra) # 80004d38 <__memset>
    80004834:	00093703          	ld	a4,0(s2)
    80004838:	016487b3          	add	a5,s1,s6
    8000483c:	00e4b023          	sd	a4,0(s1)
    80004840:	00993023          	sd	s1,0(s2)
    80004844:	fcfa76e3          	bgeu	s4,a5,80004810 <freerange+0x70>
    80004848:	03813083          	ld	ra,56(sp)
    8000484c:	03013403          	ld	s0,48(sp)
    80004850:	02813483          	ld	s1,40(sp)
    80004854:	02013903          	ld	s2,32(sp)
    80004858:	01813983          	ld	s3,24(sp)
    8000485c:	01013a03          	ld	s4,16(sp)
    80004860:	00813a83          	ld	s5,8(sp)
    80004864:	00013b03          	ld	s6,0(sp)
    80004868:	04010113          	addi	sp,sp,64
    8000486c:	00008067          	ret
    80004870:	00002517          	auipc	a0,0x2
    80004874:	a0850513          	addi	a0,a0,-1528 # 80006278 <digits+0x18>
    80004878:	fffff097          	auipc	ra,0xfffff
    8000487c:	3d4080e7          	jalr	980(ra) # 80003c4c <panic>

0000000080004880 <kfree>:
    80004880:	fe010113          	addi	sp,sp,-32
    80004884:	00813823          	sd	s0,16(sp)
    80004888:	00113c23          	sd	ra,24(sp)
    8000488c:	00913423          	sd	s1,8(sp)
    80004890:	02010413          	addi	s0,sp,32
    80004894:	03451793          	slli	a5,a0,0x34
    80004898:	04079c63          	bnez	a5,800048f0 <kfree+0x70>
    8000489c:	00003797          	auipc	a5,0x3
    800048a0:	4c478793          	addi	a5,a5,1220 # 80007d60 <end>
    800048a4:	00050493          	mv	s1,a0
    800048a8:	04f56463          	bltu	a0,a5,800048f0 <kfree+0x70>
    800048ac:	01100793          	li	a5,17
    800048b0:	01b79793          	slli	a5,a5,0x1b
    800048b4:	02f57e63          	bgeu	a0,a5,800048f0 <kfree+0x70>
    800048b8:	00001637          	lui	a2,0x1
    800048bc:	00100593          	li	a1,1
    800048c0:	00000097          	auipc	ra,0x0
    800048c4:	478080e7          	jalr	1144(ra) # 80004d38 <__memset>
    800048c8:	00002797          	auipc	a5,0x2
    800048cc:	1c878793          	addi	a5,a5,456 # 80006a90 <kmem>
    800048d0:	0007b703          	ld	a4,0(a5)
    800048d4:	01813083          	ld	ra,24(sp)
    800048d8:	01013403          	ld	s0,16(sp)
    800048dc:	00e4b023          	sd	a4,0(s1)
    800048e0:	0097b023          	sd	s1,0(a5)
    800048e4:	00813483          	ld	s1,8(sp)
    800048e8:	02010113          	addi	sp,sp,32
    800048ec:	00008067          	ret
    800048f0:	00002517          	auipc	a0,0x2
    800048f4:	98850513          	addi	a0,a0,-1656 # 80006278 <digits+0x18>
    800048f8:	fffff097          	auipc	ra,0xfffff
    800048fc:	354080e7          	jalr	852(ra) # 80003c4c <panic>

0000000080004900 <kalloc>:
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00813823          	sd	s0,16(sp)
    80004908:	00913423          	sd	s1,8(sp)
    8000490c:	00113c23          	sd	ra,24(sp)
    80004910:	02010413          	addi	s0,sp,32
    80004914:	00002797          	auipc	a5,0x2
    80004918:	17c78793          	addi	a5,a5,380 # 80006a90 <kmem>
    8000491c:	0007b483          	ld	s1,0(a5)
    80004920:	02048063          	beqz	s1,80004940 <kalloc+0x40>
    80004924:	0004b703          	ld	a4,0(s1)
    80004928:	00001637          	lui	a2,0x1
    8000492c:	00500593          	li	a1,5
    80004930:	00048513          	mv	a0,s1
    80004934:	00e7b023          	sd	a4,0(a5)
    80004938:	00000097          	auipc	ra,0x0
    8000493c:	400080e7          	jalr	1024(ra) # 80004d38 <__memset>
    80004940:	01813083          	ld	ra,24(sp)
    80004944:	01013403          	ld	s0,16(sp)
    80004948:	00048513          	mv	a0,s1
    8000494c:	00813483          	ld	s1,8(sp)
    80004950:	02010113          	addi	sp,sp,32
    80004954:	00008067          	ret

0000000080004958 <initlock>:
    80004958:	ff010113          	addi	sp,sp,-16
    8000495c:	00813423          	sd	s0,8(sp)
    80004960:	01010413          	addi	s0,sp,16
    80004964:	00813403          	ld	s0,8(sp)
    80004968:	00b53423          	sd	a1,8(a0)
    8000496c:	00052023          	sw	zero,0(a0)
    80004970:	00053823          	sd	zero,16(a0)
    80004974:	01010113          	addi	sp,sp,16
    80004978:	00008067          	ret

000000008000497c <acquire>:
    8000497c:	fe010113          	addi	sp,sp,-32
    80004980:	00813823          	sd	s0,16(sp)
    80004984:	00913423          	sd	s1,8(sp)
    80004988:	00113c23          	sd	ra,24(sp)
    8000498c:	01213023          	sd	s2,0(sp)
    80004990:	02010413          	addi	s0,sp,32
    80004994:	00050493          	mv	s1,a0
    80004998:	10002973          	csrr	s2,sstatus
    8000499c:	100027f3          	csrr	a5,sstatus
    800049a0:	ffd7f793          	andi	a5,a5,-3
    800049a4:	10079073          	csrw	sstatus,a5
    800049a8:	fffff097          	auipc	ra,0xfffff
    800049ac:	8e4080e7          	jalr	-1820(ra) # 8000328c <mycpu>
    800049b0:	07852783          	lw	a5,120(a0)
    800049b4:	06078e63          	beqz	a5,80004a30 <acquire+0xb4>
    800049b8:	fffff097          	auipc	ra,0xfffff
    800049bc:	8d4080e7          	jalr	-1836(ra) # 8000328c <mycpu>
    800049c0:	07852783          	lw	a5,120(a0)
    800049c4:	0004a703          	lw	a4,0(s1)
    800049c8:	0017879b          	addiw	a5,a5,1
    800049cc:	06f52c23          	sw	a5,120(a0)
    800049d0:	04071063          	bnez	a4,80004a10 <acquire+0x94>
    800049d4:	00100713          	li	a4,1
    800049d8:	00070793          	mv	a5,a4
    800049dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800049e0:	0007879b          	sext.w	a5,a5
    800049e4:	fe079ae3          	bnez	a5,800049d8 <acquire+0x5c>
    800049e8:	0ff0000f          	fence
    800049ec:	fffff097          	auipc	ra,0xfffff
    800049f0:	8a0080e7          	jalr	-1888(ra) # 8000328c <mycpu>
    800049f4:	01813083          	ld	ra,24(sp)
    800049f8:	01013403          	ld	s0,16(sp)
    800049fc:	00a4b823          	sd	a0,16(s1)
    80004a00:	00013903          	ld	s2,0(sp)
    80004a04:	00813483          	ld	s1,8(sp)
    80004a08:	02010113          	addi	sp,sp,32
    80004a0c:	00008067          	ret
    80004a10:	0104b903          	ld	s2,16(s1)
    80004a14:	fffff097          	auipc	ra,0xfffff
    80004a18:	878080e7          	jalr	-1928(ra) # 8000328c <mycpu>
    80004a1c:	faa91ce3          	bne	s2,a0,800049d4 <acquire+0x58>
    80004a20:	00002517          	auipc	a0,0x2
    80004a24:	86050513          	addi	a0,a0,-1952 # 80006280 <digits+0x20>
    80004a28:	fffff097          	auipc	ra,0xfffff
    80004a2c:	224080e7          	jalr	548(ra) # 80003c4c <panic>
    80004a30:	00195913          	srli	s2,s2,0x1
    80004a34:	fffff097          	auipc	ra,0xfffff
    80004a38:	858080e7          	jalr	-1960(ra) # 8000328c <mycpu>
    80004a3c:	00197913          	andi	s2,s2,1
    80004a40:	07252e23          	sw	s2,124(a0)
    80004a44:	f75ff06f          	j	800049b8 <acquire+0x3c>

0000000080004a48 <release>:
    80004a48:	fe010113          	addi	sp,sp,-32
    80004a4c:	00813823          	sd	s0,16(sp)
    80004a50:	00113c23          	sd	ra,24(sp)
    80004a54:	00913423          	sd	s1,8(sp)
    80004a58:	01213023          	sd	s2,0(sp)
    80004a5c:	02010413          	addi	s0,sp,32
    80004a60:	00052783          	lw	a5,0(a0)
    80004a64:	00079a63          	bnez	a5,80004a78 <release+0x30>
    80004a68:	00002517          	auipc	a0,0x2
    80004a6c:	82050513          	addi	a0,a0,-2016 # 80006288 <digits+0x28>
    80004a70:	fffff097          	auipc	ra,0xfffff
    80004a74:	1dc080e7          	jalr	476(ra) # 80003c4c <panic>
    80004a78:	01053903          	ld	s2,16(a0)
    80004a7c:	00050493          	mv	s1,a0
    80004a80:	fffff097          	auipc	ra,0xfffff
    80004a84:	80c080e7          	jalr	-2036(ra) # 8000328c <mycpu>
    80004a88:	fea910e3          	bne	s2,a0,80004a68 <release+0x20>
    80004a8c:	0004b823          	sd	zero,16(s1)
    80004a90:	0ff0000f          	fence
    80004a94:	0f50000f          	fence	iorw,ow
    80004a98:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004a9c:	ffffe097          	auipc	ra,0xffffe
    80004aa0:	7f0080e7          	jalr	2032(ra) # 8000328c <mycpu>
    80004aa4:	100027f3          	csrr	a5,sstatus
    80004aa8:	0027f793          	andi	a5,a5,2
    80004aac:	04079a63          	bnez	a5,80004b00 <release+0xb8>
    80004ab0:	07852783          	lw	a5,120(a0)
    80004ab4:	02f05e63          	blez	a5,80004af0 <release+0xa8>
    80004ab8:	fff7871b          	addiw	a4,a5,-1
    80004abc:	06e52c23          	sw	a4,120(a0)
    80004ac0:	00071c63          	bnez	a4,80004ad8 <release+0x90>
    80004ac4:	07c52783          	lw	a5,124(a0)
    80004ac8:	00078863          	beqz	a5,80004ad8 <release+0x90>
    80004acc:	100027f3          	csrr	a5,sstatus
    80004ad0:	0027e793          	ori	a5,a5,2
    80004ad4:	10079073          	csrw	sstatus,a5
    80004ad8:	01813083          	ld	ra,24(sp)
    80004adc:	01013403          	ld	s0,16(sp)
    80004ae0:	00813483          	ld	s1,8(sp)
    80004ae4:	00013903          	ld	s2,0(sp)
    80004ae8:	02010113          	addi	sp,sp,32
    80004aec:	00008067          	ret
    80004af0:	00001517          	auipc	a0,0x1
    80004af4:	7b850513          	addi	a0,a0,1976 # 800062a8 <digits+0x48>
    80004af8:	fffff097          	auipc	ra,0xfffff
    80004afc:	154080e7          	jalr	340(ra) # 80003c4c <panic>
    80004b00:	00001517          	auipc	a0,0x1
    80004b04:	79050513          	addi	a0,a0,1936 # 80006290 <digits+0x30>
    80004b08:	fffff097          	auipc	ra,0xfffff
    80004b0c:	144080e7          	jalr	324(ra) # 80003c4c <panic>

0000000080004b10 <holding>:
    80004b10:	00052783          	lw	a5,0(a0)
    80004b14:	00079663          	bnez	a5,80004b20 <holding+0x10>
    80004b18:	00000513          	li	a0,0
    80004b1c:	00008067          	ret
    80004b20:	fe010113          	addi	sp,sp,-32
    80004b24:	00813823          	sd	s0,16(sp)
    80004b28:	00913423          	sd	s1,8(sp)
    80004b2c:	00113c23          	sd	ra,24(sp)
    80004b30:	02010413          	addi	s0,sp,32
    80004b34:	01053483          	ld	s1,16(a0)
    80004b38:	ffffe097          	auipc	ra,0xffffe
    80004b3c:	754080e7          	jalr	1876(ra) # 8000328c <mycpu>
    80004b40:	01813083          	ld	ra,24(sp)
    80004b44:	01013403          	ld	s0,16(sp)
    80004b48:	40a48533          	sub	a0,s1,a0
    80004b4c:	00153513          	seqz	a0,a0
    80004b50:	00813483          	ld	s1,8(sp)
    80004b54:	02010113          	addi	sp,sp,32
    80004b58:	00008067          	ret

0000000080004b5c <push_off>:
    80004b5c:	fe010113          	addi	sp,sp,-32
    80004b60:	00813823          	sd	s0,16(sp)
    80004b64:	00113c23          	sd	ra,24(sp)
    80004b68:	00913423          	sd	s1,8(sp)
    80004b6c:	02010413          	addi	s0,sp,32
    80004b70:	100024f3          	csrr	s1,sstatus
    80004b74:	100027f3          	csrr	a5,sstatus
    80004b78:	ffd7f793          	andi	a5,a5,-3
    80004b7c:	10079073          	csrw	sstatus,a5
    80004b80:	ffffe097          	auipc	ra,0xffffe
    80004b84:	70c080e7          	jalr	1804(ra) # 8000328c <mycpu>
    80004b88:	07852783          	lw	a5,120(a0)
    80004b8c:	02078663          	beqz	a5,80004bb8 <push_off+0x5c>
    80004b90:	ffffe097          	auipc	ra,0xffffe
    80004b94:	6fc080e7          	jalr	1788(ra) # 8000328c <mycpu>
    80004b98:	07852783          	lw	a5,120(a0)
    80004b9c:	01813083          	ld	ra,24(sp)
    80004ba0:	01013403          	ld	s0,16(sp)
    80004ba4:	0017879b          	addiw	a5,a5,1
    80004ba8:	06f52c23          	sw	a5,120(a0)
    80004bac:	00813483          	ld	s1,8(sp)
    80004bb0:	02010113          	addi	sp,sp,32
    80004bb4:	00008067          	ret
    80004bb8:	0014d493          	srli	s1,s1,0x1
    80004bbc:	ffffe097          	auipc	ra,0xffffe
    80004bc0:	6d0080e7          	jalr	1744(ra) # 8000328c <mycpu>
    80004bc4:	0014f493          	andi	s1,s1,1
    80004bc8:	06952e23          	sw	s1,124(a0)
    80004bcc:	fc5ff06f          	j	80004b90 <push_off+0x34>

0000000080004bd0 <pop_off>:
    80004bd0:	ff010113          	addi	sp,sp,-16
    80004bd4:	00813023          	sd	s0,0(sp)
    80004bd8:	00113423          	sd	ra,8(sp)
    80004bdc:	01010413          	addi	s0,sp,16
    80004be0:	ffffe097          	auipc	ra,0xffffe
    80004be4:	6ac080e7          	jalr	1708(ra) # 8000328c <mycpu>
    80004be8:	100027f3          	csrr	a5,sstatus
    80004bec:	0027f793          	andi	a5,a5,2
    80004bf0:	04079663          	bnez	a5,80004c3c <pop_off+0x6c>
    80004bf4:	07852783          	lw	a5,120(a0)
    80004bf8:	02f05a63          	blez	a5,80004c2c <pop_off+0x5c>
    80004bfc:	fff7871b          	addiw	a4,a5,-1
    80004c00:	06e52c23          	sw	a4,120(a0)
    80004c04:	00071c63          	bnez	a4,80004c1c <pop_off+0x4c>
    80004c08:	07c52783          	lw	a5,124(a0)
    80004c0c:	00078863          	beqz	a5,80004c1c <pop_off+0x4c>
    80004c10:	100027f3          	csrr	a5,sstatus
    80004c14:	0027e793          	ori	a5,a5,2
    80004c18:	10079073          	csrw	sstatus,a5
    80004c1c:	00813083          	ld	ra,8(sp)
    80004c20:	00013403          	ld	s0,0(sp)
    80004c24:	01010113          	addi	sp,sp,16
    80004c28:	00008067          	ret
    80004c2c:	00001517          	auipc	a0,0x1
    80004c30:	67c50513          	addi	a0,a0,1660 # 800062a8 <digits+0x48>
    80004c34:	fffff097          	auipc	ra,0xfffff
    80004c38:	018080e7          	jalr	24(ra) # 80003c4c <panic>
    80004c3c:	00001517          	auipc	a0,0x1
    80004c40:	65450513          	addi	a0,a0,1620 # 80006290 <digits+0x30>
    80004c44:	fffff097          	auipc	ra,0xfffff
    80004c48:	008080e7          	jalr	8(ra) # 80003c4c <panic>

0000000080004c4c <push_on>:
    80004c4c:	fe010113          	addi	sp,sp,-32
    80004c50:	00813823          	sd	s0,16(sp)
    80004c54:	00113c23          	sd	ra,24(sp)
    80004c58:	00913423          	sd	s1,8(sp)
    80004c5c:	02010413          	addi	s0,sp,32
    80004c60:	100024f3          	csrr	s1,sstatus
    80004c64:	100027f3          	csrr	a5,sstatus
    80004c68:	0027e793          	ori	a5,a5,2
    80004c6c:	10079073          	csrw	sstatus,a5
    80004c70:	ffffe097          	auipc	ra,0xffffe
    80004c74:	61c080e7          	jalr	1564(ra) # 8000328c <mycpu>
    80004c78:	07852783          	lw	a5,120(a0)
    80004c7c:	02078663          	beqz	a5,80004ca8 <push_on+0x5c>
    80004c80:	ffffe097          	auipc	ra,0xffffe
    80004c84:	60c080e7          	jalr	1548(ra) # 8000328c <mycpu>
    80004c88:	07852783          	lw	a5,120(a0)
    80004c8c:	01813083          	ld	ra,24(sp)
    80004c90:	01013403          	ld	s0,16(sp)
    80004c94:	0017879b          	addiw	a5,a5,1
    80004c98:	06f52c23          	sw	a5,120(a0)
    80004c9c:	00813483          	ld	s1,8(sp)
    80004ca0:	02010113          	addi	sp,sp,32
    80004ca4:	00008067          	ret
    80004ca8:	0014d493          	srli	s1,s1,0x1
    80004cac:	ffffe097          	auipc	ra,0xffffe
    80004cb0:	5e0080e7          	jalr	1504(ra) # 8000328c <mycpu>
    80004cb4:	0014f493          	andi	s1,s1,1
    80004cb8:	06952e23          	sw	s1,124(a0)
    80004cbc:	fc5ff06f          	j	80004c80 <push_on+0x34>

0000000080004cc0 <pop_on>:
    80004cc0:	ff010113          	addi	sp,sp,-16
    80004cc4:	00813023          	sd	s0,0(sp)
    80004cc8:	00113423          	sd	ra,8(sp)
    80004ccc:	01010413          	addi	s0,sp,16
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	5bc080e7          	jalr	1468(ra) # 8000328c <mycpu>
    80004cd8:	100027f3          	csrr	a5,sstatus
    80004cdc:	0027f793          	andi	a5,a5,2
    80004ce0:	04078463          	beqz	a5,80004d28 <pop_on+0x68>
    80004ce4:	07852783          	lw	a5,120(a0)
    80004ce8:	02f05863          	blez	a5,80004d18 <pop_on+0x58>
    80004cec:	fff7879b          	addiw	a5,a5,-1
    80004cf0:	06f52c23          	sw	a5,120(a0)
    80004cf4:	07853783          	ld	a5,120(a0)
    80004cf8:	00079863          	bnez	a5,80004d08 <pop_on+0x48>
    80004cfc:	100027f3          	csrr	a5,sstatus
    80004d00:	ffd7f793          	andi	a5,a5,-3
    80004d04:	10079073          	csrw	sstatus,a5
    80004d08:	00813083          	ld	ra,8(sp)
    80004d0c:	00013403          	ld	s0,0(sp)
    80004d10:	01010113          	addi	sp,sp,16
    80004d14:	00008067          	ret
    80004d18:	00001517          	auipc	a0,0x1
    80004d1c:	5b850513          	addi	a0,a0,1464 # 800062d0 <digits+0x70>
    80004d20:	fffff097          	auipc	ra,0xfffff
    80004d24:	f2c080e7          	jalr	-212(ra) # 80003c4c <panic>
    80004d28:	00001517          	auipc	a0,0x1
    80004d2c:	58850513          	addi	a0,a0,1416 # 800062b0 <digits+0x50>
    80004d30:	fffff097          	auipc	ra,0xfffff
    80004d34:	f1c080e7          	jalr	-228(ra) # 80003c4c <panic>

0000000080004d38 <__memset>:
    80004d38:	ff010113          	addi	sp,sp,-16
    80004d3c:	00813423          	sd	s0,8(sp)
    80004d40:	01010413          	addi	s0,sp,16
    80004d44:	1a060e63          	beqz	a2,80004f00 <__memset+0x1c8>
    80004d48:	40a007b3          	neg	a5,a0
    80004d4c:	0077f793          	andi	a5,a5,7
    80004d50:	00778693          	addi	a3,a5,7
    80004d54:	00b00813          	li	a6,11
    80004d58:	0ff5f593          	andi	a1,a1,255
    80004d5c:	fff6071b          	addiw	a4,a2,-1
    80004d60:	1b06e663          	bltu	a3,a6,80004f0c <__memset+0x1d4>
    80004d64:	1cd76463          	bltu	a4,a3,80004f2c <__memset+0x1f4>
    80004d68:	1a078e63          	beqz	a5,80004f24 <__memset+0x1ec>
    80004d6c:	00b50023          	sb	a1,0(a0)
    80004d70:	00100713          	li	a4,1
    80004d74:	1ae78463          	beq	a5,a4,80004f1c <__memset+0x1e4>
    80004d78:	00b500a3          	sb	a1,1(a0)
    80004d7c:	00200713          	li	a4,2
    80004d80:	1ae78a63          	beq	a5,a4,80004f34 <__memset+0x1fc>
    80004d84:	00b50123          	sb	a1,2(a0)
    80004d88:	00300713          	li	a4,3
    80004d8c:	18e78463          	beq	a5,a4,80004f14 <__memset+0x1dc>
    80004d90:	00b501a3          	sb	a1,3(a0)
    80004d94:	00400713          	li	a4,4
    80004d98:	1ae78263          	beq	a5,a4,80004f3c <__memset+0x204>
    80004d9c:	00b50223          	sb	a1,4(a0)
    80004da0:	00500713          	li	a4,5
    80004da4:	1ae78063          	beq	a5,a4,80004f44 <__memset+0x20c>
    80004da8:	00b502a3          	sb	a1,5(a0)
    80004dac:	00700713          	li	a4,7
    80004db0:	18e79e63          	bne	a5,a4,80004f4c <__memset+0x214>
    80004db4:	00b50323          	sb	a1,6(a0)
    80004db8:	00700e93          	li	t4,7
    80004dbc:	00859713          	slli	a4,a1,0x8
    80004dc0:	00e5e733          	or	a4,a1,a4
    80004dc4:	01059e13          	slli	t3,a1,0x10
    80004dc8:	01c76e33          	or	t3,a4,t3
    80004dcc:	01859313          	slli	t1,a1,0x18
    80004dd0:	006e6333          	or	t1,t3,t1
    80004dd4:	02059893          	slli	a7,a1,0x20
    80004dd8:	40f60e3b          	subw	t3,a2,a5
    80004ddc:	011368b3          	or	a7,t1,a7
    80004de0:	02859813          	slli	a6,a1,0x28
    80004de4:	0108e833          	or	a6,a7,a6
    80004de8:	03059693          	slli	a3,a1,0x30
    80004dec:	003e589b          	srliw	a7,t3,0x3
    80004df0:	00d866b3          	or	a3,a6,a3
    80004df4:	03859713          	slli	a4,a1,0x38
    80004df8:	00389813          	slli	a6,a7,0x3
    80004dfc:	00f507b3          	add	a5,a0,a5
    80004e00:	00e6e733          	or	a4,a3,a4
    80004e04:	000e089b          	sext.w	a7,t3
    80004e08:	00f806b3          	add	a3,a6,a5
    80004e0c:	00e7b023          	sd	a4,0(a5)
    80004e10:	00878793          	addi	a5,a5,8
    80004e14:	fed79ce3          	bne	a5,a3,80004e0c <__memset+0xd4>
    80004e18:	ff8e7793          	andi	a5,t3,-8
    80004e1c:	0007871b          	sext.w	a4,a5
    80004e20:	01d787bb          	addw	a5,a5,t4
    80004e24:	0ce88e63          	beq	a7,a4,80004f00 <__memset+0x1c8>
    80004e28:	00f50733          	add	a4,a0,a5
    80004e2c:	00b70023          	sb	a1,0(a4)
    80004e30:	0017871b          	addiw	a4,a5,1
    80004e34:	0cc77663          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004e38:	00e50733          	add	a4,a0,a4
    80004e3c:	00b70023          	sb	a1,0(a4)
    80004e40:	0027871b          	addiw	a4,a5,2
    80004e44:	0ac77e63          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004e48:	00e50733          	add	a4,a0,a4
    80004e4c:	00b70023          	sb	a1,0(a4)
    80004e50:	0037871b          	addiw	a4,a5,3
    80004e54:	0ac77663          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004e58:	00e50733          	add	a4,a0,a4
    80004e5c:	00b70023          	sb	a1,0(a4)
    80004e60:	0047871b          	addiw	a4,a5,4
    80004e64:	08c77e63          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004e68:	00e50733          	add	a4,a0,a4
    80004e6c:	00b70023          	sb	a1,0(a4)
    80004e70:	0057871b          	addiw	a4,a5,5
    80004e74:	08c77663          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004e78:	00e50733          	add	a4,a0,a4
    80004e7c:	00b70023          	sb	a1,0(a4)
    80004e80:	0067871b          	addiw	a4,a5,6
    80004e84:	06c77e63          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004e88:	00e50733          	add	a4,a0,a4
    80004e8c:	00b70023          	sb	a1,0(a4)
    80004e90:	0077871b          	addiw	a4,a5,7
    80004e94:	06c77663          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004e98:	00e50733          	add	a4,a0,a4
    80004e9c:	00b70023          	sb	a1,0(a4)
    80004ea0:	0087871b          	addiw	a4,a5,8
    80004ea4:	04c77e63          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004ea8:	00e50733          	add	a4,a0,a4
    80004eac:	00b70023          	sb	a1,0(a4)
    80004eb0:	0097871b          	addiw	a4,a5,9
    80004eb4:	04c77663          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004eb8:	00e50733          	add	a4,a0,a4
    80004ebc:	00b70023          	sb	a1,0(a4)
    80004ec0:	00a7871b          	addiw	a4,a5,10
    80004ec4:	02c77e63          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004ec8:	00e50733          	add	a4,a0,a4
    80004ecc:	00b70023          	sb	a1,0(a4)
    80004ed0:	00b7871b          	addiw	a4,a5,11
    80004ed4:	02c77663          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004ed8:	00e50733          	add	a4,a0,a4
    80004edc:	00b70023          	sb	a1,0(a4)
    80004ee0:	00c7871b          	addiw	a4,a5,12
    80004ee4:	00c77e63          	bgeu	a4,a2,80004f00 <__memset+0x1c8>
    80004ee8:	00e50733          	add	a4,a0,a4
    80004eec:	00b70023          	sb	a1,0(a4)
    80004ef0:	00d7879b          	addiw	a5,a5,13
    80004ef4:	00c7f663          	bgeu	a5,a2,80004f00 <__memset+0x1c8>
    80004ef8:	00f507b3          	add	a5,a0,a5
    80004efc:	00b78023          	sb	a1,0(a5)
    80004f00:	00813403          	ld	s0,8(sp)
    80004f04:	01010113          	addi	sp,sp,16
    80004f08:	00008067          	ret
    80004f0c:	00b00693          	li	a3,11
    80004f10:	e55ff06f          	j	80004d64 <__memset+0x2c>
    80004f14:	00300e93          	li	t4,3
    80004f18:	ea5ff06f          	j	80004dbc <__memset+0x84>
    80004f1c:	00100e93          	li	t4,1
    80004f20:	e9dff06f          	j	80004dbc <__memset+0x84>
    80004f24:	00000e93          	li	t4,0
    80004f28:	e95ff06f          	j	80004dbc <__memset+0x84>
    80004f2c:	00000793          	li	a5,0
    80004f30:	ef9ff06f          	j	80004e28 <__memset+0xf0>
    80004f34:	00200e93          	li	t4,2
    80004f38:	e85ff06f          	j	80004dbc <__memset+0x84>
    80004f3c:	00400e93          	li	t4,4
    80004f40:	e7dff06f          	j	80004dbc <__memset+0x84>
    80004f44:	00500e93          	li	t4,5
    80004f48:	e75ff06f          	j	80004dbc <__memset+0x84>
    80004f4c:	00600e93          	li	t4,6
    80004f50:	e6dff06f          	j	80004dbc <__memset+0x84>

0000000080004f54 <__memmove>:
    80004f54:	ff010113          	addi	sp,sp,-16
    80004f58:	00813423          	sd	s0,8(sp)
    80004f5c:	01010413          	addi	s0,sp,16
    80004f60:	0e060863          	beqz	a2,80005050 <__memmove+0xfc>
    80004f64:	fff6069b          	addiw	a3,a2,-1
    80004f68:	0006881b          	sext.w	a6,a3
    80004f6c:	0ea5e863          	bltu	a1,a0,8000505c <__memmove+0x108>
    80004f70:	00758713          	addi	a4,a1,7
    80004f74:	00a5e7b3          	or	a5,a1,a0
    80004f78:	40a70733          	sub	a4,a4,a0
    80004f7c:	0077f793          	andi	a5,a5,7
    80004f80:	00f73713          	sltiu	a4,a4,15
    80004f84:	00174713          	xori	a4,a4,1
    80004f88:	0017b793          	seqz	a5,a5
    80004f8c:	00e7f7b3          	and	a5,a5,a4
    80004f90:	10078863          	beqz	a5,800050a0 <__memmove+0x14c>
    80004f94:	00900793          	li	a5,9
    80004f98:	1107f463          	bgeu	a5,a6,800050a0 <__memmove+0x14c>
    80004f9c:	0036581b          	srliw	a6,a2,0x3
    80004fa0:	fff8081b          	addiw	a6,a6,-1
    80004fa4:	02081813          	slli	a6,a6,0x20
    80004fa8:	01d85893          	srli	a7,a6,0x1d
    80004fac:	00858813          	addi	a6,a1,8
    80004fb0:	00058793          	mv	a5,a1
    80004fb4:	00050713          	mv	a4,a0
    80004fb8:	01088833          	add	a6,a7,a6
    80004fbc:	0007b883          	ld	a7,0(a5)
    80004fc0:	00878793          	addi	a5,a5,8
    80004fc4:	00870713          	addi	a4,a4,8
    80004fc8:	ff173c23          	sd	a7,-8(a4)
    80004fcc:	ff0798e3          	bne	a5,a6,80004fbc <__memmove+0x68>
    80004fd0:	ff867713          	andi	a4,a2,-8
    80004fd4:	02071793          	slli	a5,a4,0x20
    80004fd8:	0207d793          	srli	a5,a5,0x20
    80004fdc:	00f585b3          	add	a1,a1,a5
    80004fe0:	40e686bb          	subw	a3,a3,a4
    80004fe4:	00f507b3          	add	a5,a0,a5
    80004fe8:	06e60463          	beq	a2,a4,80005050 <__memmove+0xfc>
    80004fec:	0005c703          	lbu	a4,0(a1)
    80004ff0:	00e78023          	sb	a4,0(a5)
    80004ff4:	04068e63          	beqz	a3,80005050 <__memmove+0xfc>
    80004ff8:	0015c603          	lbu	a2,1(a1)
    80004ffc:	00100713          	li	a4,1
    80005000:	00c780a3          	sb	a2,1(a5)
    80005004:	04e68663          	beq	a3,a4,80005050 <__memmove+0xfc>
    80005008:	0025c603          	lbu	a2,2(a1)
    8000500c:	00200713          	li	a4,2
    80005010:	00c78123          	sb	a2,2(a5)
    80005014:	02e68e63          	beq	a3,a4,80005050 <__memmove+0xfc>
    80005018:	0035c603          	lbu	a2,3(a1)
    8000501c:	00300713          	li	a4,3
    80005020:	00c781a3          	sb	a2,3(a5)
    80005024:	02e68663          	beq	a3,a4,80005050 <__memmove+0xfc>
    80005028:	0045c603          	lbu	a2,4(a1)
    8000502c:	00400713          	li	a4,4
    80005030:	00c78223          	sb	a2,4(a5)
    80005034:	00e68e63          	beq	a3,a4,80005050 <__memmove+0xfc>
    80005038:	0055c603          	lbu	a2,5(a1)
    8000503c:	00500713          	li	a4,5
    80005040:	00c782a3          	sb	a2,5(a5)
    80005044:	00e68663          	beq	a3,a4,80005050 <__memmove+0xfc>
    80005048:	0065c703          	lbu	a4,6(a1)
    8000504c:	00e78323          	sb	a4,6(a5)
    80005050:	00813403          	ld	s0,8(sp)
    80005054:	01010113          	addi	sp,sp,16
    80005058:	00008067          	ret
    8000505c:	02061713          	slli	a4,a2,0x20
    80005060:	02075713          	srli	a4,a4,0x20
    80005064:	00e587b3          	add	a5,a1,a4
    80005068:	f0f574e3          	bgeu	a0,a5,80004f70 <__memmove+0x1c>
    8000506c:	02069613          	slli	a2,a3,0x20
    80005070:	02065613          	srli	a2,a2,0x20
    80005074:	fff64613          	not	a2,a2
    80005078:	00e50733          	add	a4,a0,a4
    8000507c:	00c78633          	add	a2,a5,a2
    80005080:	fff7c683          	lbu	a3,-1(a5)
    80005084:	fff78793          	addi	a5,a5,-1
    80005088:	fff70713          	addi	a4,a4,-1
    8000508c:	00d70023          	sb	a3,0(a4)
    80005090:	fec798e3          	bne	a5,a2,80005080 <__memmove+0x12c>
    80005094:	00813403          	ld	s0,8(sp)
    80005098:	01010113          	addi	sp,sp,16
    8000509c:	00008067          	ret
    800050a0:	02069713          	slli	a4,a3,0x20
    800050a4:	02075713          	srli	a4,a4,0x20
    800050a8:	00170713          	addi	a4,a4,1
    800050ac:	00e50733          	add	a4,a0,a4
    800050b0:	00050793          	mv	a5,a0
    800050b4:	0005c683          	lbu	a3,0(a1)
    800050b8:	00178793          	addi	a5,a5,1
    800050bc:	00158593          	addi	a1,a1,1
    800050c0:	fed78fa3          	sb	a3,-1(a5)
    800050c4:	fee798e3          	bne	a5,a4,800050b4 <__memmove+0x160>
    800050c8:	f89ff06f          	j	80005050 <__memmove+0xfc>

00000000800050cc <__putc>:
    800050cc:	fe010113          	addi	sp,sp,-32
    800050d0:	00813823          	sd	s0,16(sp)
    800050d4:	00113c23          	sd	ra,24(sp)
    800050d8:	02010413          	addi	s0,sp,32
    800050dc:	00050793          	mv	a5,a0
    800050e0:	fef40593          	addi	a1,s0,-17
    800050e4:	00100613          	li	a2,1
    800050e8:	00000513          	li	a0,0
    800050ec:	fef407a3          	sb	a5,-17(s0)
    800050f0:	fffff097          	auipc	ra,0xfffff
    800050f4:	b3c080e7          	jalr	-1220(ra) # 80003c2c <console_write>
    800050f8:	01813083          	ld	ra,24(sp)
    800050fc:	01013403          	ld	s0,16(sp)
    80005100:	02010113          	addi	sp,sp,32
    80005104:	00008067          	ret

0000000080005108 <__getc>:
    80005108:	fe010113          	addi	sp,sp,-32
    8000510c:	00813823          	sd	s0,16(sp)
    80005110:	00113c23          	sd	ra,24(sp)
    80005114:	02010413          	addi	s0,sp,32
    80005118:	fe840593          	addi	a1,s0,-24
    8000511c:	00100613          	li	a2,1
    80005120:	00000513          	li	a0,0
    80005124:	fffff097          	auipc	ra,0xfffff
    80005128:	ae8080e7          	jalr	-1304(ra) # 80003c0c <console_read>
    8000512c:	fe844503          	lbu	a0,-24(s0)
    80005130:	01813083          	ld	ra,24(sp)
    80005134:	01013403          	ld	s0,16(sp)
    80005138:	02010113          	addi	sp,sp,32
    8000513c:	00008067          	ret

0000000080005140 <console_handler>:
    80005140:	fe010113          	addi	sp,sp,-32
    80005144:	00813823          	sd	s0,16(sp)
    80005148:	00113c23          	sd	ra,24(sp)
    8000514c:	00913423          	sd	s1,8(sp)
    80005150:	02010413          	addi	s0,sp,32
    80005154:	14202773          	csrr	a4,scause
    80005158:	100027f3          	csrr	a5,sstatus
    8000515c:	0027f793          	andi	a5,a5,2
    80005160:	06079e63          	bnez	a5,800051dc <console_handler+0x9c>
    80005164:	00074c63          	bltz	a4,8000517c <console_handler+0x3c>
    80005168:	01813083          	ld	ra,24(sp)
    8000516c:	01013403          	ld	s0,16(sp)
    80005170:	00813483          	ld	s1,8(sp)
    80005174:	02010113          	addi	sp,sp,32
    80005178:	00008067          	ret
    8000517c:	0ff77713          	andi	a4,a4,255
    80005180:	00900793          	li	a5,9
    80005184:	fef712e3          	bne	a4,a5,80005168 <console_handler+0x28>
    80005188:	ffffe097          	auipc	ra,0xffffe
    8000518c:	6dc080e7          	jalr	1756(ra) # 80003864 <plic_claim>
    80005190:	00a00793          	li	a5,10
    80005194:	00050493          	mv	s1,a0
    80005198:	02f50c63          	beq	a0,a5,800051d0 <console_handler+0x90>
    8000519c:	fc0506e3          	beqz	a0,80005168 <console_handler+0x28>
    800051a0:	00050593          	mv	a1,a0
    800051a4:	00001517          	auipc	a0,0x1
    800051a8:	03450513          	addi	a0,a0,52 # 800061d8 <_ZZ12printIntegeriE6digits+0xe0>
    800051ac:	fffff097          	auipc	ra,0xfffff
    800051b0:	afc080e7          	jalr	-1284(ra) # 80003ca8 <__printf>
    800051b4:	01013403          	ld	s0,16(sp)
    800051b8:	01813083          	ld	ra,24(sp)
    800051bc:	00048513          	mv	a0,s1
    800051c0:	00813483          	ld	s1,8(sp)
    800051c4:	02010113          	addi	sp,sp,32
    800051c8:	ffffe317          	auipc	t1,0xffffe
    800051cc:	6d430067          	jr	1748(t1) # 8000389c <plic_complete>
    800051d0:	fffff097          	auipc	ra,0xfffff
    800051d4:	3e0080e7          	jalr	992(ra) # 800045b0 <uartintr>
    800051d8:	fddff06f          	j	800051b4 <console_handler+0x74>
    800051dc:	00001517          	auipc	a0,0x1
    800051e0:	0fc50513          	addi	a0,a0,252 # 800062d8 <digits+0x78>
    800051e4:	fffff097          	auipc	ra,0xfffff
    800051e8:	a68080e7          	jalr	-1432(ra) # 80003c4c <panic>
	...
