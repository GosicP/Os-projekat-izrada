
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	85813103          	ld	sp,-1960(sp) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6f0020ef          	jal	ra,8000270c <start>

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
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    8000128c:	01100793          	li	a5,17
    80001290:	00078513          	mv	a0,a5
    __asm__ volatile("mv a1, %0" : : [handle] "r" (handle));
    80001294:	00050593          	mv	a1,a0
    __asm__ volatile("mv a2, %0" : : [start_routine] "r" (start_routine));
    80001298:	00058613          	mv	a2,a1
    __asm__ volatile("mv a3, %0" : : [arg] "r" (arg));
    8000129c:	00060693          	mv	a3,a2
    __asm__ volatile("ecall");
    800012a0:	00000073          	ecall
    __asm__ volatile("mv %[ret_value_thread], a1" : [ret_value_thread] "=r"(ret_value_thread)); //kaze undefined reference
    800012a4:	00058793          	mv	a5,a1
    return 0;
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
    if (n % 4 == 0) TCB::yield();
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
    if (n % 4 == 0) TCB::yield();
    8000136c:	00001097          	auipc	ra,0x1
    80001370:	bb0080e7          	jalr	-1104(ra) # 80001f1c <_ZN3TCB5yieldEv>
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
        printString("C: i=");
    80001398:	00004517          	auipc	a0,0x4
    8000139c:	c8850513          	addi	a0,a0,-888 # 80005020 <CONSOLE_STATUS+0x10>
    800013a0:	00001097          	auipc	ra,0x1
    800013a4:	250080e7          	jalr	592(ra) # 800025f0 <_Z11printStringPKc>
        printInteger(i);
    800013a8:	00048513          	mv	a0,s1
    800013ac:	00001097          	auipc	ra,0x1
    800013b0:	2ac080e7          	jalr	684(ra) # 80002658 <_Z12printIntegerm>
        printString("\n");
    800013b4:	00004517          	auipc	a0,0x4
    800013b8:	d0450513          	addi	a0,a0,-764 # 800050b8 <CONSOLE_STATUS+0xa8>
    800013bc:	00001097          	auipc	ra,0x1
    800013c0:	234080e7          	jalr	564(ra) # 800025f0 <_Z11printStringPKc>
    for(; i<3 ; i++){
    800013c4:	0014849b          	addiw	s1,s1,1
    800013c8:	0ff4f493          	andi	s1,s1,255
    800013cc:	00200793          	li	a5,2
    800013d0:	fc97f4e3          	bgeu	a5,s1,80001398 <_Z11workerBodyAPv+0x20>
    }

    printString("C yield\n");
    800013d4:	00004517          	auipc	a0,0x4
    800013d8:	c5450513          	addi	a0,a0,-940 # 80005028 <CONSOLE_STATUS+0x18>
    800013dc:	00001097          	auipc	ra,0x1
    800013e0:	214080e7          	jalr	532(ra) # 800025f0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800013e4:	00700313          	li	t1,7
    TCB::yield();
    800013e8:	00001097          	auipc	ra,0x1
    800013ec:	b34080e7          	jalr	-1228(ra) # 80001f1c <_ZN3TCB5yieldEv>

    uint64 t1=0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800013f0:	00030913          	mv	s2,t1

    printString("C: t1=");
    800013f4:	00004517          	auipc	a0,0x4
    800013f8:	c4450513          	addi	a0,a0,-956 # 80005038 <CONSOLE_STATUS+0x28>
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	1f4080e7          	jalr	500(ra) # 800025f0 <_Z11printStringPKc>
    printInteger(t1);
    80001404:	00090513          	mv	a0,s2
    80001408:	00001097          	auipc	ra,0x1
    8000140c:	250080e7          	jalr	592(ra) # 80002658 <_Z12printIntegerm>
    printString("\n");
    80001410:	00004517          	auipc	a0,0x4
    80001414:	ca850513          	addi	a0,a0,-856 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001418:	00001097          	auipc	ra,0x1
    8000141c:	1d8080e7          	jalr	472(ra) # 800025f0 <_Z11printStringPKc>

    uint64 result = fibonacci (20);
    80001420:	01400513          	li	a0,20
    80001424:	00000097          	auipc	ra,0x0
    80001428:	ee4080e7          	jalr	-284(ra) # 80001308 <_ZL9fibonaccim>
    8000142c:	00050913          	mv	s2,a0
    printString("C: fibonacci=");
    80001430:	00004517          	auipc	a0,0x4
    80001434:	c1050513          	addi	a0,a0,-1008 # 80005040 <CONSOLE_STATUS+0x30>
    80001438:	00001097          	auipc	ra,0x1
    8000143c:	1b8080e7          	jalr	440(ra) # 800025f0 <_Z11printStringPKc>
    printInteger(result);
    80001440:	00090513          	mv	a0,s2
    80001444:	00001097          	auipc	ra,0x1
    80001448:	214080e7          	jalr	532(ra) # 80002658 <_Z12printIntegerm>
    printString("\n");
    8000144c:	00004517          	auipc	a0,0x4
    80001450:	c6c50513          	addi	a0,a0,-916 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001454:	00001097          	auipc	ra,0x1
    80001458:	19c080e7          	jalr	412(ra) # 800025f0 <_Z11printStringPKc>
    8000145c:	0380006f          	j	80001494 <_Z11workerBodyAPv+0x11c>

    for(; i<6; i++){
        printString("C: i=");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	bc050513          	addi	a0,a0,-1088 # 80005020 <CONSOLE_STATUS+0x10>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	188080e7          	jalr	392(ra) # 800025f0 <_Z11printStringPKc>
        printInteger(i);
    80001470:	00048513          	mv	a0,s1
    80001474:	00001097          	auipc	ra,0x1
    80001478:	1e4080e7          	jalr	484(ra) # 80002658 <_Z12printIntegerm>
        printString("\n");
    8000147c:	00004517          	auipc	a0,0x4
    80001480:	c3c50513          	addi	a0,a0,-964 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001484:	00001097          	auipc	ra,0x1
    80001488:	16c080e7          	jalr	364(ra) # 800025f0 <_Z11printStringPKc>
    for(; i<6; i++){
    8000148c:	0014849b          	addiw	s1,s1,1
    80001490:	0ff4f493          	andi	s1,s1,255
    80001494:	00500793          	li	a5,5
    80001498:	fc97f4e3          	bgeu	a5,s1,80001460 <_Z11workerBodyAPv+0xe8>
    }

    TCB::running->setFinished(true);
    8000149c:	00100593          	li	a1,1
    800014a0:	00004797          	auipc	a5,0x4
    800014a4:	3e07b783          	ld	a5,992(a5) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x38>
    800014a8:	0007b503          	ld	a0,0(a5)
    800014ac:	00001097          	auipc	ra,0x1
    800014b0:	87c080e7          	jalr	-1924(ra) # 80001d28 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	a68080e7          	jalr	-1432(ra) # 80001f1c <_ZN3TCB5yieldEv>
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
        printString("D: i=");
    800014f4:	00004517          	auipc	a0,0x4
    800014f8:	b5c50513          	addi	a0,a0,-1188 # 80005050 <CONSOLE_STATUS+0x40>
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	0f4080e7          	jalr	244(ra) # 800025f0 <_Z11printStringPKc>
        printInteger(i);
    80001504:	00048513          	mv	a0,s1
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	150080e7          	jalr	336(ra) # 80002658 <_Z12printIntegerm>
        printString("\n");
    80001510:	00004517          	auipc	a0,0x4
    80001514:	ba850513          	addi	a0,a0,-1112 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	0d8080e7          	jalr	216(ra) # 800025f0 <_Z11printStringPKc>
    for(; i<13; i++){
    80001520:	0014849b          	addiw	s1,s1,1
    80001524:	0ff4f493          	andi	s1,s1,255
    80001528:	00c00793          	li	a5,12
    8000152c:	fc97f4e3          	bgeu	a5,s1,800014f4 <_Z11workerBodyBPv+0x20>
    }

    printString("D: yield\n");
    80001530:	00004517          	auipc	a0,0x4
    80001534:	b2850513          	addi	a0,a0,-1240 # 80005058 <CONSOLE_STATUS+0x48>
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	0b8080e7          	jalr	184(ra) # 800025f0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001540:	00500313          	li	t1,5
    TCB::yield();
    80001544:	00001097          	auipc	ra,0x1
    80001548:	9d8080e7          	jalr	-1576(ra) # 80001f1c <_ZN3TCB5yieldEv>

    uint64 result=fibonacci(23);
    8000154c:	01700513          	li	a0,23
    80001550:	00000097          	auipc	ra,0x0
    80001554:	db8080e7          	jalr	-584(ra) # 80001308 <_ZL9fibonaccim>
    80001558:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000155c:	00004517          	auipc	a0,0x4
    80001560:	b0c50513          	addi	a0,a0,-1268 # 80005068 <CONSOLE_STATUS+0x58>
    80001564:	00001097          	auipc	ra,0x1
    80001568:	08c080e7          	jalr	140(ra) # 800025f0 <_Z11printStringPKc>
    printInteger(result);
    8000156c:	00090513          	mv	a0,s2
    80001570:	00001097          	auipc	ra,0x1
    80001574:	0e8080e7          	jalr	232(ra) # 80002658 <_Z12printIntegerm>
    printString("\n");
    80001578:	00004517          	auipc	a0,0x4
    8000157c:	b4050513          	addi	a0,a0,-1216 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001580:	00001097          	auipc	ra,0x1
    80001584:	070080e7          	jalr	112(ra) # 800025f0 <_Z11printStringPKc>
    80001588:	0380006f          	j	800015c0 <_Z11workerBodyBPv+0xec>

    for(; i<16; i++){
        printString("B: i=");
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	aec50513          	addi	a0,a0,-1300 # 80005078 <CONSOLE_STATUS+0x68>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	05c080e7          	jalr	92(ra) # 800025f0 <_Z11printStringPKc>
        printInteger(i);
    8000159c:	00048513          	mv	a0,s1
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	0b8080e7          	jalr	184(ra) # 80002658 <_Z12printIntegerm>
        printString("\n");
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	b1050513          	addi	a0,a0,-1264 # 800050b8 <CONSOLE_STATUS+0xa8>
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	040080e7          	jalr	64(ra) # 800025f0 <_Z11printStringPKc>
    for(; i<16; i++){
    800015b8:	0014849b          	addiw	s1,s1,1
    800015bc:	0ff4f493          	andi	s1,s1,255
    800015c0:	00f00793          	li	a5,15
    800015c4:	fc97f4e3          	bgeu	a5,s1,8000158c <_Z11workerBodyBPv+0xb8>
    }

    TCB::running->setFinished(true);
    800015c8:	00100593          	li	a1,1
    800015cc:	00004797          	auipc	a5,0x4
    800015d0:	2b47b783          	ld	a5,692(a5) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x38>
    800015d4:	0007b503          	ld	a0,0(a5)
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	750080e7          	jalr	1872(ra) # 80001d28 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	93c080e7          	jalr	-1732(ra) # 80001f1c <_ZN3TCB5yieldEv>
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
    80001620:	fd010113          	addi	sp,sp,-48
    80001624:	02113423          	sd	ra,40(sp)
    80001628:	02813023          	sd	s0,32(sp)
    8000162c:	03010413          	addi	s0,sp,48
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    80001630:	142027f3          	csrr	a5,scause
    80001634:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    80001638:	fd843703          	ld	a4,-40(s0)

}

inline uint64 RiscV::r_sepc(){
    uint64  sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000163c:	141027f3          	csrr	a5,sepc
    uint64 handle;
    uint64 start_routine;
    uint64 arg;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    80001640:	00478793          	addi	a5,a5,4
    80001644:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64  sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80001648:	100027f3          	csrr	a5,sstatus
    volatile uint64 sstatus = r_sstatus();
    8000164c:	fef43023          	sd	a5,-32(s0)
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    80001650:	00050793          	mv	a5,a0
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
    80001654:	ff870613          	addi	a2,a4,-8
    80001658:	00100693          	li	a3,1
    8000165c:	02c6f863          	bgeu	a3,a2,8000168c <_ZN5RiscV20handleSupervisorTrapEv+0x6c>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80001660:	fff00793          	li	a5,-1
    80001664:	03f79793          	slli	a5,a5,0x3f
    80001668:	00178793          	addi	a5,a5,1
    8000166c:	2ef70663          	beq	a4,a5,80001958 <_ZN5RiscV20handleSupervisorTrapEv+0x338>
        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    80001670:	fff00793          	li	a5,-1
    80001674:	03f79793          	slli	a5,a5,0x3f
    80001678:	00978793          	addi	a5,a5,9
    8000167c:	04f71463          	bne	a4,a5,800016c4 <_ZN5RiscV20handleSupervisorTrapEv+0xa4>
        //supervisor external interrupt (console)
        console_handler();
    80001680:	00003097          	auipc	ra,0x3
    80001684:	1c0080e7          	jalr	448(ra) # 80004840 <console_handler>
        //print (scause)
        //print sepc
        //print sval

    }
    80001688:	03c0006f          	j	800016c4 <_ZN5RiscV20handleSupervisorTrapEv+0xa4>
        if (sysCallNr == 0x01UL) {
    8000168c:	00100713          	li	a4,1
    80001690:	04e78263          	beq	a5,a4,800016d4 <_ZN5RiscV20handleSupervisorTrapEv+0xb4>
        } else if (sysCallNr == 0x02UL) {
    80001694:	00200713          	li	a4,2
    80001698:	14e78663          	beq	a5,a4,800017e4 <_ZN5RiscV20handleSupervisorTrapEv+0x1c4>
        }else if(sysCallNr == 0x11UL){
    8000169c:	01100713          	li	a4,17
    800016a0:	24e78e63          	beq	a5,a4,800018fc <_ZN5RiscV20handleSupervisorTrapEv+0x2dc>
        }else if(sysCallNr == 0x12UL){
    800016a4:	01200713          	li	a4,18
    800016a8:	26e78a63          	beq	a5,a4,8000191c <_ZN5RiscV20handleSupervisorTrapEv+0x2fc>
        }else if(sysCallNr == 0x13UL){
    800016ac:	01300713          	li	a4,19
    800016b0:	28e78e63          	beq	a5,a4,8000194c <_ZN5RiscV20handleSupervisorTrapEv+0x32c>
        w_sstatus(sstatus);
    800016b4:	fe043783          	ld	a5,-32(s0)
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 volatile sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    800016b8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800016bc:	fe843783          	ld	a5,-24(s0)
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    800016c0:	14179073          	csrw	sepc,a5
    800016c4:	02813083          	ld	ra,40(sp)
    800016c8:	02013403          	ld	s0,32(sp)
    800016cc:	03010113          	addi	sp,sp,48
    800016d0:	00008067          	ret
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
    800016d4:	00058793          	mv	a5,a1

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800016d8:	05778793          	addi	a5,a5,87
    800016dc:	0067d793          	srli	a5,a5,0x6
    800016e0:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    800016e4:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800016e8:	00004717          	auipc	a4,0x4
    800016ec:	18873703          	ld	a4,392(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016f0:	00073703          	ld	a4,0(a4)
    800016f4:	0c070863          	beqz	a4,800017c4 <_ZN5RiscV20handleSupervisorTrapEv+0x1a4>
            cur->next=fmem_head->next;
    800016f8:	00004697          	auipc	a3,0x4
    800016fc:	1786b683          	ld	a3,376(a3) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001700:	0006b603          	ld	a2,0(a3)
    80001704:	00063603          	ld	a2,0(a2)
    80001708:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    8000170c:	0006b683          	ld	a3,0(a3)
    80001710:	0086b583          	ld	a1,8(a3)
    80001714:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    80001718:	01073683          	ld	a3,16(a4)
    8000171c:	02f6e663          	bltu	a3,a5,80001748 <_ZN5RiscV20handleSupervisorTrapEv+0x128>
            if (cur->size-size<=sizeof(FreeMem)){
    80001720:	40f686b3          	sub	a3,a3,a5
    80001724:	01800513          	li	a0,24
    80001728:	02d56c63          	bltu	a0,a3,80001760 <_ZN5RiscV20handleSupervisorTrapEv+0x140>
                if (cur->prev) cur->prev->next = cur->next;
    8000172c:	02058263          	beqz	a1,80001750 <_ZN5RiscV20handleSupervisorTrapEv+0x130>
    80001730:	00c5b023          	sd	a2,0(a1)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80001734:	00073783          	ld	a5,0(a4)
    80001738:	08078663          	beqz	a5,800017c4 <_ZN5RiscV20handleSupervisorTrapEv+0x1a4>
    8000173c:	00873683          	ld	a3,8(a4)
    80001740:	00d7b423          	sd	a3,8(a5)
                return cur;
    80001744:	0800006f          	j	800017c4 <_ZN5RiscV20handleSupervisorTrapEv+0x1a4>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001748:	00060713          	mv	a4,a2
    8000174c:	fa9ff06f          	j	800016f4 <_ZN5RiscV20handleSupervisorTrapEv+0xd4>
                else fmem_head = cur->next;
    80001750:	00004797          	auipc	a5,0x4
    80001754:	1207b783          	ld	a5,288(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001758:	00c7b023          	sd	a2,0(a5)
    8000175c:	fd9ff06f          	j	80001734 <_ZN5RiscV20handleSupervisorTrapEv+0x114>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001760:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    80001764:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    80001768:	0006b023          	sd	zero,0(a3)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur->prev) cur->prev->next = newfrgm;
    8000176c:	00873603          	ld	a2,8(a4)
    80001770:	06060063          	beqz	a2,800017d0 <_ZN5RiscV20handleSupervisorTrapEv+0x1b0>
    80001774:	00d63023          	sd	a3,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur->next) cur->next->prev = newfrgm;
    80001778:	00073603          	ld	a2,0(a4)
    8000177c:	00060463          	beqz	a2,80001784 <_ZN5RiscV20handleSupervisorTrapEv+0x164>
    80001780:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    80001784:	00873603          	ld	a2,8(a4)
    80001788:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    8000178c:	00073583          	ld	a1,0(a4)
    80001790:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    80001794:	01073703          	ld	a4,16(a4)
    80001798:	40f707b3          	sub	a5,a4,a5
    8000179c:	00f6b823          	sd	a5,16(a3)
                fmem_head =newfrgm+sizeof(fmem_head);
    800017a0:	0c068713          	addi	a4,a3,192
    800017a4:	00004597          	auipc	a1,0x4
    800017a8:	0cc5b583          	ld	a1,204(a1) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017ac:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    800017b0:	0006b583          	ld	a1,0(a3)
    800017b4:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    800017b8:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    800017bc:	0cf6b823          	sd	a5,208(a3)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    800017c0:	00068713          	mv	a4,a3
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
    800017c4:	00070593          	mv	a1,a4
            __asm__ volatile("sd a1, 88(s0)");
    800017c8:	04b43c23          	sd	a1,88(s0)
    800017cc:	ee9ff06f          	j	800016b4 <_ZN5RiscV20handleSupervisorTrapEv+0x94>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800017d0:	0c068613          	addi	a2,a3,192
    800017d4:	00004597          	auipc	a1,0x4
    800017d8:	09c5b583          	ld	a1,156(a1) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017dc:	00c5b023          	sd	a2,0(a1)
    800017e0:	f99ff06f          	j	80001778 <_ZN5RiscV20handleSupervisorTrapEv+0x158>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    800017e4:	00058713          	mv	a4,a1
        if(!fmem_head || ptr < (char*)fmem_head)
    800017e8:	00004797          	auipc	a5,0x4
    800017ec:	0887b783          	ld	a5,136(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017f0:	0007b783          	ld	a5,0(a5)
    800017f4:	00078e63          	beqz	a5,80001810 <_ZN5RiscV20handleSupervisorTrapEv+0x1f0>
    800017f8:	02f76063          	bltu	a4,a5,80001818 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800017fc:	00078693          	mv	a3,a5
    80001800:	0007b783          	ld	a5,0(a5)
    80001804:	00f70c63          	beq	a4,a5,8000181c <_ZN5RiscV20handleSupervisorTrapEv+0x1fc>
    80001808:	fee7eae3          	bltu	a5,a4,800017fc <_ZN5RiscV20handleSupervisorTrapEv+0x1dc>
    8000180c:	0100006f          	j	8000181c <_ZN5RiscV20handleSupervisorTrapEv+0x1fc>
            cur=nullptr;
    80001810:	00078693          	mv	a3,a5
    80001814:	0080006f          	j	8000181c <_ZN5RiscV20handleSupervisorTrapEv+0x1fc>
    80001818:	00000693          	li	a3,0
                newSeg->next=nullptr;
    8000181c:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001820:	04000793          	li	a5,64
    80001824:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    80001828:	00d73423          	sd	a3,8(a4)
                if(cur) {
    8000182c:	06068263          	beqz	a3,80001890 <_ZN5RiscV20handleSupervisorTrapEv+0x270>
                    newSeg->next = cur->next;
    80001830:	0006b783          	ld	a5,0(a3)
    80001834:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    80001838:	00073783          	ld	a5,0(a4)
    8000183c:	00078463          	beqz	a5,80001844 <_ZN5RiscV20handleSupervisorTrapEv+0x224>
                    newSeg->next->prev=newSeg;
    80001840:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    80001844:	06068063          	beqz	a3,800018a4 <_ZN5RiscV20handleSupervisorTrapEv+0x284>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001848:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    8000184c:	00070c63          	beqz	a4,80001864 <_ZN5RiscV20handleSupervisorTrapEv+0x244>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001850:	00073783          	ld	a5,0(a4)
    80001854:	00078863          	beqz	a5,80001864 <_ZN5RiscV20handleSupervisorTrapEv+0x244>
    80001858:	01073603          	ld	a2,16(a4)
    8000185c:	00c705b3          	add	a1,a4,a2
    80001860:	04b78a63          	beq	a5,a1,800018b4 <_ZN5RiscV20handleSupervisorTrapEv+0x294>
        if (!curr) return;
    80001864:	00068c63          	beqz	a3,8000187c <_ZN5RiscV20handleSupervisorTrapEv+0x25c>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001868:	0006b783          	ld	a5,0(a3)
    8000186c:	00078863          	beqz	a5,8000187c <_ZN5RiscV20handleSupervisorTrapEv+0x25c>
    80001870:	0106b603          	ld	a2,16(a3)
    80001874:	00c685b3          	add	a1,a3,a2
    80001878:	04b78e63          	beq	a5,a1,800018d4 <_ZN5RiscV20handleSupervisorTrapEv+0x2b4>
            if(newSeg==nullptr){
    8000187c:	06070c63          	beqz	a4,800018f4 <_ZN5RiscV20handleSupervisorTrapEv+0x2d4>
            }else{return 0;}
    80001880:	00000793          	li	a5,0
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
    80001884:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
    80001888:	04b43c23          	sd	a1,88(s0)
    8000188c:	e29ff06f          	j	800016b4 <_ZN5RiscV20handleSupervisorTrapEv+0x94>
                    newSeg->next = fmem_head;
    80001890:	00004797          	auipc	a5,0x4
    80001894:	fe07b783          	ld	a5,-32(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001898:	0007b783          	ld	a5,0(a5)
    8000189c:	00f73023          	sd	a5,0(a4)
    800018a0:	f99ff06f          	j	80001838 <_ZN5RiscV20handleSupervisorTrapEv+0x218>
                    fmem_head = newSeg;
    800018a4:	00004797          	auipc	a5,0x4
    800018a8:	fcc7b783          	ld	a5,-52(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018ac:	00e7b023          	sd	a4,0(a5)
    800018b0:	f9dff06f          	j	8000184c <_ZN5RiscV20handleSupervisorTrapEv+0x22c>
            curr->size += curr->next->size;
    800018b4:	0107b583          	ld	a1,16(a5)
    800018b8:	00b60633          	add	a2,a2,a1
    800018bc:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    800018c0:	0007b783          	ld	a5,0(a5)
    800018c4:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    800018c8:	f8078ee3          	beqz	a5,80001864 <_ZN5RiscV20handleSupervisorTrapEv+0x244>
    800018cc:	00e7b423          	sd	a4,8(a5)
    800018d0:	f95ff06f          	j	80001864 <_ZN5RiscV20handleSupervisorTrapEv+0x244>
            curr->size += curr->next->size;
    800018d4:	0107b583          	ld	a1,16(a5)
    800018d8:	00b60633          	add	a2,a2,a1
    800018dc:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    800018e0:	0007b783          	ld	a5,0(a5)
    800018e4:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    800018e8:	f8078ae3          	beqz	a5,8000187c <_ZN5RiscV20handleSupervisorTrapEv+0x25c>
    800018ec:	00d7b423          	sd	a3,8(a5)
    800018f0:	f8dff06f          	j	8000187c <_ZN5RiscV20handleSupervisorTrapEv+0x25c>
                return -1;
    800018f4:	fff00793          	li	a5,-1
    800018f8:	f8dff06f          	j	80001884 <_ZN5RiscV20handleSupervisorTrapEv+0x264>
            __asm__ volatile("mv %[handle], a1" : [handle] "=r"(handle)); //sta ja ovde da radim sa handleom
    800018fc:	00058593          	mv	a1,a1
            __asm__ volatile("mv %[start_routine], a2" : [start_routine] "=r"(start_routine));
    80001900:	00060513          	mv	a0,a2
            __asm__ volatile("mv %[arg], a3" : [arg] "=r"(arg));
    80001904:	00068613          	mv	a2,a3
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg);
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	43c080e7          	jalr	1084(ra) # 80001d44 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001910:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001914:	04b43c23          	sd	a1,88(s0)
    80001918:	d9dff06f          	j	800016b4 <_ZN5RiscV20handleSupervisorTrapEv+0x94>
    static int createThread(Body body, TCB** handle, void* arguments);

    static void thread_dispatch(){dispatch();}

    static int thread_exit(){
        running->setFinished(true);
    8000191c:	00100593          	li	a1,1
    80001920:	00004797          	auipc	a5,0x4
    80001924:	f607b783          	ld	a5,-160(a5) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001928:	0007b503          	ld	a0,0(a5)
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	3fc080e7          	jalr	1020(ra) # 80001d28 <_ZN3TCB11setFinishedEb>
        dispatch();
    80001934:	00000097          	auipc	ra,0x0
    80001938:	664080e7          	jalr	1636(ra) # 80001f98 <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    8000193c:	00000793          	li	a5,0
    80001940:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    80001944:	04b43c23          	sd	a1,88(s0)
    80001948:	d6dff06f          	j	800016b4 <_ZN5RiscV20handleSupervisorTrapEv+0x94>
    static void thread_dispatch(){dispatch();}
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	64c080e7          	jalr	1612(ra) # 80001f98 <_ZN3TCB8dispatchEv>
    80001954:	d61ff06f          	j	800016b4 <_ZN5RiscV20handleSupervisorTrapEv+0x94>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001958:	00200793          	li	a5,2
    8000195c:	1447b073          	csrc	sip,a5
}
    80001960:	d65ff06f          	j	800016c4 <_ZN5RiscV20handleSupervisorTrapEv+0xa4>

0000000080001964 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80001964:	ff010113          	addi	sp,sp,-16
    80001968:	00813423          	sd	s0,8(sp)
    8000196c:	01010413          	addi	s0,sp,16
    80001970:	00100793          	li	a5,1
    80001974:	00f50863          	beq	a0,a5,80001984 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001978:	00813403          	ld	s0,8(sp)
    8000197c:	01010113          	addi	sp,sp,16
    80001980:	00008067          	ret
    80001984:	000107b7          	lui	a5,0x10
    80001988:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000198c:	fef596e3          	bne	a1,a5,80001978 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    80001990:	00004797          	auipc	a5,0x4
    80001994:	f6078793          	addi	a5,a5,-160 # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001998:	0007b023          	sd	zero,0(a5)
    8000199c:	0007b423          	sd	zero,8(a5)
    800019a0:	fd9ff06f          	j	80001978 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800019a4 <_ZN9Scheduler3getEv>:
{
    800019a4:	fe010113          	addi	sp,sp,-32
    800019a8:	00113c23          	sd	ra,24(sp)
    800019ac:	00813823          	sd	s0,16(sp)
    800019b0:	00913423          	sd	s1,8(sp)
    800019b4:	02010413          	addi	s0,sp,32
            head=tail=elem;
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    800019b8:	00004517          	auipc	a0,0x4
    800019bc:	f3853503          	ld	a0,-200(a0) # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
    800019c0:	04050263          	beqz	a0,80001a04 <_ZN9Scheduler3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    800019c4:	00853783          	ld	a5,8(a0)
    800019c8:	00004717          	auipc	a4,0x4
    800019cc:	f2f73423          	sd	a5,-216(a4) # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    800019d0:	02078463          	beqz	a5,800019f8 <_ZN9Scheduler3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    800019d4:	00053483          	ld	s1,0(a0)
        delete elem;
    800019d8:	00001097          	auipc	ra,0x1
    800019dc:	980080e7          	jalr	-1664(ra) # 80002358 <_ZdlPv>
}
    800019e0:	00048513          	mv	a0,s1
    800019e4:	01813083          	ld	ra,24(sp)
    800019e8:	01013403          	ld	s0,16(sp)
    800019ec:	00813483          	ld	s1,8(sp)
    800019f0:	02010113          	addi	sp,sp,32
    800019f4:	00008067          	ret
            tail = 0;
    800019f8:	00004797          	auipc	a5,0x4
    800019fc:	f007b023          	sd	zero,-256(a5) # 800058f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a00:	fd5ff06f          	j	800019d4 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80001a04:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80001a08:	fd9ff06f          	j	800019e0 <_ZN9Scheduler3getEv+0x3c>

0000000080001a0c <_ZN9Scheduler3putEP3TCB>:
{
    80001a0c:	fe010113          	addi	sp,sp,-32
    80001a10:	00113c23          	sd	ra,24(sp)
    80001a14:	00813823          	sd	s0,16(sp)
    80001a18:	00913423          	sd	s1,8(sp)
    80001a1c:	02010413          	addi	s0,sp,32
    80001a20:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001a24:	01000513          	li	a0,16
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	700080e7          	jalr	1792(ra) # 80002128 <_Znwm>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    80001a30:	00953023          	sd	s1,0(a0)
    80001a34:	00053423          	sd	zero,8(a0)
        if (tail){
    80001a38:	00004797          	auipc	a5,0x4
    80001a3c:	ec07b783          	ld	a5,-320(a5) # 800058f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a40:	02078263          	beqz	a5,80001a64 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next=elem;
    80001a44:	00a7b423          	sd	a0,8(a5)
            tail=elem;
    80001a48:	00004797          	auipc	a5,0x4
    80001a4c:	eaa7b823          	sd	a0,-336(a5) # 800058f8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a50:	01813083          	ld	ra,24(sp)
    80001a54:	01013403          	ld	s0,16(sp)
    80001a58:	00813483          	ld	s1,8(sp)
    80001a5c:	02010113          	addi	sp,sp,32
    80001a60:	00008067          	ret
            head=tail=elem;
    80001a64:	00004797          	auipc	a5,0x4
    80001a68:	e8c78793          	addi	a5,a5,-372 # 800058f0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001a6c:	00a7b423          	sd	a0,8(a5)
    80001a70:	00a7b023          	sd	a0,0(a5)
    80001a74:	fddff06f          	j	80001a50 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001a78 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001a78:	ff010113          	addi	sp,sp,-16
    80001a7c:	00113423          	sd	ra,8(sp)
    80001a80:	00813023          	sd	s0,0(sp)
    80001a84:	01010413          	addi	s0,sp,16
    80001a88:	000105b7          	lui	a1,0x10
    80001a8c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001a90:	00100513          	li	a0,1
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	ed0080e7          	jalr	-304(ra) # 80001964 <_Z41__static_initialization_and_destruction_0ii>
    80001a9c:	00813083          	ld	ra,8(sp)
    80001aa0:	00013403          	ld	s0,0(sp)
    80001aa4:	01010113          	addi	sp,sp,16
    80001aa8:	00008067          	ret

0000000080001aac <main>:
#include "../h/workers.hpp"
#include "../h/Print.hpp"
#include "../h/MemoryAllocation.hpp"
#include "../h/RiscV.hpp"
#include "../h/syscall_c.hpp"
int main(){
    80001aac:	fc010113          	addi	sp,sp,-64
    80001ab0:	02113c23          	sd	ra,56(sp)
    80001ab4:	02813823          	sd	s0,48(sp)
    80001ab8:	02913423          	sd	s1,40(sp)
    80001abc:	03213023          	sd	s2,32(sp)
    80001ac0:	04010413          	addi	s0,sp,64
        if (!instance) {
    80001ac4:	00004797          	auipc	a5,0x4
    80001ac8:	da47b783          	ld	a5,-604(a5) # 80005868 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001acc:	0007b783          	ld	a5,0(a5)
    80001ad0:	08078463          	beqz	a5,80001b58 <main+0xac>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    80001ad4:	00004797          	auipc	a5,0x4
    80001ad8:	d8c7b783          	ld	a5,-628(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    80001adc:	10579073          	csrw	stvec,a5
    TCB *threads[3];

    thread_create( &threads[0], nullptr, nullptr);
    80001ae0:	00000613          	li	a2,0
    80001ae4:	00000593          	li	a1,0
    80001ae8:	fc840513          	addi	a0,s0,-56
    80001aec:	fffff097          	auipc	ra,0xfffff
    80001af0:	794080e7          	jalr	1940(ra) # 80001280 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running=threads[0];
    80001af4:	fc843703          	ld	a4,-56(s0)
    80001af8:	00004797          	auipc	a5,0x4
    80001afc:	d887b783          	ld	a5,-632(a5) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001b00:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], workerBodyA, nullptr); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    80001b04:	00000613          	li	a2,0
    80001b08:	00004597          	auipc	a1,0x4
    80001b0c:	d705b583          	ld	a1,-656(a1) # 80005878 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b10:	fd040513          	addi	a0,s0,-48
    80001b14:	fffff097          	auipc	ra,0xfffff
    80001b18:	76c080e7          	jalr	1900(ra) # 80001280 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Thread A created\n");
    80001b1c:	00003517          	auipc	a0,0x3
    80001b20:	56450513          	addi	a0,a0,1380 # 80005080 <CONSOLE_STATUS+0x70>
    80001b24:	00001097          	auipc	ra,0x1
    80001b28:	acc080e7          	jalr	-1332(ra) # 800025f0 <_Z11printStringPKc>

    thread_create( &threads[2],workerBodyB, nullptr); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    80001b2c:	00000613          	li	a2,0
    80001b30:	00004597          	auipc	a1,0x4
    80001b34:	d605b583          	ld	a1,-672(a1) # 80005890 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001b38:	fd840513          	addi	a0,s0,-40
    80001b3c:	fffff097          	auipc	ra,0xfffff
    80001b40:	744080e7          	jalr	1860(ra) # 80001280 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Thread B created\n");
    80001b44:	00003517          	auipc	a0,0x3
    80001b48:	55450513          	addi	a0,a0,1364 # 80005098 <CONSOLE_STATUS+0x88>
    80001b4c:	00001097          	auipc	ra,0x1
    80001b50:	aa4080e7          	jalr	-1372(ra) # 800025f0 <_Z11printStringPKc>
    80001b54:	0480006f          	j	80001b9c <main+0xf0>
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80001b58:	00004797          	auipc	a5,0x4
    80001b5c:	cf87b783          	ld	a5,-776(a5) # 80005850 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b60:	0007b783          	ld	a5,0(a5)
    80001b64:	00004697          	auipc	a3,0x4
    80001b68:	d0c6b683          	ld	a3,-756(a3) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b6c:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80001b70:	00004717          	auipc	a4,0x4
    80001b74:	d1873703          	ld	a4,-744(a4) # 80005888 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001b78:	00073703          	ld	a4,0(a4)
    80001b7c:	40f70733          	sub	a4,a4,a5
    80001b80:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    80001b84:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80001b88:	0006b783          	ld	a5,0(a3)
    80001b8c:	0007b423          	sd	zero,8(a5)
            return instance;
    80001b90:	f45ff06f          	j	80001ad4 <main+0x28>

    //RiscV::ms_sstatus(RiscV::SSTATUS_SIE); //omogucava prekide, probaj i sa i bez toga, ali mislim da tebi nece trebati
    //__asm__ volatile ("csrs sstatus, 0x2");

    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
        TCB::yield();
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	388080e7          	jalr	904(ra) # 80001f1c <_ZN3TCB5yieldEv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
    80001b9c:	fd043503          	ld	a0,-48(s0)
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	16c080e7          	jalr	364(ra) # 80001d0c <_ZNK3TCB10isFinishedEv>
    80001ba8:	fe0506e3          	beqz	a0,80001b94 <main+0xe8>
    80001bac:	fd843503          	ld	a0,-40(s0)
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	15c080e7          	jalr	348(ra) # 80001d0c <_ZNK3TCB10isFinishedEv>
    80001bb8:	fc050ee3          	beqz	a0,80001b94 <main+0xe8>
    80001bbc:	fc840913          	addi	s2,s0,-56
    80001bc0:	0740006f          	j	80001c34 <main+0x188>
            cur=nullptr;
    80001bc4:	00078713          	mv	a4,a5
    80001bc8:	0080006f          	j	80001bd0 <main+0x124>
    80001bcc:	00000713          	li	a4,0
                newSeg->next=nullptr;
    80001bd0:	0004b023          	sd	zero,0(s1)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001bd4:	04000793          	li	a5,64
    80001bd8:	00f4b823          	sd	a5,16(s1)
                newSeg->prev=cur;
    80001bdc:	00e4b423          	sd	a4,8(s1)
                if(cur) {
    80001be0:	08070e63          	beqz	a4,80001c7c <main+0x1d0>
                    newSeg->next = cur->next;
    80001be4:	00073783          	ld	a5,0(a4)
    80001be8:	00f4b023          	sd	a5,0(s1)
                if(newSeg->next) {
    80001bec:	0004b783          	ld	a5,0(s1)
    80001bf0:	00078463          	beqz	a5,80001bf8 <main+0x14c>
                    newSeg->next->prev=newSeg;
    80001bf4:	0097b423          	sd	s1,8(a5)
                if (cur) {
    80001bf8:	08070c63          	beqz	a4,80001c90 <main+0x1e4>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001bfc:	00973023          	sd	s1,0(a4)
        if (!curr) return;
    80001c00:	00048c63          	beqz	s1,80001c18 <main+0x16c>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001c04:	0004b783          	ld	a5,0(s1)
    80001c08:	00078863          	beqz	a5,80001c18 <main+0x16c>
    80001c0c:	0104b683          	ld	a3,16(s1)
    80001c10:	00d48633          	add	a2,s1,a3
    80001c14:	08c78663          	beq	a5,a2,80001ca0 <main+0x1f4>
        if (!curr) return;
    80001c18:	00070c63          	beqz	a4,80001c30 <main+0x184>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001c1c:	00073783          	ld	a5,0(a4)
    80001c20:	00078863          	beqz	a5,80001c30 <main+0x184>
    80001c24:	01073683          	ld	a3,16(a4)
    80001c28:	00d70633          	add	a2,a4,a3
    80001c2c:	08c78a63          	beq	a5,a2,80001cc0 <main+0x214>
    }


    for (auto &coroutine : threads){
    80001c30:	00890913          	addi	s2,s2,8
    80001c34:	fe040793          	addi	a5,s0,-32
    80001c38:	0af90463          	beq	s2,a5,80001ce0 <main+0x234>
        delete coroutine;
    80001c3c:	00093483          	ld	s1,0(s2)
    80001c40:	fe0488e3          	beqz	s1,80001c30 <main+0x184>
    ~TCB() { delete[] stack; }
    80001c44:	0084b503          	ld	a0,8(s1)
    80001c48:	00050663          	beqz	a0,80001c54 <main+0x1a8>
    80001c4c:	00001097          	auipc	ra,0x1
    80001c50:	81c080e7          	jalr	-2020(ra) # 80002468 <_ZdaPv>
        if(!fmem_head || ptr < (char*)fmem_head)
    80001c54:	00004797          	auipc	a5,0x4
    80001c58:	c1c7b783          	ld	a5,-996(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c5c:	0007b783          	ld	a5,0(a5)
    80001c60:	f60782e3          	beqz	a5,80001bc4 <main+0x118>
    80001c64:	f6f4e4e3          	bltu	s1,a5,80001bcc <main+0x120>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001c68:	00078713          	mv	a4,a5
    80001c6c:	0007b783          	ld	a5,0(a5)
    80001c70:	f6f480e3          	beq	s1,a5,80001bd0 <main+0x124>
    80001c74:	fe97eae3          	bltu	a5,s1,80001c68 <main+0x1bc>
    80001c78:	f59ff06f          	j	80001bd0 <main+0x124>
                    newSeg->next = fmem_head;
    80001c7c:	00004797          	auipc	a5,0x4
    80001c80:	bf47b783          	ld	a5,-1036(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c84:	0007b783          	ld	a5,0(a5)
    80001c88:	00f4b023          	sd	a5,0(s1)
    80001c8c:	f61ff06f          	j	80001bec <main+0x140>
                    fmem_head = newSeg;
    80001c90:	00004797          	auipc	a5,0x4
    80001c94:	be07b783          	ld	a5,-1056(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c98:	0097b023          	sd	s1,0(a5)
    80001c9c:	f65ff06f          	j	80001c00 <main+0x154>
            curr->size += curr->next->size;
    80001ca0:	0107b603          	ld	a2,16(a5)
    80001ca4:	00c686b3          	add	a3,a3,a2
    80001ca8:	00d4b823          	sd	a3,16(s1)
            curr->next = curr->next->next;
    80001cac:	0007b783          	ld	a5,0(a5)
    80001cb0:	00f4b023          	sd	a5,0(s1)
            if (curr->next) curr->next->prev = curr;
    80001cb4:	f60782e3          	beqz	a5,80001c18 <main+0x16c>
    80001cb8:	0097b423          	sd	s1,8(a5)
    80001cbc:	f5dff06f          	j	80001c18 <main+0x16c>
            curr->size += curr->next->size;
    80001cc0:	0107b603          	ld	a2,16(a5)
    80001cc4:	00c686b3          	add	a3,a3,a2
    80001cc8:	00d73823          	sd	a3,16(a4)
            curr->next = curr->next->next;
    80001ccc:	0007b783          	ld	a5,0(a5)
    80001cd0:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001cd4:	f4078ee3          	beqz	a5,80001c30 <main+0x184>
    80001cd8:	00e7b423          	sd	a4,8(a5)
            if(newSeg==nullptr){
    80001cdc:	f55ff06f          	j	80001c30 <main+0x184>
    }

    printString("finished\n");
    80001ce0:	00003517          	auipc	a0,0x3
    80001ce4:	3d050513          	addi	a0,a0,976 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001ce8:	00001097          	auipc	ra,0x1
    80001cec:	908080e7          	jalr	-1784(ra) # 800025f0 <_Z11printStringPKc>

    return 0;
    80001cf0:	00000513          	li	a0,0
    80001cf4:	03813083          	ld	ra,56(sp)
    80001cf8:	03013403          	ld	s0,48(sp)
    80001cfc:	02813483          	ld	s1,40(sp)
    80001d00:	02013903          	ld	s2,32(sp)
    80001d04:	04010113          	addi	sp,sp,64
    80001d08:	00008067          	ret

0000000080001d0c <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00813423          	sd	s0,8(sp)
    80001d14:	01010413          	addi	s0,sp,16
    return finished;
}
    80001d18:	02854503          	lbu	a0,40(a0)
    80001d1c:	00813403          	ld	s0,8(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00813423          	sd	s0,8(sp)
    80001d30:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    80001d34:	02b50423          	sb	a1,40(a0)
}
    80001d38:	00813403          	ld	s0,8(sp)
    80001d3c:	01010113          	addi	sp,sp,16
    80001d40:	00008067          	ret

0000000080001d44 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments) {
    80001d44:	fd010113          	addi	sp,sp,-48
    80001d48:	02113423          	sd	ra,40(sp)
    80001d4c:	02813023          	sd	s0,32(sp)
    80001d50:	00913c23          	sd	s1,24(sp)
    80001d54:	01213823          	sd	s2,16(sp)
    80001d58:	01313423          	sd	s3,8(sp)
    80001d5c:	01413023          	sd	s4,0(sp)
    80001d60:	03010413          	addi	s0,sp,48
    80001d64:	00050913          	mv	s2,a0
    80001d68:	00058993          	mv	s3,a1
    80001d6c:	00060a13          	mv	s4,a2
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001d70:	00004797          	auipc	a5,0x4
    80001d74:	b007b783          	ld	a5,-1280(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d78:	0007b483          	ld	s1,0(a5)
    80001d7c:	0c048a63          	beqz	s1,80001e50 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x10c>
            cur->next=fmem_head->next;
    80001d80:	00004797          	auipc	a5,0x4
    80001d84:	af07b783          	ld	a5,-1296(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d88:	0007b703          	ld	a4,0(a5)
    80001d8c:	00073703          	ld	a4,0(a4)
    80001d90:	00e4b023          	sd	a4,0(s1)
            cur->prev=fmem_head->prev;
    80001d94:	0007b783          	ld	a5,0(a5)
    80001d98:	0087b683          	ld	a3,8(a5)
    80001d9c:	00d4b423          	sd	a3,8(s1)
            if (cur->size<size) continue;
    80001da0:	0104b783          	ld	a5,16(s1)
    80001da4:	07f00613          	li	a2,127
    80001da8:	02f67663          	bgeu	a2,a5,80001dd4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x90>
            if (cur->size-size<=sizeof(FreeMem)){
    80001dac:	f8078793          	addi	a5,a5,-128
    80001db0:	01800613          	li	a2,24
    80001db4:	02f66c63          	bltu	a2,a5,80001dec <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xa8>
                if (cur->prev) cur->prev->next = cur->next;
    80001db8:	02068263          	beqz	a3,80001ddc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x98>
    80001dbc:	00e6b023          	sd	a4,0(a3)
                if (cur->next) cur->next->prev = cur->prev;
    80001dc0:	0004b783          	ld	a5,0(s1)
    80001dc4:	08078663          	beqz	a5,80001e50 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x10c>
    80001dc8:	0084b703          	ld	a4,8(s1)
    80001dcc:	00e7b423          	sd	a4,8(a5)
                return cur;
    80001dd0:	0800006f          	j	80001e50 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x10c>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001dd4:	00070493          	mv	s1,a4
    80001dd8:	fa5ff06f          	j	80001d7c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x38>
                else fmem_head = cur->next;
    80001ddc:	00004797          	auipc	a5,0x4
    80001de0:	a947b783          	ld	a5,-1388(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001de4:	00e7b023          	sd	a4,0(a5)
    80001de8:	fd9ff06f          	j	80001dc0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x7c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001dec:	08048793          	addi	a5,s1,128
                newfrgm->prev=nullptr;
    80001df0:	0007b423          	sd	zero,8(a5)
                newfrgm->next=nullptr;
    80001df4:	0804b023          	sd	zero,128(s1)
                if (cur->prev) cur->prev->next = newfrgm;
    80001df8:	0084b703          	ld	a4,8(s1)
    80001dfc:	06070663          	beqz	a4,80001e68 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x124>
    80001e00:	00f73023          	sd	a5,0(a4)
                if (cur->next) cur->next->prev = newfrgm;
    80001e04:	0004b703          	ld	a4,0(s1)
    80001e08:	00070463          	beqz	a4,80001e10 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xcc>
    80001e0c:	00f73423          	sd	a5,8(a4)
                newfrgm->prev = cur->prev;
    80001e10:	0084b603          	ld	a2,8(s1)
    80001e14:	00c7b423          	sd	a2,8(a5)
                newfrgm->next = cur->next;
    80001e18:	0004b703          	ld	a4,0(s1)
    80001e1c:	00e7b023          	sd	a4,0(a5)
                newfrgm->size = cur->size-size;
    80001e20:	0104b703          	ld	a4,16(s1)
    80001e24:	f8070713          	addi	a4,a4,-128
    80001e28:	00e7b823          	sd	a4,16(a5)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001e2c:	0c078693          	addi	a3,a5,192
    80001e30:	00004597          	auipc	a1,0x4
    80001e34:	a405b583          	ld	a1,-1472(a1) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e38:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001e3c:	0007b583          	ld	a1,0(a5)
    80001e40:	0cb7b023          	sd	a1,192(a5)
                fmem_head->prev=newfrgm->prev;
    80001e44:	0cc7b423          	sd	a2,200(a5)
                fmem_head->size=newfrgm->size;
    80001e48:	0ce7b823          	sd	a4,208(a5)
                return newfrgm;
    80001e4c:	00078493          	mv	s1,a5
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[1024] : 0
                    }
            ),
            timeSlice(timeSlice),
            finished(false), arguments(arguments) {
    80001e50:	0124b023          	sd	s2,0(s1)
            stack(body != nullptr ? new uint64[1024] : nullptr),
    80001e54:	02090463          	beqz	s2,80001e7c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x138>
    80001e58:	00002537          	lui	a0,0x2
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	3e4080e7          	jalr	996(ra) # 80002240 <_Znam>
    80001e64:	01c0006f          	j	80001e80 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x13c>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001e68:	0c078713          	addi	a4,a5,192
    80001e6c:	00004697          	auipc	a3,0x4
    80001e70:	a046b683          	ld	a3,-1532(a3) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e74:	00e6b023          	sd	a4,0(a3)
    80001e78:	f8dff06f          	j	80001e04 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xc0>
    80001e7c:	00000513          	li	a0,0
            finished(false), arguments(arguments) {
    80001e80:	00a4b423          	sd	a0,8(s1)
    80001e84:	00000797          	auipc	a5,0x0
    80001e88:	0b478793          	addi	a5,a5,180 # 80001f38 <_ZN3TCB13threadWrapperEv>
    80001e8c:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[1024] : 0
    80001e90:	02050a63          	beqz	a0,80001ec4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x180>
    80001e94:	000027b7          	lui	a5,0x2
    80001e98:	00f507b3          	add	a5,a0,a5
            finished(false), arguments(arguments) {
    80001e9c:	00f4bc23          	sd	a5,24(s1)
    80001ea0:	00200793          	li	a5,2
    80001ea4:	02f4b023          	sd	a5,32(s1)
    80001ea8:	02048423          	sb	zero,40(s1)
    80001eac:	0344b823          	sd	s4,48(s1)
        if (body != nullptr) { Scheduler::put(this); }
    80001eb0:	00090e63          	beqz	s2,80001ecc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x188>
    80001eb4:	00048513          	mv	a0,s1
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	b54080e7          	jalr	-1196(ra) # 80001a0c <_ZN9Scheduler3putEP3TCB>
    80001ec0:	00c0006f          	j	80001ecc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x188>
                     stack != nullptr ? (uint64) &stack[1024] : 0
    80001ec4:	00000793          	li	a5,0
    80001ec8:	fd5ff06f          	j	80001e9c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x158>
    *handle = new TCB(body, TIME_SLICE, arguments);
    80001ecc:	0099b023          	sd	s1,0(s3)
    if(*handle==nullptr){
    80001ed0:	02048463          	beqz	s1,80001ef8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1b4>
        return -1;
    }else{return 0;}
    80001ed4:	00000513          	li	a0,0
}
    80001ed8:	02813083          	ld	ra,40(sp)
    80001edc:	02013403          	ld	s0,32(sp)
    80001ee0:	01813483          	ld	s1,24(sp)
    80001ee4:	01013903          	ld	s2,16(sp)
    80001ee8:	00813983          	ld	s3,8(sp)
    80001eec:	00013a03          	ld	s4,0(sp)
    80001ef0:	03010113          	addi	sp,sp,48
    80001ef4:	00008067          	ret
        return -1;
    80001ef8:	fff00513          	li	a0,-1
    80001efc:	fddff06f          	j	80001ed8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x194>
    80001f00:	00050913          	mv	s2,a0
        MemoryAllocation::mem_free(p);
    80001f04:	00048513          	mv	a0,s1
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	100080e7          	jalr	256(ra) # 80002008 <_ZN16MemoryAllocation8mem_freeEPv>
    80001f10:	00090513          	mv	a0,s2
    80001f14:	00005097          	auipc	ra,0x5
    80001f18:	ad4080e7          	jalr	-1324(ra) # 800069e8 <_Unwind_Resume>

0000000080001f1c <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00813423          	sd	s0,8(sp)
    80001f24:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001f28:	00000073          	ecall

};
    80001f2c:	00813403          	ld	s0,8(sp)
    80001f30:	01010113          	addi	sp,sp,16
    80001f34:	00008067          	ret

0000000080001f38 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001f38:	fe010113          	addi	sp,sp,-32
    80001f3c:	00113c23          	sd	ra,24(sp)
    80001f40:	00813823          	sd	s0,16(sp)
    80001f44:	00913423          	sd	s1,8(sp)
    80001f48:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    80001f4c:	fffff097          	auipc	ra,0xfffff
    80001f50:	6b4080e7          	jalr	1716(ra) # 80001600 <_ZN5RiscV10popSppSpieEv>
    running->body(running->arguments);
    80001f54:	00004497          	auipc	s1,0x4
    80001f58:	9ac48493          	addi	s1,s1,-1620 # 80005900 <_ZN3TCB7runningE>
    80001f5c:	0004b783          	ld	a5,0(s1)
    80001f60:	0007b703          	ld	a4,0(a5) # 2000 <_entry-0x7fffe000>
    80001f64:	0307b503          	ld	a0,48(a5)
    80001f68:	000700e7          	jalr	a4
    running->setFinished(true);
    80001f6c:	00100593          	li	a1,1
    80001f70:	0004b503          	ld	a0,0(s1)
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	db4080e7          	jalr	-588(ra) # 80001d28 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	fa0080e7          	jalr	-96(ra) # 80001f1c <_ZN3TCB5yieldEv>
}
    80001f84:	01813083          	ld	ra,24(sp)
    80001f88:	01013403          	ld	s0,16(sp)
    80001f8c:	00813483          	ld	s1,8(sp)
    80001f90:	02010113          	addi	sp,sp,32
    80001f94:	00008067          	ret

0000000080001f98 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001f98:	fe010113          	addi	sp,sp,-32
    80001f9c:	00113c23          	sd	ra,24(sp)
    80001fa0:	00813823          	sd	s0,16(sp)
    80001fa4:	00913423          	sd	s1,8(sp)
    80001fa8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001fac:	00004497          	auipc	s1,0x4
    80001fb0:	9544b483          	ld	s1,-1708(s1) # 80005900 <_ZN3TCB7runningE>
    if (!old->isFinished()) {
    80001fb4:	00048513          	mv	a0,s1
    80001fb8:	00000097          	auipc	ra,0x0
    80001fbc:	d54080e7          	jalr	-684(ra) # 80001d0c <_ZNK3TCB10isFinishedEv>
    80001fc0:	02050c63          	beqz	a0,80001ff8 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	9e0080e7          	jalr	-1568(ra) # 800019a4 <_ZN9Scheduler3getEv>
    80001fcc:	00004797          	auipc	a5,0x4
    80001fd0:	92a7ba23          	sd	a0,-1740(a5) # 80005900 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001fd4:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001fd8:	01048513          	addi	a0,s1,16
    80001fdc:	fffff097          	auipc	ra,0xfffff
    80001fe0:	234080e7          	jalr	564(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001fe4:	01813083          	ld	ra,24(sp)
    80001fe8:	01013403          	ld	s0,16(sp)
    80001fec:	00813483          	ld	s1,8(sp)
    80001ff0:	02010113          	addi	sp,sp,32
    80001ff4:	00008067          	ret
        Scheduler::put(old);
    80001ff8:	00048513          	mv	a0,s1
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	a10080e7          	jalr	-1520(ra) # 80001a0c <_ZN9Scheduler3putEP3TCB>
    80002004:	fc1ff06f          	j	80001fc4 <_ZN3TCB8dispatchEv+0x2c>

0000000080002008 <_ZN16MemoryAllocation8mem_freeEPv>:
        static int mem_free(void* ptr) { //radi i kada posaljem sa &
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00813423          	sd	s0,8(sp)
    80002010:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002014:	00004797          	auipc	a5,0x4
    80002018:	85c7b783          	ld	a5,-1956(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000201c:	0007b783          	ld	a5,0(a5)
    80002020:	00078e63          	beqz	a5,8000203c <_ZN16MemoryAllocation8mem_freeEPv+0x34>
    80002024:	02f56063          	bltu	a0,a5,80002044 <_ZN16MemoryAllocation8mem_freeEPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002028:	00078713          	mv	a4,a5
    8000202c:	0007b783          	ld	a5,0(a5)
    80002030:	00a78c63          	beq	a5,a0,80002048 <_ZN16MemoryAllocation8mem_freeEPv+0x40>
    80002034:	fea7eae3          	bltu	a5,a0,80002028 <_ZN16MemoryAllocation8mem_freeEPv+0x20>
    80002038:	0100006f          	j	80002048 <_ZN16MemoryAllocation8mem_freeEPv+0x40>
            cur=nullptr;
    8000203c:	00078713          	mv	a4,a5
    80002040:	0080006f          	j	80002048 <_ZN16MemoryAllocation8mem_freeEPv+0x40>
    80002044:	00000713          	li	a4,0
                newSeg->next=nullptr;
    80002048:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    8000204c:	04000793          	li	a5,64
    80002050:	00f53823          	sd	a5,16(a0)
                newSeg->prev=cur;
    80002054:	00e53423          	sd	a4,8(a0)
                if(cur) {
    80002058:	06070263          	beqz	a4,800020bc <_ZN16MemoryAllocation8mem_freeEPv+0xb4>
                    newSeg->next = cur->next;
    8000205c:	00073783          	ld	a5,0(a4)
    80002060:	00f53023          	sd	a5,0(a0)
                if(newSeg->next) {
    80002064:	00053783          	ld	a5,0(a0)
    80002068:	00078463          	beqz	a5,80002070 <_ZN16MemoryAllocation8mem_freeEPv+0x68>
                    newSeg->next->prev=newSeg;
    8000206c:	00a7b423          	sd	a0,8(a5)
                if (cur) {
    80002070:	06070063          	beqz	a4,800020d0 <_ZN16MemoryAllocation8mem_freeEPv+0xc8>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002074:	00a73023          	sd	a0,0(a4)
        if (!curr) return;
    80002078:	00050c63          	beqz	a0,80002090 <_ZN16MemoryAllocation8mem_freeEPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000207c:	00053783          	ld	a5,0(a0)
    80002080:	00078863          	beqz	a5,80002090 <_ZN16MemoryAllocation8mem_freeEPv+0x88>
    80002084:	01053683          	ld	a3,16(a0)
    80002088:	00d50633          	add	a2,a0,a3
    8000208c:	04c78a63          	beq	a5,a2,800020e0 <_ZN16MemoryAllocation8mem_freeEPv+0xd8>
        if (!curr) return;
    80002090:	00070c63          	beqz	a4,800020a8 <_ZN16MemoryAllocation8mem_freeEPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002094:	00073783          	ld	a5,0(a4)
    80002098:	00078863          	beqz	a5,800020a8 <_ZN16MemoryAllocation8mem_freeEPv+0xa0>
    8000209c:	01073683          	ld	a3,16(a4)
    800020a0:	00d70633          	add	a2,a4,a3
    800020a4:	04c78e63          	beq	a5,a2,80002100 <_ZN16MemoryAllocation8mem_freeEPv+0xf8>
            if(newSeg==nullptr){
    800020a8:	06050c63          	beqz	a0,80002120 <_ZN16MemoryAllocation8mem_freeEPv+0x118>
            }else{return 0;}
    800020ac:	00000513          	li	a0,0
    }
    800020b0:	00813403          	ld	s0,8(sp)
    800020b4:	01010113          	addi	sp,sp,16
    800020b8:	00008067          	ret
                    newSeg->next = fmem_head;
    800020bc:	00003797          	auipc	a5,0x3
    800020c0:	7b47b783          	ld	a5,1972(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020c4:	0007b783          	ld	a5,0(a5)
    800020c8:	00f53023          	sd	a5,0(a0)
    800020cc:	f99ff06f          	j	80002064 <_ZN16MemoryAllocation8mem_freeEPv+0x5c>
                    fmem_head = newSeg;
    800020d0:	00003797          	auipc	a5,0x3
    800020d4:	7a07b783          	ld	a5,1952(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020d8:	00a7b023          	sd	a0,0(a5)
    800020dc:	f9dff06f          	j	80002078 <_ZN16MemoryAllocation8mem_freeEPv+0x70>
            curr->size += curr->next->size;
    800020e0:	0107b603          	ld	a2,16(a5)
    800020e4:	00c686b3          	add	a3,a3,a2
    800020e8:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    800020ec:	0007b783          	ld	a5,0(a5)
    800020f0:	00f53023          	sd	a5,0(a0)
            if (curr->next) curr->next->prev = curr;
    800020f4:	f8078ee3          	beqz	a5,80002090 <_ZN16MemoryAllocation8mem_freeEPv+0x88>
    800020f8:	00a7b423          	sd	a0,8(a5)
    800020fc:	f95ff06f          	j	80002090 <_ZN16MemoryAllocation8mem_freeEPv+0x88>
            curr->size += curr->next->size;
    80002100:	0107b603          	ld	a2,16(a5)
    80002104:	00c686b3          	add	a3,a3,a2
    80002108:	00d73823          	sd	a3,16(a4)
            curr->next = curr->next->next;
    8000210c:	0007b783          	ld	a5,0(a5)
    80002110:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80002114:	f8078ae3          	beqz	a5,800020a8 <_ZN16MemoryAllocation8mem_freeEPv+0xa0>
    80002118:	00e7b423          	sd	a4,8(a5)
    8000211c:	f8dff06f          	j	800020a8 <_ZN16MemoryAllocation8mem_freeEPv+0xa0>
                return -1;
    80002120:	fff00513          	li	a0,-1
    80002124:	f8dff06f          	j	800020b0 <_ZN16MemoryAllocation8mem_freeEPv+0xa8>

0000000080002128 <_Znwm>:
#include "../h/MemoryAllocation.hpp"
#include "../h/syscall_c.hpp"

//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00813423          	sd	s0,8(sp)
    80002130:	01010413          	addi	s0,sp,16

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002134:	05750793          	addi	a5,a0,87
    80002138:	0067d793          	srli	a5,a5,0x6
    8000213c:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80002140:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002144:	00003717          	auipc	a4,0x3
    80002148:	72c73703          	ld	a4,1836(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000214c:	00073503          	ld	a0,0(a4)
    80002150:	0c050863          	beqz	a0,80002220 <_Znwm+0xf8>
            cur->next=fmem_head->next;
    80002154:	00003717          	auipc	a4,0x3
    80002158:	71c73703          	ld	a4,1820(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000215c:	00073683          	ld	a3,0(a4)
    80002160:	0006b683          	ld	a3,0(a3)
    80002164:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80002168:	00073703          	ld	a4,0(a4)
    8000216c:	00873603          	ld	a2,8(a4)
    80002170:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80002174:	01053703          	ld	a4,16(a0)
    80002178:	02f76663          	bltu	a4,a5,800021a4 <_Znwm+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    8000217c:	40f70733          	sub	a4,a4,a5
    80002180:	01800593          	li	a1,24
    80002184:	02e5ec63          	bltu	a1,a4,800021bc <_Znwm+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002188:	02060263          	beqz	a2,800021ac <_Znwm+0x84>
    8000218c:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80002190:	00053783          	ld	a5,0(a0)
    80002194:	08078663          	beqz	a5,80002220 <_Znwm+0xf8>
    80002198:	00853703          	ld	a4,8(a0)
    8000219c:	00e7b423          	sd	a4,8(a5)
                return cur;
    800021a0:	0800006f          	j	80002220 <_Znwm+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800021a4:	00068513          	mv	a0,a3
    800021a8:	fa9ff06f          	j	80002150 <_Znwm+0x28>
                else fmem_head = cur->next;
    800021ac:	00003797          	auipc	a5,0x3
    800021b0:	6c47b783          	ld	a5,1732(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    800021b4:	00d7b023          	sd	a3,0(a5)
    800021b8:	fd9ff06f          	j	80002190 <_Znwm+0x68>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800021bc:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    800021c0:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800021c4:	00073023          	sd	zero,0(a4)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur->prev) cur->prev->next = newfrgm;
    800021c8:	00853683          	ld	a3,8(a0)
    800021cc:	06068063          	beqz	a3,8000222c <_Znwm+0x104>
    800021d0:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur->next) cur->next->prev = newfrgm;
    800021d4:	00053683          	ld	a3,0(a0)
    800021d8:	00068463          	beqz	a3,800021e0 <_Znwm+0xb8>
    800021dc:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800021e0:	00853603          	ld	a2,8(a0)
    800021e4:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800021e8:	00053683          	ld	a3,0(a0)
    800021ec:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800021f0:	01053683          	ld	a3,16(a0)
    800021f4:	40f687b3          	sub	a5,a3,a5
    800021f8:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800021fc:	0c070693          	addi	a3,a4,192
    80002200:	00003597          	auipc	a1,0x3
    80002204:	6705b583          	ld	a1,1648(a1) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002208:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    8000220c:	00073583          	ld	a1,0(a4)
    80002210:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002214:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002218:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    8000221c:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}
    80002220:	00813403          	ld	s0,8(sp)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    8000222c:	0c070693          	addi	a3,a4,192
    80002230:	00003617          	auipc	a2,0x3
    80002234:	64063603          	ld	a2,1600(a2) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002238:	00d63023          	sd	a3,0(a2)
    8000223c:	f99ff06f          	j	800021d4 <_Znwm+0xac>

0000000080002240 <_Znam>:

void *operator new[](uint64 n){
    80002240:	ff010113          	addi	sp,sp,-16
    80002244:	00813423          	sd	s0,8(sp)
    80002248:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000224c:	05750793          	addi	a5,a0,87
    80002250:	0067d793          	srli	a5,a5,0x6
    80002254:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80002258:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000225c:	00003717          	auipc	a4,0x3
    80002260:	61473703          	ld	a4,1556(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002264:	00073503          	ld	a0,0(a4)
    80002268:	0c050863          	beqz	a0,80002338 <_Znam+0xf8>
            cur->next=fmem_head->next;
    8000226c:	00003717          	auipc	a4,0x3
    80002270:	60473703          	ld	a4,1540(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002274:	00073683          	ld	a3,0(a4)
    80002278:	0006b683          	ld	a3,0(a3)
    8000227c:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80002280:	00073703          	ld	a4,0(a4)
    80002284:	00873603          	ld	a2,8(a4)
    80002288:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    8000228c:	01053703          	ld	a4,16(a0)
    80002290:	02f76663          	bltu	a4,a5,800022bc <_Znam+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002294:	40f70733          	sub	a4,a4,a5
    80002298:	01800593          	li	a1,24
    8000229c:	02e5ec63          	bltu	a1,a4,800022d4 <_Znam+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    800022a0:	02060263          	beqz	a2,800022c4 <_Znam+0x84>
    800022a4:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    800022a8:	00053783          	ld	a5,0(a0)
    800022ac:	08078663          	beqz	a5,80002338 <_Znam+0xf8>
    800022b0:	00853703          	ld	a4,8(a0)
    800022b4:	00e7b423          	sd	a4,8(a5)
                return cur;
    800022b8:	0800006f          	j	80002338 <_Znam+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800022bc:	00068513          	mv	a0,a3
    800022c0:	fa9ff06f          	j	80002268 <_Znam+0x28>
                else fmem_head = cur->next;
    800022c4:	00003797          	auipc	a5,0x3
    800022c8:	5ac7b783          	ld	a5,1452(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022cc:	00d7b023          	sd	a3,0(a5)
    800022d0:	fd9ff06f          	j	800022a8 <_Znam+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800022d4:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    800022d8:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800022dc:	00073023          	sd	zero,0(a4)
                if (cur->prev) cur->prev->next = newfrgm;
    800022e0:	00853683          	ld	a3,8(a0)
    800022e4:	06068063          	beqz	a3,80002344 <_Znam+0x104>
    800022e8:	00e6b023          	sd	a4,0(a3)
                if (cur->next) cur->next->prev = newfrgm;
    800022ec:	00053683          	ld	a3,0(a0)
    800022f0:	00068463          	beqz	a3,800022f8 <_Znam+0xb8>
    800022f4:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800022f8:	00853603          	ld	a2,8(a0)
    800022fc:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002300:	00053683          	ld	a3,0(a0)
    80002304:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002308:	01053683          	ld	a3,16(a0)
    8000230c:	40f687b3          	sub	a5,a3,a5
    80002310:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002314:	0c070693          	addi	a3,a4,192
    80002318:	00003597          	auipc	a1,0x3
    8000231c:	5585b583          	ld	a1,1368(a1) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002320:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002324:	00073583          	ld	a1,0(a4)
    80002328:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    8000232c:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002330:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002334:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
}
    80002338:	00813403          	ld	s0,8(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002344:	0c070693          	addi	a3,a4,192
    80002348:	00003617          	auipc	a2,0x3
    8000234c:	52863603          	ld	a2,1320(a2) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002350:	00d63023          	sd	a3,0(a2)
    80002354:	f99ff06f          	j	800022ec <_Znam+0xac>

0000000080002358 <_ZdlPv>:

void operator delete(void *p) noexcept {
    80002358:	ff010113          	addi	sp,sp,-16
    8000235c:	00813423          	sd	s0,8(sp)
    80002360:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002364:	00003797          	auipc	a5,0x3
    80002368:	50c7b783          	ld	a5,1292(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000236c:	0007b703          	ld	a4,0(a5)
    80002370:	00070e63          	beqz	a4,8000238c <_ZdlPv+0x34>
    80002374:	02e56063          	bltu	a0,a4,80002394 <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002378:	00070793          	mv	a5,a4
    8000237c:	00073703          	ld	a4,0(a4)
    80002380:	00e50c63          	beq	a0,a4,80002398 <_ZdlPv+0x40>
    80002384:	fea76ae3          	bltu	a4,a0,80002378 <_ZdlPv+0x20>
    80002388:	0100006f          	j	80002398 <_ZdlPv+0x40>
            cur=nullptr;
    8000238c:	00070793          	mv	a5,a4
    80002390:	0080006f          	j	80002398 <_ZdlPv+0x40>
    80002394:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80002398:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    8000239c:	04000713          	li	a4,64
    800023a0:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    800023a4:	00f53423          	sd	a5,8(a0)
                if(cur) {
    800023a8:	04078e63          	beqz	a5,80002404 <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    800023ac:	0007b703          	ld	a4,0(a5)
    800023b0:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    800023b4:	00053703          	ld	a4,0(a0)
    800023b8:	00070463          	beqz	a4,800023c0 <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    800023bc:	00a73423          	sd	a0,8(a4)
                if (cur) {
    800023c0:	04078c63          	beqz	a5,80002418 <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800023c4:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    800023c8:	00050c63          	beqz	a0,800023e0 <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800023cc:	00053703          	ld	a4,0(a0)
    800023d0:	00070863          	beqz	a4,800023e0 <_ZdlPv+0x88>
    800023d4:	01053683          	ld	a3,16(a0)
    800023d8:	00d50633          	add	a2,a0,a3
    800023dc:	04c70663          	beq	a4,a2,80002428 <_ZdlPv+0xd0>
        if (!curr) return;
    800023e0:	00078c63          	beqz	a5,800023f8 <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800023e4:	0007b703          	ld	a4,0(a5)
    800023e8:	00070863          	beqz	a4,800023f8 <_ZdlPv+0xa0>
    800023ec:	0107b683          	ld	a3,16(a5)
    800023f0:	00d78633          	add	a2,a5,a3
    800023f4:	04c70a63          	beq	a4,a2,80002448 <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    800023f8:	00813403          	ld	s0,8(sp)
    800023fc:	01010113          	addi	sp,sp,16
    80002400:	00008067          	ret
                    newSeg->next = fmem_head;
    80002404:	00003717          	auipc	a4,0x3
    80002408:	46c73703          	ld	a4,1132(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000240c:	00073703          	ld	a4,0(a4)
    80002410:	00e53023          	sd	a4,0(a0)
    80002414:	fa1ff06f          	j	800023b4 <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    80002418:	00003717          	auipc	a4,0x3
    8000241c:	45873703          	ld	a4,1112(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002420:	00a73023          	sd	a0,0(a4)
    80002424:	fa5ff06f          	j	800023c8 <_ZdlPv+0x70>
            curr->size += curr->next->size;
    80002428:	01073603          	ld	a2,16(a4)
    8000242c:	00c686b3          	add	a3,a3,a2
    80002430:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80002434:	00073703          	ld	a4,0(a4)
    80002438:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    8000243c:	fa0702e3          	beqz	a4,800023e0 <_ZdlPv+0x88>
    80002440:	00a73423          	sd	a0,8(a4)
    80002444:	f9dff06f          	j	800023e0 <_ZdlPv+0x88>
            curr->size += curr->next->size;
    80002448:	01073603          	ld	a2,16(a4)
    8000244c:	00c686b3          	add	a3,a3,a2
    80002450:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002454:	00073703          	ld	a4,0(a4)
    80002458:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    8000245c:	f8070ee3          	beqz	a4,800023f8 <_ZdlPv+0xa0>
    80002460:	00f73423          	sd	a5,8(a4)
    80002464:	f95ff06f          	j	800023f8 <_ZdlPv+0xa0>

0000000080002468 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    80002468:	ff010113          	addi	sp,sp,-16
    8000246c:	00813423          	sd	s0,8(sp)
    80002470:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002474:	00003797          	auipc	a5,0x3
    80002478:	3fc7b783          	ld	a5,1020(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000247c:	0007b703          	ld	a4,0(a5)
    80002480:	00070e63          	beqz	a4,8000249c <_ZdaPv+0x34>
    80002484:	02e56063          	bltu	a0,a4,800024a4 <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002488:	00070793          	mv	a5,a4
    8000248c:	00073703          	ld	a4,0(a4)
    80002490:	00e50c63          	beq	a0,a4,800024a8 <_ZdaPv+0x40>
    80002494:	fea76ae3          	bltu	a4,a0,80002488 <_ZdaPv+0x20>
    80002498:	0100006f          	j	800024a8 <_ZdaPv+0x40>
            cur=nullptr;
    8000249c:	00070793          	mv	a5,a4
    800024a0:	0080006f          	j	800024a8 <_ZdaPv+0x40>
    800024a4:	00000793          	li	a5,0
                newSeg->next=nullptr;
    800024a8:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    800024ac:	04000713          	li	a4,64
    800024b0:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    800024b4:	00f53423          	sd	a5,8(a0)
                if(cur) {
    800024b8:	04078e63          	beqz	a5,80002514 <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    800024bc:	0007b703          	ld	a4,0(a5)
    800024c0:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    800024c4:	00053703          	ld	a4,0(a0)
    800024c8:	00070463          	beqz	a4,800024d0 <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    800024cc:	00a73423          	sd	a0,8(a4)
                if (cur) {
    800024d0:	04078c63          	beqz	a5,80002528 <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800024d4:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    800024d8:	00050c63          	beqz	a0,800024f0 <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800024dc:	00053703          	ld	a4,0(a0)
    800024e0:	00070863          	beqz	a4,800024f0 <_ZdaPv+0x88>
    800024e4:	01053683          	ld	a3,16(a0)
    800024e8:	00d50633          	add	a2,a0,a3
    800024ec:	04c70663          	beq	a4,a2,80002538 <_ZdaPv+0xd0>
        if (!curr) return;
    800024f0:	00078c63          	beqz	a5,80002508 <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800024f4:	0007b703          	ld	a4,0(a5)
    800024f8:	00070863          	beqz	a4,80002508 <_ZdaPv+0xa0>
    800024fc:	0107b683          	ld	a3,16(a5)
    80002500:	00d78633          	add	a2,a5,a3
    80002504:	04c70a63          	beq	a4,a2,80002558 <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
    80002508:	00813403          	ld	s0,8(sp)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	00008067          	ret
                    newSeg->next = fmem_head;
    80002514:	00003717          	auipc	a4,0x3
    80002518:	35c73703          	ld	a4,860(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000251c:	00073703          	ld	a4,0(a4)
    80002520:	00e53023          	sd	a4,0(a0)
    80002524:	fa1ff06f          	j	800024c4 <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    80002528:	00003717          	auipc	a4,0x3
    8000252c:	34873703          	ld	a4,840(a4) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002530:	00a73023          	sd	a0,0(a4)
    80002534:	fa5ff06f          	j	800024d8 <_ZdaPv+0x70>
            curr->size += curr->next->size;
    80002538:	01073603          	ld	a2,16(a4)
    8000253c:	00c686b3          	add	a3,a3,a2
    80002540:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80002544:	00073703          	ld	a4,0(a4)
    80002548:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    8000254c:	fa0702e3          	beqz	a4,800024f0 <_ZdaPv+0x88>
    80002550:	00a73423          	sd	a0,8(a4)
    80002554:	f9dff06f          	j	800024f0 <_ZdaPv+0x88>
            curr->size += curr->next->size;
    80002558:	01073603          	ld	a2,16(a4)
    8000255c:	00c686b3          	add	a3,a3,a2
    80002560:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002564:	00073703          	ld	a4,0(a4)
    80002568:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    8000256c:	f8070ee3          	beqz	a4,80002508 <_ZdaPv+0xa0>
    80002570:	00f73423          	sd	a5,8(a4)
    80002574:	f95ff06f          	j	80002508 <_ZdaPv+0xa0>

0000000080002578 <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00813423          	sd	s0,8(sp)
    80002580:	01010413          	addi	s0,sp,16
    80002584:	00100793          	li	a5,1
    80002588:	00f50863          	beq	a0,a5,80002598 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000258c:	00813403          	ld	s0,8(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret
    80002598:	000107b7          	lui	a5,0x10
    8000259c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800025a0:	fef596e3          	bne	a1,a5,8000258c <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    800025a4:	00003797          	auipc	a5,0x3
    800025a8:	2ac7b783          	ld	a5,684(a5) # 80005850 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025ac:	0007b783          	ld	a5,0(a5)
    800025b0:	00003717          	auipc	a4,0x3
    800025b4:	36f73023          	sd	a5,864(a4) # 80005910 <_ZN16MemoryAllocation9fmem_headE>
    800025b8:	fd5ff06f          	j	8000258c <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800025bc <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    800025bc:	ff010113          	addi	sp,sp,-16
    800025c0:	00113423          	sd	ra,8(sp)
    800025c4:	00813023          	sd	s0,0(sp)
    800025c8:	01010413          	addi	s0,sp,16
    800025cc:	000105b7          	lui	a1,0x10
    800025d0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800025d4:	00100513          	li	a0,1
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	fa0080e7          	jalr	-96(ra) # 80002578 <_Z41__static_initialization_and_destruction_0ii>
    800025e0:	00813083          	ld	ra,8(sp)
    800025e4:	00013403          	ld	s0,0(sp)
    800025e8:	01010113          	addi	sp,sp,16
    800025ec:	00008067          	ret

00000000800025f0 <_Z11printStringPKc>:

#include "../h/Print.hpp"
#include "../lib/console.h"
#include "../h/RiscV.hpp"
//promenjeni print string i integer na vezbama 2, 1:10:00 tu negde, da bi se onemogucili prekidi u samoj niti
void printString(char const *string){
    800025f0:	fe010113          	addi	sp,sp,-32
    800025f4:	00113c23          	sd	ra,24(sp)
    800025f8:	00813823          	sd	s0,16(sp)
    800025fc:	00913423          	sd	s1,8(sp)
    80002600:	01213023          	sd	s2,0(sp)
    80002604:	02010413          	addi	s0,sp,32
    80002608:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    8000260c:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80002610:	00200793          	li	a5,2
    80002614:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = RiscV::r_sstatus();
    RiscV::mc_sstatus(RiscV::SSTATUS_SIE);
    while(*string!='\0'){
    80002618:	0004c503          	lbu	a0,0(s1)
    8000261c:	00050a63          	beqz	a0,80002630 <_Z11printStringPKc+0x40>
        __putc(*string);
    80002620:	00002097          	auipc	ra,0x2
    80002624:	1ac080e7          	jalr	428(ra) # 800047cc <__putc>
        string++;
    80002628:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    8000262c:	fedff06f          	j	80002618 <_Z11printStringPKc+0x28>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80002630:	0009091b          	sext.w	s2,s2
    80002634:	00297913          	andi	s2,s2,2
    80002638:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    8000263c:	10092073          	csrs	sstatus,s2
}
    80002640:	01813083          	ld	ra,24(sp)
    80002644:	01013403          	ld	s0,16(sp)
    80002648:	00813483          	ld	s1,8(sp)
    8000264c:	00013903          	ld	s2,0(sp)
    80002650:	02010113          	addi	sp,sp,32
    80002654:	00008067          	ret

0000000080002658 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    80002658:	fd010113          	addi	sp,sp,-48
    8000265c:	02113423          	sd	ra,40(sp)
    80002660:	02813023          	sd	s0,32(sp)
    80002664:	00913c23          	sd	s1,24(sp)
    80002668:	01213823          	sd	s2,16(sp)
    8000266c:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80002670:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80002674:	00200793          	li	a5,2
    80002678:	1007b073          	csrc	sstatus,a5
    neg=0;
    if(integer<0){
        neg=1;
        x=-integer;
    }else{
        x=integer;
    8000267c:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80002680:	00000493          	li	s1,0
    do {
        buf[i++] = digits [x%10];
    80002684:	00a00613          	li	a2,10
    80002688:	02c5773b          	remuw	a4,a0,a2
    8000268c:	02071693          	slli	a3,a4,0x20
    80002690:	0206d693          	srli	a3,a3,0x20
    80002694:	00003717          	auipc	a4,0x3
    80002698:	a2c70713          	addi	a4,a4,-1492 # 800050c0 <_ZZ12printIntegermE6digits>
    8000269c:	00d70733          	add	a4,a4,a3
    800026a0:	00074703          	lbu	a4,0(a4)
    800026a4:	fe040693          	addi	a3,s0,-32
    800026a8:	009687b3          	add	a5,a3,s1
    800026ac:	0014849b          	addiw	s1,s1,1
    800026b0:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    800026b4:	0005071b          	sext.w	a4,a0
    800026b8:	02c5553b          	divuw	a0,a0,a2
    800026bc:	00900793          	li	a5,9
    800026c0:	fce7e2e3          	bltu	a5,a4,80002684 <_Z12printIntegerm+0x2c>
    if(neg) buf[i++] = '-';

    while(--i >= 0){
    800026c4:	fff4849b          	addiw	s1,s1,-1
    800026c8:	0004ce63          	bltz	s1,800026e4 <_Z12printIntegerm+0x8c>
        __putc(buf[i]);
    800026cc:	fe040793          	addi	a5,s0,-32
    800026d0:	009787b3          	add	a5,a5,s1
    800026d4:	ff07c503          	lbu	a0,-16(a5)
    800026d8:	00002097          	auipc	ra,0x2
    800026dc:	0f4080e7          	jalr	244(ra) # 800047cc <__putc>
    800026e0:	fe5ff06f          	j	800026c4 <_Z12printIntegerm+0x6c>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    800026e4:	0009091b          	sext.w	s2,s2
    800026e8:	00297913          	andi	s2,s2,2
    800026ec:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    800026f0:	10092073          	csrs	sstatus,s2
    800026f4:	02813083          	ld	ra,40(sp)
    800026f8:	02013403          	ld	s0,32(sp)
    800026fc:	01813483          	ld	s1,24(sp)
    80002700:	01013903          	ld	s2,16(sp)
    80002704:	03010113          	addi	sp,sp,48
    80002708:	00008067          	ret

000000008000270c <start>:
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00813423          	sd	s0,8(sp)
    80002714:	01010413          	addi	s0,sp,16
    80002718:	300027f3          	csrr	a5,mstatus
    8000271c:	ffffe737          	lui	a4,0xffffe
    80002720:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c7f>
    80002724:	00e7f7b3          	and	a5,a5,a4
    80002728:	00001737          	lui	a4,0x1
    8000272c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002730:	00e7e7b3          	or	a5,a5,a4
    80002734:	30079073          	csrw	mstatus,a5
    80002738:	00000797          	auipc	a5,0x0
    8000273c:	16078793          	addi	a5,a5,352 # 80002898 <system_main>
    80002740:	34179073          	csrw	mepc,a5
    80002744:	00000793          	li	a5,0
    80002748:	18079073          	csrw	satp,a5
    8000274c:	000107b7          	lui	a5,0x10
    80002750:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002754:	30279073          	csrw	medeleg,a5
    80002758:	30379073          	csrw	mideleg,a5
    8000275c:	104027f3          	csrr	a5,sie
    80002760:	2227e793          	ori	a5,a5,546
    80002764:	10479073          	csrw	sie,a5
    80002768:	fff00793          	li	a5,-1
    8000276c:	00a7d793          	srli	a5,a5,0xa
    80002770:	3b079073          	csrw	pmpaddr0,a5
    80002774:	00f00793          	li	a5,15
    80002778:	3a079073          	csrw	pmpcfg0,a5
    8000277c:	f14027f3          	csrr	a5,mhartid
    80002780:	0200c737          	lui	a4,0x200c
    80002784:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002788:	0007869b          	sext.w	a3,a5
    8000278c:	00269713          	slli	a4,a3,0x2
    80002790:	000f4637          	lui	a2,0xf4
    80002794:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002798:	00d70733          	add	a4,a4,a3
    8000279c:	0037979b          	slliw	a5,a5,0x3
    800027a0:	020046b7          	lui	a3,0x2004
    800027a4:	00d787b3          	add	a5,a5,a3
    800027a8:	00c585b3          	add	a1,a1,a2
    800027ac:	00371693          	slli	a3,a4,0x3
    800027b0:	00003717          	auipc	a4,0x3
    800027b4:	17070713          	addi	a4,a4,368 # 80005920 <timer_scratch>
    800027b8:	00b7b023          	sd	a1,0(a5)
    800027bc:	00d70733          	add	a4,a4,a3
    800027c0:	00f73c23          	sd	a5,24(a4)
    800027c4:	02c73023          	sd	a2,32(a4)
    800027c8:	34071073          	csrw	mscratch,a4
    800027cc:	00000797          	auipc	a5,0x0
    800027d0:	6e478793          	addi	a5,a5,1764 # 80002eb0 <timervec>
    800027d4:	30579073          	csrw	mtvec,a5
    800027d8:	300027f3          	csrr	a5,mstatus
    800027dc:	0087e793          	ori	a5,a5,8
    800027e0:	30079073          	csrw	mstatus,a5
    800027e4:	304027f3          	csrr	a5,mie
    800027e8:	0807e793          	ori	a5,a5,128
    800027ec:	30479073          	csrw	mie,a5
    800027f0:	f14027f3          	csrr	a5,mhartid
    800027f4:	0007879b          	sext.w	a5,a5
    800027f8:	00078213          	mv	tp,a5
    800027fc:	30200073          	mret
    80002800:	00813403          	ld	s0,8(sp)
    80002804:	01010113          	addi	sp,sp,16
    80002808:	00008067          	ret

000000008000280c <timerinit>:
    8000280c:	ff010113          	addi	sp,sp,-16
    80002810:	00813423          	sd	s0,8(sp)
    80002814:	01010413          	addi	s0,sp,16
    80002818:	f14027f3          	csrr	a5,mhartid
    8000281c:	0200c737          	lui	a4,0x200c
    80002820:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002824:	0007869b          	sext.w	a3,a5
    80002828:	00269713          	slli	a4,a3,0x2
    8000282c:	000f4637          	lui	a2,0xf4
    80002830:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002834:	00d70733          	add	a4,a4,a3
    80002838:	0037979b          	slliw	a5,a5,0x3
    8000283c:	020046b7          	lui	a3,0x2004
    80002840:	00d787b3          	add	a5,a5,a3
    80002844:	00c585b3          	add	a1,a1,a2
    80002848:	00371693          	slli	a3,a4,0x3
    8000284c:	00003717          	auipc	a4,0x3
    80002850:	0d470713          	addi	a4,a4,212 # 80005920 <timer_scratch>
    80002854:	00b7b023          	sd	a1,0(a5)
    80002858:	00d70733          	add	a4,a4,a3
    8000285c:	00f73c23          	sd	a5,24(a4)
    80002860:	02c73023          	sd	a2,32(a4)
    80002864:	34071073          	csrw	mscratch,a4
    80002868:	00000797          	auipc	a5,0x0
    8000286c:	64878793          	addi	a5,a5,1608 # 80002eb0 <timervec>
    80002870:	30579073          	csrw	mtvec,a5
    80002874:	300027f3          	csrr	a5,mstatus
    80002878:	0087e793          	ori	a5,a5,8
    8000287c:	30079073          	csrw	mstatus,a5
    80002880:	304027f3          	csrr	a5,mie
    80002884:	0807e793          	ori	a5,a5,128
    80002888:	30479073          	csrw	mie,a5
    8000288c:	00813403          	ld	s0,8(sp)
    80002890:	01010113          	addi	sp,sp,16
    80002894:	00008067          	ret

0000000080002898 <system_main>:
    80002898:	fe010113          	addi	sp,sp,-32
    8000289c:	00813823          	sd	s0,16(sp)
    800028a0:	00913423          	sd	s1,8(sp)
    800028a4:	00113c23          	sd	ra,24(sp)
    800028a8:	02010413          	addi	s0,sp,32
    800028ac:	00000097          	auipc	ra,0x0
    800028b0:	0c4080e7          	jalr	196(ra) # 80002970 <cpuid>
    800028b4:	00003497          	auipc	s1,0x3
    800028b8:	00c48493          	addi	s1,s1,12 # 800058c0 <started>
    800028bc:	02050263          	beqz	a0,800028e0 <system_main+0x48>
    800028c0:	0004a783          	lw	a5,0(s1)
    800028c4:	0007879b          	sext.w	a5,a5
    800028c8:	fe078ce3          	beqz	a5,800028c0 <system_main+0x28>
    800028cc:	0ff0000f          	fence
    800028d0:	00003517          	auipc	a0,0x3
    800028d4:	83050513          	addi	a0,a0,-2000 # 80005100 <_ZZ12printIntegermE6digits+0x40>
    800028d8:	00001097          	auipc	ra,0x1
    800028dc:	a74080e7          	jalr	-1420(ra) # 8000334c <panic>
    800028e0:	00001097          	auipc	ra,0x1
    800028e4:	9c8080e7          	jalr	-1592(ra) # 800032a8 <consoleinit>
    800028e8:	00001097          	auipc	ra,0x1
    800028ec:	154080e7          	jalr	340(ra) # 80003a3c <printfinit>
    800028f0:	00002517          	auipc	a0,0x2
    800028f4:	7c850513          	addi	a0,a0,1992 # 800050b8 <CONSOLE_STATUS+0xa8>
    800028f8:	00001097          	auipc	ra,0x1
    800028fc:	ab0080e7          	jalr	-1360(ra) # 800033a8 <__printf>
    80002900:	00002517          	auipc	a0,0x2
    80002904:	7d050513          	addi	a0,a0,2000 # 800050d0 <_ZZ12printIntegermE6digits+0x10>
    80002908:	00001097          	auipc	ra,0x1
    8000290c:	aa0080e7          	jalr	-1376(ra) # 800033a8 <__printf>
    80002910:	00002517          	auipc	a0,0x2
    80002914:	7a850513          	addi	a0,a0,1960 # 800050b8 <CONSOLE_STATUS+0xa8>
    80002918:	00001097          	auipc	ra,0x1
    8000291c:	a90080e7          	jalr	-1392(ra) # 800033a8 <__printf>
    80002920:	00001097          	auipc	ra,0x1
    80002924:	4a8080e7          	jalr	1192(ra) # 80003dc8 <kinit>
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	148080e7          	jalr	328(ra) # 80002a70 <trapinit>
    80002930:	00000097          	auipc	ra,0x0
    80002934:	16c080e7          	jalr	364(ra) # 80002a9c <trapinithart>
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	5b8080e7          	jalr	1464(ra) # 80002ef0 <plicinit>
    80002940:	00000097          	auipc	ra,0x0
    80002944:	5d8080e7          	jalr	1496(ra) # 80002f18 <plicinithart>
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	078080e7          	jalr	120(ra) # 800029c0 <userinit>
    80002950:	0ff0000f          	fence
    80002954:	00100793          	li	a5,1
    80002958:	00002517          	auipc	a0,0x2
    8000295c:	79050513          	addi	a0,a0,1936 # 800050e8 <_ZZ12printIntegermE6digits+0x28>
    80002960:	00f4a023          	sw	a5,0(s1)
    80002964:	00001097          	auipc	ra,0x1
    80002968:	a44080e7          	jalr	-1468(ra) # 800033a8 <__printf>
    8000296c:	0000006f          	j	8000296c <system_main+0xd4>

0000000080002970 <cpuid>:
    80002970:	ff010113          	addi	sp,sp,-16
    80002974:	00813423          	sd	s0,8(sp)
    80002978:	01010413          	addi	s0,sp,16
    8000297c:	00020513          	mv	a0,tp
    80002980:	00813403          	ld	s0,8(sp)
    80002984:	0005051b          	sext.w	a0,a0
    80002988:	01010113          	addi	sp,sp,16
    8000298c:	00008067          	ret

0000000080002990 <mycpu>:
    80002990:	ff010113          	addi	sp,sp,-16
    80002994:	00813423          	sd	s0,8(sp)
    80002998:	01010413          	addi	s0,sp,16
    8000299c:	00020793          	mv	a5,tp
    800029a0:	00813403          	ld	s0,8(sp)
    800029a4:	0007879b          	sext.w	a5,a5
    800029a8:	00779793          	slli	a5,a5,0x7
    800029ac:	00004517          	auipc	a0,0x4
    800029b0:	fa450513          	addi	a0,a0,-92 # 80006950 <cpus>
    800029b4:	00f50533          	add	a0,a0,a5
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <userinit>:
    800029c0:	ff010113          	addi	sp,sp,-16
    800029c4:	00813423          	sd	s0,8(sp)
    800029c8:	01010413          	addi	s0,sp,16
    800029cc:	00813403          	ld	s0,8(sp)
    800029d0:	01010113          	addi	sp,sp,16
    800029d4:	fffff317          	auipc	t1,0xfffff
    800029d8:	0d830067          	jr	216(t1) # 80001aac <main>

00000000800029dc <either_copyout>:
    800029dc:	ff010113          	addi	sp,sp,-16
    800029e0:	00813023          	sd	s0,0(sp)
    800029e4:	00113423          	sd	ra,8(sp)
    800029e8:	01010413          	addi	s0,sp,16
    800029ec:	02051663          	bnez	a0,80002a18 <either_copyout+0x3c>
    800029f0:	00058513          	mv	a0,a1
    800029f4:	00060593          	mv	a1,a2
    800029f8:	0006861b          	sext.w	a2,a3
    800029fc:	00002097          	auipc	ra,0x2
    80002a00:	c58080e7          	jalr	-936(ra) # 80004654 <__memmove>
    80002a04:	00813083          	ld	ra,8(sp)
    80002a08:	00013403          	ld	s0,0(sp)
    80002a0c:	00000513          	li	a0,0
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret
    80002a18:	00002517          	auipc	a0,0x2
    80002a1c:	71050513          	addi	a0,a0,1808 # 80005128 <_ZZ12printIntegermE6digits+0x68>
    80002a20:	00001097          	auipc	ra,0x1
    80002a24:	92c080e7          	jalr	-1748(ra) # 8000334c <panic>

0000000080002a28 <either_copyin>:
    80002a28:	ff010113          	addi	sp,sp,-16
    80002a2c:	00813023          	sd	s0,0(sp)
    80002a30:	00113423          	sd	ra,8(sp)
    80002a34:	01010413          	addi	s0,sp,16
    80002a38:	02059463          	bnez	a1,80002a60 <either_copyin+0x38>
    80002a3c:	00060593          	mv	a1,a2
    80002a40:	0006861b          	sext.w	a2,a3
    80002a44:	00002097          	auipc	ra,0x2
    80002a48:	c10080e7          	jalr	-1008(ra) # 80004654 <__memmove>
    80002a4c:	00813083          	ld	ra,8(sp)
    80002a50:	00013403          	ld	s0,0(sp)
    80002a54:	00000513          	li	a0,0
    80002a58:	01010113          	addi	sp,sp,16
    80002a5c:	00008067          	ret
    80002a60:	00002517          	auipc	a0,0x2
    80002a64:	6f050513          	addi	a0,a0,1776 # 80005150 <_ZZ12printIntegermE6digits+0x90>
    80002a68:	00001097          	auipc	ra,0x1
    80002a6c:	8e4080e7          	jalr	-1820(ra) # 8000334c <panic>

0000000080002a70 <trapinit>:
    80002a70:	ff010113          	addi	sp,sp,-16
    80002a74:	00813423          	sd	s0,8(sp)
    80002a78:	01010413          	addi	s0,sp,16
    80002a7c:	00813403          	ld	s0,8(sp)
    80002a80:	00002597          	auipc	a1,0x2
    80002a84:	6f858593          	addi	a1,a1,1784 # 80005178 <_ZZ12printIntegermE6digits+0xb8>
    80002a88:	00004517          	auipc	a0,0x4
    80002a8c:	f4850513          	addi	a0,a0,-184 # 800069d0 <tickslock>
    80002a90:	01010113          	addi	sp,sp,16
    80002a94:	00001317          	auipc	t1,0x1
    80002a98:	5c430067          	jr	1476(t1) # 80004058 <initlock>

0000000080002a9c <trapinithart>:
    80002a9c:	ff010113          	addi	sp,sp,-16
    80002aa0:	00813423          	sd	s0,8(sp)
    80002aa4:	01010413          	addi	s0,sp,16
    80002aa8:	00000797          	auipc	a5,0x0
    80002aac:	2f878793          	addi	a5,a5,760 # 80002da0 <kernelvec>
    80002ab0:	10579073          	csrw	stvec,a5
    80002ab4:	00813403          	ld	s0,8(sp)
    80002ab8:	01010113          	addi	sp,sp,16
    80002abc:	00008067          	ret

0000000080002ac0 <usertrap>:
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00813423          	sd	s0,8(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    80002acc:	00813403          	ld	s0,8(sp)
    80002ad0:	01010113          	addi	sp,sp,16
    80002ad4:	00008067          	ret

0000000080002ad8 <usertrapret>:
    80002ad8:	ff010113          	addi	sp,sp,-16
    80002adc:	00813423          	sd	s0,8(sp)
    80002ae0:	01010413          	addi	s0,sp,16
    80002ae4:	00813403          	ld	s0,8(sp)
    80002ae8:	01010113          	addi	sp,sp,16
    80002aec:	00008067          	ret

0000000080002af0 <kerneltrap>:
    80002af0:	fe010113          	addi	sp,sp,-32
    80002af4:	00813823          	sd	s0,16(sp)
    80002af8:	00113c23          	sd	ra,24(sp)
    80002afc:	00913423          	sd	s1,8(sp)
    80002b00:	02010413          	addi	s0,sp,32
    80002b04:	142025f3          	csrr	a1,scause
    80002b08:	100027f3          	csrr	a5,sstatus
    80002b0c:	0027f793          	andi	a5,a5,2
    80002b10:	10079c63          	bnez	a5,80002c28 <kerneltrap+0x138>
    80002b14:	142027f3          	csrr	a5,scause
    80002b18:	0207ce63          	bltz	a5,80002b54 <kerneltrap+0x64>
    80002b1c:	00002517          	auipc	a0,0x2
    80002b20:	6a450513          	addi	a0,a0,1700 # 800051c0 <_ZZ12printIntegermE6digits+0x100>
    80002b24:	00001097          	auipc	ra,0x1
    80002b28:	884080e7          	jalr	-1916(ra) # 800033a8 <__printf>
    80002b2c:	141025f3          	csrr	a1,sepc
    80002b30:	14302673          	csrr	a2,stval
    80002b34:	00002517          	auipc	a0,0x2
    80002b38:	69c50513          	addi	a0,a0,1692 # 800051d0 <_ZZ12printIntegermE6digits+0x110>
    80002b3c:	00001097          	auipc	ra,0x1
    80002b40:	86c080e7          	jalr	-1940(ra) # 800033a8 <__printf>
    80002b44:	00002517          	auipc	a0,0x2
    80002b48:	6a450513          	addi	a0,a0,1700 # 800051e8 <_ZZ12printIntegermE6digits+0x128>
    80002b4c:	00001097          	auipc	ra,0x1
    80002b50:	800080e7          	jalr	-2048(ra) # 8000334c <panic>
    80002b54:	0ff7f713          	andi	a4,a5,255
    80002b58:	00900693          	li	a3,9
    80002b5c:	04d70063          	beq	a4,a3,80002b9c <kerneltrap+0xac>
    80002b60:	fff00713          	li	a4,-1
    80002b64:	03f71713          	slli	a4,a4,0x3f
    80002b68:	00170713          	addi	a4,a4,1
    80002b6c:	fae798e3          	bne	a5,a4,80002b1c <kerneltrap+0x2c>
    80002b70:	00000097          	auipc	ra,0x0
    80002b74:	e00080e7          	jalr	-512(ra) # 80002970 <cpuid>
    80002b78:	06050663          	beqz	a0,80002be4 <kerneltrap+0xf4>
    80002b7c:	144027f3          	csrr	a5,sip
    80002b80:	ffd7f793          	andi	a5,a5,-3
    80002b84:	14479073          	csrw	sip,a5
    80002b88:	01813083          	ld	ra,24(sp)
    80002b8c:	01013403          	ld	s0,16(sp)
    80002b90:	00813483          	ld	s1,8(sp)
    80002b94:	02010113          	addi	sp,sp,32
    80002b98:	00008067          	ret
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	3c8080e7          	jalr	968(ra) # 80002f64 <plic_claim>
    80002ba4:	00a00793          	li	a5,10
    80002ba8:	00050493          	mv	s1,a0
    80002bac:	06f50863          	beq	a0,a5,80002c1c <kerneltrap+0x12c>
    80002bb0:	fc050ce3          	beqz	a0,80002b88 <kerneltrap+0x98>
    80002bb4:	00050593          	mv	a1,a0
    80002bb8:	00002517          	auipc	a0,0x2
    80002bbc:	5e850513          	addi	a0,a0,1512 # 800051a0 <_ZZ12printIntegermE6digits+0xe0>
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	7e8080e7          	jalr	2024(ra) # 800033a8 <__printf>
    80002bc8:	01013403          	ld	s0,16(sp)
    80002bcc:	01813083          	ld	ra,24(sp)
    80002bd0:	00048513          	mv	a0,s1
    80002bd4:	00813483          	ld	s1,8(sp)
    80002bd8:	02010113          	addi	sp,sp,32
    80002bdc:	00000317          	auipc	t1,0x0
    80002be0:	3c030067          	jr	960(t1) # 80002f9c <plic_complete>
    80002be4:	00004517          	auipc	a0,0x4
    80002be8:	dec50513          	addi	a0,a0,-532 # 800069d0 <tickslock>
    80002bec:	00001097          	auipc	ra,0x1
    80002bf0:	490080e7          	jalr	1168(ra) # 8000407c <acquire>
    80002bf4:	00003717          	auipc	a4,0x3
    80002bf8:	cd070713          	addi	a4,a4,-816 # 800058c4 <ticks>
    80002bfc:	00072783          	lw	a5,0(a4)
    80002c00:	00004517          	auipc	a0,0x4
    80002c04:	dd050513          	addi	a0,a0,-560 # 800069d0 <tickslock>
    80002c08:	0017879b          	addiw	a5,a5,1
    80002c0c:	00f72023          	sw	a5,0(a4)
    80002c10:	00001097          	auipc	ra,0x1
    80002c14:	538080e7          	jalr	1336(ra) # 80004148 <release>
    80002c18:	f65ff06f          	j	80002b7c <kerneltrap+0x8c>
    80002c1c:	00001097          	auipc	ra,0x1
    80002c20:	094080e7          	jalr	148(ra) # 80003cb0 <uartintr>
    80002c24:	fa5ff06f          	j	80002bc8 <kerneltrap+0xd8>
    80002c28:	00002517          	auipc	a0,0x2
    80002c2c:	55850513          	addi	a0,a0,1368 # 80005180 <_ZZ12printIntegermE6digits+0xc0>
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	71c080e7          	jalr	1820(ra) # 8000334c <panic>

0000000080002c38 <clockintr>:
    80002c38:	fe010113          	addi	sp,sp,-32
    80002c3c:	00813823          	sd	s0,16(sp)
    80002c40:	00913423          	sd	s1,8(sp)
    80002c44:	00113c23          	sd	ra,24(sp)
    80002c48:	02010413          	addi	s0,sp,32
    80002c4c:	00004497          	auipc	s1,0x4
    80002c50:	d8448493          	addi	s1,s1,-636 # 800069d0 <tickslock>
    80002c54:	00048513          	mv	a0,s1
    80002c58:	00001097          	auipc	ra,0x1
    80002c5c:	424080e7          	jalr	1060(ra) # 8000407c <acquire>
    80002c60:	00003717          	auipc	a4,0x3
    80002c64:	c6470713          	addi	a4,a4,-924 # 800058c4 <ticks>
    80002c68:	00072783          	lw	a5,0(a4)
    80002c6c:	01013403          	ld	s0,16(sp)
    80002c70:	01813083          	ld	ra,24(sp)
    80002c74:	00048513          	mv	a0,s1
    80002c78:	0017879b          	addiw	a5,a5,1
    80002c7c:	00813483          	ld	s1,8(sp)
    80002c80:	00f72023          	sw	a5,0(a4)
    80002c84:	02010113          	addi	sp,sp,32
    80002c88:	00001317          	auipc	t1,0x1
    80002c8c:	4c030067          	jr	1216(t1) # 80004148 <release>

0000000080002c90 <devintr>:
    80002c90:	142027f3          	csrr	a5,scause
    80002c94:	00000513          	li	a0,0
    80002c98:	0007c463          	bltz	a5,80002ca0 <devintr+0x10>
    80002c9c:	00008067          	ret
    80002ca0:	fe010113          	addi	sp,sp,-32
    80002ca4:	00813823          	sd	s0,16(sp)
    80002ca8:	00113c23          	sd	ra,24(sp)
    80002cac:	00913423          	sd	s1,8(sp)
    80002cb0:	02010413          	addi	s0,sp,32
    80002cb4:	0ff7f713          	andi	a4,a5,255
    80002cb8:	00900693          	li	a3,9
    80002cbc:	04d70c63          	beq	a4,a3,80002d14 <devintr+0x84>
    80002cc0:	fff00713          	li	a4,-1
    80002cc4:	03f71713          	slli	a4,a4,0x3f
    80002cc8:	00170713          	addi	a4,a4,1
    80002ccc:	00e78c63          	beq	a5,a4,80002ce4 <devintr+0x54>
    80002cd0:	01813083          	ld	ra,24(sp)
    80002cd4:	01013403          	ld	s0,16(sp)
    80002cd8:	00813483          	ld	s1,8(sp)
    80002cdc:	02010113          	addi	sp,sp,32
    80002ce0:	00008067          	ret
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	c8c080e7          	jalr	-884(ra) # 80002970 <cpuid>
    80002cec:	06050663          	beqz	a0,80002d58 <devintr+0xc8>
    80002cf0:	144027f3          	csrr	a5,sip
    80002cf4:	ffd7f793          	andi	a5,a5,-3
    80002cf8:	14479073          	csrw	sip,a5
    80002cfc:	01813083          	ld	ra,24(sp)
    80002d00:	01013403          	ld	s0,16(sp)
    80002d04:	00813483          	ld	s1,8(sp)
    80002d08:	00200513          	li	a0,2
    80002d0c:	02010113          	addi	sp,sp,32
    80002d10:	00008067          	ret
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	250080e7          	jalr	592(ra) # 80002f64 <plic_claim>
    80002d1c:	00a00793          	li	a5,10
    80002d20:	00050493          	mv	s1,a0
    80002d24:	06f50663          	beq	a0,a5,80002d90 <devintr+0x100>
    80002d28:	00100513          	li	a0,1
    80002d2c:	fa0482e3          	beqz	s1,80002cd0 <devintr+0x40>
    80002d30:	00048593          	mv	a1,s1
    80002d34:	00002517          	auipc	a0,0x2
    80002d38:	46c50513          	addi	a0,a0,1132 # 800051a0 <_ZZ12printIntegermE6digits+0xe0>
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	66c080e7          	jalr	1644(ra) # 800033a8 <__printf>
    80002d44:	00048513          	mv	a0,s1
    80002d48:	00000097          	auipc	ra,0x0
    80002d4c:	254080e7          	jalr	596(ra) # 80002f9c <plic_complete>
    80002d50:	00100513          	li	a0,1
    80002d54:	f7dff06f          	j	80002cd0 <devintr+0x40>
    80002d58:	00004517          	auipc	a0,0x4
    80002d5c:	c7850513          	addi	a0,a0,-904 # 800069d0 <tickslock>
    80002d60:	00001097          	auipc	ra,0x1
    80002d64:	31c080e7          	jalr	796(ra) # 8000407c <acquire>
    80002d68:	00003717          	auipc	a4,0x3
    80002d6c:	b5c70713          	addi	a4,a4,-1188 # 800058c4 <ticks>
    80002d70:	00072783          	lw	a5,0(a4)
    80002d74:	00004517          	auipc	a0,0x4
    80002d78:	c5c50513          	addi	a0,a0,-932 # 800069d0 <tickslock>
    80002d7c:	0017879b          	addiw	a5,a5,1
    80002d80:	00f72023          	sw	a5,0(a4)
    80002d84:	00001097          	auipc	ra,0x1
    80002d88:	3c4080e7          	jalr	964(ra) # 80004148 <release>
    80002d8c:	f65ff06f          	j	80002cf0 <devintr+0x60>
    80002d90:	00001097          	auipc	ra,0x1
    80002d94:	f20080e7          	jalr	-224(ra) # 80003cb0 <uartintr>
    80002d98:	fadff06f          	j	80002d44 <devintr+0xb4>
    80002d9c:	0000                	unimp
	...

0000000080002da0 <kernelvec>:
    80002da0:	f0010113          	addi	sp,sp,-256
    80002da4:	00113023          	sd	ra,0(sp)
    80002da8:	00213423          	sd	sp,8(sp)
    80002dac:	00313823          	sd	gp,16(sp)
    80002db0:	00413c23          	sd	tp,24(sp)
    80002db4:	02513023          	sd	t0,32(sp)
    80002db8:	02613423          	sd	t1,40(sp)
    80002dbc:	02713823          	sd	t2,48(sp)
    80002dc0:	02813c23          	sd	s0,56(sp)
    80002dc4:	04913023          	sd	s1,64(sp)
    80002dc8:	04a13423          	sd	a0,72(sp)
    80002dcc:	04b13823          	sd	a1,80(sp)
    80002dd0:	04c13c23          	sd	a2,88(sp)
    80002dd4:	06d13023          	sd	a3,96(sp)
    80002dd8:	06e13423          	sd	a4,104(sp)
    80002ddc:	06f13823          	sd	a5,112(sp)
    80002de0:	07013c23          	sd	a6,120(sp)
    80002de4:	09113023          	sd	a7,128(sp)
    80002de8:	09213423          	sd	s2,136(sp)
    80002dec:	09313823          	sd	s3,144(sp)
    80002df0:	09413c23          	sd	s4,152(sp)
    80002df4:	0b513023          	sd	s5,160(sp)
    80002df8:	0b613423          	sd	s6,168(sp)
    80002dfc:	0b713823          	sd	s7,176(sp)
    80002e00:	0b813c23          	sd	s8,184(sp)
    80002e04:	0d913023          	sd	s9,192(sp)
    80002e08:	0da13423          	sd	s10,200(sp)
    80002e0c:	0db13823          	sd	s11,208(sp)
    80002e10:	0dc13c23          	sd	t3,216(sp)
    80002e14:	0fd13023          	sd	t4,224(sp)
    80002e18:	0fe13423          	sd	t5,232(sp)
    80002e1c:	0ff13823          	sd	t6,240(sp)
    80002e20:	cd1ff0ef          	jal	ra,80002af0 <kerneltrap>
    80002e24:	00013083          	ld	ra,0(sp)
    80002e28:	00813103          	ld	sp,8(sp)
    80002e2c:	01013183          	ld	gp,16(sp)
    80002e30:	02013283          	ld	t0,32(sp)
    80002e34:	02813303          	ld	t1,40(sp)
    80002e38:	03013383          	ld	t2,48(sp)
    80002e3c:	03813403          	ld	s0,56(sp)
    80002e40:	04013483          	ld	s1,64(sp)
    80002e44:	04813503          	ld	a0,72(sp)
    80002e48:	05013583          	ld	a1,80(sp)
    80002e4c:	05813603          	ld	a2,88(sp)
    80002e50:	06013683          	ld	a3,96(sp)
    80002e54:	06813703          	ld	a4,104(sp)
    80002e58:	07013783          	ld	a5,112(sp)
    80002e5c:	07813803          	ld	a6,120(sp)
    80002e60:	08013883          	ld	a7,128(sp)
    80002e64:	08813903          	ld	s2,136(sp)
    80002e68:	09013983          	ld	s3,144(sp)
    80002e6c:	09813a03          	ld	s4,152(sp)
    80002e70:	0a013a83          	ld	s5,160(sp)
    80002e74:	0a813b03          	ld	s6,168(sp)
    80002e78:	0b013b83          	ld	s7,176(sp)
    80002e7c:	0b813c03          	ld	s8,184(sp)
    80002e80:	0c013c83          	ld	s9,192(sp)
    80002e84:	0c813d03          	ld	s10,200(sp)
    80002e88:	0d013d83          	ld	s11,208(sp)
    80002e8c:	0d813e03          	ld	t3,216(sp)
    80002e90:	0e013e83          	ld	t4,224(sp)
    80002e94:	0e813f03          	ld	t5,232(sp)
    80002e98:	0f013f83          	ld	t6,240(sp)
    80002e9c:	10010113          	addi	sp,sp,256
    80002ea0:	10200073          	sret
    80002ea4:	00000013          	nop
    80002ea8:	00000013          	nop
    80002eac:	00000013          	nop

0000000080002eb0 <timervec>:
    80002eb0:	34051573          	csrrw	a0,mscratch,a0
    80002eb4:	00b53023          	sd	a1,0(a0)
    80002eb8:	00c53423          	sd	a2,8(a0)
    80002ebc:	00d53823          	sd	a3,16(a0)
    80002ec0:	01853583          	ld	a1,24(a0)
    80002ec4:	02053603          	ld	a2,32(a0)
    80002ec8:	0005b683          	ld	a3,0(a1)
    80002ecc:	00c686b3          	add	a3,a3,a2
    80002ed0:	00d5b023          	sd	a3,0(a1)
    80002ed4:	00200593          	li	a1,2
    80002ed8:	14459073          	csrw	sip,a1
    80002edc:	01053683          	ld	a3,16(a0)
    80002ee0:	00853603          	ld	a2,8(a0)
    80002ee4:	00053583          	ld	a1,0(a0)
    80002ee8:	34051573          	csrrw	a0,mscratch,a0
    80002eec:	30200073          	mret

0000000080002ef0 <plicinit>:
    80002ef0:	ff010113          	addi	sp,sp,-16
    80002ef4:	00813423          	sd	s0,8(sp)
    80002ef8:	01010413          	addi	s0,sp,16
    80002efc:	00813403          	ld	s0,8(sp)
    80002f00:	0c0007b7          	lui	a5,0xc000
    80002f04:	00100713          	li	a4,1
    80002f08:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002f0c:	00e7a223          	sw	a4,4(a5)
    80002f10:	01010113          	addi	sp,sp,16
    80002f14:	00008067          	ret

0000000080002f18 <plicinithart>:
    80002f18:	ff010113          	addi	sp,sp,-16
    80002f1c:	00813023          	sd	s0,0(sp)
    80002f20:	00113423          	sd	ra,8(sp)
    80002f24:	01010413          	addi	s0,sp,16
    80002f28:	00000097          	auipc	ra,0x0
    80002f2c:	a48080e7          	jalr	-1464(ra) # 80002970 <cpuid>
    80002f30:	0085171b          	slliw	a4,a0,0x8
    80002f34:	0c0027b7          	lui	a5,0xc002
    80002f38:	00e787b3          	add	a5,a5,a4
    80002f3c:	40200713          	li	a4,1026
    80002f40:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002f44:	00813083          	ld	ra,8(sp)
    80002f48:	00013403          	ld	s0,0(sp)
    80002f4c:	00d5151b          	slliw	a0,a0,0xd
    80002f50:	0c2017b7          	lui	a5,0xc201
    80002f54:	00a78533          	add	a0,a5,a0
    80002f58:	00052023          	sw	zero,0(a0)
    80002f5c:	01010113          	addi	sp,sp,16
    80002f60:	00008067          	ret

0000000080002f64 <plic_claim>:
    80002f64:	ff010113          	addi	sp,sp,-16
    80002f68:	00813023          	sd	s0,0(sp)
    80002f6c:	00113423          	sd	ra,8(sp)
    80002f70:	01010413          	addi	s0,sp,16
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	9fc080e7          	jalr	-1540(ra) # 80002970 <cpuid>
    80002f7c:	00813083          	ld	ra,8(sp)
    80002f80:	00013403          	ld	s0,0(sp)
    80002f84:	00d5151b          	slliw	a0,a0,0xd
    80002f88:	0c2017b7          	lui	a5,0xc201
    80002f8c:	00a78533          	add	a0,a5,a0
    80002f90:	00452503          	lw	a0,4(a0)
    80002f94:	01010113          	addi	sp,sp,16
    80002f98:	00008067          	ret

0000000080002f9c <plic_complete>:
    80002f9c:	fe010113          	addi	sp,sp,-32
    80002fa0:	00813823          	sd	s0,16(sp)
    80002fa4:	00913423          	sd	s1,8(sp)
    80002fa8:	00113c23          	sd	ra,24(sp)
    80002fac:	02010413          	addi	s0,sp,32
    80002fb0:	00050493          	mv	s1,a0
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	9bc080e7          	jalr	-1604(ra) # 80002970 <cpuid>
    80002fbc:	01813083          	ld	ra,24(sp)
    80002fc0:	01013403          	ld	s0,16(sp)
    80002fc4:	00d5179b          	slliw	a5,a0,0xd
    80002fc8:	0c201737          	lui	a4,0xc201
    80002fcc:	00f707b3          	add	a5,a4,a5
    80002fd0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002fd4:	00813483          	ld	s1,8(sp)
    80002fd8:	02010113          	addi	sp,sp,32
    80002fdc:	00008067          	ret

0000000080002fe0 <consolewrite>:
    80002fe0:	fb010113          	addi	sp,sp,-80
    80002fe4:	04813023          	sd	s0,64(sp)
    80002fe8:	04113423          	sd	ra,72(sp)
    80002fec:	02913c23          	sd	s1,56(sp)
    80002ff0:	03213823          	sd	s2,48(sp)
    80002ff4:	03313423          	sd	s3,40(sp)
    80002ff8:	03413023          	sd	s4,32(sp)
    80002ffc:	01513c23          	sd	s5,24(sp)
    80003000:	05010413          	addi	s0,sp,80
    80003004:	06c05c63          	blez	a2,8000307c <consolewrite+0x9c>
    80003008:	00060993          	mv	s3,a2
    8000300c:	00050a13          	mv	s4,a0
    80003010:	00058493          	mv	s1,a1
    80003014:	00000913          	li	s2,0
    80003018:	fff00a93          	li	s5,-1
    8000301c:	01c0006f          	j	80003038 <consolewrite+0x58>
    80003020:	fbf44503          	lbu	a0,-65(s0)
    80003024:	0019091b          	addiw	s2,s2,1
    80003028:	00148493          	addi	s1,s1,1
    8000302c:	00001097          	auipc	ra,0x1
    80003030:	a9c080e7          	jalr	-1380(ra) # 80003ac8 <uartputc>
    80003034:	03298063          	beq	s3,s2,80003054 <consolewrite+0x74>
    80003038:	00048613          	mv	a2,s1
    8000303c:	00100693          	li	a3,1
    80003040:	000a0593          	mv	a1,s4
    80003044:	fbf40513          	addi	a0,s0,-65
    80003048:	00000097          	auipc	ra,0x0
    8000304c:	9e0080e7          	jalr	-1568(ra) # 80002a28 <either_copyin>
    80003050:	fd5518e3          	bne	a0,s5,80003020 <consolewrite+0x40>
    80003054:	04813083          	ld	ra,72(sp)
    80003058:	04013403          	ld	s0,64(sp)
    8000305c:	03813483          	ld	s1,56(sp)
    80003060:	02813983          	ld	s3,40(sp)
    80003064:	02013a03          	ld	s4,32(sp)
    80003068:	01813a83          	ld	s5,24(sp)
    8000306c:	00090513          	mv	a0,s2
    80003070:	03013903          	ld	s2,48(sp)
    80003074:	05010113          	addi	sp,sp,80
    80003078:	00008067          	ret
    8000307c:	00000913          	li	s2,0
    80003080:	fd5ff06f          	j	80003054 <consolewrite+0x74>

0000000080003084 <consoleread>:
    80003084:	f9010113          	addi	sp,sp,-112
    80003088:	06813023          	sd	s0,96(sp)
    8000308c:	04913c23          	sd	s1,88(sp)
    80003090:	05213823          	sd	s2,80(sp)
    80003094:	05313423          	sd	s3,72(sp)
    80003098:	05413023          	sd	s4,64(sp)
    8000309c:	03513c23          	sd	s5,56(sp)
    800030a0:	03613823          	sd	s6,48(sp)
    800030a4:	03713423          	sd	s7,40(sp)
    800030a8:	03813023          	sd	s8,32(sp)
    800030ac:	06113423          	sd	ra,104(sp)
    800030b0:	01913c23          	sd	s9,24(sp)
    800030b4:	07010413          	addi	s0,sp,112
    800030b8:	00060b93          	mv	s7,a2
    800030bc:	00050913          	mv	s2,a0
    800030c0:	00058c13          	mv	s8,a1
    800030c4:	00060b1b          	sext.w	s6,a2
    800030c8:	00004497          	auipc	s1,0x4
    800030cc:	93048493          	addi	s1,s1,-1744 # 800069f8 <cons>
    800030d0:	00400993          	li	s3,4
    800030d4:	fff00a13          	li	s4,-1
    800030d8:	00a00a93          	li	s5,10
    800030dc:	05705e63          	blez	s7,80003138 <consoleread+0xb4>
    800030e0:	09c4a703          	lw	a4,156(s1)
    800030e4:	0984a783          	lw	a5,152(s1)
    800030e8:	0007071b          	sext.w	a4,a4
    800030ec:	08e78463          	beq	a5,a4,80003174 <consoleread+0xf0>
    800030f0:	07f7f713          	andi	a4,a5,127
    800030f4:	00e48733          	add	a4,s1,a4
    800030f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800030fc:	0017869b          	addiw	a3,a5,1
    80003100:	08d4ac23          	sw	a3,152(s1)
    80003104:	00070c9b          	sext.w	s9,a4
    80003108:	0b370663          	beq	a4,s3,800031b4 <consoleread+0x130>
    8000310c:	00100693          	li	a3,1
    80003110:	f9f40613          	addi	a2,s0,-97
    80003114:	000c0593          	mv	a1,s8
    80003118:	00090513          	mv	a0,s2
    8000311c:	f8e40fa3          	sb	a4,-97(s0)
    80003120:	00000097          	auipc	ra,0x0
    80003124:	8bc080e7          	jalr	-1860(ra) # 800029dc <either_copyout>
    80003128:	01450863          	beq	a0,s4,80003138 <consoleread+0xb4>
    8000312c:	001c0c13          	addi	s8,s8,1
    80003130:	fffb8b9b          	addiw	s7,s7,-1
    80003134:	fb5c94e3          	bne	s9,s5,800030dc <consoleread+0x58>
    80003138:	000b851b          	sext.w	a0,s7
    8000313c:	06813083          	ld	ra,104(sp)
    80003140:	06013403          	ld	s0,96(sp)
    80003144:	05813483          	ld	s1,88(sp)
    80003148:	05013903          	ld	s2,80(sp)
    8000314c:	04813983          	ld	s3,72(sp)
    80003150:	04013a03          	ld	s4,64(sp)
    80003154:	03813a83          	ld	s5,56(sp)
    80003158:	02813b83          	ld	s7,40(sp)
    8000315c:	02013c03          	ld	s8,32(sp)
    80003160:	01813c83          	ld	s9,24(sp)
    80003164:	40ab053b          	subw	a0,s6,a0
    80003168:	03013b03          	ld	s6,48(sp)
    8000316c:	07010113          	addi	sp,sp,112
    80003170:	00008067          	ret
    80003174:	00001097          	auipc	ra,0x1
    80003178:	1d8080e7          	jalr	472(ra) # 8000434c <push_on>
    8000317c:	0984a703          	lw	a4,152(s1)
    80003180:	09c4a783          	lw	a5,156(s1)
    80003184:	0007879b          	sext.w	a5,a5
    80003188:	fef70ce3          	beq	a4,a5,80003180 <consoleread+0xfc>
    8000318c:	00001097          	auipc	ra,0x1
    80003190:	234080e7          	jalr	564(ra) # 800043c0 <pop_on>
    80003194:	0984a783          	lw	a5,152(s1)
    80003198:	07f7f713          	andi	a4,a5,127
    8000319c:	00e48733          	add	a4,s1,a4
    800031a0:	01874703          	lbu	a4,24(a4)
    800031a4:	0017869b          	addiw	a3,a5,1
    800031a8:	08d4ac23          	sw	a3,152(s1)
    800031ac:	00070c9b          	sext.w	s9,a4
    800031b0:	f5371ee3          	bne	a4,s3,8000310c <consoleread+0x88>
    800031b4:	000b851b          	sext.w	a0,s7
    800031b8:	f96bf2e3          	bgeu	s7,s6,8000313c <consoleread+0xb8>
    800031bc:	08f4ac23          	sw	a5,152(s1)
    800031c0:	f7dff06f          	j	8000313c <consoleread+0xb8>

00000000800031c4 <consputc>:
    800031c4:	10000793          	li	a5,256
    800031c8:	00f50663          	beq	a0,a5,800031d4 <consputc+0x10>
    800031cc:	00001317          	auipc	t1,0x1
    800031d0:	9f430067          	jr	-1548(t1) # 80003bc0 <uartputc_sync>
    800031d4:	ff010113          	addi	sp,sp,-16
    800031d8:	00113423          	sd	ra,8(sp)
    800031dc:	00813023          	sd	s0,0(sp)
    800031e0:	01010413          	addi	s0,sp,16
    800031e4:	00800513          	li	a0,8
    800031e8:	00001097          	auipc	ra,0x1
    800031ec:	9d8080e7          	jalr	-1576(ra) # 80003bc0 <uartputc_sync>
    800031f0:	02000513          	li	a0,32
    800031f4:	00001097          	auipc	ra,0x1
    800031f8:	9cc080e7          	jalr	-1588(ra) # 80003bc0 <uartputc_sync>
    800031fc:	00013403          	ld	s0,0(sp)
    80003200:	00813083          	ld	ra,8(sp)
    80003204:	00800513          	li	a0,8
    80003208:	01010113          	addi	sp,sp,16
    8000320c:	00001317          	auipc	t1,0x1
    80003210:	9b430067          	jr	-1612(t1) # 80003bc0 <uartputc_sync>

0000000080003214 <consoleintr>:
    80003214:	fe010113          	addi	sp,sp,-32
    80003218:	00813823          	sd	s0,16(sp)
    8000321c:	00913423          	sd	s1,8(sp)
    80003220:	01213023          	sd	s2,0(sp)
    80003224:	00113c23          	sd	ra,24(sp)
    80003228:	02010413          	addi	s0,sp,32
    8000322c:	00003917          	auipc	s2,0x3
    80003230:	7cc90913          	addi	s2,s2,1996 # 800069f8 <cons>
    80003234:	00050493          	mv	s1,a0
    80003238:	00090513          	mv	a0,s2
    8000323c:	00001097          	auipc	ra,0x1
    80003240:	e40080e7          	jalr	-448(ra) # 8000407c <acquire>
    80003244:	02048c63          	beqz	s1,8000327c <consoleintr+0x68>
    80003248:	0a092783          	lw	a5,160(s2)
    8000324c:	09892703          	lw	a4,152(s2)
    80003250:	07f00693          	li	a3,127
    80003254:	40e7873b          	subw	a4,a5,a4
    80003258:	02e6e263          	bltu	a3,a4,8000327c <consoleintr+0x68>
    8000325c:	00d00713          	li	a4,13
    80003260:	04e48063          	beq	s1,a4,800032a0 <consoleintr+0x8c>
    80003264:	07f7f713          	andi	a4,a5,127
    80003268:	00e90733          	add	a4,s2,a4
    8000326c:	0017879b          	addiw	a5,a5,1
    80003270:	0af92023          	sw	a5,160(s2)
    80003274:	00970c23          	sb	s1,24(a4)
    80003278:	08f92e23          	sw	a5,156(s2)
    8000327c:	01013403          	ld	s0,16(sp)
    80003280:	01813083          	ld	ra,24(sp)
    80003284:	00813483          	ld	s1,8(sp)
    80003288:	00013903          	ld	s2,0(sp)
    8000328c:	00003517          	auipc	a0,0x3
    80003290:	76c50513          	addi	a0,a0,1900 # 800069f8 <cons>
    80003294:	02010113          	addi	sp,sp,32
    80003298:	00001317          	auipc	t1,0x1
    8000329c:	eb030067          	jr	-336(t1) # 80004148 <release>
    800032a0:	00a00493          	li	s1,10
    800032a4:	fc1ff06f          	j	80003264 <consoleintr+0x50>

00000000800032a8 <consoleinit>:
    800032a8:	fe010113          	addi	sp,sp,-32
    800032ac:	00113c23          	sd	ra,24(sp)
    800032b0:	00813823          	sd	s0,16(sp)
    800032b4:	00913423          	sd	s1,8(sp)
    800032b8:	02010413          	addi	s0,sp,32
    800032bc:	00003497          	auipc	s1,0x3
    800032c0:	73c48493          	addi	s1,s1,1852 # 800069f8 <cons>
    800032c4:	00048513          	mv	a0,s1
    800032c8:	00002597          	auipc	a1,0x2
    800032cc:	f3058593          	addi	a1,a1,-208 # 800051f8 <_ZZ12printIntegermE6digits+0x138>
    800032d0:	00001097          	auipc	ra,0x1
    800032d4:	d88080e7          	jalr	-632(ra) # 80004058 <initlock>
    800032d8:	00000097          	auipc	ra,0x0
    800032dc:	7ac080e7          	jalr	1964(ra) # 80003a84 <uartinit>
    800032e0:	01813083          	ld	ra,24(sp)
    800032e4:	01013403          	ld	s0,16(sp)
    800032e8:	00000797          	auipc	a5,0x0
    800032ec:	d9c78793          	addi	a5,a5,-612 # 80003084 <consoleread>
    800032f0:	0af4bc23          	sd	a5,184(s1)
    800032f4:	00000797          	auipc	a5,0x0
    800032f8:	cec78793          	addi	a5,a5,-788 # 80002fe0 <consolewrite>
    800032fc:	0cf4b023          	sd	a5,192(s1)
    80003300:	00813483          	ld	s1,8(sp)
    80003304:	02010113          	addi	sp,sp,32
    80003308:	00008067          	ret

000000008000330c <console_read>:
    8000330c:	ff010113          	addi	sp,sp,-16
    80003310:	00813423          	sd	s0,8(sp)
    80003314:	01010413          	addi	s0,sp,16
    80003318:	00813403          	ld	s0,8(sp)
    8000331c:	00003317          	auipc	t1,0x3
    80003320:	79433303          	ld	t1,1940(t1) # 80006ab0 <devsw+0x10>
    80003324:	01010113          	addi	sp,sp,16
    80003328:	00030067          	jr	t1

000000008000332c <console_write>:
    8000332c:	ff010113          	addi	sp,sp,-16
    80003330:	00813423          	sd	s0,8(sp)
    80003334:	01010413          	addi	s0,sp,16
    80003338:	00813403          	ld	s0,8(sp)
    8000333c:	00003317          	auipc	t1,0x3
    80003340:	77c33303          	ld	t1,1916(t1) # 80006ab8 <devsw+0x18>
    80003344:	01010113          	addi	sp,sp,16
    80003348:	00030067          	jr	t1

000000008000334c <panic>:
    8000334c:	fe010113          	addi	sp,sp,-32
    80003350:	00113c23          	sd	ra,24(sp)
    80003354:	00813823          	sd	s0,16(sp)
    80003358:	00913423          	sd	s1,8(sp)
    8000335c:	02010413          	addi	s0,sp,32
    80003360:	00050493          	mv	s1,a0
    80003364:	00002517          	auipc	a0,0x2
    80003368:	e9c50513          	addi	a0,a0,-356 # 80005200 <_ZZ12printIntegermE6digits+0x140>
    8000336c:	00003797          	auipc	a5,0x3
    80003370:	7e07a623          	sw	zero,2028(a5) # 80006b58 <pr+0x18>
    80003374:	00000097          	auipc	ra,0x0
    80003378:	034080e7          	jalr	52(ra) # 800033a8 <__printf>
    8000337c:	00048513          	mv	a0,s1
    80003380:	00000097          	auipc	ra,0x0
    80003384:	028080e7          	jalr	40(ra) # 800033a8 <__printf>
    80003388:	00002517          	auipc	a0,0x2
    8000338c:	d3050513          	addi	a0,a0,-720 # 800050b8 <CONSOLE_STATUS+0xa8>
    80003390:	00000097          	auipc	ra,0x0
    80003394:	018080e7          	jalr	24(ra) # 800033a8 <__printf>
    80003398:	00100793          	li	a5,1
    8000339c:	00002717          	auipc	a4,0x2
    800033a0:	52f72623          	sw	a5,1324(a4) # 800058c8 <panicked>
    800033a4:	0000006f          	j	800033a4 <panic+0x58>

00000000800033a8 <__printf>:
    800033a8:	f3010113          	addi	sp,sp,-208
    800033ac:	08813023          	sd	s0,128(sp)
    800033b0:	07313423          	sd	s3,104(sp)
    800033b4:	09010413          	addi	s0,sp,144
    800033b8:	05813023          	sd	s8,64(sp)
    800033bc:	08113423          	sd	ra,136(sp)
    800033c0:	06913c23          	sd	s1,120(sp)
    800033c4:	07213823          	sd	s2,112(sp)
    800033c8:	07413023          	sd	s4,96(sp)
    800033cc:	05513c23          	sd	s5,88(sp)
    800033d0:	05613823          	sd	s6,80(sp)
    800033d4:	05713423          	sd	s7,72(sp)
    800033d8:	03913c23          	sd	s9,56(sp)
    800033dc:	03a13823          	sd	s10,48(sp)
    800033e0:	03b13423          	sd	s11,40(sp)
    800033e4:	00003317          	auipc	t1,0x3
    800033e8:	75c30313          	addi	t1,t1,1884 # 80006b40 <pr>
    800033ec:	01832c03          	lw	s8,24(t1)
    800033f0:	00b43423          	sd	a1,8(s0)
    800033f4:	00c43823          	sd	a2,16(s0)
    800033f8:	00d43c23          	sd	a3,24(s0)
    800033fc:	02e43023          	sd	a4,32(s0)
    80003400:	02f43423          	sd	a5,40(s0)
    80003404:	03043823          	sd	a6,48(s0)
    80003408:	03143c23          	sd	a7,56(s0)
    8000340c:	00050993          	mv	s3,a0
    80003410:	4a0c1663          	bnez	s8,800038bc <__printf+0x514>
    80003414:	60098c63          	beqz	s3,80003a2c <__printf+0x684>
    80003418:	0009c503          	lbu	a0,0(s3)
    8000341c:	00840793          	addi	a5,s0,8
    80003420:	f6f43c23          	sd	a5,-136(s0)
    80003424:	00000493          	li	s1,0
    80003428:	22050063          	beqz	a0,80003648 <__printf+0x2a0>
    8000342c:	00002a37          	lui	s4,0x2
    80003430:	00018ab7          	lui	s5,0x18
    80003434:	000f4b37          	lui	s6,0xf4
    80003438:	00989bb7          	lui	s7,0x989
    8000343c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003440:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003444:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003448:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000344c:	00148c9b          	addiw	s9,s1,1
    80003450:	02500793          	li	a5,37
    80003454:	01998933          	add	s2,s3,s9
    80003458:	38f51263          	bne	a0,a5,800037dc <__printf+0x434>
    8000345c:	00094783          	lbu	a5,0(s2)
    80003460:	00078c9b          	sext.w	s9,a5
    80003464:	1e078263          	beqz	a5,80003648 <__printf+0x2a0>
    80003468:	0024849b          	addiw	s1,s1,2
    8000346c:	07000713          	li	a4,112
    80003470:	00998933          	add	s2,s3,s1
    80003474:	38e78a63          	beq	a5,a4,80003808 <__printf+0x460>
    80003478:	20f76863          	bltu	a4,a5,80003688 <__printf+0x2e0>
    8000347c:	42a78863          	beq	a5,a0,800038ac <__printf+0x504>
    80003480:	06400713          	li	a4,100
    80003484:	40e79663          	bne	a5,a4,80003890 <__printf+0x4e8>
    80003488:	f7843783          	ld	a5,-136(s0)
    8000348c:	0007a603          	lw	a2,0(a5)
    80003490:	00878793          	addi	a5,a5,8
    80003494:	f6f43c23          	sd	a5,-136(s0)
    80003498:	42064a63          	bltz	a2,800038cc <__printf+0x524>
    8000349c:	00a00713          	li	a4,10
    800034a0:	02e677bb          	remuw	a5,a2,a4
    800034a4:	00002d97          	auipc	s11,0x2
    800034a8:	d84d8d93          	addi	s11,s11,-636 # 80005228 <digits>
    800034ac:	00900593          	li	a1,9
    800034b0:	0006051b          	sext.w	a0,a2
    800034b4:	00000c93          	li	s9,0
    800034b8:	02079793          	slli	a5,a5,0x20
    800034bc:	0207d793          	srli	a5,a5,0x20
    800034c0:	00fd87b3          	add	a5,s11,a5
    800034c4:	0007c783          	lbu	a5,0(a5)
    800034c8:	02e656bb          	divuw	a3,a2,a4
    800034cc:	f8f40023          	sb	a5,-128(s0)
    800034d0:	14c5d863          	bge	a1,a2,80003620 <__printf+0x278>
    800034d4:	06300593          	li	a1,99
    800034d8:	00100c93          	li	s9,1
    800034dc:	02e6f7bb          	remuw	a5,a3,a4
    800034e0:	02079793          	slli	a5,a5,0x20
    800034e4:	0207d793          	srli	a5,a5,0x20
    800034e8:	00fd87b3          	add	a5,s11,a5
    800034ec:	0007c783          	lbu	a5,0(a5)
    800034f0:	02e6d73b          	divuw	a4,a3,a4
    800034f4:	f8f400a3          	sb	a5,-127(s0)
    800034f8:	12a5f463          	bgeu	a1,a0,80003620 <__printf+0x278>
    800034fc:	00a00693          	li	a3,10
    80003500:	00900593          	li	a1,9
    80003504:	02d777bb          	remuw	a5,a4,a3
    80003508:	02079793          	slli	a5,a5,0x20
    8000350c:	0207d793          	srli	a5,a5,0x20
    80003510:	00fd87b3          	add	a5,s11,a5
    80003514:	0007c503          	lbu	a0,0(a5)
    80003518:	02d757bb          	divuw	a5,a4,a3
    8000351c:	f8a40123          	sb	a0,-126(s0)
    80003520:	48e5f263          	bgeu	a1,a4,800039a4 <__printf+0x5fc>
    80003524:	06300513          	li	a0,99
    80003528:	02d7f5bb          	remuw	a1,a5,a3
    8000352c:	02059593          	slli	a1,a1,0x20
    80003530:	0205d593          	srli	a1,a1,0x20
    80003534:	00bd85b3          	add	a1,s11,a1
    80003538:	0005c583          	lbu	a1,0(a1)
    8000353c:	02d7d7bb          	divuw	a5,a5,a3
    80003540:	f8b401a3          	sb	a1,-125(s0)
    80003544:	48e57263          	bgeu	a0,a4,800039c8 <__printf+0x620>
    80003548:	3e700513          	li	a0,999
    8000354c:	02d7f5bb          	remuw	a1,a5,a3
    80003550:	02059593          	slli	a1,a1,0x20
    80003554:	0205d593          	srli	a1,a1,0x20
    80003558:	00bd85b3          	add	a1,s11,a1
    8000355c:	0005c583          	lbu	a1,0(a1)
    80003560:	02d7d7bb          	divuw	a5,a5,a3
    80003564:	f8b40223          	sb	a1,-124(s0)
    80003568:	46e57663          	bgeu	a0,a4,800039d4 <__printf+0x62c>
    8000356c:	02d7f5bb          	remuw	a1,a5,a3
    80003570:	02059593          	slli	a1,a1,0x20
    80003574:	0205d593          	srli	a1,a1,0x20
    80003578:	00bd85b3          	add	a1,s11,a1
    8000357c:	0005c583          	lbu	a1,0(a1)
    80003580:	02d7d7bb          	divuw	a5,a5,a3
    80003584:	f8b402a3          	sb	a1,-123(s0)
    80003588:	46ea7863          	bgeu	s4,a4,800039f8 <__printf+0x650>
    8000358c:	02d7f5bb          	remuw	a1,a5,a3
    80003590:	02059593          	slli	a1,a1,0x20
    80003594:	0205d593          	srli	a1,a1,0x20
    80003598:	00bd85b3          	add	a1,s11,a1
    8000359c:	0005c583          	lbu	a1,0(a1)
    800035a0:	02d7d7bb          	divuw	a5,a5,a3
    800035a4:	f8b40323          	sb	a1,-122(s0)
    800035a8:	3eeaf863          	bgeu	s5,a4,80003998 <__printf+0x5f0>
    800035ac:	02d7f5bb          	remuw	a1,a5,a3
    800035b0:	02059593          	slli	a1,a1,0x20
    800035b4:	0205d593          	srli	a1,a1,0x20
    800035b8:	00bd85b3          	add	a1,s11,a1
    800035bc:	0005c583          	lbu	a1,0(a1)
    800035c0:	02d7d7bb          	divuw	a5,a5,a3
    800035c4:	f8b403a3          	sb	a1,-121(s0)
    800035c8:	42eb7e63          	bgeu	s6,a4,80003a04 <__printf+0x65c>
    800035cc:	02d7f5bb          	remuw	a1,a5,a3
    800035d0:	02059593          	slli	a1,a1,0x20
    800035d4:	0205d593          	srli	a1,a1,0x20
    800035d8:	00bd85b3          	add	a1,s11,a1
    800035dc:	0005c583          	lbu	a1,0(a1)
    800035e0:	02d7d7bb          	divuw	a5,a5,a3
    800035e4:	f8b40423          	sb	a1,-120(s0)
    800035e8:	42ebfc63          	bgeu	s7,a4,80003a20 <__printf+0x678>
    800035ec:	02079793          	slli	a5,a5,0x20
    800035f0:	0207d793          	srli	a5,a5,0x20
    800035f4:	00fd8db3          	add	s11,s11,a5
    800035f8:	000dc703          	lbu	a4,0(s11)
    800035fc:	00a00793          	li	a5,10
    80003600:	00900c93          	li	s9,9
    80003604:	f8e404a3          	sb	a4,-119(s0)
    80003608:	00065c63          	bgez	a2,80003620 <__printf+0x278>
    8000360c:	f9040713          	addi	a4,s0,-112
    80003610:	00f70733          	add	a4,a4,a5
    80003614:	02d00693          	li	a3,45
    80003618:	fed70823          	sb	a3,-16(a4)
    8000361c:	00078c93          	mv	s9,a5
    80003620:	f8040793          	addi	a5,s0,-128
    80003624:	01978cb3          	add	s9,a5,s9
    80003628:	f7f40d13          	addi	s10,s0,-129
    8000362c:	000cc503          	lbu	a0,0(s9)
    80003630:	fffc8c93          	addi	s9,s9,-1
    80003634:	00000097          	auipc	ra,0x0
    80003638:	b90080e7          	jalr	-1136(ra) # 800031c4 <consputc>
    8000363c:	ffac98e3          	bne	s9,s10,8000362c <__printf+0x284>
    80003640:	00094503          	lbu	a0,0(s2)
    80003644:	e00514e3          	bnez	a0,8000344c <__printf+0xa4>
    80003648:	1a0c1663          	bnez	s8,800037f4 <__printf+0x44c>
    8000364c:	08813083          	ld	ra,136(sp)
    80003650:	08013403          	ld	s0,128(sp)
    80003654:	07813483          	ld	s1,120(sp)
    80003658:	07013903          	ld	s2,112(sp)
    8000365c:	06813983          	ld	s3,104(sp)
    80003660:	06013a03          	ld	s4,96(sp)
    80003664:	05813a83          	ld	s5,88(sp)
    80003668:	05013b03          	ld	s6,80(sp)
    8000366c:	04813b83          	ld	s7,72(sp)
    80003670:	04013c03          	ld	s8,64(sp)
    80003674:	03813c83          	ld	s9,56(sp)
    80003678:	03013d03          	ld	s10,48(sp)
    8000367c:	02813d83          	ld	s11,40(sp)
    80003680:	0d010113          	addi	sp,sp,208
    80003684:	00008067          	ret
    80003688:	07300713          	li	a4,115
    8000368c:	1ce78a63          	beq	a5,a4,80003860 <__printf+0x4b8>
    80003690:	07800713          	li	a4,120
    80003694:	1ee79e63          	bne	a5,a4,80003890 <__printf+0x4e8>
    80003698:	f7843783          	ld	a5,-136(s0)
    8000369c:	0007a703          	lw	a4,0(a5)
    800036a0:	00878793          	addi	a5,a5,8
    800036a4:	f6f43c23          	sd	a5,-136(s0)
    800036a8:	28074263          	bltz	a4,8000392c <__printf+0x584>
    800036ac:	00002d97          	auipc	s11,0x2
    800036b0:	b7cd8d93          	addi	s11,s11,-1156 # 80005228 <digits>
    800036b4:	00f77793          	andi	a5,a4,15
    800036b8:	00fd87b3          	add	a5,s11,a5
    800036bc:	0007c683          	lbu	a3,0(a5)
    800036c0:	00f00613          	li	a2,15
    800036c4:	0007079b          	sext.w	a5,a4
    800036c8:	f8d40023          	sb	a3,-128(s0)
    800036cc:	0047559b          	srliw	a1,a4,0x4
    800036d0:	0047569b          	srliw	a3,a4,0x4
    800036d4:	00000c93          	li	s9,0
    800036d8:	0ee65063          	bge	a2,a4,800037b8 <__printf+0x410>
    800036dc:	00f6f693          	andi	a3,a3,15
    800036e0:	00dd86b3          	add	a3,s11,a3
    800036e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800036e8:	0087d79b          	srliw	a5,a5,0x8
    800036ec:	00100c93          	li	s9,1
    800036f0:	f8d400a3          	sb	a3,-127(s0)
    800036f4:	0cb67263          	bgeu	a2,a1,800037b8 <__printf+0x410>
    800036f8:	00f7f693          	andi	a3,a5,15
    800036fc:	00dd86b3          	add	a3,s11,a3
    80003700:	0006c583          	lbu	a1,0(a3)
    80003704:	00f00613          	li	a2,15
    80003708:	0047d69b          	srliw	a3,a5,0x4
    8000370c:	f8b40123          	sb	a1,-126(s0)
    80003710:	0047d593          	srli	a1,a5,0x4
    80003714:	28f67e63          	bgeu	a2,a5,800039b0 <__printf+0x608>
    80003718:	00f6f693          	andi	a3,a3,15
    8000371c:	00dd86b3          	add	a3,s11,a3
    80003720:	0006c503          	lbu	a0,0(a3)
    80003724:	0087d813          	srli	a6,a5,0x8
    80003728:	0087d69b          	srliw	a3,a5,0x8
    8000372c:	f8a401a3          	sb	a0,-125(s0)
    80003730:	28b67663          	bgeu	a2,a1,800039bc <__printf+0x614>
    80003734:	00f6f693          	andi	a3,a3,15
    80003738:	00dd86b3          	add	a3,s11,a3
    8000373c:	0006c583          	lbu	a1,0(a3)
    80003740:	00c7d513          	srli	a0,a5,0xc
    80003744:	00c7d69b          	srliw	a3,a5,0xc
    80003748:	f8b40223          	sb	a1,-124(s0)
    8000374c:	29067a63          	bgeu	a2,a6,800039e0 <__printf+0x638>
    80003750:	00f6f693          	andi	a3,a3,15
    80003754:	00dd86b3          	add	a3,s11,a3
    80003758:	0006c583          	lbu	a1,0(a3)
    8000375c:	0107d813          	srli	a6,a5,0x10
    80003760:	0107d69b          	srliw	a3,a5,0x10
    80003764:	f8b402a3          	sb	a1,-123(s0)
    80003768:	28a67263          	bgeu	a2,a0,800039ec <__printf+0x644>
    8000376c:	00f6f693          	andi	a3,a3,15
    80003770:	00dd86b3          	add	a3,s11,a3
    80003774:	0006c683          	lbu	a3,0(a3)
    80003778:	0147d79b          	srliw	a5,a5,0x14
    8000377c:	f8d40323          	sb	a3,-122(s0)
    80003780:	21067663          	bgeu	a2,a6,8000398c <__printf+0x5e4>
    80003784:	02079793          	slli	a5,a5,0x20
    80003788:	0207d793          	srli	a5,a5,0x20
    8000378c:	00fd8db3          	add	s11,s11,a5
    80003790:	000dc683          	lbu	a3,0(s11)
    80003794:	00800793          	li	a5,8
    80003798:	00700c93          	li	s9,7
    8000379c:	f8d403a3          	sb	a3,-121(s0)
    800037a0:	00075c63          	bgez	a4,800037b8 <__printf+0x410>
    800037a4:	f9040713          	addi	a4,s0,-112
    800037a8:	00f70733          	add	a4,a4,a5
    800037ac:	02d00693          	li	a3,45
    800037b0:	fed70823          	sb	a3,-16(a4)
    800037b4:	00078c93          	mv	s9,a5
    800037b8:	f8040793          	addi	a5,s0,-128
    800037bc:	01978cb3          	add	s9,a5,s9
    800037c0:	f7f40d13          	addi	s10,s0,-129
    800037c4:	000cc503          	lbu	a0,0(s9)
    800037c8:	fffc8c93          	addi	s9,s9,-1
    800037cc:	00000097          	auipc	ra,0x0
    800037d0:	9f8080e7          	jalr	-1544(ra) # 800031c4 <consputc>
    800037d4:	ff9d18e3          	bne	s10,s9,800037c4 <__printf+0x41c>
    800037d8:	0100006f          	j	800037e8 <__printf+0x440>
    800037dc:	00000097          	auipc	ra,0x0
    800037e0:	9e8080e7          	jalr	-1560(ra) # 800031c4 <consputc>
    800037e4:	000c8493          	mv	s1,s9
    800037e8:	00094503          	lbu	a0,0(s2)
    800037ec:	c60510e3          	bnez	a0,8000344c <__printf+0xa4>
    800037f0:	e40c0ee3          	beqz	s8,8000364c <__printf+0x2a4>
    800037f4:	00003517          	auipc	a0,0x3
    800037f8:	34c50513          	addi	a0,a0,844 # 80006b40 <pr>
    800037fc:	00001097          	auipc	ra,0x1
    80003800:	94c080e7          	jalr	-1716(ra) # 80004148 <release>
    80003804:	e49ff06f          	j	8000364c <__printf+0x2a4>
    80003808:	f7843783          	ld	a5,-136(s0)
    8000380c:	03000513          	li	a0,48
    80003810:	01000d13          	li	s10,16
    80003814:	00878713          	addi	a4,a5,8
    80003818:	0007bc83          	ld	s9,0(a5)
    8000381c:	f6e43c23          	sd	a4,-136(s0)
    80003820:	00000097          	auipc	ra,0x0
    80003824:	9a4080e7          	jalr	-1628(ra) # 800031c4 <consputc>
    80003828:	07800513          	li	a0,120
    8000382c:	00000097          	auipc	ra,0x0
    80003830:	998080e7          	jalr	-1640(ra) # 800031c4 <consputc>
    80003834:	00002d97          	auipc	s11,0x2
    80003838:	9f4d8d93          	addi	s11,s11,-1548 # 80005228 <digits>
    8000383c:	03ccd793          	srli	a5,s9,0x3c
    80003840:	00fd87b3          	add	a5,s11,a5
    80003844:	0007c503          	lbu	a0,0(a5)
    80003848:	fffd0d1b          	addiw	s10,s10,-1
    8000384c:	004c9c93          	slli	s9,s9,0x4
    80003850:	00000097          	auipc	ra,0x0
    80003854:	974080e7          	jalr	-1676(ra) # 800031c4 <consputc>
    80003858:	fe0d12e3          	bnez	s10,8000383c <__printf+0x494>
    8000385c:	f8dff06f          	j	800037e8 <__printf+0x440>
    80003860:	f7843783          	ld	a5,-136(s0)
    80003864:	0007bc83          	ld	s9,0(a5)
    80003868:	00878793          	addi	a5,a5,8
    8000386c:	f6f43c23          	sd	a5,-136(s0)
    80003870:	000c9a63          	bnez	s9,80003884 <__printf+0x4dc>
    80003874:	1080006f          	j	8000397c <__printf+0x5d4>
    80003878:	001c8c93          	addi	s9,s9,1
    8000387c:	00000097          	auipc	ra,0x0
    80003880:	948080e7          	jalr	-1720(ra) # 800031c4 <consputc>
    80003884:	000cc503          	lbu	a0,0(s9)
    80003888:	fe0518e3          	bnez	a0,80003878 <__printf+0x4d0>
    8000388c:	f5dff06f          	j	800037e8 <__printf+0x440>
    80003890:	02500513          	li	a0,37
    80003894:	00000097          	auipc	ra,0x0
    80003898:	930080e7          	jalr	-1744(ra) # 800031c4 <consputc>
    8000389c:	000c8513          	mv	a0,s9
    800038a0:	00000097          	auipc	ra,0x0
    800038a4:	924080e7          	jalr	-1756(ra) # 800031c4 <consputc>
    800038a8:	f41ff06f          	j	800037e8 <__printf+0x440>
    800038ac:	02500513          	li	a0,37
    800038b0:	00000097          	auipc	ra,0x0
    800038b4:	914080e7          	jalr	-1772(ra) # 800031c4 <consputc>
    800038b8:	f31ff06f          	j	800037e8 <__printf+0x440>
    800038bc:	00030513          	mv	a0,t1
    800038c0:	00000097          	auipc	ra,0x0
    800038c4:	7bc080e7          	jalr	1980(ra) # 8000407c <acquire>
    800038c8:	b4dff06f          	j	80003414 <__printf+0x6c>
    800038cc:	40c0053b          	negw	a0,a2
    800038d0:	00a00713          	li	a4,10
    800038d4:	02e576bb          	remuw	a3,a0,a4
    800038d8:	00002d97          	auipc	s11,0x2
    800038dc:	950d8d93          	addi	s11,s11,-1712 # 80005228 <digits>
    800038e0:	ff700593          	li	a1,-9
    800038e4:	02069693          	slli	a3,a3,0x20
    800038e8:	0206d693          	srli	a3,a3,0x20
    800038ec:	00dd86b3          	add	a3,s11,a3
    800038f0:	0006c683          	lbu	a3,0(a3)
    800038f4:	02e557bb          	divuw	a5,a0,a4
    800038f8:	f8d40023          	sb	a3,-128(s0)
    800038fc:	10b65e63          	bge	a2,a1,80003a18 <__printf+0x670>
    80003900:	06300593          	li	a1,99
    80003904:	02e7f6bb          	remuw	a3,a5,a4
    80003908:	02069693          	slli	a3,a3,0x20
    8000390c:	0206d693          	srli	a3,a3,0x20
    80003910:	00dd86b3          	add	a3,s11,a3
    80003914:	0006c683          	lbu	a3,0(a3)
    80003918:	02e7d73b          	divuw	a4,a5,a4
    8000391c:	00200793          	li	a5,2
    80003920:	f8d400a3          	sb	a3,-127(s0)
    80003924:	bca5ece3          	bltu	a1,a0,800034fc <__printf+0x154>
    80003928:	ce5ff06f          	j	8000360c <__printf+0x264>
    8000392c:	40e007bb          	negw	a5,a4
    80003930:	00002d97          	auipc	s11,0x2
    80003934:	8f8d8d93          	addi	s11,s11,-1800 # 80005228 <digits>
    80003938:	00f7f693          	andi	a3,a5,15
    8000393c:	00dd86b3          	add	a3,s11,a3
    80003940:	0006c583          	lbu	a1,0(a3)
    80003944:	ff100613          	li	a2,-15
    80003948:	0047d69b          	srliw	a3,a5,0x4
    8000394c:	f8b40023          	sb	a1,-128(s0)
    80003950:	0047d59b          	srliw	a1,a5,0x4
    80003954:	0ac75e63          	bge	a4,a2,80003a10 <__printf+0x668>
    80003958:	00f6f693          	andi	a3,a3,15
    8000395c:	00dd86b3          	add	a3,s11,a3
    80003960:	0006c603          	lbu	a2,0(a3)
    80003964:	00f00693          	li	a3,15
    80003968:	0087d79b          	srliw	a5,a5,0x8
    8000396c:	f8c400a3          	sb	a2,-127(s0)
    80003970:	d8b6e4e3          	bltu	a3,a1,800036f8 <__printf+0x350>
    80003974:	00200793          	li	a5,2
    80003978:	e2dff06f          	j	800037a4 <__printf+0x3fc>
    8000397c:	00002c97          	auipc	s9,0x2
    80003980:	88cc8c93          	addi	s9,s9,-1908 # 80005208 <_ZZ12printIntegermE6digits+0x148>
    80003984:	02800513          	li	a0,40
    80003988:	ef1ff06f          	j	80003878 <__printf+0x4d0>
    8000398c:	00700793          	li	a5,7
    80003990:	00600c93          	li	s9,6
    80003994:	e0dff06f          	j	800037a0 <__printf+0x3f8>
    80003998:	00700793          	li	a5,7
    8000399c:	00600c93          	li	s9,6
    800039a0:	c69ff06f          	j	80003608 <__printf+0x260>
    800039a4:	00300793          	li	a5,3
    800039a8:	00200c93          	li	s9,2
    800039ac:	c5dff06f          	j	80003608 <__printf+0x260>
    800039b0:	00300793          	li	a5,3
    800039b4:	00200c93          	li	s9,2
    800039b8:	de9ff06f          	j	800037a0 <__printf+0x3f8>
    800039bc:	00400793          	li	a5,4
    800039c0:	00300c93          	li	s9,3
    800039c4:	dddff06f          	j	800037a0 <__printf+0x3f8>
    800039c8:	00400793          	li	a5,4
    800039cc:	00300c93          	li	s9,3
    800039d0:	c39ff06f          	j	80003608 <__printf+0x260>
    800039d4:	00500793          	li	a5,5
    800039d8:	00400c93          	li	s9,4
    800039dc:	c2dff06f          	j	80003608 <__printf+0x260>
    800039e0:	00500793          	li	a5,5
    800039e4:	00400c93          	li	s9,4
    800039e8:	db9ff06f          	j	800037a0 <__printf+0x3f8>
    800039ec:	00600793          	li	a5,6
    800039f0:	00500c93          	li	s9,5
    800039f4:	dadff06f          	j	800037a0 <__printf+0x3f8>
    800039f8:	00600793          	li	a5,6
    800039fc:	00500c93          	li	s9,5
    80003a00:	c09ff06f          	j	80003608 <__printf+0x260>
    80003a04:	00800793          	li	a5,8
    80003a08:	00700c93          	li	s9,7
    80003a0c:	bfdff06f          	j	80003608 <__printf+0x260>
    80003a10:	00100793          	li	a5,1
    80003a14:	d91ff06f          	j	800037a4 <__printf+0x3fc>
    80003a18:	00100793          	li	a5,1
    80003a1c:	bf1ff06f          	j	8000360c <__printf+0x264>
    80003a20:	00900793          	li	a5,9
    80003a24:	00800c93          	li	s9,8
    80003a28:	be1ff06f          	j	80003608 <__printf+0x260>
    80003a2c:	00001517          	auipc	a0,0x1
    80003a30:	7e450513          	addi	a0,a0,2020 # 80005210 <_ZZ12printIntegermE6digits+0x150>
    80003a34:	00000097          	auipc	ra,0x0
    80003a38:	918080e7          	jalr	-1768(ra) # 8000334c <panic>

0000000080003a3c <printfinit>:
    80003a3c:	fe010113          	addi	sp,sp,-32
    80003a40:	00813823          	sd	s0,16(sp)
    80003a44:	00913423          	sd	s1,8(sp)
    80003a48:	00113c23          	sd	ra,24(sp)
    80003a4c:	02010413          	addi	s0,sp,32
    80003a50:	00003497          	auipc	s1,0x3
    80003a54:	0f048493          	addi	s1,s1,240 # 80006b40 <pr>
    80003a58:	00048513          	mv	a0,s1
    80003a5c:	00001597          	auipc	a1,0x1
    80003a60:	7c458593          	addi	a1,a1,1988 # 80005220 <_ZZ12printIntegermE6digits+0x160>
    80003a64:	00000097          	auipc	ra,0x0
    80003a68:	5f4080e7          	jalr	1524(ra) # 80004058 <initlock>
    80003a6c:	01813083          	ld	ra,24(sp)
    80003a70:	01013403          	ld	s0,16(sp)
    80003a74:	0004ac23          	sw	zero,24(s1)
    80003a78:	00813483          	ld	s1,8(sp)
    80003a7c:	02010113          	addi	sp,sp,32
    80003a80:	00008067          	ret

0000000080003a84 <uartinit>:
    80003a84:	ff010113          	addi	sp,sp,-16
    80003a88:	00813423          	sd	s0,8(sp)
    80003a8c:	01010413          	addi	s0,sp,16
    80003a90:	100007b7          	lui	a5,0x10000
    80003a94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003a98:	f8000713          	li	a4,-128
    80003a9c:	00e781a3          	sb	a4,3(a5)
    80003aa0:	00300713          	li	a4,3
    80003aa4:	00e78023          	sb	a4,0(a5)
    80003aa8:	000780a3          	sb	zero,1(a5)
    80003aac:	00e781a3          	sb	a4,3(a5)
    80003ab0:	00700693          	li	a3,7
    80003ab4:	00d78123          	sb	a3,2(a5)
    80003ab8:	00e780a3          	sb	a4,1(a5)
    80003abc:	00813403          	ld	s0,8(sp)
    80003ac0:	01010113          	addi	sp,sp,16
    80003ac4:	00008067          	ret

0000000080003ac8 <uartputc>:
    80003ac8:	00002797          	auipc	a5,0x2
    80003acc:	e007a783          	lw	a5,-512(a5) # 800058c8 <panicked>
    80003ad0:	00078463          	beqz	a5,80003ad8 <uartputc+0x10>
    80003ad4:	0000006f          	j	80003ad4 <uartputc+0xc>
    80003ad8:	fd010113          	addi	sp,sp,-48
    80003adc:	02813023          	sd	s0,32(sp)
    80003ae0:	00913c23          	sd	s1,24(sp)
    80003ae4:	01213823          	sd	s2,16(sp)
    80003ae8:	01313423          	sd	s3,8(sp)
    80003aec:	02113423          	sd	ra,40(sp)
    80003af0:	03010413          	addi	s0,sp,48
    80003af4:	00002917          	auipc	s2,0x2
    80003af8:	ddc90913          	addi	s2,s2,-548 # 800058d0 <uart_tx_r>
    80003afc:	00093783          	ld	a5,0(s2)
    80003b00:	00002497          	auipc	s1,0x2
    80003b04:	dd848493          	addi	s1,s1,-552 # 800058d8 <uart_tx_w>
    80003b08:	0004b703          	ld	a4,0(s1)
    80003b0c:	02078693          	addi	a3,a5,32
    80003b10:	00050993          	mv	s3,a0
    80003b14:	02e69c63          	bne	a3,a4,80003b4c <uartputc+0x84>
    80003b18:	00001097          	auipc	ra,0x1
    80003b1c:	834080e7          	jalr	-1996(ra) # 8000434c <push_on>
    80003b20:	00093783          	ld	a5,0(s2)
    80003b24:	0004b703          	ld	a4,0(s1)
    80003b28:	02078793          	addi	a5,a5,32
    80003b2c:	00e79463          	bne	a5,a4,80003b34 <uartputc+0x6c>
    80003b30:	0000006f          	j	80003b30 <uartputc+0x68>
    80003b34:	00001097          	auipc	ra,0x1
    80003b38:	88c080e7          	jalr	-1908(ra) # 800043c0 <pop_on>
    80003b3c:	00093783          	ld	a5,0(s2)
    80003b40:	0004b703          	ld	a4,0(s1)
    80003b44:	02078693          	addi	a3,a5,32
    80003b48:	fce688e3          	beq	a3,a4,80003b18 <uartputc+0x50>
    80003b4c:	01f77693          	andi	a3,a4,31
    80003b50:	00003597          	auipc	a1,0x3
    80003b54:	01058593          	addi	a1,a1,16 # 80006b60 <uart_tx_buf>
    80003b58:	00d586b3          	add	a3,a1,a3
    80003b5c:	00170713          	addi	a4,a4,1
    80003b60:	01368023          	sb	s3,0(a3)
    80003b64:	00e4b023          	sd	a4,0(s1)
    80003b68:	10000637          	lui	a2,0x10000
    80003b6c:	02f71063          	bne	a4,a5,80003b8c <uartputc+0xc4>
    80003b70:	0340006f          	j	80003ba4 <uartputc+0xdc>
    80003b74:	00074703          	lbu	a4,0(a4)
    80003b78:	00f93023          	sd	a5,0(s2)
    80003b7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003b80:	00093783          	ld	a5,0(s2)
    80003b84:	0004b703          	ld	a4,0(s1)
    80003b88:	00f70e63          	beq	a4,a5,80003ba4 <uartputc+0xdc>
    80003b8c:	00564683          	lbu	a3,5(a2)
    80003b90:	01f7f713          	andi	a4,a5,31
    80003b94:	00e58733          	add	a4,a1,a4
    80003b98:	0206f693          	andi	a3,a3,32
    80003b9c:	00178793          	addi	a5,a5,1
    80003ba0:	fc069ae3          	bnez	a3,80003b74 <uartputc+0xac>
    80003ba4:	02813083          	ld	ra,40(sp)
    80003ba8:	02013403          	ld	s0,32(sp)
    80003bac:	01813483          	ld	s1,24(sp)
    80003bb0:	01013903          	ld	s2,16(sp)
    80003bb4:	00813983          	ld	s3,8(sp)
    80003bb8:	03010113          	addi	sp,sp,48
    80003bbc:	00008067          	ret

0000000080003bc0 <uartputc_sync>:
    80003bc0:	ff010113          	addi	sp,sp,-16
    80003bc4:	00813423          	sd	s0,8(sp)
    80003bc8:	01010413          	addi	s0,sp,16
    80003bcc:	00002717          	auipc	a4,0x2
    80003bd0:	cfc72703          	lw	a4,-772(a4) # 800058c8 <panicked>
    80003bd4:	02071663          	bnez	a4,80003c00 <uartputc_sync+0x40>
    80003bd8:	00050793          	mv	a5,a0
    80003bdc:	100006b7          	lui	a3,0x10000
    80003be0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003be4:	02077713          	andi	a4,a4,32
    80003be8:	fe070ce3          	beqz	a4,80003be0 <uartputc_sync+0x20>
    80003bec:	0ff7f793          	andi	a5,a5,255
    80003bf0:	00f68023          	sb	a5,0(a3)
    80003bf4:	00813403          	ld	s0,8(sp)
    80003bf8:	01010113          	addi	sp,sp,16
    80003bfc:	00008067          	ret
    80003c00:	0000006f          	j	80003c00 <uartputc_sync+0x40>

0000000080003c04 <uartstart>:
    80003c04:	ff010113          	addi	sp,sp,-16
    80003c08:	00813423          	sd	s0,8(sp)
    80003c0c:	01010413          	addi	s0,sp,16
    80003c10:	00002617          	auipc	a2,0x2
    80003c14:	cc060613          	addi	a2,a2,-832 # 800058d0 <uart_tx_r>
    80003c18:	00002517          	auipc	a0,0x2
    80003c1c:	cc050513          	addi	a0,a0,-832 # 800058d8 <uart_tx_w>
    80003c20:	00063783          	ld	a5,0(a2)
    80003c24:	00053703          	ld	a4,0(a0)
    80003c28:	04f70263          	beq	a4,a5,80003c6c <uartstart+0x68>
    80003c2c:	100005b7          	lui	a1,0x10000
    80003c30:	00003817          	auipc	a6,0x3
    80003c34:	f3080813          	addi	a6,a6,-208 # 80006b60 <uart_tx_buf>
    80003c38:	01c0006f          	j	80003c54 <uartstart+0x50>
    80003c3c:	0006c703          	lbu	a4,0(a3)
    80003c40:	00f63023          	sd	a5,0(a2)
    80003c44:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003c48:	00063783          	ld	a5,0(a2)
    80003c4c:	00053703          	ld	a4,0(a0)
    80003c50:	00f70e63          	beq	a4,a5,80003c6c <uartstart+0x68>
    80003c54:	01f7f713          	andi	a4,a5,31
    80003c58:	00e806b3          	add	a3,a6,a4
    80003c5c:	0055c703          	lbu	a4,5(a1)
    80003c60:	00178793          	addi	a5,a5,1
    80003c64:	02077713          	andi	a4,a4,32
    80003c68:	fc071ae3          	bnez	a4,80003c3c <uartstart+0x38>
    80003c6c:	00813403          	ld	s0,8(sp)
    80003c70:	01010113          	addi	sp,sp,16
    80003c74:	00008067          	ret

0000000080003c78 <uartgetc>:
    80003c78:	ff010113          	addi	sp,sp,-16
    80003c7c:	00813423          	sd	s0,8(sp)
    80003c80:	01010413          	addi	s0,sp,16
    80003c84:	10000737          	lui	a4,0x10000
    80003c88:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003c8c:	0017f793          	andi	a5,a5,1
    80003c90:	00078c63          	beqz	a5,80003ca8 <uartgetc+0x30>
    80003c94:	00074503          	lbu	a0,0(a4)
    80003c98:	0ff57513          	andi	a0,a0,255
    80003c9c:	00813403          	ld	s0,8(sp)
    80003ca0:	01010113          	addi	sp,sp,16
    80003ca4:	00008067          	ret
    80003ca8:	fff00513          	li	a0,-1
    80003cac:	ff1ff06f          	j	80003c9c <uartgetc+0x24>

0000000080003cb0 <uartintr>:
    80003cb0:	100007b7          	lui	a5,0x10000
    80003cb4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003cb8:	0017f793          	andi	a5,a5,1
    80003cbc:	0a078463          	beqz	a5,80003d64 <uartintr+0xb4>
    80003cc0:	fe010113          	addi	sp,sp,-32
    80003cc4:	00813823          	sd	s0,16(sp)
    80003cc8:	00913423          	sd	s1,8(sp)
    80003ccc:	00113c23          	sd	ra,24(sp)
    80003cd0:	02010413          	addi	s0,sp,32
    80003cd4:	100004b7          	lui	s1,0x10000
    80003cd8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003cdc:	0ff57513          	andi	a0,a0,255
    80003ce0:	fffff097          	auipc	ra,0xfffff
    80003ce4:	534080e7          	jalr	1332(ra) # 80003214 <consoleintr>
    80003ce8:	0054c783          	lbu	a5,5(s1)
    80003cec:	0017f793          	andi	a5,a5,1
    80003cf0:	fe0794e3          	bnez	a5,80003cd8 <uartintr+0x28>
    80003cf4:	00002617          	auipc	a2,0x2
    80003cf8:	bdc60613          	addi	a2,a2,-1060 # 800058d0 <uart_tx_r>
    80003cfc:	00002517          	auipc	a0,0x2
    80003d00:	bdc50513          	addi	a0,a0,-1060 # 800058d8 <uart_tx_w>
    80003d04:	00063783          	ld	a5,0(a2)
    80003d08:	00053703          	ld	a4,0(a0)
    80003d0c:	04f70263          	beq	a4,a5,80003d50 <uartintr+0xa0>
    80003d10:	100005b7          	lui	a1,0x10000
    80003d14:	00003817          	auipc	a6,0x3
    80003d18:	e4c80813          	addi	a6,a6,-436 # 80006b60 <uart_tx_buf>
    80003d1c:	01c0006f          	j	80003d38 <uartintr+0x88>
    80003d20:	0006c703          	lbu	a4,0(a3)
    80003d24:	00f63023          	sd	a5,0(a2)
    80003d28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d2c:	00063783          	ld	a5,0(a2)
    80003d30:	00053703          	ld	a4,0(a0)
    80003d34:	00f70e63          	beq	a4,a5,80003d50 <uartintr+0xa0>
    80003d38:	01f7f713          	andi	a4,a5,31
    80003d3c:	00e806b3          	add	a3,a6,a4
    80003d40:	0055c703          	lbu	a4,5(a1)
    80003d44:	00178793          	addi	a5,a5,1
    80003d48:	02077713          	andi	a4,a4,32
    80003d4c:	fc071ae3          	bnez	a4,80003d20 <uartintr+0x70>
    80003d50:	01813083          	ld	ra,24(sp)
    80003d54:	01013403          	ld	s0,16(sp)
    80003d58:	00813483          	ld	s1,8(sp)
    80003d5c:	02010113          	addi	sp,sp,32
    80003d60:	00008067          	ret
    80003d64:	00002617          	auipc	a2,0x2
    80003d68:	b6c60613          	addi	a2,a2,-1172 # 800058d0 <uart_tx_r>
    80003d6c:	00002517          	auipc	a0,0x2
    80003d70:	b6c50513          	addi	a0,a0,-1172 # 800058d8 <uart_tx_w>
    80003d74:	00063783          	ld	a5,0(a2)
    80003d78:	00053703          	ld	a4,0(a0)
    80003d7c:	04f70263          	beq	a4,a5,80003dc0 <uartintr+0x110>
    80003d80:	100005b7          	lui	a1,0x10000
    80003d84:	00003817          	auipc	a6,0x3
    80003d88:	ddc80813          	addi	a6,a6,-548 # 80006b60 <uart_tx_buf>
    80003d8c:	01c0006f          	j	80003da8 <uartintr+0xf8>
    80003d90:	0006c703          	lbu	a4,0(a3)
    80003d94:	00f63023          	sd	a5,0(a2)
    80003d98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d9c:	00063783          	ld	a5,0(a2)
    80003da0:	00053703          	ld	a4,0(a0)
    80003da4:	02f70063          	beq	a4,a5,80003dc4 <uartintr+0x114>
    80003da8:	01f7f713          	andi	a4,a5,31
    80003dac:	00e806b3          	add	a3,a6,a4
    80003db0:	0055c703          	lbu	a4,5(a1)
    80003db4:	00178793          	addi	a5,a5,1
    80003db8:	02077713          	andi	a4,a4,32
    80003dbc:	fc071ae3          	bnez	a4,80003d90 <uartintr+0xe0>
    80003dc0:	00008067          	ret
    80003dc4:	00008067          	ret

0000000080003dc8 <kinit>:
    80003dc8:	fc010113          	addi	sp,sp,-64
    80003dcc:	02913423          	sd	s1,40(sp)
    80003dd0:	fffff7b7          	lui	a5,0xfffff
    80003dd4:	00004497          	auipc	s1,0x4
    80003dd8:	dab48493          	addi	s1,s1,-597 # 80007b7f <end+0xfff>
    80003ddc:	02813823          	sd	s0,48(sp)
    80003de0:	01313c23          	sd	s3,24(sp)
    80003de4:	00f4f4b3          	and	s1,s1,a5
    80003de8:	02113c23          	sd	ra,56(sp)
    80003dec:	03213023          	sd	s2,32(sp)
    80003df0:	01413823          	sd	s4,16(sp)
    80003df4:	01513423          	sd	s5,8(sp)
    80003df8:	04010413          	addi	s0,sp,64
    80003dfc:	000017b7          	lui	a5,0x1
    80003e00:	01100993          	li	s3,17
    80003e04:	00f487b3          	add	a5,s1,a5
    80003e08:	01b99993          	slli	s3,s3,0x1b
    80003e0c:	06f9e063          	bltu	s3,a5,80003e6c <kinit+0xa4>
    80003e10:	00003a97          	auipc	s5,0x3
    80003e14:	d70a8a93          	addi	s5,s5,-656 # 80006b80 <end>
    80003e18:	0754ec63          	bltu	s1,s5,80003e90 <kinit+0xc8>
    80003e1c:	0734fa63          	bgeu	s1,s3,80003e90 <kinit+0xc8>
    80003e20:	00088a37          	lui	s4,0x88
    80003e24:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003e28:	00002917          	auipc	s2,0x2
    80003e2c:	ab890913          	addi	s2,s2,-1352 # 800058e0 <kmem>
    80003e30:	00ca1a13          	slli	s4,s4,0xc
    80003e34:	0140006f          	j	80003e48 <kinit+0x80>
    80003e38:	000017b7          	lui	a5,0x1
    80003e3c:	00f484b3          	add	s1,s1,a5
    80003e40:	0554e863          	bltu	s1,s5,80003e90 <kinit+0xc8>
    80003e44:	0534f663          	bgeu	s1,s3,80003e90 <kinit+0xc8>
    80003e48:	00001637          	lui	a2,0x1
    80003e4c:	00100593          	li	a1,1
    80003e50:	00048513          	mv	a0,s1
    80003e54:	00000097          	auipc	ra,0x0
    80003e58:	5e4080e7          	jalr	1508(ra) # 80004438 <__memset>
    80003e5c:	00093783          	ld	a5,0(s2)
    80003e60:	00f4b023          	sd	a5,0(s1)
    80003e64:	00993023          	sd	s1,0(s2)
    80003e68:	fd4498e3          	bne	s1,s4,80003e38 <kinit+0x70>
    80003e6c:	03813083          	ld	ra,56(sp)
    80003e70:	03013403          	ld	s0,48(sp)
    80003e74:	02813483          	ld	s1,40(sp)
    80003e78:	02013903          	ld	s2,32(sp)
    80003e7c:	01813983          	ld	s3,24(sp)
    80003e80:	01013a03          	ld	s4,16(sp)
    80003e84:	00813a83          	ld	s5,8(sp)
    80003e88:	04010113          	addi	sp,sp,64
    80003e8c:	00008067          	ret
    80003e90:	00001517          	auipc	a0,0x1
    80003e94:	3b050513          	addi	a0,a0,944 # 80005240 <digits+0x18>
    80003e98:	fffff097          	auipc	ra,0xfffff
    80003e9c:	4b4080e7          	jalr	1204(ra) # 8000334c <panic>

0000000080003ea0 <freerange>:
    80003ea0:	fc010113          	addi	sp,sp,-64
    80003ea4:	000017b7          	lui	a5,0x1
    80003ea8:	02913423          	sd	s1,40(sp)
    80003eac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003eb0:	009504b3          	add	s1,a0,s1
    80003eb4:	fffff537          	lui	a0,0xfffff
    80003eb8:	02813823          	sd	s0,48(sp)
    80003ebc:	02113c23          	sd	ra,56(sp)
    80003ec0:	03213023          	sd	s2,32(sp)
    80003ec4:	01313c23          	sd	s3,24(sp)
    80003ec8:	01413823          	sd	s4,16(sp)
    80003ecc:	01513423          	sd	s5,8(sp)
    80003ed0:	01613023          	sd	s6,0(sp)
    80003ed4:	04010413          	addi	s0,sp,64
    80003ed8:	00a4f4b3          	and	s1,s1,a0
    80003edc:	00f487b3          	add	a5,s1,a5
    80003ee0:	06f5e463          	bltu	a1,a5,80003f48 <freerange+0xa8>
    80003ee4:	00003a97          	auipc	s5,0x3
    80003ee8:	c9ca8a93          	addi	s5,s5,-868 # 80006b80 <end>
    80003eec:	0954e263          	bltu	s1,s5,80003f70 <freerange+0xd0>
    80003ef0:	01100993          	li	s3,17
    80003ef4:	01b99993          	slli	s3,s3,0x1b
    80003ef8:	0734fc63          	bgeu	s1,s3,80003f70 <freerange+0xd0>
    80003efc:	00058a13          	mv	s4,a1
    80003f00:	00002917          	auipc	s2,0x2
    80003f04:	9e090913          	addi	s2,s2,-1568 # 800058e0 <kmem>
    80003f08:	00002b37          	lui	s6,0x2
    80003f0c:	0140006f          	j	80003f20 <freerange+0x80>
    80003f10:	000017b7          	lui	a5,0x1
    80003f14:	00f484b3          	add	s1,s1,a5
    80003f18:	0554ec63          	bltu	s1,s5,80003f70 <freerange+0xd0>
    80003f1c:	0534fa63          	bgeu	s1,s3,80003f70 <freerange+0xd0>
    80003f20:	00001637          	lui	a2,0x1
    80003f24:	00100593          	li	a1,1
    80003f28:	00048513          	mv	a0,s1
    80003f2c:	00000097          	auipc	ra,0x0
    80003f30:	50c080e7          	jalr	1292(ra) # 80004438 <__memset>
    80003f34:	00093703          	ld	a4,0(s2)
    80003f38:	016487b3          	add	a5,s1,s6
    80003f3c:	00e4b023          	sd	a4,0(s1)
    80003f40:	00993023          	sd	s1,0(s2)
    80003f44:	fcfa76e3          	bgeu	s4,a5,80003f10 <freerange+0x70>
    80003f48:	03813083          	ld	ra,56(sp)
    80003f4c:	03013403          	ld	s0,48(sp)
    80003f50:	02813483          	ld	s1,40(sp)
    80003f54:	02013903          	ld	s2,32(sp)
    80003f58:	01813983          	ld	s3,24(sp)
    80003f5c:	01013a03          	ld	s4,16(sp)
    80003f60:	00813a83          	ld	s5,8(sp)
    80003f64:	00013b03          	ld	s6,0(sp)
    80003f68:	04010113          	addi	sp,sp,64
    80003f6c:	00008067          	ret
    80003f70:	00001517          	auipc	a0,0x1
    80003f74:	2d050513          	addi	a0,a0,720 # 80005240 <digits+0x18>
    80003f78:	fffff097          	auipc	ra,0xfffff
    80003f7c:	3d4080e7          	jalr	980(ra) # 8000334c <panic>

0000000080003f80 <kfree>:
    80003f80:	fe010113          	addi	sp,sp,-32
    80003f84:	00813823          	sd	s0,16(sp)
    80003f88:	00113c23          	sd	ra,24(sp)
    80003f8c:	00913423          	sd	s1,8(sp)
    80003f90:	02010413          	addi	s0,sp,32
    80003f94:	03451793          	slli	a5,a0,0x34
    80003f98:	04079c63          	bnez	a5,80003ff0 <kfree+0x70>
    80003f9c:	00003797          	auipc	a5,0x3
    80003fa0:	be478793          	addi	a5,a5,-1052 # 80006b80 <end>
    80003fa4:	00050493          	mv	s1,a0
    80003fa8:	04f56463          	bltu	a0,a5,80003ff0 <kfree+0x70>
    80003fac:	01100793          	li	a5,17
    80003fb0:	01b79793          	slli	a5,a5,0x1b
    80003fb4:	02f57e63          	bgeu	a0,a5,80003ff0 <kfree+0x70>
    80003fb8:	00001637          	lui	a2,0x1
    80003fbc:	00100593          	li	a1,1
    80003fc0:	00000097          	auipc	ra,0x0
    80003fc4:	478080e7          	jalr	1144(ra) # 80004438 <__memset>
    80003fc8:	00002797          	auipc	a5,0x2
    80003fcc:	91878793          	addi	a5,a5,-1768 # 800058e0 <kmem>
    80003fd0:	0007b703          	ld	a4,0(a5)
    80003fd4:	01813083          	ld	ra,24(sp)
    80003fd8:	01013403          	ld	s0,16(sp)
    80003fdc:	00e4b023          	sd	a4,0(s1)
    80003fe0:	0097b023          	sd	s1,0(a5)
    80003fe4:	00813483          	ld	s1,8(sp)
    80003fe8:	02010113          	addi	sp,sp,32
    80003fec:	00008067          	ret
    80003ff0:	00001517          	auipc	a0,0x1
    80003ff4:	25050513          	addi	a0,a0,592 # 80005240 <digits+0x18>
    80003ff8:	fffff097          	auipc	ra,0xfffff
    80003ffc:	354080e7          	jalr	852(ra) # 8000334c <panic>

0000000080004000 <kalloc>:
    80004000:	fe010113          	addi	sp,sp,-32
    80004004:	00813823          	sd	s0,16(sp)
    80004008:	00913423          	sd	s1,8(sp)
    8000400c:	00113c23          	sd	ra,24(sp)
    80004010:	02010413          	addi	s0,sp,32
    80004014:	00002797          	auipc	a5,0x2
    80004018:	8cc78793          	addi	a5,a5,-1844 # 800058e0 <kmem>
    8000401c:	0007b483          	ld	s1,0(a5)
    80004020:	02048063          	beqz	s1,80004040 <kalloc+0x40>
    80004024:	0004b703          	ld	a4,0(s1)
    80004028:	00001637          	lui	a2,0x1
    8000402c:	00500593          	li	a1,5
    80004030:	00048513          	mv	a0,s1
    80004034:	00e7b023          	sd	a4,0(a5)
    80004038:	00000097          	auipc	ra,0x0
    8000403c:	400080e7          	jalr	1024(ra) # 80004438 <__memset>
    80004040:	01813083          	ld	ra,24(sp)
    80004044:	01013403          	ld	s0,16(sp)
    80004048:	00048513          	mv	a0,s1
    8000404c:	00813483          	ld	s1,8(sp)
    80004050:	02010113          	addi	sp,sp,32
    80004054:	00008067          	ret

0000000080004058 <initlock>:
    80004058:	ff010113          	addi	sp,sp,-16
    8000405c:	00813423          	sd	s0,8(sp)
    80004060:	01010413          	addi	s0,sp,16
    80004064:	00813403          	ld	s0,8(sp)
    80004068:	00b53423          	sd	a1,8(a0)
    8000406c:	00052023          	sw	zero,0(a0)
    80004070:	00053823          	sd	zero,16(a0)
    80004074:	01010113          	addi	sp,sp,16
    80004078:	00008067          	ret

000000008000407c <acquire>:
    8000407c:	fe010113          	addi	sp,sp,-32
    80004080:	00813823          	sd	s0,16(sp)
    80004084:	00913423          	sd	s1,8(sp)
    80004088:	00113c23          	sd	ra,24(sp)
    8000408c:	01213023          	sd	s2,0(sp)
    80004090:	02010413          	addi	s0,sp,32
    80004094:	00050493          	mv	s1,a0
    80004098:	10002973          	csrr	s2,sstatus
    8000409c:	100027f3          	csrr	a5,sstatus
    800040a0:	ffd7f793          	andi	a5,a5,-3
    800040a4:	10079073          	csrw	sstatus,a5
    800040a8:	fffff097          	auipc	ra,0xfffff
    800040ac:	8e8080e7          	jalr	-1816(ra) # 80002990 <mycpu>
    800040b0:	07852783          	lw	a5,120(a0)
    800040b4:	06078e63          	beqz	a5,80004130 <acquire+0xb4>
    800040b8:	fffff097          	auipc	ra,0xfffff
    800040bc:	8d8080e7          	jalr	-1832(ra) # 80002990 <mycpu>
    800040c0:	07852783          	lw	a5,120(a0)
    800040c4:	0004a703          	lw	a4,0(s1)
    800040c8:	0017879b          	addiw	a5,a5,1
    800040cc:	06f52c23          	sw	a5,120(a0)
    800040d0:	04071063          	bnez	a4,80004110 <acquire+0x94>
    800040d4:	00100713          	li	a4,1
    800040d8:	00070793          	mv	a5,a4
    800040dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800040e0:	0007879b          	sext.w	a5,a5
    800040e4:	fe079ae3          	bnez	a5,800040d8 <acquire+0x5c>
    800040e8:	0ff0000f          	fence
    800040ec:	fffff097          	auipc	ra,0xfffff
    800040f0:	8a4080e7          	jalr	-1884(ra) # 80002990 <mycpu>
    800040f4:	01813083          	ld	ra,24(sp)
    800040f8:	01013403          	ld	s0,16(sp)
    800040fc:	00a4b823          	sd	a0,16(s1)
    80004100:	00013903          	ld	s2,0(sp)
    80004104:	00813483          	ld	s1,8(sp)
    80004108:	02010113          	addi	sp,sp,32
    8000410c:	00008067          	ret
    80004110:	0104b903          	ld	s2,16(s1)
    80004114:	fffff097          	auipc	ra,0xfffff
    80004118:	87c080e7          	jalr	-1924(ra) # 80002990 <mycpu>
    8000411c:	faa91ce3          	bne	s2,a0,800040d4 <acquire+0x58>
    80004120:	00001517          	auipc	a0,0x1
    80004124:	12850513          	addi	a0,a0,296 # 80005248 <digits+0x20>
    80004128:	fffff097          	auipc	ra,0xfffff
    8000412c:	224080e7          	jalr	548(ra) # 8000334c <panic>
    80004130:	00195913          	srli	s2,s2,0x1
    80004134:	fffff097          	auipc	ra,0xfffff
    80004138:	85c080e7          	jalr	-1956(ra) # 80002990 <mycpu>
    8000413c:	00197913          	andi	s2,s2,1
    80004140:	07252e23          	sw	s2,124(a0)
    80004144:	f75ff06f          	j	800040b8 <acquire+0x3c>

0000000080004148 <release>:
    80004148:	fe010113          	addi	sp,sp,-32
    8000414c:	00813823          	sd	s0,16(sp)
    80004150:	00113c23          	sd	ra,24(sp)
    80004154:	00913423          	sd	s1,8(sp)
    80004158:	01213023          	sd	s2,0(sp)
    8000415c:	02010413          	addi	s0,sp,32
    80004160:	00052783          	lw	a5,0(a0)
    80004164:	00079a63          	bnez	a5,80004178 <release+0x30>
    80004168:	00001517          	auipc	a0,0x1
    8000416c:	0e850513          	addi	a0,a0,232 # 80005250 <digits+0x28>
    80004170:	fffff097          	auipc	ra,0xfffff
    80004174:	1dc080e7          	jalr	476(ra) # 8000334c <panic>
    80004178:	01053903          	ld	s2,16(a0)
    8000417c:	00050493          	mv	s1,a0
    80004180:	fffff097          	auipc	ra,0xfffff
    80004184:	810080e7          	jalr	-2032(ra) # 80002990 <mycpu>
    80004188:	fea910e3          	bne	s2,a0,80004168 <release+0x20>
    8000418c:	0004b823          	sd	zero,16(s1)
    80004190:	0ff0000f          	fence
    80004194:	0f50000f          	fence	iorw,ow
    80004198:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000419c:	ffffe097          	auipc	ra,0xffffe
    800041a0:	7f4080e7          	jalr	2036(ra) # 80002990 <mycpu>
    800041a4:	100027f3          	csrr	a5,sstatus
    800041a8:	0027f793          	andi	a5,a5,2
    800041ac:	04079a63          	bnez	a5,80004200 <release+0xb8>
    800041b0:	07852783          	lw	a5,120(a0)
    800041b4:	02f05e63          	blez	a5,800041f0 <release+0xa8>
    800041b8:	fff7871b          	addiw	a4,a5,-1
    800041bc:	06e52c23          	sw	a4,120(a0)
    800041c0:	00071c63          	bnez	a4,800041d8 <release+0x90>
    800041c4:	07c52783          	lw	a5,124(a0)
    800041c8:	00078863          	beqz	a5,800041d8 <release+0x90>
    800041cc:	100027f3          	csrr	a5,sstatus
    800041d0:	0027e793          	ori	a5,a5,2
    800041d4:	10079073          	csrw	sstatus,a5
    800041d8:	01813083          	ld	ra,24(sp)
    800041dc:	01013403          	ld	s0,16(sp)
    800041e0:	00813483          	ld	s1,8(sp)
    800041e4:	00013903          	ld	s2,0(sp)
    800041e8:	02010113          	addi	sp,sp,32
    800041ec:	00008067          	ret
    800041f0:	00001517          	auipc	a0,0x1
    800041f4:	08050513          	addi	a0,a0,128 # 80005270 <digits+0x48>
    800041f8:	fffff097          	auipc	ra,0xfffff
    800041fc:	154080e7          	jalr	340(ra) # 8000334c <panic>
    80004200:	00001517          	auipc	a0,0x1
    80004204:	05850513          	addi	a0,a0,88 # 80005258 <digits+0x30>
    80004208:	fffff097          	auipc	ra,0xfffff
    8000420c:	144080e7          	jalr	324(ra) # 8000334c <panic>

0000000080004210 <holding>:
    80004210:	00052783          	lw	a5,0(a0)
    80004214:	00079663          	bnez	a5,80004220 <holding+0x10>
    80004218:	00000513          	li	a0,0
    8000421c:	00008067          	ret
    80004220:	fe010113          	addi	sp,sp,-32
    80004224:	00813823          	sd	s0,16(sp)
    80004228:	00913423          	sd	s1,8(sp)
    8000422c:	00113c23          	sd	ra,24(sp)
    80004230:	02010413          	addi	s0,sp,32
    80004234:	01053483          	ld	s1,16(a0)
    80004238:	ffffe097          	auipc	ra,0xffffe
    8000423c:	758080e7          	jalr	1880(ra) # 80002990 <mycpu>
    80004240:	01813083          	ld	ra,24(sp)
    80004244:	01013403          	ld	s0,16(sp)
    80004248:	40a48533          	sub	a0,s1,a0
    8000424c:	00153513          	seqz	a0,a0
    80004250:	00813483          	ld	s1,8(sp)
    80004254:	02010113          	addi	sp,sp,32
    80004258:	00008067          	ret

000000008000425c <push_off>:
    8000425c:	fe010113          	addi	sp,sp,-32
    80004260:	00813823          	sd	s0,16(sp)
    80004264:	00113c23          	sd	ra,24(sp)
    80004268:	00913423          	sd	s1,8(sp)
    8000426c:	02010413          	addi	s0,sp,32
    80004270:	100024f3          	csrr	s1,sstatus
    80004274:	100027f3          	csrr	a5,sstatus
    80004278:	ffd7f793          	andi	a5,a5,-3
    8000427c:	10079073          	csrw	sstatus,a5
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	710080e7          	jalr	1808(ra) # 80002990 <mycpu>
    80004288:	07852783          	lw	a5,120(a0)
    8000428c:	02078663          	beqz	a5,800042b8 <push_off+0x5c>
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	700080e7          	jalr	1792(ra) # 80002990 <mycpu>
    80004298:	07852783          	lw	a5,120(a0)
    8000429c:	01813083          	ld	ra,24(sp)
    800042a0:	01013403          	ld	s0,16(sp)
    800042a4:	0017879b          	addiw	a5,a5,1
    800042a8:	06f52c23          	sw	a5,120(a0)
    800042ac:	00813483          	ld	s1,8(sp)
    800042b0:	02010113          	addi	sp,sp,32
    800042b4:	00008067          	ret
    800042b8:	0014d493          	srli	s1,s1,0x1
    800042bc:	ffffe097          	auipc	ra,0xffffe
    800042c0:	6d4080e7          	jalr	1748(ra) # 80002990 <mycpu>
    800042c4:	0014f493          	andi	s1,s1,1
    800042c8:	06952e23          	sw	s1,124(a0)
    800042cc:	fc5ff06f          	j	80004290 <push_off+0x34>

00000000800042d0 <pop_off>:
    800042d0:	ff010113          	addi	sp,sp,-16
    800042d4:	00813023          	sd	s0,0(sp)
    800042d8:	00113423          	sd	ra,8(sp)
    800042dc:	01010413          	addi	s0,sp,16
    800042e0:	ffffe097          	auipc	ra,0xffffe
    800042e4:	6b0080e7          	jalr	1712(ra) # 80002990 <mycpu>
    800042e8:	100027f3          	csrr	a5,sstatus
    800042ec:	0027f793          	andi	a5,a5,2
    800042f0:	04079663          	bnez	a5,8000433c <pop_off+0x6c>
    800042f4:	07852783          	lw	a5,120(a0)
    800042f8:	02f05a63          	blez	a5,8000432c <pop_off+0x5c>
    800042fc:	fff7871b          	addiw	a4,a5,-1
    80004300:	06e52c23          	sw	a4,120(a0)
    80004304:	00071c63          	bnez	a4,8000431c <pop_off+0x4c>
    80004308:	07c52783          	lw	a5,124(a0)
    8000430c:	00078863          	beqz	a5,8000431c <pop_off+0x4c>
    80004310:	100027f3          	csrr	a5,sstatus
    80004314:	0027e793          	ori	a5,a5,2
    80004318:	10079073          	csrw	sstatus,a5
    8000431c:	00813083          	ld	ra,8(sp)
    80004320:	00013403          	ld	s0,0(sp)
    80004324:	01010113          	addi	sp,sp,16
    80004328:	00008067          	ret
    8000432c:	00001517          	auipc	a0,0x1
    80004330:	f4450513          	addi	a0,a0,-188 # 80005270 <digits+0x48>
    80004334:	fffff097          	auipc	ra,0xfffff
    80004338:	018080e7          	jalr	24(ra) # 8000334c <panic>
    8000433c:	00001517          	auipc	a0,0x1
    80004340:	f1c50513          	addi	a0,a0,-228 # 80005258 <digits+0x30>
    80004344:	fffff097          	auipc	ra,0xfffff
    80004348:	008080e7          	jalr	8(ra) # 8000334c <panic>

000000008000434c <push_on>:
    8000434c:	fe010113          	addi	sp,sp,-32
    80004350:	00813823          	sd	s0,16(sp)
    80004354:	00113c23          	sd	ra,24(sp)
    80004358:	00913423          	sd	s1,8(sp)
    8000435c:	02010413          	addi	s0,sp,32
    80004360:	100024f3          	csrr	s1,sstatus
    80004364:	100027f3          	csrr	a5,sstatus
    80004368:	0027e793          	ori	a5,a5,2
    8000436c:	10079073          	csrw	sstatus,a5
    80004370:	ffffe097          	auipc	ra,0xffffe
    80004374:	620080e7          	jalr	1568(ra) # 80002990 <mycpu>
    80004378:	07852783          	lw	a5,120(a0)
    8000437c:	02078663          	beqz	a5,800043a8 <push_on+0x5c>
    80004380:	ffffe097          	auipc	ra,0xffffe
    80004384:	610080e7          	jalr	1552(ra) # 80002990 <mycpu>
    80004388:	07852783          	lw	a5,120(a0)
    8000438c:	01813083          	ld	ra,24(sp)
    80004390:	01013403          	ld	s0,16(sp)
    80004394:	0017879b          	addiw	a5,a5,1
    80004398:	06f52c23          	sw	a5,120(a0)
    8000439c:	00813483          	ld	s1,8(sp)
    800043a0:	02010113          	addi	sp,sp,32
    800043a4:	00008067          	ret
    800043a8:	0014d493          	srli	s1,s1,0x1
    800043ac:	ffffe097          	auipc	ra,0xffffe
    800043b0:	5e4080e7          	jalr	1508(ra) # 80002990 <mycpu>
    800043b4:	0014f493          	andi	s1,s1,1
    800043b8:	06952e23          	sw	s1,124(a0)
    800043bc:	fc5ff06f          	j	80004380 <push_on+0x34>

00000000800043c0 <pop_on>:
    800043c0:	ff010113          	addi	sp,sp,-16
    800043c4:	00813023          	sd	s0,0(sp)
    800043c8:	00113423          	sd	ra,8(sp)
    800043cc:	01010413          	addi	s0,sp,16
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	5c0080e7          	jalr	1472(ra) # 80002990 <mycpu>
    800043d8:	100027f3          	csrr	a5,sstatus
    800043dc:	0027f793          	andi	a5,a5,2
    800043e0:	04078463          	beqz	a5,80004428 <pop_on+0x68>
    800043e4:	07852783          	lw	a5,120(a0)
    800043e8:	02f05863          	blez	a5,80004418 <pop_on+0x58>
    800043ec:	fff7879b          	addiw	a5,a5,-1
    800043f0:	06f52c23          	sw	a5,120(a0)
    800043f4:	07853783          	ld	a5,120(a0)
    800043f8:	00079863          	bnez	a5,80004408 <pop_on+0x48>
    800043fc:	100027f3          	csrr	a5,sstatus
    80004400:	ffd7f793          	andi	a5,a5,-3
    80004404:	10079073          	csrw	sstatus,a5
    80004408:	00813083          	ld	ra,8(sp)
    8000440c:	00013403          	ld	s0,0(sp)
    80004410:	01010113          	addi	sp,sp,16
    80004414:	00008067          	ret
    80004418:	00001517          	auipc	a0,0x1
    8000441c:	e8050513          	addi	a0,a0,-384 # 80005298 <digits+0x70>
    80004420:	fffff097          	auipc	ra,0xfffff
    80004424:	f2c080e7          	jalr	-212(ra) # 8000334c <panic>
    80004428:	00001517          	auipc	a0,0x1
    8000442c:	e5050513          	addi	a0,a0,-432 # 80005278 <digits+0x50>
    80004430:	fffff097          	auipc	ra,0xfffff
    80004434:	f1c080e7          	jalr	-228(ra) # 8000334c <panic>

0000000080004438 <__memset>:
    80004438:	ff010113          	addi	sp,sp,-16
    8000443c:	00813423          	sd	s0,8(sp)
    80004440:	01010413          	addi	s0,sp,16
    80004444:	1a060e63          	beqz	a2,80004600 <__memset+0x1c8>
    80004448:	40a007b3          	neg	a5,a0
    8000444c:	0077f793          	andi	a5,a5,7
    80004450:	00778693          	addi	a3,a5,7
    80004454:	00b00813          	li	a6,11
    80004458:	0ff5f593          	andi	a1,a1,255
    8000445c:	fff6071b          	addiw	a4,a2,-1
    80004460:	1b06e663          	bltu	a3,a6,8000460c <__memset+0x1d4>
    80004464:	1cd76463          	bltu	a4,a3,8000462c <__memset+0x1f4>
    80004468:	1a078e63          	beqz	a5,80004624 <__memset+0x1ec>
    8000446c:	00b50023          	sb	a1,0(a0)
    80004470:	00100713          	li	a4,1
    80004474:	1ae78463          	beq	a5,a4,8000461c <__memset+0x1e4>
    80004478:	00b500a3          	sb	a1,1(a0)
    8000447c:	00200713          	li	a4,2
    80004480:	1ae78a63          	beq	a5,a4,80004634 <__memset+0x1fc>
    80004484:	00b50123          	sb	a1,2(a0)
    80004488:	00300713          	li	a4,3
    8000448c:	18e78463          	beq	a5,a4,80004614 <__memset+0x1dc>
    80004490:	00b501a3          	sb	a1,3(a0)
    80004494:	00400713          	li	a4,4
    80004498:	1ae78263          	beq	a5,a4,8000463c <__memset+0x204>
    8000449c:	00b50223          	sb	a1,4(a0)
    800044a0:	00500713          	li	a4,5
    800044a4:	1ae78063          	beq	a5,a4,80004644 <__memset+0x20c>
    800044a8:	00b502a3          	sb	a1,5(a0)
    800044ac:	00700713          	li	a4,7
    800044b0:	18e79e63          	bne	a5,a4,8000464c <__memset+0x214>
    800044b4:	00b50323          	sb	a1,6(a0)
    800044b8:	00700e93          	li	t4,7
    800044bc:	00859713          	slli	a4,a1,0x8
    800044c0:	00e5e733          	or	a4,a1,a4
    800044c4:	01059e13          	slli	t3,a1,0x10
    800044c8:	01c76e33          	or	t3,a4,t3
    800044cc:	01859313          	slli	t1,a1,0x18
    800044d0:	006e6333          	or	t1,t3,t1
    800044d4:	02059893          	slli	a7,a1,0x20
    800044d8:	40f60e3b          	subw	t3,a2,a5
    800044dc:	011368b3          	or	a7,t1,a7
    800044e0:	02859813          	slli	a6,a1,0x28
    800044e4:	0108e833          	or	a6,a7,a6
    800044e8:	03059693          	slli	a3,a1,0x30
    800044ec:	003e589b          	srliw	a7,t3,0x3
    800044f0:	00d866b3          	or	a3,a6,a3
    800044f4:	03859713          	slli	a4,a1,0x38
    800044f8:	00389813          	slli	a6,a7,0x3
    800044fc:	00f507b3          	add	a5,a0,a5
    80004500:	00e6e733          	or	a4,a3,a4
    80004504:	000e089b          	sext.w	a7,t3
    80004508:	00f806b3          	add	a3,a6,a5
    8000450c:	00e7b023          	sd	a4,0(a5)
    80004510:	00878793          	addi	a5,a5,8
    80004514:	fed79ce3          	bne	a5,a3,8000450c <__memset+0xd4>
    80004518:	ff8e7793          	andi	a5,t3,-8
    8000451c:	0007871b          	sext.w	a4,a5
    80004520:	01d787bb          	addw	a5,a5,t4
    80004524:	0ce88e63          	beq	a7,a4,80004600 <__memset+0x1c8>
    80004528:	00f50733          	add	a4,a0,a5
    8000452c:	00b70023          	sb	a1,0(a4)
    80004530:	0017871b          	addiw	a4,a5,1
    80004534:	0cc77663          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    80004538:	00e50733          	add	a4,a0,a4
    8000453c:	00b70023          	sb	a1,0(a4)
    80004540:	0027871b          	addiw	a4,a5,2
    80004544:	0ac77e63          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    80004548:	00e50733          	add	a4,a0,a4
    8000454c:	00b70023          	sb	a1,0(a4)
    80004550:	0037871b          	addiw	a4,a5,3
    80004554:	0ac77663          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    80004558:	00e50733          	add	a4,a0,a4
    8000455c:	00b70023          	sb	a1,0(a4)
    80004560:	0047871b          	addiw	a4,a5,4
    80004564:	08c77e63          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    80004568:	00e50733          	add	a4,a0,a4
    8000456c:	00b70023          	sb	a1,0(a4)
    80004570:	0057871b          	addiw	a4,a5,5
    80004574:	08c77663          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    80004578:	00e50733          	add	a4,a0,a4
    8000457c:	00b70023          	sb	a1,0(a4)
    80004580:	0067871b          	addiw	a4,a5,6
    80004584:	06c77e63          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    80004588:	00e50733          	add	a4,a0,a4
    8000458c:	00b70023          	sb	a1,0(a4)
    80004590:	0077871b          	addiw	a4,a5,7
    80004594:	06c77663          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    80004598:	00e50733          	add	a4,a0,a4
    8000459c:	00b70023          	sb	a1,0(a4)
    800045a0:	0087871b          	addiw	a4,a5,8
    800045a4:	04c77e63          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    800045a8:	00e50733          	add	a4,a0,a4
    800045ac:	00b70023          	sb	a1,0(a4)
    800045b0:	0097871b          	addiw	a4,a5,9
    800045b4:	04c77663          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    800045b8:	00e50733          	add	a4,a0,a4
    800045bc:	00b70023          	sb	a1,0(a4)
    800045c0:	00a7871b          	addiw	a4,a5,10
    800045c4:	02c77e63          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    800045c8:	00e50733          	add	a4,a0,a4
    800045cc:	00b70023          	sb	a1,0(a4)
    800045d0:	00b7871b          	addiw	a4,a5,11
    800045d4:	02c77663          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    800045d8:	00e50733          	add	a4,a0,a4
    800045dc:	00b70023          	sb	a1,0(a4)
    800045e0:	00c7871b          	addiw	a4,a5,12
    800045e4:	00c77e63          	bgeu	a4,a2,80004600 <__memset+0x1c8>
    800045e8:	00e50733          	add	a4,a0,a4
    800045ec:	00b70023          	sb	a1,0(a4)
    800045f0:	00d7879b          	addiw	a5,a5,13
    800045f4:	00c7f663          	bgeu	a5,a2,80004600 <__memset+0x1c8>
    800045f8:	00f507b3          	add	a5,a0,a5
    800045fc:	00b78023          	sb	a1,0(a5)
    80004600:	00813403          	ld	s0,8(sp)
    80004604:	01010113          	addi	sp,sp,16
    80004608:	00008067          	ret
    8000460c:	00b00693          	li	a3,11
    80004610:	e55ff06f          	j	80004464 <__memset+0x2c>
    80004614:	00300e93          	li	t4,3
    80004618:	ea5ff06f          	j	800044bc <__memset+0x84>
    8000461c:	00100e93          	li	t4,1
    80004620:	e9dff06f          	j	800044bc <__memset+0x84>
    80004624:	00000e93          	li	t4,0
    80004628:	e95ff06f          	j	800044bc <__memset+0x84>
    8000462c:	00000793          	li	a5,0
    80004630:	ef9ff06f          	j	80004528 <__memset+0xf0>
    80004634:	00200e93          	li	t4,2
    80004638:	e85ff06f          	j	800044bc <__memset+0x84>
    8000463c:	00400e93          	li	t4,4
    80004640:	e7dff06f          	j	800044bc <__memset+0x84>
    80004644:	00500e93          	li	t4,5
    80004648:	e75ff06f          	j	800044bc <__memset+0x84>
    8000464c:	00600e93          	li	t4,6
    80004650:	e6dff06f          	j	800044bc <__memset+0x84>

0000000080004654 <__memmove>:
    80004654:	ff010113          	addi	sp,sp,-16
    80004658:	00813423          	sd	s0,8(sp)
    8000465c:	01010413          	addi	s0,sp,16
    80004660:	0e060863          	beqz	a2,80004750 <__memmove+0xfc>
    80004664:	fff6069b          	addiw	a3,a2,-1
    80004668:	0006881b          	sext.w	a6,a3
    8000466c:	0ea5e863          	bltu	a1,a0,8000475c <__memmove+0x108>
    80004670:	00758713          	addi	a4,a1,7
    80004674:	00a5e7b3          	or	a5,a1,a0
    80004678:	40a70733          	sub	a4,a4,a0
    8000467c:	0077f793          	andi	a5,a5,7
    80004680:	00f73713          	sltiu	a4,a4,15
    80004684:	00174713          	xori	a4,a4,1
    80004688:	0017b793          	seqz	a5,a5
    8000468c:	00e7f7b3          	and	a5,a5,a4
    80004690:	10078863          	beqz	a5,800047a0 <__memmove+0x14c>
    80004694:	00900793          	li	a5,9
    80004698:	1107f463          	bgeu	a5,a6,800047a0 <__memmove+0x14c>
    8000469c:	0036581b          	srliw	a6,a2,0x3
    800046a0:	fff8081b          	addiw	a6,a6,-1
    800046a4:	02081813          	slli	a6,a6,0x20
    800046a8:	01d85893          	srli	a7,a6,0x1d
    800046ac:	00858813          	addi	a6,a1,8
    800046b0:	00058793          	mv	a5,a1
    800046b4:	00050713          	mv	a4,a0
    800046b8:	01088833          	add	a6,a7,a6
    800046bc:	0007b883          	ld	a7,0(a5)
    800046c0:	00878793          	addi	a5,a5,8
    800046c4:	00870713          	addi	a4,a4,8
    800046c8:	ff173c23          	sd	a7,-8(a4)
    800046cc:	ff0798e3          	bne	a5,a6,800046bc <__memmove+0x68>
    800046d0:	ff867713          	andi	a4,a2,-8
    800046d4:	02071793          	slli	a5,a4,0x20
    800046d8:	0207d793          	srli	a5,a5,0x20
    800046dc:	00f585b3          	add	a1,a1,a5
    800046e0:	40e686bb          	subw	a3,a3,a4
    800046e4:	00f507b3          	add	a5,a0,a5
    800046e8:	06e60463          	beq	a2,a4,80004750 <__memmove+0xfc>
    800046ec:	0005c703          	lbu	a4,0(a1)
    800046f0:	00e78023          	sb	a4,0(a5)
    800046f4:	04068e63          	beqz	a3,80004750 <__memmove+0xfc>
    800046f8:	0015c603          	lbu	a2,1(a1)
    800046fc:	00100713          	li	a4,1
    80004700:	00c780a3          	sb	a2,1(a5)
    80004704:	04e68663          	beq	a3,a4,80004750 <__memmove+0xfc>
    80004708:	0025c603          	lbu	a2,2(a1)
    8000470c:	00200713          	li	a4,2
    80004710:	00c78123          	sb	a2,2(a5)
    80004714:	02e68e63          	beq	a3,a4,80004750 <__memmove+0xfc>
    80004718:	0035c603          	lbu	a2,3(a1)
    8000471c:	00300713          	li	a4,3
    80004720:	00c781a3          	sb	a2,3(a5)
    80004724:	02e68663          	beq	a3,a4,80004750 <__memmove+0xfc>
    80004728:	0045c603          	lbu	a2,4(a1)
    8000472c:	00400713          	li	a4,4
    80004730:	00c78223          	sb	a2,4(a5)
    80004734:	00e68e63          	beq	a3,a4,80004750 <__memmove+0xfc>
    80004738:	0055c603          	lbu	a2,5(a1)
    8000473c:	00500713          	li	a4,5
    80004740:	00c782a3          	sb	a2,5(a5)
    80004744:	00e68663          	beq	a3,a4,80004750 <__memmove+0xfc>
    80004748:	0065c703          	lbu	a4,6(a1)
    8000474c:	00e78323          	sb	a4,6(a5)
    80004750:	00813403          	ld	s0,8(sp)
    80004754:	01010113          	addi	sp,sp,16
    80004758:	00008067          	ret
    8000475c:	02061713          	slli	a4,a2,0x20
    80004760:	02075713          	srli	a4,a4,0x20
    80004764:	00e587b3          	add	a5,a1,a4
    80004768:	f0f574e3          	bgeu	a0,a5,80004670 <__memmove+0x1c>
    8000476c:	02069613          	slli	a2,a3,0x20
    80004770:	02065613          	srli	a2,a2,0x20
    80004774:	fff64613          	not	a2,a2
    80004778:	00e50733          	add	a4,a0,a4
    8000477c:	00c78633          	add	a2,a5,a2
    80004780:	fff7c683          	lbu	a3,-1(a5)
    80004784:	fff78793          	addi	a5,a5,-1
    80004788:	fff70713          	addi	a4,a4,-1
    8000478c:	00d70023          	sb	a3,0(a4)
    80004790:	fec798e3          	bne	a5,a2,80004780 <__memmove+0x12c>
    80004794:	00813403          	ld	s0,8(sp)
    80004798:	01010113          	addi	sp,sp,16
    8000479c:	00008067          	ret
    800047a0:	02069713          	slli	a4,a3,0x20
    800047a4:	02075713          	srli	a4,a4,0x20
    800047a8:	00170713          	addi	a4,a4,1
    800047ac:	00e50733          	add	a4,a0,a4
    800047b0:	00050793          	mv	a5,a0
    800047b4:	0005c683          	lbu	a3,0(a1)
    800047b8:	00178793          	addi	a5,a5,1
    800047bc:	00158593          	addi	a1,a1,1
    800047c0:	fed78fa3          	sb	a3,-1(a5)
    800047c4:	fee798e3          	bne	a5,a4,800047b4 <__memmove+0x160>
    800047c8:	f89ff06f          	j	80004750 <__memmove+0xfc>

00000000800047cc <__putc>:
    800047cc:	fe010113          	addi	sp,sp,-32
    800047d0:	00813823          	sd	s0,16(sp)
    800047d4:	00113c23          	sd	ra,24(sp)
    800047d8:	02010413          	addi	s0,sp,32
    800047dc:	00050793          	mv	a5,a0
    800047e0:	fef40593          	addi	a1,s0,-17
    800047e4:	00100613          	li	a2,1
    800047e8:	00000513          	li	a0,0
    800047ec:	fef407a3          	sb	a5,-17(s0)
    800047f0:	fffff097          	auipc	ra,0xfffff
    800047f4:	b3c080e7          	jalr	-1220(ra) # 8000332c <console_write>
    800047f8:	01813083          	ld	ra,24(sp)
    800047fc:	01013403          	ld	s0,16(sp)
    80004800:	02010113          	addi	sp,sp,32
    80004804:	00008067          	ret

0000000080004808 <__getc>:
    80004808:	fe010113          	addi	sp,sp,-32
    8000480c:	00813823          	sd	s0,16(sp)
    80004810:	00113c23          	sd	ra,24(sp)
    80004814:	02010413          	addi	s0,sp,32
    80004818:	fe840593          	addi	a1,s0,-24
    8000481c:	00100613          	li	a2,1
    80004820:	00000513          	li	a0,0
    80004824:	fffff097          	auipc	ra,0xfffff
    80004828:	ae8080e7          	jalr	-1304(ra) # 8000330c <console_read>
    8000482c:	fe844503          	lbu	a0,-24(s0)
    80004830:	01813083          	ld	ra,24(sp)
    80004834:	01013403          	ld	s0,16(sp)
    80004838:	02010113          	addi	sp,sp,32
    8000483c:	00008067          	ret

0000000080004840 <console_handler>:
    80004840:	fe010113          	addi	sp,sp,-32
    80004844:	00813823          	sd	s0,16(sp)
    80004848:	00113c23          	sd	ra,24(sp)
    8000484c:	00913423          	sd	s1,8(sp)
    80004850:	02010413          	addi	s0,sp,32
    80004854:	14202773          	csrr	a4,scause
    80004858:	100027f3          	csrr	a5,sstatus
    8000485c:	0027f793          	andi	a5,a5,2
    80004860:	06079e63          	bnez	a5,800048dc <console_handler+0x9c>
    80004864:	00074c63          	bltz	a4,8000487c <console_handler+0x3c>
    80004868:	01813083          	ld	ra,24(sp)
    8000486c:	01013403          	ld	s0,16(sp)
    80004870:	00813483          	ld	s1,8(sp)
    80004874:	02010113          	addi	sp,sp,32
    80004878:	00008067          	ret
    8000487c:	0ff77713          	andi	a4,a4,255
    80004880:	00900793          	li	a5,9
    80004884:	fef712e3          	bne	a4,a5,80004868 <console_handler+0x28>
    80004888:	ffffe097          	auipc	ra,0xffffe
    8000488c:	6dc080e7          	jalr	1756(ra) # 80002f64 <plic_claim>
    80004890:	00a00793          	li	a5,10
    80004894:	00050493          	mv	s1,a0
    80004898:	02f50c63          	beq	a0,a5,800048d0 <console_handler+0x90>
    8000489c:	fc0506e3          	beqz	a0,80004868 <console_handler+0x28>
    800048a0:	00050593          	mv	a1,a0
    800048a4:	00001517          	auipc	a0,0x1
    800048a8:	8fc50513          	addi	a0,a0,-1796 # 800051a0 <_ZZ12printIntegermE6digits+0xe0>
    800048ac:	fffff097          	auipc	ra,0xfffff
    800048b0:	afc080e7          	jalr	-1284(ra) # 800033a8 <__printf>
    800048b4:	01013403          	ld	s0,16(sp)
    800048b8:	01813083          	ld	ra,24(sp)
    800048bc:	00048513          	mv	a0,s1
    800048c0:	00813483          	ld	s1,8(sp)
    800048c4:	02010113          	addi	sp,sp,32
    800048c8:	ffffe317          	auipc	t1,0xffffe
    800048cc:	6d430067          	jr	1748(t1) # 80002f9c <plic_complete>
    800048d0:	fffff097          	auipc	ra,0xfffff
    800048d4:	3e0080e7          	jalr	992(ra) # 80003cb0 <uartintr>
    800048d8:	fddff06f          	j	800048b4 <console_handler+0x74>
    800048dc:	00001517          	auipc	a0,0x1
    800048e0:	9c450513          	addi	a0,a0,-1596 # 800052a0 <digits+0x78>
    800048e4:	fffff097          	auipc	ra,0xfffff
    800048e8:	a68080e7          	jalr	-1432(ra) # 8000334c <panic>
	...
