
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00005117          	auipc	sp,0x5
    80000004:	7c013103          	ld	sp,1984(sp) # 800057c0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7ac020ef          	jal	ra,800027c8 <start>

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
	...

0000000080001100 <_ZN5RiscV14supervisorTrapEv>:
.align 4
.global _ZN5RiscV14supervisorTrapEv
.type _ZN5RiscV14supervisorTrapEv, @function
_ZN5RiscV14supervisorTrapEv:

    addi sp,sp, -256
    80001100:	f0010113          	addi	sp,sp,-256

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31

    sd x\index, \index * 8 (sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5RiscV20handleSupervisorTrapEv
    80001184:	49c000ef          	jal	ra,80001620 <_ZN5RiscV20handleSupervisorTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31

    ld x\index, \index * 8 (sp)
    .endr #ovde puca kada se pozove mem_alloc prvo
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp,sp, 256
    80001208:	10010113          	addi	sp,sp,256

    8000120c:	10200073          	sret

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    #a0- old->context
    #a1- running->context
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <_Z9mem_allocm>:
#include "../h/RiscV.hpp"
//#include "../h/MemoryAllocation.hpp"



void *mem_alloc(size_t  size) {
    80001224:	ff010113          	addi	sp,sp,-16
    80001228:	00813423          	sd	s0,8(sp)
    8000122c:	01010413          	addi	s0,sp,16
    void* pointer = nullptr;
    uint64 sysCallNr=0x01UL;
    //size=MemoryAllocation::bytesToBlocks(size);
    //mozda ovde mozes da koristis privremeni registar "scratch", da bi koristio sd
    __asm__ volatile("mv a1, %0" : : [size] "r" (size)); //izgleda da ipak mora sd, jer ne prepoznaje ni a0 ni a1
    80001230:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80001234:	00100793          	li	a5,1
    80001238:	00078513          	mv	a0,a5
     //ovo bi trebalo u mainu, ali kom mainu, gde ja uopste smem da deklarisem trap??????? izgleda da stvec skace na ecall
    __asm__ volatile("ecall");
    8000123c:	00000073          	ecall
    __asm__ volatile("mv %[pointer], a1" : [pointer] "=r"(pointer));
    80001240:	00058513          	mv	a0,a1
    return pointer;
}
    80001244:	00813403          	ld	s0,8(sp)
    80001248:	01010113          	addi	sp,sp,16
    8000124c:	00008067          	ret

0000000080001250 <_Z8mem_freePv>:

int mem_free(void * ptr) {
    80001250:	ff010113          	addi	sp,sp,-16
    80001254:	00813423          	sd	s0,8(sp)
    80001258:	01010413          	addi	s0,sp,16
    int ret=0;
    uint64 sysCallNr=0x02UL;
    __asm__ volatile("mv a1, %0" : : [ptr] "r" (ptr));
    8000125c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80001260:	00200793          	li	a5,2
    80001264:	00078513          	mv	a0,a5
    //RiscV::w_stvec((uint64) &Trap());
    __asm__ volatile("ecall");
    80001268:	00000073          	ecall
    __asm__ volatile("mv %[ret], a1" : [ret] "=r"(ret)); //kaze undefined reference
    8000126c:	00058513          	mv	a0,a1
    return ret;
}
    80001270:	0005051b          	sext.w	a0,a0
    80001274:	00813403          	ld	s0,8(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret

0000000080001280 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    80001280:	ff010113          	addi	sp,sp,-16
    80001284:	00813423          	sd	s0,8(sp)
    80001288:	01010413          	addi	s0,sp,16
    TCB* ret_value_thread;
    uint64 sysCallNr=0x11UL;
    //neki stack_space alokacija se pominje????
    __asm__ volatile("mv a3, %0" : : [arg] "r" (arg));
    8000128c:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : [start_routine] "r" (start_routine));
    80001290:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : [handle] "r" (handle));
    80001294:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80001298:	01100793          	li	a5,17
    8000129c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012a0:	00000073          	ecall
    __asm__ volatile("mv %[ret_value_thread], a1" : [ret_value_thread] "=r"(ret_value_thread)); //kaze undefined reference
    800012a4:	00058793          	mv	a5,a1
    return 0;//todo
    //moras da vidis sta ovde treba da se vrati
}
    800012a8:	00000513          	li	a0,0
    800012ac:	00813403          	ld	s0,8(sp)
    800012b0:	01010113          	addi	sp,sp,16
    800012b4:	00008067          	ret

00000000800012b8 <_Z11thread_exitv>:

int thread_exit (){
    800012b8:	ff010113          	addi	sp,sp,-16
    800012bc:	00813423          	sd	s0,8(sp)
    800012c0:	01010413          	addi	s0,sp,16
    int ret=0;
    uint64 sysCallNr=0x12UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    800012c4:	01200793          	li	a5,18
    800012c8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012cc:	00000073          	ecall
    //sta treba ovde da se vrati, verovatno da li je uspelo ili nije uspelo, PREBACI THREAD_EXIT U INT U TCB-U
    __asm__ volatile("mv %[ret], a1" : [ret] "=r"(ret)); //kaze undefined reference
    800012d0:	00058513          	mv	a0,a1
    return ret;
}
    800012d4:	0005051b          	sext.w	a0,a0
    800012d8:	00813403          	ld	s0,8(sp)
    800012dc:	01010113          	addi	sp,sp,16
    800012e0:	00008067          	ret

00000000800012e4 <_Z15thread_dispatchv>:

void thread_dispatch (){
    800012e4:	ff010113          	addi	sp,sp,-16
    800012e8:	00813423          	sd	s0,8(sp)
    800012ec:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    800012f0:	01300793          	li	a5,19
    800012f4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012f8:	00000073          	ecall
}
    800012fc:	00813403          	ld	s0,8(sp)
    80001300:	01010113          	addi	sp,sp,16
    80001304:	00008067          	ret

0000000080001308 <_ZL9fibonaccim>:
#include "../h/tcb.hpp"
#include "../lib/hw.h"
#include "../h/Print.hpp"
#include "../h/syscall_c.hpp"

static uint64 fibonacci(uint64 n) {
    80001308:	fe010113          	addi	sp,sp,-32
    8000130c:	00113c23          	sd	ra,24(sp)
    80001310:	00813823          	sd	s0,16(sp)
    80001314:	00913423          	sd	s1,8(sp)
    80001318:	01213023          	sd	s2,0(sp)
    8000131c:	02010413          	addi	s0,sp,32
    80001320:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001324:	00100793          	li	a5,1
    80001328:	02a7f663          	bgeu	a5,a0,80001354 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) thread_dispatch();
    8000132c:	00357793          	andi	a5,a0,3
    80001330:	02078e63          	beqz	a5,8000136c <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001334:	fff48513          	addi	a0,s1,-1
    80001338:	00000097          	auipc	ra,0x0
    8000133c:	fd0080e7          	jalr	-48(ra) # 80001308 <_ZL9fibonaccim>
    80001340:	00050913          	mv	s2,a0
    80001344:	ffe48513          	addi	a0,s1,-2
    80001348:	00000097          	auipc	ra,0x0
    8000134c:	fc0080e7          	jalr	-64(ra) # 80001308 <_ZL9fibonaccim>
    80001350:	00a90533          	add	a0,s2,a0
}
    80001354:	01813083          	ld	ra,24(sp)
    80001358:	01013403          	ld	s0,16(sp)
    8000135c:	00813483          	ld	s1,8(sp)
    80001360:	00013903          	ld	s2,0(sp)
    80001364:	02010113          	addi	sp,sp,32
    80001368:	00008067          	ret
    if (n % 4 == 0) thread_dispatch();
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	f78080e7          	jalr	-136(ra) # 800012e4 <_Z15thread_dispatchv>
    80001374:	fc1ff06f          	j	80001334 <_ZL9fibonaccim+0x2c>

0000000080001378 <_Z11workerBodyAPv>:

