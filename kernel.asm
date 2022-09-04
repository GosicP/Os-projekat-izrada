
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	84813103          	ld	sp,-1976(sp) # 80005848 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	054020ef          	jal	ra,80002070 <start>

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
    80001370:	9e4080e7          	jalr	-1564(ra) # 80001d50 <_ZN3TCB5yieldEv>
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
    800013a4:	bb4080e7          	jalr	-1100(ra) # 80001f54 <_Z11printStringPKc>
        printInteger(i);
    800013a8:	00048513          	mv	a0,s1
    800013ac:	00001097          	auipc	ra,0x1
    800013b0:	c10080e7          	jalr	-1008(ra) # 80001fbc <_Z12printIntegerm>
        printString("\n");
    800013b4:	00004517          	auipc	a0,0x4
    800013b8:	d0450513          	addi	a0,a0,-764 # 800050b8 <CONSOLE_STATUS+0xa8>
    800013bc:	00001097          	auipc	ra,0x1
    800013c0:	b98080e7          	jalr	-1128(ra) # 80001f54 <_Z11printStringPKc>
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
    800013e0:	b78080e7          	jalr	-1160(ra) # 80001f54 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800013e4:	00700313          	li	t1,7
    TCB::yield();
    800013e8:	00001097          	auipc	ra,0x1
    800013ec:	968080e7          	jalr	-1688(ra) # 80001d50 <_ZN3TCB5yieldEv>

    uint64 t1=0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800013f0:	00030913          	mv	s2,t1

    printString("C: t1=");
    800013f4:	00004517          	auipc	a0,0x4
    800013f8:	c4450513          	addi	a0,a0,-956 # 80005038 <CONSOLE_STATUS+0x28>
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	b58080e7          	jalr	-1192(ra) # 80001f54 <_Z11printStringPKc>
    printInteger(t1);
    80001404:	00090513          	mv	a0,s2
    80001408:	00001097          	auipc	ra,0x1
    8000140c:	bb4080e7          	jalr	-1100(ra) # 80001fbc <_Z12printIntegerm>
    printString("\n");
    80001410:	00004517          	auipc	a0,0x4
    80001414:	ca850513          	addi	a0,a0,-856 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001418:	00001097          	auipc	ra,0x1
    8000141c:	b3c080e7          	jalr	-1220(ra) # 80001f54 <_Z11printStringPKc>

    uint64 result = fibonacci (20);
    80001420:	01400513          	li	a0,20
    80001424:	00000097          	auipc	ra,0x0
    80001428:	ee4080e7          	jalr	-284(ra) # 80001308 <_ZL9fibonaccim>
    8000142c:	00050913          	mv	s2,a0
    printString("C: fibonacci=");
    80001430:	00004517          	auipc	a0,0x4
    80001434:	c1050513          	addi	a0,a0,-1008 # 80005040 <CONSOLE_STATUS+0x30>
    80001438:	00001097          	auipc	ra,0x1
    8000143c:	b1c080e7          	jalr	-1252(ra) # 80001f54 <_Z11printStringPKc>
    printInteger(result);
    80001440:	00090513          	mv	a0,s2
    80001444:	00001097          	auipc	ra,0x1
    80001448:	b78080e7          	jalr	-1160(ra) # 80001fbc <_Z12printIntegerm>
    printString("\n");
    8000144c:	00004517          	auipc	a0,0x4
    80001450:	c6c50513          	addi	a0,a0,-916 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001454:	00001097          	auipc	ra,0x1
    80001458:	b00080e7          	jalr	-1280(ra) # 80001f54 <_Z11printStringPKc>
    8000145c:	0380006f          	j	80001494 <_Z11workerBodyAPv+0x11c>

    for(; i<6; i++){
        printString("C: i=");
    80001460:	00004517          	auipc	a0,0x4
    80001464:	bc050513          	addi	a0,a0,-1088 # 80005020 <CONSOLE_STATUS+0x10>
    80001468:	00001097          	auipc	ra,0x1
    8000146c:	aec080e7          	jalr	-1300(ra) # 80001f54 <_Z11printStringPKc>
        printInteger(i);
    80001470:	00048513          	mv	a0,s1
    80001474:	00001097          	auipc	ra,0x1
    80001478:	b48080e7          	jalr	-1208(ra) # 80001fbc <_Z12printIntegerm>
        printString("\n");
    8000147c:	00004517          	auipc	a0,0x4
    80001480:	c3c50513          	addi	a0,a0,-964 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001484:	00001097          	auipc	ra,0x1
    80001488:	ad0080e7          	jalr	-1328(ra) # 80001f54 <_Z11printStringPKc>
    for(; i<6; i++){
    8000148c:	0014849b          	addiw	s1,s1,1
    80001490:	0ff4f493          	andi	s1,s1,255
    80001494:	00500793          	li	a5,5
    80001498:	fc97f4e3          	bgeu	a5,s1,80001460 <_Z11workerBodyAPv+0xe8>
    }

    TCB::running->setFinished(true);
    8000149c:	00100593          	li	a1,1
    800014a0:	00004797          	auipc	a5,0x4
    800014a4:	3d07b783          	ld	a5,976(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x38>
    800014a8:	0007b503          	ld	a0,0(a5)
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	794080e7          	jalr	1940(ra) # 80001c40 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	89c080e7          	jalr	-1892(ra) # 80001d50 <_ZN3TCB5yieldEv>
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
    80001500:	a58080e7          	jalr	-1448(ra) # 80001f54 <_Z11printStringPKc>
        printInteger(i);
    80001504:	00048513          	mv	a0,s1
    80001508:	00001097          	auipc	ra,0x1
    8000150c:	ab4080e7          	jalr	-1356(ra) # 80001fbc <_Z12printIntegerm>
        printString("\n");
    80001510:	00004517          	auipc	a0,0x4
    80001514:	ba850513          	addi	a0,a0,-1112 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	a3c080e7          	jalr	-1476(ra) # 80001f54 <_Z11printStringPKc>
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
    8000153c:	a1c080e7          	jalr	-1508(ra) # 80001f54 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001540:	00500313          	li	t1,5
    TCB::yield();
    80001544:	00001097          	auipc	ra,0x1
    80001548:	80c080e7          	jalr	-2036(ra) # 80001d50 <_ZN3TCB5yieldEv>

    uint64 result=fibonacci(23);
    8000154c:	01700513          	li	a0,23
    80001550:	00000097          	auipc	ra,0x0
    80001554:	db8080e7          	jalr	-584(ra) # 80001308 <_ZL9fibonaccim>
    80001558:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    8000155c:	00004517          	auipc	a0,0x4
    80001560:	b0c50513          	addi	a0,a0,-1268 # 80005068 <CONSOLE_STATUS+0x58>
    80001564:	00001097          	auipc	ra,0x1
    80001568:	9f0080e7          	jalr	-1552(ra) # 80001f54 <_Z11printStringPKc>
    printInteger(result);
    8000156c:	00090513          	mv	a0,s2
    80001570:	00001097          	auipc	ra,0x1
    80001574:	a4c080e7          	jalr	-1460(ra) # 80001fbc <_Z12printIntegerm>
    printString("\n");
    80001578:	00004517          	auipc	a0,0x4
    8000157c:	b4050513          	addi	a0,a0,-1216 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001580:	00001097          	auipc	ra,0x1
    80001584:	9d4080e7          	jalr	-1580(ra) # 80001f54 <_Z11printStringPKc>
    80001588:	0380006f          	j	800015c0 <_Z11workerBodyBPv+0xec>

    for(; i<16; i++){
        printString("B: i=");
    8000158c:	00004517          	auipc	a0,0x4
    80001590:	aec50513          	addi	a0,a0,-1300 # 80005078 <CONSOLE_STATUS+0x68>
    80001594:	00001097          	auipc	ra,0x1
    80001598:	9c0080e7          	jalr	-1600(ra) # 80001f54 <_Z11printStringPKc>
        printInteger(i);
    8000159c:	00048513          	mv	a0,s1
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	a1c080e7          	jalr	-1508(ra) # 80001fbc <_Z12printIntegerm>
        printString("\n");
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	b1050513          	addi	a0,a0,-1264 # 800050b8 <CONSOLE_STATUS+0xa8>
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	9a4080e7          	jalr	-1628(ra) # 80001f54 <_Z11printStringPKc>
    for(; i<16; i++){
    800015b8:	0014849b          	addiw	s1,s1,1
    800015bc:	0ff4f493          	andi	s1,s1,255
    800015c0:	00f00793          	li	a5,15
    800015c4:	fc97f4e3          	bgeu	a5,s1,8000158c <_Z11workerBodyBPv+0xb8>
    }

    TCB::running->setFinished(true);
    800015c8:	00100593          	li	a1,1
    800015cc:	00004797          	auipc	a5,0x4
    800015d0:	2a47b783          	ld	a5,676(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x38>
    800015d4:	0007b503          	ld	a0,0(a5)
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	668080e7          	jalr	1640(ra) # 80001c40 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	770080e7          	jalr	1904(ra) # 80001d50 <_ZN3TCB5yieldEv>
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
    thread_t* handle;
    TCB::Body start_routine;
    void* arg;
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
    80001684:	b20080e7          	jalr	-1248(ra) # 800041a0 <console_handler>
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
    800016ec:	17873703          	ld	a4,376(a4) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
    800016f0:	00073703          	ld	a4,0(a4)
    800016f4:	0c070863          	beqz	a4,800017c4 <_ZN5RiscV20handleSupervisorTrapEv+0x1a4>
            cur->next=fmem_head->next;
    800016f8:	00004697          	auipc	a3,0x4
    800016fc:	1686b683          	ld	a3,360(a3) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001754:	1107b783          	ld	a5,272(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800017a8:	0bc5b583          	ld	a1,188(a1) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800017d8:	08c5b583          	ld	a1,140(a1) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017dc:	00c5b023          	sd	a2,0(a1)
    800017e0:	f99ff06f          	j	80001778 <_ZN5RiscV20handleSupervisorTrapEv+0x158>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    800017e4:	00058713          	mv	a4,a1
        if(!fmem_head || ptr < (char*)fmem_head)
    800017e8:	00004797          	auipc	a5,0x4
    800017ec:	0787b783          	ld	a5,120(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001894:	fd07b783          	ld	a5,-48(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001898:	0007b783          	ld	a5,0(a5)
    8000189c:	00f73023          	sd	a5,0(a4)
    800018a0:	f99ff06f          	j	80001838 <_ZN5RiscV20handleSupervisorTrapEv+0x218>
                    fmem_head = newSeg;
    800018a4:	00004797          	auipc	a5,0x4
    800018a8:	fbc7b783          	ld	a5,-68(a5) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
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
            int ret_val=TCB::createThread(start_routine, handle, arg);
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	354080e7          	jalr	852(ra) # 80001c5c <_ZN3TCB12createThreadEPFvPvEPPS_S0_>
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
    80001924:	f507b783          	ld	a5,-176(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001928:	0007b503          	ld	a0,0(a5)
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	314080e7          	jalr	788(ra) # 80001c40 <_ZN3TCB11setFinishedEb>
        dispatch();
    80001934:	00000097          	auipc	ra,0x0
    80001938:	498080e7          	jalr	1176(ra) # 80001dcc <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    8000193c:	00000793          	li	a5,0
    80001940:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    80001944:	04b43c23          	sd	a1,88(s0)
    80001948:	d6dff06f          	j	800016b4 <_ZN5RiscV20handleSupervisorTrapEv+0x94>
    static void thread_dispatch(){dispatch();}
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	480080e7          	jalr	1152(ra) # 80001dcc <_ZN3TCB8dispatchEv>
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
    80001994:	f5078793          	addi	a5,a5,-176 # 800058e0 <_ZN9Scheduler19readyCoroutineQueueE>
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
    800019bc:	f2853503          	ld	a0,-216(a0) # 800058e0 <_ZN9Scheduler19readyCoroutineQueueE>
    800019c0:	04050263          	beqz	a0,80001a04 <_ZN9Scheduler3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    800019c4:	00853783          	ld	a5,8(a0)
    800019c8:	00004717          	auipc	a4,0x4
    800019cc:	f0f73c23          	sd	a5,-232(a4) # 800058e0 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    800019d0:	02078463          	beqz	a5,800019f8 <_ZN9Scheduler3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    800019d4:	00053483          	ld	s1,0(a0)
        delete elem;
    800019d8:	00000097          	auipc	ra,0x0
    800019dc:	4b4080e7          	jalr	1204(ra) # 80001e8c <_ZdlPv>
}
    800019e0:	00048513          	mv	a0,s1
    800019e4:	01813083          	ld	ra,24(sp)
    800019e8:	01013403          	ld	s0,16(sp)
    800019ec:	00813483          	ld	s1,8(sp)
    800019f0:	02010113          	addi	sp,sp,32
    800019f4:	00008067          	ret
            tail = 0;
    800019f8:	00004797          	auipc	a5,0x4
    800019fc:	ee07b823          	sd	zero,-272(a5) # 800058e8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
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
    80001a2c:	414080e7          	jalr	1044(ra) # 80001e3c <_Znwm>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    80001a30:	00953023          	sd	s1,0(a0)
    80001a34:	00053423          	sd	zero,8(a0)
        if (tail){
    80001a38:	00004797          	auipc	a5,0x4
    80001a3c:	eb07b783          	ld	a5,-336(a5) # 800058e8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a40:	02078263          	beqz	a5,80001a64 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next=elem;
    80001a44:	00a7b423          	sd	a0,8(a5)
            tail=elem;
    80001a48:	00004797          	auipc	a5,0x4
    80001a4c:	eaa7b023          	sd	a0,-352(a5) # 800058e8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a50:	01813083          	ld	ra,24(sp)
    80001a54:	01013403          	ld	s0,16(sp)
    80001a58:	00813483          	ld	s1,8(sp)
    80001a5c:	02010113          	addi	sp,sp,32
    80001a60:	00008067          	ret
            head=tail=elem;
    80001a64:	00004797          	auipc	a5,0x4
    80001a68:	e7c78793          	addi	a5,a5,-388 # 800058e0 <_ZN9Scheduler19readyCoroutineQueueE>
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
    80001ac8:	d947b783          	ld	a5,-620(a5) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001acc:	0007b783          	ld	a5,0(a5)
    80001ad0:	08078463          	beqz	a5,80001b58 <main+0xac>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    80001ad4:	00004797          	auipc	a5,0x4
    80001ad8:	d7c7b783          	ld	a5,-644(a5) # 80005850 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001afc:	d787b783          	ld	a5,-648(a5) # 80005870 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001b00:	00e7b023          	sd	a4,0(a5)

    thread_create(&threads[1], workerBodyA, nullptr); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    80001b04:	00000613          	li	a2,0
    80001b08:	00004597          	auipc	a1,0x4
    80001b0c:	d605b583          	ld	a1,-672(a1) # 80005868 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b10:	fd040513          	addi	a0,s0,-48
    80001b14:	fffff097          	auipc	ra,0xfffff
    80001b18:	76c080e7          	jalr	1900(ra) # 80001280 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Thread A created\n");
    80001b1c:	00003517          	auipc	a0,0x3
    80001b20:	56450513          	addi	a0,a0,1380 # 80005080 <CONSOLE_STATUS+0x70>
    80001b24:	00000097          	auipc	ra,0x0
    80001b28:	430080e7          	jalr	1072(ra) # 80001f54 <_Z11printStringPKc>

    thread_create( &threads[2],workerBodyB, nullptr); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    80001b2c:	00000613          	li	a2,0
    80001b30:	00004597          	auipc	a1,0x4
    80001b34:	d505b583          	ld	a1,-688(a1) # 80005880 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001b38:	fd840513          	addi	a0,s0,-40
    80001b3c:	fffff097          	auipc	ra,0xfffff
    80001b40:	744080e7          	jalr	1860(ra) # 80001280 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("Thread B created\n");
    80001b44:	00003517          	auipc	a0,0x3
    80001b48:	55450513          	addi	a0,a0,1364 # 80005098 <CONSOLE_STATUS+0x88>
    80001b4c:	00000097          	auipc	ra,0x0
    80001b50:	408080e7          	jalr	1032(ra) # 80001f54 <_Z11printStringPKc>
    80001b54:	0480006f          	j	80001b9c <main+0xf0>
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80001b58:	00004797          	auipc	a5,0x4
    80001b5c:	ce87b783          	ld	a5,-792(a5) # 80005840 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001b60:	0007b783          	ld	a5,0(a5)
    80001b64:	00004697          	auipc	a3,0x4
    80001b68:	cfc6b683          	ld	a3,-772(a3) # 80005860 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b6c:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80001b70:	00004717          	auipc	a4,0x4
    80001b74:	d0873703          	ld	a4,-760(a4) # 80005878 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    80001b98:	1bc080e7          	jalr	444(ra) # 80001d50 <_ZN3TCB5yieldEv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
    80001b9c:	fd043503          	ld	a0,-48(s0)
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	084080e7          	jalr	132(ra) # 80001c24 <_ZNK3TCB10isFinishedEv>
    80001ba8:	fe0506e3          	beqz	a0,80001b94 <main+0xe8>
    80001bac:	fd843503          	ld	a0,-40(s0)
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	074080e7          	jalr	116(ra) # 80001c24 <_ZNK3TCB10isFinishedEv>
    80001bb8:	fc050ee3          	beqz	a0,80001b94 <main+0xe8>
    80001bbc:	fc840493          	addi	s1,s0,-56
    80001bc0:	0140006f          	j	80001bd4 <main+0x128>
    }


    for (auto &coroutine : threads){
        delete coroutine;
    80001bc4:	00090513          	mv	a0,s2
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	2c4080e7          	jalr	708(ra) # 80001e8c <_ZdlPv>
    for (auto &coroutine : threads){
    80001bd0:	00848493          	addi	s1,s1,8
    80001bd4:	fe040793          	addi	a5,s0,-32
    80001bd8:	02f48063          	beq	s1,a5,80001bf8 <main+0x14c>
        delete coroutine;
    80001bdc:	0004b903          	ld	s2,0(s1)
    80001be0:	fe0908e3          	beqz	s2,80001bd0 <main+0x124>
    ~TCB() { delete[] stack; }
    80001be4:	00893503          	ld	a0,8(s2)
    80001be8:	fc050ee3          	beqz	a0,80001bc4 <main+0x118>
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	2c8080e7          	jalr	712(ra) # 80001eb4 <_ZdaPv>
    80001bf4:	fd1ff06f          	j	80001bc4 <main+0x118>
    }

    printString("finished\n");
    80001bf8:	00003517          	auipc	a0,0x3
    80001bfc:	4b850513          	addi	a0,a0,1208 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	354080e7          	jalr	852(ra) # 80001f54 <_Z11printStringPKc>

    return 0;
    80001c08:	00000513          	li	a0,0
    80001c0c:	03813083          	ld	ra,56(sp)
    80001c10:	03013403          	ld	s0,48(sp)
    80001c14:	02813483          	ld	s1,40(sp)
    80001c18:	02013903          	ld	s2,32(sp)
    80001c1c:	04010113          	addi	sp,sp,64
    80001c20:	00008067          	ret

0000000080001c24 <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    80001c24:	ff010113          	addi	sp,sp,-16
    80001c28:	00813423          	sd	s0,8(sp)
    80001c2c:	01010413          	addi	s0,sp,16
    return finished;
}
    80001c30:	02854503          	lbu	a0,40(a0)
    80001c34:	00813403          	ld	s0,8(sp)
    80001c38:	01010113          	addi	sp,sp,16
    80001c3c:	00008067          	ret

0000000080001c40 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80001c40:	ff010113          	addi	sp,sp,-16
    80001c44:	00813423          	sd	s0,8(sp)
    80001c48:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    80001c4c:	02b50423          	sb	a1,40(a0)
}
    80001c50:	00813403          	ld	s0,8(sp)
    80001c54:	01010113          	addi	sp,sp,16
    80001c58:	00008067          	ret

0000000080001c5c <_ZN3TCB12createThreadEPFvPvEPPS_S0_>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments) {
    80001c5c:	fd010113          	addi	sp,sp,-48
    80001c60:	02113423          	sd	ra,40(sp)
    80001c64:	02813023          	sd	s0,32(sp)
    80001c68:	00913c23          	sd	s1,24(sp)
    80001c6c:	01213823          	sd	s2,16(sp)
    80001c70:	01313423          	sd	s3,8(sp)
    80001c74:	01413023          	sd	s4,0(sp)
    80001c78:	03010413          	addi	s0,sp,48
    80001c7c:	00050993          	mv	s3,a0
    80001c80:	00058a13          	mv	s4,a1
    80001c84:	00060913          	mv	s2,a2
    *handle = new TCB(body, TIME_SLICE, arguments);
    80001c88:	03800513          	li	a0,56
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	1b0080e7          	jalr	432(ra) # 80001e3c <_Znwm>
    80001c94:	00050493          	mv	s1,a0
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[1024] : 0
                    }
            ),
            timeSlice(timeSlice),
            finished(false), arguments(arguments) {
    80001c98:	01353023          	sd	s3,0(a0)
            stack(body != nullptr ? new uint64[1024] : nullptr),
    80001c9c:	00098a63          	beqz	s3,80001cb0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x54>
    80001ca0:	00002537          	lui	a0,0x2
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	1c0080e7          	jalr	448(ra) # 80001e64 <_Znam>
    80001cac:	0080006f          	j	80001cb4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x58>
    80001cb0:	00000513          	li	a0,0
            finished(false), arguments(arguments) {
    80001cb4:	00a4b423          	sd	a0,8(s1)
    80001cb8:	00000797          	auipc	a5,0x0
    80001cbc:	0b478793          	addi	a5,a5,180 # 80001d6c <_ZN3TCB13threadWrapperEv>
    80001cc0:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[1024] : 0
    80001cc4:	02050a63          	beqz	a0,80001cf8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x9c>
    80001cc8:	000027b7          	lui	a5,0x2
    80001ccc:	00f507b3          	add	a5,a0,a5
            finished(false), arguments(arguments) {
    80001cd0:	00f4bc23          	sd	a5,24(s1)
    80001cd4:	00200793          	li	a5,2
    80001cd8:	02f4b023          	sd	a5,32(s1)
    80001cdc:	02048423          	sb	zero,40(s1)
    80001ce0:	0324b823          	sd	s2,48(s1)
        if (body != nullptr) { Scheduler::put(this); }
    80001ce4:	00098e63          	beqz	s3,80001d00 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xa4>
    80001ce8:	00048513          	mv	a0,s1
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	d20080e7          	jalr	-736(ra) # 80001a0c <_ZN9Scheduler3putEP3TCB>
    80001cf4:	00c0006f          	j	80001d00 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xa4>
                     stack != nullptr ? (uint64) &stack[1024] : 0
    80001cf8:	00000793          	li	a5,0
    80001cfc:	fd5ff06f          	j	80001cd0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x74>
    80001d00:	009a3023          	sd	s1,0(s4)
    if(*handle==nullptr){
    80001d04:	02048463          	beqz	s1,80001d2c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xd0>
        return -1;
    }else{return 0;}
    80001d08:	00000513          	li	a0,0
}
    80001d0c:	02813083          	ld	ra,40(sp)
    80001d10:	02013403          	ld	s0,32(sp)
    80001d14:	01813483          	ld	s1,24(sp)
    80001d18:	01013903          	ld	s2,16(sp)
    80001d1c:	00813983          	ld	s3,8(sp)
    80001d20:	00013a03          	ld	s4,0(sp)
    80001d24:	03010113          	addi	sp,sp,48
    80001d28:	00008067          	ret
        return -1;
    80001d2c:	fff00513          	li	a0,-1
    80001d30:	fddff06f          	j	80001d0c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xb0>
    80001d34:	00050913          	mv	s2,a0
    *handle = new TCB(body, TIME_SLICE, arguments);
    80001d38:	00048513          	mv	a0,s1
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	150080e7          	jalr	336(ra) # 80001e8c <_ZdlPv>
    80001d44:	00090513          	mv	a0,s2
    80001d48:	00005097          	auipc	ra,0x5
    80001d4c:	c90080e7          	jalr	-880(ra) # 800069d8 <_Unwind_Resume>

0000000080001d50 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00813423          	sd	s0,8(sp)
    80001d58:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80001d5c:	00000073          	ecall

};
    80001d60:	00813403          	ld	s0,8(sp)
    80001d64:	01010113          	addi	sp,sp,16
    80001d68:	00008067          	ret

0000000080001d6c <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001d6c:	fe010113          	addi	sp,sp,-32
    80001d70:	00113c23          	sd	ra,24(sp)
    80001d74:	00813823          	sd	s0,16(sp)
    80001d78:	00913423          	sd	s1,8(sp)
    80001d7c:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	880080e7          	jalr	-1920(ra) # 80001600 <_ZN5RiscV10popSppSpieEv>
    running->body(running->arguments);
    80001d88:	00004497          	auipc	s1,0x4
    80001d8c:	b6848493          	addi	s1,s1,-1176 # 800058f0 <_ZN3TCB7runningE>
    80001d90:	0004b783          	ld	a5,0(s1)
    80001d94:	0007b703          	ld	a4,0(a5) # 2000 <_entry-0x7fffe000>
    80001d98:	0307b503          	ld	a0,48(a5)
    80001d9c:	000700e7          	jalr	a4
    running->setFinished(true);
    80001da0:	00100593          	li	a1,1
    80001da4:	0004b503          	ld	a0,0(s1)
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	e98080e7          	jalr	-360(ra) # 80001c40 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	fa0080e7          	jalr	-96(ra) # 80001d50 <_ZN3TCB5yieldEv>
}
    80001db8:	01813083          	ld	ra,24(sp)
    80001dbc:	01013403          	ld	s0,16(sp)
    80001dc0:	00813483          	ld	s1,8(sp)
    80001dc4:	02010113          	addi	sp,sp,32
    80001dc8:	00008067          	ret

0000000080001dcc <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001dcc:	fe010113          	addi	sp,sp,-32
    80001dd0:	00113c23          	sd	ra,24(sp)
    80001dd4:	00813823          	sd	s0,16(sp)
    80001dd8:	00913423          	sd	s1,8(sp)
    80001ddc:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001de0:	00004497          	auipc	s1,0x4
    80001de4:	b104b483          	ld	s1,-1264(s1) # 800058f0 <_ZN3TCB7runningE>
    if (!old->isFinished()) {
    80001de8:	00048513          	mv	a0,s1
    80001dec:	00000097          	auipc	ra,0x0
    80001df0:	e38080e7          	jalr	-456(ra) # 80001c24 <_ZNK3TCB10isFinishedEv>
    80001df4:	02050c63          	beqz	a0,80001e2c <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	bac080e7          	jalr	-1108(ra) # 800019a4 <_ZN9Scheduler3getEv>
    80001e00:	00004797          	auipc	a5,0x4
    80001e04:	aea7b823          	sd	a0,-1296(a5) # 800058f0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001e08:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001e0c:	01048513          	addi	a0,s1,16
    80001e10:	fffff097          	auipc	ra,0xfffff
    80001e14:	400080e7          	jalr	1024(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001e18:	01813083          	ld	ra,24(sp)
    80001e1c:	01013403          	ld	s0,16(sp)
    80001e20:	00813483          	ld	s1,8(sp)
    80001e24:	02010113          	addi	sp,sp,32
    80001e28:	00008067          	ret
        Scheduler::put(old);
    80001e2c:	00048513          	mv	a0,s1
    80001e30:	00000097          	auipc	ra,0x0
    80001e34:	bdc080e7          	jalr	-1060(ra) # 80001a0c <_ZN9Scheduler3putEP3TCB>
    80001e38:	fc1ff06f          	j	80001df8 <_ZN3TCB8dispatchEv+0x2c>

0000000080001e3c <_Znwm>:
#include "../h/MemoryAllocation.hpp"
#include "../h/syscall_c.hpp"

//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00113423          	sd	ra,8(sp)
    80001e44:	00813023          	sd	s0,0(sp)
    80001e48:	01010413          	addi	s0,sp,16
    return mem_alloc(n); //njemu je samo __mem_alloc???
    80001e4c:	fffff097          	auipc	ra,0xfffff
    80001e50:	3d8080e7          	jalr	984(ra) # 80001224 <_Z9mem_allocm>
    //return __mem_alloc(n);
}
    80001e54:	00813083          	ld	ra,8(sp)
    80001e58:	00013403          	ld	s0,0(sp)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret

0000000080001e64 <_Znam>:

void *operator new[](uint64 n){
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00113423          	sd	ra,8(sp)
    80001e6c:	00813023          	sd	s0,0(sp)
    80001e70:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001e74:	fffff097          	auipc	ra,0xfffff
    80001e78:	3b0080e7          	jalr	944(ra) # 80001224 <_Z9mem_allocm>
    //return __mem_alloc(n);
}
    80001e7c:	00813083          	ld	ra,8(sp)
    80001e80:	00013403          	ld	s0,0(sp)
    80001e84:	01010113          	addi	sp,sp,16
    80001e88:	00008067          	ret

0000000080001e8c <_ZdlPv>:

void operator delete(void *p) noexcept {
    80001e8c:	ff010113          	addi	sp,sp,-16
    80001e90:	00113423          	sd	ra,8(sp)
    80001e94:	00813023          	sd	s0,0(sp)
    80001e98:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001e9c:	fffff097          	auipc	ra,0xfffff
    80001ea0:	3b4080e7          	jalr	948(ra) # 80001250 <_Z8mem_freePv>
    //__mem_free(p);
}
    80001ea4:	00813083          	ld	ra,8(sp)
    80001ea8:	00013403          	ld	s0,0(sp)
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00008067          	ret

0000000080001eb4 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    80001eb4:	ff010113          	addi	sp,sp,-16
    80001eb8:	00113423          	sd	ra,8(sp)
    80001ebc:	00813023          	sd	s0,0(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001ec4:	fffff097          	auipc	ra,0xfffff
    80001ec8:	38c080e7          	jalr	908(ra) # 80001250 <_Z8mem_freePv>
    //__mem_free(p);
    80001ecc:	00813083          	ld	ra,8(sp)
    80001ed0:	00013403          	ld	s0,0(sp)
    80001ed4:	01010113          	addi	sp,sp,16
    80001ed8:	00008067          	ret

0000000080001edc <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80001edc:	ff010113          	addi	sp,sp,-16
    80001ee0:	00813423          	sd	s0,8(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    80001ee8:	00100793          	li	a5,1
    80001eec:	00f50863          	beq	a0,a5,80001efc <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001ef0:	00813403          	ld	s0,8(sp)
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00008067          	ret
    80001efc:	000107b7          	lui	a5,0x10
    80001f00:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f04:	fef596e3          	bne	a1,a5,80001ef0 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80001f08:	00004797          	auipc	a5,0x4
    80001f0c:	9387b783          	ld	a5,-1736(a5) # 80005840 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001f10:	0007b783          	ld	a5,0(a5)
    80001f14:	00004717          	auipc	a4,0x4
    80001f18:	9ef73623          	sd	a5,-1556(a4) # 80005900 <_ZN16MemoryAllocation9fmem_headE>
    80001f1c:	fd5ff06f          	j	80001ef0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001f20 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    80001f20:	ff010113          	addi	sp,sp,-16
    80001f24:	00113423          	sd	ra,8(sp)
    80001f28:	00813023          	sd	s0,0(sp)
    80001f2c:	01010413          	addi	s0,sp,16
    80001f30:	000105b7          	lui	a1,0x10
    80001f34:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001f38:	00100513          	li	a0,1
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	fa0080e7          	jalr	-96(ra) # 80001edc <_Z41__static_initialization_and_destruction_0ii>
    80001f44:	00813083          	ld	ra,8(sp)
    80001f48:	00013403          	ld	s0,0(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_Z11printStringPKc>:

#include "../h/Print.hpp"
#include "../lib/console.h"
#include "../h/RiscV.hpp"
//promenjeni print string i integer na vezbama 2, 1:10:00 tu negde, da bi se onemogucili prekidi u samoj niti
void printString(char const *string){
    80001f54:	fe010113          	addi	sp,sp,-32
    80001f58:	00113c23          	sd	ra,24(sp)
    80001f5c:	00813823          	sd	s0,16(sp)
    80001f60:	00913423          	sd	s1,8(sp)
    80001f64:	01213023          	sd	s2,0(sp)
    80001f68:	02010413          	addi	s0,sp,32
    80001f6c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80001f70:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80001f74:	00200793          	li	a5,2
    80001f78:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = RiscV::r_sstatus();
    RiscV::mc_sstatus(RiscV::SSTATUS_SIE);
    while(*string!='\0'){
    80001f7c:	0004c503          	lbu	a0,0(s1)
    80001f80:	00050a63          	beqz	a0,80001f94 <_Z11printStringPKc+0x40>
        __putc(*string);
    80001f84:	00002097          	auipc	ra,0x2
    80001f88:	1a8080e7          	jalr	424(ra) # 8000412c <__putc>
        string++;
    80001f8c:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80001f90:	fedff06f          	j	80001f7c <_Z11printStringPKc+0x28>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80001f94:	0009091b          	sext.w	s2,s2
    80001f98:	00297913          	andi	s2,s2,2
    80001f9c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    80001fa0:	10092073          	csrs	sstatus,s2
}
    80001fa4:	01813083          	ld	ra,24(sp)
    80001fa8:	01013403          	ld	s0,16(sp)
    80001fac:	00813483          	ld	s1,8(sp)
    80001fb0:	00013903          	ld	s2,0(sp)
    80001fb4:	02010113          	addi	sp,sp,32
    80001fb8:	00008067          	ret

0000000080001fbc <_Z12printIntegerm>:

void printInteger(uint64 integer){
    80001fbc:	fd010113          	addi	sp,sp,-48
    80001fc0:	02113423          	sd	ra,40(sp)
    80001fc4:	02813023          	sd	s0,32(sp)
    80001fc8:	00913c23          	sd	s1,24(sp)
    80001fcc:	01213823          	sd	s2,16(sp)
    80001fd0:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80001fd4:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80001fd8:	00200793          	li	a5,2
    80001fdc:	1007b073          	csrc	sstatus,a5
    neg=0;
    if(integer<0){
        neg=1;
        x=-integer;
    }else{
        x=integer;
    80001fe0:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80001fe4:	00000493          	li	s1,0
    do {
        buf[i++] = digits [x%10];
    80001fe8:	00a00613          	li	a2,10
    80001fec:	02c5773b          	remuw	a4,a0,a2
    80001ff0:	02071693          	slli	a3,a4,0x20
    80001ff4:	0206d693          	srli	a3,a3,0x20
    80001ff8:	00003717          	auipc	a4,0x3
    80001ffc:	0c870713          	addi	a4,a4,200 # 800050c0 <_ZZ12printIntegermE6digits>
    80002000:	00d70733          	add	a4,a4,a3
    80002004:	00074703          	lbu	a4,0(a4)
    80002008:	fe040693          	addi	a3,s0,-32
    8000200c:	009687b3          	add	a5,a3,s1
    80002010:	0014849b          	addiw	s1,s1,1
    80002014:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002018:	0005071b          	sext.w	a4,a0
    8000201c:	02c5553b          	divuw	a0,a0,a2
    80002020:	00900793          	li	a5,9
    80002024:	fce7e2e3          	bltu	a5,a4,80001fe8 <_Z12printIntegerm+0x2c>
    if(neg) buf[i++] = '-';

    while(--i >= 0){
    80002028:	fff4849b          	addiw	s1,s1,-1
    8000202c:	0004ce63          	bltz	s1,80002048 <_Z12printIntegerm+0x8c>
        __putc(buf[i]);
    80002030:	fe040793          	addi	a5,s0,-32
    80002034:	009787b3          	add	a5,a5,s1
    80002038:	ff07c503          	lbu	a0,-16(a5)
    8000203c:	00002097          	auipc	ra,0x2
    80002040:	0f0080e7          	jalr	240(ra) # 8000412c <__putc>
    80002044:	fe5ff06f          	j	80002028 <_Z12printIntegerm+0x6c>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80002048:	0009091b          	sext.w	s2,s2
    8000204c:	00297913          	andi	s2,s2,2
    80002050:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    80002054:	10092073          	csrs	sstatus,s2
    80002058:	02813083          	ld	ra,40(sp)
    8000205c:	02013403          	ld	s0,32(sp)
    80002060:	01813483          	ld	s1,24(sp)
    80002064:	01013903          	ld	s2,16(sp)
    80002068:	03010113          	addi	sp,sp,48
    8000206c:	00008067          	ret

0000000080002070 <start>:
    80002070:	ff010113          	addi	sp,sp,-16
    80002074:	00813423          	sd	s0,8(sp)
    80002078:	01010413          	addi	s0,sp,16
    8000207c:	300027f3          	csrr	a5,mstatus
    80002080:	ffffe737          	lui	a4,0xffffe
    80002084:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c8f>
    80002088:	00e7f7b3          	and	a5,a5,a4
    8000208c:	00001737          	lui	a4,0x1
    80002090:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002094:	00e7e7b3          	or	a5,a5,a4
    80002098:	30079073          	csrw	mstatus,a5
    8000209c:	00000797          	auipc	a5,0x0
    800020a0:	16078793          	addi	a5,a5,352 # 800021fc <system_main>
    800020a4:	34179073          	csrw	mepc,a5
    800020a8:	00000793          	li	a5,0
    800020ac:	18079073          	csrw	satp,a5
    800020b0:	000107b7          	lui	a5,0x10
    800020b4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800020b8:	30279073          	csrw	medeleg,a5
    800020bc:	30379073          	csrw	mideleg,a5
    800020c0:	104027f3          	csrr	a5,sie
    800020c4:	2227e793          	ori	a5,a5,546
    800020c8:	10479073          	csrw	sie,a5
    800020cc:	fff00793          	li	a5,-1
    800020d0:	00a7d793          	srli	a5,a5,0xa
    800020d4:	3b079073          	csrw	pmpaddr0,a5
    800020d8:	00f00793          	li	a5,15
    800020dc:	3a079073          	csrw	pmpcfg0,a5
    800020e0:	f14027f3          	csrr	a5,mhartid
    800020e4:	0200c737          	lui	a4,0x200c
    800020e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800020ec:	0007869b          	sext.w	a3,a5
    800020f0:	00269713          	slli	a4,a3,0x2
    800020f4:	000f4637          	lui	a2,0xf4
    800020f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800020fc:	00d70733          	add	a4,a4,a3
    80002100:	0037979b          	slliw	a5,a5,0x3
    80002104:	020046b7          	lui	a3,0x2004
    80002108:	00d787b3          	add	a5,a5,a3
    8000210c:	00c585b3          	add	a1,a1,a2
    80002110:	00371693          	slli	a3,a4,0x3
    80002114:	00003717          	auipc	a4,0x3
    80002118:	7fc70713          	addi	a4,a4,2044 # 80005910 <timer_scratch>
    8000211c:	00b7b023          	sd	a1,0(a5)
    80002120:	00d70733          	add	a4,a4,a3
    80002124:	00f73c23          	sd	a5,24(a4)
    80002128:	02c73023          	sd	a2,32(a4)
    8000212c:	34071073          	csrw	mscratch,a4
    80002130:	00000797          	auipc	a5,0x0
    80002134:	6e078793          	addi	a5,a5,1760 # 80002810 <timervec>
    80002138:	30579073          	csrw	mtvec,a5
    8000213c:	300027f3          	csrr	a5,mstatus
    80002140:	0087e793          	ori	a5,a5,8
    80002144:	30079073          	csrw	mstatus,a5
    80002148:	304027f3          	csrr	a5,mie
    8000214c:	0807e793          	ori	a5,a5,128
    80002150:	30479073          	csrw	mie,a5
    80002154:	f14027f3          	csrr	a5,mhartid
    80002158:	0007879b          	sext.w	a5,a5
    8000215c:	00078213          	mv	tp,a5
    80002160:	30200073          	mret
    80002164:	00813403          	ld	s0,8(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <timerinit>:
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00813423          	sd	s0,8(sp)
    80002178:	01010413          	addi	s0,sp,16
    8000217c:	f14027f3          	csrr	a5,mhartid
    80002180:	0200c737          	lui	a4,0x200c
    80002184:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002188:	0007869b          	sext.w	a3,a5
    8000218c:	00269713          	slli	a4,a3,0x2
    80002190:	000f4637          	lui	a2,0xf4
    80002194:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002198:	00d70733          	add	a4,a4,a3
    8000219c:	0037979b          	slliw	a5,a5,0x3
    800021a0:	020046b7          	lui	a3,0x2004
    800021a4:	00d787b3          	add	a5,a5,a3
    800021a8:	00c585b3          	add	a1,a1,a2
    800021ac:	00371693          	slli	a3,a4,0x3
    800021b0:	00003717          	auipc	a4,0x3
    800021b4:	76070713          	addi	a4,a4,1888 # 80005910 <timer_scratch>
    800021b8:	00b7b023          	sd	a1,0(a5)
    800021bc:	00d70733          	add	a4,a4,a3
    800021c0:	00f73c23          	sd	a5,24(a4)
    800021c4:	02c73023          	sd	a2,32(a4)
    800021c8:	34071073          	csrw	mscratch,a4
    800021cc:	00000797          	auipc	a5,0x0
    800021d0:	64478793          	addi	a5,a5,1604 # 80002810 <timervec>
    800021d4:	30579073          	csrw	mtvec,a5
    800021d8:	300027f3          	csrr	a5,mstatus
    800021dc:	0087e793          	ori	a5,a5,8
    800021e0:	30079073          	csrw	mstatus,a5
    800021e4:	304027f3          	csrr	a5,mie
    800021e8:	0807e793          	ori	a5,a5,128
    800021ec:	30479073          	csrw	mie,a5
    800021f0:	00813403          	ld	s0,8(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret

00000000800021fc <system_main>:
    800021fc:	fe010113          	addi	sp,sp,-32
    80002200:	00813823          	sd	s0,16(sp)
    80002204:	00913423          	sd	s1,8(sp)
    80002208:	00113c23          	sd	ra,24(sp)
    8000220c:	02010413          	addi	s0,sp,32
    80002210:	00000097          	auipc	ra,0x0
    80002214:	0c4080e7          	jalr	196(ra) # 800022d4 <cpuid>
    80002218:	00003497          	auipc	s1,0x3
    8000221c:	69848493          	addi	s1,s1,1688 # 800058b0 <started>
    80002220:	02050263          	beqz	a0,80002244 <system_main+0x48>
    80002224:	0004a783          	lw	a5,0(s1)
    80002228:	0007879b          	sext.w	a5,a5
    8000222c:	fe078ce3          	beqz	a5,80002224 <system_main+0x28>
    80002230:	0ff0000f          	fence
    80002234:	00003517          	auipc	a0,0x3
    80002238:	ecc50513          	addi	a0,a0,-308 # 80005100 <_ZZ12printIntegermE6digits+0x40>
    8000223c:	00001097          	auipc	ra,0x1
    80002240:	a70080e7          	jalr	-1424(ra) # 80002cac <panic>
    80002244:	00001097          	auipc	ra,0x1
    80002248:	9c4080e7          	jalr	-1596(ra) # 80002c08 <consoleinit>
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	150080e7          	jalr	336(ra) # 8000339c <printfinit>
    80002254:	00003517          	auipc	a0,0x3
    80002258:	e6450513          	addi	a0,a0,-412 # 800050b8 <CONSOLE_STATUS+0xa8>
    8000225c:	00001097          	auipc	ra,0x1
    80002260:	aac080e7          	jalr	-1364(ra) # 80002d08 <__printf>
    80002264:	00003517          	auipc	a0,0x3
    80002268:	e6c50513          	addi	a0,a0,-404 # 800050d0 <_ZZ12printIntegermE6digits+0x10>
    8000226c:	00001097          	auipc	ra,0x1
    80002270:	a9c080e7          	jalr	-1380(ra) # 80002d08 <__printf>
    80002274:	00003517          	auipc	a0,0x3
    80002278:	e4450513          	addi	a0,a0,-444 # 800050b8 <CONSOLE_STATUS+0xa8>
    8000227c:	00001097          	auipc	ra,0x1
    80002280:	a8c080e7          	jalr	-1396(ra) # 80002d08 <__printf>
    80002284:	00001097          	auipc	ra,0x1
    80002288:	4a4080e7          	jalr	1188(ra) # 80003728 <kinit>
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	148080e7          	jalr	328(ra) # 800023d4 <trapinit>
    80002294:	00000097          	auipc	ra,0x0
    80002298:	16c080e7          	jalr	364(ra) # 80002400 <trapinithart>
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	5b4080e7          	jalr	1460(ra) # 80002850 <plicinit>
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	5d4080e7          	jalr	1492(ra) # 80002878 <plicinithart>
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	078080e7          	jalr	120(ra) # 80002324 <userinit>
    800022b4:	0ff0000f          	fence
    800022b8:	00100793          	li	a5,1
    800022bc:	00003517          	auipc	a0,0x3
    800022c0:	e2c50513          	addi	a0,a0,-468 # 800050e8 <_ZZ12printIntegermE6digits+0x28>
    800022c4:	00f4a023          	sw	a5,0(s1)
    800022c8:	00001097          	auipc	ra,0x1
    800022cc:	a40080e7          	jalr	-1472(ra) # 80002d08 <__printf>
    800022d0:	0000006f          	j	800022d0 <system_main+0xd4>

00000000800022d4 <cpuid>:
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00813423          	sd	s0,8(sp)
    800022dc:	01010413          	addi	s0,sp,16
    800022e0:	00020513          	mv	a0,tp
    800022e4:	00813403          	ld	s0,8(sp)
    800022e8:	0005051b          	sext.w	a0,a0
    800022ec:	01010113          	addi	sp,sp,16
    800022f0:	00008067          	ret

00000000800022f4 <mycpu>:
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00813423          	sd	s0,8(sp)
    800022fc:	01010413          	addi	s0,sp,16
    80002300:	00020793          	mv	a5,tp
    80002304:	00813403          	ld	s0,8(sp)
    80002308:	0007879b          	sext.w	a5,a5
    8000230c:	00779793          	slli	a5,a5,0x7
    80002310:	00004517          	auipc	a0,0x4
    80002314:	63050513          	addi	a0,a0,1584 # 80006940 <cpus>
    80002318:	00f50533          	add	a0,a0,a5
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <userinit>:
    80002324:	ff010113          	addi	sp,sp,-16
    80002328:	00813423          	sd	s0,8(sp)
    8000232c:	01010413          	addi	s0,sp,16
    80002330:	00813403          	ld	s0,8(sp)
    80002334:	01010113          	addi	sp,sp,16
    80002338:	fffff317          	auipc	t1,0xfffff
    8000233c:	77430067          	jr	1908(t1) # 80001aac <main>

0000000080002340 <either_copyout>:
    80002340:	ff010113          	addi	sp,sp,-16
    80002344:	00813023          	sd	s0,0(sp)
    80002348:	00113423          	sd	ra,8(sp)
    8000234c:	01010413          	addi	s0,sp,16
    80002350:	02051663          	bnez	a0,8000237c <either_copyout+0x3c>
    80002354:	00058513          	mv	a0,a1
    80002358:	00060593          	mv	a1,a2
    8000235c:	0006861b          	sext.w	a2,a3
    80002360:	00002097          	auipc	ra,0x2
    80002364:	c54080e7          	jalr	-940(ra) # 80003fb4 <__memmove>
    80002368:	00813083          	ld	ra,8(sp)
    8000236c:	00013403          	ld	s0,0(sp)
    80002370:	00000513          	li	a0,0
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret
    8000237c:	00003517          	auipc	a0,0x3
    80002380:	dac50513          	addi	a0,a0,-596 # 80005128 <_ZZ12printIntegermE6digits+0x68>
    80002384:	00001097          	auipc	ra,0x1
    80002388:	928080e7          	jalr	-1752(ra) # 80002cac <panic>

000000008000238c <either_copyin>:
    8000238c:	ff010113          	addi	sp,sp,-16
    80002390:	00813023          	sd	s0,0(sp)
    80002394:	00113423          	sd	ra,8(sp)
    80002398:	01010413          	addi	s0,sp,16
    8000239c:	02059463          	bnez	a1,800023c4 <either_copyin+0x38>
    800023a0:	00060593          	mv	a1,a2
    800023a4:	0006861b          	sext.w	a2,a3
    800023a8:	00002097          	auipc	ra,0x2
    800023ac:	c0c080e7          	jalr	-1012(ra) # 80003fb4 <__memmove>
    800023b0:	00813083          	ld	ra,8(sp)
    800023b4:	00013403          	ld	s0,0(sp)
    800023b8:	00000513          	li	a0,0
    800023bc:	01010113          	addi	sp,sp,16
    800023c0:	00008067          	ret
    800023c4:	00003517          	auipc	a0,0x3
    800023c8:	d8c50513          	addi	a0,a0,-628 # 80005150 <_ZZ12printIntegermE6digits+0x90>
    800023cc:	00001097          	auipc	ra,0x1
    800023d0:	8e0080e7          	jalr	-1824(ra) # 80002cac <panic>

00000000800023d4 <trapinit>:
    800023d4:	ff010113          	addi	sp,sp,-16
    800023d8:	00813423          	sd	s0,8(sp)
    800023dc:	01010413          	addi	s0,sp,16
    800023e0:	00813403          	ld	s0,8(sp)
    800023e4:	00003597          	auipc	a1,0x3
    800023e8:	d9458593          	addi	a1,a1,-620 # 80005178 <_ZZ12printIntegermE6digits+0xb8>
    800023ec:	00004517          	auipc	a0,0x4
    800023f0:	5d450513          	addi	a0,a0,1492 # 800069c0 <tickslock>
    800023f4:	01010113          	addi	sp,sp,16
    800023f8:	00001317          	auipc	t1,0x1
    800023fc:	5c030067          	jr	1472(t1) # 800039b8 <initlock>

0000000080002400 <trapinithart>:
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00813423          	sd	s0,8(sp)
    80002408:	01010413          	addi	s0,sp,16
    8000240c:	00000797          	auipc	a5,0x0
    80002410:	2f478793          	addi	a5,a5,756 # 80002700 <kernelvec>
    80002414:	10579073          	csrw	stvec,a5
    80002418:	00813403          	ld	s0,8(sp)
    8000241c:	01010113          	addi	sp,sp,16
    80002420:	00008067          	ret

0000000080002424 <usertrap>:
    80002424:	ff010113          	addi	sp,sp,-16
    80002428:	00813423          	sd	s0,8(sp)
    8000242c:	01010413          	addi	s0,sp,16
    80002430:	00813403          	ld	s0,8(sp)
    80002434:	01010113          	addi	sp,sp,16
    80002438:	00008067          	ret

000000008000243c <usertrapret>:
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00813423          	sd	s0,8(sp)
    80002444:	01010413          	addi	s0,sp,16
    80002448:	00813403          	ld	s0,8(sp)
    8000244c:	01010113          	addi	sp,sp,16
    80002450:	00008067          	ret

0000000080002454 <kerneltrap>:
    80002454:	fe010113          	addi	sp,sp,-32
    80002458:	00813823          	sd	s0,16(sp)
    8000245c:	00113c23          	sd	ra,24(sp)
    80002460:	00913423          	sd	s1,8(sp)
    80002464:	02010413          	addi	s0,sp,32
    80002468:	142025f3          	csrr	a1,scause
    8000246c:	100027f3          	csrr	a5,sstatus
    80002470:	0027f793          	andi	a5,a5,2
    80002474:	10079c63          	bnez	a5,8000258c <kerneltrap+0x138>
    80002478:	142027f3          	csrr	a5,scause
    8000247c:	0207ce63          	bltz	a5,800024b8 <kerneltrap+0x64>
    80002480:	00003517          	auipc	a0,0x3
    80002484:	d4050513          	addi	a0,a0,-704 # 800051c0 <_ZZ12printIntegermE6digits+0x100>
    80002488:	00001097          	auipc	ra,0x1
    8000248c:	880080e7          	jalr	-1920(ra) # 80002d08 <__printf>
    80002490:	141025f3          	csrr	a1,sepc
    80002494:	14302673          	csrr	a2,stval
    80002498:	00003517          	auipc	a0,0x3
    8000249c:	d3850513          	addi	a0,a0,-712 # 800051d0 <_ZZ12printIntegermE6digits+0x110>
    800024a0:	00001097          	auipc	ra,0x1
    800024a4:	868080e7          	jalr	-1944(ra) # 80002d08 <__printf>
    800024a8:	00003517          	auipc	a0,0x3
    800024ac:	d4050513          	addi	a0,a0,-704 # 800051e8 <_ZZ12printIntegermE6digits+0x128>
    800024b0:	00000097          	auipc	ra,0x0
    800024b4:	7fc080e7          	jalr	2044(ra) # 80002cac <panic>
    800024b8:	0ff7f713          	andi	a4,a5,255
    800024bc:	00900693          	li	a3,9
    800024c0:	04d70063          	beq	a4,a3,80002500 <kerneltrap+0xac>
    800024c4:	fff00713          	li	a4,-1
    800024c8:	03f71713          	slli	a4,a4,0x3f
    800024cc:	00170713          	addi	a4,a4,1
    800024d0:	fae798e3          	bne	a5,a4,80002480 <kerneltrap+0x2c>
    800024d4:	00000097          	auipc	ra,0x0
    800024d8:	e00080e7          	jalr	-512(ra) # 800022d4 <cpuid>
    800024dc:	06050663          	beqz	a0,80002548 <kerneltrap+0xf4>
    800024e0:	144027f3          	csrr	a5,sip
    800024e4:	ffd7f793          	andi	a5,a5,-3
    800024e8:	14479073          	csrw	sip,a5
    800024ec:	01813083          	ld	ra,24(sp)
    800024f0:	01013403          	ld	s0,16(sp)
    800024f4:	00813483          	ld	s1,8(sp)
    800024f8:	02010113          	addi	sp,sp,32
    800024fc:	00008067          	ret
    80002500:	00000097          	auipc	ra,0x0
    80002504:	3c4080e7          	jalr	964(ra) # 800028c4 <plic_claim>
    80002508:	00a00793          	li	a5,10
    8000250c:	00050493          	mv	s1,a0
    80002510:	06f50863          	beq	a0,a5,80002580 <kerneltrap+0x12c>
    80002514:	fc050ce3          	beqz	a0,800024ec <kerneltrap+0x98>
    80002518:	00050593          	mv	a1,a0
    8000251c:	00003517          	auipc	a0,0x3
    80002520:	c8450513          	addi	a0,a0,-892 # 800051a0 <_ZZ12printIntegermE6digits+0xe0>
    80002524:	00000097          	auipc	ra,0x0
    80002528:	7e4080e7          	jalr	2020(ra) # 80002d08 <__printf>
    8000252c:	01013403          	ld	s0,16(sp)
    80002530:	01813083          	ld	ra,24(sp)
    80002534:	00048513          	mv	a0,s1
    80002538:	00813483          	ld	s1,8(sp)
    8000253c:	02010113          	addi	sp,sp,32
    80002540:	00000317          	auipc	t1,0x0
    80002544:	3bc30067          	jr	956(t1) # 800028fc <plic_complete>
    80002548:	00004517          	auipc	a0,0x4
    8000254c:	47850513          	addi	a0,a0,1144 # 800069c0 <tickslock>
    80002550:	00001097          	auipc	ra,0x1
    80002554:	48c080e7          	jalr	1164(ra) # 800039dc <acquire>
    80002558:	00003717          	auipc	a4,0x3
    8000255c:	35c70713          	addi	a4,a4,860 # 800058b4 <ticks>
    80002560:	00072783          	lw	a5,0(a4)
    80002564:	00004517          	auipc	a0,0x4
    80002568:	45c50513          	addi	a0,a0,1116 # 800069c0 <tickslock>
    8000256c:	0017879b          	addiw	a5,a5,1
    80002570:	00f72023          	sw	a5,0(a4)
    80002574:	00001097          	auipc	ra,0x1
    80002578:	534080e7          	jalr	1332(ra) # 80003aa8 <release>
    8000257c:	f65ff06f          	j	800024e0 <kerneltrap+0x8c>
    80002580:	00001097          	auipc	ra,0x1
    80002584:	090080e7          	jalr	144(ra) # 80003610 <uartintr>
    80002588:	fa5ff06f          	j	8000252c <kerneltrap+0xd8>
    8000258c:	00003517          	auipc	a0,0x3
    80002590:	bf450513          	addi	a0,a0,-1036 # 80005180 <_ZZ12printIntegermE6digits+0xc0>
    80002594:	00000097          	auipc	ra,0x0
    80002598:	718080e7          	jalr	1816(ra) # 80002cac <panic>

000000008000259c <clockintr>:
    8000259c:	fe010113          	addi	sp,sp,-32
    800025a0:	00813823          	sd	s0,16(sp)
    800025a4:	00913423          	sd	s1,8(sp)
    800025a8:	00113c23          	sd	ra,24(sp)
    800025ac:	02010413          	addi	s0,sp,32
    800025b0:	00004497          	auipc	s1,0x4
    800025b4:	41048493          	addi	s1,s1,1040 # 800069c0 <tickslock>
    800025b8:	00048513          	mv	a0,s1
    800025bc:	00001097          	auipc	ra,0x1
    800025c0:	420080e7          	jalr	1056(ra) # 800039dc <acquire>
    800025c4:	00003717          	auipc	a4,0x3
    800025c8:	2f070713          	addi	a4,a4,752 # 800058b4 <ticks>
    800025cc:	00072783          	lw	a5,0(a4)
    800025d0:	01013403          	ld	s0,16(sp)
    800025d4:	01813083          	ld	ra,24(sp)
    800025d8:	00048513          	mv	a0,s1
    800025dc:	0017879b          	addiw	a5,a5,1
    800025e0:	00813483          	ld	s1,8(sp)
    800025e4:	00f72023          	sw	a5,0(a4)
    800025e8:	02010113          	addi	sp,sp,32
    800025ec:	00001317          	auipc	t1,0x1
    800025f0:	4bc30067          	jr	1212(t1) # 80003aa8 <release>

00000000800025f4 <devintr>:
    800025f4:	142027f3          	csrr	a5,scause
    800025f8:	00000513          	li	a0,0
    800025fc:	0007c463          	bltz	a5,80002604 <devintr+0x10>
    80002600:	00008067          	ret
    80002604:	fe010113          	addi	sp,sp,-32
    80002608:	00813823          	sd	s0,16(sp)
    8000260c:	00113c23          	sd	ra,24(sp)
    80002610:	00913423          	sd	s1,8(sp)
    80002614:	02010413          	addi	s0,sp,32
    80002618:	0ff7f713          	andi	a4,a5,255
    8000261c:	00900693          	li	a3,9
    80002620:	04d70c63          	beq	a4,a3,80002678 <devintr+0x84>
    80002624:	fff00713          	li	a4,-1
    80002628:	03f71713          	slli	a4,a4,0x3f
    8000262c:	00170713          	addi	a4,a4,1
    80002630:	00e78c63          	beq	a5,a4,80002648 <devintr+0x54>
    80002634:	01813083          	ld	ra,24(sp)
    80002638:	01013403          	ld	s0,16(sp)
    8000263c:	00813483          	ld	s1,8(sp)
    80002640:	02010113          	addi	sp,sp,32
    80002644:	00008067          	ret
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	c8c080e7          	jalr	-884(ra) # 800022d4 <cpuid>
    80002650:	06050663          	beqz	a0,800026bc <devintr+0xc8>
    80002654:	144027f3          	csrr	a5,sip
    80002658:	ffd7f793          	andi	a5,a5,-3
    8000265c:	14479073          	csrw	sip,a5
    80002660:	01813083          	ld	ra,24(sp)
    80002664:	01013403          	ld	s0,16(sp)
    80002668:	00813483          	ld	s1,8(sp)
    8000266c:	00200513          	li	a0,2
    80002670:	02010113          	addi	sp,sp,32
    80002674:	00008067          	ret
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	24c080e7          	jalr	588(ra) # 800028c4 <plic_claim>
    80002680:	00a00793          	li	a5,10
    80002684:	00050493          	mv	s1,a0
    80002688:	06f50663          	beq	a0,a5,800026f4 <devintr+0x100>
    8000268c:	00100513          	li	a0,1
    80002690:	fa0482e3          	beqz	s1,80002634 <devintr+0x40>
    80002694:	00048593          	mv	a1,s1
    80002698:	00003517          	auipc	a0,0x3
    8000269c:	b0850513          	addi	a0,a0,-1272 # 800051a0 <_ZZ12printIntegermE6digits+0xe0>
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	668080e7          	jalr	1640(ra) # 80002d08 <__printf>
    800026a8:	00048513          	mv	a0,s1
    800026ac:	00000097          	auipc	ra,0x0
    800026b0:	250080e7          	jalr	592(ra) # 800028fc <plic_complete>
    800026b4:	00100513          	li	a0,1
    800026b8:	f7dff06f          	j	80002634 <devintr+0x40>
    800026bc:	00004517          	auipc	a0,0x4
    800026c0:	30450513          	addi	a0,a0,772 # 800069c0 <tickslock>
    800026c4:	00001097          	auipc	ra,0x1
    800026c8:	318080e7          	jalr	792(ra) # 800039dc <acquire>
    800026cc:	00003717          	auipc	a4,0x3
    800026d0:	1e870713          	addi	a4,a4,488 # 800058b4 <ticks>
    800026d4:	00072783          	lw	a5,0(a4)
    800026d8:	00004517          	auipc	a0,0x4
    800026dc:	2e850513          	addi	a0,a0,744 # 800069c0 <tickslock>
    800026e0:	0017879b          	addiw	a5,a5,1
    800026e4:	00f72023          	sw	a5,0(a4)
    800026e8:	00001097          	auipc	ra,0x1
    800026ec:	3c0080e7          	jalr	960(ra) # 80003aa8 <release>
    800026f0:	f65ff06f          	j	80002654 <devintr+0x60>
    800026f4:	00001097          	auipc	ra,0x1
    800026f8:	f1c080e7          	jalr	-228(ra) # 80003610 <uartintr>
    800026fc:	fadff06f          	j	800026a8 <devintr+0xb4>

0000000080002700 <kernelvec>:
    80002700:	f0010113          	addi	sp,sp,-256
    80002704:	00113023          	sd	ra,0(sp)
    80002708:	00213423          	sd	sp,8(sp)
    8000270c:	00313823          	sd	gp,16(sp)
    80002710:	00413c23          	sd	tp,24(sp)
    80002714:	02513023          	sd	t0,32(sp)
    80002718:	02613423          	sd	t1,40(sp)
    8000271c:	02713823          	sd	t2,48(sp)
    80002720:	02813c23          	sd	s0,56(sp)
    80002724:	04913023          	sd	s1,64(sp)
    80002728:	04a13423          	sd	a0,72(sp)
    8000272c:	04b13823          	sd	a1,80(sp)
    80002730:	04c13c23          	sd	a2,88(sp)
    80002734:	06d13023          	sd	a3,96(sp)
    80002738:	06e13423          	sd	a4,104(sp)
    8000273c:	06f13823          	sd	a5,112(sp)
    80002740:	07013c23          	sd	a6,120(sp)
    80002744:	09113023          	sd	a7,128(sp)
    80002748:	09213423          	sd	s2,136(sp)
    8000274c:	09313823          	sd	s3,144(sp)
    80002750:	09413c23          	sd	s4,152(sp)
    80002754:	0b513023          	sd	s5,160(sp)
    80002758:	0b613423          	sd	s6,168(sp)
    8000275c:	0b713823          	sd	s7,176(sp)
    80002760:	0b813c23          	sd	s8,184(sp)
    80002764:	0d913023          	sd	s9,192(sp)
    80002768:	0da13423          	sd	s10,200(sp)
    8000276c:	0db13823          	sd	s11,208(sp)
    80002770:	0dc13c23          	sd	t3,216(sp)
    80002774:	0fd13023          	sd	t4,224(sp)
    80002778:	0fe13423          	sd	t5,232(sp)
    8000277c:	0ff13823          	sd	t6,240(sp)
    80002780:	cd5ff0ef          	jal	ra,80002454 <kerneltrap>
    80002784:	00013083          	ld	ra,0(sp)
    80002788:	00813103          	ld	sp,8(sp)
    8000278c:	01013183          	ld	gp,16(sp)
    80002790:	02013283          	ld	t0,32(sp)
    80002794:	02813303          	ld	t1,40(sp)
    80002798:	03013383          	ld	t2,48(sp)
    8000279c:	03813403          	ld	s0,56(sp)
    800027a0:	04013483          	ld	s1,64(sp)
    800027a4:	04813503          	ld	a0,72(sp)
    800027a8:	05013583          	ld	a1,80(sp)
    800027ac:	05813603          	ld	a2,88(sp)
    800027b0:	06013683          	ld	a3,96(sp)
    800027b4:	06813703          	ld	a4,104(sp)
    800027b8:	07013783          	ld	a5,112(sp)
    800027bc:	07813803          	ld	a6,120(sp)
    800027c0:	08013883          	ld	a7,128(sp)
    800027c4:	08813903          	ld	s2,136(sp)
    800027c8:	09013983          	ld	s3,144(sp)
    800027cc:	09813a03          	ld	s4,152(sp)
    800027d0:	0a013a83          	ld	s5,160(sp)
    800027d4:	0a813b03          	ld	s6,168(sp)
    800027d8:	0b013b83          	ld	s7,176(sp)
    800027dc:	0b813c03          	ld	s8,184(sp)
    800027e0:	0c013c83          	ld	s9,192(sp)
    800027e4:	0c813d03          	ld	s10,200(sp)
    800027e8:	0d013d83          	ld	s11,208(sp)
    800027ec:	0d813e03          	ld	t3,216(sp)
    800027f0:	0e013e83          	ld	t4,224(sp)
    800027f4:	0e813f03          	ld	t5,232(sp)
    800027f8:	0f013f83          	ld	t6,240(sp)
    800027fc:	10010113          	addi	sp,sp,256
    80002800:	10200073          	sret
    80002804:	00000013          	nop
    80002808:	00000013          	nop
    8000280c:	00000013          	nop

0000000080002810 <timervec>:
    80002810:	34051573          	csrrw	a0,mscratch,a0
    80002814:	00b53023          	sd	a1,0(a0)
    80002818:	00c53423          	sd	a2,8(a0)
    8000281c:	00d53823          	sd	a3,16(a0)
    80002820:	01853583          	ld	a1,24(a0)
    80002824:	02053603          	ld	a2,32(a0)
    80002828:	0005b683          	ld	a3,0(a1)
    8000282c:	00c686b3          	add	a3,a3,a2
    80002830:	00d5b023          	sd	a3,0(a1)
    80002834:	00200593          	li	a1,2
    80002838:	14459073          	csrw	sip,a1
    8000283c:	01053683          	ld	a3,16(a0)
    80002840:	00853603          	ld	a2,8(a0)
    80002844:	00053583          	ld	a1,0(a0)
    80002848:	34051573          	csrrw	a0,mscratch,a0
    8000284c:	30200073          	mret

0000000080002850 <plicinit>:
    80002850:	ff010113          	addi	sp,sp,-16
    80002854:	00813423          	sd	s0,8(sp)
    80002858:	01010413          	addi	s0,sp,16
    8000285c:	00813403          	ld	s0,8(sp)
    80002860:	0c0007b7          	lui	a5,0xc000
    80002864:	00100713          	li	a4,1
    80002868:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000286c:	00e7a223          	sw	a4,4(a5)
    80002870:	01010113          	addi	sp,sp,16
    80002874:	00008067          	ret

0000000080002878 <plicinithart>:
    80002878:	ff010113          	addi	sp,sp,-16
    8000287c:	00813023          	sd	s0,0(sp)
    80002880:	00113423          	sd	ra,8(sp)
    80002884:	01010413          	addi	s0,sp,16
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	a4c080e7          	jalr	-1460(ra) # 800022d4 <cpuid>
    80002890:	0085171b          	slliw	a4,a0,0x8
    80002894:	0c0027b7          	lui	a5,0xc002
    80002898:	00e787b3          	add	a5,a5,a4
    8000289c:	40200713          	li	a4,1026
    800028a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800028a4:	00813083          	ld	ra,8(sp)
    800028a8:	00013403          	ld	s0,0(sp)
    800028ac:	00d5151b          	slliw	a0,a0,0xd
    800028b0:	0c2017b7          	lui	a5,0xc201
    800028b4:	00a78533          	add	a0,a5,a0
    800028b8:	00052023          	sw	zero,0(a0)
    800028bc:	01010113          	addi	sp,sp,16
    800028c0:	00008067          	ret

00000000800028c4 <plic_claim>:
    800028c4:	ff010113          	addi	sp,sp,-16
    800028c8:	00813023          	sd	s0,0(sp)
    800028cc:	00113423          	sd	ra,8(sp)
    800028d0:	01010413          	addi	s0,sp,16
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	a00080e7          	jalr	-1536(ra) # 800022d4 <cpuid>
    800028dc:	00813083          	ld	ra,8(sp)
    800028e0:	00013403          	ld	s0,0(sp)
    800028e4:	00d5151b          	slliw	a0,a0,0xd
    800028e8:	0c2017b7          	lui	a5,0xc201
    800028ec:	00a78533          	add	a0,a5,a0
    800028f0:	00452503          	lw	a0,4(a0)
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00008067          	ret

00000000800028fc <plic_complete>:
    800028fc:	fe010113          	addi	sp,sp,-32
    80002900:	00813823          	sd	s0,16(sp)
    80002904:	00913423          	sd	s1,8(sp)
    80002908:	00113c23          	sd	ra,24(sp)
    8000290c:	02010413          	addi	s0,sp,32
    80002910:	00050493          	mv	s1,a0
    80002914:	00000097          	auipc	ra,0x0
    80002918:	9c0080e7          	jalr	-1600(ra) # 800022d4 <cpuid>
    8000291c:	01813083          	ld	ra,24(sp)
    80002920:	01013403          	ld	s0,16(sp)
    80002924:	00d5179b          	slliw	a5,a0,0xd
    80002928:	0c201737          	lui	a4,0xc201
    8000292c:	00f707b3          	add	a5,a4,a5
    80002930:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002934:	00813483          	ld	s1,8(sp)
    80002938:	02010113          	addi	sp,sp,32
    8000293c:	00008067          	ret

0000000080002940 <consolewrite>:
    80002940:	fb010113          	addi	sp,sp,-80
    80002944:	04813023          	sd	s0,64(sp)
    80002948:	04113423          	sd	ra,72(sp)
    8000294c:	02913c23          	sd	s1,56(sp)
    80002950:	03213823          	sd	s2,48(sp)
    80002954:	03313423          	sd	s3,40(sp)
    80002958:	03413023          	sd	s4,32(sp)
    8000295c:	01513c23          	sd	s5,24(sp)
    80002960:	05010413          	addi	s0,sp,80
    80002964:	06c05c63          	blez	a2,800029dc <consolewrite+0x9c>
    80002968:	00060993          	mv	s3,a2
    8000296c:	00050a13          	mv	s4,a0
    80002970:	00058493          	mv	s1,a1
    80002974:	00000913          	li	s2,0
    80002978:	fff00a93          	li	s5,-1
    8000297c:	01c0006f          	j	80002998 <consolewrite+0x58>
    80002980:	fbf44503          	lbu	a0,-65(s0)
    80002984:	0019091b          	addiw	s2,s2,1
    80002988:	00148493          	addi	s1,s1,1
    8000298c:	00001097          	auipc	ra,0x1
    80002990:	a9c080e7          	jalr	-1380(ra) # 80003428 <uartputc>
    80002994:	03298063          	beq	s3,s2,800029b4 <consolewrite+0x74>
    80002998:	00048613          	mv	a2,s1
    8000299c:	00100693          	li	a3,1
    800029a0:	000a0593          	mv	a1,s4
    800029a4:	fbf40513          	addi	a0,s0,-65
    800029a8:	00000097          	auipc	ra,0x0
    800029ac:	9e4080e7          	jalr	-1564(ra) # 8000238c <either_copyin>
    800029b0:	fd5518e3          	bne	a0,s5,80002980 <consolewrite+0x40>
    800029b4:	04813083          	ld	ra,72(sp)
    800029b8:	04013403          	ld	s0,64(sp)
    800029bc:	03813483          	ld	s1,56(sp)
    800029c0:	02813983          	ld	s3,40(sp)
    800029c4:	02013a03          	ld	s4,32(sp)
    800029c8:	01813a83          	ld	s5,24(sp)
    800029cc:	00090513          	mv	a0,s2
    800029d0:	03013903          	ld	s2,48(sp)
    800029d4:	05010113          	addi	sp,sp,80
    800029d8:	00008067          	ret
    800029dc:	00000913          	li	s2,0
    800029e0:	fd5ff06f          	j	800029b4 <consolewrite+0x74>

00000000800029e4 <consoleread>:
    800029e4:	f9010113          	addi	sp,sp,-112
    800029e8:	06813023          	sd	s0,96(sp)
    800029ec:	04913c23          	sd	s1,88(sp)
    800029f0:	05213823          	sd	s2,80(sp)
    800029f4:	05313423          	sd	s3,72(sp)
    800029f8:	05413023          	sd	s4,64(sp)
    800029fc:	03513c23          	sd	s5,56(sp)
    80002a00:	03613823          	sd	s6,48(sp)
    80002a04:	03713423          	sd	s7,40(sp)
    80002a08:	03813023          	sd	s8,32(sp)
    80002a0c:	06113423          	sd	ra,104(sp)
    80002a10:	01913c23          	sd	s9,24(sp)
    80002a14:	07010413          	addi	s0,sp,112
    80002a18:	00060b93          	mv	s7,a2
    80002a1c:	00050913          	mv	s2,a0
    80002a20:	00058c13          	mv	s8,a1
    80002a24:	00060b1b          	sext.w	s6,a2
    80002a28:	00004497          	auipc	s1,0x4
    80002a2c:	fc048493          	addi	s1,s1,-64 # 800069e8 <cons>
    80002a30:	00400993          	li	s3,4
    80002a34:	fff00a13          	li	s4,-1
    80002a38:	00a00a93          	li	s5,10
    80002a3c:	05705e63          	blez	s7,80002a98 <consoleread+0xb4>
    80002a40:	09c4a703          	lw	a4,156(s1)
    80002a44:	0984a783          	lw	a5,152(s1)
    80002a48:	0007071b          	sext.w	a4,a4
    80002a4c:	08e78463          	beq	a5,a4,80002ad4 <consoleread+0xf0>
    80002a50:	07f7f713          	andi	a4,a5,127
    80002a54:	00e48733          	add	a4,s1,a4
    80002a58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002a5c:	0017869b          	addiw	a3,a5,1
    80002a60:	08d4ac23          	sw	a3,152(s1)
    80002a64:	00070c9b          	sext.w	s9,a4
    80002a68:	0b370663          	beq	a4,s3,80002b14 <consoleread+0x130>
    80002a6c:	00100693          	li	a3,1
    80002a70:	f9f40613          	addi	a2,s0,-97
    80002a74:	000c0593          	mv	a1,s8
    80002a78:	00090513          	mv	a0,s2
    80002a7c:	f8e40fa3          	sb	a4,-97(s0)
    80002a80:	00000097          	auipc	ra,0x0
    80002a84:	8c0080e7          	jalr	-1856(ra) # 80002340 <either_copyout>
    80002a88:	01450863          	beq	a0,s4,80002a98 <consoleread+0xb4>
    80002a8c:	001c0c13          	addi	s8,s8,1
    80002a90:	fffb8b9b          	addiw	s7,s7,-1
    80002a94:	fb5c94e3          	bne	s9,s5,80002a3c <consoleread+0x58>
    80002a98:	000b851b          	sext.w	a0,s7
    80002a9c:	06813083          	ld	ra,104(sp)
    80002aa0:	06013403          	ld	s0,96(sp)
    80002aa4:	05813483          	ld	s1,88(sp)
    80002aa8:	05013903          	ld	s2,80(sp)
    80002aac:	04813983          	ld	s3,72(sp)
    80002ab0:	04013a03          	ld	s4,64(sp)
    80002ab4:	03813a83          	ld	s5,56(sp)
    80002ab8:	02813b83          	ld	s7,40(sp)
    80002abc:	02013c03          	ld	s8,32(sp)
    80002ac0:	01813c83          	ld	s9,24(sp)
    80002ac4:	40ab053b          	subw	a0,s6,a0
    80002ac8:	03013b03          	ld	s6,48(sp)
    80002acc:	07010113          	addi	sp,sp,112
    80002ad0:	00008067          	ret
    80002ad4:	00001097          	auipc	ra,0x1
    80002ad8:	1d8080e7          	jalr	472(ra) # 80003cac <push_on>
    80002adc:	0984a703          	lw	a4,152(s1)
    80002ae0:	09c4a783          	lw	a5,156(s1)
    80002ae4:	0007879b          	sext.w	a5,a5
    80002ae8:	fef70ce3          	beq	a4,a5,80002ae0 <consoleread+0xfc>
    80002aec:	00001097          	auipc	ra,0x1
    80002af0:	234080e7          	jalr	564(ra) # 80003d20 <pop_on>
    80002af4:	0984a783          	lw	a5,152(s1)
    80002af8:	07f7f713          	andi	a4,a5,127
    80002afc:	00e48733          	add	a4,s1,a4
    80002b00:	01874703          	lbu	a4,24(a4)
    80002b04:	0017869b          	addiw	a3,a5,1
    80002b08:	08d4ac23          	sw	a3,152(s1)
    80002b0c:	00070c9b          	sext.w	s9,a4
    80002b10:	f5371ee3          	bne	a4,s3,80002a6c <consoleread+0x88>
    80002b14:	000b851b          	sext.w	a0,s7
    80002b18:	f96bf2e3          	bgeu	s7,s6,80002a9c <consoleread+0xb8>
    80002b1c:	08f4ac23          	sw	a5,152(s1)
    80002b20:	f7dff06f          	j	80002a9c <consoleread+0xb8>

0000000080002b24 <consputc>:
    80002b24:	10000793          	li	a5,256
    80002b28:	00f50663          	beq	a0,a5,80002b34 <consputc+0x10>
    80002b2c:	00001317          	auipc	t1,0x1
    80002b30:	9f430067          	jr	-1548(t1) # 80003520 <uartputc_sync>
    80002b34:	ff010113          	addi	sp,sp,-16
    80002b38:	00113423          	sd	ra,8(sp)
    80002b3c:	00813023          	sd	s0,0(sp)
    80002b40:	01010413          	addi	s0,sp,16
    80002b44:	00800513          	li	a0,8
    80002b48:	00001097          	auipc	ra,0x1
    80002b4c:	9d8080e7          	jalr	-1576(ra) # 80003520 <uartputc_sync>
    80002b50:	02000513          	li	a0,32
    80002b54:	00001097          	auipc	ra,0x1
    80002b58:	9cc080e7          	jalr	-1588(ra) # 80003520 <uartputc_sync>
    80002b5c:	00013403          	ld	s0,0(sp)
    80002b60:	00813083          	ld	ra,8(sp)
    80002b64:	00800513          	li	a0,8
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00001317          	auipc	t1,0x1
    80002b70:	9b430067          	jr	-1612(t1) # 80003520 <uartputc_sync>

0000000080002b74 <consoleintr>:
    80002b74:	fe010113          	addi	sp,sp,-32
    80002b78:	00813823          	sd	s0,16(sp)
    80002b7c:	00913423          	sd	s1,8(sp)
    80002b80:	01213023          	sd	s2,0(sp)
    80002b84:	00113c23          	sd	ra,24(sp)
    80002b88:	02010413          	addi	s0,sp,32
    80002b8c:	00004917          	auipc	s2,0x4
    80002b90:	e5c90913          	addi	s2,s2,-420 # 800069e8 <cons>
    80002b94:	00050493          	mv	s1,a0
    80002b98:	00090513          	mv	a0,s2
    80002b9c:	00001097          	auipc	ra,0x1
    80002ba0:	e40080e7          	jalr	-448(ra) # 800039dc <acquire>
    80002ba4:	02048c63          	beqz	s1,80002bdc <consoleintr+0x68>
    80002ba8:	0a092783          	lw	a5,160(s2)
    80002bac:	09892703          	lw	a4,152(s2)
    80002bb0:	07f00693          	li	a3,127
    80002bb4:	40e7873b          	subw	a4,a5,a4
    80002bb8:	02e6e263          	bltu	a3,a4,80002bdc <consoleintr+0x68>
    80002bbc:	00d00713          	li	a4,13
    80002bc0:	04e48063          	beq	s1,a4,80002c00 <consoleintr+0x8c>
    80002bc4:	07f7f713          	andi	a4,a5,127
    80002bc8:	00e90733          	add	a4,s2,a4
    80002bcc:	0017879b          	addiw	a5,a5,1
    80002bd0:	0af92023          	sw	a5,160(s2)
    80002bd4:	00970c23          	sb	s1,24(a4)
    80002bd8:	08f92e23          	sw	a5,156(s2)
    80002bdc:	01013403          	ld	s0,16(sp)
    80002be0:	01813083          	ld	ra,24(sp)
    80002be4:	00813483          	ld	s1,8(sp)
    80002be8:	00013903          	ld	s2,0(sp)
    80002bec:	00004517          	auipc	a0,0x4
    80002bf0:	dfc50513          	addi	a0,a0,-516 # 800069e8 <cons>
    80002bf4:	02010113          	addi	sp,sp,32
    80002bf8:	00001317          	auipc	t1,0x1
    80002bfc:	eb030067          	jr	-336(t1) # 80003aa8 <release>
    80002c00:	00a00493          	li	s1,10
    80002c04:	fc1ff06f          	j	80002bc4 <consoleintr+0x50>

0000000080002c08 <consoleinit>:
    80002c08:	fe010113          	addi	sp,sp,-32
    80002c0c:	00113c23          	sd	ra,24(sp)
    80002c10:	00813823          	sd	s0,16(sp)
    80002c14:	00913423          	sd	s1,8(sp)
    80002c18:	02010413          	addi	s0,sp,32
    80002c1c:	00004497          	auipc	s1,0x4
    80002c20:	dcc48493          	addi	s1,s1,-564 # 800069e8 <cons>
    80002c24:	00048513          	mv	a0,s1
    80002c28:	00002597          	auipc	a1,0x2
    80002c2c:	5d058593          	addi	a1,a1,1488 # 800051f8 <_ZZ12printIntegermE6digits+0x138>
    80002c30:	00001097          	auipc	ra,0x1
    80002c34:	d88080e7          	jalr	-632(ra) # 800039b8 <initlock>
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	7ac080e7          	jalr	1964(ra) # 800033e4 <uartinit>
    80002c40:	01813083          	ld	ra,24(sp)
    80002c44:	01013403          	ld	s0,16(sp)
    80002c48:	00000797          	auipc	a5,0x0
    80002c4c:	d9c78793          	addi	a5,a5,-612 # 800029e4 <consoleread>
    80002c50:	0af4bc23          	sd	a5,184(s1)
    80002c54:	00000797          	auipc	a5,0x0
    80002c58:	cec78793          	addi	a5,a5,-788 # 80002940 <consolewrite>
    80002c5c:	0cf4b023          	sd	a5,192(s1)
    80002c60:	00813483          	ld	s1,8(sp)
    80002c64:	02010113          	addi	sp,sp,32
    80002c68:	00008067          	ret

0000000080002c6c <console_read>:
    80002c6c:	ff010113          	addi	sp,sp,-16
    80002c70:	00813423          	sd	s0,8(sp)
    80002c74:	01010413          	addi	s0,sp,16
    80002c78:	00813403          	ld	s0,8(sp)
    80002c7c:	00004317          	auipc	t1,0x4
    80002c80:	e2433303          	ld	t1,-476(t1) # 80006aa0 <devsw+0x10>
    80002c84:	01010113          	addi	sp,sp,16
    80002c88:	00030067          	jr	t1

0000000080002c8c <console_write>:
    80002c8c:	ff010113          	addi	sp,sp,-16
    80002c90:	00813423          	sd	s0,8(sp)
    80002c94:	01010413          	addi	s0,sp,16
    80002c98:	00813403          	ld	s0,8(sp)
    80002c9c:	00004317          	auipc	t1,0x4
    80002ca0:	e0c33303          	ld	t1,-500(t1) # 80006aa8 <devsw+0x18>
    80002ca4:	01010113          	addi	sp,sp,16
    80002ca8:	00030067          	jr	t1

0000000080002cac <panic>:
    80002cac:	fe010113          	addi	sp,sp,-32
    80002cb0:	00113c23          	sd	ra,24(sp)
    80002cb4:	00813823          	sd	s0,16(sp)
    80002cb8:	00913423          	sd	s1,8(sp)
    80002cbc:	02010413          	addi	s0,sp,32
    80002cc0:	00050493          	mv	s1,a0
    80002cc4:	00002517          	auipc	a0,0x2
    80002cc8:	53c50513          	addi	a0,a0,1340 # 80005200 <_ZZ12printIntegermE6digits+0x140>
    80002ccc:	00004797          	auipc	a5,0x4
    80002cd0:	e607ae23          	sw	zero,-388(a5) # 80006b48 <pr+0x18>
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	034080e7          	jalr	52(ra) # 80002d08 <__printf>
    80002cdc:	00048513          	mv	a0,s1
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	028080e7          	jalr	40(ra) # 80002d08 <__printf>
    80002ce8:	00002517          	auipc	a0,0x2
    80002cec:	3d050513          	addi	a0,a0,976 # 800050b8 <CONSOLE_STATUS+0xa8>
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	018080e7          	jalr	24(ra) # 80002d08 <__printf>
    80002cf8:	00100793          	li	a5,1
    80002cfc:	00003717          	auipc	a4,0x3
    80002d00:	baf72e23          	sw	a5,-1092(a4) # 800058b8 <panicked>
    80002d04:	0000006f          	j	80002d04 <panic+0x58>

0000000080002d08 <__printf>:
    80002d08:	f3010113          	addi	sp,sp,-208
    80002d0c:	08813023          	sd	s0,128(sp)
    80002d10:	07313423          	sd	s3,104(sp)
    80002d14:	09010413          	addi	s0,sp,144
    80002d18:	05813023          	sd	s8,64(sp)
    80002d1c:	08113423          	sd	ra,136(sp)
    80002d20:	06913c23          	sd	s1,120(sp)
    80002d24:	07213823          	sd	s2,112(sp)
    80002d28:	07413023          	sd	s4,96(sp)
    80002d2c:	05513c23          	sd	s5,88(sp)
    80002d30:	05613823          	sd	s6,80(sp)
    80002d34:	05713423          	sd	s7,72(sp)
    80002d38:	03913c23          	sd	s9,56(sp)
    80002d3c:	03a13823          	sd	s10,48(sp)
    80002d40:	03b13423          	sd	s11,40(sp)
    80002d44:	00004317          	auipc	t1,0x4
    80002d48:	dec30313          	addi	t1,t1,-532 # 80006b30 <pr>
    80002d4c:	01832c03          	lw	s8,24(t1)
    80002d50:	00b43423          	sd	a1,8(s0)
    80002d54:	00c43823          	sd	a2,16(s0)
    80002d58:	00d43c23          	sd	a3,24(s0)
    80002d5c:	02e43023          	sd	a4,32(s0)
    80002d60:	02f43423          	sd	a5,40(s0)
    80002d64:	03043823          	sd	a6,48(s0)
    80002d68:	03143c23          	sd	a7,56(s0)
    80002d6c:	00050993          	mv	s3,a0
    80002d70:	4a0c1663          	bnez	s8,8000321c <__printf+0x514>
    80002d74:	60098c63          	beqz	s3,8000338c <__printf+0x684>
    80002d78:	0009c503          	lbu	a0,0(s3)
    80002d7c:	00840793          	addi	a5,s0,8
    80002d80:	f6f43c23          	sd	a5,-136(s0)
    80002d84:	00000493          	li	s1,0
    80002d88:	22050063          	beqz	a0,80002fa8 <__printf+0x2a0>
    80002d8c:	00002a37          	lui	s4,0x2
    80002d90:	00018ab7          	lui	s5,0x18
    80002d94:	000f4b37          	lui	s6,0xf4
    80002d98:	00989bb7          	lui	s7,0x989
    80002d9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002da0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002da4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002da8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002dac:	00148c9b          	addiw	s9,s1,1
    80002db0:	02500793          	li	a5,37
    80002db4:	01998933          	add	s2,s3,s9
    80002db8:	38f51263          	bne	a0,a5,8000313c <__printf+0x434>
    80002dbc:	00094783          	lbu	a5,0(s2)
    80002dc0:	00078c9b          	sext.w	s9,a5
    80002dc4:	1e078263          	beqz	a5,80002fa8 <__printf+0x2a0>
    80002dc8:	0024849b          	addiw	s1,s1,2
    80002dcc:	07000713          	li	a4,112
    80002dd0:	00998933          	add	s2,s3,s1
    80002dd4:	38e78a63          	beq	a5,a4,80003168 <__printf+0x460>
    80002dd8:	20f76863          	bltu	a4,a5,80002fe8 <__printf+0x2e0>
    80002ddc:	42a78863          	beq	a5,a0,8000320c <__printf+0x504>
    80002de0:	06400713          	li	a4,100
    80002de4:	40e79663          	bne	a5,a4,800031f0 <__printf+0x4e8>
    80002de8:	f7843783          	ld	a5,-136(s0)
    80002dec:	0007a603          	lw	a2,0(a5)
    80002df0:	00878793          	addi	a5,a5,8
    80002df4:	f6f43c23          	sd	a5,-136(s0)
    80002df8:	42064a63          	bltz	a2,8000322c <__printf+0x524>
    80002dfc:	00a00713          	li	a4,10
    80002e00:	02e677bb          	remuw	a5,a2,a4
    80002e04:	00002d97          	auipc	s11,0x2
    80002e08:	424d8d93          	addi	s11,s11,1060 # 80005228 <digits>
    80002e0c:	00900593          	li	a1,9
    80002e10:	0006051b          	sext.w	a0,a2
    80002e14:	00000c93          	li	s9,0
    80002e18:	02079793          	slli	a5,a5,0x20
    80002e1c:	0207d793          	srli	a5,a5,0x20
    80002e20:	00fd87b3          	add	a5,s11,a5
    80002e24:	0007c783          	lbu	a5,0(a5)
    80002e28:	02e656bb          	divuw	a3,a2,a4
    80002e2c:	f8f40023          	sb	a5,-128(s0)
    80002e30:	14c5d863          	bge	a1,a2,80002f80 <__printf+0x278>
    80002e34:	06300593          	li	a1,99
    80002e38:	00100c93          	li	s9,1
    80002e3c:	02e6f7bb          	remuw	a5,a3,a4
    80002e40:	02079793          	slli	a5,a5,0x20
    80002e44:	0207d793          	srli	a5,a5,0x20
    80002e48:	00fd87b3          	add	a5,s11,a5
    80002e4c:	0007c783          	lbu	a5,0(a5)
    80002e50:	02e6d73b          	divuw	a4,a3,a4
    80002e54:	f8f400a3          	sb	a5,-127(s0)
    80002e58:	12a5f463          	bgeu	a1,a0,80002f80 <__printf+0x278>
    80002e5c:	00a00693          	li	a3,10
    80002e60:	00900593          	li	a1,9
    80002e64:	02d777bb          	remuw	a5,a4,a3
    80002e68:	02079793          	slli	a5,a5,0x20
    80002e6c:	0207d793          	srli	a5,a5,0x20
    80002e70:	00fd87b3          	add	a5,s11,a5
    80002e74:	0007c503          	lbu	a0,0(a5)
    80002e78:	02d757bb          	divuw	a5,a4,a3
    80002e7c:	f8a40123          	sb	a0,-126(s0)
    80002e80:	48e5f263          	bgeu	a1,a4,80003304 <__printf+0x5fc>
    80002e84:	06300513          	li	a0,99
    80002e88:	02d7f5bb          	remuw	a1,a5,a3
    80002e8c:	02059593          	slli	a1,a1,0x20
    80002e90:	0205d593          	srli	a1,a1,0x20
    80002e94:	00bd85b3          	add	a1,s11,a1
    80002e98:	0005c583          	lbu	a1,0(a1)
    80002e9c:	02d7d7bb          	divuw	a5,a5,a3
    80002ea0:	f8b401a3          	sb	a1,-125(s0)
    80002ea4:	48e57263          	bgeu	a0,a4,80003328 <__printf+0x620>
    80002ea8:	3e700513          	li	a0,999
    80002eac:	02d7f5bb          	remuw	a1,a5,a3
    80002eb0:	02059593          	slli	a1,a1,0x20
    80002eb4:	0205d593          	srli	a1,a1,0x20
    80002eb8:	00bd85b3          	add	a1,s11,a1
    80002ebc:	0005c583          	lbu	a1,0(a1)
    80002ec0:	02d7d7bb          	divuw	a5,a5,a3
    80002ec4:	f8b40223          	sb	a1,-124(s0)
    80002ec8:	46e57663          	bgeu	a0,a4,80003334 <__printf+0x62c>
    80002ecc:	02d7f5bb          	remuw	a1,a5,a3
    80002ed0:	02059593          	slli	a1,a1,0x20
    80002ed4:	0205d593          	srli	a1,a1,0x20
    80002ed8:	00bd85b3          	add	a1,s11,a1
    80002edc:	0005c583          	lbu	a1,0(a1)
    80002ee0:	02d7d7bb          	divuw	a5,a5,a3
    80002ee4:	f8b402a3          	sb	a1,-123(s0)
    80002ee8:	46ea7863          	bgeu	s4,a4,80003358 <__printf+0x650>
    80002eec:	02d7f5bb          	remuw	a1,a5,a3
    80002ef0:	02059593          	slli	a1,a1,0x20
    80002ef4:	0205d593          	srli	a1,a1,0x20
    80002ef8:	00bd85b3          	add	a1,s11,a1
    80002efc:	0005c583          	lbu	a1,0(a1)
    80002f00:	02d7d7bb          	divuw	a5,a5,a3
    80002f04:	f8b40323          	sb	a1,-122(s0)
    80002f08:	3eeaf863          	bgeu	s5,a4,800032f8 <__printf+0x5f0>
    80002f0c:	02d7f5bb          	remuw	a1,a5,a3
    80002f10:	02059593          	slli	a1,a1,0x20
    80002f14:	0205d593          	srli	a1,a1,0x20
    80002f18:	00bd85b3          	add	a1,s11,a1
    80002f1c:	0005c583          	lbu	a1,0(a1)
    80002f20:	02d7d7bb          	divuw	a5,a5,a3
    80002f24:	f8b403a3          	sb	a1,-121(s0)
    80002f28:	42eb7e63          	bgeu	s6,a4,80003364 <__printf+0x65c>
    80002f2c:	02d7f5bb          	remuw	a1,a5,a3
    80002f30:	02059593          	slli	a1,a1,0x20
    80002f34:	0205d593          	srli	a1,a1,0x20
    80002f38:	00bd85b3          	add	a1,s11,a1
    80002f3c:	0005c583          	lbu	a1,0(a1)
    80002f40:	02d7d7bb          	divuw	a5,a5,a3
    80002f44:	f8b40423          	sb	a1,-120(s0)
    80002f48:	42ebfc63          	bgeu	s7,a4,80003380 <__printf+0x678>
    80002f4c:	02079793          	slli	a5,a5,0x20
    80002f50:	0207d793          	srli	a5,a5,0x20
    80002f54:	00fd8db3          	add	s11,s11,a5
    80002f58:	000dc703          	lbu	a4,0(s11)
    80002f5c:	00a00793          	li	a5,10
    80002f60:	00900c93          	li	s9,9
    80002f64:	f8e404a3          	sb	a4,-119(s0)
    80002f68:	00065c63          	bgez	a2,80002f80 <__printf+0x278>
    80002f6c:	f9040713          	addi	a4,s0,-112
    80002f70:	00f70733          	add	a4,a4,a5
    80002f74:	02d00693          	li	a3,45
    80002f78:	fed70823          	sb	a3,-16(a4)
    80002f7c:	00078c93          	mv	s9,a5
    80002f80:	f8040793          	addi	a5,s0,-128
    80002f84:	01978cb3          	add	s9,a5,s9
    80002f88:	f7f40d13          	addi	s10,s0,-129
    80002f8c:	000cc503          	lbu	a0,0(s9)
    80002f90:	fffc8c93          	addi	s9,s9,-1
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	b90080e7          	jalr	-1136(ra) # 80002b24 <consputc>
    80002f9c:	ffac98e3          	bne	s9,s10,80002f8c <__printf+0x284>
    80002fa0:	00094503          	lbu	a0,0(s2)
    80002fa4:	e00514e3          	bnez	a0,80002dac <__printf+0xa4>
    80002fa8:	1a0c1663          	bnez	s8,80003154 <__printf+0x44c>
    80002fac:	08813083          	ld	ra,136(sp)
    80002fb0:	08013403          	ld	s0,128(sp)
    80002fb4:	07813483          	ld	s1,120(sp)
    80002fb8:	07013903          	ld	s2,112(sp)
    80002fbc:	06813983          	ld	s3,104(sp)
    80002fc0:	06013a03          	ld	s4,96(sp)
    80002fc4:	05813a83          	ld	s5,88(sp)
    80002fc8:	05013b03          	ld	s6,80(sp)
    80002fcc:	04813b83          	ld	s7,72(sp)
    80002fd0:	04013c03          	ld	s8,64(sp)
    80002fd4:	03813c83          	ld	s9,56(sp)
    80002fd8:	03013d03          	ld	s10,48(sp)
    80002fdc:	02813d83          	ld	s11,40(sp)
    80002fe0:	0d010113          	addi	sp,sp,208
    80002fe4:	00008067          	ret
    80002fe8:	07300713          	li	a4,115
    80002fec:	1ce78a63          	beq	a5,a4,800031c0 <__printf+0x4b8>
    80002ff0:	07800713          	li	a4,120
    80002ff4:	1ee79e63          	bne	a5,a4,800031f0 <__printf+0x4e8>
    80002ff8:	f7843783          	ld	a5,-136(s0)
    80002ffc:	0007a703          	lw	a4,0(a5)
    80003000:	00878793          	addi	a5,a5,8
    80003004:	f6f43c23          	sd	a5,-136(s0)
    80003008:	28074263          	bltz	a4,8000328c <__printf+0x584>
    8000300c:	00002d97          	auipc	s11,0x2
    80003010:	21cd8d93          	addi	s11,s11,540 # 80005228 <digits>
    80003014:	00f77793          	andi	a5,a4,15
    80003018:	00fd87b3          	add	a5,s11,a5
    8000301c:	0007c683          	lbu	a3,0(a5)
    80003020:	00f00613          	li	a2,15
    80003024:	0007079b          	sext.w	a5,a4
    80003028:	f8d40023          	sb	a3,-128(s0)
    8000302c:	0047559b          	srliw	a1,a4,0x4
    80003030:	0047569b          	srliw	a3,a4,0x4
    80003034:	00000c93          	li	s9,0
    80003038:	0ee65063          	bge	a2,a4,80003118 <__printf+0x410>
    8000303c:	00f6f693          	andi	a3,a3,15
    80003040:	00dd86b3          	add	a3,s11,a3
    80003044:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003048:	0087d79b          	srliw	a5,a5,0x8
    8000304c:	00100c93          	li	s9,1
    80003050:	f8d400a3          	sb	a3,-127(s0)
    80003054:	0cb67263          	bgeu	a2,a1,80003118 <__printf+0x410>
    80003058:	00f7f693          	andi	a3,a5,15
    8000305c:	00dd86b3          	add	a3,s11,a3
    80003060:	0006c583          	lbu	a1,0(a3)
    80003064:	00f00613          	li	a2,15
    80003068:	0047d69b          	srliw	a3,a5,0x4
    8000306c:	f8b40123          	sb	a1,-126(s0)
    80003070:	0047d593          	srli	a1,a5,0x4
    80003074:	28f67e63          	bgeu	a2,a5,80003310 <__printf+0x608>
    80003078:	00f6f693          	andi	a3,a3,15
    8000307c:	00dd86b3          	add	a3,s11,a3
    80003080:	0006c503          	lbu	a0,0(a3)
    80003084:	0087d813          	srli	a6,a5,0x8
    80003088:	0087d69b          	srliw	a3,a5,0x8
    8000308c:	f8a401a3          	sb	a0,-125(s0)
    80003090:	28b67663          	bgeu	a2,a1,8000331c <__printf+0x614>
    80003094:	00f6f693          	andi	a3,a3,15
    80003098:	00dd86b3          	add	a3,s11,a3
    8000309c:	0006c583          	lbu	a1,0(a3)
    800030a0:	00c7d513          	srli	a0,a5,0xc
    800030a4:	00c7d69b          	srliw	a3,a5,0xc
    800030a8:	f8b40223          	sb	a1,-124(s0)
    800030ac:	29067a63          	bgeu	a2,a6,80003340 <__printf+0x638>
    800030b0:	00f6f693          	andi	a3,a3,15
    800030b4:	00dd86b3          	add	a3,s11,a3
    800030b8:	0006c583          	lbu	a1,0(a3)
    800030bc:	0107d813          	srli	a6,a5,0x10
    800030c0:	0107d69b          	srliw	a3,a5,0x10
    800030c4:	f8b402a3          	sb	a1,-123(s0)
    800030c8:	28a67263          	bgeu	a2,a0,8000334c <__printf+0x644>
    800030cc:	00f6f693          	andi	a3,a3,15
    800030d0:	00dd86b3          	add	a3,s11,a3
    800030d4:	0006c683          	lbu	a3,0(a3)
    800030d8:	0147d79b          	srliw	a5,a5,0x14
    800030dc:	f8d40323          	sb	a3,-122(s0)
    800030e0:	21067663          	bgeu	a2,a6,800032ec <__printf+0x5e4>
    800030e4:	02079793          	slli	a5,a5,0x20
    800030e8:	0207d793          	srli	a5,a5,0x20
    800030ec:	00fd8db3          	add	s11,s11,a5
    800030f0:	000dc683          	lbu	a3,0(s11)
    800030f4:	00800793          	li	a5,8
    800030f8:	00700c93          	li	s9,7
    800030fc:	f8d403a3          	sb	a3,-121(s0)
    80003100:	00075c63          	bgez	a4,80003118 <__printf+0x410>
    80003104:	f9040713          	addi	a4,s0,-112
    80003108:	00f70733          	add	a4,a4,a5
    8000310c:	02d00693          	li	a3,45
    80003110:	fed70823          	sb	a3,-16(a4)
    80003114:	00078c93          	mv	s9,a5
    80003118:	f8040793          	addi	a5,s0,-128
    8000311c:	01978cb3          	add	s9,a5,s9
    80003120:	f7f40d13          	addi	s10,s0,-129
    80003124:	000cc503          	lbu	a0,0(s9)
    80003128:	fffc8c93          	addi	s9,s9,-1
    8000312c:	00000097          	auipc	ra,0x0
    80003130:	9f8080e7          	jalr	-1544(ra) # 80002b24 <consputc>
    80003134:	ff9d18e3          	bne	s10,s9,80003124 <__printf+0x41c>
    80003138:	0100006f          	j	80003148 <__printf+0x440>
    8000313c:	00000097          	auipc	ra,0x0
    80003140:	9e8080e7          	jalr	-1560(ra) # 80002b24 <consputc>
    80003144:	000c8493          	mv	s1,s9
    80003148:	00094503          	lbu	a0,0(s2)
    8000314c:	c60510e3          	bnez	a0,80002dac <__printf+0xa4>
    80003150:	e40c0ee3          	beqz	s8,80002fac <__printf+0x2a4>
    80003154:	00004517          	auipc	a0,0x4
    80003158:	9dc50513          	addi	a0,a0,-1572 # 80006b30 <pr>
    8000315c:	00001097          	auipc	ra,0x1
    80003160:	94c080e7          	jalr	-1716(ra) # 80003aa8 <release>
    80003164:	e49ff06f          	j	80002fac <__printf+0x2a4>
    80003168:	f7843783          	ld	a5,-136(s0)
    8000316c:	03000513          	li	a0,48
    80003170:	01000d13          	li	s10,16
    80003174:	00878713          	addi	a4,a5,8
    80003178:	0007bc83          	ld	s9,0(a5)
    8000317c:	f6e43c23          	sd	a4,-136(s0)
    80003180:	00000097          	auipc	ra,0x0
    80003184:	9a4080e7          	jalr	-1628(ra) # 80002b24 <consputc>
    80003188:	07800513          	li	a0,120
    8000318c:	00000097          	auipc	ra,0x0
    80003190:	998080e7          	jalr	-1640(ra) # 80002b24 <consputc>
    80003194:	00002d97          	auipc	s11,0x2
    80003198:	094d8d93          	addi	s11,s11,148 # 80005228 <digits>
    8000319c:	03ccd793          	srli	a5,s9,0x3c
    800031a0:	00fd87b3          	add	a5,s11,a5
    800031a4:	0007c503          	lbu	a0,0(a5)
    800031a8:	fffd0d1b          	addiw	s10,s10,-1
    800031ac:	004c9c93          	slli	s9,s9,0x4
    800031b0:	00000097          	auipc	ra,0x0
    800031b4:	974080e7          	jalr	-1676(ra) # 80002b24 <consputc>
    800031b8:	fe0d12e3          	bnez	s10,8000319c <__printf+0x494>
    800031bc:	f8dff06f          	j	80003148 <__printf+0x440>
    800031c0:	f7843783          	ld	a5,-136(s0)
    800031c4:	0007bc83          	ld	s9,0(a5)
    800031c8:	00878793          	addi	a5,a5,8
    800031cc:	f6f43c23          	sd	a5,-136(s0)
    800031d0:	000c9a63          	bnez	s9,800031e4 <__printf+0x4dc>
    800031d4:	1080006f          	j	800032dc <__printf+0x5d4>
    800031d8:	001c8c93          	addi	s9,s9,1
    800031dc:	00000097          	auipc	ra,0x0
    800031e0:	948080e7          	jalr	-1720(ra) # 80002b24 <consputc>
    800031e4:	000cc503          	lbu	a0,0(s9)
    800031e8:	fe0518e3          	bnez	a0,800031d8 <__printf+0x4d0>
    800031ec:	f5dff06f          	j	80003148 <__printf+0x440>
    800031f0:	02500513          	li	a0,37
    800031f4:	00000097          	auipc	ra,0x0
    800031f8:	930080e7          	jalr	-1744(ra) # 80002b24 <consputc>
    800031fc:	000c8513          	mv	a0,s9
    80003200:	00000097          	auipc	ra,0x0
    80003204:	924080e7          	jalr	-1756(ra) # 80002b24 <consputc>
    80003208:	f41ff06f          	j	80003148 <__printf+0x440>
    8000320c:	02500513          	li	a0,37
    80003210:	00000097          	auipc	ra,0x0
    80003214:	914080e7          	jalr	-1772(ra) # 80002b24 <consputc>
    80003218:	f31ff06f          	j	80003148 <__printf+0x440>
    8000321c:	00030513          	mv	a0,t1
    80003220:	00000097          	auipc	ra,0x0
    80003224:	7bc080e7          	jalr	1980(ra) # 800039dc <acquire>
    80003228:	b4dff06f          	j	80002d74 <__printf+0x6c>
    8000322c:	40c0053b          	negw	a0,a2
    80003230:	00a00713          	li	a4,10
    80003234:	02e576bb          	remuw	a3,a0,a4
    80003238:	00002d97          	auipc	s11,0x2
    8000323c:	ff0d8d93          	addi	s11,s11,-16 # 80005228 <digits>
    80003240:	ff700593          	li	a1,-9
    80003244:	02069693          	slli	a3,a3,0x20
    80003248:	0206d693          	srli	a3,a3,0x20
    8000324c:	00dd86b3          	add	a3,s11,a3
    80003250:	0006c683          	lbu	a3,0(a3)
    80003254:	02e557bb          	divuw	a5,a0,a4
    80003258:	f8d40023          	sb	a3,-128(s0)
    8000325c:	10b65e63          	bge	a2,a1,80003378 <__printf+0x670>
    80003260:	06300593          	li	a1,99
    80003264:	02e7f6bb          	remuw	a3,a5,a4
    80003268:	02069693          	slli	a3,a3,0x20
    8000326c:	0206d693          	srli	a3,a3,0x20
    80003270:	00dd86b3          	add	a3,s11,a3
    80003274:	0006c683          	lbu	a3,0(a3)
    80003278:	02e7d73b          	divuw	a4,a5,a4
    8000327c:	00200793          	li	a5,2
    80003280:	f8d400a3          	sb	a3,-127(s0)
    80003284:	bca5ece3          	bltu	a1,a0,80002e5c <__printf+0x154>
    80003288:	ce5ff06f          	j	80002f6c <__printf+0x264>
    8000328c:	40e007bb          	negw	a5,a4
    80003290:	00002d97          	auipc	s11,0x2
    80003294:	f98d8d93          	addi	s11,s11,-104 # 80005228 <digits>
    80003298:	00f7f693          	andi	a3,a5,15
    8000329c:	00dd86b3          	add	a3,s11,a3
    800032a0:	0006c583          	lbu	a1,0(a3)
    800032a4:	ff100613          	li	a2,-15
    800032a8:	0047d69b          	srliw	a3,a5,0x4
    800032ac:	f8b40023          	sb	a1,-128(s0)
    800032b0:	0047d59b          	srliw	a1,a5,0x4
    800032b4:	0ac75e63          	bge	a4,a2,80003370 <__printf+0x668>
    800032b8:	00f6f693          	andi	a3,a3,15
    800032bc:	00dd86b3          	add	a3,s11,a3
    800032c0:	0006c603          	lbu	a2,0(a3)
    800032c4:	00f00693          	li	a3,15
    800032c8:	0087d79b          	srliw	a5,a5,0x8
    800032cc:	f8c400a3          	sb	a2,-127(s0)
    800032d0:	d8b6e4e3          	bltu	a3,a1,80003058 <__printf+0x350>
    800032d4:	00200793          	li	a5,2
    800032d8:	e2dff06f          	j	80003104 <__printf+0x3fc>
    800032dc:	00002c97          	auipc	s9,0x2
    800032e0:	f2cc8c93          	addi	s9,s9,-212 # 80005208 <_ZZ12printIntegermE6digits+0x148>
    800032e4:	02800513          	li	a0,40
    800032e8:	ef1ff06f          	j	800031d8 <__printf+0x4d0>
    800032ec:	00700793          	li	a5,7
    800032f0:	00600c93          	li	s9,6
    800032f4:	e0dff06f          	j	80003100 <__printf+0x3f8>
    800032f8:	00700793          	li	a5,7
    800032fc:	00600c93          	li	s9,6
    80003300:	c69ff06f          	j	80002f68 <__printf+0x260>
    80003304:	00300793          	li	a5,3
    80003308:	00200c93          	li	s9,2
    8000330c:	c5dff06f          	j	80002f68 <__printf+0x260>
    80003310:	00300793          	li	a5,3
    80003314:	00200c93          	li	s9,2
    80003318:	de9ff06f          	j	80003100 <__printf+0x3f8>
    8000331c:	00400793          	li	a5,4
    80003320:	00300c93          	li	s9,3
    80003324:	dddff06f          	j	80003100 <__printf+0x3f8>
    80003328:	00400793          	li	a5,4
    8000332c:	00300c93          	li	s9,3
    80003330:	c39ff06f          	j	80002f68 <__printf+0x260>
    80003334:	00500793          	li	a5,5
    80003338:	00400c93          	li	s9,4
    8000333c:	c2dff06f          	j	80002f68 <__printf+0x260>
    80003340:	00500793          	li	a5,5
    80003344:	00400c93          	li	s9,4
    80003348:	db9ff06f          	j	80003100 <__printf+0x3f8>
    8000334c:	00600793          	li	a5,6
    80003350:	00500c93          	li	s9,5
    80003354:	dadff06f          	j	80003100 <__printf+0x3f8>
    80003358:	00600793          	li	a5,6
    8000335c:	00500c93          	li	s9,5
    80003360:	c09ff06f          	j	80002f68 <__printf+0x260>
    80003364:	00800793          	li	a5,8
    80003368:	00700c93          	li	s9,7
    8000336c:	bfdff06f          	j	80002f68 <__printf+0x260>
    80003370:	00100793          	li	a5,1
    80003374:	d91ff06f          	j	80003104 <__printf+0x3fc>
    80003378:	00100793          	li	a5,1
    8000337c:	bf1ff06f          	j	80002f6c <__printf+0x264>
    80003380:	00900793          	li	a5,9
    80003384:	00800c93          	li	s9,8
    80003388:	be1ff06f          	j	80002f68 <__printf+0x260>
    8000338c:	00002517          	auipc	a0,0x2
    80003390:	e8450513          	addi	a0,a0,-380 # 80005210 <_ZZ12printIntegermE6digits+0x150>
    80003394:	00000097          	auipc	ra,0x0
    80003398:	918080e7          	jalr	-1768(ra) # 80002cac <panic>

000000008000339c <printfinit>:
    8000339c:	fe010113          	addi	sp,sp,-32
    800033a0:	00813823          	sd	s0,16(sp)
    800033a4:	00913423          	sd	s1,8(sp)
    800033a8:	00113c23          	sd	ra,24(sp)
    800033ac:	02010413          	addi	s0,sp,32
    800033b0:	00003497          	auipc	s1,0x3
    800033b4:	78048493          	addi	s1,s1,1920 # 80006b30 <pr>
    800033b8:	00048513          	mv	a0,s1
    800033bc:	00002597          	auipc	a1,0x2
    800033c0:	e6458593          	addi	a1,a1,-412 # 80005220 <_ZZ12printIntegermE6digits+0x160>
    800033c4:	00000097          	auipc	ra,0x0
    800033c8:	5f4080e7          	jalr	1524(ra) # 800039b8 <initlock>
    800033cc:	01813083          	ld	ra,24(sp)
    800033d0:	01013403          	ld	s0,16(sp)
    800033d4:	0004ac23          	sw	zero,24(s1)
    800033d8:	00813483          	ld	s1,8(sp)
    800033dc:	02010113          	addi	sp,sp,32
    800033e0:	00008067          	ret

00000000800033e4 <uartinit>:
    800033e4:	ff010113          	addi	sp,sp,-16
    800033e8:	00813423          	sd	s0,8(sp)
    800033ec:	01010413          	addi	s0,sp,16
    800033f0:	100007b7          	lui	a5,0x10000
    800033f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800033f8:	f8000713          	li	a4,-128
    800033fc:	00e781a3          	sb	a4,3(a5)
    80003400:	00300713          	li	a4,3
    80003404:	00e78023          	sb	a4,0(a5)
    80003408:	000780a3          	sb	zero,1(a5)
    8000340c:	00e781a3          	sb	a4,3(a5)
    80003410:	00700693          	li	a3,7
    80003414:	00d78123          	sb	a3,2(a5)
    80003418:	00e780a3          	sb	a4,1(a5)
    8000341c:	00813403          	ld	s0,8(sp)
    80003420:	01010113          	addi	sp,sp,16
    80003424:	00008067          	ret

0000000080003428 <uartputc>:
    80003428:	00002797          	auipc	a5,0x2
    8000342c:	4907a783          	lw	a5,1168(a5) # 800058b8 <panicked>
    80003430:	00078463          	beqz	a5,80003438 <uartputc+0x10>
    80003434:	0000006f          	j	80003434 <uartputc+0xc>
    80003438:	fd010113          	addi	sp,sp,-48
    8000343c:	02813023          	sd	s0,32(sp)
    80003440:	00913c23          	sd	s1,24(sp)
    80003444:	01213823          	sd	s2,16(sp)
    80003448:	01313423          	sd	s3,8(sp)
    8000344c:	02113423          	sd	ra,40(sp)
    80003450:	03010413          	addi	s0,sp,48
    80003454:	00002917          	auipc	s2,0x2
    80003458:	46c90913          	addi	s2,s2,1132 # 800058c0 <uart_tx_r>
    8000345c:	00093783          	ld	a5,0(s2)
    80003460:	00002497          	auipc	s1,0x2
    80003464:	46848493          	addi	s1,s1,1128 # 800058c8 <uart_tx_w>
    80003468:	0004b703          	ld	a4,0(s1)
    8000346c:	02078693          	addi	a3,a5,32
    80003470:	00050993          	mv	s3,a0
    80003474:	02e69c63          	bne	a3,a4,800034ac <uartputc+0x84>
    80003478:	00001097          	auipc	ra,0x1
    8000347c:	834080e7          	jalr	-1996(ra) # 80003cac <push_on>
    80003480:	00093783          	ld	a5,0(s2)
    80003484:	0004b703          	ld	a4,0(s1)
    80003488:	02078793          	addi	a5,a5,32
    8000348c:	00e79463          	bne	a5,a4,80003494 <uartputc+0x6c>
    80003490:	0000006f          	j	80003490 <uartputc+0x68>
    80003494:	00001097          	auipc	ra,0x1
    80003498:	88c080e7          	jalr	-1908(ra) # 80003d20 <pop_on>
    8000349c:	00093783          	ld	a5,0(s2)
    800034a0:	0004b703          	ld	a4,0(s1)
    800034a4:	02078693          	addi	a3,a5,32
    800034a8:	fce688e3          	beq	a3,a4,80003478 <uartputc+0x50>
    800034ac:	01f77693          	andi	a3,a4,31
    800034b0:	00003597          	auipc	a1,0x3
    800034b4:	6a058593          	addi	a1,a1,1696 # 80006b50 <uart_tx_buf>
    800034b8:	00d586b3          	add	a3,a1,a3
    800034bc:	00170713          	addi	a4,a4,1
    800034c0:	01368023          	sb	s3,0(a3)
    800034c4:	00e4b023          	sd	a4,0(s1)
    800034c8:	10000637          	lui	a2,0x10000
    800034cc:	02f71063          	bne	a4,a5,800034ec <uartputc+0xc4>
    800034d0:	0340006f          	j	80003504 <uartputc+0xdc>
    800034d4:	00074703          	lbu	a4,0(a4)
    800034d8:	00f93023          	sd	a5,0(s2)
    800034dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800034e0:	00093783          	ld	a5,0(s2)
    800034e4:	0004b703          	ld	a4,0(s1)
    800034e8:	00f70e63          	beq	a4,a5,80003504 <uartputc+0xdc>
    800034ec:	00564683          	lbu	a3,5(a2)
    800034f0:	01f7f713          	andi	a4,a5,31
    800034f4:	00e58733          	add	a4,a1,a4
    800034f8:	0206f693          	andi	a3,a3,32
    800034fc:	00178793          	addi	a5,a5,1
    80003500:	fc069ae3          	bnez	a3,800034d4 <uartputc+0xac>
    80003504:	02813083          	ld	ra,40(sp)
    80003508:	02013403          	ld	s0,32(sp)
    8000350c:	01813483          	ld	s1,24(sp)
    80003510:	01013903          	ld	s2,16(sp)
    80003514:	00813983          	ld	s3,8(sp)
    80003518:	03010113          	addi	sp,sp,48
    8000351c:	00008067          	ret

0000000080003520 <uartputc_sync>:
    80003520:	ff010113          	addi	sp,sp,-16
    80003524:	00813423          	sd	s0,8(sp)
    80003528:	01010413          	addi	s0,sp,16
    8000352c:	00002717          	auipc	a4,0x2
    80003530:	38c72703          	lw	a4,908(a4) # 800058b8 <panicked>
    80003534:	02071663          	bnez	a4,80003560 <uartputc_sync+0x40>
    80003538:	00050793          	mv	a5,a0
    8000353c:	100006b7          	lui	a3,0x10000
    80003540:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003544:	02077713          	andi	a4,a4,32
    80003548:	fe070ce3          	beqz	a4,80003540 <uartputc_sync+0x20>
    8000354c:	0ff7f793          	andi	a5,a5,255
    80003550:	00f68023          	sb	a5,0(a3)
    80003554:	00813403          	ld	s0,8(sp)
    80003558:	01010113          	addi	sp,sp,16
    8000355c:	00008067          	ret
    80003560:	0000006f          	j	80003560 <uartputc_sync+0x40>

0000000080003564 <uartstart>:
    80003564:	ff010113          	addi	sp,sp,-16
    80003568:	00813423          	sd	s0,8(sp)
    8000356c:	01010413          	addi	s0,sp,16
    80003570:	00002617          	auipc	a2,0x2
    80003574:	35060613          	addi	a2,a2,848 # 800058c0 <uart_tx_r>
    80003578:	00002517          	auipc	a0,0x2
    8000357c:	35050513          	addi	a0,a0,848 # 800058c8 <uart_tx_w>
    80003580:	00063783          	ld	a5,0(a2)
    80003584:	00053703          	ld	a4,0(a0)
    80003588:	04f70263          	beq	a4,a5,800035cc <uartstart+0x68>
    8000358c:	100005b7          	lui	a1,0x10000
    80003590:	00003817          	auipc	a6,0x3
    80003594:	5c080813          	addi	a6,a6,1472 # 80006b50 <uart_tx_buf>
    80003598:	01c0006f          	j	800035b4 <uartstart+0x50>
    8000359c:	0006c703          	lbu	a4,0(a3)
    800035a0:	00f63023          	sd	a5,0(a2)
    800035a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800035a8:	00063783          	ld	a5,0(a2)
    800035ac:	00053703          	ld	a4,0(a0)
    800035b0:	00f70e63          	beq	a4,a5,800035cc <uartstart+0x68>
    800035b4:	01f7f713          	andi	a4,a5,31
    800035b8:	00e806b3          	add	a3,a6,a4
    800035bc:	0055c703          	lbu	a4,5(a1)
    800035c0:	00178793          	addi	a5,a5,1
    800035c4:	02077713          	andi	a4,a4,32
    800035c8:	fc071ae3          	bnez	a4,8000359c <uartstart+0x38>
    800035cc:	00813403          	ld	s0,8(sp)
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret

00000000800035d8 <uartgetc>:
    800035d8:	ff010113          	addi	sp,sp,-16
    800035dc:	00813423          	sd	s0,8(sp)
    800035e0:	01010413          	addi	s0,sp,16
    800035e4:	10000737          	lui	a4,0x10000
    800035e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800035ec:	0017f793          	andi	a5,a5,1
    800035f0:	00078c63          	beqz	a5,80003608 <uartgetc+0x30>
    800035f4:	00074503          	lbu	a0,0(a4)
    800035f8:	0ff57513          	andi	a0,a0,255
    800035fc:	00813403          	ld	s0,8(sp)
    80003600:	01010113          	addi	sp,sp,16
    80003604:	00008067          	ret
    80003608:	fff00513          	li	a0,-1
    8000360c:	ff1ff06f          	j	800035fc <uartgetc+0x24>

0000000080003610 <uartintr>:
    80003610:	100007b7          	lui	a5,0x10000
    80003614:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003618:	0017f793          	andi	a5,a5,1
    8000361c:	0a078463          	beqz	a5,800036c4 <uartintr+0xb4>
    80003620:	fe010113          	addi	sp,sp,-32
    80003624:	00813823          	sd	s0,16(sp)
    80003628:	00913423          	sd	s1,8(sp)
    8000362c:	00113c23          	sd	ra,24(sp)
    80003630:	02010413          	addi	s0,sp,32
    80003634:	100004b7          	lui	s1,0x10000
    80003638:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000363c:	0ff57513          	andi	a0,a0,255
    80003640:	fffff097          	auipc	ra,0xfffff
    80003644:	534080e7          	jalr	1332(ra) # 80002b74 <consoleintr>
    80003648:	0054c783          	lbu	a5,5(s1)
    8000364c:	0017f793          	andi	a5,a5,1
    80003650:	fe0794e3          	bnez	a5,80003638 <uartintr+0x28>
    80003654:	00002617          	auipc	a2,0x2
    80003658:	26c60613          	addi	a2,a2,620 # 800058c0 <uart_tx_r>
    8000365c:	00002517          	auipc	a0,0x2
    80003660:	26c50513          	addi	a0,a0,620 # 800058c8 <uart_tx_w>
    80003664:	00063783          	ld	a5,0(a2)
    80003668:	00053703          	ld	a4,0(a0)
    8000366c:	04f70263          	beq	a4,a5,800036b0 <uartintr+0xa0>
    80003670:	100005b7          	lui	a1,0x10000
    80003674:	00003817          	auipc	a6,0x3
    80003678:	4dc80813          	addi	a6,a6,1244 # 80006b50 <uart_tx_buf>
    8000367c:	01c0006f          	j	80003698 <uartintr+0x88>
    80003680:	0006c703          	lbu	a4,0(a3)
    80003684:	00f63023          	sd	a5,0(a2)
    80003688:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000368c:	00063783          	ld	a5,0(a2)
    80003690:	00053703          	ld	a4,0(a0)
    80003694:	00f70e63          	beq	a4,a5,800036b0 <uartintr+0xa0>
    80003698:	01f7f713          	andi	a4,a5,31
    8000369c:	00e806b3          	add	a3,a6,a4
    800036a0:	0055c703          	lbu	a4,5(a1)
    800036a4:	00178793          	addi	a5,a5,1
    800036a8:	02077713          	andi	a4,a4,32
    800036ac:	fc071ae3          	bnez	a4,80003680 <uartintr+0x70>
    800036b0:	01813083          	ld	ra,24(sp)
    800036b4:	01013403          	ld	s0,16(sp)
    800036b8:	00813483          	ld	s1,8(sp)
    800036bc:	02010113          	addi	sp,sp,32
    800036c0:	00008067          	ret
    800036c4:	00002617          	auipc	a2,0x2
    800036c8:	1fc60613          	addi	a2,a2,508 # 800058c0 <uart_tx_r>
    800036cc:	00002517          	auipc	a0,0x2
    800036d0:	1fc50513          	addi	a0,a0,508 # 800058c8 <uart_tx_w>
    800036d4:	00063783          	ld	a5,0(a2)
    800036d8:	00053703          	ld	a4,0(a0)
    800036dc:	04f70263          	beq	a4,a5,80003720 <uartintr+0x110>
    800036e0:	100005b7          	lui	a1,0x10000
    800036e4:	00003817          	auipc	a6,0x3
    800036e8:	46c80813          	addi	a6,a6,1132 # 80006b50 <uart_tx_buf>
    800036ec:	01c0006f          	j	80003708 <uartintr+0xf8>
    800036f0:	0006c703          	lbu	a4,0(a3)
    800036f4:	00f63023          	sd	a5,0(a2)
    800036f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800036fc:	00063783          	ld	a5,0(a2)
    80003700:	00053703          	ld	a4,0(a0)
    80003704:	02f70063          	beq	a4,a5,80003724 <uartintr+0x114>
    80003708:	01f7f713          	andi	a4,a5,31
    8000370c:	00e806b3          	add	a3,a6,a4
    80003710:	0055c703          	lbu	a4,5(a1)
    80003714:	00178793          	addi	a5,a5,1
    80003718:	02077713          	andi	a4,a4,32
    8000371c:	fc071ae3          	bnez	a4,800036f0 <uartintr+0xe0>
    80003720:	00008067          	ret
    80003724:	00008067          	ret

0000000080003728 <kinit>:
    80003728:	fc010113          	addi	sp,sp,-64
    8000372c:	02913423          	sd	s1,40(sp)
    80003730:	fffff7b7          	lui	a5,0xfffff
    80003734:	00004497          	auipc	s1,0x4
    80003738:	43b48493          	addi	s1,s1,1083 # 80007b6f <end+0xfff>
    8000373c:	02813823          	sd	s0,48(sp)
    80003740:	01313c23          	sd	s3,24(sp)
    80003744:	00f4f4b3          	and	s1,s1,a5
    80003748:	02113c23          	sd	ra,56(sp)
    8000374c:	03213023          	sd	s2,32(sp)
    80003750:	01413823          	sd	s4,16(sp)
    80003754:	01513423          	sd	s5,8(sp)
    80003758:	04010413          	addi	s0,sp,64
    8000375c:	000017b7          	lui	a5,0x1
    80003760:	01100993          	li	s3,17
    80003764:	00f487b3          	add	a5,s1,a5
    80003768:	01b99993          	slli	s3,s3,0x1b
    8000376c:	06f9e063          	bltu	s3,a5,800037cc <kinit+0xa4>
    80003770:	00003a97          	auipc	s5,0x3
    80003774:	400a8a93          	addi	s5,s5,1024 # 80006b70 <end>
    80003778:	0754ec63          	bltu	s1,s5,800037f0 <kinit+0xc8>
    8000377c:	0734fa63          	bgeu	s1,s3,800037f0 <kinit+0xc8>
    80003780:	00088a37          	lui	s4,0x88
    80003784:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003788:	00002917          	auipc	s2,0x2
    8000378c:	14890913          	addi	s2,s2,328 # 800058d0 <kmem>
    80003790:	00ca1a13          	slli	s4,s4,0xc
    80003794:	0140006f          	j	800037a8 <kinit+0x80>
    80003798:	000017b7          	lui	a5,0x1
    8000379c:	00f484b3          	add	s1,s1,a5
    800037a0:	0554e863          	bltu	s1,s5,800037f0 <kinit+0xc8>
    800037a4:	0534f663          	bgeu	s1,s3,800037f0 <kinit+0xc8>
    800037a8:	00001637          	lui	a2,0x1
    800037ac:	00100593          	li	a1,1
    800037b0:	00048513          	mv	a0,s1
    800037b4:	00000097          	auipc	ra,0x0
    800037b8:	5e4080e7          	jalr	1508(ra) # 80003d98 <__memset>
    800037bc:	00093783          	ld	a5,0(s2)
    800037c0:	00f4b023          	sd	a5,0(s1)
    800037c4:	00993023          	sd	s1,0(s2)
    800037c8:	fd4498e3          	bne	s1,s4,80003798 <kinit+0x70>
    800037cc:	03813083          	ld	ra,56(sp)
    800037d0:	03013403          	ld	s0,48(sp)
    800037d4:	02813483          	ld	s1,40(sp)
    800037d8:	02013903          	ld	s2,32(sp)
    800037dc:	01813983          	ld	s3,24(sp)
    800037e0:	01013a03          	ld	s4,16(sp)
    800037e4:	00813a83          	ld	s5,8(sp)
    800037e8:	04010113          	addi	sp,sp,64
    800037ec:	00008067          	ret
    800037f0:	00002517          	auipc	a0,0x2
    800037f4:	a5050513          	addi	a0,a0,-1456 # 80005240 <digits+0x18>
    800037f8:	fffff097          	auipc	ra,0xfffff
    800037fc:	4b4080e7          	jalr	1204(ra) # 80002cac <panic>

0000000080003800 <freerange>:
    80003800:	fc010113          	addi	sp,sp,-64
    80003804:	000017b7          	lui	a5,0x1
    80003808:	02913423          	sd	s1,40(sp)
    8000380c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003810:	009504b3          	add	s1,a0,s1
    80003814:	fffff537          	lui	a0,0xfffff
    80003818:	02813823          	sd	s0,48(sp)
    8000381c:	02113c23          	sd	ra,56(sp)
    80003820:	03213023          	sd	s2,32(sp)
    80003824:	01313c23          	sd	s3,24(sp)
    80003828:	01413823          	sd	s4,16(sp)
    8000382c:	01513423          	sd	s5,8(sp)
    80003830:	01613023          	sd	s6,0(sp)
    80003834:	04010413          	addi	s0,sp,64
    80003838:	00a4f4b3          	and	s1,s1,a0
    8000383c:	00f487b3          	add	a5,s1,a5
    80003840:	06f5e463          	bltu	a1,a5,800038a8 <freerange+0xa8>
    80003844:	00003a97          	auipc	s5,0x3
    80003848:	32ca8a93          	addi	s5,s5,812 # 80006b70 <end>
    8000384c:	0954e263          	bltu	s1,s5,800038d0 <freerange+0xd0>
    80003850:	01100993          	li	s3,17
    80003854:	01b99993          	slli	s3,s3,0x1b
    80003858:	0734fc63          	bgeu	s1,s3,800038d0 <freerange+0xd0>
    8000385c:	00058a13          	mv	s4,a1
    80003860:	00002917          	auipc	s2,0x2
    80003864:	07090913          	addi	s2,s2,112 # 800058d0 <kmem>
    80003868:	00002b37          	lui	s6,0x2
    8000386c:	0140006f          	j	80003880 <freerange+0x80>
    80003870:	000017b7          	lui	a5,0x1
    80003874:	00f484b3          	add	s1,s1,a5
    80003878:	0554ec63          	bltu	s1,s5,800038d0 <freerange+0xd0>
    8000387c:	0534fa63          	bgeu	s1,s3,800038d0 <freerange+0xd0>
    80003880:	00001637          	lui	a2,0x1
    80003884:	00100593          	li	a1,1
    80003888:	00048513          	mv	a0,s1
    8000388c:	00000097          	auipc	ra,0x0
    80003890:	50c080e7          	jalr	1292(ra) # 80003d98 <__memset>
    80003894:	00093703          	ld	a4,0(s2)
    80003898:	016487b3          	add	a5,s1,s6
    8000389c:	00e4b023          	sd	a4,0(s1)
    800038a0:	00993023          	sd	s1,0(s2)
    800038a4:	fcfa76e3          	bgeu	s4,a5,80003870 <freerange+0x70>
    800038a8:	03813083          	ld	ra,56(sp)
    800038ac:	03013403          	ld	s0,48(sp)
    800038b0:	02813483          	ld	s1,40(sp)
    800038b4:	02013903          	ld	s2,32(sp)
    800038b8:	01813983          	ld	s3,24(sp)
    800038bc:	01013a03          	ld	s4,16(sp)
    800038c0:	00813a83          	ld	s5,8(sp)
    800038c4:	00013b03          	ld	s6,0(sp)
    800038c8:	04010113          	addi	sp,sp,64
    800038cc:	00008067          	ret
    800038d0:	00002517          	auipc	a0,0x2
    800038d4:	97050513          	addi	a0,a0,-1680 # 80005240 <digits+0x18>
    800038d8:	fffff097          	auipc	ra,0xfffff
    800038dc:	3d4080e7          	jalr	980(ra) # 80002cac <panic>

00000000800038e0 <kfree>:
    800038e0:	fe010113          	addi	sp,sp,-32
    800038e4:	00813823          	sd	s0,16(sp)
    800038e8:	00113c23          	sd	ra,24(sp)
    800038ec:	00913423          	sd	s1,8(sp)
    800038f0:	02010413          	addi	s0,sp,32
    800038f4:	03451793          	slli	a5,a0,0x34
    800038f8:	04079c63          	bnez	a5,80003950 <kfree+0x70>
    800038fc:	00003797          	auipc	a5,0x3
    80003900:	27478793          	addi	a5,a5,628 # 80006b70 <end>
    80003904:	00050493          	mv	s1,a0
    80003908:	04f56463          	bltu	a0,a5,80003950 <kfree+0x70>
    8000390c:	01100793          	li	a5,17
    80003910:	01b79793          	slli	a5,a5,0x1b
    80003914:	02f57e63          	bgeu	a0,a5,80003950 <kfree+0x70>
    80003918:	00001637          	lui	a2,0x1
    8000391c:	00100593          	li	a1,1
    80003920:	00000097          	auipc	ra,0x0
    80003924:	478080e7          	jalr	1144(ra) # 80003d98 <__memset>
    80003928:	00002797          	auipc	a5,0x2
    8000392c:	fa878793          	addi	a5,a5,-88 # 800058d0 <kmem>
    80003930:	0007b703          	ld	a4,0(a5)
    80003934:	01813083          	ld	ra,24(sp)
    80003938:	01013403          	ld	s0,16(sp)
    8000393c:	00e4b023          	sd	a4,0(s1)
    80003940:	0097b023          	sd	s1,0(a5)
    80003944:	00813483          	ld	s1,8(sp)
    80003948:	02010113          	addi	sp,sp,32
    8000394c:	00008067          	ret
    80003950:	00002517          	auipc	a0,0x2
    80003954:	8f050513          	addi	a0,a0,-1808 # 80005240 <digits+0x18>
    80003958:	fffff097          	auipc	ra,0xfffff
    8000395c:	354080e7          	jalr	852(ra) # 80002cac <panic>

0000000080003960 <kalloc>:
    80003960:	fe010113          	addi	sp,sp,-32
    80003964:	00813823          	sd	s0,16(sp)
    80003968:	00913423          	sd	s1,8(sp)
    8000396c:	00113c23          	sd	ra,24(sp)
    80003970:	02010413          	addi	s0,sp,32
    80003974:	00002797          	auipc	a5,0x2
    80003978:	f5c78793          	addi	a5,a5,-164 # 800058d0 <kmem>
    8000397c:	0007b483          	ld	s1,0(a5)
    80003980:	02048063          	beqz	s1,800039a0 <kalloc+0x40>
    80003984:	0004b703          	ld	a4,0(s1)
    80003988:	00001637          	lui	a2,0x1
    8000398c:	00500593          	li	a1,5
    80003990:	00048513          	mv	a0,s1
    80003994:	00e7b023          	sd	a4,0(a5)
    80003998:	00000097          	auipc	ra,0x0
    8000399c:	400080e7          	jalr	1024(ra) # 80003d98 <__memset>
    800039a0:	01813083          	ld	ra,24(sp)
    800039a4:	01013403          	ld	s0,16(sp)
    800039a8:	00048513          	mv	a0,s1
    800039ac:	00813483          	ld	s1,8(sp)
    800039b0:	02010113          	addi	sp,sp,32
    800039b4:	00008067          	ret

00000000800039b8 <initlock>:
    800039b8:	ff010113          	addi	sp,sp,-16
    800039bc:	00813423          	sd	s0,8(sp)
    800039c0:	01010413          	addi	s0,sp,16
    800039c4:	00813403          	ld	s0,8(sp)
    800039c8:	00b53423          	sd	a1,8(a0)
    800039cc:	00052023          	sw	zero,0(a0)
    800039d0:	00053823          	sd	zero,16(a0)
    800039d4:	01010113          	addi	sp,sp,16
    800039d8:	00008067          	ret

00000000800039dc <acquire>:
    800039dc:	fe010113          	addi	sp,sp,-32
    800039e0:	00813823          	sd	s0,16(sp)
    800039e4:	00913423          	sd	s1,8(sp)
    800039e8:	00113c23          	sd	ra,24(sp)
    800039ec:	01213023          	sd	s2,0(sp)
    800039f0:	02010413          	addi	s0,sp,32
    800039f4:	00050493          	mv	s1,a0
    800039f8:	10002973          	csrr	s2,sstatus
    800039fc:	100027f3          	csrr	a5,sstatus
    80003a00:	ffd7f793          	andi	a5,a5,-3
    80003a04:	10079073          	csrw	sstatus,a5
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	8ec080e7          	jalr	-1812(ra) # 800022f4 <mycpu>
    80003a10:	07852783          	lw	a5,120(a0)
    80003a14:	06078e63          	beqz	a5,80003a90 <acquire+0xb4>
    80003a18:	fffff097          	auipc	ra,0xfffff
    80003a1c:	8dc080e7          	jalr	-1828(ra) # 800022f4 <mycpu>
    80003a20:	07852783          	lw	a5,120(a0)
    80003a24:	0004a703          	lw	a4,0(s1)
    80003a28:	0017879b          	addiw	a5,a5,1
    80003a2c:	06f52c23          	sw	a5,120(a0)
    80003a30:	04071063          	bnez	a4,80003a70 <acquire+0x94>
    80003a34:	00100713          	li	a4,1
    80003a38:	00070793          	mv	a5,a4
    80003a3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003a40:	0007879b          	sext.w	a5,a5
    80003a44:	fe079ae3          	bnez	a5,80003a38 <acquire+0x5c>
    80003a48:	0ff0000f          	fence
    80003a4c:	fffff097          	auipc	ra,0xfffff
    80003a50:	8a8080e7          	jalr	-1880(ra) # 800022f4 <mycpu>
    80003a54:	01813083          	ld	ra,24(sp)
    80003a58:	01013403          	ld	s0,16(sp)
    80003a5c:	00a4b823          	sd	a0,16(s1)
    80003a60:	00013903          	ld	s2,0(sp)
    80003a64:	00813483          	ld	s1,8(sp)
    80003a68:	02010113          	addi	sp,sp,32
    80003a6c:	00008067          	ret
    80003a70:	0104b903          	ld	s2,16(s1)
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	880080e7          	jalr	-1920(ra) # 800022f4 <mycpu>
    80003a7c:	faa91ce3          	bne	s2,a0,80003a34 <acquire+0x58>
    80003a80:	00001517          	auipc	a0,0x1
    80003a84:	7c850513          	addi	a0,a0,1992 # 80005248 <digits+0x20>
    80003a88:	fffff097          	auipc	ra,0xfffff
    80003a8c:	224080e7          	jalr	548(ra) # 80002cac <panic>
    80003a90:	00195913          	srli	s2,s2,0x1
    80003a94:	fffff097          	auipc	ra,0xfffff
    80003a98:	860080e7          	jalr	-1952(ra) # 800022f4 <mycpu>
    80003a9c:	00197913          	andi	s2,s2,1
    80003aa0:	07252e23          	sw	s2,124(a0)
    80003aa4:	f75ff06f          	j	80003a18 <acquire+0x3c>

0000000080003aa8 <release>:
    80003aa8:	fe010113          	addi	sp,sp,-32
    80003aac:	00813823          	sd	s0,16(sp)
    80003ab0:	00113c23          	sd	ra,24(sp)
    80003ab4:	00913423          	sd	s1,8(sp)
    80003ab8:	01213023          	sd	s2,0(sp)
    80003abc:	02010413          	addi	s0,sp,32
    80003ac0:	00052783          	lw	a5,0(a0)
    80003ac4:	00079a63          	bnez	a5,80003ad8 <release+0x30>
    80003ac8:	00001517          	auipc	a0,0x1
    80003acc:	78850513          	addi	a0,a0,1928 # 80005250 <digits+0x28>
    80003ad0:	fffff097          	auipc	ra,0xfffff
    80003ad4:	1dc080e7          	jalr	476(ra) # 80002cac <panic>
    80003ad8:	01053903          	ld	s2,16(a0)
    80003adc:	00050493          	mv	s1,a0
    80003ae0:	fffff097          	auipc	ra,0xfffff
    80003ae4:	814080e7          	jalr	-2028(ra) # 800022f4 <mycpu>
    80003ae8:	fea910e3          	bne	s2,a0,80003ac8 <release+0x20>
    80003aec:	0004b823          	sd	zero,16(s1)
    80003af0:	0ff0000f          	fence
    80003af4:	0f50000f          	fence	iorw,ow
    80003af8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	7f8080e7          	jalr	2040(ra) # 800022f4 <mycpu>
    80003b04:	100027f3          	csrr	a5,sstatus
    80003b08:	0027f793          	andi	a5,a5,2
    80003b0c:	04079a63          	bnez	a5,80003b60 <release+0xb8>
    80003b10:	07852783          	lw	a5,120(a0)
    80003b14:	02f05e63          	blez	a5,80003b50 <release+0xa8>
    80003b18:	fff7871b          	addiw	a4,a5,-1
    80003b1c:	06e52c23          	sw	a4,120(a0)
    80003b20:	00071c63          	bnez	a4,80003b38 <release+0x90>
    80003b24:	07c52783          	lw	a5,124(a0)
    80003b28:	00078863          	beqz	a5,80003b38 <release+0x90>
    80003b2c:	100027f3          	csrr	a5,sstatus
    80003b30:	0027e793          	ori	a5,a5,2
    80003b34:	10079073          	csrw	sstatus,a5
    80003b38:	01813083          	ld	ra,24(sp)
    80003b3c:	01013403          	ld	s0,16(sp)
    80003b40:	00813483          	ld	s1,8(sp)
    80003b44:	00013903          	ld	s2,0(sp)
    80003b48:	02010113          	addi	sp,sp,32
    80003b4c:	00008067          	ret
    80003b50:	00001517          	auipc	a0,0x1
    80003b54:	72050513          	addi	a0,a0,1824 # 80005270 <digits+0x48>
    80003b58:	fffff097          	auipc	ra,0xfffff
    80003b5c:	154080e7          	jalr	340(ra) # 80002cac <panic>
    80003b60:	00001517          	auipc	a0,0x1
    80003b64:	6f850513          	addi	a0,a0,1784 # 80005258 <digits+0x30>
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	144080e7          	jalr	324(ra) # 80002cac <panic>

0000000080003b70 <holding>:
    80003b70:	00052783          	lw	a5,0(a0)
    80003b74:	00079663          	bnez	a5,80003b80 <holding+0x10>
    80003b78:	00000513          	li	a0,0
    80003b7c:	00008067          	ret
    80003b80:	fe010113          	addi	sp,sp,-32
    80003b84:	00813823          	sd	s0,16(sp)
    80003b88:	00913423          	sd	s1,8(sp)
    80003b8c:	00113c23          	sd	ra,24(sp)
    80003b90:	02010413          	addi	s0,sp,32
    80003b94:	01053483          	ld	s1,16(a0)
    80003b98:	ffffe097          	auipc	ra,0xffffe
    80003b9c:	75c080e7          	jalr	1884(ra) # 800022f4 <mycpu>
    80003ba0:	01813083          	ld	ra,24(sp)
    80003ba4:	01013403          	ld	s0,16(sp)
    80003ba8:	40a48533          	sub	a0,s1,a0
    80003bac:	00153513          	seqz	a0,a0
    80003bb0:	00813483          	ld	s1,8(sp)
    80003bb4:	02010113          	addi	sp,sp,32
    80003bb8:	00008067          	ret

0000000080003bbc <push_off>:
    80003bbc:	fe010113          	addi	sp,sp,-32
    80003bc0:	00813823          	sd	s0,16(sp)
    80003bc4:	00113c23          	sd	ra,24(sp)
    80003bc8:	00913423          	sd	s1,8(sp)
    80003bcc:	02010413          	addi	s0,sp,32
    80003bd0:	100024f3          	csrr	s1,sstatus
    80003bd4:	100027f3          	csrr	a5,sstatus
    80003bd8:	ffd7f793          	andi	a5,a5,-3
    80003bdc:	10079073          	csrw	sstatus,a5
    80003be0:	ffffe097          	auipc	ra,0xffffe
    80003be4:	714080e7          	jalr	1812(ra) # 800022f4 <mycpu>
    80003be8:	07852783          	lw	a5,120(a0)
    80003bec:	02078663          	beqz	a5,80003c18 <push_off+0x5c>
    80003bf0:	ffffe097          	auipc	ra,0xffffe
    80003bf4:	704080e7          	jalr	1796(ra) # 800022f4 <mycpu>
    80003bf8:	07852783          	lw	a5,120(a0)
    80003bfc:	01813083          	ld	ra,24(sp)
    80003c00:	01013403          	ld	s0,16(sp)
    80003c04:	0017879b          	addiw	a5,a5,1
    80003c08:	06f52c23          	sw	a5,120(a0)
    80003c0c:	00813483          	ld	s1,8(sp)
    80003c10:	02010113          	addi	sp,sp,32
    80003c14:	00008067          	ret
    80003c18:	0014d493          	srli	s1,s1,0x1
    80003c1c:	ffffe097          	auipc	ra,0xffffe
    80003c20:	6d8080e7          	jalr	1752(ra) # 800022f4 <mycpu>
    80003c24:	0014f493          	andi	s1,s1,1
    80003c28:	06952e23          	sw	s1,124(a0)
    80003c2c:	fc5ff06f          	j	80003bf0 <push_off+0x34>

0000000080003c30 <pop_off>:
    80003c30:	ff010113          	addi	sp,sp,-16
    80003c34:	00813023          	sd	s0,0(sp)
    80003c38:	00113423          	sd	ra,8(sp)
    80003c3c:	01010413          	addi	s0,sp,16
    80003c40:	ffffe097          	auipc	ra,0xffffe
    80003c44:	6b4080e7          	jalr	1716(ra) # 800022f4 <mycpu>
    80003c48:	100027f3          	csrr	a5,sstatus
    80003c4c:	0027f793          	andi	a5,a5,2
    80003c50:	04079663          	bnez	a5,80003c9c <pop_off+0x6c>
    80003c54:	07852783          	lw	a5,120(a0)
    80003c58:	02f05a63          	blez	a5,80003c8c <pop_off+0x5c>
    80003c5c:	fff7871b          	addiw	a4,a5,-1
    80003c60:	06e52c23          	sw	a4,120(a0)
    80003c64:	00071c63          	bnez	a4,80003c7c <pop_off+0x4c>
    80003c68:	07c52783          	lw	a5,124(a0)
    80003c6c:	00078863          	beqz	a5,80003c7c <pop_off+0x4c>
    80003c70:	100027f3          	csrr	a5,sstatus
    80003c74:	0027e793          	ori	a5,a5,2
    80003c78:	10079073          	csrw	sstatus,a5
    80003c7c:	00813083          	ld	ra,8(sp)
    80003c80:	00013403          	ld	s0,0(sp)
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00008067          	ret
    80003c8c:	00001517          	auipc	a0,0x1
    80003c90:	5e450513          	addi	a0,a0,1508 # 80005270 <digits+0x48>
    80003c94:	fffff097          	auipc	ra,0xfffff
    80003c98:	018080e7          	jalr	24(ra) # 80002cac <panic>
    80003c9c:	00001517          	auipc	a0,0x1
    80003ca0:	5bc50513          	addi	a0,a0,1468 # 80005258 <digits+0x30>
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	008080e7          	jalr	8(ra) # 80002cac <panic>

0000000080003cac <push_on>:
    80003cac:	fe010113          	addi	sp,sp,-32
    80003cb0:	00813823          	sd	s0,16(sp)
    80003cb4:	00113c23          	sd	ra,24(sp)
    80003cb8:	00913423          	sd	s1,8(sp)
    80003cbc:	02010413          	addi	s0,sp,32
    80003cc0:	100024f3          	csrr	s1,sstatus
    80003cc4:	100027f3          	csrr	a5,sstatus
    80003cc8:	0027e793          	ori	a5,a5,2
    80003ccc:	10079073          	csrw	sstatus,a5
    80003cd0:	ffffe097          	auipc	ra,0xffffe
    80003cd4:	624080e7          	jalr	1572(ra) # 800022f4 <mycpu>
    80003cd8:	07852783          	lw	a5,120(a0)
    80003cdc:	02078663          	beqz	a5,80003d08 <push_on+0x5c>
    80003ce0:	ffffe097          	auipc	ra,0xffffe
    80003ce4:	614080e7          	jalr	1556(ra) # 800022f4 <mycpu>
    80003ce8:	07852783          	lw	a5,120(a0)
    80003cec:	01813083          	ld	ra,24(sp)
    80003cf0:	01013403          	ld	s0,16(sp)
    80003cf4:	0017879b          	addiw	a5,a5,1
    80003cf8:	06f52c23          	sw	a5,120(a0)
    80003cfc:	00813483          	ld	s1,8(sp)
    80003d00:	02010113          	addi	sp,sp,32
    80003d04:	00008067          	ret
    80003d08:	0014d493          	srli	s1,s1,0x1
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	5e8080e7          	jalr	1512(ra) # 800022f4 <mycpu>
    80003d14:	0014f493          	andi	s1,s1,1
    80003d18:	06952e23          	sw	s1,124(a0)
    80003d1c:	fc5ff06f          	j	80003ce0 <push_on+0x34>

0000000080003d20 <pop_on>:
    80003d20:	ff010113          	addi	sp,sp,-16
    80003d24:	00813023          	sd	s0,0(sp)
    80003d28:	00113423          	sd	ra,8(sp)
    80003d2c:	01010413          	addi	s0,sp,16
    80003d30:	ffffe097          	auipc	ra,0xffffe
    80003d34:	5c4080e7          	jalr	1476(ra) # 800022f4 <mycpu>
    80003d38:	100027f3          	csrr	a5,sstatus
    80003d3c:	0027f793          	andi	a5,a5,2
    80003d40:	04078463          	beqz	a5,80003d88 <pop_on+0x68>
    80003d44:	07852783          	lw	a5,120(a0)
    80003d48:	02f05863          	blez	a5,80003d78 <pop_on+0x58>
    80003d4c:	fff7879b          	addiw	a5,a5,-1
    80003d50:	06f52c23          	sw	a5,120(a0)
    80003d54:	07853783          	ld	a5,120(a0)
    80003d58:	00079863          	bnez	a5,80003d68 <pop_on+0x48>
    80003d5c:	100027f3          	csrr	a5,sstatus
    80003d60:	ffd7f793          	andi	a5,a5,-3
    80003d64:	10079073          	csrw	sstatus,a5
    80003d68:	00813083          	ld	ra,8(sp)
    80003d6c:	00013403          	ld	s0,0(sp)
    80003d70:	01010113          	addi	sp,sp,16
    80003d74:	00008067          	ret
    80003d78:	00001517          	auipc	a0,0x1
    80003d7c:	52050513          	addi	a0,a0,1312 # 80005298 <digits+0x70>
    80003d80:	fffff097          	auipc	ra,0xfffff
    80003d84:	f2c080e7          	jalr	-212(ra) # 80002cac <panic>
    80003d88:	00001517          	auipc	a0,0x1
    80003d8c:	4f050513          	addi	a0,a0,1264 # 80005278 <digits+0x50>
    80003d90:	fffff097          	auipc	ra,0xfffff
    80003d94:	f1c080e7          	jalr	-228(ra) # 80002cac <panic>

0000000080003d98 <__memset>:
    80003d98:	ff010113          	addi	sp,sp,-16
    80003d9c:	00813423          	sd	s0,8(sp)
    80003da0:	01010413          	addi	s0,sp,16
    80003da4:	1a060e63          	beqz	a2,80003f60 <__memset+0x1c8>
    80003da8:	40a007b3          	neg	a5,a0
    80003dac:	0077f793          	andi	a5,a5,7
    80003db0:	00778693          	addi	a3,a5,7
    80003db4:	00b00813          	li	a6,11
    80003db8:	0ff5f593          	andi	a1,a1,255
    80003dbc:	fff6071b          	addiw	a4,a2,-1
    80003dc0:	1b06e663          	bltu	a3,a6,80003f6c <__memset+0x1d4>
    80003dc4:	1cd76463          	bltu	a4,a3,80003f8c <__memset+0x1f4>
    80003dc8:	1a078e63          	beqz	a5,80003f84 <__memset+0x1ec>
    80003dcc:	00b50023          	sb	a1,0(a0)
    80003dd0:	00100713          	li	a4,1
    80003dd4:	1ae78463          	beq	a5,a4,80003f7c <__memset+0x1e4>
    80003dd8:	00b500a3          	sb	a1,1(a0)
    80003ddc:	00200713          	li	a4,2
    80003de0:	1ae78a63          	beq	a5,a4,80003f94 <__memset+0x1fc>
    80003de4:	00b50123          	sb	a1,2(a0)
    80003de8:	00300713          	li	a4,3
    80003dec:	18e78463          	beq	a5,a4,80003f74 <__memset+0x1dc>
    80003df0:	00b501a3          	sb	a1,3(a0)
    80003df4:	00400713          	li	a4,4
    80003df8:	1ae78263          	beq	a5,a4,80003f9c <__memset+0x204>
    80003dfc:	00b50223          	sb	a1,4(a0)
    80003e00:	00500713          	li	a4,5
    80003e04:	1ae78063          	beq	a5,a4,80003fa4 <__memset+0x20c>
    80003e08:	00b502a3          	sb	a1,5(a0)
    80003e0c:	00700713          	li	a4,7
    80003e10:	18e79e63          	bne	a5,a4,80003fac <__memset+0x214>
    80003e14:	00b50323          	sb	a1,6(a0)
    80003e18:	00700e93          	li	t4,7
    80003e1c:	00859713          	slli	a4,a1,0x8
    80003e20:	00e5e733          	or	a4,a1,a4
    80003e24:	01059e13          	slli	t3,a1,0x10
    80003e28:	01c76e33          	or	t3,a4,t3
    80003e2c:	01859313          	slli	t1,a1,0x18
    80003e30:	006e6333          	or	t1,t3,t1
    80003e34:	02059893          	slli	a7,a1,0x20
    80003e38:	40f60e3b          	subw	t3,a2,a5
    80003e3c:	011368b3          	or	a7,t1,a7
    80003e40:	02859813          	slli	a6,a1,0x28
    80003e44:	0108e833          	or	a6,a7,a6
    80003e48:	03059693          	slli	a3,a1,0x30
    80003e4c:	003e589b          	srliw	a7,t3,0x3
    80003e50:	00d866b3          	or	a3,a6,a3
    80003e54:	03859713          	slli	a4,a1,0x38
    80003e58:	00389813          	slli	a6,a7,0x3
    80003e5c:	00f507b3          	add	a5,a0,a5
    80003e60:	00e6e733          	or	a4,a3,a4
    80003e64:	000e089b          	sext.w	a7,t3
    80003e68:	00f806b3          	add	a3,a6,a5
    80003e6c:	00e7b023          	sd	a4,0(a5)
    80003e70:	00878793          	addi	a5,a5,8
    80003e74:	fed79ce3          	bne	a5,a3,80003e6c <__memset+0xd4>
    80003e78:	ff8e7793          	andi	a5,t3,-8
    80003e7c:	0007871b          	sext.w	a4,a5
    80003e80:	01d787bb          	addw	a5,a5,t4
    80003e84:	0ce88e63          	beq	a7,a4,80003f60 <__memset+0x1c8>
    80003e88:	00f50733          	add	a4,a0,a5
    80003e8c:	00b70023          	sb	a1,0(a4)
    80003e90:	0017871b          	addiw	a4,a5,1
    80003e94:	0cc77663          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003e98:	00e50733          	add	a4,a0,a4
    80003e9c:	00b70023          	sb	a1,0(a4)
    80003ea0:	0027871b          	addiw	a4,a5,2
    80003ea4:	0ac77e63          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003ea8:	00e50733          	add	a4,a0,a4
    80003eac:	00b70023          	sb	a1,0(a4)
    80003eb0:	0037871b          	addiw	a4,a5,3
    80003eb4:	0ac77663          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003eb8:	00e50733          	add	a4,a0,a4
    80003ebc:	00b70023          	sb	a1,0(a4)
    80003ec0:	0047871b          	addiw	a4,a5,4
    80003ec4:	08c77e63          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003ec8:	00e50733          	add	a4,a0,a4
    80003ecc:	00b70023          	sb	a1,0(a4)
    80003ed0:	0057871b          	addiw	a4,a5,5
    80003ed4:	08c77663          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003ed8:	00e50733          	add	a4,a0,a4
    80003edc:	00b70023          	sb	a1,0(a4)
    80003ee0:	0067871b          	addiw	a4,a5,6
    80003ee4:	06c77e63          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003ee8:	00e50733          	add	a4,a0,a4
    80003eec:	00b70023          	sb	a1,0(a4)
    80003ef0:	0077871b          	addiw	a4,a5,7
    80003ef4:	06c77663          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003ef8:	00e50733          	add	a4,a0,a4
    80003efc:	00b70023          	sb	a1,0(a4)
    80003f00:	0087871b          	addiw	a4,a5,8
    80003f04:	04c77e63          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003f08:	00e50733          	add	a4,a0,a4
    80003f0c:	00b70023          	sb	a1,0(a4)
    80003f10:	0097871b          	addiw	a4,a5,9
    80003f14:	04c77663          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003f18:	00e50733          	add	a4,a0,a4
    80003f1c:	00b70023          	sb	a1,0(a4)
    80003f20:	00a7871b          	addiw	a4,a5,10
    80003f24:	02c77e63          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003f28:	00e50733          	add	a4,a0,a4
    80003f2c:	00b70023          	sb	a1,0(a4)
    80003f30:	00b7871b          	addiw	a4,a5,11
    80003f34:	02c77663          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003f38:	00e50733          	add	a4,a0,a4
    80003f3c:	00b70023          	sb	a1,0(a4)
    80003f40:	00c7871b          	addiw	a4,a5,12
    80003f44:	00c77e63          	bgeu	a4,a2,80003f60 <__memset+0x1c8>
    80003f48:	00e50733          	add	a4,a0,a4
    80003f4c:	00b70023          	sb	a1,0(a4)
    80003f50:	00d7879b          	addiw	a5,a5,13
    80003f54:	00c7f663          	bgeu	a5,a2,80003f60 <__memset+0x1c8>
    80003f58:	00f507b3          	add	a5,a0,a5
    80003f5c:	00b78023          	sb	a1,0(a5)
    80003f60:	00813403          	ld	s0,8(sp)
    80003f64:	01010113          	addi	sp,sp,16
    80003f68:	00008067          	ret
    80003f6c:	00b00693          	li	a3,11
    80003f70:	e55ff06f          	j	80003dc4 <__memset+0x2c>
    80003f74:	00300e93          	li	t4,3
    80003f78:	ea5ff06f          	j	80003e1c <__memset+0x84>
    80003f7c:	00100e93          	li	t4,1
    80003f80:	e9dff06f          	j	80003e1c <__memset+0x84>
    80003f84:	00000e93          	li	t4,0
    80003f88:	e95ff06f          	j	80003e1c <__memset+0x84>
    80003f8c:	00000793          	li	a5,0
    80003f90:	ef9ff06f          	j	80003e88 <__memset+0xf0>
    80003f94:	00200e93          	li	t4,2
    80003f98:	e85ff06f          	j	80003e1c <__memset+0x84>
    80003f9c:	00400e93          	li	t4,4
    80003fa0:	e7dff06f          	j	80003e1c <__memset+0x84>
    80003fa4:	00500e93          	li	t4,5
    80003fa8:	e75ff06f          	j	80003e1c <__memset+0x84>
    80003fac:	00600e93          	li	t4,6
    80003fb0:	e6dff06f          	j	80003e1c <__memset+0x84>

0000000080003fb4 <__memmove>:
    80003fb4:	ff010113          	addi	sp,sp,-16
    80003fb8:	00813423          	sd	s0,8(sp)
    80003fbc:	01010413          	addi	s0,sp,16
    80003fc0:	0e060863          	beqz	a2,800040b0 <__memmove+0xfc>
    80003fc4:	fff6069b          	addiw	a3,a2,-1
    80003fc8:	0006881b          	sext.w	a6,a3
    80003fcc:	0ea5e863          	bltu	a1,a0,800040bc <__memmove+0x108>
    80003fd0:	00758713          	addi	a4,a1,7
    80003fd4:	00a5e7b3          	or	a5,a1,a0
    80003fd8:	40a70733          	sub	a4,a4,a0
    80003fdc:	0077f793          	andi	a5,a5,7
    80003fe0:	00f73713          	sltiu	a4,a4,15
    80003fe4:	00174713          	xori	a4,a4,1
    80003fe8:	0017b793          	seqz	a5,a5
    80003fec:	00e7f7b3          	and	a5,a5,a4
    80003ff0:	10078863          	beqz	a5,80004100 <__memmove+0x14c>
    80003ff4:	00900793          	li	a5,9
    80003ff8:	1107f463          	bgeu	a5,a6,80004100 <__memmove+0x14c>
    80003ffc:	0036581b          	srliw	a6,a2,0x3
    80004000:	fff8081b          	addiw	a6,a6,-1
    80004004:	02081813          	slli	a6,a6,0x20
    80004008:	01d85893          	srli	a7,a6,0x1d
    8000400c:	00858813          	addi	a6,a1,8
    80004010:	00058793          	mv	a5,a1
    80004014:	00050713          	mv	a4,a0
    80004018:	01088833          	add	a6,a7,a6
    8000401c:	0007b883          	ld	a7,0(a5)
    80004020:	00878793          	addi	a5,a5,8
    80004024:	00870713          	addi	a4,a4,8
    80004028:	ff173c23          	sd	a7,-8(a4)
    8000402c:	ff0798e3          	bne	a5,a6,8000401c <__memmove+0x68>
    80004030:	ff867713          	andi	a4,a2,-8
    80004034:	02071793          	slli	a5,a4,0x20
    80004038:	0207d793          	srli	a5,a5,0x20
    8000403c:	00f585b3          	add	a1,a1,a5
    80004040:	40e686bb          	subw	a3,a3,a4
    80004044:	00f507b3          	add	a5,a0,a5
    80004048:	06e60463          	beq	a2,a4,800040b0 <__memmove+0xfc>
    8000404c:	0005c703          	lbu	a4,0(a1)
    80004050:	00e78023          	sb	a4,0(a5)
    80004054:	04068e63          	beqz	a3,800040b0 <__memmove+0xfc>
    80004058:	0015c603          	lbu	a2,1(a1)
    8000405c:	00100713          	li	a4,1
    80004060:	00c780a3          	sb	a2,1(a5)
    80004064:	04e68663          	beq	a3,a4,800040b0 <__memmove+0xfc>
    80004068:	0025c603          	lbu	a2,2(a1)
    8000406c:	00200713          	li	a4,2
    80004070:	00c78123          	sb	a2,2(a5)
    80004074:	02e68e63          	beq	a3,a4,800040b0 <__memmove+0xfc>
    80004078:	0035c603          	lbu	a2,3(a1)
    8000407c:	00300713          	li	a4,3
    80004080:	00c781a3          	sb	a2,3(a5)
    80004084:	02e68663          	beq	a3,a4,800040b0 <__memmove+0xfc>
    80004088:	0045c603          	lbu	a2,4(a1)
    8000408c:	00400713          	li	a4,4
    80004090:	00c78223          	sb	a2,4(a5)
    80004094:	00e68e63          	beq	a3,a4,800040b0 <__memmove+0xfc>
    80004098:	0055c603          	lbu	a2,5(a1)
    8000409c:	00500713          	li	a4,5
    800040a0:	00c782a3          	sb	a2,5(a5)
    800040a4:	00e68663          	beq	a3,a4,800040b0 <__memmove+0xfc>
    800040a8:	0065c703          	lbu	a4,6(a1)
    800040ac:	00e78323          	sb	a4,6(a5)
    800040b0:	00813403          	ld	s0,8(sp)
    800040b4:	01010113          	addi	sp,sp,16
    800040b8:	00008067          	ret
    800040bc:	02061713          	slli	a4,a2,0x20
    800040c0:	02075713          	srli	a4,a4,0x20
    800040c4:	00e587b3          	add	a5,a1,a4
    800040c8:	f0f574e3          	bgeu	a0,a5,80003fd0 <__memmove+0x1c>
    800040cc:	02069613          	slli	a2,a3,0x20
    800040d0:	02065613          	srli	a2,a2,0x20
    800040d4:	fff64613          	not	a2,a2
    800040d8:	00e50733          	add	a4,a0,a4
    800040dc:	00c78633          	add	a2,a5,a2
    800040e0:	fff7c683          	lbu	a3,-1(a5)
    800040e4:	fff78793          	addi	a5,a5,-1
    800040e8:	fff70713          	addi	a4,a4,-1
    800040ec:	00d70023          	sb	a3,0(a4)
    800040f0:	fec798e3          	bne	a5,a2,800040e0 <__memmove+0x12c>
    800040f4:	00813403          	ld	s0,8(sp)
    800040f8:	01010113          	addi	sp,sp,16
    800040fc:	00008067          	ret
    80004100:	02069713          	slli	a4,a3,0x20
    80004104:	02075713          	srli	a4,a4,0x20
    80004108:	00170713          	addi	a4,a4,1
    8000410c:	00e50733          	add	a4,a0,a4
    80004110:	00050793          	mv	a5,a0
    80004114:	0005c683          	lbu	a3,0(a1)
    80004118:	00178793          	addi	a5,a5,1
    8000411c:	00158593          	addi	a1,a1,1
    80004120:	fed78fa3          	sb	a3,-1(a5)
    80004124:	fee798e3          	bne	a5,a4,80004114 <__memmove+0x160>
    80004128:	f89ff06f          	j	800040b0 <__memmove+0xfc>

000000008000412c <__putc>:
    8000412c:	fe010113          	addi	sp,sp,-32
    80004130:	00813823          	sd	s0,16(sp)
    80004134:	00113c23          	sd	ra,24(sp)
    80004138:	02010413          	addi	s0,sp,32
    8000413c:	00050793          	mv	a5,a0
    80004140:	fef40593          	addi	a1,s0,-17
    80004144:	00100613          	li	a2,1
    80004148:	00000513          	li	a0,0
    8000414c:	fef407a3          	sb	a5,-17(s0)
    80004150:	fffff097          	auipc	ra,0xfffff
    80004154:	b3c080e7          	jalr	-1220(ra) # 80002c8c <console_write>
    80004158:	01813083          	ld	ra,24(sp)
    8000415c:	01013403          	ld	s0,16(sp)
    80004160:	02010113          	addi	sp,sp,32
    80004164:	00008067          	ret

0000000080004168 <__getc>:
    80004168:	fe010113          	addi	sp,sp,-32
    8000416c:	00813823          	sd	s0,16(sp)
    80004170:	00113c23          	sd	ra,24(sp)
    80004174:	02010413          	addi	s0,sp,32
    80004178:	fe840593          	addi	a1,s0,-24
    8000417c:	00100613          	li	a2,1
    80004180:	00000513          	li	a0,0
    80004184:	fffff097          	auipc	ra,0xfffff
    80004188:	ae8080e7          	jalr	-1304(ra) # 80002c6c <console_read>
    8000418c:	fe844503          	lbu	a0,-24(s0)
    80004190:	01813083          	ld	ra,24(sp)
    80004194:	01013403          	ld	s0,16(sp)
    80004198:	02010113          	addi	sp,sp,32
    8000419c:	00008067          	ret

00000000800041a0 <console_handler>:
    800041a0:	fe010113          	addi	sp,sp,-32
    800041a4:	00813823          	sd	s0,16(sp)
    800041a8:	00113c23          	sd	ra,24(sp)
    800041ac:	00913423          	sd	s1,8(sp)
    800041b0:	02010413          	addi	s0,sp,32
    800041b4:	14202773          	csrr	a4,scause
    800041b8:	100027f3          	csrr	a5,sstatus
    800041bc:	0027f793          	andi	a5,a5,2
    800041c0:	06079e63          	bnez	a5,8000423c <console_handler+0x9c>
    800041c4:	00074c63          	bltz	a4,800041dc <console_handler+0x3c>
    800041c8:	01813083          	ld	ra,24(sp)
    800041cc:	01013403          	ld	s0,16(sp)
    800041d0:	00813483          	ld	s1,8(sp)
    800041d4:	02010113          	addi	sp,sp,32
    800041d8:	00008067          	ret
    800041dc:	0ff77713          	andi	a4,a4,255
    800041e0:	00900793          	li	a5,9
    800041e4:	fef712e3          	bne	a4,a5,800041c8 <console_handler+0x28>
    800041e8:	ffffe097          	auipc	ra,0xffffe
    800041ec:	6dc080e7          	jalr	1756(ra) # 800028c4 <plic_claim>
    800041f0:	00a00793          	li	a5,10
    800041f4:	00050493          	mv	s1,a0
    800041f8:	02f50c63          	beq	a0,a5,80004230 <console_handler+0x90>
    800041fc:	fc0506e3          	beqz	a0,800041c8 <console_handler+0x28>
    80004200:	00050593          	mv	a1,a0
    80004204:	00001517          	auipc	a0,0x1
    80004208:	f9c50513          	addi	a0,a0,-100 # 800051a0 <_ZZ12printIntegermE6digits+0xe0>
    8000420c:	fffff097          	auipc	ra,0xfffff
    80004210:	afc080e7          	jalr	-1284(ra) # 80002d08 <__printf>
    80004214:	01013403          	ld	s0,16(sp)
    80004218:	01813083          	ld	ra,24(sp)
    8000421c:	00048513          	mv	a0,s1
    80004220:	00813483          	ld	s1,8(sp)
    80004224:	02010113          	addi	sp,sp,32
    80004228:	ffffe317          	auipc	t1,0xffffe
    8000422c:	6d430067          	jr	1748(t1) # 800028fc <plic_complete>
    80004230:	fffff097          	auipc	ra,0xfffff
    80004234:	3e0080e7          	jalr	992(ra) # 80003610 <uartintr>
    80004238:	fddff06f          	j	80004214 <console_handler+0x74>
    8000423c:	00001517          	auipc	a0,0x1
    80004240:	06450513          	addi	a0,a0,100 # 800052a0 <digits+0x78>
    80004244:	fffff097          	auipc	ra,0xfffff
    80004248:	a68080e7          	jalr	-1432(ra) # 80002cac <panic>
	...