void workerBodyA(void*){
    80001378:	fe010113          	addi	sp,sp,-32
    8000137c:	00113c23          	sd	ra,24(sp)
    80001380:	00813823          	sd	s0,16(sp)
    80001384:	00913423          	sd	s1,8(sp)
    80001388:	01213023          	sd	s2,0(sp)
    8000138c:	02010413          	addi	s0,sp,32
    uint8 i=0;
    80001390:	00000493          	li	s1,0
    80001394:	0380006f          	j	800013cc <_Z11workerBodyAPv+0x54>
    for(; i<3 ; i++){
        printString("A: i=");
    80001398:	00004517          	auipc	a0,0x4
    8000139c:	c8850513          	addi	a0,a0,-888 # 80005020 <CONSOLE_STATUS+0x10>
    800013a0:	00001097          	auipc	ra,0x1
    800013a4:	30c080e7          	jalr	780(ra) # 800026ac <_Z11printStringPKc>
        printInteger(i);
    800013a8:	00048513          	mv	a0,s1
    800013ac:	00001097          	auipc	ra,0x1
    800013b0:	368080e7          	jalr	872(ra) # 80002714 <_Z12printIntegerm>
        printString("\n");
    800013b4:	00004517          	auipc	a0,0x4
    800013b8:	cfc50513          	addi	a0,a0,-772 # 800050b0 <CONSOLE_STATUS+0xa0>
    800013bc:	00001097          	auipc	ra,0x1
    800013c0:	2f0080e7          	jalr	752(ra) # 800026ac <_Z11printStringPKc>
    for(; i<3 ; i++){
    800013c4:	0014849b          	addiw	s1,s1,1
    800013c8:	0ff4f493          	andi	s1,s1,255
    800013cc:	00200793          	li	a5,2
    800013d0:	fc97f4e3          	bgeu	a5,s1,80001398 <_Z11workerBodyAPv+0x20>
    }

    printString("A yield\n");
    800013d4:	00004517          	auipc	a0,0x4
    800013d8:	c5450513          	addi	a0,a0,-940 # 80005028 <CONSOLE_STATUS+0x18>
    800013dc:	00001097          	auipc	ra,0x1
    800013e0:	2d0080e7          	jalr	720(ra) # 800026ac <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800013e4:	00700313          	li	t1,7
    thread_dispatch();
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	efc080e7          	jalr	-260(ra) # 800012e4 <_Z15thread_dispatchv>

    //thread_exit();

    uint64 t1=0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800013f0:	00030913          	mv	s2,t1

    printString("A: t1=");
    800013f4:	00004517          	auipc	a0,0x4
    800013f8:	c4450513          	addi	a0,a0,-956 # 80005038 <CONSOLE_STATUS+0x28>
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	2b0080e7          	jalr	688(ra) # 800026ac <_Z11printStringPKc>
    printInteger(t1);
    80001404:	00090513          	mv	a0,s2
    80001408:	00001097          	auipc	ra,0x1
    8000140c:	30c080e7          	jalr	780(ra) # 80002714 <_Z12printIntegerm>
    printString("\n");
    80001410:	00004517          	auipc	a0,0x4
    80001414:	ca050513          	addi	a0,a0,-864 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001418:	00001097          	auipc	ra,0x1
    8000141c:	294080e7          	jalr	660(ra) # 800026ac <_Z11printStringPKc>

    uint64 result = fibonacci (20);
    80001420:	01400513          	li	a0,20
    80001424:	00000097          	auipc	ra,0x0
    80001428:	ee4080e7          	jalr	-284(ra) # 80001308 <_ZL9fibonaccim>
    8000142c:	00050913          	mv	s2,a0
    printString("A: fibonacci=");
    80001430:	00004517          	auipc	a0,0x4
    80001434:	c1050513          	addi	a0,a0,-1008 # 80005040 <CONSOLE_STATUS+0x30>
    80001438:	00001097          	auipc	ra,0x1
    8000143c:	274080e7          	jalr	628(ra) # 800026ac <_Z11printStringPKc>
    printInteger(result);
    80001440:	00090513          	mv	a0,s2
    80001444:	00001097          	auipc	ra,0x1
    80001448:	2d0080e7          	jalr	720(ra) # 80002714 <_Z12printIntegerm>
    printString("\n");
    8000144c:	00004517          	auipc	a0,0x4
    80001450:	c6450513          	addi	a0,a0,-924 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001454:	00001097          	auipc	ra,0x1
    80001458:	258080e7          	jalr	600(ra) # 800026ac <_Z11printStringPKc>
    8000145c:	0380006f          	j	80001494 <_Z11workerBodyAPv+0x11c>

    for(; i<6; i++){
        printString("A: i=");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	bc050513          	addi	a0,a0,-1088 # 80005020 <CONSOLE_STATUS+0x10>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	244080e7          	jalr	580(ra) # 800026ac <_Z11printStringPKc>
        printInteger(i);
    80001470:	00048513          	mv	a0,s1
    80001474:	00001097          	auipc	ra,0x1
    80001478:	2a0080e7          	jalr	672(ra) # 80002714 <_Z12printIntegerm>
        printString("\n");
    8000147c:	00004517          	auipc	a0,0x4
    80001480:	c3450513          	addi	a0,a0,-972 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001484:	00001097          	auipc	ra,0x1
    80001488:	228080e7          	jalr	552(ra) # 800026ac <_Z11printStringPKc>
    for(; i<6; i++){
    8000148c:	0014849b          	addiw	s1,s1,1
    80001490:	0ff4f493          	andi	s1,s1,255
    80001494:	00500793          	li	a5,5
    80001498:	fc97f4e3          	bgeu	a5,s1,80001460 <_Z11workerBodyAPv+0xe8>
    }

    TCB::running->setFinished(true);
    8000149c:	00100593          	li	a1,1
    800014a0:	00004797          	auipc	a5,0x4
    800014a4:	3487b783          	ld	a5,840(a5) # 800057e8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800014a8:	0007b503          	ld	a0,0(a5)
    800014ac:	00001097          	auipc	ra,0x1
    800014b0:	96c080e7          	jalr	-1684(ra) # 80001e18 <_ZN3TCB11setFinishedEb>
    thread_dispatch();
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	e30080e7          	jalr	-464(ra) # 800012e4 <_Z15thread_dispatchv>
}
    800014bc:	01813083          	ld	ra,24(sp)
    800014c0:	01013403          	ld	s0,16(sp)
    800014c4:	00813483          	ld	s1,8(sp)
    800014c8:	00013903          	ld	s2,0(sp)
    800014cc:	02010113          	addi	sp,sp,32
    800014d0:	00008067          	ret

00000000800014d4 <_Z11workerBodyBPv>:

void workerBodyB(void*){
    800014d4:	fe010113          	addi	sp,sp,-32
    800014d8:	00113c23          	sd	ra,24(sp)
    800014dc:	00813823          	sd	s0,16(sp)
    800014e0:	00913423          	sd	s1,8(sp)
    800014e4:	01213023          	sd	s2,0(sp)
    800014e8:	02010413          	addi	s0,sp,32
    uint8 i=10;
    800014ec:	00a00493          	li	s1,10
    800014f0:	0380006f          	j	80001528 <_Z11workerBodyBPv+0x54>
    for(; i<13; i++){
        printString("B: i=");
    800014f4:	00004517          	auipc	a0,0x4
    800014f8:	b5c50513          	addi	a0,a0,-1188 # 80005050 <CONSOLE_STATUS+0x40>
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	1b0080e7          	jalr	432(ra) # 800026ac <_Z11printStringPKc>
        printInteger(i);
    80001504:	00048513          	mv	a0,s1
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	20c080e7          	jalr	524(ra) # 80002714 <_Z12printIntegerm>
        printString("\n");
    80001510:	00004517          	auipc	a0,0x4
    80001514:	ba050513          	addi	a0,a0,-1120 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	194080e7          	jalr	404(ra) # 800026ac <_Z11printStringPKc>
    for(; i<13; i++){
    80001520:	0014849b          	addiw	s1,s1,1
    80001524:	0ff4f493          	andi	s1,s1,255
    80001528:	00c00793          	li	a5,12
    8000152c:	fc97f4e3          	bgeu	a5,s1,800014f4 <_Z11workerBodyBPv+0x20>
    }

    printString("B: yield\n");
    80001530:	00004517          	auipc	a0,0x4
    80001534:	b2850513          	addi	a0,a0,-1240 # 80005058 <CONSOLE_STATUS+0x48>
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	174080e7          	jalr	372(ra) # 800026ac <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001540:	00500313          	li	t1,5
    thread_dispatch();
    80001544:	00000097          	auipc	ra,0x0
    80001548:	da0080e7          	jalr	-608(ra) # 800012e4 <_Z15thread_dispatchv>

    uint64 result=fibonacci(23);
    8000154c:	01700513          	li	a0,23
    80001550:	00000097          	auipc	ra,0x0
    80001554:	db8080e7          	jalr	-584(ra) # 80001308 <_ZL9fibonaccim>
    80001558:	00050913          	mv	s2,a0
    printString("B: fibonaci=");
    8000155c:	00004517          	auipc	a0,0x4
    80001560:	b0c50513          	addi	a0,a0,-1268 # 80005068 <CONSOLE_STATUS+0x58>
    80001564:	00001097          	auipc	ra,0x1
    80001568:	148080e7          	jalr	328(ra) # 800026ac <_Z11printStringPKc>
    printInteger(result);
    8000156c:	00090513          	mv	a0,s2
    80001570:	00001097          	auipc	ra,0x1
    80001574:	1a4080e7          	jalr	420(ra) # 80002714 <_Z12printIntegerm>
    printString("\n");
    80001578:	00004517          	auipc	a0,0x4
    8000157c:	b3850513          	addi	a0,a0,-1224 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001580:	00001097          	auipc	ra,0x1
    80001584:	12c080e7          	jalr	300(ra) # 800026ac <_Z11printStringPKc>
    80001588:	0380006f          	j	800015c0 <_Z11workerBodyBPv+0xec>

    for(; i<16; i++){
        printString("B: i=");
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	ac450513          	addi	a0,a0,-1340 # 80005050 <CONSOLE_STATUS+0x40>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	118080e7          	jalr	280(ra) # 800026ac <_Z11printStringPKc>
        printInteger(i);
    8000159c:	00048513          	mv	a0,s1
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	174080e7          	jalr	372(ra) # 80002714 <_Z12printIntegerm>
        printString("\n");
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	b0850513          	addi	a0,a0,-1272 # 800050b0 <CONSOLE_STATUS+0xa0>
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	0fc080e7          	jalr	252(ra) # 800026ac <_Z11printStringPKc>
    for(; i<16; i++){
    800015b8:	0014849b          	addiw	s1,s1,1
    800015bc:	0ff4f493          	andi	s1,s1,255
    800015c0:	00f00793          	li	a5,15
    800015c4:	fc97f4e3          	bgeu	a5,s1,8000158c <_Z11workerBodyBPv+0xb8>
    }

    TCB::running->setFinished(true);
    800015c8:	00100593          	li	a1,1
    800015cc:	00004797          	auipc	a5,0x4
    800015d0:	21c7b783          	ld	a5,540(a5) # 800057e8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800015d4:	0007b503          	ld	a0,0(a5)
    800015d8:	00001097          	auipc	ra,0x1
    800015dc:	840080e7          	jalr	-1984(ra) # 80001e18 <_ZN3TCB11setFinishedEb>
    thread_dispatch();
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	d04080e7          	jalr	-764(ra) # 800012e4 <_Z15thread_dispatchv>
    800015e8:	01813083          	ld	ra,24(sp)
    800015ec:	01013403          	ld	s0,16(sp)
    800015f0:	00813483          	ld	s1,8(sp)
    800015f4:	00013903          	ld	s2,0(sp)
    800015f8:	02010113          	addi	sp,sp,32
    800015fc:	00008067          	ret

0000000080001600 <_ZN5RiscV10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"


void RiscV::popSppSpie() {
    80001600:	ff010113          	addi	sp,sp,-16
    80001604:	00813423          	sd	s0,8(sp)
    80001608:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000160c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001610:	10200073          	sret
}
    80001614:	00813403          	ld	s0,8(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <_ZN5RiscV20handleSupervisorTrapEv>:

void RiscV::handleSupervisorTrap() {
    80001620:	fb010113          	addi	sp,sp,-80
    80001624:	04113423          	sd	ra,72(sp)
    80001628:	04813023          	sd	s0,64(sp)
    8000162c:	05010413          	addi	s0,sp,80
    volatile uint64 size;
    volatile uint64 handle;
    volatile uint64 start_routine;
    volatile uint64 arg;
    volatile uint64 ptr;
    __asm__ volatile("sd a3, %0" : "=m"(arg));
    80001630:	fcd43823          	sd	a3,-48(s0)
    __asm__ volatile("sd a2, %0" : "=m"(start_routine));
    80001634:	fcc43c23          	sd	a2,-40(s0)
    __asm__ volatile("sd a1, %0" : "=m"(handle));
    80001638:	feb43023          	sd	a1,-32(s0)
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    8000163c:	142027f3          	csrr	a5,scause
    80001640:	faf43823          	sd	a5,-80(s0)
    return scause;
    80001644:	fb043703          	ld	a4,-80(s0)

}

inline uint64 RiscV::r_sepc(){
    uint64  sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001648:	141027f3          	csrr	a5,sepc
    //__asm__ volatile("sd a1, %0" : "=m"(size));
    //__asm__ volatile("sd a1, %0" : "=m"(ptr));
    uint64 sysCallNr;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    8000164c:	00478793          	addi	a5,a5,4
    80001650:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64  sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80001654:	100027f3          	csrr	a5,sstatus
    volatile uint64 sstatus = r_sstatus();
    80001658:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    8000165c:	00050793          	mv	a5,a0
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
    80001660:	ff870613          	addi	a2,a4,-8
    80001664:	00100693          	li	a3,1
    80001668:	02c6f863          	bgeu	a3,a2,80001698 <_ZN5RiscV20handleSupervisorTrapEv+0x78>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    8000166c:	fff00793          	li	a5,-1
    80001670:	03f79793          	slli	a5,a5,0x3f
    80001674:	00178793          	addi	a5,a5,1
    80001678:	2ef70e63          	beq	a4,a5,80001974 <_ZN5RiscV20handleSupervisorTrapEv+0x354>
        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    8000167c:	fff00793          	li	a5,-1
    80001680:	03f79793          	slli	a5,a5,0x3f
    80001684:	00978793          	addi	a5,a5,9
    80001688:	04f71463          	bne	a4,a5,800016d0 <_ZN5RiscV20handleSupervisorTrapEv+0xb0>
        //supervisor external interrupt (console)
        console_handler();
    8000168c:	00003097          	auipc	ra,0x3
    80001690:	274080e7          	jalr	628(ra) # 80004900 <console_handler>
        //print (scause)
        //print sepc
        //print sval

    }
    80001694:	03c0006f          	j	800016d0 <_ZN5RiscV20handleSupervisorTrapEv+0xb0>
        if (sysCallNr == 0x01UL) {
    80001698:	00100713          	li	a4,1
    8000169c:	04e78263          	beq	a5,a4,800016e0 <_ZN5RiscV20handleSupervisorTrapEv+0xc0>
        } else if (sysCallNr == 0x02UL) {
    800016a0:	00200713          	li	a4,2
    800016a4:	14e78a63          	beq	a5,a4,800017f8 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
        }else if(sysCallNr == 0x11UL){
    800016a8:	01100713          	li	a4,17
    800016ac:	26e78663          	beq	a5,a4,80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x2f8>
        }else if(sysCallNr == 0x12UL){
    800016b0:	01200713          	li	a4,18
    800016b4:	28e78263          	beq	a5,a4,80001938 <_ZN5RiscV20handleSupervisorTrapEv+0x318>
        }else if(sysCallNr == 0x13UL){
    800016b8:	01300713          	li	a4,19
    800016bc:	2ae78663          	beq	a5,a4,80001968 <_ZN5RiscV20handleSupervisorTrapEv+0x348>
        w_sstatus(sstatus);
    800016c0:	fb843783          	ld	a5,-72(s0)
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 volatile sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    800016c4:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800016c8:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    800016cc:	14179073          	csrw	sepc,a5
    800016d0:	04813083          	ld	ra,72(sp)
    800016d4:	04013403          	ld	s0,64(sp)
    800016d8:	05010113          	addi	sp,sp,80
    800016dc:	00008067          	ret
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
    800016e0:	00058793          	mv	a5,a1
    800016e4:	fef43423          	sd	a5,-24(s0)
            void* pointer=MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks((size_t)size)); //gore imas da pretvoris u bytes to blocks
    800016e8:	fe843783          	ld	a5,-24(s0)

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800016ec:	05778793          	addi	a5,a5,87
    800016f0:	0067d793          	srli	a5,a5,0x6
    800016f4:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    800016f8:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800016fc:	00004717          	auipc	a4,0x4
    80001700:	0dc73703          	ld	a4,220(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001704:	00073703          	ld	a4,0(a4)
    80001708:	0c070863          	beqz	a4,800017d8 <_ZN5RiscV20handleSupervisorTrapEv+0x1b8>
            cur->next=fmem_head->next;
    8000170c:	00004697          	auipc	a3,0x4
    80001710:	0cc6b683          	ld	a3,204(a3) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001714:	0006b603          	ld	a2,0(a3)
    80001718:	00063603          	ld	a2,0(a2)
    8000171c:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    80001720:	0006b683          	ld	a3,0(a3)
    80001724:	0086b583          	ld	a1,8(a3)
    80001728:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    8000172c:	01073683          	ld	a3,16(a4)
    80001730:	02f6e663          	bltu	a3,a5,8000175c <_ZN5RiscV20handleSupervisorTrapEv+0x13c>
            if (cur->size-size<=sizeof(FreeMem)){
    80001734:	40f686b3          	sub	a3,a3,a5
    80001738:	01800513          	li	a0,24
    8000173c:	02d56c63          	bltu	a0,a3,80001774 <_ZN5RiscV20handleSupervisorTrapEv+0x154>
                if (cur->prev) cur->prev->next = cur->next;
    80001740:	02058263          	beqz	a1,80001764 <_ZN5RiscV20handleSupervisorTrapEv+0x144>
    80001744:	00c5b023          	sd	a2,0(a1)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80001748:	00073783          	ld	a5,0(a4)
    8000174c:	08078663          	beqz	a5,800017d8 <_ZN5RiscV20handleSupervisorTrapEv+0x1b8>
    80001750:	00873683          	ld	a3,8(a4)
    80001754:	00d7b423          	sd	a3,8(a5)
                return cur;
    80001758:	0800006f          	j	800017d8 <_ZN5RiscV20handleSupervisorTrapEv+0x1b8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000175c:	00060713          	mv	a4,a2
    80001760:	fa9ff06f          	j	80001708 <_ZN5RiscV20handleSupervisorTrapEv+0xe8>
                else fmem_head = cur->next;
    80001764:	00004797          	auipc	a5,0x4
    80001768:	0747b783          	ld	a5,116(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000176c:	00c7b023          	sd	a2,0(a5)
    80001770:	fd9ff06f          	j	80001748 <_ZN5RiscV20handleSupervisorTrapEv+0x128>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001774:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    80001778:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    8000177c:	0006b023          	sd	zero,0(a3)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001780:	00873603          	ld	a2,8(a4)
    80001784:	06060063          	beqz	a2,800017e4 <_ZN5RiscV20handleSupervisorTrapEv+0x1c4>
    80001788:	00d63023          	sd	a3,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    8000178c:	00073603          	ld	a2,0(a4)
    80001790:	00060463          	beqz	a2,80001798 <_ZN5RiscV20handleSupervisorTrapEv+0x178>
    80001794:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    80001798:	00873603          	ld	a2,8(a4)
    8000179c:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    800017a0:	00073583          	ld	a1,0(a4)
    800017a4:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    800017a8:	01073703          	ld	a4,16(a4)
    800017ac:	40f707b3          	sub	a5,a4,a5
    800017b0:	00f6b823          	sd	a5,16(a3)
                fmem_head =newfrgm+sizeof(fmem_head);
    800017b4:	0c068713          	addi	a4,a3,192
    800017b8:	00004597          	auipc	a1,0x4
    800017bc:	0205b583          	ld	a1,32(a1) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017c0:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    800017c4:	0006b583          	ld	a1,0(a3)
    800017c8:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    800017cc:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    800017d0:	0cf6b823          	sd	a5,208(a3)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    800017d4:	00068713          	mv	a4,a3
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
    800017d8:	00070593          	mv	a1,a4
            __asm__ volatile("sd a1, 88(s0)");
    800017dc:	04b43c23          	sd	a1,88(s0)
    800017e0:	ee1ff06f          	j	800016c0 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800017e4:	0c068613          	addi	a2,a3,192
    800017e8:	00004597          	auipc	a1,0x4
    800017ec:	ff05b583          	ld	a1,-16(a1) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017f0:	00c5b023          	sd	a2,0(a1)
    800017f4:	f99ff06f          	j	8000178c <_ZN5RiscV20handleSupervisorTrapEv+0x16c>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    800017f8:	00058793          	mv	a5,a1
    800017fc:	fcf43423          	sd	a5,-56(s0)
            int ret=MemoryAllocation::mem_free((void*)ptr);
    80001800:	fc843703          	ld	a4,-56(s0)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001804:	00004797          	auipc	a5,0x4
    80001808:	fd47b783          	ld	a5,-44(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000180c:	0007b783          	ld	a5,0(a5)
    80001810:	00078e63          	beqz	a5,8000182c <_ZN5RiscV20handleSupervisorTrapEv+0x20c>
    80001814:	02f76063          	bltu	a4,a5,80001834 <_ZN5RiscV20handleSupervisorTrapEv+0x214>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001818:	00078693          	mv	a3,a5
    8000181c:	0007b783          	ld	a5,0(a5)
    80001820:	00f70c63          	beq	a4,a5,80001838 <_ZN5RiscV20handleSupervisorTrapEv+0x218>
    80001824:	fee7eae3          	bltu	a5,a4,80001818 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
    80001828:	0100006f          	j	80001838 <_ZN5RiscV20handleSupervisorTrapEv+0x218>
            cur=nullptr;
    8000182c:	00078693          	mv	a3,a5
    80001830:	0080006f          	j	80001838 <_ZN5RiscV20handleSupervisorTrapEv+0x218>
    80001834:	00000693          	li	a3,0
                newSeg->next=nullptr;
    80001838:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    8000183c:	04000793          	li	a5,64
    80001840:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    80001844:	00d73423          	sd	a3,8(a4)
                if(cur) {
    80001848:	06068263          	beqz	a3,800018ac <_ZN5RiscV20handleSupervisorTrapEv+0x28c>
                    newSeg->next = cur->next;
    8000184c:	0006b783          	ld	a5,0(a3)
    80001850:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    80001854:	00073783          	ld	a5,0(a4)
    80001858:	00078463          	beqz	a5,80001860 <_ZN5RiscV20handleSupervisorTrapEv+0x240>
                    newSeg->next->prev=newSeg;
    8000185c:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    80001860:	06068063          	beqz	a3,800018c0 <_ZN5RiscV20handleSupervisorTrapEv+0x2a0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001864:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    80001868:	00070c63          	beqz	a4,80001880 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000186c:	00073783          	ld	a5,0(a4)
    80001870:	00078863          	beqz	a5,80001880 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
    80001874:	01073603          	ld	a2,16(a4)
    80001878:	00c705b3          	add	a1,a4,a2
    8000187c:	04b78a63          	beq	a5,a1,800018d0 <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
        if (!curr) return;
    80001880:	00068c63          	beqz	a3,80001898 <_ZN5RiscV20handleSupervisorTrapEv+0x278>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001884:	0006b783          	ld	a5,0(a3)
    80001888:	00078863          	beqz	a5,80001898 <_ZN5RiscV20handleSupervisorTrapEv+0x278>
    8000188c:	0106b603          	ld	a2,16(a3)
    80001890:	00c685b3          	add	a1,a3,a2
    80001894:	04b78e63          	beq	a5,a1,800018f0 <_ZN5RiscV20handleSupervisorTrapEv+0x2d0>
            if(newSeg==nullptr){
    80001898:	06070c63          	beqz	a4,80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x2f0>
            }else{return 0;}
    8000189c:	00000793          	li	a5,0
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
    800018a0:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
    800018a4:	04b43c23          	sd	a1,88(s0)
    800018a8:	e19ff06f          	j	800016c0 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
                    newSeg->next = fmem_head;
    800018ac:	00004797          	auipc	a5,0x4
    800018b0:	f2c7b783          	ld	a5,-212(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018b4:	0007b783          	ld	a5,0(a5)
    800018b8:	00f73023          	sd	a5,0(a4)
    800018bc:	f99ff06f          	j	80001854 <_ZN5RiscV20handleSupervisorTrapEv+0x234>
                    fmem_head = newSeg;
    800018c0:	00004797          	auipc	a5,0x4
    800018c4:	f187b783          	ld	a5,-232(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018c8:	00e7b023          	sd	a4,0(a5)
    800018cc:	f9dff06f          	j	80001868 <_ZN5RiscV20handleSupervisorTrapEv+0x248>
            curr->size += curr->next->size;
    800018d0:	0107b583          	ld	a1,16(a5)
    800018d4:	00b60633          	add	a2,a2,a1
    800018d8:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    800018dc:	0007b783          	ld	a5,0(a5)
    800018e0:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    800018e4:	f8078ee3          	beqz	a5,80001880 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
    800018e8:	00e7b423          	sd	a4,8(a5)
    800018ec:	f95ff06f          	j	80001880 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
            curr->size += curr->next->size;
    800018f0:	0107b583          	ld	a1,16(a5)
    800018f4:	00b60633          	add	a2,a2,a1
    800018f8:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    800018fc:	0007b783          	ld	a5,0(a5)
    80001900:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    80001904:	f8078ae3          	beqz	a5,80001898 <_ZN5RiscV20handleSupervisorTrapEv+0x278>
    80001908:	00d7b423          	sd	a3,8(a5)
    8000190c:	f8dff06f          	j	80001898 <_ZN5RiscV20handleSupervisorTrapEv+0x278>
                return -1;
    80001910:	fff00793          	li	a5,-1
    80001914:	f8dff06f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x280>
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg);
    80001918:	fd843503          	ld	a0,-40(s0)
    8000191c:	fe043583          	ld	a1,-32(s0)
    80001920:	fd043603          	ld	a2,-48(s0)
    80001924:	00000097          	auipc	ra,0x0
    80001928:	510080e7          	jalr	1296(ra) # 80001e34 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    8000192c:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001930:	04b43c23          	sd	a1,88(s0)
    80001934:	d8dff06f          	j	800016c0 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
    static int createThread(Body body, TCB** handle, void* arguments);

    static void thread_dispatch(){dispatch();}

    static int thread_exit(){
        running->setFinished(true);
    80001938:	00100593          	li	a1,1
    8000193c:	00004797          	auipc	a5,0x4
    80001940:	eac7b783          	ld	a5,-340(a5) # 800057e8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001944:	0007b503          	ld	a0,0(a5)
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	4d0080e7          	jalr	1232(ra) # 80001e18 <_ZN3TCB11setFinishedEb>
        dispatch();
    80001950:	00001097          	auipc	ra,0x1
    80001954:	824080e7          	jalr	-2012(ra) # 80002174 <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    80001958:	00000793          	li	a5,0
    8000195c:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    80001960:	04b43c23          	sd	a1,88(s0)
    80001964:	d5dff06f          	j	800016c0 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
    static void thread_dispatch(){dispatch();}
    80001968:	00001097          	auipc	ra,0x1
    8000196c:	80c080e7          	jalr	-2036(ra) # 80002174 <_ZN3TCB8dispatchEv>
    80001970:	d51ff06f          	j	800016c0 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001974:	00200793          	li	a5,2
    80001978:	1447b073          	csrc	sip,a5
}
    8000197c:	d55ff06f          	j	800016d0 <_ZN5RiscV20handleSupervisorTrapEv+0xb0>

0000000080001980 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80001980:	ff010113          	addi	sp,sp,-16
    80001984:	00813423          	sd	s0,8(sp)
    80001988:	01010413          	addi	s0,sp,16
    8000198c:	00100793          	li	a5,1
    80001990:	00f50863          	beq	a0,a5,800019a0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001994:	00813403          	ld	s0,8(sp)
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00008067          	ret
    800019a0:	000107b7          	lui	a5,0x10
    800019a4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800019a8:	fef596e3          	bne	a1,a5,80001994 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    800019ac:	00004797          	auipc	a5,0x4
    800019b0:	ea478793          	addi	a5,a5,-348 # 80005850 <_ZN9Scheduler19readyCoroutineQueueE>
    800019b4:	0007b023          	sd	zero,0(a5)
    800019b8:	0007b423          	sd	zero,8(a5)
    800019bc:	fd9ff06f          	j	80001994 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800019c0 <_ZN9Scheduler3getEv>:
{
    800019c0:	fe010113          	addi	sp,sp,-32
    800019c4:	00113c23          	sd	ra,24(sp)
    800019c8:	00813823          	sd	s0,16(sp)
    800019cc:	00913423          	sd	s1,8(sp)
    800019d0:	02010413          	addi	s0,sp,32
            head=tail=elem;
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    800019d4:	00004517          	auipc	a0,0x4
    800019d8:	e7c53503          	ld	a0,-388(a0) # 80005850 <_ZN9Scheduler19readyCoroutineQueueE>
    800019dc:	04050263          	beqz	a0,80001a20 <_ZN9Scheduler3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    800019e0:	00853783          	ld	a5,8(a0)
    800019e4:	00004717          	auipc	a4,0x4
    800019e8:	e6f73623          	sd	a5,-404(a4) # 80005850 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    800019ec:	02078463          	beqz	a5,80001a14 <_ZN9Scheduler3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    800019f0:	00053483          	ld	s1,0(a0)
        delete elem;
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	a20080e7          	jalr	-1504(ra) # 80002414 <_ZdlPv>
}
    800019fc:	00048513          	mv	a0,s1
    80001a00:	01813083          	ld	ra,24(sp)
    80001a04:	01013403          	ld	s0,16(sp)
    80001a08:	00813483          	ld	s1,8(sp)
    80001a0c:	02010113          	addi	sp,sp,32
    80001a10:	00008067          	ret
            tail = 0;
    80001a14:	00004797          	auipc	a5,0x4
    80001a18:	e407b223          	sd	zero,-444(a5) # 80005858 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a1c:	fd5ff06f          	j	800019f0 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80001a20:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80001a24:	fd9ff06f          	j	800019fc <_ZN9Scheduler3getEv+0x3c>

0000000080001a28 <_ZN9Scheduler3putEP3TCB>:
{
    80001a28:	ff010113          	addi	sp,sp,-16
    80001a2c:	00813423          	sd	s0,8(sp)
    80001a30:	01010413          	addi	s0,sp,16

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001a34:	00004797          	auipc	a5,0x4
    80001a38:	da47b783          	ld	a5,-604(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a3c:	0007b783          	ld	a5,0(a5)
    80001a40:	0c078a63          	beqz	a5,80001b14 <_ZN9Scheduler3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80001a44:	00004717          	auipc	a4,0x4
    80001a48:	d9473703          	ld	a4,-620(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a4c:	00073683          	ld	a3,0(a4)
    80001a50:	0006b683          	ld	a3,0(a3)
    80001a54:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001a58:	00073703          	ld	a4,0(a4)
    80001a5c:	00873603          	ld	a2,8(a4)
    80001a60:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001a64:	0107b703          	ld	a4,16(a5)
    80001a68:	03f00593          	li	a1,63
    80001a6c:	02e5f663          	bgeu	a1,a4,80001a98 <_ZN9Scheduler3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001a70:	fc070713          	addi	a4,a4,-64
    80001a74:	01800593          	li	a1,24
    80001a78:	02e5ec63          	bltu	a1,a4,80001ab0 <_ZN9Scheduler3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001a7c:	02060263          	beqz	a2,80001aa0 <_ZN9Scheduler3putEP3TCB+0x78>
    80001a80:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80001a84:	0007b703          	ld	a4,0(a5)
    80001a88:	08070663          	beqz	a4,80001b14 <_ZN9Scheduler3putEP3TCB+0xec>
    80001a8c:	0087b683          	ld	a3,8(a5)
    80001a90:	00d73423          	sd	a3,8(a4)
                return cur;
    80001a94:	0800006f          	j	80001b14 <_ZN9Scheduler3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001a98:	00068793          	mv	a5,a3
    80001a9c:	fa5ff06f          	j	80001a40 <_ZN9Scheduler3putEP3TCB+0x18>
                else fmem_head = cur->next;
    80001aa0:	00004717          	auipc	a4,0x4
    80001aa4:	d3873703          	ld	a4,-712(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001aa8:	00d73023          	sd	a3,0(a4)
    80001aac:	fd9ff06f          	j	80001a84 <_ZN9Scheduler3putEP3TCB+0x5c>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001ab0:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001ab4:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001ab8:	0407b023          	sd	zero,64(a5)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001abc:	0087b683          	ld	a3,8(a5)
    80001ac0:	08068063          	beqz	a3,80001b40 <_ZN9Scheduler3putEP3TCB+0x118>
    80001ac4:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001ac8:	0007b683          	ld	a3,0(a5)
    80001acc:	00068463          	beqz	a3,80001ad4 <_ZN9Scheduler3putEP3TCB+0xac>
    80001ad0:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001ad4:	0087b603          	ld	a2,8(a5)
    80001ad8:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001adc:	0007b683          	ld	a3,0(a5)
    80001ae0:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001ae4:	0107b783          	ld	a5,16(a5)
    80001ae8:	fc078793          	addi	a5,a5,-64
    80001aec:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001af0:	0c070693          	addi	a3,a4,192
    80001af4:	00004597          	auipc	a1,0x4
    80001af8:	ce45b583          	ld	a1,-796(a1) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001afc:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001b00:	00073583          	ld	a1,0(a4)
    80001b04:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001b08:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001b0c:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001b10:	00070793          	mv	a5,a4
        elem->data=data;
    80001b14:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80001b18:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001b1c:	00004717          	auipc	a4,0x4
    80001b20:	d3c73703          	ld	a4,-708(a4) # 80005858 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001b24:	02070863          	beqz	a4,80001b54 <_ZN9Scheduler3putEP3TCB+0x12c>
            tail->next=elem;
    80001b28:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001b2c:	00004717          	auipc	a4,0x4
    80001b30:	d2f73623          	sd	a5,-724(a4) # 80005858 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001b34:	00813403          	ld	s0,8(sp)
    80001b38:	01010113          	addi	sp,sp,16
    80001b3c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001b40:	0c070693          	addi	a3,a4,192
    80001b44:	00004617          	auipc	a2,0x4
    80001b48:	c9463603          	ld	a2,-876(a2) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b4c:	00d63023          	sd	a3,0(a2)
    80001b50:	f79ff06f          	j	80001ac8 <_ZN9Scheduler3putEP3TCB+0xa0>
            head=tail=elem;
    80001b54:	00004717          	auipc	a4,0x4
    80001b58:	cfc70713          	addi	a4,a4,-772 # 80005850 <_ZN9Scheduler19readyCoroutineQueueE>
    80001b5c:	00f73423          	sd	a5,8(a4)
    80001b60:	00f73023          	sd	a5,0(a4)
    80001b64:	fd1ff06f          	j	80001b34 <_ZN9Scheduler3putEP3TCB+0x10c>

0000000080001b68 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00113423          	sd	ra,8(sp)
    80001b70:	00813023          	sd	s0,0(sp)
    80001b74:	01010413          	addi	s0,sp,16
    80001b78:	000105b7          	lui	a1,0x10
    80001b7c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001b80:	00100513          	li	a0,1
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	dfc080e7          	jalr	-516(ra) # 80001980 <_Z41__static_initialization_and_destruction_0ii>
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret

0000000080001b9c <main>:
#include "../h/workers.hpp"
#include "../h/Print.hpp"
#include "../h/MemoryAllocation.hpp"
#include "../h/RiscV.hpp"
#include "../h/syscall_c.hpp"
int main(){
    80001b9c:	fc010113          	addi	sp,sp,-64
    80001ba0:	02113c23          	sd	ra,56(sp)
    80001ba4:	02813823          	sd	s0,48(sp)
    80001ba8:	02913423          	sd	s1,40(sp)
    80001bac:	03213023          	sd	s2,32(sp)
    80001bb0:	04010413          	addi	s0,sp,64
        if (!instance) {
    80001bb4:	00004797          	auipc	a5,0x4
    80001bb8:	c1c7b783          	ld	a5,-996(a5) # 800057d0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001bbc:	0007b783          	ld	a5,0(a5)
    80001bc0:	08078463          	beqz	a5,80001c48 <main+0xac>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    80001bc4:	00004797          	auipc	a5,0x4
    80001bc8:	c047b783          	ld	a5,-1020(a5) # 800057c8 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    80001bcc:	10579073          	csrw	stvec,a5
    //__asm__ volatile ("csrs sstatus, 0x2");
    TCB *threads[3];

    thread_create( &threads[0], nullptr, nullptr);
    80001bd0:	00000613          	li	a2,0
    80001bd4:	00000593          	li	a1,0
    80001bd8:	fc840513          	addi	a0,s0,-56
    80001bdc:	fffff097          	auipc	ra,0xfffff
    80001be0:	6a4080e7          	jalr	1700(ra) # 80001280 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running=threads[0];
    80001be4:	fc843703          	ld	a4,-56(s0)
    80001be8:	00004797          	auipc	a5,0x4
    80001bec:	c007b783          	ld	a5,-1024(a5) # 800057e8 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001bf0:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], workerBodyA,  nullptr); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    80001bf4:	00000613          	li	a2,0
    80001bf8:	00004597          	auipc	a1,0x4
    80001bfc:	be85b583          	ld	a1,-1048(a1) # 800057e0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c00:	fd040513          	addi	a0,s0,-48
    80001c04:	fffff097          	auipc	ra,0xfffff
    80001c08:	67c080e7          	jalr	1660(ra) # 80001280 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Thread A created\n");
    80001c0c:	00003517          	auipc	a0,0x3
    80001c10:	46c50513          	addi	a0,a0,1132 # 80005078 <CONSOLE_STATUS+0x68>
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	a98080e7          	jalr	-1384(ra) # 800026ac <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyB, nullptr); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    80001c1c:	00000613          	li	a2,0
    80001c20:	00004597          	auipc	a1,0x4
    80001c24:	bd85b583          	ld	a1,-1064(a1) # 800057f8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001c28:	fd840513          	addi	a0,s0,-40
    80001c2c:	fffff097          	auipc	ra,0xfffff
    80001c30:	654080e7          	jalr	1620(ra) # 80001280 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Thread B created\n");
    80001c34:	00003517          	auipc	a0,0x3
    80001c38:	45c50513          	addi	a0,a0,1116 # 80005090 <CONSOLE_STATUS+0x80>
    80001c3c:	00001097          	auipc	ra,0x1
    80001c40:	a70080e7          	jalr	-1424(ra) # 800026ac <_Z11printStringPKc>
    80001c44:	0480006f          	j	80001c8c <main+0xf0>
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80001c48:	00004797          	auipc	a5,0x4
    80001c4c:	b707b783          	ld	a5,-1168(a5) # 800057b8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001c50:	0007b783          	ld	a5,0(a5)
    80001c54:	00004697          	auipc	a3,0x4
    80001c58:	b846b683          	ld	a3,-1148(a3) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c5c:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80001c60:	00004717          	auipc	a4,0x4
    80001c64:	b9073703          	ld	a4,-1136(a4) # 800057f0 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001c68:	00073703          	ld	a4,0(a4)
    80001c6c:	40f70733          	sub	a4,a4,a5
    80001c70:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    80001c74:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80001c78:	0006b783          	ld	a5,0(a3)
    80001c7c:	0007b423          	sd	zero,8(a5)
            return instance;
    80001c80:	f45ff06f          	j	80001bc4 <main+0x28>

    //RiscV::ms_sstatus(RiscV::SSTATUS_SIE); //omogucava prekide, probaj i sa i bez toga, ali mislim da tebi nece trebati
    //__asm__ volatile ("csrs sstatus, 0x2");

    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
        TCB::yield();
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	46c080e7          	jalr	1132(ra) # 800020f0 <_ZN3TCB5yieldEv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
    80001c8c:	fd043503          	ld	a0,-48(s0)
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	16c080e7          	jalr	364(ra) # 80001dfc <_ZNK3TCB10isFinishedEv>
    80001c98:	fe0506e3          	beqz	a0,80001c84 <main+0xe8>
    80001c9c:	fd843503          	ld	a0,-40(s0)
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	15c080e7          	jalr	348(ra) # 80001dfc <_ZNK3TCB10isFinishedEv>
    80001ca8:	fc050ee3          	beqz	a0,80001c84 <main+0xe8>
    80001cac:	fc840913          	addi	s2,s0,-56
    80001cb0:	0740006f          	j	80001d24 <main+0x188>
            cur=nullptr;
    80001cb4:	00078713          	mv	a4,a5
    80001cb8:	0080006f          	j	80001cc0 <main+0x124>
    80001cbc:	00000713          	li	a4,0
                newSeg->next=nullptr;
    80001cc0:	0004b023          	sd	zero,0(s1)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001cc4:	04000793          	li	a5,64
    80001cc8:	00f4b823          	sd	a5,16(s1)
                newSeg->prev=cur;
    80001ccc:	00e4b423          	sd	a4,8(s1)
                if(cur) {
    80001cd0:	08070e63          	beqz	a4,80001d6c <main+0x1d0>
                    newSeg->next = cur->next;
    80001cd4:	00073783          	ld	a5,0(a4)
    80001cd8:	00f4b023          	sd	a5,0(s1)
                if(newSeg->next) {
    80001cdc:	0004b783          	ld	a5,0(s1)
    80001ce0:	00078463          	beqz	a5,80001ce8 <main+0x14c>
                    newSeg->next->prev=newSeg;
    80001ce4:	0097b423          	sd	s1,8(a5)
                if (cur) {
    80001ce8:	08070c63          	beqz	a4,80001d80 <main+0x1e4>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001cec:	00973023          	sd	s1,0(a4)
        if (!curr) return;
    80001cf0:	00048c63          	beqz	s1,80001d08 <main+0x16c>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001cf4:	0004b783          	ld	a5,0(s1)
    80001cf8:	00078863          	beqz	a5,80001d08 <main+0x16c>
    80001cfc:	0104b683          	ld	a3,16(s1)
    80001d00:	00d48633          	add	a2,s1,a3
    80001d04:	08c78663          	beq	a5,a2,80001d90 <main+0x1f4>
        if (!curr) return;
    80001d08:	00070c63          	beqz	a4,80001d20 <main+0x184>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001d0c:	00073783          	ld	a5,0(a4)
    80001d10:	00078863          	beqz	a5,80001d20 <main+0x184>
    80001d14:	01073683          	ld	a3,16(a4)
    80001d18:	00d70633          	add	a2,a4,a3
    80001d1c:	08c78a63          	beq	a5,a2,80001db0 <main+0x214>
    }


    for (auto &coroutine : threads){
    80001d20:	00890913          	addi	s2,s2,8
    80001d24:	fe040793          	addi	a5,s0,-32
    80001d28:	0af90463          	beq	s2,a5,80001dd0 <main+0x234>
        delete coroutine;
    80001d2c:	00093483          	ld	s1,0(s2)
    80001d30:	fe0488e3          	beqz	s1,80001d20 <main+0x184>
    ~TCB() { delete[] stack; }
    80001d34:	0084b503          	ld	a0,8(s1)
    80001d38:	00050663          	beqz	a0,80001d44 <main+0x1a8>
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	7e8080e7          	jalr	2024(ra) # 80002524 <_ZdaPv>
        if(!fmem_head || ptr < (char*)fmem_head)
    80001d44:	00004797          	auipc	a5,0x4
    80001d48:	a947b783          	ld	a5,-1388(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d4c:	0007b783          	ld	a5,0(a5)
    80001d50:	f60782e3          	beqz	a5,80001cb4 <main+0x118>
    80001d54:	f6f4e4e3          	bltu	s1,a5,80001cbc <main+0x120>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001d58:	00078713          	mv	a4,a5
    80001d5c:	0007b783          	ld	a5,0(a5)
    80001d60:	f6f480e3          	beq	s1,a5,80001cc0 <main+0x124>
    80001d64:	fe97eae3          	bltu	a5,s1,80001d58 <main+0x1bc>
    80001d68:	f59ff06f          	j	80001cc0 <main+0x124>
                    newSeg->next = fmem_head;
    80001d6c:	00004797          	auipc	a5,0x4
    80001d70:	a6c7b783          	ld	a5,-1428(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d74:	0007b783          	ld	a5,0(a5)
    80001d78:	00f4b023          	sd	a5,0(s1)
    80001d7c:	f61ff06f          	j	80001cdc <main+0x140>
                    fmem_head = newSeg;
    80001d80:	00004797          	auipc	a5,0x4
    80001d84:	a587b783          	ld	a5,-1448(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d88:	0097b023          	sd	s1,0(a5)
    80001d8c:	f65ff06f          	j	80001cf0 <main+0x154>
            curr->size += curr->next->size;
    80001d90:	0107b603          	ld	a2,16(a5)
    80001d94:	00c686b3          	add	a3,a3,a2
    80001d98:	00d4b823          	sd	a3,16(s1)
            curr->next = curr->next->next;
    80001d9c:	0007b783          	ld	a5,0(a5)
    80001da0:	00f4b023          	sd	a5,0(s1)
            if (curr->next) curr->next->prev = curr;
    80001da4:	f60782e3          	beqz	a5,80001d08 <main+0x16c>
    80001da8:	0097b423          	sd	s1,8(a5)
    80001dac:	f5dff06f          	j	80001d08 <main+0x16c>
            curr->size += curr->next->size;
    80001db0:	0107b603          	ld	a2,16(a5)
    80001db4:	00c686b3          	add	a3,a3,a2
    80001db8:	00d73823          	sd	a3,16(a4)
            curr->next = curr->next->next;
    80001dbc:	0007b783          	ld	a5,0(a5)
    80001dc0:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001dc4:	f4078ee3          	beqz	a5,80001d20 <main+0x184>
    80001dc8:	00e7b423          	sd	a4,8(a5)
            if(newSeg==nullptr){
    80001dcc:	f55ff06f          	j	80001d20 <main+0x184>
    }

    printString("finished\n");
    80001dd0:	00003517          	auipc	a0,0x3
    80001dd4:	2d850513          	addi	a0,a0,728 # 800050a8 <CONSOLE_STATUS+0x98>
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	8d4080e7          	jalr	-1836(ra) # 800026ac <_Z11printStringPKc>

    return 0;
    80001de0:	00000513          	li	a0,0
    80001de4:	03813083          	ld	ra,56(sp)
    80001de8:	03013403          	ld	s0,48(sp)
    80001dec:	02813483          	ld	s1,40(sp)
    80001df0:	02013903          	ld	s2,32(sp)
    80001df4:	04010113          	addi	sp,sp,64
    80001df8:	00008067          	ret

0000000080001dfc <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00813423          	sd	s0,8(sp)
    80001e04:	01010413          	addi	s0,sp,16
    return finished;
}
    80001e08:	02054503          	lbu	a0,32(a0)
    80001e0c:	00813403          	ld	s0,8(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80001e18:	ff010113          	addi	sp,sp,-16
    80001e1c:	00813423          	sd	s0,8(sp)
    80001e20:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    80001e24:	02b50023          	sb	a1,32(a0)
}
    80001e28:	00813403          	ld	s0,8(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments) {
    80001e34:	fe010113          	addi	sp,sp,-32
    80001e38:	00113c23          	sd	ra,24(sp)
    80001e3c:	00813823          	sd	s0,16(sp)
    80001e40:	00913423          	sd	s1,8(sp)
    80001e44:	02010413          	addi	s0,sp,32
    80001e48:	00058493          	mv	s1,a1
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001e4c:	00004797          	auipc	a5,0x4
    80001e50:	98c7b783          	ld	a5,-1652(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e54:	0007b783          	ld	a5,0(a5)
    80001e58:	0c078a63          	beqz	a5,80001f2c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
            cur->next=fmem_head->next;
    80001e5c:	00004717          	auipc	a4,0x4
    80001e60:	97c73703          	ld	a4,-1668(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e64:	00073683          	ld	a3,0(a4)
    80001e68:	0006b683          	ld	a3,0(a3)
    80001e6c:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001e70:	00073703          	ld	a4,0(a4)
    80001e74:	00873583          	ld	a1,8(a4)
    80001e78:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80001e7c:	0107b703          	ld	a4,16(a5)
    80001e80:	07f00813          	li	a6,127
    80001e84:	02e87663          	bgeu	a6,a4,80001eb0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80001e88:	f8070713          	addi	a4,a4,-128
    80001e8c:	01800813          	li	a6,24
    80001e90:	02e86c63          	bltu	a6,a4,80001ec8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80001e94:	02058263          	beqz	a1,80001eb8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x84>
    80001e98:	00d5b023          	sd	a3,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    80001e9c:	0007b703          	ld	a4,0(a5)
    80001ea0:	08070663          	beqz	a4,80001f2c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
    80001ea4:	0087b683          	ld	a3,8(a5)
    80001ea8:	00d73423          	sd	a3,8(a4)
                return cur;
    80001eac:	0800006f          	j	80001f2c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001eb0:	00068793          	mv	a5,a3
    80001eb4:	fa5ff06f          	j	80001e58 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24>
                else fmem_head = cur->next;
    80001eb8:	00004717          	auipc	a4,0x4
    80001ebc:	92073703          	ld	a4,-1760(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ec0:	00d73023          	sd	a3,0(a4)
    80001ec4:	fd9ff06f          	j	80001e9c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001ec8:	08078713          	addi	a4,a5,128
                newfrgm->prev=nullptr;
    80001ecc:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001ed0:	0807b023          	sd	zero,128(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001ed4:	0087b683          	ld	a3,8(a5)
    80001ed8:	0c068c63          	beqz	a3,80001fb0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x17c>
    80001edc:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001ee0:	0007b683          	ld	a3,0(a5)
    80001ee4:	00068463          	beqz	a3,80001eec <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xb8>
    80001ee8:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001eec:	0087b583          	ld	a1,8(a5)
    80001ef0:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    80001ef4:	0007b683          	ld	a3,0(a5)
    80001ef8:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001efc:	0107b783          	ld	a5,16(a5)
    80001f00:	f8078793          	addi	a5,a5,-128
    80001f04:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001f08:	0c070693          	addi	a3,a4,192
    80001f0c:	00004817          	auipc	a6,0x4
    80001f10:	8cc83803          	ld	a6,-1844(a6) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f14:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80001f18:	00073803          	ld	a6,0(a4)
    80001f1c:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001f20:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    80001f24:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001f28:	00070793          	mv	a5,a4
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    80001f2c:	00f4b023          	sd	a5,0(s1)
    (*handle)->body=body;
    80001f30:	00a7b023          	sd	a0,0(a5)
    (*handle)->arguments=arguments;
    80001f34:	0004b783          	ld	a5,0(s1)
    80001f38:	02c7b423          	sd	a2,40(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    80001f3c:	12050663          	beqz	a0,80002068 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x234>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001f40:	00004797          	auipc	a5,0x4
    80001f44:	8987b783          	ld	a5,-1896(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f48:	0007b783          	ld	a5,0(a5)
    80001f4c:	12078063          	beqz	a5,8000206c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
            cur->next=fmem_head->next;
    80001f50:	00004717          	auipc	a4,0x4
    80001f54:	88873703          	ld	a4,-1912(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f58:	00073683          	ld	a3,0(a4)
    80001f5c:	0006b603          	ld	a2,0(a3)
    80001f60:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    80001f64:	00073703          	ld	a4,0(a4)
    80001f68:	00873583          	ld	a1,8(a4)
    80001f6c:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80001f70:	0107b703          	ld	a4,16(a5)
    80001f74:	000016b7          	lui	a3,0x1
    80001f78:	03f68693          	addi	a3,a3,63 # 103f <_entry-0x7fffefc1>
    80001f7c:	04e6f463          	bgeu	a3,a4,80001fc4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x190>
            if (cur->size-size<=sizeof(FreeMem)){
    80001f80:	fffff6b7          	lui	a3,0xfffff
    80001f84:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff84f0>
    80001f88:	00d70733          	add	a4,a4,a3
    80001f8c:	01800693          	li	a3,24
    80001f90:	04e6e663          	bltu	a3,a4,80001fdc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1a8>
                if (cur->prev) cur->prev->next = cur->next;
    80001f94:	02058c63          	beqz	a1,80001fcc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x198>
    80001f98:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    80001f9c:	0007b703          	ld	a4,0(a5)
    80001fa0:	0c070663          	beqz	a4,8000206c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
    80001fa4:	0087b683          	ld	a3,8(a5)
    80001fa8:	00d73423          	sd	a3,8(a4)
                return cur;
    80001fac:	0c00006f          	j	8000206c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001fb0:	0c070693          	addi	a3,a4,192
    80001fb4:	00004597          	auipc	a1,0x4
    80001fb8:	8245b583          	ld	a1,-2012(a1) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fbc:	00d5b023          	sd	a3,0(a1)
    80001fc0:	f21ff06f          	j	80001ee0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xac>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001fc4:	00060793          	mv	a5,a2
    80001fc8:	f85ff06f          	j	80001f4c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x118>
                else fmem_head = cur->next;
    80001fcc:	00004717          	auipc	a4,0x4
    80001fd0:	80c73703          	ld	a4,-2036(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fd4:	00c73023          	sd	a2,0(a4)
    80001fd8:	fc5ff06f          	j	80001f9c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x168>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001fdc:	00001737          	lui	a4,0x1
    80001fe0:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    80001fe4:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    80001fe8:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001fec:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001ff0:	0087b683          	ld	a3,8(a5)
    80001ff4:	06068063          	beqz	a3,80002054 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x220>
    80001ff8:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001ffc:	0007b683          	ld	a3,0(a5)
    80002000:	00068463          	beqz	a3,80002008 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1d4>
    80002004:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002008:	0087b603          	ld	a2,8(a5)
    8000200c:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002010:	0007b683          	ld	a3,0(a5)
    80002014:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002018:	0107b783          	ld	a5,16(a5)
    8000201c:	fffff6b7          	lui	a3,0xfffff
    80002020:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff84f0>
    80002024:	00d787b3          	add	a5,a5,a3
    80002028:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    8000202c:	0c070693          	addi	a3,a4,192
    80002030:	00003597          	auipc	a1,0x3
    80002034:	7a85b583          	ld	a1,1960(a1) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002038:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    8000203c:	00073583          	ld	a1,0(a4)
    80002040:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002044:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002048:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    8000204c:	00070793          	mv	a5,a4
    80002050:	01c0006f          	j	8000206c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002054:	0c070693          	addi	a3,a4,192
    80002058:	00003617          	auipc	a2,0x3
    8000205c:	78063603          	ld	a2,1920(a2) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002060:	00d63023          	sd	a3,0(a2)
    80002064:	f99ff06f          	j	80001ffc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1c8>
    80002068:	00000793          	li	a5,0
    8000206c:	0004b703          	ld	a4,0(s1)
    80002070:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80002074:	06050263          	beqz	a0,800020d8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2a4>
    80002078:	00000717          	auipc	a4,0x0
    8000207c:	09c70713          	addi	a4,a4,156 # 80002114 <_ZN3TCB13threadWrapperEv>
    80002080:	0004b783          	ld	a5,0(s1)
    80002084:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80002088:	0004b703          	ld	a4,0(s1)
    8000208c:	00873783          	ld	a5,8(a4)
    80002090:	04078863          	beqz	a5,800020e0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2ac>
    80002094:	000086b7          	lui	a3,0x8
    80002098:	00d787b3          	add	a5,a5,a3
    8000209c:	00f73c23          	sd	a5,24(a4)
    (*handle)->finished=false;
    800020a0:	0004b783          	ld	a5,0(s1)
    800020a4:	02078023          	sb	zero,32(a5)
    if (body != nullptr) { Scheduler::put(*handle); }
    800020a8:	00050863          	beqz	a0,800020b8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x284>
    800020ac:	0004b503          	ld	a0,0(s1)
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	978080e7          	jalr	-1672(ra) # 80001a28 <_ZN9Scheduler3putEP3TCB>
    if(*handle==nullptr){
    800020b8:	0004b783          	ld	a5,0(s1)
    800020bc:	02078663          	beqz	a5,800020e8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2b4>
        return -1;
    }else{return 0;}
    800020c0:	00000513          	li	a0,0
}
    800020c4:	01813083          	ld	ra,24(sp)
    800020c8:	01013403          	ld	s0,16(sp)
    800020cc:	00813483          	ld	s1,8(sp)
    800020d0:	02010113          	addi	sp,sp,32
    800020d4:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    800020d8:	00000713          	li	a4,0
    800020dc:	fa5ff06f          	j	80002080 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24c>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    800020e0:	00000793          	li	a5,0
    800020e4:	fb9ff06f          	j	8000209c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x268>
        return -1;
    800020e8:	fff00513          	li	a0,-1
    800020ec:	fd9ff06f          	j	800020c4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x290>

00000000800020f0 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00813423          	sd	s0,8(sp)
    800020f8:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    800020fc:	01300793          	li	a5,19
    80002100:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80002104:	00000073          	ecall

};
    80002108:	00813403          	ld	s0,8(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80002114:	fe010113          	addi	sp,sp,-32
    80002118:	00113c23          	sd	ra,24(sp)
    8000211c:	00813823          	sd	s0,16(sp)
    80002120:	00913423          	sd	s1,8(sp)
    80002124:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    80002128:	fffff097          	auipc	ra,0xfffff
    8000212c:	4d8080e7          	jalr	1240(ra) # 80001600 <_ZN5RiscV10popSppSpieEv>
    running->body(running->arguments);
    80002130:	00003497          	auipc	s1,0x3
    80002134:	73048493          	addi	s1,s1,1840 # 80005860 <_ZN3TCB7runningE>
    80002138:	0004b783          	ld	a5,0(s1)
    8000213c:	0007b703          	ld	a4,0(a5)
    80002140:	0287b503          	ld	a0,40(a5)
    80002144:	000700e7          	jalr	a4
    running->setFinished(true);
    80002148:	00100593          	li	a1,1
    8000214c:	0004b503          	ld	a0,0(s1)
    80002150:	00000097          	auipc	ra,0x0
    80002154:	cc8080e7          	jalr	-824(ra) # 80001e18 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80002158:	00000097          	auipc	ra,0x0
    8000215c:	f98080e7          	jalr	-104(ra) # 800020f0 <_ZN3TCB5yieldEv>
}
    80002160:	01813083          	ld	ra,24(sp)
    80002164:	01013403          	ld	s0,16(sp)
    80002168:	00813483          	ld	s1,8(sp)
    8000216c:	02010113          	addi	sp,sp,32
    80002170:	00008067          	ret

0000000080002174 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002174:	fe010113          	addi	sp,sp,-32
    80002178:	00113c23          	sd	ra,24(sp)
    8000217c:	00813823          	sd	s0,16(sp)
    80002180:	00913423          	sd	s1,8(sp)
    80002184:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002188:	00003497          	auipc	s1,0x3
    8000218c:	6d84b483          	ld	s1,1752(s1) # 80005860 <_ZN3TCB7runningE>
    if (!old->isFinished()) {
    80002190:	00048513          	mv	a0,s1
    80002194:	00000097          	auipc	ra,0x0
    80002198:	c68080e7          	jalr	-920(ra) # 80001dfc <_ZNK3TCB10isFinishedEv>
    8000219c:	02050c63          	beqz	a0,800021d4 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    800021a0:	00000097          	auipc	ra,0x0
    800021a4:	820080e7          	jalr	-2016(ra) # 800019c0 <_ZN9Scheduler3getEv>
    800021a8:	00003797          	auipc	a5,0x3
    800021ac:	6aa7bc23          	sd	a0,1720(a5) # 80005860 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800021b0:	01050593          	addi	a1,a0,16
    800021b4:	01048513          	addi	a0,s1,16
    800021b8:	fffff097          	auipc	ra,0xfffff
    800021bc:	058080e7          	jalr	88(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800021c0:	01813083          	ld	ra,24(sp)
    800021c4:	01013403          	ld	s0,16(sp)
    800021c8:	00813483          	ld	s1,8(sp)
    800021cc:	02010113          	addi	sp,sp,32
    800021d0:	00008067          	ret
        Scheduler::put(old);
    800021d4:	00048513          	mv	a0,s1
    800021d8:	00000097          	auipc	ra,0x0
    800021dc:	850080e7          	jalr	-1968(ra) # 80001a28 <_ZN9Scheduler3putEP3TCB>
    800021e0:	fc1ff06f          	j	800021a0 <_ZN3TCB8dispatchEv+0x2c>

00000000800021e4 <_Znwm>:
#include "../h/MemoryAllocation.hpp"
#include "../h/syscall_c.hpp"

//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00813423          	sd	s0,8(sp)
    800021ec:	01010413          	addi	s0,sp,16

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800021f0:	05750793          	addi	a5,a0,87
    800021f4:	0067d793          	srli	a5,a5,0x6
    800021f8:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    800021fc:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002200:	00003717          	auipc	a4,0x3
    80002204:	5d873703          	ld	a4,1496(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002208:	00073503          	ld	a0,0(a4)
    8000220c:	0c050863          	beqz	a0,800022dc <_Znwm+0xf8>
            cur->next=fmem_head->next;
    80002210:	00003717          	auipc	a4,0x3
    80002214:	5c873703          	ld	a4,1480(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002218:	00073683          	ld	a3,0(a4)
    8000221c:	0006b683          	ld	a3,0(a3) # 8000 <_entry-0x7fff8000>
    80002220:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80002224:	00073703          	ld	a4,0(a4)
    80002228:	00873603          	ld	a2,8(a4)
    8000222c:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80002230:	01053703          	ld	a4,16(a0)
    80002234:	02f76663          	bltu	a4,a5,80002260 <_Znwm+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002238:	40f70733          	sub	a4,a4,a5
    8000223c:	01800593          	li	a1,24
    80002240:	02e5ec63          	bltu	a1,a4,80002278 <_Znwm+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002244:	02060263          	beqz	a2,80002268 <_Znwm+0x84>
    80002248:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    8000224c:	00053783          	ld	a5,0(a0)
    80002250:	08078663          	beqz	a5,800022dc <_Znwm+0xf8>
    80002254:	00853703          	ld	a4,8(a0)
    80002258:	00e7b423          	sd	a4,8(a5)
                return cur;
    8000225c:	0800006f          	j	800022dc <_Znwm+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002260:	00068513          	mv	a0,a3
    80002264:	fa9ff06f          	j	8000220c <_Znwm+0x28>
                else fmem_head = cur->next;
    80002268:	00003797          	auipc	a5,0x3
    8000226c:	5707b783          	ld	a5,1392(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002270:	00d7b023          	sd	a3,0(a5)
    80002274:	fd9ff06f          	j	8000224c <_Znwm+0x68>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002278:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    8000227c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002280:	00073023          	sd	zero,0(a4)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002284:	00853683          	ld	a3,8(a0)
    80002288:	06068063          	beqz	a3,800022e8 <_Znwm+0x104>
    8000228c:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002290:	00053683          	ld	a3,0(a0)
    80002294:	00068463          	beqz	a3,8000229c <_Znwm+0xb8>
    80002298:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    8000229c:	00853603          	ld	a2,8(a0)
    800022a0:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800022a4:	00053683          	ld	a3,0(a0)
    800022a8:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800022ac:	01053683          	ld	a3,16(a0)
    800022b0:	40f687b3          	sub	a5,a3,a5
    800022b4:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800022b8:	0c070693          	addi	a3,a4,192
    800022bc:	00003597          	auipc	a1,0x3
    800022c0:	51c5b583          	ld	a1,1308(a1) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022c4:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800022c8:	00073583          	ld	a1,0(a4)
    800022cc:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    800022d0:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800022d4:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    800022d8:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}
    800022dc:	00813403          	ld	s0,8(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800022e8:	0c070693          	addi	a3,a4,192
    800022ec:	00003617          	auipc	a2,0x3
    800022f0:	4ec63603          	ld	a2,1260(a2) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022f4:	00d63023          	sd	a3,0(a2)
    800022f8:	f99ff06f          	j	80002290 <_Znwm+0xac>

00000000800022fc <_Znam>:

void *operator new[](uint64 n){
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00813423          	sd	s0,8(sp)
    80002304:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002308:	05750793          	addi	a5,a0,87
    8000230c:	0067d793          	srli	a5,a5,0x6
    80002310:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80002314:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002318:	00003717          	auipc	a4,0x3
    8000231c:	4c073703          	ld	a4,1216(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002320:	00073503          	ld	a0,0(a4)
    80002324:	0c050863          	beqz	a0,800023f4 <_Znam+0xf8>
            cur->next=fmem_head->next;
    80002328:	00003717          	auipc	a4,0x3
    8000232c:	4b073703          	ld	a4,1200(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002330:	00073683          	ld	a3,0(a4)
    80002334:	0006b683          	ld	a3,0(a3)
    80002338:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    8000233c:	00073703          	ld	a4,0(a4)
    80002340:	00873603          	ld	a2,8(a4)
    80002344:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80002348:	01053703          	ld	a4,16(a0)
    8000234c:	02f76663          	bltu	a4,a5,80002378 <_Znam+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002350:	40f70733          	sub	a4,a4,a5
    80002354:	01800593          	li	a1,24
    80002358:	02e5ec63          	bltu	a1,a4,80002390 <_Znam+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    8000235c:	02060263          	beqz	a2,80002380 <_Znam+0x84>
    80002360:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80002364:	00053783          	ld	a5,0(a0)
    80002368:	08078663          	beqz	a5,800023f4 <_Znam+0xf8>
    8000236c:	00853703          	ld	a4,8(a0)
    80002370:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002374:	0800006f          	j	800023f4 <_Znam+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002378:	00068513          	mv	a0,a3
    8000237c:	fa9ff06f          	j	80002324 <_Znam+0x28>
                else fmem_head = cur->next;
    80002380:	00003797          	auipc	a5,0x3
    80002384:	4587b783          	ld	a5,1112(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002388:	00d7b023          	sd	a3,0(a5)
    8000238c:	fd9ff06f          	j	80002364 <_Znam+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002390:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80002394:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002398:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    8000239c:	00853683          	ld	a3,8(a0)
    800023a0:	06068063          	beqz	a3,80002400 <_Znam+0x104>
    800023a4:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800023a8:	00053683          	ld	a3,0(a0)
    800023ac:	00068463          	beqz	a3,800023b4 <_Znam+0xb8>
    800023b0:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800023b4:	00853603          	ld	a2,8(a0)
    800023b8:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800023bc:	00053683          	ld	a3,0(a0)
    800023c0:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800023c4:	01053683          	ld	a3,16(a0)
    800023c8:	40f687b3          	sub	a5,a3,a5
    800023cc:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800023d0:	0c070693          	addi	a3,a4,192
    800023d4:	00003597          	auipc	a1,0x3
    800023d8:	4045b583          	ld	a1,1028(a1) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023dc:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800023e0:	00073583          	ld	a1,0(a4)
    800023e4:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    800023e8:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800023ec:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800023f0:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
}
    800023f4:	00813403          	ld	s0,8(sp)
    800023f8:	01010113          	addi	sp,sp,16
    800023fc:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002400:	0c070693          	addi	a3,a4,192
    80002404:	00003617          	auipc	a2,0x3
    80002408:	3d463603          	ld	a2,980(a2) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000240c:	00d63023          	sd	a3,0(a2)
    80002410:	f99ff06f          	j	800023a8 <_Znam+0xac>

0000000080002414 <_ZdlPv>:

void operator delete(void *p) noexcept {
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00813423          	sd	s0,8(sp)
    8000241c:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002420:	00003797          	auipc	a5,0x3
    80002424:	3b87b783          	ld	a5,952(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002428:	0007b703          	ld	a4,0(a5)
    8000242c:	00070e63          	beqz	a4,80002448 <_ZdlPv+0x34>
    80002430:	02e56063          	bltu	a0,a4,80002450 <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002434:	00070793          	mv	a5,a4
    80002438:	00073703          	ld	a4,0(a4)
    8000243c:	00e50c63          	beq	a0,a4,80002454 <_ZdlPv+0x40>
    80002440:	fea76ae3          	bltu	a4,a0,80002434 <_ZdlPv+0x20>
    80002444:	0100006f          	j	80002454 <_ZdlPv+0x40>
            cur=nullptr;
    80002448:	00070793          	mv	a5,a4
    8000244c:	0080006f          	j	80002454 <_ZdlPv+0x40>
    80002450:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80002454:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002458:	04000713          	li	a4,64
    8000245c:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002460:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80002464:	04078e63          	beqz	a5,800024c0 <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    80002468:	0007b703          	ld	a4,0(a5)
    8000246c:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002470:	00053703          	ld	a4,0(a0)
    80002474:	00070463          	beqz	a4,8000247c <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    80002478:	00a73423          	sd	a0,8(a4)
                if (cur) {
    8000247c:	04078c63          	beqz	a5,800024d4 <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002480:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002484:	00050c63          	beqz	a0,8000249c <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002488:	00053703          	ld	a4,0(a0)
    8000248c:	00070863          	beqz	a4,8000249c <_ZdlPv+0x88>
    80002490:	01053683          	ld	a3,16(a0)
    80002494:	00d50633          	add	a2,a0,a3
    80002498:	04c70663          	beq	a4,a2,800024e4 <_ZdlPv+0xd0>
        if (!curr) return;
    8000249c:	00078c63          	beqz	a5,800024b4 <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800024a0:	0007b703          	ld	a4,0(a5)
    800024a4:	00070863          	beqz	a4,800024b4 <_ZdlPv+0xa0>
    800024a8:	0107b683          	ld	a3,16(a5)
    800024ac:	00d78633          	add	a2,a5,a3
    800024b0:	04c70a63          	beq	a4,a2,80002504 <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    800024b4:	00813403          	ld	s0,8(sp)
    800024b8:	01010113          	addi	sp,sp,16
    800024bc:	00008067          	ret
                    newSeg->next = fmem_head;
    800024c0:	00003717          	auipc	a4,0x3
    800024c4:	31873703          	ld	a4,792(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024c8:	00073703          	ld	a4,0(a4)
    800024cc:	00e53023          	sd	a4,0(a0)
    800024d0:	fa1ff06f          	j	80002470 <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    800024d4:	00003717          	auipc	a4,0x3
    800024d8:	30473703          	ld	a4,772(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024dc:	00a73023          	sd	a0,0(a4)
    800024e0:	fa5ff06f          	j	80002484 <_ZdlPv+0x70>
            curr->size += curr->next->size;
    800024e4:	01073603          	ld	a2,16(a4)
    800024e8:	00c686b3          	add	a3,a3,a2
    800024ec:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    800024f0:	00073703          	ld	a4,0(a4)
    800024f4:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    800024f8:	fa0702e3          	beqz	a4,8000249c <_ZdlPv+0x88>
    800024fc:	00a73423          	sd	a0,8(a4)
    80002500:	f9dff06f          	j	8000249c <_ZdlPv+0x88>
            curr->size += curr->next->size;
    80002504:	01073603          	ld	a2,16(a4)
    80002508:	00c686b3          	add	a3,a3,a2
    8000250c:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002510:	00073703          	ld	a4,0(a4)
    80002514:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80002518:	f8070ee3          	beqz	a4,800024b4 <_ZdlPv+0xa0>
    8000251c:	00f73423          	sd	a5,8(a4)
    80002520:	f95ff06f          	j	800024b4 <_ZdlPv+0xa0>

0000000080002524 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    80002524:	ff010113          	addi	sp,sp,-16
    80002528:	00813423          	sd	s0,8(sp)
    8000252c:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002530:	00003797          	auipc	a5,0x3
    80002534:	2a87b783          	ld	a5,680(a5) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002538:	0007b703          	ld	a4,0(a5)
    8000253c:	00070e63          	beqz	a4,80002558 <_ZdaPv+0x34>
    80002540:	02e56063          	bltu	a0,a4,80002560 <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002544:	00070793          	mv	a5,a4
    80002548:	00073703          	ld	a4,0(a4)
    8000254c:	00e50c63          	beq	a0,a4,80002564 <_ZdaPv+0x40>
    80002550:	fea76ae3          	bltu	a4,a0,80002544 <_ZdaPv+0x20>
    80002554:	0100006f          	j	80002564 <_ZdaPv+0x40>
            cur=nullptr;
    80002558:	00070793          	mv	a5,a4
    8000255c:	0080006f          	j	80002564 <_ZdaPv+0x40>
    80002560:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80002564:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002568:	04000713          	li	a4,64
    8000256c:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002570:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80002574:	04078e63          	beqz	a5,800025d0 <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    80002578:	0007b703          	ld	a4,0(a5)
    8000257c:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002580:	00053703          	ld	a4,0(a0)
    80002584:	00070463          	beqz	a4,8000258c <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    80002588:	00a73423          	sd	a0,8(a4)
                if (cur) {
    8000258c:	04078c63          	beqz	a5,800025e4 <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002590:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002594:	00050c63          	beqz	a0,800025ac <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002598:	00053703          	ld	a4,0(a0)
    8000259c:	00070863          	beqz	a4,800025ac <_ZdaPv+0x88>
    800025a0:	01053683          	ld	a3,16(a0)
    800025a4:	00d50633          	add	a2,a0,a3
    800025a8:	04c70663          	beq	a4,a2,800025f4 <_ZdaPv+0xd0>
        if (!curr) return;
    800025ac:	00078c63          	beqz	a5,800025c4 <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800025b0:	0007b703          	ld	a4,0(a5)
    800025b4:	00070863          	beqz	a4,800025c4 <_ZdaPv+0xa0>
    800025b8:	0107b683          	ld	a3,16(a5)
    800025bc:	00d78633          	add	a2,a5,a3
    800025c0:	04c70a63          	beq	a4,a2,80002614 <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
    800025c4:	00813403          	ld	s0,8(sp)
    800025c8:	01010113          	addi	sp,sp,16
    800025cc:	00008067          	ret
                    newSeg->next = fmem_head;
    800025d0:	00003717          	auipc	a4,0x3
    800025d4:	20873703          	ld	a4,520(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025d8:	00073703          	ld	a4,0(a4)
    800025dc:	00e53023          	sd	a4,0(a0)
    800025e0:	fa1ff06f          	j	80002580 <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    800025e4:	00003717          	auipc	a4,0x3
    800025e8:	1f473703          	ld	a4,500(a4) # 800057d8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025ec:	00a73023          	sd	a0,0(a4)
    800025f0:	fa5ff06f          	j	80002594 <_ZdaPv+0x70>
            curr->size += curr->next->size;
    800025f4:	01073603          	ld	a2,16(a4)
    800025f8:	00c686b3          	add	a3,a3,a2
    800025fc:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80002600:	00073703          	ld	a4,0(a4)
    80002604:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80002608:	fa0702e3          	beqz	a4,800025ac <_ZdaPv+0x88>
    8000260c:	00a73423          	sd	a0,8(a4)
    80002610:	f9dff06f          	j	800025ac <_ZdaPv+0x88>
            curr->size += curr->next->size;
    80002614:	01073603          	ld	a2,16(a4)
    80002618:	00c686b3          	add	a3,a3,a2
    8000261c:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002620:	00073703          	ld	a4,0(a4)
    80002624:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80002628:	f8070ee3          	beqz	a4,800025c4 <_ZdaPv+0xa0>
    8000262c:	00f73423          	sd	a5,8(a4)
    80002630:	f95ff06f          	j	800025c4 <_ZdaPv+0xa0>

0000000080002634 <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00813423          	sd	s0,8(sp)
    8000263c:	01010413          	addi	s0,sp,16
    80002640:	00100793          	li	a5,1
    80002644:	00f50863          	beq	a0,a5,80002654 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002648:	00813403          	ld	s0,8(sp)
    8000264c:	01010113          	addi	sp,sp,16
    80002650:	00008067          	ret
    80002654:	000107b7          	lui	a5,0x10
    80002658:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000265c:	fef596e3          	bne	a1,a5,80002648 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002660:	00003797          	auipc	a5,0x3
    80002664:	1587b783          	ld	a5,344(a5) # 800057b8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002668:	0007b783          	ld	a5,0(a5)
    8000266c:	00003717          	auipc	a4,0x3
    80002670:	20f73223          	sd	a5,516(a4) # 80005870 <_ZN16MemoryAllocation9fmem_headE>
    80002674:	fd5ff06f          	j	80002648 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002678 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    80002678:	ff010113          	addi	sp,sp,-16
    8000267c:	00113423          	sd	ra,8(sp)
    80002680:	00813023          	sd	s0,0(sp)
    80002684:	01010413          	addi	s0,sp,16
    80002688:	000105b7          	lui	a1,0x10
    8000268c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002690:	00100513          	li	a0,1
    80002694:	00000097          	auipc	ra,0x0
    80002698:	fa0080e7          	jalr	-96(ra) # 80002634 <_Z41__static_initialization_and_destruction_0ii>
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_Z11printStringPKc>:

#include "../h/Print.hpp"
#include "../lib/console.h"
#include "../h/RiscV.hpp"
//promenjeni print string i integer na vezbama 2, 1:10:00 tu negde, da bi se onemogucili prekidi u samoj niti
void printString(char const *string){
    800026ac:	fe010113          	addi	sp,sp,-32
    800026b0:	00113c23          	sd	ra,24(sp)
    800026b4:	00813823          	sd	s0,16(sp)
    800026b8:	00913423          	sd	s1,8(sp)
    800026bc:	01213023          	sd	s2,0(sp)
    800026c0:	02010413          	addi	s0,sp,32
    800026c4:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    800026c8:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    800026cc:	00200793          	li	a5,2
    800026d0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = RiscV::r_sstatus();
    RiscV::mc_sstatus(RiscV::SSTATUS_SIE);
    while(*string!='\0'){
    800026d4:	0004c503          	lbu	a0,0(s1)
    800026d8:	00050a63          	beqz	a0,800026ec <_Z11printStringPKc+0x40>
        __putc(*string);
    800026dc:	00002097          	auipc	ra,0x2
    800026e0:	1b0080e7          	jalr	432(ra) # 8000488c <__putc>
        string++;
    800026e4:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    800026e8:	fedff06f          	j	800026d4 <_Z11printStringPKc+0x28>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    800026ec:	0009091b          	sext.w	s2,s2
    800026f0:	00297913          	andi	s2,s2,2
    800026f4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    800026f8:	10092073          	csrs	sstatus,s2
}
    800026fc:	01813083          	ld	ra,24(sp)
    80002700:	01013403          	ld	s0,16(sp)
    80002704:	00813483          	ld	s1,8(sp)
    80002708:	00013903          	ld	s2,0(sp)
    8000270c:	02010113          	addi	sp,sp,32
    80002710:	00008067          	ret

0000000080002714 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    80002714:	fd010113          	addi	sp,sp,-48
    80002718:	02113423          	sd	ra,40(sp)
    8000271c:	02813023          	sd	s0,32(sp)
    80002720:	00913c23          	sd	s1,24(sp)
    80002724:	01213823          	sd	s2,16(sp)
    80002728:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    8000272c:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80002730:	00200793          	li	a5,2
    80002734:	1007b073          	csrc	sstatus,a5
    neg=0;
    if(integer<0){
        neg=1;
        x=-integer;
    }else{
        x=integer;
    80002738:	0005051b          	sext.w	a0,a0
    }

    i=0;
    8000273c:	00000493          	li	s1,0
    do {
        buf[i++] = digits [x%10];
    80002740:	00a00613          	li	a2,10
    80002744:	02c5773b          	remuw	a4,a0,a2
    80002748:	02071693          	slli	a3,a4,0x20
    8000274c:	0206d693          	srli	a3,a3,0x20
    80002750:	00003717          	auipc	a4,0x3
    80002754:	96870713          	addi	a4,a4,-1688 # 800050b8 <_ZZ12printIntegermE6digits>
    80002758:	00d70733          	add	a4,a4,a3
    8000275c:	00074703          	lbu	a4,0(a4)
    80002760:	fe040693          	addi	a3,s0,-32
    80002764:	009687b3          	add	a5,a3,s1
    80002768:	0014849b          	addiw	s1,s1,1
    8000276c:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002770:	0005071b          	sext.w	a4,a0
    80002774:	02c5553b          	divuw	a0,a0,a2
    80002778:	00900793          	li	a5,9
    8000277c:	fce7e2e3          	bltu	a5,a4,80002740 <_Z12printIntegerm+0x2c>
    if(neg) buf[i++] = '-';

    while(--i >= 0){
    80002780:	fff4849b          	addiw	s1,s1,-1
    80002784:	0004ce63          	bltz	s1,800027a0 <_Z12printIntegerm+0x8c>
        __putc(buf[i]);
    80002788:	fe040793          	addi	a5,s0,-32
    8000278c:	009787b3          	add	a5,a5,s1
    80002790:	ff07c503          	lbu	a0,-16(a5)
    80002794:	00002097          	auipc	ra,0x2
    80002798:	0f8080e7          	jalr	248(ra) # 8000488c <__putc>
    8000279c:	fe5ff06f          	j	80002780 <_Z12printIntegerm+0x6c>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    800027a0:	0009091b          	sext.w	s2,s2
    800027a4:	00297913          	andi	s2,s2,2
    800027a8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    800027ac:	10092073          	csrs	sstatus,s2
    800027b0:	02813083          	ld	ra,40(sp)
    800027b4:	02013403          	ld	s0,32(sp)
    800027b8:	01813483          	ld	s1,24(sp)
    800027bc:	01013903          	ld	s2,16(sp)
    800027c0:	03010113          	addi	sp,sp,48
    800027c4:	00008067          	ret

00000000800027c8 <start>:
    800027c8:	ff010113          	addi	sp,sp,-16
    800027cc:	00813423          	sd	s0,8(sp)
    800027d0:	01010413          	addi	s0,sp,16
    800027d4:	300027f3          	csrr	a5,mstatus
    800027d8:	ffffe737          	lui	a4,0xffffe
    800027dc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7d2f>
    800027e0:	00e7f7b3          	and	a5,a5,a4
    800027e4:	00001737          	lui	a4,0x1
    800027e8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800027ec:	00e7e7b3          	or	a5,a5,a4
    800027f0:	30079073          	csrw	mstatus,a5
    800027f4:	00000797          	auipc	a5,0x0
    800027f8:	16078793          	addi	a5,a5,352 # 80002954 <system_main>
    800027fc:	34179073          	csrw	mepc,a5
    80002800:	00000793          	li	a5,0
    80002804:	18079073          	csrw	satp,a5
    80002808:	000107b7          	lui	a5,0x10
    8000280c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002810:	30279073          	csrw	medeleg,a5
    80002814:	30379073          	csrw	mideleg,a5
    80002818:	104027f3          	csrr	a5,sie
    8000281c:	2227e793          	ori	a5,a5,546
    80002820:	10479073          	csrw	sie,a5
    80002824:	fff00793          	li	a5,-1
    80002828:	00a7d793          	srli	a5,a5,0xa
    8000282c:	3b079073          	csrw	pmpaddr0,a5
    80002830:	00f00793          	li	a5,15
    80002834:	3a079073          	csrw	pmpcfg0,a5
    80002838:	f14027f3          	csrr	a5,mhartid
    8000283c:	0200c737          	lui	a4,0x200c
    80002840:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002844:	0007869b          	sext.w	a3,a5
    80002848:	00269713          	slli	a4,a3,0x2
    8000284c:	000f4637          	lui	a2,0xf4
    80002850:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002854:	00d70733          	add	a4,a4,a3
    80002858:	0037979b          	slliw	a5,a5,0x3
    8000285c:	020046b7          	lui	a3,0x2004
    80002860:	00d787b3          	add	a5,a5,a3
    80002864:	00c585b3          	add	a1,a1,a2
    80002868:	00371693          	slli	a3,a4,0x3
    8000286c:	00003717          	auipc	a4,0x3
    80002870:	01470713          	addi	a4,a4,20 # 80005880 <timer_scratch>
    80002874:	00b7b023          	sd	a1,0(a5)
    80002878:	00d70733          	add	a4,a4,a3
    8000287c:	00f73c23          	sd	a5,24(a4)
    80002880:	02c73023          	sd	a2,32(a4)
    80002884:	34071073          	csrw	mscratch,a4
    80002888:	00000797          	auipc	a5,0x0
    8000288c:	6e878793          	addi	a5,a5,1768 # 80002f70 <timervec>
    80002890:	30579073          	csrw	mtvec,a5
    80002894:	300027f3          	csrr	a5,mstatus
    80002898:	0087e793          	ori	a5,a5,8
    8000289c:	30079073          	csrw	mstatus,a5
    800028a0:	304027f3          	csrr	a5,mie
    800028a4:	0807e793          	ori	a5,a5,128
    800028a8:	30479073          	csrw	mie,a5
    800028ac:	f14027f3          	csrr	a5,mhartid
    800028b0:	0007879b          	sext.w	a5,a5
    800028b4:	00078213          	mv	tp,a5
    800028b8:	30200073          	mret
    800028bc:	00813403          	ld	s0,8(sp)
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret

00000000800028c8 <timerinit>:
    800028c8:	ff010113          	addi	sp,sp,-16
    800028cc:	00813423          	sd	s0,8(sp)
    800028d0:	01010413          	addi	s0,sp,16
    800028d4:	f14027f3          	csrr	a5,mhartid
    800028d8:	0200c737          	lui	a4,0x200c
    800028dc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800028e0:	0007869b          	sext.w	a3,a5
    800028e4:	00269713          	slli	a4,a3,0x2
    800028e8:	000f4637          	lui	a2,0xf4
    800028ec:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800028f0:	00d70733          	add	a4,a4,a3
    800028f4:	0037979b          	slliw	a5,a5,0x3
    800028f8:	020046b7          	lui	a3,0x2004
    800028fc:	00d787b3          	add	a5,a5,a3
    80002900:	00c585b3          	add	a1,a1,a2
    80002904:	00371693          	slli	a3,a4,0x3
    80002908:	00003717          	auipc	a4,0x3
    8000290c:	f7870713          	addi	a4,a4,-136 # 80005880 <timer_scratch>
    80002910:	00b7b023          	sd	a1,0(a5)
    80002914:	00d70733          	add	a4,a4,a3
    80002918:	00f73c23          	sd	a5,24(a4)
    8000291c:	02c73023          	sd	a2,32(a4)
    80002920:	34071073          	csrw	mscratch,a4
    80002924:	00000797          	auipc	a5,0x0
    80002928:	64c78793          	addi	a5,a5,1612 # 80002f70 <timervec>
    8000292c:	30579073          	csrw	mtvec,a5
    80002930:	300027f3          	csrr	a5,mstatus
    80002934:	0087e793          	ori	a5,a5,8
    80002938:	30079073          	csrw	mstatus,a5
    8000293c:	304027f3          	csrr	a5,mie
    80002940:	0807e793          	ori	a5,a5,128
    80002944:	30479073          	csrw	mie,a5
    80002948:	00813403          	ld	s0,8(sp)
    8000294c:	01010113          	addi	sp,sp,16
    80002950:	00008067          	ret

0000000080002954 <system_main>:
    80002954:	fe010113          	addi	sp,sp,-32
    80002958:	00813823          	sd	s0,16(sp)
    8000295c:	00913423          	sd	s1,8(sp)
    80002960:	00113c23          	sd	ra,24(sp)
    80002964:	02010413          	addi	s0,sp,32
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	0c4080e7          	jalr	196(ra) # 80002a2c <cpuid>
    80002970:	00003497          	auipc	s1,0x3
    80002974:	eb048493          	addi	s1,s1,-336 # 80005820 <started>
    80002978:	02050263          	beqz	a0,8000299c <system_main+0x48>
    8000297c:	0004a783          	lw	a5,0(s1)
    80002980:	0007879b          	sext.w	a5,a5
    80002984:	fe078ce3          	beqz	a5,8000297c <system_main+0x28>
    80002988:	0ff0000f          	fence
    8000298c:	00002517          	auipc	a0,0x2
    80002990:	76c50513          	addi	a0,a0,1900 # 800050f8 <_ZZ12printIntegermE6digits+0x40>
    80002994:	00001097          	auipc	ra,0x1
    80002998:	a78080e7          	jalr	-1416(ra) # 8000340c <panic>
    8000299c:	00001097          	auipc	ra,0x1
    800029a0:	9cc080e7          	jalr	-1588(ra) # 80003368 <consoleinit>
    800029a4:	00001097          	auipc	ra,0x1
    800029a8:	158080e7          	jalr	344(ra) # 80003afc <printfinit>
    800029ac:	00002517          	auipc	a0,0x2
    800029b0:	70450513          	addi	a0,a0,1796 # 800050b0 <CONSOLE_STATUS+0xa0>
    800029b4:	00001097          	auipc	ra,0x1
    800029b8:	ab4080e7          	jalr	-1356(ra) # 80003468 <__printf>
    800029bc:	00002517          	auipc	a0,0x2
    800029c0:	70c50513          	addi	a0,a0,1804 # 800050c8 <_ZZ12printIntegermE6digits+0x10>
    800029c4:	00001097          	auipc	ra,0x1
    800029c8:	aa4080e7          	jalr	-1372(ra) # 80003468 <__printf>
    800029cc:	00002517          	auipc	a0,0x2
    800029d0:	6e450513          	addi	a0,a0,1764 # 800050b0 <CONSOLE_STATUS+0xa0>
    800029d4:	00001097          	auipc	ra,0x1
    800029d8:	a94080e7          	jalr	-1388(ra) # 80003468 <__printf>
    800029dc:	00001097          	auipc	ra,0x1
    800029e0:	4ac080e7          	jalr	1196(ra) # 80003e88 <kinit>
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	148080e7          	jalr	328(ra) # 80002b2c <trapinit>
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	16c080e7          	jalr	364(ra) # 80002b58 <trapinithart>
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	5bc080e7          	jalr	1468(ra) # 80002fb0 <plicinit>
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	5dc080e7          	jalr	1500(ra) # 80002fd8 <plicinithart>
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	078080e7          	jalr	120(ra) # 80002a7c <userinit>
    80002a0c:	0ff0000f          	fence
    80002a10:	00100793          	li	a5,1
    80002a14:	00002517          	auipc	a0,0x2
    80002a18:	6cc50513          	addi	a0,a0,1740 # 800050e0 <_ZZ12printIntegermE6digits+0x28>
    80002a1c:	00f4a023          	sw	a5,0(s1)
    80002a20:	00001097          	auipc	ra,0x1
    80002a24:	a48080e7          	jalr	-1464(ra) # 80003468 <__printf>
    80002a28:	0000006f          	j	80002a28 <system_main+0xd4>

0000000080002a2c <cpuid>:
    80002a2c:	ff010113          	addi	sp,sp,-16
    80002a30:	00813423          	sd	s0,8(sp)
    80002a34:	01010413          	addi	s0,sp,16
    80002a38:	00020513          	mv	a0,tp
    80002a3c:	00813403          	ld	s0,8(sp)
    80002a40:	0005051b          	sext.w	a0,a0
    80002a44:	01010113          	addi	sp,sp,16
    80002a48:	00008067          	ret

0000000080002a4c <mycpu>:
    80002a4c:	ff010113          	addi	sp,sp,-16
    80002a50:	00813423          	sd	s0,8(sp)
    80002a54:	01010413          	addi	s0,sp,16
    80002a58:	00020793          	mv	a5,tp
    80002a5c:	00813403          	ld	s0,8(sp)
    80002a60:	0007879b          	sext.w	a5,a5
    80002a64:	00779793          	slli	a5,a5,0x7
    80002a68:	00004517          	auipc	a0,0x4
    80002a6c:	e4850513          	addi	a0,a0,-440 # 800068b0 <cpus>
    80002a70:	00f50533          	add	a0,a0,a5
    80002a74:	01010113          	addi	sp,sp,16
    80002a78:	00008067          	ret

0000000080002a7c <userinit>:
    80002a7c:	ff010113          	addi	sp,sp,-16
    80002a80:	00813423          	sd	s0,8(sp)
    80002a84:	01010413          	addi	s0,sp,16
    80002a88:	00813403          	ld	s0,8(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	fffff317          	auipc	t1,0xfffff
    80002a94:	10c30067          	jr	268(t1) # 80001b9c <main>

0000000080002a98 <either_copyout>:
    80002a98:	ff010113          	addi	sp,sp,-16
    80002a9c:	00813023          	sd	s0,0(sp)
    80002aa0:	00113423          	sd	ra,8(sp)
    80002aa4:	01010413          	addi	s0,sp,16
    80002aa8:	02051663          	bnez	a0,80002ad4 <either_copyout+0x3c>
    80002aac:	00058513          	mv	a0,a1
    80002ab0:	00060593          	mv	a1,a2
    80002ab4:	0006861b          	sext.w	a2,a3
    80002ab8:	00002097          	auipc	ra,0x2
    80002abc:	c5c080e7          	jalr	-932(ra) # 80004714 <__memmove>
    80002ac0:	00813083          	ld	ra,8(sp)
    80002ac4:	00013403          	ld	s0,0(sp)
    80002ac8:	00000513          	li	a0,0
    80002acc:	01010113          	addi	sp,sp,16
    80002ad0:	00008067          	ret
    80002ad4:	00002517          	auipc	a0,0x2
    80002ad8:	64c50513          	addi	a0,a0,1612 # 80005120 <_ZZ12printIntegermE6digits+0x68>
    80002adc:	00001097          	auipc	ra,0x1
    80002ae0:	930080e7          	jalr	-1744(ra) # 8000340c <panic>

0000000080002ae4 <either_copyin>:
    80002ae4:	ff010113          	addi	sp,sp,-16
    80002ae8:	00813023          	sd	s0,0(sp)
    80002aec:	00113423          	sd	ra,8(sp)
    80002af0:	01010413          	addi	s0,sp,16
    80002af4:	02059463          	bnez	a1,80002b1c <either_copyin+0x38>
    80002af8:	00060593          	mv	a1,a2
    80002afc:	0006861b          	sext.w	a2,a3
    80002b00:	00002097          	auipc	ra,0x2
    80002b04:	c14080e7          	jalr	-1004(ra) # 80004714 <__memmove>
    80002b08:	00813083          	ld	ra,8(sp)
    80002b0c:	00013403          	ld	s0,0(sp)
    80002b10:	00000513          	li	a0,0
    80002b14:	01010113          	addi	sp,sp,16
    80002b18:	00008067          	ret
    80002b1c:	00002517          	auipc	a0,0x2
    80002b20:	62c50513          	addi	a0,a0,1580 # 80005148 <_ZZ12printIntegermE6digits+0x90>
    80002b24:	00001097          	auipc	ra,0x1
    80002b28:	8e8080e7          	jalr	-1816(ra) # 8000340c <panic>

0000000080002b2c <trapinit>:
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00813423          	sd	s0,8(sp)
    80002b34:	01010413          	addi	s0,sp,16
    80002b38:	00813403          	ld	s0,8(sp)
    80002b3c:	00002597          	auipc	a1,0x2
    80002b40:	63458593          	addi	a1,a1,1588 # 80005170 <_ZZ12printIntegermE6digits+0xb8>
    80002b44:	00004517          	auipc	a0,0x4
    80002b48:	dec50513          	addi	a0,a0,-532 # 80006930 <tickslock>
    80002b4c:	01010113          	addi	sp,sp,16
    80002b50:	00001317          	auipc	t1,0x1
    80002b54:	5c830067          	jr	1480(t1) # 80004118 <initlock>

0000000080002b58 <trapinithart>:
    80002b58:	ff010113          	addi	sp,sp,-16
    80002b5c:	00813423          	sd	s0,8(sp)
    80002b60:	01010413          	addi	s0,sp,16
    80002b64:	00000797          	auipc	a5,0x0
    80002b68:	2fc78793          	addi	a5,a5,764 # 80002e60 <kernelvec>
    80002b6c:	10579073          	csrw	stvec,a5
    80002b70:	00813403          	ld	s0,8(sp)
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00008067          	ret

0000000080002b7c <usertrap>:
    80002b7c:	ff010113          	addi	sp,sp,-16
    80002b80:	00813423          	sd	s0,8(sp)
    80002b84:	01010413          	addi	s0,sp,16
    80002b88:	00813403          	ld	s0,8(sp)
    80002b8c:	01010113          	addi	sp,sp,16
    80002b90:	00008067          	ret

0000000080002b94 <usertrapret>:
    80002b94:	ff010113          	addi	sp,sp,-16
    80002b98:	00813423          	sd	s0,8(sp)
    80002b9c:	01010413          	addi	s0,sp,16
    80002ba0:	00813403          	ld	s0,8(sp)
    80002ba4:	01010113          	addi	sp,sp,16
    80002ba8:	00008067          	ret

0000000080002bac <kerneltrap>:
    80002bac:	fe010113          	addi	sp,sp,-32
    80002bb0:	00813823          	sd	s0,16(sp)
    80002bb4:	00113c23          	sd	ra,24(sp)
    80002bb8:	00913423          	sd	s1,8(sp)
    80002bbc:	02010413          	addi	s0,sp,32
    80002bc0:	142025f3          	csrr	a1,scause
    80002bc4:	100027f3          	csrr	a5,sstatus
    80002bc8:	0027f793          	andi	a5,a5,2
    80002bcc:	10079c63          	bnez	a5,80002ce4 <kerneltrap+0x138>
    80002bd0:	142027f3          	csrr	a5,scause
    80002bd4:	0207ce63          	bltz	a5,80002c10 <kerneltrap+0x64>
    80002bd8:	00002517          	auipc	a0,0x2
    80002bdc:	5e050513          	addi	a0,a0,1504 # 800051b8 <_ZZ12printIntegermE6digits+0x100>
    80002be0:	00001097          	auipc	ra,0x1
    80002be4:	888080e7          	jalr	-1912(ra) # 80003468 <__printf>
    80002be8:	141025f3          	csrr	a1,sepc
    80002bec:	14302673          	csrr	a2,stval
    80002bf0:	00002517          	auipc	a0,0x2
    80002bf4:	5d850513          	addi	a0,a0,1496 # 800051c8 <_ZZ12printIntegermE6digits+0x110>
    80002bf8:	00001097          	auipc	ra,0x1
    80002bfc:	870080e7          	jalr	-1936(ra) # 80003468 <__printf>
    80002c00:	00002517          	auipc	a0,0x2
    80002c04:	5e050513          	addi	a0,a0,1504 # 800051e0 <_ZZ12printIntegermE6digits+0x128>
    80002c08:	00001097          	auipc	ra,0x1
    80002c0c:	804080e7          	jalr	-2044(ra) # 8000340c <panic>
    80002c10:	0ff7f713          	andi	a4,a5,255
    80002c14:	00900693          	li	a3,9
    80002c18:	04d70063          	beq	a4,a3,80002c58 <kerneltrap+0xac>
    80002c1c:	fff00713          	li	a4,-1
    80002c20:	03f71713          	slli	a4,a4,0x3f
    80002c24:	00170713          	addi	a4,a4,1
    80002c28:	fae798e3          	bne	a5,a4,80002bd8 <kerneltrap+0x2c>
    80002c2c:	00000097          	auipc	ra,0x0
    80002c30:	e00080e7          	jalr	-512(ra) # 80002a2c <cpuid>
    80002c34:	06050663          	beqz	a0,80002ca0 <kerneltrap+0xf4>
    80002c38:	144027f3          	csrr	a5,sip
    80002c3c:	ffd7f793          	andi	a5,a5,-3
    80002c40:	14479073          	csrw	sip,a5
    80002c44:	01813083          	ld	ra,24(sp)
    80002c48:	01013403          	ld	s0,16(sp)
    80002c4c:	00813483          	ld	s1,8(sp)
    80002c50:	02010113          	addi	sp,sp,32
    80002c54:	00008067          	ret
    80002c58:	00000097          	auipc	ra,0x0
    80002c5c:	3cc080e7          	jalr	972(ra) # 80003024 <plic_claim>
    80002c60:	00a00793          	li	a5,10
    80002c64:	00050493          	mv	s1,a0
    80002c68:	06f50863          	beq	a0,a5,80002cd8 <kerneltrap+0x12c>
    80002c6c:	fc050ce3          	beqz	a0,80002c44 <kerneltrap+0x98>
    80002c70:	00050593          	mv	a1,a0
    80002c74:	00002517          	auipc	a0,0x2
    80002c78:	52450513          	addi	a0,a0,1316 # 80005198 <_ZZ12printIntegermE6digits+0xe0>
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	7ec080e7          	jalr	2028(ra) # 80003468 <__printf>
    80002c84:	01013403          	ld	s0,16(sp)
    80002c88:	01813083          	ld	ra,24(sp)
    80002c8c:	00048513          	mv	a0,s1
    80002c90:	00813483          	ld	s1,8(sp)
    80002c94:	02010113          	addi	sp,sp,32
    80002c98:	00000317          	auipc	t1,0x0
    80002c9c:	3c430067          	jr	964(t1) # 8000305c <plic_complete>
    80002ca0:	00004517          	auipc	a0,0x4
    80002ca4:	c9050513          	addi	a0,a0,-880 # 80006930 <tickslock>
    80002ca8:	00001097          	auipc	ra,0x1
    80002cac:	494080e7          	jalr	1172(ra) # 8000413c <acquire>
    80002cb0:	00003717          	auipc	a4,0x3
    80002cb4:	b7470713          	addi	a4,a4,-1164 # 80005824 <ticks>
    80002cb8:	00072783          	lw	a5,0(a4)
    80002cbc:	00004517          	auipc	a0,0x4
    80002cc0:	c7450513          	addi	a0,a0,-908 # 80006930 <tickslock>
    80002cc4:	0017879b          	addiw	a5,a5,1
    80002cc8:	00f72023          	sw	a5,0(a4)
    80002ccc:	00001097          	auipc	ra,0x1
    80002cd0:	53c080e7          	jalr	1340(ra) # 80004208 <release>
    80002cd4:	f65ff06f          	j	80002c38 <kerneltrap+0x8c>
    80002cd8:	00001097          	auipc	ra,0x1
    80002cdc:	098080e7          	jalr	152(ra) # 80003d70 <uartintr>
    80002ce0:	fa5ff06f          	j	80002c84 <kerneltrap+0xd8>
    80002ce4:	00002517          	auipc	a0,0x2
    80002ce8:	49450513          	addi	a0,a0,1172 # 80005178 <_ZZ12printIntegermE6digits+0xc0>
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	720080e7          	jalr	1824(ra) # 8000340c <panic>

0000000080002cf4 <clockintr>:
    80002cf4:	fe010113          	addi	sp,sp,-32
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	00113c23          	sd	ra,24(sp)
    80002d04:	02010413          	addi	s0,sp,32
    80002d08:	00004497          	auipc	s1,0x4
    80002d0c:	c2848493          	addi	s1,s1,-984 # 80006930 <tickslock>
    80002d10:	00048513          	mv	a0,s1
    80002d14:	00001097          	auipc	ra,0x1
    80002d18:	428080e7          	jalr	1064(ra) # 8000413c <acquire>
    80002d1c:	00003717          	auipc	a4,0x3
    80002d20:	b0870713          	addi	a4,a4,-1272 # 80005824 <ticks>
    80002d24:	00072783          	lw	a5,0(a4)
    80002d28:	01013403          	ld	s0,16(sp)
    80002d2c:	01813083          	ld	ra,24(sp)
    80002d30:	00048513          	mv	a0,s1
    80002d34:	0017879b          	addiw	a5,a5,1
    80002d38:	00813483          	ld	s1,8(sp)
    80002d3c:	00f72023          	sw	a5,0(a4)
    80002d40:	02010113          	addi	sp,sp,32
    80002d44:	00001317          	auipc	t1,0x1
    80002d48:	4c430067          	jr	1220(t1) # 80004208 <release>

0000000080002d4c <devintr>:
    80002d4c:	142027f3          	csrr	a5,scause
    80002d50:	00000513          	li	a0,0
    80002d54:	0007c463          	bltz	a5,80002d5c <devintr+0x10>
    80002d58:	00008067          	ret
    80002d5c:	fe010113          	addi	sp,sp,-32
    80002d60:	00813823          	sd	s0,16(sp)
    80002d64:	00113c23          	sd	ra,24(sp)
    80002d68:	00913423          	sd	s1,8(sp)
    80002d6c:	02010413          	addi	s0,sp,32
    80002d70:	0ff7f713          	andi	a4,a5,255
    80002d74:	00900693          	li	a3,9
    80002d78:	04d70c63          	beq	a4,a3,80002dd0 <devintr+0x84>
    80002d7c:	fff00713          	li	a4,-1
    80002d80:	03f71713          	slli	a4,a4,0x3f
    80002d84:	00170713          	addi	a4,a4,1
    80002d88:	00e78c63          	beq	a5,a4,80002da0 <devintr+0x54>
    80002d8c:	01813083          	ld	ra,24(sp)
    80002d90:	01013403          	ld	s0,16(sp)
    80002d94:	00813483          	ld	s1,8(sp)
    80002d98:	02010113          	addi	sp,sp,32
    80002d9c:	00008067          	ret
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	c8c080e7          	jalr	-884(ra) # 80002a2c <cpuid>
    80002da8:	06050663          	beqz	a0,80002e14 <devintr+0xc8>
    80002dac:	144027f3          	csrr	a5,sip
    80002db0:	ffd7f793          	andi	a5,a5,-3
    80002db4:	14479073          	csrw	sip,a5
    80002db8:	01813083          	ld	ra,24(sp)
    80002dbc:	01013403          	ld	s0,16(sp)
    80002dc0:	00813483          	ld	s1,8(sp)
    80002dc4:	00200513          	li	a0,2
    80002dc8:	02010113          	addi	sp,sp,32
    80002dcc:	00008067          	ret
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	254080e7          	jalr	596(ra) # 80003024 <plic_claim>
    80002dd8:	00a00793          	li	a5,10
    80002ddc:	00050493          	mv	s1,a0
    80002de0:	06f50663          	beq	a0,a5,80002e4c <devintr+0x100>
    80002de4:	00100513          	li	a0,1
    80002de8:	fa0482e3          	beqz	s1,80002d8c <devintr+0x40>
    80002dec:	00048593          	mv	a1,s1
    80002df0:	00002517          	auipc	a0,0x2
    80002df4:	3a850513          	addi	a0,a0,936 # 80005198 <_ZZ12printIntegermE6digits+0xe0>
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	670080e7          	jalr	1648(ra) # 80003468 <__printf>
    80002e00:	00048513          	mv	a0,s1
    80002e04:	00000097          	auipc	ra,0x0
    80002e08:	258080e7          	jalr	600(ra) # 8000305c <plic_complete>
    80002e0c:	00100513          	li	a0,1
    80002e10:	f7dff06f          	j	80002d8c <devintr+0x40>
    80002e14:	00004517          	auipc	a0,0x4
    80002e18:	b1c50513          	addi	a0,a0,-1252 # 80006930 <tickslock>
    80002e1c:	00001097          	auipc	ra,0x1
    80002e20:	320080e7          	jalr	800(ra) # 8000413c <acquire>
    80002e24:	00003717          	auipc	a4,0x3
    80002e28:	a0070713          	addi	a4,a4,-1536 # 80005824 <ticks>
    80002e2c:	00072783          	lw	a5,0(a4)
    80002e30:	00004517          	auipc	a0,0x4
    80002e34:	b0050513          	addi	a0,a0,-1280 # 80006930 <tickslock>
    80002e38:	0017879b          	addiw	a5,a5,1
    80002e3c:	00f72023          	sw	a5,0(a4)
    80002e40:	00001097          	auipc	ra,0x1
    80002e44:	3c8080e7          	jalr	968(ra) # 80004208 <release>
    80002e48:	f65ff06f          	j	80002dac <devintr+0x60>
    80002e4c:	00001097          	auipc	ra,0x1
    80002e50:	f24080e7          	jalr	-220(ra) # 80003d70 <uartintr>
    80002e54:	fadff06f          	j	80002e00 <devintr+0xb4>
	...

0000000080002e60 <kernelvec>:
    80002e60:	f0010113          	addi	sp,sp,-256
    80002e64:	00113023          	sd	ra,0(sp)
    80002e68:	00213423          	sd	sp,8(sp)
    80002e6c:	00313823          	sd	gp,16(sp)
    80002e70:	00413c23          	sd	tp,24(sp)
    80002e74:	02513023          	sd	t0,32(sp)
    80002e78:	02613423          	sd	t1,40(sp)
    80002e7c:	02713823          	sd	t2,48(sp)
    80002e80:	02813c23          	sd	s0,56(sp)
    80002e84:	04913023          	sd	s1,64(sp)
    80002e88:	04a13423          	sd	a0,72(sp)
    80002e8c:	04b13823          	sd	a1,80(sp)
    80002e90:	04c13c23          	sd	a2,88(sp)
    80002e94:	06d13023          	sd	a3,96(sp)
    80002e98:	06e13423          	sd	a4,104(sp)
    80002e9c:	06f13823          	sd	a5,112(sp)
    80002ea0:	07013c23          	sd	a6,120(sp)
    80002ea4:	09113023          	sd	a7,128(sp)
    80002ea8:	09213423          	sd	s2,136(sp)
    80002eac:	09313823          	sd	s3,144(sp)
    80002eb0:	09413c23          	sd	s4,152(sp)
    80002eb4:	0b513023          	sd	s5,160(sp)
    80002eb8:	0b613423          	sd	s6,168(sp)
    80002ebc:	0b713823          	sd	s7,176(sp)
    80002ec0:	0b813c23          	sd	s8,184(sp)
    80002ec4:	0d913023          	sd	s9,192(sp)
    80002ec8:	0da13423          	sd	s10,200(sp)
    80002ecc:	0db13823          	sd	s11,208(sp)
    80002ed0:	0dc13c23          	sd	t3,216(sp)
    80002ed4:	0fd13023          	sd	t4,224(sp)
    80002ed8:	0fe13423          	sd	t5,232(sp)
    80002edc:	0ff13823          	sd	t6,240(sp)
    80002ee0:	ccdff0ef          	jal	ra,80002bac <kerneltrap>
    80002ee4:	00013083          	ld	ra,0(sp)
    80002ee8:	00813103          	ld	sp,8(sp)
    80002eec:	01013183          	ld	gp,16(sp)
    80002ef0:	02013283          	ld	t0,32(sp)
    80002ef4:	02813303          	ld	t1,40(sp)
    80002ef8:	03013383          	ld	t2,48(sp)
    80002efc:	03813403          	ld	s0,56(sp)
    80002f00:	04013483          	ld	s1,64(sp)
    80002f04:	04813503          	ld	a0,72(sp)
    80002f08:	05013583          	ld	a1,80(sp)
    80002f0c:	05813603          	ld	a2,88(sp)
    80002f10:	06013683          	ld	a3,96(sp)
    80002f14:	06813703          	ld	a4,104(sp)
    80002f18:	07013783          	ld	a5,112(sp)
    80002f1c:	07813803          	ld	a6,120(sp)
    80002f20:	08013883          	ld	a7,128(sp)
    80002f24:	08813903          	ld	s2,136(sp)
    80002f28:	09013983          	ld	s3,144(sp)
    80002f2c:	09813a03          	ld	s4,152(sp)
    80002f30:	0a013a83          	ld	s5,160(sp)
    80002f34:	0a813b03          	ld	s6,168(sp)
    80002f38:	0b013b83          	ld	s7,176(sp)
    80002f3c:	0b813c03          	ld	s8,184(sp)
    80002f40:	0c013c83          	ld	s9,192(sp)
    80002f44:	0c813d03          	ld	s10,200(sp)
    80002f48:	0d013d83          	ld	s11,208(sp)
    80002f4c:	0d813e03          	ld	t3,216(sp)
    80002f50:	0e013e83          	ld	t4,224(sp)
    80002f54:	0e813f03          	ld	t5,232(sp)
    80002f58:	0f013f83          	ld	t6,240(sp)
    80002f5c:	10010113          	addi	sp,sp,256
    80002f60:	10200073          	sret
    80002f64:	00000013          	nop
    80002f68:	00000013          	nop
    80002f6c:	00000013          	nop

0000000080002f70 <timervec>:
    80002f70:	34051573          	csrrw	a0,mscratch,a0
    80002f74:	00b53023          	sd	a1,0(a0)
    80002f78:	00c53423          	sd	a2,8(a0)
    80002f7c:	00d53823          	sd	a3,16(a0)
    80002f80:	01853583          	ld	a1,24(a0)
    80002f84:	02053603          	ld	a2,32(a0)
    80002f88:	0005b683          	ld	a3,0(a1)
    80002f8c:	00c686b3          	add	a3,a3,a2
    80002f90:	00d5b023          	sd	a3,0(a1)
    80002f94:	00200593          	li	a1,2
    80002f98:	14459073          	csrw	sip,a1
    80002f9c:	01053683          	ld	a3,16(a0)
    80002fa0:	00853603          	ld	a2,8(a0)
    80002fa4:	00053583          	ld	a1,0(a0)
    80002fa8:	34051573          	csrrw	a0,mscratch,a0
    80002fac:	30200073          	mret

0000000080002fb0 <plicinit>:
    80002fb0:	ff010113          	addi	sp,sp,-16
    80002fb4:	00813423          	sd	s0,8(sp)
    80002fb8:	01010413          	addi	s0,sp,16
    80002fbc:	00813403          	ld	s0,8(sp)
    80002fc0:	0c0007b7          	lui	a5,0xc000
    80002fc4:	00100713          	li	a4,1
    80002fc8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002fcc:	00e7a223          	sw	a4,4(a5)
    80002fd0:	01010113          	addi	sp,sp,16
    80002fd4:	00008067          	ret

0000000080002fd8 <plicinithart>:
    80002fd8:	ff010113          	addi	sp,sp,-16
    80002fdc:	00813023          	sd	s0,0(sp)
    80002fe0:	00113423          	sd	ra,8(sp)
    80002fe4:	01010413          	addi	s0,sp,16
    80002fe8:	00000097          	auipc	ra,0x0
    80002fec:	a44080e7          	jalr	-1468(ra) # 80002a2c <cpuid>
    80002ff0:	0085171b          	slliw	a4,a0,0x8
    80002ff4:	0c0027b7          	lui	a5,0xc002
    80002ff8:	00e787b3          	add	a5,a5,a4
    80002ffc:	40200713          	li	a4,1026
    80003000:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003004:	00813083          	ld	ra,8(sp)
    80003008:	00013403          	ld	s0,0(sp)
    8000300c:	00d5151b          	slliw	a0,a0,0xd
    80003010:	0c2017b7          	lui	a5,0xc201
    80003014:	00a78533          	add	a0,a5,a0
    80003018:	00052023          	sw	zero,0(a0)
    8000301c:	01010113          	addi	sp,sp,16
    80003020:	00008067          	ret

0000000080003024 <plic_claim>:
    80003024:	ff010113          	addi	sp,sp,-16
    80003028:	00813023          	sd	s0,0(sp)
    8000302c:	00113423          	sd	ra,8(sp)
    80003030:	01010413          	addi	s0,sp,16
    80003034:	00000097          	auipc	ra,0x0
    80003038:	9f8080e7          	jalr	-1544(ra) # 80002a2c <cpuid>
    8000303c:	00813083          	ld	ra,8(sp)
    80003040:	00013403          	ld	s0,0(sp)
    80003044:	00d5151b          	slliw	a0,a0,0xd
    80003048:	0c2017b7          	lui	a5,0xc201
    8000304c:	00a78533          	add	a0,a5,a0
    80003050:	00452503          	lw	a0,4(a0)
    80003054:	01010113          	addi	sp,sp,16
    80003058:	00008067          	ret

000000008000305c <plic_complete>:
    8000305c:	fe010113          	addi	sp,sp,-32
    80003060:	00813823          	sd	s0,16(sp)
    80003064:	00913423          	sd	s1,8(sp)
    80003068:	00113c23          	sd	ra,24(sp)
    8000306c:	02010413          	addi	s0,sp,32
    80003070:	00050493          	mv	s1,a0
    80003074:	00000097          	auipc	ra,0x0
    80003078:	9b8080e7          	jalr	-1608(ra) # 80002a2c <cpuid>
    8000307c:	01813083          	ld	ra,24(sp)
    80003080:	01013403          	ld	s0,16(sp)
    80003084:	00d5179b          	slliw	a5,a0,0xd
    80003088:	0c201737          	lui	a4,0xc201
    8000308c:	00f707b3          	add	a5,a4,a5
    80003090:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003094:	00813483          	ld	s1,8(sp)
    80003098:	02010113          	addi	sp,sp,32
    8000309c:	00008067          	ret

00000000800030a0 <consolewrite>:
    800030a0:	fb010113          	addi	sp,sp,-80
    800030a4:	04813023          	sd	s0,64(sp)
    800030a8:	04113423          	sd	ra,72(sp)
    800030ac:	02913c23          	sd	s1,56(sp)
    800030b0:	03213823          	sd	s2,48(sp)
    800030b4:	03313423          	sd	s3,40(sp)
    800030b8:	03413023          	sd	s4,32(sp)
    800030bc:	01513c23          	sd	s5,24(sp)
    800030c0:	05010413          	addi	s0,sp,80
    800030c4:	06c05c63          	blez	a2,8000313c <consolewrite+0x9c>
    800030c8:	00060993          	mv	s3,a2
    800030cc:	00050a13          	mv	s4,a0
    800030d0:	00058493          	mv	s1,a1
    800030d4:	00000913          	li	s2,0
    800030d8:	fff00a93          	li	s5,-1
    800030dc:	01c0006f          	j	800030f8 <consolewrite+0x58>
    800030e0:	fbf44503          	lbu	a0,-65(s0)
    800030e4:	0019091b          	addiw	s2,s2,1
    800030e8:	00148493          	addi	s1,s1,1
    800030ec:	00001097          	auipc	ra,0x1
    800030f0:	a9c080e7          	jalr	-1380(ra) # 80003b88 <uartputc>
    800030f4:	03298063          	beq	s3,s2,80003114 <consolewrite+0x74>
    800030f8:	00048613          	mv	a2,s1
    800030fc:	00100693          	li	a3,1
    80003100:	000a0593          	mv	a1,s4
    80003104:	fbf40513          	addi	a0,s0,-65
    80003108:	00000097          	auipc	ra,0x0
    8000310c:	9dc080e7          	jalr	-1572(ra) # 80002ae4 <either_copyin>
    80003110:	fd5518e3          	bne	a0,s5,800030e0 <consolewrite+0x40>
    80003114:	04813083          	ld	ra,72(sp)
    80003118:	04013403          	ld	s0,64(sp)
    8000311c:	03813483          	ld	s1,56(sp)
    80003120:	02813983          	ld	s3,40(sp)
    80003124:	02013a03          	ld	s4,32(sp)
    80003128:	01813a83          	ld	s5,24(sp)
    8000312c:	00090513          	mv	a0,s2
    80003130:	03013903          	ld	s2,48(sp)
    80003134:	05010113          	addi	sp,sp,80
    80003138:	00008067          	ret
    8000313c:	00000913          	li	s2,0
    80003140:	fd5ff06f          	j	80003114 <consolewrite+0x74>

0000000080003144 <consoleread>:
    80003144:	f9010113          	addi	sp,sp,-112
    80003148:	06813023          	sd	s0,96(sp)
    8000314c:	04913c23          	sd	s1,88(sp)
    80003150:	05213823          	sd	s2,80(sp)
    80003154:	05313423          	sd	s3,72(sp)
    80003158:	05413023          	sd	s4,64(sp)
    8000315c:	03513c23          	sd	s5,56(sp)
    80003160:	03613823          	sd	s6,48(sp)
    80003164:	03713423          	sd	s7,40(sp)
    80003168:	03813023          	sd	s8,32(sp)
    8000316c:	06113423          	sd	ra,104(sp)
    80003170:	01913c23          	sd	s9,24(sp)
    80003174:	07010413          	addi	s0,sp,112
    80003178:	00060b93          	mv	s7,a2
    8000317c:	00050913          	mv	s2,a0
    80003180:	00058c13          	mv	s8,a1
    80003184:	00060b1b          	sext.w	s6,a2
    80003188:	00003497          	auipc	s1,0x3
    8000318c:	7c048493          	addi	s1,s1,1984 # 80006948 <cons>
    80003190:	00400993          	li	s3,4
    80003194:	fff00a13          	li	s4,-1
    80003198:	00a00a93          	li	s5,10
    8000319c:	05705e63          	blez	s7,800031f8 <consoleread+0xb4>
    800031a0:	09c4a703          	lw	a4,156(s1)
    800031a4:	0984a783          	lw	a5,152(s1)
    800031a8:	0007071b          	sext.w	a4,a4
    800031ac:	08e78463          	beq	a5,a4,80003234 <consoleread+0xf0>
    800031b0:	07f7f713          	andi	a4,a5,127
    800031b4:	00e48733          	add	a4,s1,a4
    800031b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800031bc:	0017869b          	addiw	a3,a5,1
    800031c0:	08d4ac23          	sw	a3,152(s1)
    800031c4:	00070c9b          	sext.w	s9,a4
    800031c8:	0b370663          	beq	a4,s3,80003274 <consoleread+0x130>
    800031cc:	00100693          	li	a3,1
    800031d0:	f9f40613          	addi	a2,s0,-97
    800031d4:	000c0593          	mv	a1,s8
    800031d8:	00090513          	mv	a0,s2
    800031dc:	f8e40fa3          	sb	a4,-97(s0)
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	8b8080e7          	jalr	-1864(ra) # 80002a98 <either_copyout>
    800031e8:	01450863          	beq	a0,s4,800031f8 <consoleread+0xb4>
    800031ec:	001c0c13          	addi	s8,s8,1
    800031f0:	fffb8b9b          	addiw	s7,s7,-1
    800031f4:	fb5c94e3          	bne	s9,s5,8000319c <consoleread+0x58>
    800031f8:	000b851b          	sext.w	a0,s7
    800031fc:	06813083          	ld	ra,104(sp)
    80003200:	06013403          	ld	s0,96(sp)
    80003204:	05813483          	ld	s1,88(sp)
    80003208:	05013903          	ld	s2,80(sp)
    8000320c:	04813983          	ld	s3,72(sp)
    80003210:	04013a03          	ld	s4,64(sp)
    80003214:	03813a83          	ld	s5,56(sp)
    80003218:	02813b83          	ld	s7,40(sp)
    8000321c:	02013c03          	ld	s8,32(sp)
    80003220:	01813c83          	ld	s9,24(sp)
    80003224:	40ab053b          	subw	a0,s6,a0
    80003228:	03013b03          	ld	s6,48(sp)
    8000322c:	07010113          	addi	sp,sp,112
    80003230:	00008067          	ret
    80003234:	00001097          	auipc	ra,0x1
    80003238:	1d8080e7          	jalr	472(ra) # 8000440c <push_on>
    8000323c:	0984a703          	lw	a4,152(s1)
    80003240:	09c4a783          	lw	a5,156(s1)
    80003244:	0007879b          	sext.w	a5,a5
    80003248:	fef70ce3          	beq	a4,a5,80003240 <consoleread+0xfc>
    8000324c:	00001097          	auipc	ra,0x1
    80003250:	234080e7          	jalr	564(ra) # 80004480 <pop_on>
    80003254:	0984a783          	lw	a5,152(s1)
    80003258:	07f7f713          	andi	a4,a5,127
    8000325c:	00e48733          	add	a4,s1,a4
    80003260:	01874703          	lbu	a4,24(a4)
    80003264:	0017869b          	addiw	a3,a5,1
    80003268:	08d4ac23          	sw	a3,152(s1)
    8000326c:	00070c9b          	sext.w	s9,a4
    80003270:	f5371ee3          	bne	a4,s3,800031cc <consoleread+0x88>
    80003274:	000b851b          	sext.w	a0,s7
    80003278:	f96bf2e3          	bgeu	s7,s6,800031fc <consoleread+0xb8>
    8000327c:	08f4ac23          	sw	a5,152(s1)
    80003280:	f7dff06f          	j	800031fc <consoleread+0xb8>

0000000080003284 <consputc>:
    80003284:	10000793          	li	a5,256
    80003288:	00f50663          	beq	a0,a5,80003294 <consputc+0x10>
    8000328c:	00001317          	auipc	t1,0x1
    80003290:	9f430067          	jr	-1548(t1) # 80003c80 <uartputc_sync>
    80003294:	ff010113          	addi	sp,sp,-16
    80003298:	00113423          	sd	ra,8(sp)
    8000329c:	00813023          	sd	s0,0(sp)
    800032a0:	01010413          	addi	s0,sp,16
    800032a4:	00800513          	li	a0,8
    800032a8:	00001097          	auipc	ra,0x1
    800032ac:	9d8080e7          	jalr	-1576(ra) # 80003c80 <uartputc_sync>
    800032b0:	02000513          	li	a0,32
    800032b4:	00001097          	auipc	ra,0x1
    800032b8:	9cc080e7          	jalr	-1588(ra) # 80003c80 <uartputc_sync>
    800032bc:	00013403          	ld	s0,0(sp)
    800032c0:	00813083          	ld	ra,8(sp)
    800032c4:	00800513          	li	a0,8
    800032c8:	01010113          	addi	sp,sp,16
    800032cc:	00001317          	auipc	t1,0x1
    800032d0:	9b430067          	jr	-1612(t1) # 80003c80 <uartputc_sync>

00000000800032d4 <consoleintr>:
    800032d4:	fe010113          	addi	sp,sp,-32
    800032d8:	00813823          	sd	s0,16(sp)
    800032dc:	00913423          	sd	s1,8(sp)
    800032e0:	01213023          	sd	s2,0(sp)
    800032e4:	00113c23          	sd	ra,24(sp)
    800032e8:	02010413          	addi	s0,sp,32
    800032ec:	00003917          	auipc	s2,0x3
    800032f0:	65c90913          	addi	s2,s2,1628 # 80006948 <cons>
    800032f4:	00050493          	mv	s1,a0
    800032f8:	00090513          	mv	a0,s2
    800032fc:	00001097          	auipc	ra,0x1
    80003300:	e40080e7          	jalr	-448(ra) # 8000413c <acquire>
    80003304:	02048c63          	beqz	s1,8000333c <consoleintr+0x68>
    80003308:	0a092783          	lw	a5,160(s2)
    8000330c:	09892703          	lw	a4,152(s2)
    80003310:	07f00693          	li	a3,127
    80003314:	40e7873b          	subw	a4,a5,a4
    80003318:	02e6e263          	bltu	a3,a4,8000333c <consoleintr+0x68>
    8000331c:	00d00713          	li	a4,13
    80003320:	04e48063          	beq	s1,a4,80003360 <consoleintr+0x8c>
    80003324:	07f7f713          	andi	a4,a5,127
    80003328:	00e90733          	add	a4,s2,a4
    8000332c:	0017879b          	addiw	a5,a5,1
    80003330:	0af92023          	sw	a5,160(s2)
    80003334:	00970c23          	sb	s1,24(a4)
    80003338:	08f92e23          	sw	a5,156(s2)
    8000333c:	01013403          	ld	s0,16(sp)
    80003340:	01813083          	ld	ra,24(sp)
    80003344:	00813483          	ld	s1,8(sp)
    80003348:	00013903          	ld	s2,0(sp)
    8000334c:	00003517          	auipc	a0,0x3
    80003350:	5fc50513          	addi	a0,a0,1532 # 80006948 <cons>
    80003354:	02010113          	addi	sp,sp,32
    80003358:	00001317          	auipc	t1,0x1
    8000335c:	eb030067          	jr	-336(t1) # 80004208 <release>
    80003360:	00a00493          	li	s1,10
    80003364:	fc1ff06f          	j	80003324 <consoleintr+0x50>

0000000080003368 <consoleinit>:
    80003368:	fe010113          	addi	sp,sp,-32
    8000336c:	00113c23          	sd	ra,24(sp)
    80003370:	00813823          	sd	s0,16(sp)
    80003374:	00913423          	sd	s1,8(sp)
    80003378:	02010413          	addi	s0,sp,32
    8000337c:	00003497          	auipc	s1,0x3
    80003380:	5cc48493          	addi	s1,s1,1484 # 80006948 <cons>
    80003384:	00048513          	mv	a0,s1
    80003388:	00002597          	auipc	a1,0x2
    8000338c:	e6858593          	addi	a1,a1,-408 # 800051f0 <_ZZ12printIntegermE6digits+0x138>
    80003390:	00001097          	auipc	ra,0x1
    80003394:	d88080e7          	jalr	-632(ra) # 80004118 <initlock>
    80003398:	00000097          	auipc	ra,0x0
    8000339c:	7ac080e7          	jalr	1964(ra) # 80003b44 <uartinit>
    800033a0:	01813083          	ld	ra,24(sp)
    800033a4:	01013403          	ld	s0,16(sp)
    800033a8:	00000797          	auipc	a5,0x0
    800033ac:	d9c78793          	addi	a5,a5,-612 # 80003144 <consoleread>
    800033b0:	0af4bc23          	sd	a5,184(s1)
    800033b4:	00000797          	auipc	a5,0x0
    800033b8:	cec78793          	addi	a5,a5,-788 # 800030a0 <consolewrite>
    800033bc:	0cf4b023          	sd	a5,192(s1)
    800033c0:	00813483          	ld	s1,8(sp)
    800033c4:	02010113          	addi	sp,sp,32
    800033c8:	00008067          	ret

00000000800033cc <console_read>:
    800033cc:	ff010113          	addi	sp,sp,-16
    800033d0:	00813423          	sd	s0,8(sp)
    800033d4:	01010413          	addi	s0,sp,16
    800033d8:	00813403          	ld	s0,8(sp)
    800033dc:	00003317          	auipc	t1,0x3
    800033e0:	62433303          	ld	t1,1572(t1) # 80006a00 <devsw+0x10>
    800033e4:	01010113          	addi	sp,sp,16
    800033e8:	00030067          	jr	t1

00000000800033ec <console_write>:
    800033ec:	ff010113          	addi	sp,sp,-16
    800033f0:	00813423          	sd	s0,8(sp)
    800033f4:	01010413          	addi	s0,sp,16
    800033f8:	00813403          	ld	s0,8(sp)
    800033fc:	00003317          	auipc	t1,0x3
    80003400:	60c33303          	ld	t1,1548(t1) # 80006a08 <devsw+0x18>
    80003404:	01010113          	addi	sp,sp,16
    80003408:	00030067          	jr	t1

000000008000340c <panic>:
    8000340c:	fe010113          	addi	sp,sp,-32
    80003410:	00113c23          	sd	ra,24(sp)
    80003414:	00813823          	sd	s0,16(sp)
    80003418:	00913423          	sd	s1,8(sp)
    8000341c:	02010413          	addi	s0,sp,32
    80003420:	00050493          	mv	s1,a0
    80003424:	00002517          	auipc	a0,0x2
    80003428:	dd450513          	addi	a0,a0,-556 # 800051f8 <_ZZ12printIntegermE6digits+0x140>
    8000342c:	00003797          	auipc	a5,0x3
    80003430:	6607ae23          	sw	zero,1660(a5) # 80006aa8 <pr+0x18>
    80003434:	00000097          	auipc	ra,0x0
    80003438:	034080e7          	jalr	52(ra) # 80003468 <__printf>
    8000343c:	00048513          	mv	a0,s1
    80003440:	00000097          	auipc	ra,0x0
    80003444:	028080e7          	jalr	40(ra) # 80003468 <__printf>
    80003448:	00002517          	auipc	a0,0x2
    8000344c:	c6850513          	addi	a0,a0,-920 # 800050b0 <CONSOLE_STATUS+0xa0>
    80003450:	00000097          	auipc	ra,0x0
    80003454:	018080e7          	jalr	24(ra) # 80003468 <__printf>
    80003458:	00100793          	li	a5,1
    8000345c:	00002717          	auipc	a4,0x2
    80003460:	3cf72623          	sw	a5,972(a4) # 80005828 <panicked>
    80003464:	0000006f          	j	80003464 <panic+0x58>

0000000080003468 <__printf>:
    80003468:	f3010113          	addi	sp,sp,-208
    8000346c:	08813023          	sd	s0,128(sp)
    80003470:	07313423          	sd	s3,104(sp)
    80003474:	09010413          	addi	s0,sp,144
    80003478:	05813023          	sd	s8,64(sp)
    8000347c:	08113423          	sd	ra,136(sp)
    80003480:	06913c23          	sd	s1,120(sp)
    80003484:	07213823          	sd	s2,112(sp)
    80003488:	07413023          	sd	s4,96(sp)
    8000348c:	05513c23          	sd	s5,88(sp)
    80003490:	05613823          	sd	s6,80(sp)
    80003494:	05713423          	sd	s7,72(sp)
    80003498:	03913c23          	sd	s9,56(sp)
    8000349c:	03a13823          	sd	s10,48(sp)
    800034a0:	03b13423          	sd	s11,40(sp)
    800034a4:	00003317          	auipc	t1,0x3
    800034a8:	5ec30313          	addi	t1,t1,1516 # 80006a90 <pr>
    800034ac:	01832c03          	lw	s8,24(t1)
    800034b0:	00b43423          	sd	a1,8(s0)
    800034b4:	00c43823          	sd	a2,16(s0)
    800034b8:	00d43c23          	sd	a3,24(s0)
    800034bc:	02e43023          	sd	a4,32(s0)
    800034c0:	02f43423          	sd	a5,40(s0)
    800034c4:	03043823          	sd	a6,48(s0)
    800034c8:	03143c23          	sd	a7,56(s0)
    800034cc:	00050993          	mv	s3,a0
    800034d0:	4a0c1663          	bnez	s8,8000397c <__printf+0x514>
    800034d4:	60098c63          	beqz	s3,80003aec <__printf+0x684>
    800034d8:	0009c503          	lbu	a0,0(s3)
    800034dc:	00840793          	addi	a5,s0,8
    800034e0:	f6f43c23          	sd	a5,-136(s0)
    800034e4:	00000493          	li	s1,0
    800034e8:	22050063          	beqz	a0,80003708 <__printf+0x2a0>
    800034ec:	00002a37          	lui	s4,0x2
    800034f0:	00018ab7          	lui	s5,0x18
    800034f4:	000f4b37          	lui	s6,0xf4
    800034f8:	00989bb7          	lui	s7,0x989
    800034fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003500:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003504:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003508:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000350c:	00148c9b          	addiw	s9,s1,1
    80003510:	02500793          	li	a5,37
    80003514:	01998933          	add	s2,s3,s9
    80003518:	38f51263          	bne	a0,a5,8000389c <__printf+0x434>
    8000351c:	00094783          	lbu	a5,0(s2)
    80003520:	00078c9b          	sext.w	s9,a5
    80003524:	1e078263          	beqz	a5,80003708 <__printf+0x2a0>
    80003528:	0024849b          	addiw	s1,s1,2
    8000352c:	07000713          	li	a4,112
    80003530:	00998933          	add	s2,s3,s1
    80003534:	38e78a63          	beq	a5,a4,800038c8 <__printf+0x460>
    80003538:	20f76863          	bltu	a4,a5,80003748 <__printf+0x2e0>
    8000353c:	42a78863          	beq	a5,a0,8000396c <__printf+0x504>
    80003540:	06400713          	li	a4,100
    80003544:	40e79663          	bne	a5,a4,80003950 <__printf+0x4e8>
    80003548:	f7843783          	ld	a5,-136(s0)
    8000354c:	0007a603          	lw	a2,0(a5)
    80003550:	00878793          	addi	a5,a5,8
    80003554:	f6f43c23          	sd	a5,-136(s0)
    80003558:	42064a63          	bltz	a2,8000398c <__printf+0x524>
    8000355c:	00a00713          	li	a4,10
    80003560:	02e677bb          	remuw	a5,a2,a4
    80003564:	00002d97          	auipc	s11,0x2
    80003568:	cbcd8d93          	addi	s11,s11,-836 # 80005220 <digits>
    8000356c:	00900593          	li	a1,9
    80003570:	0006051b          	sext.w	a0,a2
    80003574:	00000c93          	li	s9,0
    80003578:	02079793          	slli	a5,a5,0x20
    8000357c:	0207d793          	srli	a5,a5,0x20
    80003580:	00fd87b3          	add	a5,s11,a5
    80003584:	0007c783          	lbu	a5,0(a5)
    80003588:	02e656bb          	divuw	a3,a2,a4
    8000358c:	f8f40023          	sb	a5,-128(s0)
    80003590:	14c5d863          	bge	a1,a2,800036e0 <__printf+0x278>
    80003594:	06300593          	li	a1,99
    80003598:	00100c93          	li	s9,1
    8000359c:	02e6f7bb          	remuw	a5,a3,a4
    800035a0:	02079793          	slli	a5,a5,0x20
    800035a4:	0207d793          	srli	a5,a5,0x20
    800035a8:	00fd87b3          	add	a5,s11,a5
    800035ac:	0007c783          	lbu	a5,0(a5)
    800035b0:	02e6d73b          	divuw	a4,a3,a4
    800035b4:	f8f400a3          	sb	a5,-127(s0)
    800035b8:	12a5f463          	bgeu	a1,a0,800036e0 <__printf+0x278>
    800035bc:	00a00693          	li	a3,10
    800035c0:	00900593          	li	a1,9
    800035c4:	02d777bb          	remuw	a5,a4,a3
    800035c8:	02079793          	slli	a5,a5,0x20
    800035cc:	0207d793          	srli	a5,a5,0x20
    800035d0:	00fd87b3          	add	a5,s11,a5
    800035d4:	0007c503          	lbu	a0,0(a5)
    800035d8:	02d757bb          	divuw	a5,a4,a3
    800035dc:	f8a40123          	sb	a0,-126(s0)
    800035e0:	48e5f263          	bgeu	a1,a4,80003a64 <__printf+0x5fc>
    800035e4:	06300513          	li	a0,99
    800035e8:	02d7f5bb          	remuw	a1,a5,a3
    800035ec:	02059593          	slli	a1,a1,0x20
    800035f0:	0205d593          	srli	a1,a1,0x20
    800035f4:	00bd85b3          	add	a1,s11,a1
    800035f8:	0005c583          	lbu	a1,0(a1)
    800035fc:	02d7d7bb          	divuw	a5,a5,a3
    80003600:	f8b401a3          	sb	a1,-125(s0)
    80003604:	48e57263          	bgeu	a0,a4,80003a88 <__printf+0x620>
    80003608:	3e700513          	li	a0,999
    8000360c:	02d7f5bb          	remuw	a1,a5,a3
    80003610:	02059593          	slli	a1,a1,0x20
    80003614:	0205d593          	srli	a1,a1,0x20
    80003618:	00bd85b3          	add	a1,s11,a1
    8000361c:	0005c583          	lbu	a1,0(a1)
    80003620:	02d7d7bb          	divuw	a5,a5,a3
    80003624:	f8b40223          	sb	a1,-124(s0)
    80003628:	46e57663          	bgeu	a0,a4,80003a94 <__printf+0x62c>
    8000362c:	02d7f5bb          	remuw	a1,a5,a3
    80003630:	02059593          	slli	a1,a1,0x20
    80003634:	0205d593          	srli	a1,a1,0x20
    80003638:	00bd85b3          	add	a1,s11,a1
    8000363c:	0005c583          	lbu	a1,0(a1)
    80003640:	02d7d7bb          	divuw	a5,a5,a3
    80003644:	f8b402a3          	sb	a1,-123(s0)
    80003648:	46ea7863          	bgeu	s4,a4,80003ab8 <__printf+0x650>
    8000364c:	02d7f5bb          	remuw	a1,a5,a3
    80003650:	02059593          	slli	a1,a1,0x20
    80003654:	0205d593          	srli	a1,a1,0x20
    80003658:	00bd85b3          	add	a1,s11,a1
    8000365c:	0005c583          	lbu	a1,0(a1)
    80003660:	02d7d7bb          	divuw	a5,a5,a3
    80003664:	f8b40323          	sb	a1,-122(s0)
    80003668:	3eeaf863          	bgeu	s5,a4,80003a58 <__printf+0x5f0>
    8000366c:	02d7f5bb          	remuw	a1,a5,a3
    80003670:	02059593          	slli	a1,a1,0x20
    80003674:	0205d593          	srli	a1,a1,0x20
    80003678:	00bd85b3          	add	a1,s11,a1
    8000367c:	0005c583          	lbu	a1,0(a1)
    80003680:	02d7d7bb          	divuw	a5,a5,a3
    80003684:	f8b403a3          	sb	a1,-121(s0)
    80003688:	42eb7e63          	bgeu	s6,a4,80003ac4 <__printf+0x65c>
    8000368c:	02d7f5bb          	remuw	a1,a5,a3
    80003690:	02059593          	slli	a1,a1,0x20
    80003694:	0205d593          	srli	a1,a1,0x20
    80003698:	00bd85b3          	add	a1,s11,a1
    8000369c:	0005c583          	lbu	a1,0(a1)
    800036a0:	02d7d7bb          	divuw	a5,a5,a3
    800036a4:	f8b40423          	sb	a1,-120(s0)
    800036a8:	42ebfc63          	bgeu	s7,a4,80003ae0 <__printf+0x678>
    800036ac:	02079793          	slli	a5,a5,0x20
    800036b0:	0207d793          	srli	a5,a5,0x20
    800036b4:	00fd8db3          	add	s11,s11,a5
    800036b8:	000dc703          	lbu	a4,0(s11)
    800036bc:	00a00793          	li	a5,10
    800036c0:	00900c93          	li	s9,9
    800036c4:	f8e404a3          	sb	a4,-119(s0)
    800036c8:	00065c63          	bgez	a2,800036e0 <__printf+0x278>
    800036cc:	f9040713          	addi	a4,s0,-112
    800036d0:	00f70733          	add	a4,a4,a5
    800036d4:	02d00693          	li	a3,45
    800036d8:	fed70823          	sb	a3,-16(a4)
    800036dc:	00078c93          	mv	s9,a5
    800036e0:	f8040793          	addi	a5,s0,-128
    800036e4:	01978cb3          	add	s9,a5,s9
    800036e8:	f7f40d13          	addi	s10,s0,-129
    800036ec:	000cc503          	lbu	a0,0(s9)
    800036f0:	fffc8c93          	addi	s9,s9,-1
    800036f4:	00000097          	auipc	ra,0x0
    800036f8:	b90080e7          	jalr	-1136(ra) # 80003284 <consputc>
    800036fc:	ffac98e3          	bne	s9,s10,800036ec <__printf+0x284>
    80003700:	00094503          	lbu	a0,0(s2)
    80003704:	e00514e3          	bnez	a0,8000350c <__printf+0xa4>
    80003708:	1a0c1663          	bnez	s8,800038b4 <__printf+0x44c>
    8000370c:	08813083          	ld	ra,136(sp)
    80003710:	08013403          	ld	s0,128(sp)
    80003714:	07813483          	ld	s1,120(sp)
    80003718:	07013903          	ld	s2,112(sp)
    8000371c:	06813983          	ld	s3,104(sp)
    80003720:	06013a03          	ld	s4,96(sp)
    80003724:	05813a83          	ld	s5,88(sp)
    80003728:	05013b03          	ld	s6,80(sp)
    8000372c:	04813b83          	ld	s7,72(sp)
    80003730:	04013c03          	ld	s8,64(sp)
    80003734:	03813c83          	ld	s9,56(sp)
    80003738:	03013d03          	ld	s10,48(sp)
    8000373c:	02813d83          	ld	s11,40(sp)
    80003740:	0d010113          	addi	sp,sp,208
    80003744:	00008067          	ret
    80003748:	07300713          	li	a4,115
    8000374c:	1ce78a63          	beq	a5,a4,80003920 <__printf+0x4b8>
    80003750:	07800713          	li	a4,120
    80003754:	1ee79e63          	bne	a5,a4,80003950 <__printf+0x4e8>
    80003758:	f7843783          	ld	a5,-136(s0)
    8000375c:	0007a703          	lw	a4,0(a5)
    80003760:	00878793          	addi	a5,a5,8
    80003764:	f6f43c23          	sd	a5,-136(s0)
    80003768:	28074263          	bltz	a4,800039ec <__printf+0x584>
    8000376c:	00002d97          	auipc	s11,0x2
    80003770:	ab4d8d93          	addi	s11,s11,-1356 # 80005220 <digits>
    80003774:	00f77793          	andi	a5,a4,15
    80003778:	00fd87b3          	add	a5,s11,a5
    8000377c:	0007c683          	lbu	a3,0(a5)
    80003780:	00f00613          	li	a2,15
    80003784:	0007079b          	sext.w	a5,a4
    80003788:	f8d40023          	sb	a3,-128(s0)
    8000378c:	0047559b          	srliw	a1,a4,0x4
    80003790:	0047569b          	srliw	a3,a4,0x4
    80003794:	00000c93          	li	s9,0
    80003798:	0ee65063          	bge	a2,a4,80003878 <__printf+0x410>
    8000379c:	00f6f693          	andi	a3,a3,15
    800037a0:	00dd86b3          	add	a3,s11,a3
    800037a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800037a8:	0087d79b          	srliw	a5,a5,0x8
    800037ac:	00100c93          	li	s9,1
    800037b0:	f8d400a3          	sb	a3,-127(s0)
    800037b4:	0cb67263          	bgeu	a2,a1,80003878 <__printf+0x410>
    800037b8:	00f7f693          	andi	a3,a5,15
    800037bc:	00dd86b3          	add	a3,s11,a3
    800037c0:	0006c583          	lbu	a1,0(a3)
    800037c4:	00f00613          	li	a2,15
    800037c8:	0047d69b          	srliw	a3,a5,0x4
    800037cc:	f8b40123          	sb	a1,-126(s0)
    800037d0:	0047d593          	srli	a1,a5,0x4
    800037d4:	28f67e63          	bgeu	a2,a5,80003a70 <__printf+0x608>
    800037d8:	00f6f693          	andi	a3,a3,15
    800037dc:	00dd86b3          	add	a3,s11,a3
    800037e0:	0006c503          	lbu	a0,0(a3)
    800037e4:	0087d813          	srli	a6,a5,0x8
    800037e8:	0087d69b          	srliw	a3,a5,0x8
    800037ec:	f8a401a3          	sb	a0,-125(s0)
    800037f0:	28b67663          	bgeu	a2,a1,80003a7c <__printf+0x614>
    800037f4:	00f6f693          	andi	a3,a3,15
    800037f8:	00dd86b3          	add	a3,s11,a3
    800037fc:	0006c583          	lbu	a1,0(a3)
    80003800:	00c7d513          	srli	a0,a5,0xc
    80003804:	00c7d69b          	srliw	a3,a5,0xc
    80003808:	f8b40223          	sb	a1,-124(s0)
    8000380c:	29067a63          	bgeu	a2,a6,80003aa0 <__printf+0x638>
    80003810:	00f6f693          	andi	a3,a3,15
    80003814:	00dd86b3          	add	a3,s11,a3
    80003818:	0006c583          	lbu	a1,0(a3)
    8000381c:	0107d813          	srli	a6,a5,0x10
    80003820:	0107d69b          	srliw	a3,a5,0x10
    80003824:	f8b402a3          	sb	a1,-123(s0)
    80003828:	28a67263          	bgeu	a2,a0,80003aac <__printf+0x644>
    8000382c:	00f6f693          	andi	a3,a3,15
    80003830:	00dd86b3          	add	a3,s11,a3
    80003834:	0006c683          	lbu	a3,0(a3)
    80003838:	0147d79b          	srliw	a5,a5,0x14
    8000383c:	f8d40323          	sb	a3,-122(s0)
    80003840:	21067663          	bgeu	a2,a6,80003a4c <__printf+0x5e4>
    80003844:	02079793          	slli	a5,a5,0x20
    80003848:	0207d793          	srli	a5,a5,0x20
    8000384c:	00fd8db3          	add	s11,s11,a5
    80003850:	000dc683          	lbu	a3,0(s11)
    80003854:	00800793          	li	a5,8
    80003858:	00700c93          	li	s9,7
    8000385c:	f8d403a3          	sb	a3,-121(s0)
    80003860:	00075c63          	bgez	a4,80003878 <__printf+0x410>
    80003864:	f9040713          	addi	a4,s0,-112
    80003868:	00f70733          	add	a4,a4,a5
    8000386c:	02d00693          	li	a3,45
    80003870:	fed70823          	sb	a3,-16(a4)
    80003874:	00078c93          	mv	s9,a5
    80003878:	f8040793          	addi	a5,s0,-128
    8000387c:	01978cb3          	add	s9,a5,s9
    80003880:	f7f40d13          	addi	s10,s0,-129
    80003884:	000cc503          	lbu	a0,0(s9)
    80003888:	fffc8c93          	addi	s9,s9,-1
    8000388c:	00000097          	auipc	ra,0x0
    80003890:	9f8080e7          	jalr	-1544(ra) # 80003284 <consputc>
    80003894:	ff9d18e3          	bne	s10,s9,80003884 <__printf+0x41c>
    80003898:	0100006f          	j	800038a8 <__printf+0x440>
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	9e8080e7          	jalr	-1560(ra) # 80003284 <consputc>
    800038a4:	000c8493          	mv	s1,s9
    800038a8:	00094503          	lbu	a0,0(s2)
    800038ac:	c60510e3          	bnez	a0,8000350c <__printf+0xa4>
    800038b0:	e40c0ee3          	beqz	s8,8000370c <__printf+0x2a4>
    800038b4:	00003517          	auipc	a0,0x3
    800038b8:	1dc50513          	addi	a0,a0,476 # 80006a90 <pr>
    800038bc:	00001097          	auipc	ra,0x1
    800038c0:	94c080e7          	jalr	-1716(ra) # 80004208 <release>
    800038c4:	e49ff06f          	j	8000370c <__printf+0x2a4>
    800038c8:	f7843783          	ld	a5,-136(s0)
    800038cc:	03000513          	li	a0,48
    800038d0:	01000d13          	li	s10,16
    800038d4:	00878713          	addi	a4,a5,8
    800038d8:	0007bc83          	ld	s9,0(a5)
    800038dc:	f6e43c23          	sd	a4,-136(s0)
    800038e0:	00000097          	auipc	ra,0x0
    800038e4:	9a4080e7          	jalr	-1628(ra) # 80003284 <consputc>
    800038e8:	07800513          	li	a0,120
    800038ec:	00000097          	auipc	ra,0x0
    800038f0:	998080e7          	jalr	-1640(ra) # 80003284 <consputc>
    800038f4:	00002d97          	auipc	s11,0x2
    800038f8:	92cd8d93          	addi	s11,s11,-1748 # 80005220 <digits>
    800038fc:	03ccd793          	srli	a5,s9,0x3c
    80003900:	00fd87b3          	add	a5,s11,a5
    80003904:	0007c503          	lbu	a0,0(a5)
    80003908:	fffd0d1b          	addiw	s10,s10,-1
    8000390c:	004c9c93          	slli	s9,s9,0x4
    80003910:	00000097          	auipc	ra,0x0
    80003914:	974080e7          	jalr	-1676(ra) # 80003284 <consputc>
    80003918:	fe0d12e3          	bnez	s10,800038fc <__printf+0x494>
    8000391c:	f8dff06f          	j	800038a8 <__printf+0x440>
    80003920:	f7843783          	ld	a5,-136(s0)
    80003924:	0007bc83          	ld	s9,0(a5)
    80003928:	00878793          	addi	a5,a5,8
    8000392c:	f6f43c23          	sd	a5,-136(s0)
    80003930:	000c9a63          	bnez	s9,80003944 <__printf+0x4dc>
    80003934:	1080006f          	j	80003a3c <__printf+0x5d4>
    80003938:	001c8c93          	addi	s9,s9,1
    8000393c:	00000097          	auipc	ra,0x0
    80003940:	948080e7          	jalr	-1720(ra) # 80003284 <consputc>
    80003944:	000cc503          	lbu	a0,0(s9)
    80003948:	fe0518e3          	bnez	a0,80003938 <__printf+0x4d0>
    8000394c:	f5dff06f          	j	800038a8 <__printf+0x440>
    80003950:	02500513          	li	a0,37
    80003954:	00000097          	auipc	ra,0x0
    80003958:	930080e7          	jalr	-1744(ra) # 80003284 <consputc>
    8000395c:	000c8513          	mv	a0,s9
    80003960:	00000097          	auipc	ra,0x0
    80003964:	924080e7          	jalr	-1756(ra) # 80003284 <consputc>
    80003968:	f41ff06f          	j	800038a8 <__printf+0x440>
    8000396c:	02500513          	li	a0,37
    80003970:	00000097          	auipc	ra,0x0
    80003974:	914080e7          	jalr	-1772(ra) # 80003284 <consputc>
    80003978:	f31ff06f          	j	800038a8 <__printf+0x440>
    8000397c:	00030513          	mv	a0,t1
    80003980:	00000097          	auipc	ra,0x0
    80003984:	7bc080e7          	jalr	1980(ra) # 8000413c <acquire>
    80003988:	b4dff06f          	j	800034d4 <__printf+0x6c>
    8000398c:	40c0053b          	negw	a0,a2
    80003990:	00a00713          	li	a4,10
    80003994:	02e576bb          	remuw	a3,a0,a4
    80003998:	00002d97          	auipc	s11,0x2
    8000399c:	888d8d93          	addi	s11,s11,-1912 # 80005220 <digits>
    800039a0:	ff700593          	li	a1,-9
    800039a4:	02069693          	slli	a3,a3,0x20
    800039a8:	0206d693          	srli	a3,a3,0x20
    800039ac:	00dd86b3          	add	a3,s11,a3
    800039b0:	0006c683          	lbu	a3,0(a3)
    800039b4:	02e557bb          	divuw	a5,a0,a4
    800039b8:	f8d40023          	sb	a3,-128(s0)
    800039bc:	10b65e63          	bge	a2,a1,80003ad8 <__printf+0x670>
    800039c0:	06300593          	li	a1,99
    800039c4:	02e7f6bb          	remuw	a3,a5,a4
    800039c8:	02069693          	slli	a3,a3,0x20
    800039cc:	0206d693          	srli	a3,a3,0x20
    800039d0:	00dd86b3          	add	a3,s11,a3
    800039d4:	0006c683          	lbu	a3,0(a3)
    800039d8:	02e7d73b          	divuw	a4,a5,a4
    800039dc:	00200793          	li	a5,2
    800039e0:	f8d400a3          	sb	a3,-127(s0)
    800039e4:	bca5ece3          	bltu	a1,a0,800035bc <__printf+0x154>
    800039e8:	ce5ff06f          	j	800036cc <__printf+0x264>
    800039ec:	40e007bb          	negw	a5,a4
    800039f0:	00002d97          	auipc	s11,0x2
    800039f4:	830d8d93          	addi	s11,s11,-2000 # 80005220 <digits>
    800039f8:	00f7f693          	andi	a3,a5,15
    800039fc:	00dd86b3          	add	a3,s11,a3
    80003a00:	0006c583          	lbu	a1,0(a3)
    80003a04:	ff100613          	li	a2,-15
    80003a08:	0047d69b          	srliw	a3,a5,0x4
    80003a0c:	f8b40023          	sb	a1,-128(s0)
    80003a10:	0047d59b          	srliw	a1,a5,0x4
    80003a14:	0ac75e63          	bge	a4,a2,80003ad0 <__printf+0x668>
    80003a18:	00f6f693          	andi	a3,a3,15
    80003a1c:	00dd86b3          	add	a3,s11,a3
    80003a20:	0006c603          	lbu	a2,0(a3)
    80003a24:	00f00693          	li	a3,15
    80003a28:	0087d79b          	srliw	a5,a5,0x8
    80003a2c:	f8c400a3          	sb	a2,-127(s0)
    80003a30:	d8b6e4e3          	bltu	a3,a1,800037b8 <__printf+0x350>
    80003a34:	00200793          	li	a5,2
    80003a38:	e2dff06f          	j	80003864 <__printf+0x3fc>
    80003a3c:	00001c97          	auipc	s9,0x1
    80003a40:	7c4c8c93          	addi	s9,s9,1988 # 80005200 <_ZZ12printIntegermE6digits+0x148>
    80003a44:	02800513          	li	a0,40
    80003a48:	ef1ff06f          	j	80003938 <__printf+0x4d0>
    80003a4c:	00700793          	li	a5,7
    80003a50:	00600c93          	li	s9,6
    80003a54:	e0dff06f          	j	80003860 <__printf+0x3f8>
    80003a58:	00700793          	li	a5,7
    80003a5c:	00600c93          	li	s9,6
    80003a60:	c69ff06f          	j	800036c8 <__printf+0x260>
    80003a64:	00300793          	li	a5,3
    80003a68:	00200c93          	li	s9,2
    80003a6c:	c5dff06f          	j	800036c8 <__printf+0x260>
    80003a70:	00300793          	li	a5,3
    80003a74:	00200c93          	li	s9,2
    80003a78:	de9ff06f          	j	80003860 <__printf+0x3f8>
    80003a7c:	00400793          	li	a5,4
    80003a80:	00300c93          	li	s9,3
    80003a84:	dddff06f          	j	80003860 <__printf+0x3f8>
    80003a88:	00400793          	li	a5,4
    80003a8c:	00300c93          	li	s9,3
    80003a90:	c39ff06f          	j	800036c8 <__printf+0x260>
    80003a94:	00500793          	li	a5,5
    80003a98:	00400c93          	li	s9,4
    80003a9c:	c2dff06f          	j	800036c8 <__printf+0x260>
    80003aa0:	00500793          	li	a5,5
    80003aa4:	00400c93          	li	s9,4
    80003aa8:	db9ff06f          	j	80003860 <__printf+0x3f8>
    80003aac:	00600793          	li	a5,6
    80003ab0:	00500c93          	li	s9,5
    80003ab4:	dadff06f          	j	80003860 <__printf+0x3f8>
    80003ab8:	00600793          	li	a5,6
    80003abc:	00500c93          	li	s9,5
    80003ac0:	c09ff06f          	j	800036c8 <__printf+0x260>
    80003ac4:	00800793          	li	a5,8
    80003ac8:	00700c93          	li	s9,7
    80003acc:	bfdff06f          	j	800036c8 <__printf+0x260>
    80003ad0:	00100793          	li	a5,1
    80003ad4:	d91ff06f          	j	80003864 <__printf+0x3fc>
    80003ad8:	00100793          	li	a5,1
    80003adc:	bf1ff06f          	j	800036cc <__printf+0x264>
    80003ae0:	00900793          	li	a5,9
    80003ae4:	00800c93          	li	s9,8
    80003ae8:	be1ff06f          	j	800036c8 <__printf+0x260>
    80003aec:	00001517          	auipc	a0,0x1
    80003af0:	71c50513          	addi	a0,a0,1820 # 80005208 <_ZZ12printIntegermE6digits+0x150>
    80003af4:	00000097          	auipc	ra,0x0
    80003af8:	918080e7          	jalr	-1768(ra) # 8000340c <panic>

0000000080003afc <printfinit>:
    80003afc:	fe010113          	addi	sp,sp,-32
    80003b00:	00813823          	sd	s0,16(sp)
    80003b04:	00913423          	sd	s1,8(sp)
    80003b08:	00113c23          	sd	ra,24(sp)
    80003b0c:	02010413          	addi	s0,sp,32
    80003b10:	00003497          	auipc	s1,0x3
    80003b14:	f8048493          	addi	s1,s1,-128 # 80006a90 <pr>
    80003b18:	00048513          	mv	a0,s1
    80003b1c:	00001597          	auipc	a1,0x1
    80003b20:	6fc58593          	addi	a1,a1,1788 # 80005218 <_ZZ12printIntegermE6digits+0x160>
    80003b24:	00000097          	auipc	ra,0x0
    80003b28:	5f4080e7          	jalr	1524(ra) # 80004118 <initlock>
    80003b2c:	01813083          	ld	ra,24(sp)
    80003b30:	01013403          	ld	s0,16(sp)
    80003b34:	0004ac23          	sw	zero,24(s1)
    80003b38:	00813483          	ld	s1,8(sp)
    80003b3c:	02010113          	addi	sp,sp,32
    80003b40:	00008067          	ret

0000000080003b44 <uartinit>:
    80003b44:	ff010113          	addi	sp,sp,-16
    80003b48:	00813423          	sd	s0,8(sp)
    80003b4c:	01010413          	addi	s0,sp,16
    80003b50:	100007b7          	lui	a5,0x10000
    80003b54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003b58:	f8000713          	li	a4,-128
    80003b5c:	00e781a3          	sb	a4,3(a5)
    80003b60:	00300713          	li	a4,3
    80003b64:	00e78023          	sb	a4,0(a5)
    80003b68:	000780a3          	sb	zero,1(a5)
    80003b6c:	00e781a3          	sb	a4,3(a5)
    80003b70:	00700693          	li	a3,7
    80003b74:	00d78123          	sb	a3,2(a5)
    80003b78:	00e780a3          	sb	a4,1(a5)
    80003b7c:	00813403          	ld	s0,8(sp)
    80003b80:	01010113          	addi	sp,sp,16
    80003b84:	00008067          	ret

0000000080003b88 <uartputc>:
    80003b88:	00002797          	auipc	a5,0x2
    80003b8c:	ca07a783          	lw	a5,-864(a5) # 80005828 <panicked>
    80003b90:	00078463          	beqz	a5,80003b98 <uartputc+0x10>
    80003b94:	0000006f          	j	80003b94 <uartputc+0xc>
    80003b98:	fd010113          	addi	sp,sp,-48
    80003b9c:	02813023          	sd	s0,32(sp)
    80003ba0:	00913c23          	sd	s1,24(sp)
    80003ba4:	01213823          	sd	s2,16(sp)
    80003ba8:	01313423          	sd	s3,8(sp)
    80003bac:	02113423          	sd	ra,40(sp)
    80003bb0:	03010413          	addi	s0,sp,48
    80003bb4:	00002917          	auipc	s2,0x2
    80003bb8:	c7c90913          	addi	s2,s2,-900 # 80005830 <uart_tx_r>
    80003bbc:	00093783          	ld	a5,0(s2)
    80003bc0:	00002497          	auipc	s1,0x2
    80003bc4:	c7848493          	addi	s1,s1,-904 # 80005838 <uart_tx_w>
    80003bc8:	0004b703          	ld	a4,0(s1)
    80003bcc:	02078693          	addi	a3,a5,32
    80003bd0:	00050993          	mv	s3,a0
    80003bd4:	02e69c63          	bne	a3,a4,80003c0c <uartputc+0x84>
    80003bd8:	00001097          	auipc	ra,0x1
    80003bdc:	834080e7          	jalr	-1996(ra) # 8000440c <push_on>
    80003be0:	00093783          	ld	a5,0(s2)
    80003be4:	0004b703          	ld	a4,0(s1)
    80003be8:	02078793          	addi	a5,a5,32
    80003bec:	00e79463          	bne	a5,a4,80003bf4 <uartputc+0x6c>
    80003bf0:	0000006f          	j	80003bf0 <uartputc+0x68>
    80003bf4:	00001097          	auipc	ra,0x1
    80003bf8:	88c080e7          	jalr	-1908(ra) # 80004480 <pop_on>
    80003bfc:	00093783          	ld	a5,0(s2)
    80003c00:	0004b703          	ld	a4,0(s1)
    80003c04:	02078693          	addi	a3,a5,32
    80003c08:	fce688e3          	beq	a3,a4,80003bd8 <uartputc+0x50>
    80003c0c:	01f77693          	andi	a3,a4,31
    80003c10:	00003597          	auipc	a1,0x3
    80003c14:	ea058593          	addi	a1,a1,-352 # 80006ab0 <uart_tx_buf>
    80003c18:	00d586b3          	add	a3,a1,a3
    80003c1c:	00170713          	addi	a4,a4,1
    80003c20:	01368023          	sb	s3,0(a3)
    80003c24:	00e4b023          	sd	a4,0(s1)
    80003c28:	10000637          	lui	a2,0x10000
    80003c2c:	02f71063          	bne	a4,a5,80003c4c <uartputc+0xc4>
    80003c30:	0340006f          	j	80003c64 <uartputc+0xdc>
    80003c34:	00074703          	lbu	a4,0(a4)
    80003c38:	00f93023          	sd	a5,0(s2)
    80003c3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003c40:	00093783          	ld	a5,0(s2)
    80003c44:	0004b703          	ld	a4,0(s1)
    80003c48:	00f70e63          	beq	a4,a5,80003c64 <uartputc+0xdc>
    80003c4c:	00564683          	lbu	a3,5(a2)
    80003c50:	01f7f713          	andi	a4,a5,31
    80003c54:	00e58733          	add	a4,a1,a4
    80003c58:	0206f693          	andi	a3,a3,32
    80003c5c:	00178793          	addi	a5,a5,1
    80003c60:	fc069ae3          	bnez	a3,80003c34 <uartputc+0xac>
    80003c64:	02813083          	ld	ra,40(sp)
    80003c68:	02013403          	ld	s0,32(sp)
    80003c6c:	01813483          	ld	s1,24(sp)
    80003c70:	01013903          	ld	s2,16(sp)
    80003c74:	00813983          	ld	s3,8(sp)
    80003c78:	03010113          	addi	sp,sp,48
    80003c7c:	00008067          	ret

0000000080003c80 <uartputc_sync>:
    80003c80:	ff010113          	addi	sp,sp,-16
    80003c84:	00813423          	sd	s0,8(sp)
    80003c88:	01010413          	addi	s0,sp,16
    80003c8c:	00002717          	auipc	a4,0x2
    80003c90:	b9c72703          	lw	a4,-1124(a4) # 80005828 <panicked>
    80003c94:	02071663          	bnez	a4,80003cc0 <uartputc_sync+0x40>
    80003c98:	00050793          	mv	a5,a0
    80003c9c:	100006b7          	lui	a3,0x10000
    80003ca0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003ca4:	02077713          	andi	a4,a4,32
    80003ca8:	fe070ce3          	beqz	a4,80003ca0 <uartputc_sync+0x20>
    80003cac:	0ff7f793          	andi	a5,a5,255
    80003cb0:	00f68023          	sb	a5,0(a3)
    80003cb4:	00813403          	ld	s0,8(sp)
    80003cb8:	01010113          	addi	sp,sp,16
    80003cbc:	00008067          	ret
    80003cc0:	0000006f          	j	80003cc0 <uartputc_sync+0x40>

0000000080003cc4 <uartstart>:
    80003cc4:	ff010113          	addi	sp,sp,-16
    80003cc8:	00813423          	sd	s0,8(sp)
    80003ccc:	01010413          	addi	s0,sp,16
    80003cd0:	00002617          	auipc	a2,0x2
    80003cd4:	b6060613          	addi	a2,a2,-1184 # 80005830 <uart_tx_r>
    80003cd8:	00002517          	auipc	a0,0x2
    80003cdc:	b6050513          	addi	a0,a0,-1184 # 80005838 <uart_tx_w>
    80003ce0:	00063783          	ld	a5,0(a2)
    80003ce4:	00053703          	ld	a4,0(a0)
    80003ce8:	04f70263          	beq	a4,a5,80003d2c <uartstart+0x68>
    80003cec:	100005b7          	lui	a1,0x10000
    80003cf0:	00003817          	auipc	a6,0x3
    80003cf4:	dc080813          	addi	a6,a6,-576 # 80006ab0 <uart_tx_buf>
    80003cf8:	01c0006f          	j	80003d14 <uartstart+0x50>
    80003cfc:	0006c703          	lbu	a4,0(a3)
    80003d00:	00f63023          	sd	a5,0(a2)
    80003d04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d08:	00063783          	ld	a5,0(a2)
    80003d0c:	00053703          	ld	a4,0(a0)
    80003d10:	00f70e63          	beq	a4,a5,80003d2c <uartstart+0x68>
    80003d14:	01f7f713          	andi	a4,a5,31
    80003d18:	00e806b3          	add	a3,a6,a4
    80003d1c:	0055c703          	lbu	a4,5(a1)
    80003d20:	00178793          	addi	a5,a5,1
    80003d24:	02077713          	andi	a4,a4,32
    80003d28:	fc071ae3          	bnez	a4,80003cfc <uartstart+0x38>
    80003d2c:	00813403          	ld	s0,8(sp)
    80003d30:	01010113          	addi	sp,sp,16
    80003d34:	00008067          	ret

0000000080003d38 <uartgetc>:
    80003d38:	ff010113          	addi	sp,sp,-16
    80003d3c:	00813423          	sd	s0,8(sp)
    80003d40:	01010413          	addi	s0,sp,16
    80003d44:	10000737          	lui	a4,0x10000
    80003d48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003d4c:	0017f793          	andi	a5,a5,1
    80003d50:	00078c63          	beqz	a5,80003d68 <uartgetc+0x30>
    80003d54:	00074503          	lbu	a0,0(a4)
    80003d58:	0ff57513          	andi	a0,a0,255
    80003d5c:	00813403          	ld	s0,8(sp)
    80003d60:	01010113          	addi	sp,sp,16
    80003d64:	00008067          	ret
    80003d68:	fff00513          	li	a0,-1
    80003d6c:	ff1ff06f          	j	80003d5c <uartgetc+0x24>

0000000080003d70 <uartintr>:
    80003d70:	100007b7          	lui	a5,0x10000
    80003d74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003d78:	0017f793          	andi	a5,a5,1
    80003d7c:	0a078463          	beqz	a5,80003e24 <uartintr+0xb4>
    80003d80:	fe010113          	addi	sp,sp,-32
    80003d84:	00813823          	sd	s0,16(sp)
    80003d88:	00913423          	sd	s1,8(sp)
    80003d8c:	00113c23          	sd	ra,24(sp)
    80003d90:	02010413          	addi	s0,sp,32
    80003d94:	100004b7          	lui	s1,0x10000
    80003d98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003d9c:	0ff57513          	andi	a0,a0,255
    80003da0:	fffff097          	auipc	ra,0xfffff
    80003da4:	534080e7          	jalr	1332(ra) # 800032d4 <consoleintr>
    80003da8:	0054c783          	lbu	a5,5(s1)
    80003dac:	0017f793          	andi	a5,a5,1
    80003db0:	fe0794e3          	bnez	a5,80003d98 <uartintr+0x28>
    80003db4:	00002617          	auipc	a2,0x2
    80003db8:	a7c60613          	addi	a2,a2,-1412 # 80005830 <uart_tx_r>
    80003dbc:	00002517          	auipc	a0,0x2
    80003dc0:	a7c50513          	addi	a0,a0,-1412 # 80005838 <uart_tx_w>
    80003dc4:	00063783          	ld	a5,0(a2)
    80003dc8:	00053703          	ld	a4,0(a0)
    80003dcc:	04f70263          	beq	a4,a5,80003e10 <uartintr+0xa0>
    80003dd0:	100005b7          	lui	a1,0x10000
    80003dd4:	00003817          	auipc	a6,0x3
    80003dd8:	cdc80813          	addi	a6,a6,-804 # 80006ab0 <uart_tx_buf>
    80003ddc:	01c0006f          	j	80003df8 <uartintr+0x88>
    80003de0:	0006c703          	lbu	a4,0(a3)
    80003de4:	00f63023          	sd	a5,0(a2)
    80003de8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003dec:	00063783          	ld	a5,0(a2)
    80003df0:	00053703          	ld	a4,0(a0)
    80003df4:	00f70e63          	beq	a4,a5,80003e10 <uartintr+0xa0>
    80003df8:	01f7f713          	andi	a4,a5,31
    80003dfc:	00e806b3          	add	a3,a6,a4
    80003e00:	0055c703          	lbu	a4,5(a1)
    80003e04:	00178793          	addi	a5,a5,1
    80003e08:	02077713          	andi	a4,a4,32
    80003e0c:	fc071ae3          	bnez	a4,80003de0 <uartintr+0x70>
    80003e10:	01813083          	ld	ra,24(sp)
    80003e14:	01013403          	ld	s0,16(sp)
    80003e18:	00813483          	ld	s1,8(sp)
    80003e1c:	02010113          	addi	sp,sp,32
    80003e20:	00008067          	ret
    80003e24:	00002617          	auipc	a2,0x2
    80003e28:	a0c60613          	addi	a2,a2,-1524 # 80005830 <uart_tx_r>
    80003e2c:	00002517          	auipc	a0,0x2
    80003e30:	a0c50513          	addi	a0,a0,-1524 # 80005838 <uart_tx_w>
    80003e34:	00063783          	ld	a5,0(a2)
    80003e38:	00053703          	ld	a4,0(a0)
    80003e3c:	04f70263          	beq	a4,a5,80003e80 <uartintr+0x110>
    80003e40:	100005b7          	lui	a1,0x10000
    80003e44:	00003817          	auipc	a6,0x3
    80003e48:	c6c80813          	addi	a6,a6,-916 # 80006ab0 <uart_tx_buf>
    80003e4c:	01c0006f          	j	80003e68 <uartintr+0xf8>
    80003e50:	0006c703          	lbu	a4,0(a3)
    80003e54:	00f63023          	sd	a5,0(a2)
    80003e58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e5c:	00063783          	ld	a5,0(a2)
    80003e60:	00053703          	ld	a4,0(a0)
    80003e64:	02f70063          	beq	a4,a5,80003e84 <uartintr+0x114>
    80003e68:	01f7f713          	andi	a4,a5,31
    80003e6c:	00e806b3          	add	a3,a6,a4
    80003e70:	0055c703          	lbu	a4,5(a1)
    80003e74:	00178793          	addi	a5,a5,1
    80003e78:	02077713          	andi	a4,a4,32
    80003e7c:	fc071ae3          	bnez	a4,80003e50 <uartintr+0xe0>
    80003e80:	00008067          	ret
    80003e84:	00008067          	ret

0000000080003e88 <kinit>:
    80003e88:	fc010113          	addi	sp,sp,-64
    80003e8c:	02913423          	sd	s1,40(sp)
    80003e90:	fffff7b7          	lui	a5,0xfffff
    80003e94:	00004497          	auipc	s1,0x4
    80003e98:	c3b48493          	addi	s1,s1,-965 # 80007acf <end+0xfff>
    80003e9c:	02813823          	sd	s0,48(sp)
    80003ea0:	01313c23          	sd	s3,24(sp)
    80003ea4:	00f4f4b3          	and	s1,s1,a5
    80003ea8:	02113c23          	sd	ra,56(sp)
    80003eac:	03213023          	sd	s2,32(sp)
    80003eb0:	01413823          	sd	s4,16(sp)
    80003eb4:	01513423          	sd	s5,8(sp)
    80003eb8:	04010413          	addi	s0,sp,64
    80003ebc:	000017b7          	lui	a5,0x1
    80003ec0:	01100993          	li	s3,17
    80003ec4:	00f487b3          	add	a5,s1,a5
    80003ec8:	01b99993          	slli	s3,s3,0x1b
    80003ecc:	06f9e063          	bltu	s3,a5,80003f2c <kinit+0xa4>
    80003ed0:	00003a97          	auipc	s5,0x3
    80003ed4:	c00a8a93          	addi	s5,s5,-1024 # 80006ad0 <end>
    80003ed8:	0754ec63          	bltu	s1,s5,80003f50 <kinit+0xc8>
    80003edc:	0734fa63          	bgeu	s1,s3,80003f50 <kinit+0xc8>
    80003ee0:	00088a37          	lui	s4,0x88
    80003ee4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003ee8:	00002917          	auipc	s2,0x2
    80003eec:	95890913          	addi	s2,s2,-1704 # 80005840 <kmem>
    80003ef0:	00ca1a13          	slli	s4,s4,0xc
    80003ef4:	0140006f          	j	80003f08 <kinit+0x80>
    80003ef8:	000017b7          	lui	a5,0x1
    80003efc:	00f484b3          	add	s1,s1,a5
    80003f00:	0554e863          	bltu	s1,s5,80003f50 <kinit+0xc8>
    80003f04:	0534f663          	bgeu	s1,s3,80003f50 <kinit+0xc8>
    80003f08:	00001637          	lui	a2,0x1
    80003f0c:	00100593          	li	a1,1
    80003f10:	00048513          	mv	a0,s1
    80003f14:	00000097          	auipc	ra,0x0
    80003f18:	5e4080e7          	jalr	1508(ra) # 800044f8 <__memset>
    80003f1c:	00093783          	ld	a5,0(s2)
    80003f20:	00f4b023          	sd	a5,0(s1)
    80003f24:	00993023          	sd	s1,0(s2)
    80003f28:	fd4498e3          	bne	s1,s4,80003ef8 <kinit+0x70>
    80003f2c:	03813083          	ld	ra,56(sp)
    80003f30:	03013403          	ld	s0,48(sp)
    80003f34:	02813483          	ld	s1,40(sp)
    80003f38:	02013903          	ld	s2,32(sp)
    80003f3c:	01813983          	ld	s3,24(sp)
    80003f40:	01013a03          	ld	s4,16(sp)
    80003f44:	00813a83          	ld	s5,8(sp)
    80003f48:	04010113          	addi	sp,sp,64
    80003f4c:	00008067          	ret
    80003f50:	00001517          	auipc	a0,0x1
    80003f54:	2e850513          	addi	a0,a0,744 # 80005238 <digits+0x18>
    80003f58:	fffff097          	auipc	ra,0xfffff
    80003f5c:	4b4080e7          	jalr	1204(ra) # 8000340c <panic>

0000000080003f60 <freerange>:
    80003f60:	fc010113          	addi	sp,sp,-64
    80003f64:	000017b7          	lui	a5,0x1
    80003f68:	02913423          	sd	s1,40(sp)
    80003f6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003f70:	009504b3          	add	s1,a0,s1
    80003f74:	fffff537          	lui	a0,0xfffff
    80003f78:	02813823          	sd	s0,48(sp)
    80003f7c:	02113c23          	sd	ra,56(sp)
    80003f80:	03213023          	sd	s2,32(sp)
    80003f84:	01313c23          	sd	s3,24(sp)
    80003f88:	01413823          	sd	s4,16(sp)
    80003f8c:	01513423          	sd	s5,8(sp)
    80003f90:	01613023          	sd	s6,0(sp)
    80003f94:	04010413          	addi	s0,sp,64
    80003f98:	00a4f4b3          	and	s1,s1,a0
    80003f9c:	00f487b3          	add	a5,s1,a5
    80003fa0:	06f5e463          	bltu	a1,a5,80004008 <freerange+0xa8>
    80003fa4:	00003a97          	auipc	s5,0x3
    80003fa8:	b2ca8a93          	addi	s5,s5,-1236 # 80006ad0 <end>
    80003fac:	0954e263          	bltu	s1,s5,80004030 <freerange+0xd0>
    80003fb0:	01100993          	li	s3,17
    80003fb4:	01b99993          	slli	s3,s3,0x1b
    80003fb8:	0734fc63          	bgeu	s1,s3,80004030 <freerange+0xd0>
    80003fbc:	00058a13          	mv	s4,a1
    80003fc0:	00002917          	auipc	s2,0x2
    80003fc4:	88090913          	addi	s2,s2,-1920 # 80005840 <kmem>
    80003fc8:	00002b37          	lui	s6,0x2
    80003fcc:	0140006f          	j	80003fe0 <freerange+0x80>
    80003fd0:	000017b7          	lui	a5,0x1
    80003fd4:	00f484b3          	add	s1,s1,a5
    80003fd8:	0554ec63          	bltu	s1,s5,80004030 <freerange+0xd0>
    80003fdc:	0534fa63          	bgeu	s1,s3,80004030 <freerange+0xd0>
    80003fe0:	00001637          	lui	a2,0x1
    80003fe4:	00100593          	li	a1,1
    80003fe8:	00048513          	mv	a0,s1
    80003fec:	00000097          	auipc	ra,0x0
    80003ff0:	50c080e7          	jalr	1292(ra) # 800044f8 <__memset>
    80003ff4:	00093703          	ld	a4,0(s2)
    80003ff8:	016487b3          	add	a5,s1,s6
    80003ffc:	00e4b023          	sd	a4,0(s1)
    80004000:	00993023          	sd	s1,0(s2)
    80004004:	fcfa76e3          	bgeu	s4,a5,80003fd0 <freerange+0x70>
    80004008:	03813083          	ld	ra,56(sp)
    8000400c:	03013403          	ld	s0,48(sp)
    80004010:	02813483          	ld	s1,40(sp)
    80004014:	02013903          	ld	s2,32(sp)
    80004018:	01813983          	ld	s3,24(sp)
    8000401c:	01013a03          	ld	s4,16(sp)
    80004020:	00813a83          	ld	s5,8(sp)
    80004024:	00013b03          	ld	s6,0(sp)
    80004028:	04010113          	addi	sp,sp,64
    8000402c:	00008067          	ret
    80004030:	00001517          	auipc	a0,0x1
    80004034:	20850513          	addi	a0,a0,520 # 80005238 <digits+0x18>
    80004038:	fffff097          	auipc	ra,0xfffff
    8000403c:	3d4080e7          	jalr	980(ra) # 8000340c <panic>

0000000080004040 <kfree>:
    80004040:	fe010113          	addi	sp,sp,-32
    80004044:	00813823          	sd	s0,16(sp)
    80004048:	00113c23          	sd	ra,24(sp)
    8000404c:	00913423          	sd	s1,8(sp)
    80004050:	02010413          	addi	s0,sp,32
    80004054:	03451793          	slli	a5,a0,0x34
    80004058:	04079c63          	bnez	a5,800040b0 <kfree+0x70>
    8000405c:	00003797          	auipc	a5,0x3
    80004060:	a7478793          	addi	a5,a5,-1420 # 80006ad0 <end>
    80004064:	00050493          	mv	s1,a0
    80004068:	04f56463          	bltu	a0,a5,800040b0 <kfree+0x70>
    8000406c:	01100793          	li	a5,17
    80004070:	01b79793          	slli	a5,a5,0x1b
    80004074:	02f57e63          	bgeu	a0,a5,800040b0 <kfree+0x70>
    80004078:	00001637          	lui	a2,0x1
    8000407c:	00100593          	li	a1,1
    80004080:	00000097          	auipc	ra,0x0
    80004084:	478080e7          	jalr	1144(ra) # 800044f8 <__memset>
    80004088:	00001797          	auipc	a5,0x1
    8000408c:	7b878793          	addi	a5,a5,1976 # 80005840 <kmem>
    80004090:	0007b703          	ld	a4,0(a5)
    80004094:	01813083          	ld	ra,24(sp)
    80004098:	01013403          	ld	s0,16(sp)
    8000409c:	00e4b023          	sd	a4,0(s1)
    800040a0:	0097b023          	sd	s1,0(a5)
    800040a4:	00813483          	ld	s1,8(sp)
    800040a8:	02010113          	addi	sp,sp,32
    800040ac:	00008067          	ret
    800040b0:	00001517          	auipc	a0,0x1
    800040b4:	18850513          	addi	a0,a0,392 # 80005238 <digits+0x18>
    800040b8:	fffff097          	auipc	ra,0xfffff
    800040bc:	354080e7          	jalr	852(ra) # 8000340c <panic>

00000000800040c0 <kalloc>:
    800040c0:	fe010113          	addi	sp,sp,-32
    800040c4:	00813823          	sd	s0,16(sp)
    800040c8:	00913423          	sd	s1,8(sp)
    800040cc:	00113c23          	sd	ra,24(sp)
    800040d0:	02010413          	addi	s0,sp,32
    800040d4:	00001797          	auipc	a5,0x1
    800040d8:	76c78793          	addi	a5,a5,1900 # 80005840 <kmem>
    800040dc:	0007b483          	ld	s1,0(a5)
    800040e0:	02048063          	beqz	s1,80004100 <kalloc+0x40>
    800040e4:	0004b703          	ld	a4,0(s1)
    800040e8:	00001637          	lui	a2,0x1
    800040ec:	00500593          	li	a1,5
    800040f0:	00048513          	mv	a0,s1
    800040f4:	00e7b023          	sd	a4,0(a5)
    800040f8:	00000097          	auipc	ra,0x0
    800040fc:	400080e7          	jalr	1024(ra) # 800044f8 <__memset>
    80004100:	01813083          	ld	ra,24(sp)
    80004104:	01013403          	ld	s0,16(sp)
    80004108:	00048513          	mv	a0,s1
    8000410c:	00813483          	ld	s1,8(sp)
    80004110:	02010113          	addi	sp,sp,32
    80004114:	00008067          	ret

0000000080004118 <initlock>:
    80004118:	ff010113          	addi	sp,sp,-16
    8000411c:	00813423          	sd	s0,8(sp)
    80004120:	01010413          	addi	s0,sp,16
    80004124:	00813403          	ld	s0,8(sp)
    80004128:	00b53423          	sd	a1,8(a0)
    8000412c:	00052023          	sw	zero,0(a0)
    80004130:	00053823          	sd	zero,16(a0)
    80004134:	01010113          	addi	sp,sp,16
    80004138:	00008067          	ret

000000008000413c <acquire>:
    8000413c:	fe010113          	addi	sp,sp,-32
    80004140:	00813823          	sd	s0,16(sp)
    80004144:	00913423          	sd	s1,8(sp)
    80004148:	00113c23          	sd	ra,24(sp)
    8000414c:	01213023          	sd	s2,0(sp)
    80004150:	02010413          	addi	s0,sp,32
    80004154:	00050493          	mv	s1,a0
    80004158:	10002973          	csrr	s2,sstatus
    8000415c:	100027f3          	csrr	a5,sstatus
    80004160:	ffd7f793          	andi	a5,a5,-3
    80004164:	10079073          	csrw	sstatus,a5
    80004168:	fffff097          	auipc	ra,0xfffff
    8000416c:	8e4080e7          	jalr	-1820(ra) # 80002a4c <mycpu>
    80004170:	07852783          	lw	a5,120(a0)
    80004174:	06078e63          	beqz	a5,800041f0 <acquire+0xb4>
    80004178:	fffff097          	auipc	ra,0xfffff
    8000417c:	8d4080e7          	jalr	-1836(ra) # 80002a4c <mycpu>
    80004180:	07852783          	lw	a5,120(a0)
    80004184:	0004a703          	lw	a4,0(s1)
    80004188:	0017879b          	addiw	a5,a5,1
    8000418c:	06f52c23          	sw	a5,120(a0)
    80004190:	04071063          	bnez	a4,800041d0 <acquire+0x94>
    80004194:	00100713          	li	a4,1
    80004198:	00070793          	mv	a5,a4
    8000419c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800041a0:	0007879b          	sext.w	a5,a5
    800041a4:	fe079ae3          	bnez	a5,80004198 <acquire+0x5c>
    800041a8:	0ff0000f          	fence
    800041ac:	fffff097          	auipc	ra,0xfffff
    800041b0:	8a0080e7          	jalr	-1888(ra) # 80002a4c <mycpu>
    800041b4:	01813083          	ld	ra,24(sp)
    800041b8:	01013403          	ld	s0,16(sp)
    800041bc:	00a4b823          	sd	a0,16(s1)
    800041c0:	00013903          	ld	s2,0(sp)
    800041c4:	00813483          	ld	s1,8(sp)
    800041c8:	02010113          	addi	sp,sp,32
    800041cc:	00008067          	ret
    800041d0:	0104b903          	ld	s2,16(s1)
    800041d4:	fffff097          	auipc	ra,0xfffff
    800041d8:	878080e7          	jalr	-1928(ra) # 80002a4c <mycpu>
    800041dc:	faa91ce3          	bne	s2,a0,80004194 <acquire+0x58>
    800041e0:	00001517          	auipc	a0,0x1
    800041e4:	06050513          	addi	a0,a0,96 # 80005240 <digits+0x20>
    800041e8:	fffff097          	auipc	ra,0xfffff
    800041ec:	224080e7          	jalr	548(ra) # 8000340c <panic>
    800041f0:	00195913          	srli	s2,s2,0x1
    800041f4:	fffff097          	auipc	ra,0xfffff
    800041f8:	858080e7          	jalr	-1960(ra) # 80002a4c <mycpu>
    800041fc:	00197913          	andi	s2,s2,1
    80004200:	07252e23          	sw	s2,124(a0)
    80004204:	f75ff06f          	j	80004178 <acquire+0x3c>

0000000080004208 <release>:
    80004208:	fe010113          	addi	sp,sp,-32
    8000420c:	00813823          	sd	s0,16(sp)
    80004210:	00113c23          	sd	ra,24(sp)
    80004214:	00913423          	sd	s1,8(sp)
    80004218:	01213023          	sd	s2,0(sp)
    8000421c:	02010413          	addi	s0,sp,32
    80004220:	00052783          	lw	a5,0(a0)
    80004224:	00079a63          	bnez	a5,80004238 <release+0x30>
    80004228:	00001517          	auipc	a0,0x1
    8000422c:	02050513          	addi	a0,a0,32 # 80005248 <digits+0x28>
    80004230:	fffff097          	auipc	ra,0xfffff
    80004234:	1dc080e7          	jalr	476(ra) # 8000340c <panic>
    80004238:	01053903          	ld	s2,16(a0)
    8000423c:	00050493          	mv	s1,a0
    80004240:	fffff097          	auipc	ra,0xfffff
    80004244:	80c080e7          	jalr	-2036(ra) # 80002a4c <mycpu>
    80004248:	fea910e3          	bne	s2,a0,80004228 <release+0x20>
    8000424c:	0004b823          	sd	zero,16(s1)
    80004250:	0ff0000f          	fence
    80004254:	0f50000f          	fence	iorw,ow
    80004258:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000425c:	ffffe097          	auipc	ra,0xffffe
    80004260:	7f0080e7          	jalr	2032(ra) # 80002a4c <mycpu>
    80004264:	100027f3          	csrr	a5,sstatus
    80004268:	0027f793          	andi	a5,a5,2
    8000426c:	04079a63          	bnez	a5,800042c0 <release+0xb8>
    80004270:	07852783          	lw	a5,120(a0)
    80004274:	02f05e63          	blez	a5,800042b0 <release+0xa8>
    80004278:	fff7871b          	addiw	a4,a5,-1
    8000427c:	06e52c23          	sw	a4,120(a0)
    80004280:	00071c63          	bnez	a4,80004298 <release+0x90>
    80004284:	07c52783          	lw	a5,124(a0)
    80004288:	00078863          	beqz	a5,80004298 <release+0x90>
    8000428c:	100027f3          	csrr	a5,sstatus
    80004290:	0027e793          	ori	a5,a5,2
    80004294:	10079073          	csrw	sstatus,a5
    80004298:	01813083          	ld	ra,24(sp)
    8000429c:	01013403          	ld	s0,16(sp)
    800042a0:	00813483          	ld	s1,8(sp)
    800042a4:	00013903          	ld	s2,0(sp)
    800042a8:	02010113          	addi	sp,sp,32
    800042ac:	00008067          	ret
    800042b0:	00001517          	auipc	a0,0x1
    800042b4:	fb850513          	addi	a0,a0,-72 # 80005268 <digits+0x48>
    800042b8:	fffff097          	auipc	ra,0xfffff
    800042bc:	154080e7          	jalr	340(ra) # 8000340c <panic>
    800042c0:	00001517          	auipc	a0,0x1
    800042c4:	f9050513          	addi	a0,a0,-112 # 80005250 <digits+0x30>
    800042c8:	fffff097          	auipc	ra,0xfffff
    800042cc:	144080e7          	jalr	324(ra) # 8000340c <panic>

00000000800042d0 <holding>:
    800042d0:	00052783          	lw	a5,0(a0)
    800042d4:	00079663          	bnez	a5,800042e0 <holding+0x10>
    800042d8:	00000513          	li	a0,0
    800042dc:	00008067          	ret
    800042e0:	fe010113          	addi	sp,sp,-32
    800042e4:	00813823          	sd	s0,16(sp)
    800042e8:	00913423          	sd	s1,8(sp)
    800042ec:	00113c23          	sd	ra,24(sp)
    800042f0:	02010413          	addi	s0,sp,32
    800042f4:	01053483          	ld	s1,16(a0)
    800042f8:	ffffe097          	auipc	ra,0xffffe
    800042fc:	754080e7          	jalr	1876(ra) # 80002a4c <mycpu>
    80004300:	01813083          	ld	ra,24(sp)
    80004304:	01013403          	ld	s0,16(sp)
    80004308:	40a48533          	sub	a0,s1,a0
    8000430c:	00153513          	seqz	a0,a0
    80004310:	00813483          	ld	s1,8(sp)
    80004314:	02010113          	addi	sp,sp,32
    80004318:	00008067          	ret

000000008000431c <push_off>:
    8000431c:	fe010113          	addi	sp,sp,-32
    80004320:	00813823          	sd	s0,16(sp)
    80004324:	00113c23          	sd	ra,24(sp)
    80004328:	00913423          	sd	s1,8(sp)
    8000432c:	02010413          	addi	s0,sp,32
    80004330:	100024f3          	csrr	s1,sstatus
    80004334:	100027f3          	csrr	a5,sstatus
    80004338:	ffd7f793          	andi	a5,a5,-3
    8000433c:	10079073          	csrw	sstatus,a5
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	70c080e7          	jalr	1804(ra) # 80002a4c <mycpu>
    80004348:	07852783          	lw	a5,120(a0)
    8000434c:	02078663          	beqz	a5,80004378 <push_off+0x5c>
    80004350:	ffffe097          	auipc	ra,0xffffe
    80004354:	6fc080e7          	jalr	1788(ra) # 80002a4c <mycpu>
    80004358:	07852783          	lw	a5,120(a0)
    8000435c:	01813083          	ld	ra,24(sp)
    80004360:	01013403          	ld	s0,16(sp)
    80004364:	0017879b          	addiw	a5,a5,1
    80004368:	06f52c23          	sw	a5,120(a0)
    8000436c:	00813483          	ld	s1,8(sp)
    80004370:	02010113          	addi	sp,sp,32
    80004374:	00008067          	ret
    80004378:	0014d493          	srli	s1,s1,0x1
    8000437c:	ffffe097          	auipc	ra,0xffffe
    80004380:	6d0080e7          	jalr	1744(ra) # 80002a4c <mycpu>
    80004384:	0014f493          	andi	s1,s1,1
    80004388:	06952e23          	sw	s1,124(a0)
    8000438c:	fc5ff06f          	j	80004350 <push_off+0x34>

0000000080004390 <pop_off>:
    80004390:	ff010113          	addi	sp,sp,-16
    80004394:	00813023          	sd	s0,0(sp)
    80004398:	00113423          	sd	ra,8(sp)
    8000439c:	01010413          	addi	s0,sp,16
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	6ac080e7          	jalr	1708(ra) # 80002a4c <mycpu>
    800043a8:	100027f3          	csrr	a5,sstatus
    800043ac:	0027f793          	andi	a5,a5,2
    800043b0:	04079663          	bnez	a5,800043fc <pop_off+0x6c>
    800043b4:	07852783          	lw	a5,120(a0)
    800043b8:	02f05a63          	blez	a5,800043ec <pop_off+0x5c>
    800043bc:	fff7871b          	addiw	a4,a5,-1
    800043c0:	06e52c23          	sw	a4,120(a0)
    800043c4:	00071c63          	bnez	a4,800043dc <pop_off+0x4c>
    800043c8:	07c52783          	lw	a5,124(a0)
    800043cc:	00078863          	beqz	a5,800043dc <pop_off+0x4c>
    800043d0:	100027f3          	csrr	a5,sstatus
    800043d4:	0027e793          	ori	a5,a5,2
    800043d8:	10079073          	csrw	sstatus,a5
    800043dc:	00813083          	ld	ra,8(sp)
    800043e0:	00013403          	ld	s0,0(sp)
    800043e4:	01010113          	addi	sp,sp,16
    800043e8:	00008067          	ret
    800043ec:	00001517          	auipc	a0,0x1
    800043f0:	e7c50513          	addi	a0,a0,-388 # 80005268 <digits+0x48>
    800043f4:	fffff097          	auipc	ra,0xfffff
    800043f8:	018080e7          	jalr	24(ra) # 8000340c <panic>
    800043fc:	00001517          	auipc	a0,0x1
    80004400:	e5450513          	addi	a0,a0,-428 # 80005250 <digits+0x30>
    80004404:	fffff097          	auipc	ra,0xfffff
    80004408:	008080e7          	jalr	8(ra) # 8000340c <panic>

000000008000440c <push_on>:
    8000440c:	fe010113          	addi	sp,sp,-32
    80004410:	00813823          	sd	s0,16(sp)
    80004414:	00113c23          	sd	ra,24(sp)
    80004418:	00913423          	sd	s1,8(sp)
    8000441c:	02010413          	addi	s0,sp,32
    80004420:	100024f3          	csrr	s1,sstatus
    80004424:	100027f3          	csrr	a5,sstatus
    80004428:	0027e793          	ori	a5,a5,2
    8000442c:	10079073          	csrw	sstatus,a5
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	61c080e7          	jalr	1564(ra) # 80002a4c <mycpu>
    80004438:	07852783          	lw	a5,120(a0)
    8000443c:	02078663          	beqz	a5,80004468 <push_on+0x5c>
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	60c080e7          	jalr	1548(ra) # 80002a4c <mycpu>
    80004448:	07852783          	lw	a5,120(a0)
    8000444c:	01813083          	ld	ra,24(sp)
    80004450:	01013403          	ld	s0,16(sp)
    80004454:	0017879b          	addiw	a5,a5,1
    80004458:	06f52c23          	sw	a5,120(a0)
    8000445c:	00813483          	ld	s1,8(sp)
    80004460:	02010113          	addi	sp,sp,32
    80004464:	00008067          	ret
    80004468:	0014d493          	srli	s1,s1,0x1
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	5e0080e7          	jalr	1504(ra) # 80002a4c <mycpu>
    80004474:	0014f493          	andi	s1,s1,1
    80004478:	06952e23          	sw	s1,124(a0)
    8000447c:	fc5ff06f          	j	80004440 <push_on+0x34>

0000000080004480 <pop_on>:
    80004480:	ff010113          	addi	sp,sp,-16
    80004484:	00813023          	sd	s0,0(sp)
    80004488:	00113423          	sd	ra,8(sp)
    8000448c:	01010413          	addi	s0,sp,16
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	5bc080e7          	jalr	1468(ra) # 80002a4c <mycpu>
    80004498:	100027f3          	csrr	a5,sstatus
    8000449c:	0027f793          	andi	a5,a5,2
    800044a0:	04078463          	beqz	a5,800044e8 <pop_on+0x68>
    800044a4:	07852783          	lw	a5,120(a0)
    800044a8:	02f05863          	blez	a5,800044d8 <pop_on+0x58>
    800044ac:	fff7879b          	addiw	a5,a5,-1
    800044b0:	06f52c23          	sw	a5,120(a0)
    800044b4:	07853783          	ld	a5,120(a0)
    800044b8:	00079863          	bnez	a5,800044c8 <pop_on+0x48>
    800044bc:	100027f3          	csrr	a5,sstatus
    800044c0:	ffd7f793          	andi	a5,a5,-3
    800044c4:	10079073          	csrw	sstatus,a5
    800044c8:	00813083          	ld	ra,8(sp)
    800044cc:	00013403          	ld	s0,0(sp)
    800044d0:	01010113          	addi	sp,sp,16
    800044d4:	00008067          	ret
    800044d8:	00001517          	auipc	a0,0x1
    800044dc:	db850513          	addi	a0,a0,-584 # 80005290 <digits+0x70>
    800044e0:	fffff097          	auipc	ra,0xfffff
    800044e4:	f2c080e7          	jalr	-212(ra) # 8000340c <panic>
    800044e8:	00001517          	auipc	a0,0x1
    800044ec:	d8850513          	addi	a0,a0,-632 # 80005270 <digits+0x50>
    800044f0:	fffff097          	auipc	ra,0xfffff
    800044f4:	f1c080e7          	jalr	-228(ra) # 8000340c <panic>

00000000800044f8 <__memset>:
    800044f8:	ff010113          	addi	sp,sp,-16
    800044fc:	00813423          	sd	s0,8(sp)
    80004500:	01010413          	addi	s0,sp,16
    80004504:	1a060e63          	beqz	a2,800046c0 <__memset+0x1c8>
    80004508:	40a007b3          	neg	a5,a0
    8000450c:	0077f793          	andi	a5,a5,7
    80004510:	00778693          	addi	a3,a5,7
    80004514:	00b00813          	li	a6,11
    80004518:	0ff5f593          	andi	a1,a1,255
    8000451c:	fff6071b          	addiw	a4,a2,-1
    80004520:	1b06e663          	bltu	a3,a6,800046cc <__memset+0x1d4>
    80004524:	1cd76463          	bltu	a4,a3,800046ec <__memset+0x1f4>
    80004528:	1a078e63          	beqz	a5,800046e4 <__memset+0x1ec>
    8000452c:	00b50023          	sb	a1,0(a0)
    80004530:	00100713          	li	a4,1
    80004534:	1ae78463          	beq	a5,a4,800046dc <__memset+0x1e4>
    80004538:	00b500a3          	sb	a1,1(a0)
    8000453c:	00200713          	li	a4,2
    80004540:	1ae78a63          	beq	a5,a4,800046f4 <__memset+0x1fc>
    80004544:	00b50123          	sb	a1,2(a0)
    80004548:	00300713          	li	a4,3
    8000454c:	18e78463          	beq	a5,a4,800046d4 <__memset+0x1dc>
    80004550:	00b501a3          	sb	a1,3(a0)
    80004554:	00400713          	li	a4,4
    80004558:	1ae78263          	beq	a5,a4,800046fc <__memset+0x204>
    8000455c:	00b50223          	sb	a1,4(a0)
    80004560:	00500713          	li	a4,5
    80004564:	1ae78063          	beq	a5,a4,80004704 <__memset+0x20c>
    80004568:	00b502a3          	sb	a1,5(a0)
    8000456c:	00700713          	li	a4,7
    80004570:	18e79e63          	bne	a5,a4,8000470c <__memset+0x214>
    80004574:	00b50323          	sb	a1,6(a0)
    80004578:	00700e93          	li	t4,7
    8000457c:	00859713          	slli	a4,a1,0x8
    80004580:	00e5e733          	or	a4,a1,a4
    80004584:	01059e13          	slli	t3,a1,0x10
    80004588:	01c76e33          	or	t3,a4,t3
    8000458c:	01859313          	slli	t1,a1,0x18
    80004590:	006e6333          	or	t1,t3,t1
    80004594:	02059893          	slli	a7,a1,0x20
    80004598:	40f60e3b          	subw	t3,a2,a5
    8000459c:	011368b3          	or	a7,t1,a7
    800045a0:	02859813          	slli	a6,a1,0x28
    800045a4:	0108e833          	or	a6,a7,a6
    800045a8:	03059693          	slli	a3,a1,0x30
    800045ac:	003e589b          	srliw	a7,t3,0x3
    800045b0:	00d866b3          	or	a3,a6,a3
    800045b4:	03859713          	slli	a4,a1,0x38
    800045b8:	00389813          	slli	a6,a7,0x3
    800045bc:	00f507b3          	add	a5,a0,a5
    800045c0:	00e6e733          	or	a4,a3,a4
    800045c4:	000e089b          	sext.w	a7,t3
    800045c8:	00f806b3          	add	a3,a6,a5
    800045cc:	00e7b023          	sd	a4,0(a5)
    800045d0:	00878793          	addi	a5,a5,8
    800045d4:	fed79ce3          	bne	a5,a3,800045cc <__memset+0xd4>
    800045d8:	ff8e7793          	andi	a5,t3,-8
    800045dc:	0007871b          	sext.w	a4,a5
    800045e0:	01d787bb          	addw	a5,a5,t4
    800045e4:	0ce88e63          	beq	a7,a4,800046c0 <__memset+0x1c8>
    800045e8:	00f50733          	add	a4,a0,a5
    800045ec:	00b70023          	sb	a1,0(a4)
    800045f0:	0017871b          	addiw	a4,a5,1
    800045f4:	0cc77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    800045f8:	00e50733          	add	a4,a0,a4
    800045fc:	00b70023          	sb	a1,0(a4)
    80004600:	0027871b          	addiw	a4,a5,2
    80004604:	0ac77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004608:	00e50733          	add	a4,a0,a4
    8000460c:	00b70023          	sb	a1,0(a4)
    80004610:	0037871b          	addiw	a4,a5,3
    80004614:	0ac77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004618:	00e50733          	add	a4,a0,a4
    8000461c:	00b70023          	sb	a1,0(a4)
    80004620:	0047871b          	addiw	a4,a5,4
    80004624:	08c77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004628:	00e50733          	add	a4,a0,a4
    8000462c:	00b70023          	sb	a1,0(a4)
    80004630:	0057871b          	addiw	a4,a5,5
    80004634:	08c77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004638:	00e50733          	add	a4,a0,a4
    8000463c:	00b70023          	sb	a1,0(a4)
    80004640:	0067871b          	addiw	a4,a5,6
    80004644:	06c77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004648:	00e50733          	add	a4,a0,a4
    8000464c:	00b70023          	sb	a1,0(a4)
    80004650:	0077871b          	addiw	a4,a5,7
    80004654:	06c77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004658:	00e50733          	add	a4,a0,a4
    8000465c:	00b70023          	sb	a1,0(a4)
    80004660:	0087871b          	addiw	a4,a5,8
    80004664:	04c77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004668:	00e50733          	add	a4,a0,a4
    8000466c:	00b70023          	sb	a1,0(a4)
    80004670:	0097871b          	addiw	a4,a5,9
    80004674:	04c77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004678:	00e50733          	add	a4,a0,a4
    8000467c:	00b70023          	sb	a1,0(a4)
    80004680:	00a7871b          	addiw	a4,a5,10
    80004684:	02c77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004688:	00e50733          	add	a4,a0,a4
    8000468c:	00b70023          	sb	a1,0(a4)
    80004690:	00b7871b          	addiw	a4,a5,11
    80004694:	02c77663          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    80004698:	00e50733          	add	a4,a0,a4
    8000469c:	00b70023          	sb	a1,0(a4)
    800046a0:	00c7871b          	addiw	a4,a5,12
    800046a4:	00c77e63          	bgeu	a4,a2,800046c0 <__memset+0x1c8>
    800046a8:	00e50733          	add	a4,a0,a4
    800046ac:	00b70023          	sb	a1,0(a4)
    800046b0:	00d7879b          	addiw	a5,a5,13
    800046b4:	00c7f663          	bgeu	a5,a2,800046c0 <__memset+0x1c8>
    800046b8:	00f507b3          	add	a5,a0,a5
    800046bc:	00b78023          	sb	a1,0(a5)
    800046c0:	00813403          	ld	s0,8(sp)
    800046c4:	01010113          	addi	sp,sp,16
    800046c8:	00008067          	ret
    800046cc:	00b00693          	li	a3,11
    800046d0:	e55ff06f          	j	80004524 <__memset+0x2c>
    800046d4:	00300e93          	li	t4,3
    800046d8:	ea5ff06f          	j	8000457c <__memset+0x84>
    800046dc:	00100e93          	li	t4,1
    800046e0:	e9dff06f          	j	8000457c <__memset+0x84>
    800046e4:	00000e93          	li	t4,0
    800046e8:	e95ff06f          	j	8000457c <__memset+0x84>
    800046ec:	00000793          	li	a5,0
    800046f0:	ef9ff06f          	j	800045e8 <__memset+0xf0>
    800046f4:	00200e93          	li	t4,2
    800046f8:	e85ff06f          	j	8000457c <__memset+0x84>
    800046fc:	00400e93          	li	t4,4
    80004700:	e7dff06f          	j	8000457c <__memset+0x84>
    80004704:	00500e93          	li	t4,5
    80004708:	e75ff06f          	j	8000457c <__memset+0x84>
    8000470c:	00600e93          	li	t4,6
    80004710:	e6dff06f          	j	8000457c <__memset+0x84>

0000000080004714 <__memmove>:
    80004714:	ff010113          	addi	sp,sp,-16
    80004718:	00813423          	sd	s0,8(sp)
    8000471c:	01010413          	addi	s0,sp,16
    80004720:	0e060863          	beqz	a2,80004810 <__memmove+0xfc>
    80004724:	fff6069b          	addiw	a3,a2,-1
    80004728:	0006881b          	sext.w	a6,a3
    8000472c:	0ea5e863          	bltu	a1,a0,8000481c <__memmove+0x108>
    80004730:	00758713          	addi	a4,a1,7
    80004734:	00a5e7b3          	or	a5,a1,a0
    80004738:	40a70733          	sub	a4,a4,a0
    8000473c:	0077f793          	andi	a5,a5,7
    80004740:	00f73713          	sltiu	a4,a4,15
    80004744:	00174713          	xori	a4,a4,1
    80004748:	0017b793          	seqz	a5,a5
    8000474c:	00e7f7b3          	and	a5,a5,a4
    80004750:	10078863          	beqz	a5,80004860 <__memmove+0x14c>
    80004754:	00900793          	li	a5,9
    80004758:	1107f463          	bgeu	a5,a6,80004860 <__memmove+0x14c>
    8000475c:	0036581b          	srliw	a6,a2,0x3
    80004760:	fff8081b          	addiw	a6,a6,-1
    80004764:	02081813          	slli	a6,a6,0x20
    80004768:	01d85893          	srli	a7,a6,0x1d
    8000476c:	00858813          	addi	a6,a1,8
    80004770:	00058793          	mv	a5,a1
    80004774:	00050713          	mv	a4,a0
    80004778:	01088833          	add	a6,a7,a6
    8000477c:	0007b883          	ld	a7,0(a5)
    80004780:	00878793          	addi	a5,a5,8
    80004784:	00870713          	addi	a4,a4,8
    80004788:	ff173c23          	sd	a7,-8(a4)
    8000478c:	ff0798e3          	bne	a5,a6,8000477c <__memmove+0x68>
    80004790:	ff867713          	andi	a4,a2,-8
    80004794:	02071793          	slli	a5,a4,0x20
    80004798:	0207d793          	srli	a5,a5,0x20
    8000479c:	00f585b3          	add	a1,a1,a5
    800047a0:	40e686bb          	subw	a3,a3,a4
    800047a4:	00f507b3          	add	a5,a0,a5
    800047a8:	06e60463          	beq	a2,a4,80004810 <__memmove+0xfc>
    800047ac:	0005c703          	lbu	a4,0(a1)
    800047b0:	00e78023          	sb	a4,0(a5)
    800047b4:	04068e63          	beqz	a3,80004810 <__memmove+0xfc>
    800047b8:	0015c603          	lbu	a2,1(a1)
    800047bc:	00100713          	li	a4,1
    800047c0:	00c780a3          	sb	a2,1(a5)
    800047c4:	04e68663          	beq	a3,a4,80004810 <__memmove+0xfc>
    800047c8:	0025c603          	lbu	a2,2(a1)
    800047cc:	00200713          	li	a4,2
    800047d0:	00c78123          	sb	a2,2(a5)
    800047d4:	02e68e63          	beq	a3,a4,80004810 <__memmove+0xfc>
    800047d8:	0035c603          	lbu	a2,3(a1)
    800047dc:	00300713          	li	a4,3
    800047e0:	00c781a3          	sb	a2,3(a5)
    800047e4:	02e68663          	beq	a3,a4,80004810 <__memmove+0xfc>
    800047e8:	0045c603          	lbu	a2,4(a1)
    800047ec:	00400713          	li	a4,4
    800047f0:	00c78223          	sb	a2,4(a5)
    800047f4:	00e68e63          	beq	a3,a4,80004810 <__memmove+0xfc>
    800047f8:	0055c603          	lbu	a2,5(a1)
    800047fc:	00500713          	li	a4,5
    80004800:	00c782a3          	sb	a2,5(a5)
    80004804:	00e68663          	beq	a3,a4,80004810 <__memmove+0xfc>
    80004808:	0065c703          	lbu	a4,6(a1)
    8000480c:	00e78323          	sb	a4,6(a5)
    80004810:	00813403          	ld	s0,8(sp)
    80004814:	01010113          	addi	sp,sp,16
    80004818:	00008067          	ret
    8000481c:	02061713          	slli	a4,a2,0x20
    80004820:	02075713          	srli	a4,a4,0x20
    80004824:	00e587b3          	add	a5,a1,a4
    80004828:	f0f574e3          	bgeu	a0,a5,80004730 <__memmove+0x1c>
    8000482c:	02069613          	slli	a2,a3,0x20
    80004830:	02065613          	srli	a2,a2,0x20
    80004834:	fff64613          	not	a2,a2
    80004838:	00e50733          	add	a4,a0,a4
    8000483c:	00c78633          	add	a2,a5,a2
    80004840:	fff7c683          	lbu	a3,-1(a5)
    80004844:	fff78793          	addi	a5,a5,-1
    80004848:	fff70713          	addi	a4,a4,-1
    8000484c:	00d70023          	sb	a3,0(a4)
    80004850:	fec798e3          	bne	a5,a2,80004840 <__memmove+0x12c>
    80004854:	00813403          	ld	s0,8(sp)
    80004858:	01010113          	addi	sp,sp,16
    8000485c:	00008067          	ret
    80004860:	02069713          	slli	a4,a3,0x20
    80004864:	02075713          	srli	a4,a4,0x20
    80004868:	00170713          	addi	a4,a4,1
    8000486c:	00e50733          	add	a4,a0,a4
    80004870:	00050793          	mv	a5,a0
    80004874:	0005c683          	lbu	a3,0(a1)
    80004878:	00178793          	addi	a5,a5,1
    8000487c:	00158593          	addi	a1,a1,1
    80004880:	fed78fa3          	sb	a3,-1(a5)
    80004884:	fee798e3          	bne	a5,a4,80004874 <__memmove+0x160>
    80004888:	f89ff06f          	j	80004810 <__memmove+0xfc>

000000008000488c <__putc>:
    8000488c:	fe010113          	addi	sp,sp,-32
    80004890:	00813823          	sd	s0,16(sp)
    80004894:	00113c23          	sd	ra,24(sp)
    80004898:	02010413          	addi	s0,sp,32
    8000489c:	00050793          	mv	a5,a0
    800048a0:	fef40593          	addi	a1,s0,-17
    800048a4:	00100613          	li	a2,1
    800048a8:	00000513          	li	a0,0
    800048ac:	fef407a3          	sb	a5,-17(s0)
    800048b0:	fffff097          	auipc	ra,0xfffff
    800048b4:	b3c080e7          	jalr	-1220(ra) # 800033ec <console_write>
    800048b8:	01813083          	ld	ra,24(sp)
    800048bc:	01013403          	ld	s0,16(sp)
    800048c0:	02010113          	addi	sp,sp,32
    800048c4:	00008067          	ret

00000000800048c8 <__getc>:
    800048c8:	fe010113          	addi	sp,sp,-32
    800048cc:	00813823          	sd	s0,16(sp)
    800048d0:	00113c23          	sd	ra,24(sp)
    800048d4:	02010413          	addi	s0,sp,32
    800048d8:	fe840593          	addi	a1,s0,-24
    800048dc:	00100613          	li	a2,1
    800048e0:	00000513          	li	a0,0
    800048e4:	fffff097          	auipc	ra,0xfffff
    800048e8:	ae8080e7          	jalr	-1304(ra) # 800033cc <console_read>
    800048ec:	fe844503          	lbu	a0,-24(s0)
    800048f0:	01813083          	ld	ra,24(sp)
    800048f4:	01013403          	ld	s0,16(sp)
    800048f8:	02010113          	addi	sp,sp,32
    800048fc:	00008067          	ret

0000000080004900 <console_handler>:
    80004900:	fe010113          	addi	sp,sp,-32
    80004904:	00813823          	sd	s0,16(sp)
    80004908:	00113c23          	sd	ra,24(sp)
    8000490c:	00913423          	sd	s1,8(sp)
    80004910:	02010413          	addi	s0,sp,32
    80004914:	14202773          	csrr	a4,scause
    80004918:	100027f3          	csrr	a5,sstatus
    8000491c:	0027f793          	andi	a5,a5,2
    80004920:	06079e63          	bnez	a5,8000499c <console_handler+0x9c>
    80004924:	00074c63          	bltz	a4,8000493c <console_handler+0x3c>
    80004928:	01813083          	ld	ra,24(sp)
    8000492c:	01013403          	ld	s0,16(sp)
    80004930:	00813483          	ld	s1,8(sp)
    80004934:	02010113          	addi	sp,sp,32
    80004938:	00008067          	ret
    8000493c:	0ff77713          	andi	a4,a4,255
    80004940:	00900793          	li	a5,9
    80004944:	fef712e3          	bne	a4,a5,80004928 <console_handler+0x28>
    80004948:	ffffe097          	auipc	ra,0xffffe
    8000494c:	6dc080e7          	jalr	1756(ra) # 80003024 <plic_claim>
    80004950:	00a00793          	li	a5,10
    80004954:	00050493          	mv	s1,a0
    80004958:	02f50c63          	beq	a0,a5,80004990 <console_handler+0x90>
    8000495c:	fc0506e3          	beqz	a0,80004928 <console_handler+0x28>
    80004960:	00050593          	mv	a1,a0
    80004964:	00001517          	auipc	a0,0x1
    80004968:	83450513          	addi	a0,a0,-1996 # 80005198 <_ZZ12printIntegermE6digits+0xe0>
    8000496c:	fffff097          	auipc	ra,0xfffff
    80004970:	afc080e7          	jalr	-1284(ra) # 80003468 <__printf>
    80004974:	01013403          	ld	s0,16(sp)
    80004978:	01813083          	ld	ra,24(sp)
    8000497c:	00048513          	mv	a0,s1
    80004980:	00813483          	ld	s1,8(sp)
    80004984:	02010113          	addi	sp,sp,32
    80004988:	ffffe317          	auipc	t1,0xffffe
    8000498c:	6d430067          	jr	1748(t1) # 8000305c <plic_complete>
    80004990:	fffff097          	auipc	ra,0xfffff
    80004994:	3e0080e7          	jalr	992(ra) # 80003d70 <uartintr>
    80004998:	fddff06f          	j	80004974 <console_handler+0x74>
    8000499c:	00001517          	auipc	a0,0x1
    800049a0:	8fc50513          	addi	a0,a0,-1796 # 80005298 <digits+0x78>
    800049a4:	fffff097          	auipc	ra,0xfffff
    800049a8:	a68080e7          	jalr	-1432(ra) # 8000340c <panic>
	...
