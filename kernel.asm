
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	e8813103          	ld	sp,-376(sp) # 80006e88 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	211030ef          	jal	ra,80003a2c <start>

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
    800011a4:	578000ef          	jal	ra,8000171c <_ZN5RiscV20handleSupervisorTrapEv>

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
#include "../lib/console.h"
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

0000000080001328 <_Z8sem_openPP9semaphorej>:

int sem_open (
        sem_t* handle,
        unsigned init
){
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00813423          	sd	s0,8(sp)
    80001330:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x21UL;
    int retval;
    __asm__ volatile("mv a2, %0": : [init] "r" (init));
    80001334:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0": : [handle] "r" (handle));
    80001338:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    8000133c:	02100793          	li	a5,33
    80001340:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001344:	00000073          	ecall
    __asm__ volatile("mv %[retval], a1" : [retval] "=r"(retval));
    80001348:	00058513          	mv	a0,a1
    return retval;
}
    8000134c:	0005051b          	sext.w	a0,a0
    80001350:	00813403          	ld	s0,8(sp)
    80001354:	01010113          	addi	sp,sp,16
    80001358:	00008067          	ret

000000008000135c <_Z9sem_closeP9semaphore>:

int sem_close (sem_t handle){
    8000135c:	ff010113          	addi	sp,sp,-16
    80001360:	00813423          	sd	s0,8(sp)
    80001364:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x22UL;
    int retval;
    __asm__ volatile("mv a1, %0": : [handle] "r" (handle));
    80001368:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    8000136c:	02200793          	li	a5,34
    80001370:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001374:	00000073          	ecall
    __asm__ volatile("mv %[retval], a1" : [retval] "=r"(retval));
    80001378:	00058513          	mv	a0,a1
    return retval;
}
    8000137c:	0005051b          	sext.w	a0,a0
    80001380:	00813403          	ld	s0,8(sp)
    80001384:	01010113          	addi	sp,sp,16
    80001388:	00008067          	ret

000000008000138c <_Z8sem_waitP9semaphore>:

int sem_wait (sem_t id){
    8000138c:	ff010113          	addi	sp,sp,-16
    80001390:	00813423          	sd	s0,8(sp)
    80001394:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x23UL;
    int retval;
    __asm__ volatile("mv a1, %0": : [id] "r" (id));
    80001398:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    8000139c:	02300793          	li	a5,35
    800013a0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013a4:	00000073          	ecall
    __asm__ volatile("mv %[retval], a1" : [retval] "=r"(retval));
    800013a8:	00058513          	mv	a0,a1
    return retval;
}
    800013ac:	0005051b          	sext.w	a0,a0
    800013b0:	00813403          	ld	s0,8(sp)
    800013b4:	01010113          	addi	sp,sp,16
    800013b8:	00008067          	ret

00000000800013bc <_Z10sem_signalP9semaphore>:

int sem_signal (sem_t id){
    800013bc:	ff010113          	addi	sp,sp,-16
    800013c0:	00813423          	sd	s0,8(sp)
    800013c4:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x24UL;
    int retval;
    __asm__ volatile("mv a1, %0": : [id] "r" (id));
    800013c8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    800013cc:	02400793          	li	a5,36
    800013d0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800013d4:	00000073          	ecall
    __asm__ volatile("mv %[retval], a1" : [retval] "=r"(retval));
    800013d8:	00058513          	mv	a0,a1
    return retval;
}
    800013dc:	0005051b          	sext.w	a0,a0
    800013e0:	00813403          	ld	s0,8(sp)
    800013e4:	01010113          	addi	sp,sp,16
    800013e8:	00008067          	ret

00000000800013ec <_Z4getcv>:

char getc (){
    800013ec:	ff010113          	addi	sp,sp,-16
    800013f0:	00813423          	sd	s0,8(sp)
    800013f4:	01010413          	addi	s0,sp,16
   uint64 sysCallNr=0x41UL;
   char retval;
   __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    800013f8:	04100793          	li	a5,65
    800013fc:	00078513          	mv	a0,a5
   __asm__ volatile("ecall");
    80001400:	00000073          	ecall
   __asm__ volatile("mv %[retval], a1" : [retval] "=r"(retval));
    80001404:	00058513          	mv	a0,a1
   return retval;
//   char c=__getc();
//   return c;
}
    80001408:	0ff57513          	andi	a0,a0,255
    8000140c:	00813403          	ld	s0,8(sp)
    80001410:	01010113          	addi	sp,sp,16
    80001414:	00008067          	ret

0000000080001418 <_Z4putcc>:

void putc (char c){
    80001418:	ff010113          	addi	sp,sp,-16
    8000141c:	00813423          	sd	s0,8(sp)
    80001420:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x42UL;
    __asm__ volatile("mv a1, %0": : [c] "r" (c));
    80001424:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80001428:	04200793          	li	a5,66
    8000142c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001430:	00000073          	ecall
//    __putc(c);
}
    80001434:	00813403          	ld	s0,8(sp)
    80001438:	01010113          	addi	sp,sp,16
    8000143c:	00008067          	ret

0000000080001440 <_Z21thread_create_cpp_apiPP3TCBPFvPvES2_>:

int thread_create_cpp_api (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
) {
    80001440:	ff010113          	addi	sp,sp,-16
    80001444:	00813423          	sd	s0,8(sp)
    80001448:	01010413          	addi	s0,sp,16
    TCB *ret_value_thread;
    uint64 sysCallNr = 0x14UL;
    //neki stack_space alokacija se pominje????
    __asm__ volatile("mv a3, %0" : : [arg] "r"(arg));
    8000144c:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : [start_routine] "r"(start_routine));
    80001450:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : [handle] "r"(handle));
    80001454:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r"(sysCallNr));
    80001458:	01400793          	li	a5,20
    8000145c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001460:	00000073          	ecall
    __asm__ volatile("mv %[ret_value_thread], a1" : [ret_value_thread] "=r"(
            ret_value_thread)); //kaze undefined reference
    80001464:	00058793          	mv	a5,a1
    return 0;
}
    80001468:	00000513          	li	a0,0
    8000146c:	00813403          	ld	s0,8(sp)
    80001470:	01010113          	addi	sp,sp,16
    80001474:	00008067          	ret

0000000080001478 <_Z12thread_startPP3TCB>:

void thread_start(thread_t* handle){
    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00813423          	sd	s0,8(sp)
    80001480:	01010413          	addi	s0,sp,16
    uint64 sysCallNr = 0x15UL;
    __asm__ volatile("mv a1, %0" : : [handle] "r"(handle));
    80001484:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r"(sysCallNr));
    80001488:	01500793          	li	a5,21
    8000148c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001490:	00000073          	ecall
    80001494:	00813403          	ld	s0,8(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret

00000000800014a0 <_Z41__static_initialization_and_destruction_0ii>:

bool Queue::isEmpty() {
    if(queue.listEmpty()==true){
        return true;
    }else{return false;}
}
    800014a0:	ff010113          	addi	sp,sp,-16
    800014a4:	00813423          	sd	s0,8(sp)
    800014a8:	01010413          	addi	s0,sp,16
    800014ac:	00100793          	li	a5,1
    800014b0:	00f50863          	beq	a0,a5,800014c0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800014b4:	00813403          	ld	s0,8(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret
    800014c0:	000107b7          	lui	a5,0x10
    800014c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800014c8:	fef596e3          	bne	a1,a5,800014b4 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    800014cc:	00006797          	auipc	a5,0x6
    800014d0:	a4478793          	addi	a5,a5,-1468 # 80006f10 <_ZN5Queue5queueE>
    800014d4:	0007b023          	sd	zero,0(a5)
    800014d8:	0007b423          	sd	zero,8(a5)
    800014dc:	fd9ff06f          	j	800014b4 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800014e0 <_ZN5Queue3putEP3TCB>:
void Queue::put(TCB *thread) {
    800014e0:	ff010113          	addi	sp,sp,-16
    800014e4:	00813423          	sd	s0,8(sp)
    800014e8:	01010413          	addi	s0,sp,16

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800014ec:	00006797          	auipc	a5,0x6
    800014f0:	9b47b783          	ld	a5,-1612(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800014f4:	0007b783          	ld	a5,0(a5)
    800014f8:	0c078a63          	beqz	a5,800015cc <_ZN5Queue3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    800014fc:	00006717          	auipc	a4,0x6
    80001500:	9a473703          	ld	a4,-1628(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001504:	00073683          	ld	a3,0(a4)
    80001508:	0006b683          	ld	a3,0(a3)
    8000150c:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001510:	00073703          	ld	a4,0(a4)
    80001514:	00873603          	ld	a2,8(a4)
    80001518:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    8000151c:	0107b703          	ld	a4,16(a5)
    80001520:	03f00593          	li	a1,63
    80001524:	02e5f663          	bgeu	a1,a4,80001550 <_ZN5Queue3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001528:	fc070713          	addi	a4,a4,-64
    8000152c:	01800593          	li	a1,24
    80001530:	02e5ec63          	bltu	a1,a4,80001568 <_ZN5Queue3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001534:	02060263          	beqz	a2,80001558 <_ZN5Queue3putEP3TCB+0x78>
    80001538:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    8000153c:	0007b703          	ld	a4,0(a5)
    80001540:	08070663          	beqz	a4,800015cc <_ZN5Queue3putEP3TCB+0xec>
    80001544:	0087b683          	ld	a3,8(a5)
    80001548:	00d73423          	sd	a3,8(a4)
                return cur;
    8000154c:	0800006f          	j	800015cc <_ZN5Queue3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001550:	00068793          	mv	a5,a3
    80001554:	fa5ff06f          	j	800014f8 <_ZN5Queue3putEP3TCB+0x18>
                else fmem_head = cur->next;
    80001558:	00006717          	auipc	a4,0x6
    8000155c:	94873703          	ld	a4,-1720(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001560:	00d73023          	sd	a3,0(a4)
    80001564:	fd9ff06f          	j	8000153c <_ZN5Queue3putEP3TCB+0x5c>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001568:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    8000156c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001570:	0407b023          	sd	zero,64(a5)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001574:	0087b683          	ld	a3,8(a5)
    80001578:	08068063          	beqz	a3,800015f8 <_ZN5Queue3putEP3TCB+0x118>
    8000157c:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001580:	0007b683          	ld	a3,0(a5)
    80001584:	00068463          	beqz	a3,8000158c <_ZN5Queue3putEP3TCB+0xac>
    80001588:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    8000158c:	0087b603          	ld	a2,8(a5)
    80001590:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001594:	0007b683          	ld	a3,0(a5)
    80001598:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    8000159c:	0107b783          	ld	a5,16(a5)
    800015a0:	fc078793          	addi	a5,a5,-64
    800015a4:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800015a8:	0c070693          	addi	a3,a4,192
    800015ac:	00006597          	auipc	a1,0x6
    800015b0:	8f45b583          	ld	a1,-1804(a1) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015b4:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800015b8:	00073583          	ld	a1,0(a4)
    800015bc:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    800015c0:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800015c4:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    800015c8:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    800015cc:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    800015d0:	0007b423          	sd	zero,8(a5)
        if (tail){
    800015d4:	00006717          	auipc	a4,0x6
    800015d8:	94473703          	ld	a4,-1724(a4) # 80006f18 <_ZN5Queue5queueE+0x8>
    800015dc:	02070863          	beqz	a4,8000160c <_ZN5Queue3putEP3TCB+0x12c>
            tail->next=elem;
    800015e0:	00f73423          	sd	a5,8(a4)
            tail=elem;
    800015e4:	00006717          	auipc	a4,0x6
    800015e8:	92f73a23          	sd	a5,-1740(a4) # 80006f18 <_ZN5Queue5queueE+0x8>
}
    800015ec:	00813403          	ld	s0,8(sp)
    800015f0:	01010113          	addi	sp,sp,16
    800015f4:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800015f8:	0c070693          	addi	a3,a4,192
    800015fc:	00006617          	auipc	a2,0x6
    80001600:	8a463603          	ld	a2,-1884(a2) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001604:	00d63023          	sd	a3,0(a2)
    80001608:	f79ff06f          	j	80001580 <_ZN5Queue3putEP3TCB+0xa0>
        }else{
            head=tail=elem;
    8000160c:	00006717          	auipc	a4,0x6
    80001610:	90470713          	addi	a4,a4,-1788 # 80006f10 <_ZN5Queue5queueE>
    80001614:	00f73423          	sd	a5,8(a4)
    80001618:	00f73023          	sd	a5,0(a4)
    8000161c:	fd1ff06f          	j	800015ec <_ZN5Queue3putEP3TCB+0x10c>

0000000080001620 <_ZN5Queue3getEv>:
    {
    80001620:	fe010113          	addi	sp,sp,-32
    80001624:	00113c23          	sd	ra,24(sp)
    80001628:	00813823          	sd	s0,16(sp)
    8000162c:	00913423          	sd	s1,8(sp)
    80001630:	02010413          	addi	s0,sp,32
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001634:	00006517          	auipc	a0,0x6
    80001638:	8dc53503          	ld	a0,-1828(a0) # 80006f10 <_ZN5Queue5queueE>
    8000163c:	04050263          	beqz	a0,80001680 <_ZN5Queue3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    80001640:	00853783          	ld	a5,8(a0)
    80001644:	00006717          	auipc	a4,0x6
    80001648:	8cf73623          	sd	a5,-1844(a4) # 80006f10 <_ZN5Queue5queueE>
        if(!head) {
    8000164c:	02078463          	beqz	a5,80001674 <_ZN5Queue3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    80001650:	00053483          	ld	s1,0(a0)
        delete elem;
    80001654:	00002097          	auipc	ra,0x2
    80001658:	cfc080e7          	jalr	-772(ra) # 80003350 <_ZdlPv>
    }
    8000165c:	00048513          	mv	a0,s1
    80001660:	01813083          	ld	ra,24(sp)
    80001664:	01013403          	ld	s0,16(sp)
    80001668:	00813483          	ld	s1,8(sp)
    8000166c:	02010113          	addi	sp,sp,32
    80001670:	00008067          	ret
            tail = 0;
    80001674:	00006797          	auipc	a5,0x6
    80001678:	8a07b223          	sd	zero,-1884(a5) # 80006f18 <_ZN5Queue5queueE+0x8>
    8000167c:	fd5ff06f          	j	80001650 <_ZN5Queue3getEv+0x30>
        if (!head) {return 0;}
    80001680:	00050493          	mv	s1,a0
        return thread;
    80001684:	fd9ff06f          	j	8000165c <_ZN5Queue3getEv+0x3c>

0000000080001688 <_ZN5Queue7isEmptyEv>:
bool Queue::isEmpty() {
    80001688:	ff010113          	addi	sp,sp,-16
    8000168c:	00813423          	sd	s0,8(sp)
    80001690:	01010413          	addi	s0,sp,16
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    80001694:	00006797          	auipc	a5,0x6
    80001698:	87c7b783          	ld	a5,-1924(a5) # 80006f10 <_ZN5Queue5queueE>
    8000169c:	00078e63          	beqz	a5,800016b8 <_ZN5Queue7isEmptyEv+0x30>
        return head->data;
    800016a0:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    800016a4:	00078e63          	beqz	a5,800016c0 <_ZN5Queue7isEmptyEv+0x38>
    }else{return false;}
    800016a8:	00000513          	li	a0,0
}
    800016ac:	00813403          	ld	s0,8(sp)
    800016b0:	01010113          	addi	sp,sp,16
    800016b4:	00008067          	ret
        return true;
    800016b8:	00100513          	li	a0,1
    800016bc:	ff1ff06f          	j	800016ac <_ZN5Queue7isEmptyEv+0x24>
    800016c0:	00100513          	li	a0,1
    800016c4:	fe9ff06f          	j	800016ac <_ZN5Queue7isEmptyEv+0x24>

00000000800016c8 <_GLOBAL__sub_I__ZN5Queue5queueE>:
}
    800016c8:	ff010113          	addi	sp,sp,-16
    800016cc:	00113423          	sd	ra,8(sp)
    800016d0:	00813023          	sd	s0,0(sp)
    800016d4:	01010413          	addi	s0,sp,16
    800016d8:	000105b7          	lui	a1,0x10
    800016dc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800016e0:	00100513          	li	a0,1
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	dbc080e7          	jalr	-580(ra) # 800014a0 <_Z41__static_initialization_and_destruction_0ii>
    800016ec:	00813083          	ld	ra,8(sp)
    800016f0:	00013403          	ld	s0,0(sp)
    800016f4:	01010113          	addi	sp,sp,16
    800016f8:	00008067          	ret

00000000800016fc <_ZN5RiscV10popSppSpieEv>:
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"


void RiscV::popSppSpie() {
    800016fc:	ff010113          	addi	sp,sp,-16
    80001700:	00813423          	sd	s0,8(sp)
    80001704:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001708:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000170c:	10200073          	sret
}
    80001710:	00813403          	ld	s0,8(sp)
    80001714:	01010113          	addi	sp,sp,16
    80001718:	00008067          	ret

000000008000171c <_ZN5RiscV20handleSupervisorTrapEv>:

void RiscV::handleSupervisorTrap() {
    8000171c:	fb010113          	addi	sp,sp,-80
    80001720:	04113423          	sd	ra,72(sp)
    80001724:	04813023          	sd	s0,64(sp)
    80001728:	05010413          	addi	s0,sp,80
    volatile uint64 size;
    volatile uint64 handle;
    volatile uint64 start_routine;
    volatile uint64 arg;
    volatile uint64 ptr;
    __asm__ volatile("sd a3, %0" : "=m"(arg));
    8000172c:	fcd43823          	sd	a3,-48(s0)
    __asm__ volatile("sd a2, %0" : "=m"(start_routine));
    80001730:	fcc43c23          	sd	a2,-40(s0)
    __asm__ volatile("sd a1, %0" : "=m"(handle));
    80001734:	feb43023          	sd	a1,-32(s0)
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    80001738:	142027f3          	csrr	a5,scause
    8000173c:	faf43823          	sd	a5,-80(s0)
    return scause;
    80001740:	fb043703          	ld	a4,-80(s0)

}

inline uint64 RiscV::r_sepc(){
    uint64  sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001744:	141027f3          	csrr	a5,sepc
    //__asm__ volatile("sd a1, %0" : "=m"(size));
    //__asm__ volatile("sd a1, %0" : "=m"(ptr));
    uint64 sysCallNr;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    80001748:	00478793          	addi	a5,a5,4
    8000174c:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64 sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80001750:	100027f3          	csrr	a5,sstatus
    volatile uint64 sstatus = r_sstatus();
    80001754:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    80001758:	00050793          	mv	a5,a0
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
    8000175c:	ff870613          	addi	a2,a4,-8
    80001760:	00100693          	li	a3,1
    80001764:	02c6f863          	bgeu	a3,a2,80001794 <_ZN5RiscV20handleSupervisorTrapEv+0x78>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80001768:	fff00793          	li	a5,-1
    8000176c:	03f79793          	slli	a5,a5,0x3f
    80001770:	00178793          	addi	a5,a5,1
    80001774:	40f70863          	beq	a4,a5,80001b84 <_ZN5RiscV20handleSupervisorTrapEv+0x468>
//             TCB::dispatch();
//             w_sstatus(sstatus);
//             w_sepc(sepc);
//         }
        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    80001778:	fff00793          	li	a5,-1
    8000177c:	03f79793          	slli	a5,a5,0x3f
    80001780:	00978793          	addi	a5,a5,9
    80001784:	18f71e63          	bne	a4,a5,80001920 <_ZN5RiscV20handleSupervisorTrapEv+0x204>
        //supervisor external interrupt (console)
        console_handler();
    80001788:	00004097          	auipc	ra,0x4
    8000178c:	3d8080e7          	jalr	984(ra) # 80005b60 <console_handler>
        //print (scause)
        //print sepc
        //print sval

    }
    80001790:	1900006f          	j	80001920 <_ZN5RiscV20handleSupervisorTrapEv+0x204>
        if (sysCallNr == 0x01UL) {
    80001794:	00100713          	li	a4,1
    80001798:	06e78c63          	beq	a5,a4,80001810 <_ZN5RiscV20handleSupervisorTrapEv+0xf4>
        } else if (sysCallNr == 0x02UL) {
    8000179c:	00200713          	li	a4,2
    800017a0:	1ae78263          	beq	a5,a4,80001944 <_ZN5RiscV20handleSupervisorTrapEv+0x228>
        }else if(sysCallNr == 0x11UL){
    800017a4:	01100713          	li	a4,17
    800017a8:	2ae78e63          	beq	a5,a4,80001a64 <_ZN5RiscV20handleSupervisorTrapEv+0x348>
        }else if(sysCallNr == 0x12UL){
    800017ac:	01200713          	li	a4,18
    800017b0:	2ce78c63          	beq	a5,a4,80001a88 <_ZN5RiscV20handleSupervisorTrapEv+0x36c>
        }else if(sysCallNr == 0x13UL){
    800017b4:	01300713          	li	a4,19
    800017b8:	30e78063          	beq	a5,a4,80001ab8 <_ZN5RiscV20handleSupervisorTrapEv+0x39c>
        }else if(sysCallNr==0x14UL){
    800017bc:	01400713          	li	a4,20
    800017c0:	30e78263          	beq	a5,a4,80001ac4 <_ZN5RiscV20handleSupervisorTrapEv+0x3a8>
        }else if(sysCallNr==0x15UL){
    800017c4:	01500713          	li	a4,21
    800017c8:	32e78063          	beq	a5,a4,80001ae8 <_ZN5RiscV20handleSupervisorTrapEv+0x3cc>
        }else if(sysCallNr == 0x21UL){
    800017cc:	02100713          	li	a4,33
    800017d0:	32e78c63          	beq	a5,a4,80001b08 <_ZN5RiscV20handleSupervisorTrapEv+0x3ec>
        }else if(sysCallNr == 0x22UL){
    800017d4:	02200713          	li	a4,34
    800017d8:	34e78863          	beq	a5,a4,80001b28 <_ZN5RiscV20handleSupervisorTrapEv+0x40c>
        }else if(sysCallNr == 0x23UL){
    800017dc:	02300713          	li	a4,35
    800017e0:	36e78063          	beq	a5,a4,80001b40 <_ZN5RiscV20handleSupervisorTrapEv+0x424>
        }else if(sysCallNr == 0x24UL){
    800017e4:	02400713          	li	a4,36
    800017e8:	36e78863          	beq	a5,a4,80001b58 <_ZN5RiscV20handleSupervisorTrapEv+0x43c>
       }else if(sysCallNr==0x41UL){
    800017ec:	04100713          	li	a4,65
    800017f0:	38e78063          	beq	a5,a4,80001b70 <_ZN5RiscV20handleSupervisorTrapEv+0x454>
        }else if(sysCallNr==0x42UL){
    800017f4:	04200713          	li	a4,66
    800017f8:	10e79c63          	bne	a5,a4,80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
            __putc((char)handle);
    800017fc:	fe043503          	ld	a0,-32(s0)
    80001800:	0ff57513          	andi	a0,a0,255
    80001804:	00004097          	auipc	ra,0x4
    80001808:	2e8080e7          	jalr	744(ra) # 80005aec <__putc>
    8000180c:	1040006f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
    80001810:	00058793          	mv	a5,a1
    80001814:	fef43423          	sd	a5,-24(s0)
            void* pointer=MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks((size_t)size)); //gore imas da pretvoris u bytes to blocks
    80001818:	fe843783          	ld	a5,-24(s0)

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000181c:	05778793          	addi	a5,a5,87
    80001820:	0067d793          	srli	a5,a5,0x6
    80001824:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80001828:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000182c:	00005717          	auipc	a4,0x5
    80001830:	67473703          	ld	a4,1652(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001834:	00073703          	ld	a4,0(a4)
    80001838:	0c070863          	beqz	a4,80001908 <_ZN5RiscV20handleSupervisorTrapEv+0x1ec>
            cur->next=fmem_head->next;
    8000183c:	00005697          	auipc	a3,0x5
    80001840:	6646b683          	ld	a3,1636(a3) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001844:	0006b603          	ld	a2,0(a3)
    80001848:	00063603          	ld	a2,0(a2)
    8000184c:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    80001850:	0006b683          	ld	a3,0(a3)
    80001854:	0086b583          	ld	a1,8(a3)
    80001858:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    8000185c:	01073683          	ld	a3,16(a4)
    80001860:	02f6e663          	bltu	a3,a5,8000188c <_ZN5RiscV20handleSupervisorTrapEv+0x170>
            if (cur->size-size<=sizeof(FreeMem)){
    80001864:	40f686b3          	sub	a3,a3,a5
    80001868:	01800513          	li	a0,24
    8000186c:	02d56c63          	bltu	a0,a3,800018a4 <_ZN5RiscV20handleSupervisorTrapEv+0x188>
                if (cur->prev) cur->prev->next = cur->next;
    80001870:	02058263          	beqz	a1,80001894 <_ZN5RiscV20handleSupervisorTrapEv+0x178>
    80001874:	00c5b023          	sd	a2,0(a1)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80001878:	00073783          	ld	a5,0(a4)
    8000187c:	08078663          	beqz	a5,80001908 <_ZN5RiscV20handleSupervisorTrapEv+0x1ec>
    80001880:	00873683          	ld	a3,8(a4)
    80001884:	00d7b423          	sd	a3,8(a5)
                return cur;
    80001888:	0800006f          	j	80001908 <_ZN5RiscV20handleSupervisorTrapEv+0x1ec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000188c:	00060713          	mv	a4,a2
    80001890:	fa9ff06f          	j	80001838 <_ZN5RiscV20handleSupervisorTrapEv+0x11c>
                else fmem_head = cur->next;
    80001894:	00005797          	auipc	a5,0x5
    80001898:	60c7b783          	ld	a5,1548(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000189c:	00c7b023          	sd	a2,0(a5)
    800018a0:	fd9ff06f          	j	80001878 <_ZN5RiscV20handleSupervisorTrapEv+0x15c>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800018a4:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    800018a8:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    800018ac:	0006b023          	sd	zero,0(a3)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800018b0:	00873603          	ld	a2,8(a4)
    800018b4:	06060e63          	beqz	a2,80001930 <_ZN5RiscV20handleSupervisorTrapEv+0x214>
    800018b8:	00d63023          	sd	a3,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800018bc:	00073603          	ld	a2,0(a4)
    800018c0:	00060463          	beqz	a2,800018c8 <_ZN5RiscV20handleSupervisorTrapEv+0x1ac>
    800018c4:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    800018c8:	00873603          	ld	a2,8(a4)
    800018cc:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    800018d0:	00073583          	ld	a1,0(a4)
    800018d4:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    800018d8:	01073703          	ld	a4,16(a4)
    800018dc:	40f707b3          	sub	a5,a4,a5
    800018e0:	00f6b823          	sd	a5,16(a3)
                fmem_head =newfrgm+sizeof(fmem_head);
    800018e4:	0c068713          	addi	a4,a3,192
    800018e8:	00005597          	auipc	a1,0x5
    800018ec:	5b85b583          	ld	a1,1464(a1) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018f0:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    800018f4:	0006b583          	ld	a1,0(a3)
    800018f8:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    800018fc:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    80001900:	0cf6b823          	sd	a5,208(a3)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001904:	00068713          	mv	a4,a3
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
    80001908:	00070593          	mv	a1,a4
            __asm__ volatile("sd a1, 88(s0)");
    8000190c:	04b43c23          	sd	a1,88(s0)
        w_sstatus(sstatus);
    80001910:	fb843783          	ld	a5,-72(s0)
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 volatile sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    80001914:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001918:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    8000191c:	14179073          	csrw	sepc,a5
    80001920:	04813083          	ld	ra,72(sp)
    80001924:	04013403          	ld	s0,64(sp)
    80001928:	05010113          	addi	sp,sp,80
    8000192c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001930:	0c068613          	addi	a2,a3,192
    80001934:	00005597          	auipc	a1,0x5
    80001938:	56c5b583          	ld	a1,1388(a1) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000193c:	00c5b023          	sd	a2,0(a1)
    80001940:	f7dff06f          	j	800018bc <_ZN5RiscV20handleSupervisorTrapEv+0x1a0>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    80001944:	00058793          	mv	a5,a1
    80001948:	fcf43423          	sd	a5,-56(s0)
            int ret=MemoryAllocation::mem_free((void*)ptr);
    8000194c:	fc843703          	ld	a4,-56(s0)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001950:	00005797          	auipc	a5,0x5
    80001954:	5507b783          	ld	a5,1360(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001958:	0007b783          	ld	a5,0(a5)
    8000195c:	00078e63          	beqz	a5,80001978 <_ZN5RiscV20handleSupervisorTrapEv+0x25c>
    80001960:	02f76063          	bltu	a4,a5,80001980 <_ZN5RiscV20handleSupervisorTrapEv+0x264>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001964:	00078693          	mv	a3,a5
    80001968:	0007b783          	ld	a5,0(a5)
    8000196c:	00f70c63          	beq	a4,a5,80001984 <_ZN5RiscV20handleSupervisorTrapEv+0x268>
    80001970:	fee7eae3          	bltu	a5,a4,80001964 <_ZN5RiscV20handleSupervisorTrapEv+0x248>
    80001974:	0100006f          	j	80001984 <_ZN5RiscV20handleSupervisorTrapEv+0x268>
            cur=nullptr;
    80001978:	00078693          	mv	a3,a5
    8000197c:	0080006f          	j	80001984 <_ZN5RiscV20handleSupervisorTrapEv+0x268>
    80001980:	00000693          	li	a3,0
                newSeg->next=nullptr;
    80001984:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001988:	04000793          	li	a5,64
    8000198c:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    80001990:	00d73423          	sd	a3,8(a4)
                if(cur) {
    80001994:	06068263          	beqz	a3,800019f8 <_ZN5RiscV20handleSupervisorTrapEv+0x2dc>
                    newSeg->next = cur->next;
    80001998:	0006b783          	ld	a5,0(a3)
    8000199c:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    800019a0:	00073783          	ld	a5,0(a4)
    800019a4:	00078463          	beqz	a5,800019ac <_ZN5RiscV20handleSupervisorTrapEv+0x290>
                    newSeg->next->prev=newSeg;
    800019a8:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    800019ac:	06068063          	beqz	a3,80001a0c <_ZN5RiscV20handleSupervisorTrapEv+0x2f0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800019b0:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    800019b4:	00070c63          	beqz	a4,800019cc <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800019b8:	00073783          	ld	a5,0(a4)
    800019bc:	00078863          	beqz	a5,800019cc <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
    800019c0:	01073603          	ld	a2,16(a4)
    800019c4:	00c705b3          	add	a1,a4,a2
    800019c8:	04b78a63          	beq	a5,a1,80001a1c <_ZN5RiscV20handleSupervisorTrapEv+0x300>
        if (!curr) return;
    800019cc:	00068c63          	beqz	a3,800019e4 <_ZN5RiscV20handleSupervisorTrapEv+0x2c8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800019d0:	0006b783          	ld	a5,0(a3)
    800019d4:	00078863          	beqz	a5,800019e4 <_ZN5RiscV20handleSupervisorTrapEv+0x2c8>
    800019d8:	0106b603          	ld	a2,16(a3)
    800019dc:	00c685b3          	add	a1,a3,a2
    800019e0:	04b78e63          	beq	a5,a1,80001a3c <_ZN5RiscV20handleSupervisorTrapEv+0x320>
            if(newSeg==nullptr){
    800019e4:	06070c63          	beqz	a4,80001a5c <_ZN5RiscV20handleSupervisorTrapEv+0x340>
            }else{return 0;}
    800019e8:	00000793          	li	a5,0
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
    800019ec:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
    800019f0:	04b43c23          	sd	a1,88(s0)
    800019f4:	f1dff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
                    newSeg->next = fmem_head;
    800019f8:	00005797          	auipc	a5,0x5
    800019fc:	4a87b783          	ld	a5,1192(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a00:	0007b783          	ld	a5,0(a5)
    80001a04:	00f73023          	sd	a5,0(a4)
    80001a08:	f99ff06f          	j	800019a0 <_ZN5RiscV20handleSupervisorTrapEv+0x284>
                    fmem_head = newSeg;
    80001a0c:	00005797          	auipc	a5,0x5
    80001a10:	4947b783          	ld	a5,1172(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a14:	00e7b023          	sd	a4,0(a5)
    80001a18:	f9dff06f          	j	800019b4 <_ZN5RiscV20handleSupervisorTrapEv+0x298>
            curr->size += curr->next->size;
    80001a1c:	0107b583          	ld	a1,16(a5)
    80001a20:	00b60633          	add	a2,a2,a1
    80001a24:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    80001a28:	0007b783          	ld	a5,0(a5)
    80001a2c:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001a30:	f8078ee3          	beqz	a5,800019cc <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
    80001a34:	00e7b423          	sd	a4,8(a5)
    80001a38:	f95ff06f          	j	800019cc <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
            curr->size += curr->next->size;
    80001a3c:	0107b583          	ld	a1,16(a5)
    80001a40:	00b60633          	add	a2,a2,a1
    80001a44:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    80001a48:	0007b783          	ld	a5,0(a5)
    80001a4c:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    80001a50:	f8078ae3          	beqz	a5,800019e4 <_ZN5RiscV20handleSupervisorTrapEv+0x2c8>
    80001a54:	00d7b423          	sd	a3,8(a5)
    80001a58:	f8dff06f          	j	800019e4 <_ZN5RiscV20handleSupervisorTrapEv+0x2c8>
                return -1;
    80001a5c:	fff00793          	li	a5,-1
    80001a60:	f8dff06f          	j	800019ec <_ZN5RiscV20handleSupervisorTrapEv+0x2d0>
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg, true);
    80001a64:	fd843503          	ld	a0,-40(s0)
    80001a68:	fe043583          	ld	a1,-32(s0)
    80001a6c:	fd043603          	ld	a2,-48(s0)
    80001a70:	00100693          	li	a3,1
    80001a74:	00001097          	auipc	ra,0x1
    80001a78:	2d0080e7          	jalr	720(ra) # 80002d44 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001a7c:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001a80:	04b43c23          	sd	a1,88(s0)
    80001a84:	e8dff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
    static int createThread(Body body, TCB** handle, void* arguments, bool started);

    static void thread_dispatch(){dispatch();}

    static int thread_exit(){
        running->setFinished(true);
    80001a88:	00100593          	li	a1,1
    80001a8c:	00005797          	auipc	a5,0x5
    80001a90:	41c7b783          	ld	a5,1052(a5) # 80006ea8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a94:	0007b503          	ld	a0,0(a5)
    80001a98:	00001097          	auipc	ra,0x1
    80001a9c:	290080e7          	jalr	656(ra) # 80002d28 <_ZN3TCB11setFinishedEb>
        dispatch();
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	608080e7          	jalr	1544(ra) # 800030a8 <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    80001aa8:	00000793          	li	a5,0
    80001aac:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    80001ab0:	04b43c23          	sd	a1,88(s0)
    80001ab4:	e5dff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
    static void thread_dispatch(){dispatch();}
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	5f0080e7          	jalr	1520(ra) # 800030a8 <_ZN3TCB8dispatchEv>
    80001ac0:	e51ff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg, false);
    80001ac4:	fd843503          	ld	a0,-40(s0)
    80001ac8:	fe043583          	ld	a1,-32(s0)
    80001acc:	fd043603          	ld	a2,-48(s0)
    80001ad0:	00000693          	li	a3,0
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	270080e7          	jalr	624(ra) # 80002d44 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001adc:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001ae0:	04b43c23          	sd	a1,88(s0)
    80001ae4:	e2dff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
            TCB::startThread((thread_t*)handle);
    80001ae8:	fe043783          	ld	a5,-32(s0)
    bool isStarted() {
        return threadStarted;
    }

    static void startThread(TCB** handle){
        (*handle)->threadStarted=true;
    80001aec:	0007b703          	ld	a4,0(a5)
    80001af0:	00100693          	li	a3,1
    80001af4:	04d70023          	sb	a3,64(a4)
        Scheduler::put(*handle); //vidi nekako da startuje handle nad kojim pozivas, mada mislim da ce poziv izgledati handle->start
    80001af8:	0007b503          	ld	a0,0(a5)
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	ff4080e7          	jalr	-12(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
    }
    80001b04:	e0dff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
            int retval = semaphore::semOpen((sem_t*)handle, (unsigned)start_routine);
    80001b08:	fe043503          	ld	a0,-32(s0)
    80001b0c:	fd843583          	ld	a1,-40(s0)
    80001b10:	0005859b          	sext.w	a1,a1
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	280080e7          	jalr	640(ra) # 80001d94 <_ZN9semaphore7semOpenEPPS_j>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b1c:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b20:	04b43c23          	sd	a1,88(s0)
    80001b24:	dedff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
            int retval = semaphore::semClose((sem_t)handle);
    80001b28:	fe043503          	ld	a0,-32(s0)
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	488080e7          	jalr	1160(ra) # 80001fb4 <_ZN9semaphore8semCloseEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b34:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b38:	04b43c23          	sd	a1,88(s0)
    80001b3c:	dd5ff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
            int retval = semaphore::semWait((sem_t)handle);
    80001b40:	fe043503          	ld	a0,-32(s0)
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	5bc080e7          	jalr	1468(ra) # 80002100 <_ZN9semaphore7semWaitEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b4c:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b50:	04b43c23          	sd	a1,88(s0)
    80001b54:	dbdff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
            int retval = semaphore::semSignal((sem_t)handle);
    80001b58:	fe043503          	ld	a0,-32(s0)
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	5f8080e7          	jalr	1528(ra) # 80002154 <_ZN9semaphore9semSignalEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b64:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b68:	04b43c23          	sd	a1,88(s0)
    80001b6c:	da5ff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
            char retval = __getc();
    80001b70:	00004097          	auipc	ra,0x4
    80001b74:	fb8080e7          	jalr	-72(ra) # 80005b28 <__getc>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b78:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b7c:	04b43c23          	sd	a1,88(s0)
    80001b80:	d91ff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001b84:	00200793          	li	a5,2
    80001b88:	1447b073          	csrc	sip,a5
}
    80001b8c:	d95ff06f          	j	80001920 <_ZN5RiscV20handleSupervisorTrapEv+0x204>

0000000080001b90 <_ZN9semaphore5blockEv>:
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"

void semaphore::block() {
    80001b90:	fe010113          	addi	sp,sp,-32
    80001b94:	00113c23          	sd	ra,24(sp)
    80001b98:	00813823          	sd	s0,16(sp)
    80001b9c:	00913423          	sd	s1,8(sp)
    80001ba0:	01213023          	sd	s2,0(sp)
    80001ba4:	02010413          	addi	s0,sp,32
    80001ba8:	00050913          	mv	s2,a0
        //setjmp je linija old=running;
        TCB *old = TCB::running;
    80001bac:	00005797          	auipc	a5,0x5
    80001bb0:	2fc7b783          	ld	a5,764(a5) # 80006ea8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bb4:	0007b483          	ld	s1,0(a5)
        old->semBlocked=this;
    80001bb8:	02a4b823          	sd	a0,48(s1)
        if (!old->isFinished()) {
    80001bbc:	00048513          	mv	a0,s1
    80001bc0:	00001097          	auipc	ra,0x1
    80001bc4:	14c080e7          	jalr	332(ra) # 80002d0c <_ZNK3TCB10isFinishedEv>
    80001bc8:	04050063          	beqz	a0,80001c08 <_ZN9semaphore5blockEv+0x78>
            blocked->addLast(old);
        }
        TCB::running = Scheduler::get();
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	ebc080e7          	jalr	-324(ra) # 80002a88 <_ZN9Scheduler3getEv>
    80001bd4:	00005797          	auipc	a5,0x5
    80001bd8:	2d47b783          	ld	a5,724(a5) # 80006ea8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bdc:	00a7b023          	sd	a0,0(a5)


        TCB::contextSwitch(&old->context, &TCB::running->context);//TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
    80001be0:	01050593          	addi	a1,a0,16
    80001be4:	01048513          	addi	a0,s1,16
    80001be8:	fffff097          	auipc	ra,0xfffff
    80001bec:	648080e7          	jalr	1608(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
        //marinko kaze da je dobar ovaj block

        //TCB::running->semBlocked=this;
        //this->blocked->put(TCB::running);
        //TCB::dispatch();
}
    80001bf0:	01813083          	ld	ra,24(sp)
    80001bf4:	01013403          	ld	s0,16(sp)
    80001bf8:	00813483          	ld	s1,8(sp)
    80001bfc:	00013903          	ld	s2,0(sp)
    80001c00:	02010113          	addi	sp,sp,32
    80001c04:	00008067          	ret
            blocked->addLast(old);
    80001c08:	00893583          	ld	a1,8(s2)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001c0c:	00005797          	auipc	a5,0x5
    80001c10:	2947b783          	ld	a5,660(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c14:	0007b783          	ld	a5,0(a5)
    80001c18:	0c078a63          	beqz	a5,80001cec <_ZN9semaphore5blockEv+0x15c>
            cur->next=fmem_head->next;
    80001c1c:	00005717          	auipc	a4,0x5
    80001c20:	28473703          	ld	a4,644(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c24:	00073683          	ld	a3,0(a4)
    80001c28:	0006b683          	ld	a3,0(a3)
    80001c2c:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001c30:	00073703          	ld	a4,0(a4)
    80001c34:	00873603          	ld	a2,8(a4)
    80001c38:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001c3c:	0107b703          	ld	a4,16(a5)
    80001c40:	03f00513          	li	a0,63
    80001c44:	02e57663          	bgeu	a0,a4,80001c70 <_ZN9semaphore5blockEv+0xe0>
            if (cur->size-size<=sizeof(FreeMem)){
    80001c48:	fc070713          	addi	a4,a4,-64
    80001c4c:	01800513          	li	a0,24
    80001c50:	02e56c63          	bltu	a0,a4,80001c88 <_ZN9semaphore5blockEv+0xf8>
                if (cur->prev) cur->prev->next = cur->next;
    80001c54:	02060263          	beqz	a2,80001c78 <_ZN9semaphore5blockEv+0xe8>
    80001c58:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001c5c:	0007b703          	ld	a4,0(a5)
    80001c60:	08070663          	beqz	a4,80001cec <_ZN9semaphore5blockEv+0x15c>
    80001c64:	0087b683          	ld	a3,8(a5)
    80001c68:	00d73423          	sd	a3,8(a4)
                return cur;
    80001c6c:	0800006f          	j	80001cec <_ZN9semaphore5blockEv+0x15c>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001c70:	00068793          	mv	a5,a3
    80001c74:	fa5ff06f          	j	80001c18 <_ZN9semaphore5blockEv+0x88>
                else fmem_head = cur->next;
    80001c78:	00005717          	auipc	a4,0x5
    80001c7c:	22873703          	ld	a4,552(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c80:	00d73023          	sd	a3,0(a4)
    80001c84:	fd9ff06f          	j	80001c5c <_ZN9semaphore5blockEv+0xcc>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001c88:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001c8c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001c90:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001c94:	0087b683          	ld	a3,8(a5)
    80001c98:	06068863          	beqz	a3,80001d08 <_ZN9semaphore5blockEv+0x178>
    80001c9c:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001ca0:	0007b683          	ld	a3,0(a5)
    80001ca4:	00068463          	beqz	a3,80001cac <_ZN9semaphore5blockEv+0x11c>
    80001ca8:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001cac:	0087b603          	ld	a2,8(a5)
    80001cb0:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001cb4:	0007b683          	ld	a3,0(a5)
    80001cb8:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001cbc:	0107b783          	ld	a5,16(a5)
    80001cc0:	fc078793          	addi	a5,a5,-64
    80001cc4:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001cc8:	0c070693          	addi	a3,a4,192
    80001ccc:	00005517          	auipc	a0,0x5
    80001cd0:	1d453503          	ld	a0,468(a0) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cd4:	00d53023          	sd	a3,0(a0)
                fmem_head->next=newfrgm->next;
    80001cd8:	00073503          	ld	a0,0(a4)
    80001cdc:	0ca73023          	sd	a0,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001ce0:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001ce4:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001ce8:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    80001cec:	0097b023          	sd	s1,0(a5)
        elem->next=nullptr;
    80001cf0:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001cf4:	0085b703          	ld	a4,8(a1)
    80001cf8:	02070263          	beqz	a4,80001d1c <_ZN9semaphore5blockEv+0x18c>
            tail->next=elem;
    80001cfc:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001d00:	00f5b423          	sd	a5,8(a1)
    80001d04:	ec9ff06f          	j	80001bcc <_ZN9semaphore5blockEv+0x3c>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001d08:	0c070693          	addi	a3,a4,192
    80001d0c:	00005617          	auipc	a2,0x5
    80001d10:	19463603          	ld	a2,404(a2) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d14:	00d63023          	sd	a3,0(a2)
    80001d18:	f89ff06f          	j	80001ca0 <_ZN9semaphore5blockEv+0x110>
        }else{
            head=tail=elem;
    80001d1c:	00f5b423          	sd	a5,8(a1)
    80001d20:	00f5b023          	sd	a5,0(a1)
    80001d24:	ea9ff06f          	j	80001bcc <_ZN9semaphore5blockEv+0x3c>

0000000080001d28 <_ZN9semaphore7unblockEv>:

void semaphore::unblock() {
    80001d28:	fe010113          	addi	sp,sp,-32
    80001d2c:	00113c23          	sd	ra,24(sp)
    80001d30:	00813823          	sd	s0,16(sp)
    80001d34:	00913423          	sd	s1,8(sp)
    80001d38:	02010413          	addi	s0,sp,32
    TCB* t = blocked->removeFirst();
    80001d3c:	00853783          	ld	a5,8(a0)
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001d40:	0007b503          	ld	a0,0(a5)
    80001d44:	04050463          	beqz	a0,80001d8c <_ZN9semaphore7unblockEv+0x64>
        Elem *elem = head;
        head = head->next;
    80001d48:	00853703          	ld	a4,8(a0)
    80001d4c:	00e7b023          	sd	a4,0(a5)
        if(!head) {
    80001d50:	02070a63          	beqz	a4,80001d84 <_ZN9semaphore7unblockEv+0x5c>
            tail = 0;
        }
        T* ret = elem->data;
    80001d54:	00053483          	ld	s1,0(a0)
        delete elem;
    80001d58:	00001097          	auipc	ra,0x1
    80001d5c:	5f8080e7          	jalr	1528(ra) # 80003350 <_ZdlPv>
    t->semBlocked=nullptr;
    80001d60:	0204b823          	sd	zero,48(s1)
    Scheduler::put(t);
    80001d64:	00048513          	mv	a0,s1
    80001d68:	00001097          	auipc	ra,0x1
    80001d6c:	d88080e7          	jalr	-632(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
}
    80001d70:	01813083          	ld	ra,24(sp)
    80001d74:	01013403          	ld	s0,16(sp)
    80001d78:	00813483          	ld	s1,8(sp)
    80001d7c:	02010113          	addi	sp,sp,32
    80001d80:	00008067          	ret
            tail = 0;
    80001d84:	0007b423          	sd	zero,8(a5)
    80001d88:	fcdff06f          	j	80001d54 <_ZN9semaphore7unblockEv+0x2c>
        if (!head) {return 0;}
    80001d8c:	00050493          	mv	s1,a0
    80001d90:	fd1ff06f          	j	80001d60 <_ZN9semaphore7unblockEv+0x38>

0000000080001d94 <_ZN9semaphore7semOpenEPPS_j>:

int semaphore::semOpen(semaphore **handle, unsigned init) {
    80001d94:	ff010113          	addi	sp,sp,-16
    80001d98:	00813423          	sd	s0,8(sp)
    80001d9c:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001da0:	00005797          	auipc	a5,0x5
    80001da4:	1007b783          	ld	a5,256(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001da8:	0007b783          	ld	a5,0(a5)
    80001dac:	0c078a63          	beqz	a5,80001e80 <_ZN9semaphore7semOpenEPPS_j+0xec>
            cur->next=fmem_head->next;
    80001db0:	00005717          	auipc	a4,0x5
    80001db4:	0f073703          	ld	a4,240(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001db8:	00073683          	ld	a3,0(a4)
    80001dbc:	0006b683          	ld	a3,0(a3)
    80001dc0:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001dc4:	00073703          	ld	a4,0(a4)
    80001dc8:	00873603          	ld	a2,8(a4)
    80001dcc:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001dd0:	0107b703          	ld	a4,16(a5)
    80001dd4:	03f00813          	li	a6,63
    80001dd8:	02e87663          	bgeu	a6,a4,80001e04 <_ZN9semaphore7semOpenEPPS_j+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001ddc:	fc070713          	addi	a4,a4,-64
    80001de0:	01800813          	li	a6,24
    80001de4:	02e86c63          	bltu	a6,a4,80001e1c <_ZN9semaphore7semOpenEPPS_j+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001de8:	02060263          	beqz	a2,80001e0c <_ZN9semaphore7semOpenEPPS_j+0x78>
    80001dec:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001df0:	0007b703          	ld	a4,0(a5)
    80001df4:	08070663          	beqz	a4,80001e80 <_ZN9semaphore7semOpenEPPS_j+0xec>
    80001df8:	0087b683          	ld	a3,8(a5)
    80001dfc:	00d73423          	sd	a3,8(a4)
                return cur;
    80001e00:	0800006f          	j	80001e80 <_ZN9semaphore7semOpenEPPS_j+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001e04:	00068793          	mv	a5,a3
    80001e08:	fa5ff06f          	j	80001dac <_ZN9semaphore7semOpenEPPS_j+0x18>
                else fmem_head = cur->next;
    80001e0c:	00005717          	auipc	a4,0x5
    80001e10:	09473703          	ld	a4,148(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e14:	00d73023          	sd	a3,0(a4)
    80001e18:	fd9ff06f          	j	80001df0 <_ZN9semaphore7semOpenEPPS_j+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001e1c:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001e20:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001e24:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001e28:	0087b683          	ld	a3,8(a5)
    80001e2c:	0c068463          	beqz	a3,80001ef4 <_ZN9semaphore7semOpenEPPS_j+0x160>
    80001e30:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001e34:	0007b683          	ld	a3,0(a5)
    80001e38:	00068463          	beqz	a3,80001e40 <_ZN9semaphore7semOpenEPPS_j+0xac>
    80001e3c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001e40:	0087b603          	ld	a2,8(a5)
    80001e44:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001e48:	0007b683          	ld	a3,0(a5)
    80001e4c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001e50:	0107b783          	ld	a5,16(a5)
    80001e54:	fc078793          	addi	a5,a5,-64
    80001e58:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001e5c:	0c070693          	addi	a3,a4,192
    80001e60:	00005817          	auipc	a6,0x5
    80001e64:	04083803          	ld	a6,64(a6) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e68:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80001e6c:	00073803          	ld	a6,0(a4)
    80001e70:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001e74:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001e78:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001e7c:	00070793          	mv	a5,a4
    *handle=(semaphore*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(semaphore)));
    80001e80:	00f53023          	sd	a5,0(a0)
    if (*handle==nullptr){
    80001e84:	12078463          	beqz	a5,80001fac <_ZN9semaphore7semOpenEPPS_j+0x218>
        return -1;
    }
    (*handle)->val=init;
    80001e88:	00b7a023          	sw	a1,0(a5)
    (*handle)->blocked=(LinkedList<TCB>*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(LinkedList<TCB>)));
    80001e8c:	00053503          	ld	a0,0(a0)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001e90:	00005797          	auipc	a5,0x5
    80001e94:	0107b783          	ld	a5,16(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e98:	0007b783          	ld	a5,0(a5)
    80001e9c:	0e078463          	beqz	a5,80001f84 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
            cur->next=fmem_head->next;
    80001ea0:	00005717          	auipc	a4,0x5
    80001ea4:	00073703          	ld	a4,0(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ea8:	00073683          	ld	a3,0(a4)
    80001eac:	0006b683          	ld	a3,0(a3)
    80001eb0:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001eb4:	00073703          	ld	a4,0(a4)
    80001eb8:	00873603          	ld	a2,8(a4)
    80001ebc:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001ec0:	0107b703          	ld	a4,16(a5)
    80001ec4:	03f00593          	li	a1,63
    80001ec8:	04e5f063          	bgeu	a1,a4,80001f08 <_ZN9semaphore7semOpenEPPS_j+0x174>
            if (cur->size-size<=sizeof(FreeMem)){
    80001ecc:	fc070713          	addi	a4,a4,-64
    80001ed0:	01800593          	li	a1,24
    80001ed4:	04e5e663          	bltu	a1,a4,80001f20 <_ZN9semaphore7semOpenEPPS_j+0x18c>
                if (cur->prev) cur->prev->next = cur->next;
    80001ed8:	02060c63          	beqz	a2,80001f10 <_ZN9semaphore7semOpenEPPS_j+0x17c>
    80001edc:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001ee0:	0007b703          	ld	a4,0(a5)
    80001ee4:	0a070063          	beqz	a4,80001f84 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
    80001ee8:	0087b683          	ld	a3,8(a5)
    80001eec:	00d73423          	sd	a3,8(a4)
                return cur;
    80001ef0:	0940006f          	j	80001f84 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001ef4:	0c070693          	addi	a3,a4,192
    80001ef8:	00005617          	auipc	a2,0x5
    80001efc:	fa863603          	ld	a2,-88(a2) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f00:	00d63023          	sd	a3,0(a2)
    80001f04:	f31ff06f          	j	80001e34 <_ZN9semaphore7semOpenEPPS_j+0xa0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001f08:	00068793          	mv	a5,a3
    80001f0c:	f91ff06f          	j	80001e9c <_ZN9semaphore7semOpenEPPS_j+0x108>
                else fmem_head = cur->next;
    80001f10:	00005717          	auipc	a4,0x5
    80001f14:	f9073703          	ld	a4,-112(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f18:	00d73023          	sd	a3,0(a4)
    80001f1c:	fc5ff06f          	j	80001ee0 <_ZN9semaphore7semOpenEPPS_j+0x14c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001f20:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001f24:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001f28:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001f2c:	0087b683          	ld	a3,8(a5)
    80001f30:	06068463          	beqz	a3,80001f98 <_ZN9semaphore7semOpenEPPS_j+0x204>
    80001f34:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001f38:	0007b683          	ld	a3,0(a5)
    80001f3c:	00068463          	beqz	a3,80001f44 <_ZN9semaphore7semOpenEPPS_j+0x1b0>
    80001f40:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001f44:	0087b603          	ld	a2,8(a5)
    80001f48:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001f4c:	0007b683          	ld	a3,0(a5)
    80001f50:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001f54:	0107b783          	ld	a5,16(a5)
    80001f58:	fc078793          	addi	a5,a5,-64
    80001f5c:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001f60:	0c070693          	addi	a3,a4,192
    80001f64:	00005597          	auipc	a1,0x5
    80001f68:	f3c5b583          	ld	a1,-196(a1) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f6c:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001f70:	00073583          	ld	a1,0(a4)
    80001f74:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001f78:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001f7c:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001f80:	00070793          	mv	a5,a4
    80001f84:	00f53423          	sd	a5,8(a0)
    return  0;
    80001f88:	00000513          	li	a0,0
}
    80001f8c:	00813403          	ld	s0,8(sp)
    80001f90:	01010113          	addi	sp,sp,16
    80001f94:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001f98:	0c070693          	addi	a3,a4,192
    80001f9c:	00005617          	auipc	a2,0x5
    80001fa0:	f0463603          	ld	a2,-252(a2) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fa4:	00d63023          	sd	a3,0(a2)
    80001fa8:	f91ff06f          	j	80001f38 <_ZN9semaphore7semOpenEPPS_j+0x1a4>
        return -1;
    80001fac:	fff00513          	li	a0,-1
    80001fb0:	fddff06f          	j	80001f8c <_ZN9semaphore7semOpenEPPS_j+0x1f8>

0000000080001fb4 <_ZN9semaphore8semCloseEPS_>:

int semaphore::semClose(semaphore *semID) {
    80001fb4:	fe010113          	addi	sp,sp,-32
    80001fb8:	00113c23          	sd	ra,24(sp)
    80001fbc:	00813823          	sd	s0,16(sp)
    80001fc0:	00913423          	sd	s1,8(sp)
    80001fc4:	02010413          	addi	s0,sp,32
    80001fc8:	00050493          	mv	s1,a0
    while(((semID)->blocked->listEmpty())==false){
    80001fcc:	0084b783          	ld	a5,8(s1)
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    80001fd0:	0007b783          	ld	a5,0(a5)
    80001fd4:	00078e63          	beqz	a5,80001ff0 <_ZN9semaphore8semCloseEPS_+0x3c>
        return head->data;
    80001fd8:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    80001fdc:	00078a63          	beqz	a5,80001ff0 <_ZN9semaphore8semCloseEPS_+0x3c>
        (semID)->unblock();
    80001fe0:	00048513          	mv	a0,s1
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	d44080e7          	jalr	-700(ra) # 80001d28 <_ZN9semaphore7unblockEv>
    while(((semID)->blocked->listEmpty())==false){
    80001fec:	fe1ff06f          	j	80001fcc <_ZN9semaphore8semCloseEPS_+0x18>
        if(!fmem_head || ptr < (char*)fmem_head)
    80001ff0:	00005797          	auipc	a5,0x5
    80001ff4:	eb07b783          	ld	a5,-336(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ff8:	0007b783          	ld	a5,0(a5)
    80001ffc:	00078e63          	beqz	a5,80002018 <_ZN9semaphore8semCloseEPS_+0x64>
    80002000:	02f4e063          	bltu	s1,a5,80002020 <_ZN9semaphore8semCloseEPS_+0x6c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002004:	00078713          	mv	a4,a5
    80002008:	0007b783          	ld	a5,0(a5)
    8000200c:	00f48c63          	beq	s1,a5,80002024 <_ZN9semaphore8semCloseEPS_+0x70>
    80002010:	fe97eae3          	bltu	a5,s1,80002004 <_ZN9semaphore8semCloseEPS_+0x50>
    80002014:	0100006f          	j	80002024 <_ZN9semaphore8semCloseEPS_+0x70>
            cur=nullptr;
    80002018:	00078713          	mv	a4,a5
    8000201c:	0080006f          	j	80002024 <_ZN9semaphore8semCloseEPS_+0x70>
    80002020:	00000713          	li	a4,0
                newSeg->next=nullptr;
    80002024:	0004b023          	sd	zero,0(s1)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002028:	04000793          	li	a5,64
    8000202c:	00f4b823          	sd	a5,16(s1)
                newSeg->prev=cur;
    80002030:	00e4b423          	sd	a4,8(s1)
                if(cur) {
    80002034:	06070463          	beqz	a4,8000209c <_ZN9semaphore8semCloseEPS_+0xe8>
                    newSeg->next = cur->next;
    80002038:	00073783          	ld	a5,0(a4)
    8000203c:	00f4b023          	sd	a5,0(s1)
                if(newSeg->next) {
    80002040:	0004b783          	ld	a5,0(s1)
    80002044:	00078463          	beqz	a5,8000204c <_ZN9semaphore8semCloseEPS_+0x98>
                    newSeg->next->prev=newSeg;
    80002048:	0097b423          	sd	s1,8(a5)
                if (cur) {
    8000204c:	06070263          	beqz	a4,800020b0 <_ZN9semaphore8semCloseEPS_+0xfc>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002050:	00973023          	sd	s1,0(a4)
        if (!curr) return;
    80002054:	00048c63          	beqz	s1,8000206c <_ZN9semaphore8semCloseEPS_+0xb8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002058:	0004b783          	ld	a5,0(s1)
    8000205c:	00078863          	beqz	a5,8000206c <_ZN9semaphore8semCloseEPS_+0xb8>
    80002060:	0104b683          	ld	a3,16(s1)
    80002064:	00d48633          	add	a2,s1,a3
    80002068:	04c78c63          	beq	a5,a2,800020c0 <_ZN9semaphore8semCloseEPS_+0x10c>
        if (!curr) return;
    8000206c:	00070c63          	beqz	a4,80002084 <_ZN9semaphore8semCloseEPS_+0xd0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002070:	00073783          	ld	a5,0(a4)
    80002074:	00078863          	beqz	a5,80002084 <_ZN9semaphore8semCloseEPS_+0xd0>
    80002078:	01073683          	ld	a3,16(a4)
    8000207c:	00d70633          	add	a2,a4,a3
    80002080:	06c78063          	beq	a5,a2,800020e0 <_ZN9semaphore8semCloseEPS_+0x12c>
        //TODO wait treba da vrati gresku? Kako to?
    }
    MemoryAllocation::mem_free(semID); //TODO mozda moze i samo (*handle)=nullptr
    return 0;
}
    80002084:	00000513          	li	a0,0
    80002088:	01813083          	ld	ra,24(sp)
    8000208c:	01013403          	ld	s0,16(sp)
    80002090:	00813483          	ld	s1,8(sp)
    80002094:	02010113          	addi	sp,sp,32
    80002098:	00008067          	ret
                    newSeg->next = fmem_head;
    8000209c:	00005797          	auipc	a5,0x5
    800020a0:	e047b783          	ld	a5,-508(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020a4:	0007b783          	ld	a5,0(a5)
    800020a8:	00f4b023          	sd	a5,0(s1)
    800020ac:	f95ff06f          	j	80002040 <_ZN9semaphore8semCloseEPS_+0x8c>
                    fmem_head = newSeg;
    800020b0:	00005797          	auipc	a5,0x5
    800020b4:	df07b783          	ld	a5,-528(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020b8:	0097b023          	sd	s1,0(a5)
    800020bc:	f99ff06f          	j	80002054 <_ZN9semaphore8semCloseEPS_+0xa0>
            curr->size += curr->next->size;
    800020c0:	0107b603          	ld	a2,16(a5)
    800020c4:	00c686b3          	add	a3,a3,a2
    800020c8:	00d4b823          	sd	a3,16(s1)
            curr->next = curr->next->next;
    800020cc:	0007b783          	ld	a5,0(a5)
    800020d0:	00f4b023          	sd	a5,0(s1)
            if (curr->next) curr->next->prev = curr;
    800020d4:	f8078ce3          	beqz	a5,8000206c <_ZN9semaphore8semCloseEPS_+0xb8>
    800020d8:	0097b423          	sd	s1,8(a5)
    800020dc:	f91ff06f          	j	8000206c <_ZN9semaphore8semCloseEPS_+0xb8>
            curr->size += curr->next->size;
    800020e0:	0107b603          	ld	a2,16(a5)
    800020e4:	00c686b3          	add	a3,a3,a2
    800020e8:	00d73823          	sd	a3,16(a4)
            curr->next = curr->next->next;
    800020ec:	0007b783          	ld	a5,0(a5)
    800020f0:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    800020f4:	f80788e3          	beqz	a5,80002084 <_ZN9semaphore8semCloseEPS_+0xd0>
    800020f8:	00e7b423          	sd	a4,8(a5)
    800020fc:	f89ff06f          	j	80002084 <_ZN9semaphore8semCloseEPS_+0xd0>

0000000080002100 <_ZN9semaphore7semWaitEPS_>:

int semaphore::semWait(semaphore *semID) {
    if(semID == nullptr){return -1;}
    80002100:	04050663          	beqz	a0,8000214c <_ZN9semaphore7semWaitEPS_+0x4c>
    if((--((semID)->val))<0) { (semID)->block(); }
    80002104:	00052783          	lw	a5,0(a0)
    80002108:	fff7879b          	addiw	a5,a5,-1
    8000210c:	00f52023          	sw	a5,0(a0)
    80002110:	02079713          	slli	a4,a5,0x20
    80002114:	00074663          	bltz	a4,80002120 <_ZN9semaphore7semWaitEPS_+0x20>
    return 0;
    80002118:	00000513          	li	a0,0
}
    8000211c:	00008067          	ret
int semaphore::semWait(semaphore *semID) {
    80002120:	ff010113          	addi	sp,sp,-16
    80002124:	00113423          	sd	ra,8(sp)
    80002128:	00813023          	sd	s0,0(sp)
    8000212c:	01010413          	addi	s0,sp,16
    if((--((semID)->val))<0) { (semID)->block(); }
    80002130:	00000097          	auipc	ra,0x0
    80002134:	a60080e7          	jalr	-1440(ra) # 80001b90 <_ZN9semaphore5blockEv>
    return 0;
    80002138:	00000513          	li	a0,0
}
    8000213c:	00813083          	ld	ra,8(sp)
    80002140:	00013403          	ld	s0,0(sp)
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret
    if(semID == nullptr){return -1;}
    8000214c:	fff00513          	li	a0,-1
    80002150:	00008067          	ret

0000000080002154 <_ZN9semaphore9semSignalEPS_>:

int semaphore::semSignal(semaphore *semID) {
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    80002154:	00052783          	lw	a5,0(a0)
    80002158:	0017879b          	addiw	a5,a5,1
    8000215c:	0007871b          	sext.w	a4,a5
    80002160:	00f52023          	sw	a5,0(a0)
    80002164:	00e05663          	blez	a4,80002170 <_ZN9semaphore9semSignalEPS_+0x1c>
    return 0;
}
    80002168:	00000513          	li	a0,0
    8000216c:	00008067          	ret
int semaphore::semSignal(semaphore *semID) {
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00113423          	sd	ra,8(sp)
    80002178:	00813023          	sd	s0,0(sp)
    8000217c:	01010413          	addi	s0,sp,16
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    80002180:	00000097          	auipc	ra,0x0
    80002184:	ba8080e7          	jalr	-1112(ra) # 80001d28 <_ZN9semaphore7unblockEv>
}
    80002188:	00000513          	li	a0,0
    8000218c:	00813083          	ld	ra,8(sp)
    80002190:	00013403          	ld	s0,0(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000219c:	fe010113          	addi	sp,sp,-32
    800021a0:	00113c23          	sd	ra,24(sp)
    800021a4:	00813823          	sd	s0,16(sp)
    800021a8:	00913423          	sd	s1,8(sp)
    800021ac:	02010413          	addi	s0,sp,32
    800021b0:	00050493          	mv	s1,a0
    LOCK();
    800021b4:	00100613          	li	a2,1
    800021b8:	00000593          	li	a1,0
    800021bc:	00005517          	auipc	a0,0x5
    800021c0:	d6450513          	addi	a0,a0,-668 # 80006f20 <lockPrint>
    800021c4:	fffff097          	auipc	ra,0xfffff
    800021c8:	f34080e7          	jalr	-204(ra) # 800010f8 <copy_and_swap>
    800021cc:	fe0514e3          	bnez	a0,800021b4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800021d0:	0004c503          	lbu	a0,0(s1)
    800021d4:	00050a63          	beqz	a0,800021e8 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800021d8:	fffff097          	auipc	ra,0xfffff
    800021dc:	240080e7          	jalr	576(ra) # 80001418 <_Z4putcc>
        string++;
    800021e0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800021e4:	fedff06f          	j	800021d0 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800021e8:	00000613          	li	a2,0
    800021ec:	00100593          	li	a1,1
    800021f0:	00005517          	auipc	a0,0x5
    800021f4:	d3050513          	addi	a0,a0,-720 # 80006f20 <lockPrint>
    800021f8:	fffff097          	auipc	ra,0xfffff
    800021fc:	f00080e7          	jalr	-256(ra) # 800010f8 <copy_and_swap>
    80002200:	fe0514e3          	bnez	a0,800021e8 <_Z11printStringPKc+0x4c>
}
    80002204:	01813083          	ld	ra,24(sp)
    80002208:	01013403          	ld	s0,16(sp)
    8000220c:	00813483          	ld	s1,8(sp)
    80002210:	02010113          	addi	sp,sp,32
    80002214:	00008067          	ret

0000000080002218 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002218:	fd010113          	addi	sp,sp,-48
    8000221c:	02113423          	sd	ra,40(sp)
    80002220:	02813023          	sd	s0,32(sp)
    80002224:	00913c23          	sd	s1,24(sp)
    80002228:	01213823          	sd	s2,16(sp)
    8000222c:	01313423          	sd	s3,8(sp)
    80002230:	01413023          	sd	s4,0(sp)
    80002234:	03010413          	addi	s0,sp,48
    80002238:	00050993          	mv	s3,a0
    8000223c:	00058a13          	mv	s4,a1
    LOCK();
    80002240:	00100613          	li	a2,1
    80002244:	00000593          	li	a1,0
    80002248:	00005517          	auipc	a0,0x5
    8000224c:	cd850513          	addi	a0,a0,-808 # 80006f20 <lockPrint>
    80002250:	fffff097          	auipc	ra,0xfffff
    80002254:	ea8080e7          	jalr	-344(ra) # 800010f8 <copy_and_swap>
    80002258:	fe0514e3          	bnez	a0,80002240 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000225c:	00000913          	li	s2,0
    80002260:	00090493          	mv	s1,s2
    80002264:	0019091b          	addiw	s2,s2,1
    80002268:	03495a63          	bge	s2,s4,8000229c <_Z9getStringPci+0x84>
        cc = getc();
    8000226c:	fffff097          	auipc	ra,0xfffff
    80002270:	180080e7          	jalr	384(ra) # 800013ec <_Z4getcv>
        if(cc < 1)
    80002274:	02050463          	beqz	a0,8000229c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002278:	009984b3          	add	s1,s3,s1
    8000227c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002280:	00a00793          	li	a5,10
    80002284:	00f50a63          	beq	a0,a5,80002298 <_Z9getStringPci+0x80>
    80002288:	00d00793          	li	a5,13
    8000228c:	fcf51ae3          	bne	a0,a5,80002260 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002290:	00090493          	mv	s1,s2
    80002294:	0080006f          	j	8000229c <_Z9getStringPci+0x84>
    80002298:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000229c:	009984b3          	add	s1,s3,s1
    800022a0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800022a4:	00000613          	li	a2,0
    800022a8:	00100593          	li	a1,1
    800022ac:	00005517          	auipc	a0,0x5
    800022b0:	c7450513          	addi	a0,a0,-908 # 80006f20 <lockPrint>
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	e44080e7          	jalr	-444(ra) # 800010f8 <copy_and_swap>
    800022bc:	fe0514e3          	bnez	a0,800022a4 <_Z9getStringPci+0x8c>
    return buf;
}
    800022c0:	00098513          	mv	a0,s3
    800022c4:	02813083          	ld	ra,40(sp)
    800022c8:	02013403          	ld	s0,32(sp)
    800022cc:	01813483          	ld	s1,24(sp)
    800022d0:	01013903          	ld	s2,16(sp)
    800022d4:	00813983          	ld	s3,8(sp)
    800022d8:	00013a03          	ld	s4,0(sp)
    800022dc:	03010113          	addi	sp,sp,48
    800022e0:	00008067          	ret

00000000800022e4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800022e4:	ff010113          	addi	sp,sp,-16
    800022e8:	00813423          	sd	s0,8(sp)
    800022ec:	01010413          	addi	s0,sp,16
    800022f0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800022f4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800022f8:	0006c603          	lbu	a2,0(a3)
    800022fc:	fd06071b          	addiw	a4,a2,-48
    80002300:	0ff77713          	andi	a4,a4,255
    80002304:	00900793          	li	a5,9
    80002308:	02e7e063          	bltu	a5,a4,80002328 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000230c:	0025179b          	slliw	a5,a0,0x2
    80002310:	00a787bb          	addw	a5,a5,a0
    80002314:	0017979b          	slliw	a5,a5,0x1
    80002318:	00168693          	addi	a3,a3,1
    8000231c:	00c787bb          	addw	a5,a5,a2
    80002320:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002324:	fd5ff06f          	j	800022f8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002328:	00813403          	ld	s0,8(sp)
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002334:	fc010113          	addi	sp,sp,-64
    80002338:	02113c23          	sd	ra,56(sp)
    8000233c:	02813823          	sd	s0,48(sp)
    80002340:	02913423          	sd	s1,40(sp)
    80002344:	03213023          	sd	s2,32(sp)
    80002348:	01313c23          	sd	s3,24(sp)
    8000234c:	04010413          	addi	s0,sp,64
    80002350:	00050493          	mv	s1,a0
    80002354:	00058913          	mv	s2,a1
    80002358:	00060993          	mv	s3,a2
    LOCK();
    8000235c:	00100613          	li	a2,1
    80002360:	00000593          	li	a1,0
    80002364:	00005517          	auipc	a0,0x5
    80002368:	bbc50513          	addi	a0,a0,-1092 # 80006f20 <lockPrint>
    8000236c:	fffff097          	auipc	ra,0xfffff
    80002370:	d8c080e7          	jalr	-628(ra) # 800010f8 <copy_and_swap>
    80002374:	fe0514e3          	bnez	a0,8000235c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002378:	00098463          	beqz	s3,80002380 <_Z8printIntiii+0x4c>
    8000237c:	0804c463          	bltz	s1,80002404 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002380:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002384:	00000593          	li	a1,0
    }

    i = 0;
    80002388:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000238c:	0009079b          	sext.w	a5,s2
    80002390:	0325773b          	remuw	a4,a0,s2
    80002394:	00048613          	mv	a2,s1
    80002398:	0014849b          	addiw	s1,s1,1
    8000239c:	02071693          	slli	a3,a4,0x20
    800023a0:	0206d693          	srli	a3,a3,0x20
    800023a4:	00005717          	auipc	a4,0x5
    800023a8:	a8c70713          	addi	a4,a4,-1396 # 80006e30 <digits>
    800023ac:	00d70733          	add	a4,a4,a3
    800023b0:	00074683          	lbu	a3,0(a4)
    800023b4:	fd040713          	addi	a4,s0,-48
    800023b8:	00c70733          	add	a4,a4,a2
    800023bc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800023c0:	0005071b          	sext.w	a4,a0
    800023c4:	0325553b          	divuw	a0,a0,s2
    800023c8:	fcf772e3          	bgeu	a4,a5,8000238c <_Z8printIntiii+0x58>
    if(neg)
    800023cc:	00058c63          	beqz	a1,800023e4 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800023d0:	fd040793          	addi	a5,s0,-48
    800023d4:	009784b3          	add	s1,a5,s1
    800023d8:	02d00793          	li	a5,45
    800023dc:	fef48823          	sb	a5,-16(s1)
    800023e0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800023e4:	fff4849b          	addiw	s1,s1,-1
    800023e8:	0204c463          	bltz	s1,80002410 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800023ec:	fd040793          	addi	a5,s0,-48
    800023f0:	009787b3          	add	a5,a5,s1
    800023f4:	ff07c503          	lbu	a0,-16(a5)
    800023f8:	fffff097          	auipc	ra,0xfffff
    800023fc:	020080e7          	jalr	32(ra) # 80001418 <_Z4putcc>
    80002400:	fe5ff06f          	j	800023e4 <_Z8printIntiii+0xb0>
        x = -xx;
    80002404:	4090053b          	negw	a0,s1
        neg = 1;
    80002408:	00100593          	li	a1,1
        x = -xx;
    8000240c:	f7dff06f          	j	80002388 <_Z8printIntiii+0x54>

    UNLOCK();
    80002410:	00000613          	li	a2,0
    80002414:	00100593          	li	a1,1
    80002418:	00005517          	auipc	a0,0x5
    8000241c:	b0850513          	addi	a0,a0,-1272 # 80006f20 <lockPrint>
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	cd8080e7          	jalr	-808(ra) # 800010f8 <copy_and_swap>
    80002428:	fe0514e3          	bnez	a0,80002410 <_Z8printIntiii+0xdc>
    8000242c:	03813083          	ld	ra,56(sp)
    80002430:	03013403          	ld	s0,48(sp)
    80002434:	02813483          	ld	s1,40(sp)
    80002438:	02013903          	ld	s2,32(sp)
    8000243c:	01813983          	ld	s3,24(sp)
    80002440:	04010113          	addi	sp,sp,64
    80002444:	00008067          	ret

0000000080002448 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80002448:	fe010113          	addi	sp,sp,-32
    8000244c:	00113c23          	sd	ra,24(sp)
    80002450:	00813823          	sd	s0,16(sp)
    80002454:	00913423          	sd	s1,8(sp)
    80002458:	01213023          	sd	s2,0(sp)
    8000245c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002460:	00000913          	li	s2,0
    80002464:	0380006f          	j	8000249c <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002468:	fffff097          	auipc	ra,0xfffff
    8000246c:	e9c080e7          	jalr	-356(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002470:	00148493          	addi	s1,s1,1
    80002474:	000027b7          	lui	a5,0x2
    80002478:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000247c:	0097ee63          	bltu	a5,s1,80002498 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002480:	00000713          	li	a4,0
    80002484:	000077b7          	lui	a5,0x7
    80002488:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000248c:	fce7eee3          	bltu	a5,a4,80002468 <_Z11workerBodyAPv+0x20>
    80002490:	00170713          	addi	a4,a4,1
    80002494:	ff1ff06f          	j	80002484 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002498:	00190913          	addi	s2,s2,1
    8000249c:	00900793          	li	a5,9
    800024a0:	0527e063          	bltu	a5,s2,800024e0 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800024a4:	00004517          	auipc	a0,0x4
    800024a8:	b7c50513          	addi	a0,a0,-1156 # 80006020 <CONSOLE_STATUS+0x10>
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	cf0080e7          	jalr	-784(ra) # 8000219c <_Z11printStringPKc>
    800024b4:	00000613          	li	a2,0
    800024b8:	00a00593          	li	a1,10
    800024bc:	0009051b          	sext.w	a0,s2
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	e74080e7          	jalr	-396(ra) # 80002334 <_Z8printIntiii>
    800024c8:	00004517          	auipc	a0,0x4
    800024cc:	d7850513          	addi	a0,a0,-648 # 80006240 <CONSOLE_STATUS+0x230>
    800024d0:	00000097          	auipc	ra,0x0
    800024d4:	ccc080e7          	jalr	-820(ra) # 8000219c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800024d8:	00000493          	li	s1,0
    800024dc:	f99ff06f          	j	80002474 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800024e0:	00004517          	auipc	a0,0x4
    800024e4:	b4850513          	addi	a0,a0,-1208 # 80006028 <CONSOLE_STATUS+0x18>
    800024e8:	00000097          	auipc	ra,0x0
    800024ec:	cb4080e7          	jalr	-844(ra) # 8000219c <_Z11printStringPKc>
    finishedA = true;
    800024f0:	00100793          	li	a5,1
    800024f4:	00005717          	auipc	a4,0x5
    800024f8:	a2f70a23          	sb	a5,-1484(a4) # 80006f28 <finishedA>
}
    800024fc:	01813083          	ld	ra,24(sp)
    80002500:	01013403          	ld	s0,16(sp)
    80002504:	00813483          	ld	s1,8(sp)
    80002508:	00013903          	ld	s2,0(sp)
    8000250c:	02010113          	addi	sp,sp,32
    80002510:	00008067          	ret

0000000080002514 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80002514:	fe010113          	addi	sp,sp,-32
    80002518:	00113c23          	sd	ra,24(sp)
    8000251c:	00813823          	sd	s0,16(sp)
    80002520:	00913423          	sd	s1,8(sp)
    80002524:	01213023          	sd	s2,0(sp)
    80002528:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000252c:	00000913          	li	s2,0
    80002530:	0380006f          	j	80002568 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002534:	fffff097          	auipc	ra,0xfffff
    80002538:	dd0080e7          	jalr	-560(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000253c:	00148493          	addi	s1,s1,1
    80002540:	000027b7          	lui	a5,0x2
    80002544:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002548:	0097ee63          	bltu	a5,s1,80002564 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000254c:	00000713          	li	a4,0
    80002550:	000077b7          	lui	a5,0x7
    80002554:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002558:	fce7eee3          	bltu	a5,a4,80002534 <_Z11workerBodyBPv+0x20>
    8000255c:	00170713          	addi	a4,a4,1
    80002560:	ff1ff06f          	j	80002550 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002564:	00190913          	addi	s2,s2,1
    80002568:	00f00793          	li	a5,15
    8000256c:	0527e063          	bltu	a5,s2,800025ac <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002570:	00004517          	auipc	a0,0x4
    80002574:	ac850513          	addi	a0,a0,-1336 # 80006038 <CONSOLE_STATUS+0x28>
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	c24080e7          	jalr	-988(ra) # 8000219c <_Z11printStringPKc>
    80002580:	00000613          	li	a2,0
    80002584:	00a00593          	li	a1,10
    80002588:	0009051b          	sext.w	a0,s2
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	da8080e7          	jalr	-600(ra) # 80002334 <_Z8printIntiii>
    80002594:	00004517          	auipc	a0,0x4
    80002598:	cac50513          	addi	a0,a0,-852 # 80006240 <CONSOLE_STATUS+0x230>
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	c00080e7          	jalr	-1024(ra) # 8000219c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800025a4:	00000493          	li	s1,0
    800025a8:	f99ff06f          	j	80002540 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    800025ac:	00004517          	auipc	a0,0x4
    800025b0:	a9450513          	addi	a0,a0,-1388 # 80006040 <CONSOLE_STATUS+0x30>
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	be8080e7          	jalr	-1048(ra) # 8000219c <_Z11printStringPKc>
    finishedB = true;
    800025bc:	00100793          	li	a5,1
    800025c0:	00005717          	auipc	a4,0x5
    800025c4:	96f704a3          	sb	a5,-1687(a4) # 80006f29 <finishedB>
    thread_dispatch();
    800025c8:	fffff097          	auipc	ra,0xfffff
    800025cc:	d3c080e7          	jalr	-708(ra) # 80001304 <_Z15thread_dispatchv>
}
    800025d0:	01813083          	ld	ra,24(sp)
    800025d4:	01013403          	ld	s0,16(sp)
    800025d8:	00813483          	ld	s1,8(sp)
    800025dc:	00013903          	ld	s2,0(sp)
    800025e0:	02010113          	addi	sp,sp,32
    800025e4:	00008067          	ret

00000000800025e8 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800025e8:	fe010113          	addi	sp,sp,-32
    800025ec:	00113c23          	sd	ra,24(sp)
    800025f0:	00813823          	sd	s0,16(sp)
    800025f4:	00913423          	sd	s1,8(sp)
    800025f8:	01213023          	sd	s2,0(sp)
    800025fc:	02010413          	addi	s0,sp,32
    80002600:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002604:	00100793          	li	a5,1
    80002608:	02a7f863          	bgeu	a5,a0,80002638 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000260c:	00a00793          	li	a5,10
    80002610:	02f577b3          	remu	a5,a0,a5
    80002614:	02078e63          	beqz	a5,80002650 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002618:	fff48513          	addi	a0,s1,-1
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	fcc080e7          	jalr	-52(ra) # 800025e8 <_Z9fibonaccim>
    80002624:	00050913          	mv	s2,a0
    80002628:	ffe48513          	addi	a0,s1,-2
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	fbc080e7          	jalr	-68(ra) # 800025e8 <_Z9fibonaccim>
    80002634:	00a90533          	add	a0,s2,a0
}
    80002638:	01813083          	ld	ra,24(sp)
    8000263c:	01013403          	ld	s0,16(sp)
    80002640:	00813483          	ld	s1,8(sp)
    80002644:	00013903          	ld	s2,0(sp)
    80002648:	02010113          	addi	sp,sp,32
    8000264c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002650:	fffff097          	auipc	ra,0xfffff
    80002654:	cb4080e7          	jalr	-844(ra) # 80001304 <_Z15thread_dispatchv>
    80002658:	fc1ff06f          	j	80002618 <_Z9fibonaccim+0x30>

000000008000265c <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    8000265c:	fe010113          	addi	sp,sp,-32
    80002660:	00113c23          	sd	ra,24(sp)
    80002664:	00813823          	sd	s0,16(sp)
    80002668:	00913423          	sd	s1,8(sp)
    8000266c:	01213023          	sd	s2,0(sp)
    80002670:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002674:	00000493          	li	s1,0
    80002678:	0400006f          	j	800026b8 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000267c:	00004517          	auipc	a0,0x4
    80002680:	9d450513          	addi	a0,a0,-1580 # 80006050 <CONSOLE_STATUS+0x40>
    80002684:	00000097          	auipc	ra,0x0
    80002688:	b18080e7          	jalr	-1256(ra) # 8000219c <_Z11printStringPKc>
    8000268c:	00000613          	li	a2,0
    80002690:	00a00593          	li	a1,10
    80002694:	00048513          	mv	a0,s1
    80002698:	00000097          	auipc	ra,0x0
    8000269c:	c9c080e7          	jalr	-868(ra) # 80002334 <_Z8printIntiii>
    800026a0:	00004517          	auipc	a0,0x4
    800026a4:	ba050513          	addi	a0,a0,-1120 # 80006240 <CONSOLE_STATUS+0x230>
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	af4080e7          	jalr	-1292(ra) # 8000219c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800026b0:	0014849b          	addiw	s1,s1,1
    800026b4:	0ff4f493          	andi	s1,s1,255
    800026b8:	00200793          	li	a5,2
    800026bc:	fc97f0e3          	bgeu	a5,s1,8000267c <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800026c0:	00004517          	auipc	a0,0x4
    800026c4:	99850513          	addi	a0,a0,-1640 # 80006058 <CONSOLE_STATUS+0x48>
    800026c8:	00000097          	auipc	ra,0x0
    800026cc:	ad4080e7          	jalr	-1324(ra) # 8000219c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800026d0:	00700313          	li	t1,7
    thread_dispatch();
    800026d4:	fffff097          	auipc	ra,0xfffff
    800026d8:	c30080e7          	jalr	-976(ra) # 80001304 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800026dc:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800026e0:	00004517          	auipc	a0,0x4
    800026e4:	98850513          	addi	a0,a0,-1656 # 80006068 <CONSOLE_STATUS+0x58>
    800026e8:	00000097          	auipc	ra,0x0
    800026ec:	ab4080e7          	jalr	-1356(ra) # 8000219c <_Z11printStringPKc>
    800026f0:	00000613          	li	a2,0
    800026f4:	00a00593          	li	a1,10
    800026f8:	0009051b          	sext.w	a0,s2
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	c38080e7          	jalr	-968(ra) # 80002334 <_Z8printIntiii>
    80002704:	00004517          	auipc	a0,0x4
    80002708:	b3c50513          	addi	a0,a0,-1220 # 80006240 <CONSOLE_STATUS+0x230>
    8000270c:	00000097          	auipc	ra,0x0
    80002710:	a90080e7          	jalr	-1392(ra) # 8000219c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002714:	00c00513          	li	a0,12
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	ed0080e7          	jalr	-304(ra) # 800025e8 <_Z9fibonaccim>
    80002720:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002724:	00004517          	auipc	a0,0x4
    80002728:	94c50513          	addi	a0,a0,-1716 # 80006070 <CONSOLE_STATUS+0x60>
    8000272c:	00000097          	auipc	ra,0x0
    80002730:	a70080e7          	jalr	-1424(ra) # 8000219c <_Z11printStringPKc>
    80002734:	00000613          	li	a2,0
    80002738:	00a00593          	li	a1,10
    8000273c:	0009051b          	sext.w	a0,s2
    80002740:	00000097          	auipc	ra,0x0
    80002744:	bf4080e7          	jalr	-1036(ra) # 80002334 <_Z8printIntiii>
    80002748:	00004517          	auipc	a0,0x4
    8000274c:	af850513          	addi	a0,a0,-1288 # 80006240 <CONSOLE_STATUS+0x230>
    80002750:	00000097          	auipc	ra,0x0
    80002754:	a4c080e7          	jalr	-1460(ra) # 8000219c <_Z11printStringPKc>
    80002758:	0400006f          	j	80002798 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000275c:	00004517          	auipc	a0,0x4
    80002760:	8f450513          	addi	a0,a0,-1804 # 80006050 <CONSOLE_STATUS+0x40>
    80002764:	00000097          	auipc	ra,0x0
    80002768:	a38080e7          	jalr	-1480(ra) # 8000219c <_Z11printStringPKc>
    8000276c:	00000613          	li	a2,0
    80002770:	00a00593          	li	a1,10
    80002774:	00048513          	mv	a0,s1
    80002778:	00000097          	auipc	ra,0x0
    8000277c:	bbc080e7          	jalr	-1092(ra) # 80002334 <_Z8printIntiii>
    80002780:	00004517          	auipc	a0,0x4
    80002784:	ac050513          	addi	a0,a0,-1344 # 80006240 <CONSOLE_STATUS+0x230>
    80002788:	00000097          	auipc	ra,0x0
    8000278c:	a14080e7          	jalr	-1516(ra) # 8000219c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002790:	0014849b          	addiw	s1,s1,1
    80002794:	0ff4f493          	andi	s1,s1,255
    80002798:	00500793          	li	a5,5
    8000279c:	fc97f0e3          	bgeu	a5,s1,8000275c <_Z11workerBodyCPv+0x100>
    }

    printString("A finished!\n");
    800027a0:	00004517          	auipc	a0,0x4
    800027a4:	88850513          	addi	a0,a0,-1912 # 80006028 <CONSOLE_STATUS+0x18>
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	9f4080e7          	jalr	-1548(ra) # 8000219c <_Z11printStringPKc>
    finishedC = true;
    800027b0:	00100793          	li	a5,1
    800027b4:	00004717          	auipc	a4,0x4
    800027b8:	76f70b23          	sb	a5,1910(a4) # 80006f2a <finishedC>
    thread_dispatch();
    800027bc:	fffff097          	auipc	ra,0xfffff
    800027c0:	b48080e7          	jalr	-1208(ra) # 80001304 <_Z15thread_dispatchv>
}
    800027c4:	01813083          	ld	ra,24(sp)
    800027c8:	01013403          	ld	s0,16(sp)
    800027cc:	00813483          	ld	s1,8(sp)
    800027d0:	00013903          	ld	s2,0(sp)
    800027d4:	02010113          	addi	sp,sp,32
    800027d8:	00008067          	ret

00000000800027dc <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    800027dc:	fe010113          	addi	sp,sp,-32
    800027e0:	00113c23          	sd	ra,24(sp)
    800027e4:	00813823          	sd	s0,16(sp)
    800027e8:	00913423          	sd	s1,8(sp)
    800027ec:	01213023          	sd	s2,0(sp)
    800027f0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800027f4:	00a00493          	li	s1,10
    800027f8:	0400006f          	j	80002838 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800027fc:	00004517          	auipc	a0,0x4
    80002800:	88450513          	addi	a0,a0,-1916 # 80006080 <CONSOLE_STATUS+0x70>
    80002804:	00000097          	auipc	ra,0x0
    80002808:	998080e7          	jalr	-1640(ra) # 8000219c <_Z11printStringPKc>
    8000280c:	00000613          	li	a2,0
    80002810:	00a00593          	li	a1,10
    80002814:	00048513          	mv	a0,s1
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	b1c080e7          	jalr	-1252(ra) # 80002334 <_Z8printIntiii>
    80002820:	00004517          	auipc	a0,0x4
    80002824:	a2050513          	addi	a0,a0,-1504 # 80006240 <CONSOLE_STATUS+0x230>
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	974080e7          	jalr	-1676(ra) # 8000219c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002830:	0014849b          	addiw	s1,s1,1
    80002834:	0ff4f493          	andi	s1,s1,255
    80002838:	00c00793          	li	a5,12
    8000283c:	fc97f0e3          	bgeu	a5,s1,800027fc <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80002840:	00004517          	auipc	a0,0x4
    80002844:	84850513          	addi	a0,a0,-1976 # 80006088 <CONSOLE_STATUS+0x78>
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	954080e7          	jalr	-1708(ra) # 8000219c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002850:	00500313          	li	t1,5
    thread_dispatch();
    80002854:	fffff097          	auipc	ra,0xfffff
    80002858:	ab0080e7          	jalr	-1360(ra) # 80001304 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000285c:	01000513          	li	a0,16
    80002860:	00000097          	auipc	ra,0x0
    80002864:	d88080e7          	jalr	-632(ra) # 800025e8 <_Z9fibonaccim>
    80002868:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000286c:	00004517          	auipc	a0,0x4
    80002870:	82c50513          	addi	a0,a0,-2004 # 80006098 <CONSOLE_STATUS+0x88>
    80002874:	00000097          	auipc	ra,0x0
    80002878:	928080e7          	jalr	-1752(ra) # 8000219c <_Z11printStringPKc>
    8000287c:	00000613          	li	a2,0
    80002880:	00a00593          	li	a1,10
    80002884:	0009051b          	sext.w	a0,s2
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	aac080e7          	jalr	-1364(ra) # 80002334 <_Z8printIntiii>
    80002890:	00004517          	auipc	a0,0x4
    80002894:	9b050513          	addi	a0,a0,-1616 # 80006240 <CONSOLE_STATUS+0x230>
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	904080e7          	jalr	-1788(ra) # 8000219c <_Z11printStringPKc>
    800028a0:	0400006f          	j	800028e0 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800028a4:	00003517          	auipc	a0,0x3
    800028a8:	7dc50513          	addi	a0,a0,2012 # 80006080 <CONSOLE_STATUS+0x70>
    800028ac:	00000097          	auipc	ra,0x0
    800028b0:	8f0080e7          	jalr	-1808(ra) # 8000219c <_Z11printStringPKc>
    800028b4:	00000613          	li	a2,0
    800028b8:	00a00593          	li	a1,10
    800028bc:	00048513          	mv	a0,s1
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	a74080e7          	jalr	-1420(ra) # 80002334 <_Z8printIntiii>
    800028c8:	00004517          	auipc	a0,0x4
    800028cc:	97850513          	addi	a0,a0,-1672 # 80006240 <CONSOLE_STATUS+0x230>
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	8cc080e7          	jalr	-1844(ra) # 8000219c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800028d8:	0014849b          	addiw	s1,s1,1
    800028dc:	0ff4f493          	andi	s1,s1,255
    800028e0:	00f00793          	li	a5,15
    800028e4:	fc97f0e3          	bgeu	a5,s1,800028a4 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800028e8:	00003517          	auipc	a0,0x3
    800028ec:	7c050513          	addi	a0,a0,1984 # 800060a8 <CONSOLE_STATUS+0x98>
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	8ac080e7          	jalr	-1876(ra) # 8000219c <_Z11printStringPKc>
    finishedD = true;
    800028f8:	00100793          	li	a5,1
    800028fc:	00004717          	auipc	a4,0x4
    80002900:	62f707a3          	sb	a5,1583(a4) # 80006f2b <finishedD>
    thread_dispatch();
    80002904:	fffff097          	auipc	ra,0xfffff
    80002908:	a00080e7          	jalr	-1536(ra) # 80001304 <_Z15thread_dispatchv>
}
    8000290c:	01813083          	ld	ra,24(sp)
    80002910:	01013403          	ld	s0,16(sp)
    80002914:	00813483          	ld	s1,8(sp)
    80002918:	00013903          	ld	s2,0(sp)
    8000291c:	02010113          	addi	sp,sp,32
    80002920:	00008067          	ret

0000000080002924 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002924:	fd010113          	addi	sp,sp,-48
    80002928:	02113423          	sd	ra,40(sp)
    8000292c:	02813023          	sd	s0,32(sp)
    80002930:	03010413          	addi	s0,sp,48
    thread_t threads[4];

    //thread_create( &threads[0], nullptr, nullptr);
    //TCB::running=threads[0];

    thread_create(&threads[0], workerBodyA, nullptr);
    80002934:	00000613          	li	a2,0
    80002938:	00000597          	auipc	a1,0x0
    8000293c:	b1058593          	addi	a1,a1,-1264 # 80002448 <_Z11workerBodyAPv>
    80002940:	fd040513          	addi	a0,s0,-48
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	95c080e7          	jalr	-1700(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000294c:	00003517          	auipc	a0,0x3
    80002950:	76c50513          	addi	a0,a0,1900 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002954:	00000097          	auipc	ra,0x0
    80002958:	848080e7          	jalr	-1976(ra) # 8000219c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000295c:	00000613          	li	a2,0
    80002960:	00000597          	auipc	a1,0x0
    80002964:	bb458593          	addi	a1,a1,-1100 # 80002514 <_Z11workerBodyBPv>
    80002968:	fd840513          	addi	a0,s0,-40
    8000296c:	fffff097          	auipc	ra,0xfffff
    80002970:	934080e7          	jalr	-1740(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80002974:	00003517          	auipc	a0,0x3
    80002978:	75c50513          	addi	a0,a0,1884 # 800060d0 <CONSOLE_STATUS+0xc0>
    8000297c:	00000097          	auipc	ra,0x0
    80002980:	820080e7          	jalr	-2016(ra) # 8000219c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002984:	00000613          	li	a2,0
    80002988:	00000597          	auipc	a1,0x0
    8000298c:	cd458593          	addi	a1,a1,-812 # 8000265c <_Z11workerBodyCPv>
    80002990:	fe040513          	addi	a0,s0,-32
    80002994:	fffff097          	auipc	ra,0xfffff
    80002998:	90c080e7          	jalr	-1780(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000299c:	00003517          	auipc	a0,0x3
    800029a0:	74c50513          	addi	a0,a0,1868 # 800060e8 <CONSOLE_STATUS+0xd8>
    800029a4:	fffff097          	auipc	ra,0xfffff
    800029a8:	7f8080e7          	jalr	2040(ra) # 8000219c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800029ac:	00000613          	li	a2,0
    800029b0:	00000597          	auipc	a1,0x0
    800029b4:	e2c58593          	addi	a1,a1,-468 # 800027dc <_Z11workerBodyDPv>
    800029b8:	fe840513          	addi	a0,s0,-24
    800029bc:	fffff097          	auipc	ra,0xfffff
    800029c0:	8e4080e7          	jalr	-1820(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800029c4:	00003517          	auipc	a0,0x3
    800029c8:	73c50513          	addi	a0,a0,1852 # 80006100 <CONSOLE_STATUS+0xf0>
    800029cc:	fffff097          	auipc	ra,0xfffff
    800029d0:	7d0080e7          	jalr	2000(ra) # 8000219c <_Z11printStringPKc>
    800029d4:	00c0006f          	j	800029e0 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch(); //kada udje u threadDispatch, on se vrati u prekidnu rutinu iz nekog razloga
    800029d8:	fffff097          	auipc	ra,0xfffff
    800029dc:	92c080e7          	jalr	-1748(ra) # 80001304 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800029e0:	00004797          	auipc	a5,0x4
    800029e4:	5487c783          	lbu	a5,1352(a5) # 80006f28 <finishedA>
    800029e8:	fe0788e3          	beqz	a5,800029d8 <_Z18Threads_C_API_testv+0xb4>
    800029ec:	00004797          	auipc	a5,0x4
    800029f0:	53d7c783          	lbu	a5,1341(a5) # 80006f29 <finishedB>
    800029f4:	fe0782e3          	beqz	a5,800029d8 <_Z18Threads_C_API_testv+0xb4>
    800029f8:	00004797          	auipc	a5,0x4
    800029fc:	5327c783          	lbu	a5,1330(a5) # 80006f2a <finishedC>
    80002a00:	fc078ce3          	beqz	a5,800029d8 <_Z18Threads_C_API_testv+0xb4>
    80002a04:	00004797          	auipc	a5,0x4
    80002a08:	5277c783          	lbu	a5,1319(a5) # 80006f2b <finishedD>
    80002a0c:	fc0786e3          	beqz	a5,800029d8 <_Z18Threads_C_API_testv+0xb4>
        //TCB::yield();
    }

}
    80002a10:	02813083          	ld	ra,40(sp)
    80002a14:	02013403          	ld	s0,32(sp)
    80002a18:	03010113          	addi	sp,sp,48
    80002a1c:	00008067          	ret

0000000080002a20 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80002a20:	ff010113          	addi	sp,sp,-16
    80002a24:	00113423          	sd	ra,8(sp)
    80002a28:	00813023          	sd	s0,0(sp)
    80002a2c:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	ef4080e7          	jalr	-268(ra) # 80002924 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80002a38:	00813083          	ld	ra,8(sp)
    80002a3c:	00013403          	ld	s0,0(sp)
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret

0000000080002a48 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80002a48:	ff010113          	addi	sp,sp,-16
    80002a4c:	00813423          	sd	s0,8(sp)
    80002a50:	01010413          	addi	s0,sp,16
    80002a54:	00100793          	li	a5,1
    80002a58:	00f50863          	beq	a0,a5,80002a68 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a5c:	00813403          	ld	s0,8(sp)
    80002a60:	01010113          	addi	sp,sp,16
    80002a64:	00008067          	ret
    80002a68:	000107b7          	lui	a5,0x10
    80002a6c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a70:	fef596e3          	bne	a1,a5,80002a5c <_Z41__static_initialization_and_destruction_0ii+0x14>
    LinkedList() : head(0), tail(0) {}
    80002a74:	00004797          	auipc	a5,0x4
    80002a78:	4bc78793          	addi	a5,a5,1212 # 80006f30 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a7c:	0007b023          	sd	zero,0(a5)
    80002a80:	0007b423          	sd	zero,8(a5)
    80002a84:	fd9ff06f          	j	80002a5c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002a88 <_ZN9Scheduler3getEv>:
{
    80002a88:	fe010113          	addi	sp,sp,-32
    80002a8c:	00113c23          	sd	ra,24(sp)
    80002a90:	00813823          	sd	s0,16(sp)
    80002a94:	00913423          	sd	s1,8(sp)
    80002a98:	02010413          	addi	s0,sp,32
        if (!head) {return 0;}
    80002a9c:	00004517          	auipc	a0,0x4
    80002aa0:	49453503          	ld	a0,1172(a0) # 80006f30 <_ZN9Scheduler19readyCoroutineQueueE>
    80002aa4:	04050263          	beqz	a0,80002ae8 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002aa8:	00853783          	ld	a5,8(a0)
    80002aac:	00004717          	auipc	a4,0x4
    80002ab0:	48f73223          	sd	a5,1156(a4) # 80006f30 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80002ab4:	02078463          	beqz	a5,80002adc <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    80002ab8:	00053483          	ld	s1,0(a0)
        delete elem;
    80002abc:	00001097          	auipc	ra,0x1
    80002ac0:	894080e7          	jalr	-1900(ra) # 80003350 <_ZdlPv>
}
    80002ac4:	00048513          	mv	a0,s1
    80002ac8:	01813083          	ld	ra,24(sp)
    80002acc:	01013403          	ld	s0,16(sp)
    80002ad0:	00813483          	ld	s1,8(sp)
    80002ad4:	02010113          	addi	sp,sp,32
    80002ad8:	00008067          	ret
            tail = 0;
    80002adc:	00004797          	auipc	a5,0x4
    80002ae0:	4407be23          	sd	zero,1116(a5) # 80006f38 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002ae4:	fd5ff06f          	j	80002ab8 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80002ae8:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002aec:	fd9ff06f          	j	80002ac4 <_ZN9Scheduler3getEv+0x3c>

0000000080002af0 <_ZN9Scheduler3putEP3TCB>:
{
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00813423          	sd	s0,8(sp)
    80002af8:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002afc:	00004797          	auipc	a5,0x4
    80002b00:	3a47b783          	ld	a5,932(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b04:	0007b783          	ld	a5,0(a5)
    80002b08:	0c078a63          	beqz	a5,80002bdc <_ZN9Scheduler3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80002b0c:	00004717          	auipc	a4,0x4
    80002b10:	39473703          	ld	a4,916(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b14:	00073683          	ld	a3,0(a4)
    80002b18:	0006b683          	ld	a3,0(a3)
    80002b1c:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80002b20:	00073703          	ld	a4,0(a4)
    80002b24:	00873603          	ld	a2,8(a4)
    80002b28:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80002b2c:	0107b703          	ld	a4,16(a5)
    80002b30:	03f00593          	li	a1,63
    80002b34:	02e5f663          	bgeu	a1,a4,80002b60 <_ZN9Scheduler3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80002b38:	fc070713          	addi	a4,a4,-64
    80002b3c:	01800593          	li	a1,24
    80002b40:	02e5ec63          	bltu	a1,a4,80002b78 <_ZN9Scheduler3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80002b44:	02060263          	beqz	a2,80002b68 <_ZN9Scheduler3putEP3TCB+0x78>
    80002b48:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80002b4c:	0007b703          	ld	a4,0(a5)
    80002b50:	08070663          	beqz	a4,80002bdc <_ZN9Scheduler3putEP3TCB+0xec>
    80002b54:	0087b683          	ld	a3,8(a5)
    80002b58:	00d73423          	sd	a3,8(a4)
                return cur;
    80002b5c:	0800006f          	j	80002bdc <_ZN9Scheduler3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002b60:	00068793          	mv	a5,a3
    80002b64:	fa5ff06f          	j	80002b08 <_ZN9Scheduler3putEP3TCB+0x18>
                else fmem_head = cur->next;
    80002b68:	00004717          	auipc	a4,0x4
    80002b6c:	33873703          	ld	a4,824(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b70:	00d73023          	sd	a3,0(a4)
    80002b74:	fd9ff06f          	j	80002b4c <_ZN9Scheduler3putEP3TCB+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002b78:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80002b7c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002b80:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002b84:	0087b683          	ld	a3,8(a5)
    80002b88:	08068063          	beqz	a3,80002c08 <_ZN9Scheduler3putEP3TCB+0x118>
    80002b8c:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002b90:	0007b683          	ld	a3,0(a5)
    80002b94:	00068463          	beqz	a3,80002b9c <_ZN9Scheduler3putEP3TCB+0xac>
    80002b98:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002b9c:	0087b603          	ld	a2,8(a5)
    80002ba0:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002ba4:	0007b683          	ld	a3,0(a5)
    80002ba8:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002bac:	0107b783          	ld	a5,16(a5)
    80002bb0:	fc078793          	addi	a5,a5,-64
    80002bb4:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002bb8:	0c070693          	addi	a3,a4,192
    80002bbc:	00004597          	auipc	a1,0x4
    80002bc0:	2e45b583          	ld	a1,740(a1) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002bc4:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002bc8:	00073583          	ld	a1,0(a4)
    80002bcc:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002bd0:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002bd4:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002bd8:	00070793          	mv	a5,a4
        elem->data=data;
    80002bdc:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80002be0:	0007b423          	sd	zero,8(a5)
        if (tail){
    80002be4:	00004717          	auipc	a4,0x4
    80002be8:	35473703          	ld	a4,852(a4) # 80006f38 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002bec:	02070863          	beqz	a4,80002c1c <_ZN9Scheduler3putEP3TCB+0x12c>
            tail->next=elem;
    80002bf0:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80002bf4:	00004717          	auipc	a4,0x4
    80002bf8:	34f73223          	sd	a5,836(a4) # 80006f38 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002bfc:	00813403          	ld	s0,8(sp)
    80002c00:	01010113          	addi	sp,sp,16
    80002c04:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002c08:	0c070693          	addi	a3,a4,192
    80002c0c:	00004617          	auipc	a2,0x4
    80002c10:	29463603          	ld	a2,660(a2) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c14:	00d63023          	sd	a3,0(a2)
    80002c18:	f79ff06f          	j	80002b90 <_ZN9Scheduler3putEP3TCB+0xa0>
            head=tail=elem;
    80002c1c:	00004717          	auipc	a4,0x4
    80002c20:	31470713          	addi	a4,a4,788 # 80006f30 <_ZN9Scheduler19readyCoroutineQueueE>
    80002c24:	00f73423          	sd	a5,8(a4)
    80002c28:	00f73023          	sd	a5,0(a4)
    80002c2c:	fd1ff06f          	j	80002bfc <_ZN9Scheduler3putEP3TCB+0x10c>

0000000080002c30 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002c30:	ff010113          	addi	sp,sp,-16
    80002c34:	00113423          	sd	ra,8(sp)
    80002c38:	00813023          	sd	s0,0(sp)
    80002c3c:	01010413          	addi	s0,sp,16
    80002c40:	000105b7          	lui	a1,0x10
    80002c44:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002c48:	00100513          	li	a0,1
    80002c4c:	00000097          	auipc	ra,0x0
    80002c50:	dfc080e7          	jalr	-516(ra) # 80002a48 <_Z41__static_initialization_and_destruction_0ii>
    80002c54:	00813083          	ld	ra,8(sp)
    80002c58:	00013403          	ld	s0,0(sp)
    80002c5c:	01010113          	addi	sp,sp,16
    80002c60:	00008067          	ret

0000000080002c64 <main>:
//void smoker1(void* arg);
//void smoker2(void* arg);
//void smoker3(void* arg);
//void dummyfun(void* arg);

int main(){
    80002c64:	fe010113          	addi	sp,sp,-32
    80002c68:	00113c23          	sd	ra,24(sp)
    80002c6c:	00813823          	sd	s0,16(sp)
    80002c70:	02010413          	addi	s0,sp,32
        if (!instance) {
    80002c74:	00004797          	auipc	a5,0x4
    80002c78:	2247b783          	ld	a5,548(a5) # 80006e98 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002c7c:	0007b783          	ld	a5,0(a5)
    80002c80:	04078863          	beqz	a5,80002cd0 <main+0x6c>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    80002c84:	00004797          	auipc	a5,0x4
    80002c88:	20c7b783          	ld	a5,524(a5) # 80006e90 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    80002c8c:	10579073          	csrw	stvec,a5
    //__asm__ volatile ("csrs sstatus, 0x2"); //todo nesto treba sa ovim spoljasnjim prekidima da se radi
    //RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    thread_t main;
    thread_create(&main, nullptr, nullptr);
    80002c90:	00000613          	li	a2,0
    80002c94:	00000593          	li	a1,0
    80002c98:	fe840513          	addi	a0,s0,-24
    80002c9c:	ffffe097          	auipc	ra,0xffffe
    80002ca0:	604080e7          	jalr	1540(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    80002ca4:	00004797          	auipc	a5,0x4
    80002ca8:	2047b783          	ld	a5,516(a5) # 80006ea8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002cac:	fe843703          	ld	a4,-24(s0)
    80002cb0:	00e7b023          	sd	a4,0(a5)
//    thread_create(&t31, dummyfun, nullptr);
//    for (int i = 0; i < 30; ++i) {
//        thread_dispatch();
//    }
//    if(sem_wait(dummy)==-1) printString("ubien semafor\n");
    userMain();
    80002cb4:	00000097          	auipc	ra,0x0
    80002cb8:	d6c080e7          	jalr	-660(ra) # 80002a20 <_Z8userMainv>
//    char x=getc();
//    putc(x);

    return 0;
}
    80002cbc:	00000513          	li	a0,0
    80002cc0:	01813083          	ld	ra,24(sp)
    80002cc4:	01013403          	ld	s0,16(sp)
    80002cc8:	02010113          	addi	sp,sp,32
    80002ccc:	00008067          	ret
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80002cd0:	00004797          	auipc	a5,0x4
    80002cd4:	1b07b783          	ld	a5,432(a5) # 80006e80 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002cd8:	0007b783          	ld	a5,0(a5)
    80002cdc:	00004697          	auipc	a3,0x4
    80002ce0:	1c46b683          	ld	a3,452(a3) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ce4:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80002ce8:	00004717          	auipc	a4,0x4
    80002cec:	1c873703          	ld	a4,456(a4) # 80006eb0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002cf0:	00073703          	ld	a4,0(a4)
    80002cf4:	40f70733          	sub	a4,a4,a5
    80002cf8:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    80002cfc:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80002d00:	0006b783          	ld	a5,0(a3)
    80002d04:	0007b423          	sd	zero,8(a5)
            return instance;
    80002d08:	f7dff06f          	j	80002c84 <main+0x20>

0000000080002d0c <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    80002d0c:	ff010113          	addi	sp,sp,-16
    80002d10:	00813423          	sd	s0,8(sp)
    80002d14:	01010413          	addi	s0,sp,16
    return finished;
}
    80002d18:	02054503          	lbu	a0,32(a0)
    80002d1c:	00813403          	ld	s0,8(sp)
    80002d20:	01010113          	addi	sp,sp,16
    80002d24:	00008067          	ret

0000000080002d28 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80002d28:	ff010113          	addi	sp,sp,-16
    80002d2c:	00813423          	sd	s0,8(sp)
    80002d30:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    80002d34:	02b50023          	sb	a1,32(a0)
}
    80002d38:	00813403          	ld	s0,8(sp)
    80002d3c:	01010113          	addi	sp,sp,16
    80002d40:	00008067          	ret

0000000080002d44 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments, bool started) {
    80002d44:	fe010113          	addi	sp,sp,-32
    80002d48:	00113c23          	sd	ra,24(sp)
    80002d4c:	00813823          	sd	s0,16(sp)
    80002d50:	00913423          	sd	s1,8(sp)
    80002d54:	02010413          	addi	s0,sp,32
    80002d58:	00058493          	mv	s1,a1
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002d5c:	00004797          	auipc	a5,0x4
    80002d60:	1447b783          	ld	a5,324(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d64:	0007b783          	ld	a5,0(a5)
    80002d68:	0c078a63          	beqz	a5,80002e3c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
            cur->next=fmem_head->next;
    80002d6c:	00004717          	auipc	a4,0x4
    80002d70:	13473703          	ld	a4,308(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d74:	00073583          	ld	a1,0(a4)
    80002d78:	0005b583          	ld	a1,0(a1)
    80002d7c:	00b7b023          	sd	a1,0(a5)
            cur->prev=fmem_head->prev;
    80002d80:	00073703          	ld	a4,0(a4)
    80002d84:	00873803          	ld	a6,8(a4)
    80002d88:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    80002d8c:	0107b703          	ld	a4,16(a5)
    80002d90:	07f00893          	li	a7,127
    80002d94:	02e8f663          	bgeu	a7,a4,80002dc0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002d98:	f8070713          	addi	a4,a4,-128
    80002d9c:	01800893          	li	a7,24
    80002da0:	02e8ec63          	bltu	a7,a4,80002dd8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002da4:	02080263          	beqz	a6,80002dc8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x84>
    80002da8:	00b83023          	sd	a1,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    80002dac:	0007b703          	ld	a4,0(a5)
    80002db0:	08070663          	beqz	a4,80002e3c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
    80002db4:	0087b583          	ld	a1,8(a5)
    80002db8:	00b73423          	sd	a1,8(a4)
                return cur;
    80002dbc:	0800006f          	j	80002e3c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002dc0:	00058793          	mv	a5,a1
    80002dc4:	fa5ff06f          	j	80002d68 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x24>
                else fmem_head = cur->next;
    80002dc8:	00004717          	auipc	a4,0x4
    80002dcc:	0d873703          	ld	a4,216(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002dd0:	00b73023          	sd	a1,0(a4)
    80002dd4:	fd9ff06f          	j	80002dac <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002dd8:	08078713          	addi	a4,a5,128
                newfrgm->prev=nullptr;
    80002ddc:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002de0:	0807b023          	sd	zero,128(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002de4:	0087b583          	ld	a1,8(a5)
    80002de8:	0c058c63          	beqz	a1,80002ec0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x17c>
    80002dec:	00e5b023          	sd	a4,0(a1)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002df0:	0007b583          	ld	a1,0(a5)
    80002df4:	00058463          	beqz	a1,80002dfc <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xb8>
    80002df8:	00e5b423          	sd	a4,8(a1)
                newfrgm->prev = cur->prev;
    80002dfc:	0087b803          	ld	a6,8(a5)
    80002e00:	01073423          	sd	a6,8(a4)
                newfrgm->next = cur->next;
    80002e04:	0007b583          	ld	a1,0(a5)
    80002e08:	00b73023          	sd	a1,0(a4)
                newfrgm->size = cur->size-size;
    80002e0c:	0107b783          	ld	a5,16(a5)
    80002e10:	f8078793          	addi	a5,a5,-128
    80002e14:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002e18:	0c070593          	addi	a1,a4,192
    80002e1c:	00004897          	auipc	a7,0x4
    80002e20:	0848b883          	ld	a7,132(a7) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e24:	00b8b023          	sd	a1,0(a7)
                fmem_head->next=newfrgm->next;
    80002e28:	00073883          	ld	a7,0(a4)
    80002e2c:	0d173023          	sd	a7,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002e30:	0d073423          	sd	a6,200(a4)
                fmem_head->size=newfrgm->size;
    80002e34:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002e38:	00070793          	mv	a5,a4
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    80002e3c:	00f4b023          	sd	a5,0(s1)
    (*handle)->body=body;
    80002e40:	00a7b023          	sd	a0,0(a5)
    (*handle)->arguments=arguments;
    80002e44:	0004b783          	ld	a5,0(s1)
    80002e48:	02c7b423          	sd	a2,40(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    80002e4c:	12050663          	beqz	a0,80002f78 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x234>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002e50:	00004797          	auipc	a5,0x4
    80002e54:	0507b783          	ld	a5,80(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e58:	0007b783          	ld	a5,0(a5)
    80002e5c:	12078063          	beqz	a5,80002f7c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
            cur->next=fmem_head->next;
    80002e60:	00004717          	auipc	a4,0x4
    80002e64:	04073703          	ld	a4,64(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e68:	00073603          	ld	a2,0(a4)
    80002e6c:	00063583          	ld	a1,0(a2)
    80002e70:	00b7b023          	sd	a1,0(a5)
            cur->prev=fmem_head->prev;
    80002e74:	00073703          	ld	a4,0(a4)
    80002e78:	00873803          	ld	a6,8(a4)
    80002e7c:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    80002e80:	0107b703          	ld	a4,16(a5)
    80002e84:	00001637          	lui	a2,0x1
    80002e88:	03f60613          	addi	a2,a2,63 # 103f <_entry-0x7fffefc1>
    80002e8c:	04e67463          	bgeu	a2,a4,80002ed4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x190>
            if (cur->size-size<=sizeof(FreeMem)){
    80002e90:	fffff637          	lui	a2,0xfffff
    80002e94:	fc060613          	addi	a2,a2,-64 # ffffffffffffefc0 <end+0xffffffff7fff6e00>
    80002e98:	00c70733          	add	a4,a4,a2
    80002e9c:	01800613          	li	a2,24
    80002ea0:	04e66663          	bltu	a2,a4,80002eec <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1a8>
                if (cur->prev) cur->prev->next = cur->next;
    80002ea4:	02080c63          	beqz	a6,80002edc <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x198>
    80002ea8:	00b83023          	sd	a1,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    80002eac:	0007b703          	ld	a4,0(a5)
    80002eb0:	0c070663          	beqz	a4,80002f7c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
    80002eb4:	0087b603          	ld	a2,8(a5)
    80002eb8:	00c73423          	sd	a2,8(a4)
                return cur;
    80002ebc:	0c00006f          	j	80002f7c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002ec0:	0c070593          	addi	a1,a4,192
    80002ec4:	00004817          	auipc	a6,0x4
    80002ec8:	fdc83803          	ld	a6,-36(a6) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ecc:	00b83023          	sd	a1,0(a6)
    80002ed0:	f21ff06f          	j	80002df0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xac>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002ed4:	00058793          	mv	a5,a1
    80002ed8:	f85ff06f          	j	80002e5c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x118>
                else fmem_head = cur->next;
    80002edc:	00004717          	auipc	a4,0x4
    80002ee0:	fc473703          	ld	a4,-60(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ee4:	00b73023          	sd	a1,0(a4)
    80002ee8:	fc5ff06f          	j	80002eac <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x168>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002eec:	00001737          	lui	a4,0x1
    80002ef0:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    80002ef4:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    80002ef8:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002efc:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002f00:	0087b603          	ld	a2,8(a5)
    80002f04:	06060063          	beqz	a2,80002f64 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x220>
    80002f08:	00e63023          	sd	a4,0(a2)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002f0c:	0007b603          	ld	a2,0(a5)
    80002f10:	00060463          	beqz	a2,80002f18 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1d4>
    80002f14:	00e63423          	sd	a4,8(a2)
                newfrgm->prev = cur->prev;
    80002f18:	0087b583          	ld	a1,8(a5)
    80002f1c:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    80002f20:	0007b603          	ld	a2,0(a5)
    80002f24:	00c73023          	sd	a2,0(a4)
                newfrgm->size = cur->size-size;
    80002f28:	0107b783          	ld	a5,16(a5)
    80002f2c:	fffff637          	lui	a2,0xfffff
    80002f30:	fc060613          	addi	a2,a2,-64 # ffffffffffffefc0 <end+0xffffffff7fff6e00>
    80002f34:	00c787b3          	add	a5,a5,a2
    80002f38:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002f3c:	0c070613          	addi	a2,a4,192
    80002f40:	00004817          	auipc	a6,0x4
    80002f44:	f6083803          	ld	a6,-160(a6) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f48:	00c83023          	sd	a2,0(a6)
                fmem_head->next=newfrgm->next;
    80002f4c:	00073803          	ld	a6,0(a4)
    80002f50:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002f54:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    80002f58:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002f5c:	00070793          	mv	a5,a4
    80002f60:	01c0006f          	j	80002f7c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002f64:	0c070613          	addi	a2,a4,192
    80002f68:	00004597          	auipc	a1,0x4
    80002f6c:	f385b583          	ld	a1,-200(a1) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f70:	00c5b023          	sd	a2,0(a1)
    80002f74:	f99ff06f          	j	80002f0c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1c8>
    80002f78:	00000793          	li	a5,0
    80002f7c:	0004b703          	ld	a4,0(s1)
    80002f80:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80002f84:	08050063          	beqz	a0,80003004 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2c0>
    80002f88:	00000717          	auipc	a4,0x0
    80002f8c:	0c470713          	addi	a4,a4,196 # 8000304c <_ZN3TCB13threadWrapperEv>
    80002f90:	0004b783          	ld	a5,0(s1)
    80002f94:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80002f98:	0004b703          	ld	a4,0(s1)
    80002f9c:	00873783          	ld	a5,8(a4)
    80002fa0:	06078663          	beqz	a5,8000300c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2c8>
    80002fa4:	00008637          	lui	a2,0x8
    80002fa8:	00c787b3          	add	a5,a5,a2
    80002fac:	00f73c23          	sd	a5,24(a4)
    (*handle)->finished=false;
    80002fb0:	0004b783          	ld	a5,0(s1)
    80002fb4:	02078023          	sb	zero,32(a5)
    (*handle)->semBlocked=nullptr;
    80002fb8:	0004b783          	ld	a5,0(s1)
    80002fbc:	0207b823          	sd	zero,48(a5)
    (*handle)->timeSlice=TIME_SLICE;
    80002fc0:	0004b783          	ld	a5,0(s1)
    80002fc4:	00200713          	li	a4,2
    80002fc8:	02e7bc23          	sd	a4,56(a5)
    (*handle)->threadStarted=started;
    80002fcc:	0004b783          	ld	a5,0(s1)
    80002fd0:	04d78023          	sb	a3,64(a5)
    if (body != nullptr && (*handle)->isStarted()==true) { Scheduler::put(*handle); }
    80002fd4:	00050863          	beqz	a0,80002fe4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2a0>
    80002fd8:	0004b503          	ld	a0,0(s1)
        return threadStarted;
    80002fdc:	04054783          	lbu	a5,64(a0)
    80002fe0:	02079a63          	bnez	a5,80003014 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2d0>
    if(*handle==nullptr){
    80002fe4:	0004b783          	ld	a5,0(s1)
    80002fe8:	02078c63          	beqz	a5,80003020 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2dc>
        return -1;
    }else{return 0;}
    80002fec:	00000513          	li	a0,0
}
    80002ff0:	01813083          	ld	ra,24(sp)
    80002ff4:	01013403          	ld	s0,16(sp)
    80002ff8:	00813483          	ld	s1,8(sp)
    80002ffc:	02010113          	addi	sp,sp,32
    80003000:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80003004:	00000713          	li	a4,0
    80003008:	f89ff06f          	j	80002f90 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x24c>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    8000300c:	00000793          	li	a5,0
    80003010:	f9dff06f          	j	80002fac <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x268>
    if (body != nullptr && (*handle)->isStarted()==true) { Scheduler::put(*handle); }
    80003014:	00000097          	auipc	ra,0x0
    80003018:	adc080e7          	jalr	-1316(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
    8000301c:	fc9ff06f          	j	80002fe4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2a0>
        return -1;
    80003020:	fff00513          	li	a0,-1
    80003024:	fcdff06f          	j	80002ff0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2ac>

0000000080003028 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80003028:	ff010113          	addi	sp,sp,-16
    8000302c:	00813423          	sd	s0,8(sp)
    80003030:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80003034:	01300793          	li	a5,19
    80003038:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000303c:	00000073          	ecall

};
    80003040:	00813403          	ld	s0,8(sp)
    80003044:	01010113          	addi	sp,sp,16
    80003048:	00008067          	ret

000000008000304c <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    8000304c:	fe010113          	addi	sp,sp,-32
    80003050:	00113c23          	sd	ra,24(sp)
    80003054:	00813823          	sd	s0,16(sp)
    80003058:	00913423          	sd	s1,8(sp)
    8000305c:	02010413          	addi	s0,sp,32
    //RiscV::popSppSpie();
    __asm__ volatile ("csrw sepc, ra");
    80003060:	14109073          	csrw	sepc,ra
    //__asm__ volatile ("sret");
    running->body(running->arguments);
    80003064:	00004497          	auipc	s1,0x4
    80003068:	edc48493          	addi	s1,s1,-292 # 80006f40 <_ZN3TCB7runningE>
    8000306c:	0004b783          	ld	a5,0(s1)
    80003070:	0007b703          	ld	a4,0(a5)
    80003074:	0287b503          	ld	a0,40(a5)
    80003078:	000700e7          	jalr	a4
    running->setFinished(true);
    8000307c:	00100593          	li	a1,1
    80003080:	0004b503          	ld	a0,0(s1)
    80003084:	00000097          	auipc	ra,0x0
    80003088:	ca4080e7          	jalr	-860(ra) # 80002d28 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    8000308c:	00000097          	auipc	ra,0x0
    80003090:	f9c080e7          	jalr	-100(ra) # 80003028 <_ZN3TCB5yieldEv>
}
    80003094:	01813083          	ld	ra,24(sp)
    80003098:	01013403          	ld	s0,16(sp)
    8000309c:	00813483          	ld	s1,8(sp)
    800030a0:	02010113          	addi	sp,sp,32
    800030a4:	00008067          	ret

00000000800030a8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800030a8:	fe010113          	addi	sp,sp,-32
    800030ac:	00113c23          	sd	ra,24(sp)
    800030b0:	00813823          	sd	s0,16(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800030bc:	00004497          	auipc	s1,0x4
    800030c0:	e844b483          	ld	s1,-380(s1) # 80006f40 <_ZN3TCB7runningE>
    if (old->semBlocked==nullptr && !old->isFinished()) {
    800030c4:	0304b783          	ld	a5,48(s1)
    800030c8:	02078c63          	beqz	a5,80003100 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800030cc:	00000097          	auipc	ra,0x0
    800030d0:	9bc080e7          	jalr	-1604(ra) # 80002a88 <_ZN9Scheduler3getEv>
    800030d4:	00004797          	auipc	a5,0x4
    800030d8:	e6a7b623          	sd	a0,-404(a5) # 80006f40 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800030dc:	01050593          	addi	a1,a0,16
    800030e0:	01048513          	addi	a0,s1,16
    800030e4:	ffffe097          	auipc	ra,0xffffe
    800030e8:	14c080e7          	jalr	332(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800030ec:	01813083          	ld	ra,24(sp)
    800030f0:	01013403          	ld	s0,16(sp)
    800030f4:	00813483          	ld	s1,8(sp)
    800030f8:	02010113          	addi	sp,sp,32
    800030fc:	00008067          	ret
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80003100:	00048513          	mv	a0,s1
    80003104:	00000097          	auipc	ra,0x0
    80003108:	c08080e7          	jalr	-1016(ra) # 80002d0c <_ZNK3TCB10isFinishedEv>
    8000310c:	fc0510e3          	bnez	a0,800030cc <_ZN3TCB8dispatchEv+0x24>
        Scheduler::put(old);
    80003110:	00048513          	mv	a0,s1
    80003114:	00000097          	auipc	ra,0x0
    80003118:	9dc080e7          	jalr	-1572(ra) # 80002af0 <_ZN9Scheduler3putEP3TCB>
    8000311c:	fb1ff06f          	j	800030cc <_ZN3TCB8dispatchEv+0x24>

0000000080003120 <_Znwm>:
#include "../h/syscall_cpp.hpp"


//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    80003120:	ff010113          	addi	sp,sp,-16
    80003124:	00813423          	sd	s0,8(sp)
    80003128:	01010413          	addi	s0,sp,16

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000312c:	05750793          	addi	a5,a0,87
    80003130:	0067d793          	srli	a5,a5,0x6
    80003134:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80003138:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000313c:	00004717          	auipc	a4,0x4
    80003140:	d6473703          	ld	a4,-668(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003144:	00073503          	ld	a0,0(a4)
    80003148:	0c050863          	beqz	a0,80003218 <_Znwm+0xf8>
            cur->next=fmem_head->next;
    8000314c:	00004717          	auipc	a4,0x4
    80003150:	d5473703          	ld	a4,-684(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003154:	00073683          	ld	a3,0(a4)
    80003158:	0006b683          	ld	a3,0(a3)
    8000315c:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80003160:	00073703          	ld	a4,0(a4)
    80003164:	00873603          	ld	a2,8(a4)
    80003168:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    8000316c:	01053703          	ld	a4,16(a0)
    80003170:	02f76663          	bltu	a4,a5,8000319c <_Znwm+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80003174:	40f70733          	sub	a4,a4,a5
    80003178:	01800593          	li	a1,24
    8000317c:	02e5ec63          	bltu	a1,a4,800031b4 <_Znwm+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80003180:	02060263          	beqz	a2,800031a4 <_Znwm+0x84>
    80003184:	00d63023          	sd	a3,0(a2) # 8000 <_entry-0x7fff8000>
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80003188:	00053783          	ld	a5,0(a0)
    8000318c:	08078663          	beqz	a5,80003218 <_Znwm+0xf8>
    80003190:	00853703          	ld	a4,8(a0)
    80003194:	00e7b423          	sd	a4,8(a5)
                return cur;
    80003198:	0800006f          	j	80003218 <_Znwm+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000319c:	00068513          	mv	a0,a3
    800031a0:	fa9ff06f          	j	80003148 <_Znwm+0x28>
                else fmem_head = cur->next;
    800031a4:	00004797          	auipc	a5,0x4
    800031a8:	cfc7b783          	ld	a5,-772(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800031ac:	00d7b023          	sd	a3,0(a5)
    800031b0:	fd9ff06f          	j	80003188 <_Znwm+0x68>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800031b4:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    800031b8:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800031bc:	00073023          	sd	zero,0(a4)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800031c0:	00853683          	ld	a3,8(a0)
    800031c4:	06068063          	beqz	a3,80003224 <_Znwm+0x104>
    800031c8:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800031cc:	00053683          	ld	a3,0(a0)
    800031d0:	00068463          	beqz	a3,800031d8 <_Znwm+0xb8>
    800031d4:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800031d8:	00853603          	ld	a2,8(a0)
    800031dc:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800031e0:	00053683          	ld	a3,0(a0)
    800031e4:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800031e8:	01053683          	ld	a3,16(a0)
    800031ec:	40f687b3          	sub	a5,a3,a5
    800031f0:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800031f4:	0c070693          	addi	a3,a4,192
    800031f8:	00004597          	auipc	a1,0x4
    800031fc:	ca85b583          	ld	a1,-856(a1) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003200:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80003204:	00073583          	ld	a1,0(a4)
    80003208:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    8000320c:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80003210:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80003214:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}
    80003218:	00813403          	ld	s0,8(sp)
    8000321c:	01010113          	addi	sp,sp,16
    80003220:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80003224:	0c070693          	addi	a3,a4,192
    80003228:	00004617          	auipc	a2,0x4
    8000322c:	c7863603          	ld	a2,-904(a2) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003230:	00d63023          	sd	a3,0(a2)
    80003234:	f99ff06f          	j	800031cc <_Znwm+0xac>

0000000080003238 <_Znam>:

void *operator new[](uint64 n){
    80003238:	ff010113          	addi	sp,sp,-16
    8000323c:	00813423          	sd	s0,8(sp)
    80003240:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80003244:	05750793          	addi	a5,a0,87
    80003248:	0067d793          	srli	a5,a5,0x6
    8000324c:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80003250:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003254:	00004717          	auipc	a4,0x4
    80003258:	c4c73703          	ld	a4,-948(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000325c:	00073503          	ld	a0,0(a4)
    80003260:	0c050863          	beqz	a0,80003330 <_Znam+0xf8>
            cur->next=fmem_head->next;
    80003264:	00004717          	auipc	a4,0x4
    80003268:	c3c73703          	ld	a4,-964(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000326c:	00073683          	ld	a3,0(a4)
    80003270:	0006b683          	ld	a3,0(a3)
    80003274:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80003278:	00073703          	ld	a4,0(a4)
    8000327c:	00873603          	ld	a2,8(a4)
    80003280:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80003284:	01053703          	ld	a4,16(a0)
    80003288:	02f76663          	bltu	a4,a5,800032b4 <_Znam+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    8000328c:	40f70733          	sub	a4,a4,a5
    80003290:	01800593          	li	a1,24
    80003294:	02e5ec63          	bltu	a1,a4,800032cc <_Znam+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80003298:	02060263          	beqz	a2,800032bc <_Znam+0x84>
    8000329c:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    800032a0:	00053783          	ld	a5,0(a0)
    800032a4:	08078663          	beqz	a5,80003330 <_Znam+0xf8>
    800032a8:	00853703          	ld	a4,8(a0)
    800032ac:	00e7b423          	sd	a4,8(a5)
                return cur;
    800032b0:	0800006f          	j	80003330 <_Znam+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800032b4:	00068513          	mv	a0,a3
    800032b8:	fa9ff06f          	j	80003260 <_Znam+0x28>
                else fmem_head = cur->next;
    800032bc:	00004797          	auipc	a5,0x4
    800032c0:	be47b783          	ld	a5,-1052(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800032c4:	00d7b023          	sd	a3,0(a5)
    800032c8:	fd9ff06f          	j	800032a0 <_Znam+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800032cc:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    800032d0:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800032d4:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800032d8:	00853683          	ld	a3,8(a0)
    800032dc:	06068063          	beqz	a3,8000333c <_Znam+0x104>
    800032e0:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800032e4:	00053683          	ld	a3,0(a0)
    800032e8:	00068463          	beqz	a3,800032f0 <_Znam+0xb8>
    800032ec:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800032f0:	00853603          	ld	a2,8(a0)
    800032f4:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800032f8:	00053683          	ld	a3,0(a0)
    800032fc:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80003300:	01053683          	ld	a3,16(a0)
    80003304:	40f687b3          	sub	a5,a3,a5
    80003308:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    8000330c:	0c070693          	addi	a3,a4,192
    80003310:	00004597          	auipc	a1,0x4
    80003314:	b905b583          	ld	a1,-1136(a1) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003318:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    8000331c:	00073583          	ld	a1,0(a4)
    80003320:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80003324:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80003328:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    8000332c:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
}
    80003330:	00813403          	ld	s0,8(sp)
    80003334:	01010113          	addi	sp,sp,16
    80003338:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    8000333c:	0c070693          	addi	a3,a4,192
    80003340:	00004617          	auipc	a2,0x4
    80003344:	b6063603          	ld	a2,-1184(a2) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003348:	00d63023          	sd	a3,0(a2)
    8000334c:	f99ff06f          	j	800032e4 <_Znam+0xac>

0000000080003350 <_ZdlPv>:

void operator delete(void *p) noexcept {
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00813423          	sd	s0,8(sp)
    80003358:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    8000335c:	00004797          	auipc	a5,0x4
    80003360:	b447b783          	ld	a5,-1212(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003364:	0007b703          	ld	a4,0(a5)
    80003368:	00070e63          	beqz	a4,80003384 <_ZdlPv+0x34>
    8000336c:	02e56063          	bltu	a0,a4,8000338c <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80003370:	00070793          	mv	a5,a4
    80003374:	00073703          	ld	a4,0(a4)
    80003378:	00e50c63          	beq	a0,a4,80003390 <_ZdlPv+0x40>
    8000337c:	fea76ae3          	bltu	a4,a0,80003370 <_ZdlPv+0x20>
    80003380:	0100006f          	j	80003390 <_ZdlPv+0x40>
            cur=nullptr;
    80003384:	00070793          	mv	a5,a4
    80003388:	0080006f          	j	80003390 <_ZdlPv+0x40>
    8000338c:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80003390:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80003394:	04000713          	li	a4,64
    80003398:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    8000339c:	00f53423          	sd	a5,8(a0)
                if(cur) {
    800033a0:	04078e63          	beqz	a5,800033fc <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    800033a4:	0007b703          	ld	a4,0(a5)
    800033a8:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    800033ac:	00053703          	ld	a4,0(a0)
    800033b0:	00070463          	beqz	a4,800033b8 <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    800033b4:	00a73423          	sd	a0,8(a4)
                if (cur) {
    800033b8:	04078c63          	beqz	a5,80003410 <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800033bc:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    800033c0:	00050c63          	beqz	a0,800033d8 <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800033c4:	00053703          	ld	a4,0(a0)
    800033c8:	00070863          	beqz	a4,800033d8 <_ZdlPv+0x88>
    800033cc:	01053683          	ld	a3,16(a0)
    800033d0:	00d50633          	add	a2,a0,a3
    800033d4:	04c70663          	beq	a4,a2,80003420 <_ZdlPv+0xd0>
        if (!curr) return;
    800033d8:	00078c63          	beqz	a5,800033f0 <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800033dc:	0007b703          	ld	a4,0(a5)
    800033e0:	00070863          	beqz	a4,800033f0 <_ZdlPv+0xa0>
    800033e4:	0107b683          	ld	a3,16(a5)
    800033e8:	00d78633          	add	a2,a5,a3
    800033ec:	04c70a63          	beq	a4,a2,80003440 <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    800033f0:	00813403          	ld	s0,8(sp)
    800033f4:	01010113          	addi	sp,sp,16
    800033f8:	00008067          	ret
                    newSeg->next = fmem_head;
    800033fc:	00004717          	auipc	a4,0x4
    80003400:	aa473703          	ld	a4,-1372(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003404:	00073703          	ld	a4,0(a4)
    80003408:	00e53023          	sd	a4,0(a0)
    8000340c:	fa1ff06f          	j	800033ac <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    80003410:	00004717          	auipc	a4,0x4
    80003414:	a9073703          	ld	a4,-1392(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003418:	00a73023          	sd	a0,0(a4)
    8000341c:	fa5ff06f          	j	800033c0 <_ZdlPv+0x70>
            curr->size += curr->next->size;
    80003420:	01073603          	ld	a2,16(a4)
    80003424:	00c686b3          	add	a3,a3,a2
    80003428:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    8000342c:	00073703          	ld	a4,0(a4)
    80003430:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80003434:	fa0702e3          	beqz	a4,800033d8 <_ZdlPv+0x88>
    80003438:	00a73423          	sd	a0,8(a4)
    8000343c:	f9dff06f          	j	800033d8 <_ZdlPv+0x88>
            curr->size += curr->next->size;
    80003440:	01073603          	ld	a2,16(a4)
    80003444:	00c686b3          	add	a3,a3,a2
    80003448:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    8000344c:	00073703          	ld	a4,0(a4)
    80003450:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80003454:	f8070ee3          	beqz	a4,800033f0 <_ZdlPv+0xa0>
    80003458:	00f73423          	sd	a5,8(a4)
    8000345c:	f95ff06f          	j	800033f0 <_ZdlPv+0xa0>

0000000080003460 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    80003460:	ff010113          	addi	sp,sp,-16
    80003464:	00813423          	sd	s0,8(sp)
    80003468:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    8000346c:	00004797          	auipc	a5,0x4
    80003470:	a347b783          	ld	a5,-1484(a5) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003474:	0007b703          	ld	a4,0(a5)
    80003478:	00070e63          	beqz	a4,80003494 <_ZdaPv+0x34>
    8000347c:	02e56063          	bltu	a0,a4,8000349c <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80003480:	00070793          	mv	a5,a4
    80003484:	00073703          	ld	a4,0(a4)
    80003488:	00e50c63          	beq	a0,a4,800034a0 <_ZdaPv+0x40>
    8000348c:	fea76ae3          	bltu	a4,a0,80003480 <_ZdaPv+0x20>
    80003490:	0100006f          	j	800034a0 <_ZdaPv+0x40>
            cur=nullptr;
    80003494:	00070793          	mv	a5,a4
    80003498:	0080006f          	j	800034a0 <_ZdaPv+0x40>
    8000349c:	00000793          	li	a5,0
                newSeg->next=nullptr;
    800034a0:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    800034a4:	04000713          	li	a4,64
    800034a8:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    800034ac:	00f53423          	sd	a5,8(a0)
                if(cur) {
    800034b0:	04078e63          	beqz	a5,8000350c <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    800034b4:	0007b703          	ld	a4,0(a5)
    800034b8:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    800034bc:	00053703          	ld	a4,0(a0)
    800034c0:	00070463          	beqz	a4,800034c8 <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    800034c4:	00a73423          	sd	a0,8(a4)
                if (cur) {
    800034c8:	04078c63          	beqz	a5,80003520 <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800034cc:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    800034d0:	00050c63          	beqz	a0,800034e8 <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800034d4:	00053703          	ld	a4,0(a0)
    800034d8:	00070863          	beqz	a4,800034e8 <_ZdaPv+0x88>
    800034dc:	01053683          	ld	a3,16(a0)
    800034e0:	00d50633          	add	a2,a0,a3
    800034e4:	04c70663          	beq	a4,a2,80003530 <_ZdaPv+0xd0>
        if (!curr) return;
    800034e8:	00078c63          	beqz	a5,80003500 <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800034ec:	0007b703          	ld	a4,0(a5)
    800034f0:	00070863          	beqz	a4,80003500 <_ZdaPv+0xa0>
    800034f4:	0107b683          	ld	a3,16(a5)
    800034f8:	00d78633          	add	a2,a5,a3
    800034fc:	04c70a63          	beq	a4,a2,80003550 <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    80003500:	00813403          	ld	s0,8(sp)
    80003504:	01010113          	addi	sp,sp,16
    80003508:	00008067          	ret
                    newSeg->next = fmem_head;
    8000350c:	00004717          	auipc	a4,0x4
    80003510:	99473703          	ld	a4,-1644(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003514:	00073703          	ld	a4,0(a4)
    80003518:	00e53023          	sd	a4,0(a0)
    8000351c:	fa1ff06f          	j	800034bc <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    80003520:	00004717          	auipc	a4,0x4
    80003524:	98073703          	ld	a4,-1664(a4) # 80006ea0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003528:	00a73023          	sd	a0,0(a4)
    8000352c:	fa5ff06f          	j	800034d0 <_ZdaPv+0x70>
            curr->size += curr->next->size;
    80003530:	01073603          	ld	a2,16(a4)
    80003534:	00c686b3          	add	a3,a3,a2
    80003538:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    8000353c:	00073703          	ld	a4,0(a4)
    80003540:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80003544:	fa0702e3          	beqz	a4,800034e8 <_ZdaPv+0x88>
    80003548:	00a73423          	sd	a0,8(a4)
    8000354c:	f9dff06f          	j	800034e8 <_ZdaPv+0x88>
            curr->size += curr->next->size;
    80003550:	01073603          	ld	a2,16(a4)
    80003554:	00c686b3          	add	a3,a3,a2
    80003558:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    8000355c:	00073703          	ld	a4,0(a4)
    80003560:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80003564:	f8070ee3          	beqz	a4,80003500 <_ZdaPv+0xa0>
    80003568:	00f73423          	sd	a5,8(a4)
    8000356c:	f95ff06f          	j	80003500 <_ZdaPv+0xa0>

0000000080003570 <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    80003570:	ff010113          	addi	sp,sp,-16
    80003574:	00113423          	sd	ra,8(sp)
    80003578:	00813023          	sd	s0,0(sp)
    8000357c:	01010413          	addi	s0,sp,16
    80003580:	00004797          	auipc	a5,0x4
    80003584:	8d878793          	addi	a5,a5,-1832 # 80006e58 <_ZTV6Thread+0x10>
    80003588:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    8000358c:	00853503          	ld	a0,8(a0)
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	ce0080e7          	jalr	-800(ra) # 80001270 <_Z8mem_freePv>
}
    80003598:	00813083          	ld	ra,8(sp)
    8000359c:	00013403          	ld	s0,0(sp)
    800035a0:	01010113          	addi	sp,sp,16
    800035a4:	00008067          	ret

00000000800035a8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800035a8:	fe010113          	addi	sp,sp,-32
    800035ac:	00113c23          	sd	ra,24(sp)
    800035b0:	00813823          	sd	s0,16(sp)
    800035b4:	00913423          	sd	s1,8(sp)
    800035b8:	02010413          	addi	s0,sp,32
    800035bc:	00050493          	mv	s1,a0
}
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	fb0080e7          	jalr	-80(ra) # 80003570 <_ZN6ThreadD1Ev>
    800035c8:	00048513          	mv	a0,s1
    800035cc:	00000097          	auipc	ra,0x0
    800035d0:	d84080e7          	jalr	-636(ra) # 80003350 <_ZdlPv>
    800035d4:	01813083          	ld	ra,24(sp)
    800035d8:	01013403          	ld	s0,16(sp)
    800035dc:	00813483          	ld	s1,8(sp)
    800035e0:	02010113          	addi	sp,sp,32
    800035e4:	00008067          	ret

00000000800035e8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr) {
    800035e8:	ff010113          	addi	sp,sp,-16
    800035ec:	00113423          	sd	ra,8(sp)
    800035f0:	00813023          	sd	s0,0(sp)
    800035f4:	01010413          	addi	s0,sp,16
    800035f8:	00004797          	auipc	a5,0x4
    800035fc:	86078793          	addi	a5,a5,-1952 # 80006e58 <_ZTV6Thread+0x10>
    80003600:	00f53023          	sd	a5,0(a0)
    80003604:	00053423          	sd	zero,8(a0)
    thread_create_cpp_api((thread_t*)myHandle, body, arg);
    80003608:	00000513          	li	a0,0
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	e34080e7          	jalr	-460(ra) # 80001440 <_Z21thread_create_cpp_apiPP3TCBPFvPvES2_>
}
    80003614:	00813083          	ld	ra,8(sp)
    80003618:	00013403          	ld	s0,0(sp)
    8000361c:	01010113          	addi	sp,sp,16
    80003620:	00008067          	ret

0000000080003624 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003624:	ff010113          	addi	sp,sp,-16
    80003628:	00113423          	sd	ra,8(sp)
    8000362c:	00813023          	sd	s0,0(sp)
    80003630:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	cd0080e7          	jalr	-816(ra) # 80001304 <_Z15thread_dispatchv>
}
    8000363c:	00813083          	ld	ra,8(sp)
    80003640:	00013403          	ld	s0,0(sp)
    80003644:	01010113          	addi	sp,sp,16
    80003648:	00008067          	ret

000000008000364c <_ZN6Thread5startEv>:

int Thread::start() {
    8000364c:	ff010113          	addi	sp,sp,-16
    80003650:	00113423          	sd	ra,8(sp)
    80003654:	00813023          	sd	s0,0(sp)
    80003658:	01010413          	addi	s0,sp,16
    thread_start((thread_t*)myHandle);
    8000365c:	00853503          	ld	a0,8(a0)
    80003660:	ffffe097          	auipc	ra,0xffffe
    80003664:	e18080e7          	jalr	-488(ra) # 80001478 <_Z12thread_startPP3TCB>
    return 0;
}
    80003668:	00000513          	li	a0,0
    8000366c:	00813083          	ld	ra,8(sp)
    80003670:	00013403          	ld	s0,0(sp)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret

000000008000367c <_ZN6Thread3runEv>:
    virtual ~Thread ();
    int start ();
    static void dispatch ();
protected:
    Thread ();
    virtual void run () {}
    8000367c:	ff010113          	addi	sp,sp,-16
    80003680:	00813423          	sd	s0,8(sp)
    80003684:	01010413          	addi	s0,sp,16
    80003688:	00813403          	ld	s0,8(sp)
    8000368c:	01010113          	addi	sp,sp,16
    80003690:	00008067          	ret

0000000080003694 <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80003694:	ff010113          	addi	sp,sp,-16
    80003698:	00813423          	sd	s0,8(sp)
    8000369c:	01010413          	addi	s0,sp,16
    800036a0:	00100793          	li	a5,1
    800036a4:	00f50863          	beq	a0,a5,800036b4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800036a8:	00813403          	ld	s0,8(sp)
    800036ac:	01010113          	addi	sp,sp,16
    800036b0:	00008067          	ret
    800036b4:	000107b7          	lui	a5,0x10
    800036b8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800036bc:	fef596e3          	bne	a1,a5,800036a8 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    800036c0:	00003797          	auipc	a5,0x3
    800036c4:	7c07b783          	ld	a5,1984(a5) # 80006e80 <_GLOBAL_OFFSET_TABLE_+0x8>
    800036c8:	0007b783          	ld	a5,0(a5)
    800036cc:	00004717          	auipc	a4,0x4
    800036d0:	88f73223          	sd	a5,-1916(a4) # 80006f50 <_ZN16MemoryAllocation9fmem_headE>
    800036d4:	fd5ff06f          	j	800036a8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800036d8 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    800036d8:	ff010113          	addi	sp,sp,-16
    800036dc:	00113423          	sd	ra,8(sp)
    800036e0:	00813023          	sd	s0,0(sp)
    800036e4:	01010413          	addi	s0,sp,16
    800036e8:	000105b7          	lui	a1,0x10
    800036ec:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800036f0:	00100513          	li	a0,1
    800036f4:	00000097          	auipc	ra,0x0
    800036f8:	fa0080e7          	jalr	-96(ra) # 80003694 <_Z41__static_initialization_and_destruction_0ii>
    800036fc:	00813083          	ld	ra,8(sp)
    80003700:	00013403          	ld	s0,0(sp)
    80003704:	01010113          	addi	sp,sp,16
    80003708:	00008067          	ret

000000008000370c <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"
//TODO PROMENI SVE BUFFER PUTC I GETC
Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000370c:	fe010113          	addi	sp,sp,-32
    80003710:	00113c23          	sd	ra,24(sp)
    80003714:	00813823          	sd	s0,16(sp)
    80003718:	00913423          	sd	s1,8(sp)
    8000371c:	01213023          	sd	s2,0(sp)
    80003720:	02010413          	addi	s0,sp,32
    80003724:	00050493          	mv	s1,a0
    80003728:	00058913          	mv	s2,a1
    8000372c:	0015879b          	addiw	a5,a1,1
    80003730:	0007851b          	sext.w	a0,a5
    80003734:	00f4a023          	sw	a5,0(s1)
    80003738:	0004a823          	sw	zero,16(s1)
    8000373c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003740:	00251513          	slli	a0,a0,0x2
    80003744:	ffffe097          	auipc	ra,0xffffe
    80003748:	b00080e7          	jalr	-1280(ra) # 80001244 <_Z9mem_allocm>
    8000374c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003750:	00000593          	li	a1,0
    80003754:	02048513          	addi	a0,s1,32
    80003758:	ffffe097          	auipc	ra,0xffffe
    8000375c:	bd0080e7          	jalr	-1072(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&spaceAvailable, _cap);
    80003760:	00090593          	mv	a1,s2
    80003764:	01848513          	addi	a0,s1,24
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	bc0080e7          	jalr	-1088(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexHead, 1);
    80003770:	00100593          	li	a1,1
    80003774:	02848513          	addi	a0,s1,40
    80003778:	ffffe097          	auipc	ra,0xffffe
    8000377c:	bb0080e7          	jalr	-1104(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexTail, 1);
    80003780:	00100593          	li	a1,1
    80003784:	03048513          	addi	a0,s1,48
    80003788:	ffffe097          	auipc	ra,0xffffe
    8000378c:	ba0080e7          	jalr	-1120(ra) # 80001328 <_Z8sem_openPP9semaphorej>
}
    80003790:	01813083          	ld	ra,24(sp)
    80003794:	01013403          	ld	s0,16(sp)
    80003798:	00813483          	ld	s1,8(sp)
    8000379c:	00013903          	ld	s2,0(sp)
    800037a0:	02010113          	addi	sp,sp,32
    800037a4:	00008067          	ret

00000000800037a8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800037a8:	fe010113          	addi	sp,sp,-32
    800037ac:	00113c23          	sd	ra,24(sp)
    800037b0:	00813823          	sd	s0,16(sp)
    800037b4:	00913423          	sd	s1,8(sp)
    800037b8:	01213023          	sd	s2,0(sp)
    800037bc:	02010413          	addi	s0,sp,32
    800037c0:	00050493          	mv	s1,a0
    800037c4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800037c8:	01853503          	ld	a0,24(a0)
    800037cc:	ffffe097          	auipc	ra,0xffffe
    800037d0:	bc0080e7          	jalr	-1088(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexTail);
    800037d4:	0304b503          	ld	a0,48(s1)
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	bb4080e7          	jalr	-1100(ra) # 8000138c <_Z8sem_waitP9semaphore>
    buffer[tail] = val;
    800037e0:	0084b783          	ld	a5,8(s1)
    800037e4:	0144a703          	lw	a4,20(s1)
    800037e8:	00271713          	slli	a4,a4,0x2
    800037ec:	00e787b3          	add	a5,a5,a4
    800037f0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800037f4:	0144a783          	lw	a5,20(s1)
    800037f8:	0017879b          	addiw	a5,a5,1
    800037fc:	0004a703          	lw	a4,0(s1)
    80003800:	02e7e7bb          	remw	a5,a5,a4
    80003804:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003808:	0304b503          	ld	a0,48(s1)
    8000380c:	ffffe097          	auipc	ra,0xffffe
    80003810:	bb0080e7          	jalr	-1104(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(itemAvailable);
    80003814:	0204b503          	ld	a0,32(s1)
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	ba4080e7          	jalr	-1116(ra) # 800013bc <_Z10sem_signalP9semaphore>

}
    80003820:	01813083          	ld	ra,24(sp)
    80003824:	01013403          	ld	s0,16(sp)
    80003828:	00813483          	ld	s1,8(sp)
    8000382c:	00013903          	ld	s2,0(sp)
    80003830:	02010113          	addi	sp,sp,32
    80003834:	00008067          	ret

0000000080003838 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003838:	fe010113          	addi	sp,sp,-32
    8000383c:	00113c23          	sd	ra,24(sp)
    80003840:	00813823          	sd	s0,16(sp)
    80003844:	00913423          	sd	s1,8(sp)
    80003848:	01213023          	sd	s2,0(sp)
    8000384c:	02010413          	addi	s0,sp,32
    80003850:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003854:	02053503          	ld	a0,32(a0)
    80003858:	ffffe097          	auipc	ra,0xffffe
    8000385c:	b34080e7          	jalr	-1228(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexHead);
    80003860:	0284b503          	ld	a0,40(s1)
    80003864:	ffffe097          	auipc	ra,0xffffe
    80003868:	b28080e7          	jalr	-1240(ra) # 8000138c <_Z8sem_waitP9semaphore>

    int ret = buffer[head];
    8000386c:	0084b703          	ld	a4,8(s1)
    80003870:	0104a783          	lw	a5,16(s1)
    80003874:	00279693          	slli	a3,a5,0x2
    80003878:	00d70733          	add	a4,a4,a3
    8000387c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003880:	0017879b          	addiw	a5,a5,1
    80003884:	0004a703          	lw	a4,0(s1)
    80003888:	02e7e7bb          	remw	a5,a5,a4
    8000388c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003890:	0284b503          	ld	a0,40(s1)
    80003894:	ffffe097          	auipc	ra,0xffffe
    80003898:	b28080e7          	jalr	-1240(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(spaceAvailable);
    8000389c:	0184b503          	ld	a0,24(s1)
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	b1c080e7          	jalr	-1252(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    800038a8:	00090513          	mv	a0,s2
    800038ac:	01813083          	ld	ra,24(sp)
    800038b0:	01013403          	ld	s0,16(sp)
    800038b4:	00813483          	ld	s1,8(sp)
    800038b8:	00013903          	ld	s2,0(sp)
    800038bc:	02010113          	addi	sp,sp,32
    800038c0:	00008067          	ret

00000000800038c4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800038c4:	fe010113          	addi	sp,sp,-32
    800038c8:	00113c23          	sd	ra,24(sp)
    800038cc:	00813823          	sd	s0,16(sp)
    800038d0:	00913423          	sd	s1,8(sp)
    800038d4:	01213023          	sd	s2,0(sp)
    800038d8:	02010413          	addi	s0,sp,32
    800038dc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800038e0:	02853503          	ld	a0,40(a0)
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	aa8080e7          	jalr	-1368(ra) # 8000138c <_Z8sem_waitP9semaphore>
    sem_wait(mutexTail);
    800038ec:	0304b503          	ld	a0,48(s1)
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	a9c080e7          	jalr	-1380(ra) # 8000138c <_Z8sem_waitP9semaphore>

    if (tail >= head) {
    800038f8:	0144a783          	lw	a5,20(s1)
    800038fc:	0104a903          	lw	s2,16(s1)
    80003900:	0327ce63          	blt	a5,s2,8000393c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003904:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003908:	0304b503          	ld	a0,48(s1)
    8000390c:	ffffe097          	auipc	ra,0xffffe
    80003910:	ab0080e7          	jalr	-1360(ra) # 800013bc <_Z10sem_signalP9semaphore>
    sem_signal(mutexHead);
    80003914:	0284b503          	ld	a0,40(s1)
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	aa4080e7          	jalr	-1372(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    80003920:	00090513          	mv	a0,s2
    80003924:	01813083          	ld	ra,24(sp)
    80003928:	01013403          	ld	s0,16(sp)
    8000392c:	00813483          	ld	s1,8(sp)
    80003930:	00013903          	ld	s2,0(sp)
    80003934:	02010113          	addi	sp,sp,32
    80003938:	00008067          	ret
        ret = cap - head + tail;
    8000393c:	0004a703          	lw	a4,0(s1)
    80003940:	4127093b          	subw	s2,a4,s2
    80003944:	00f9093b          	addw	s2,s2,a5
    80003948:	fc1ff06f          	j	80003908 <_ZN6Buffer6getCntEv+0x44>

000000008000394c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000394c:	fe010113          	addi	sp,sp,-32
    80003950:	00113c23          	sd	ra,24(sp)
    80003954:	00813823          	sd	s0,16(sp)
    80003958:	00913423          	sd	s1,8(sp)
    8000395c:	02010413          	addi	s0,sp,32
    80003960:	00050493          	mv	s1,a0
    putc('\n');
    80003964:	00a00513          	li	a0,10
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	ab0080e7          	jalr	-1360(ra) # 80001418 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003970:	00002517          	auipc	a0,0x2
    80003974:	7a850513          	addi	a0,a0,1960 # 80006118 <CONSOLE_STATUS+0x108>
    80003978:	fffff097          	auipc	ra,0xfffff
    8000397c:	824080e7          	jalr	-2012(ra) # 8000219c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003980:	00048513          	mv	a0,s1
    80003984:	00000097          	auipc	ra,0x0
    80003988:	f40080e7          	jalr	-192(ra) # 800038c4 <_ZN6Buffer6getCntEv>
    8000398c:	02a05c63          	blez	a0,800039c4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003990:	0084b783          	ld	a5,8(s1)
    80003994:	0104a703          	lw	a4,16(s1)
    80003998:	00271713          	slli	a4,a4,0x2
    8000399c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800039a0:	0007c503          	lbu	a0,0(a5)
    800039a4:	ffffe097          	auipc	ra,0xffffe
    800039a8:	a74080e7          	jalr	-1420(ra) # 80001418 <_Z4putcc>
        head = (head + 1) % cap;
    800039ac:	0104a783          	lw	a5,16(s1)
    800039b0:	0017879b          	addiw	a5,a5,1
    800039b4:	0004a703          	lw	a4,0(s1)
    800039b8:	02e7e7bb          	remw	a5,a5,a4
    800039bc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800039c0:	fc1ff06f          	j	80003980 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800039c4:	02100513          	li	a0,33
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	a50080e7          	jalr	-1456(ra) # 80001418 <_Z4putcc>
    putc('\n');
    800039d0:	00a00513          	li	a0,10
    800039d4:	ffffe097          	auipc	ra,0xffffe
    800039d8:	a44080e7          	jalr	-1468(ra) # 80001418 <_Z4putcc>
    mem_free(buffer);
    800039dc:	0084b503          	ld	a0,8(s1)
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	890080e7          	jalr	-1904(ra) # 80001270 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800039e8:	0204b503          	ld	a0,32(s1)
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	970080e7          	jalr	-1680(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(spaceAvailable);
    800039f4:	0184b503          	ld	a0,24(s1)
    800039f8:	ffffe097          	auipc	ra,0xffffe
    800039fc:	964080e7          	jalr	-1692(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexTail);
    80003a00:	0304b503          	ld	a0,48(s1)
    80003a04:	ffffe097          	auipc	ra,0xffffe
    80003a08:	958080e7          	jalr	-1704(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexHead);
    80003a0c:	0284b503          	ld	a0,40(s1)
    80003a10:	ffffe097          	auipc	ra,0xffffe
    80003a14:	94c080e7          	jalr	-1716(ra) # 8000135c <_Z9sem_closeP9semaphore>
}
    80003a18:	01813083          	ld	ra,24(sp)
    80003a1c:	01013403          	ld	s0,16(sp)
    80003a20:	00813483          	ld	s1,8(sp)
    80003a24:	02010113          	addi	sp,sp,32
    80003a28:	00008067          	ret

0000000080003a2c <start>:
    80003a2c:	ff010113          	addi	sp,sp,-16
    80003a30:	00813423          	sd	s0,8(sp)
    80003a34:	01010413          	addi	s0,sp,16
    80003a38:	300027f3          	csrr	a5,mstatus
    80003a3c:	ffffe737          	lui	a4,0xffffe
    80003a40:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff663f>
    80003a44:	00e7f7b3          	and	a5,a5,a4
    80003a48:	00001737          	lui	a4,0x1
    80003a4c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003a50:	00e7e7b3          	or	a5,a5,a4
    80003a54:	30079073          	csrw	mstatus,a5
    80003a58:	00000797          	auipc	a5,0x0
    80003a5c:	16078793          	addi	a5,a5,352 # 80003bb8 <system_main>
    80003a60:	34179073          	csrw	mepc,a5
    80003a64:	00000793          	li	a5,0
    80003a68:	18079073          	csrw	satp,a5
    80003a6c:	000107b7          	lui	a5,0x10
    80003a70:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003a74:	30279073          	csrw	medeleg,a5
    80003a78:	30379073          	csrw	mideleg,a5
    80003a7c:	104027f3          	csrr	a5,sie
    80003a80:	2227e793          	ori	a5,a5,546
    80003a84:	10479073          	csrw	sie,a5
    80003a88:	fff00793          	li	a5,-1
    80003a8c:	00a7d793          	srli	a5,a5,0xa
    80003a90:	3b079073          	csrw	pmpaddr0,a5
    80003a94:	00f00793          	li	a5,15
    80003a98:	3a079073          	csrw	pmpcfg0,a5
    80003a9c:	f14027f3          	csrr	a5,mhartid
    80003aa0:	0200c737          	lui	a4,0x200c
    80003aa4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003aa8:	0007869b          	sext.w	a3,a5
    80003aac:	00269713          	slli	a4,a3,0x2
    80003ab0:	000f4637          	lui	a2,0xf4
    80003ab4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003ab8:	00d70733          	add	a4,a4,a3
    80003abc:	0037979b          	slliw	a5,a5,0x3
    80003ac0:	020046b7          	lui	a3,0x2004
    80003ac4:	00d787b3          	add	a5,a5,a3
    80003ac8:	00c585b3          	add	a1,a1,a2
    80003acc:	00371693          	slli	a3,a4,0x3
    80003ad0:	00003717          	auipc	a4,0x3
    80003ad4:	49070713          	addi	a4,a4,1168 # 80006f60 <timer_scratch>
    80003ad8:	00b7b023          	sd	a1,0(a5)
    80003adc:	00d70733          	add	a4,a4,a3
    80003ae0:	00f73c23          	sd	a5,24(a4)
    80003ae4:	02c73023          	sd	a2,32(a4)
    80003ae8:	34071073          	csrw	mscratch,a4
    80003aec:	00000797          	auipc	a5,0x0
    80003af0:	6e478793          	addi	a5,a5,1764 # 800041d0 <timervec>
    80003af4:	30579073          	csrw	mtvec,a5
    80003af8:	300027f3          	csrr	a5,mstatus
    80003afc:	0087e793          	ori	a5,a5,8
    80003b00:	30079073          	csrw	mstatus,a5
    80003b04:	304027f3          	csrr	a5,mie
    80003b08:	0807e793          	ori	a5,a5,128
    80003b0c:	30479073          	csrw	mie,a5
    80003b10:	f14027f3          	csrr	a5,mhartid
    80003b14:	0007879b          	sext.w	a5,a5
    80003b18:	00078213          	mv	tp,a5
    80003b1c:	30200073          	mret
    80003b20:	00813403          	ld	s0,8(sp)
    80003b24:	01010113          	addi	sp,sp,16
    80003b28:	00008067          	ret

0000000080003b2c <timerinit>:
    80003b2c:	ff010113          	addi	sp,sp,-16
    80003b30:	00813423          	sd	s0,8(sp)
    80003b34:	01010413          	addi	s0,sp,16
    80003b38:	f14027f3          	csrr	a5,mhartid
    80003b3c:	0200c737          	lui	a4,0x200c
    80003b40:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b44:	0007869b          	sext.w	a3,a5
    80003b48:	00269713          	slli	a4,a3,0x2
    80003b4c:	000f4637          	lui	a2,0xf4
    80003b50:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b54:	00d70733          	add	a4,a4,a3
    80003b58:	0037979b          	slliw	a5,a5,0x3
    80003b5c:	020046b7          	lui	a3,0x2004
    80003b60:	00d787b3          	add	a5,a5,a3
    80003b64:	00c585b3          	add	a1,a1,a2
    80003b68:	00371693          	slli	a3,a4,0x3
    80003b6c:	00003717          	auipc	a4,0x3
    80003b70:	3f470713          	addi	a4,a4,1012 # 80006f60 <timer_scratch>
    80003b74:	00b7b023          	sd	a1,0(a5)
    80003b78:	00d70733          	add	a4,a4,a3
    80003b7c:	00f73c23          	sd	a5,24(a4)
    80003b80:	02c73023          	sd	a2,32(a4)
    80003b84:	34071073          	csrw	mscratch,a4
    80003b88:	00000797          	auipc	a5,0x0
    80003b8c:	64878793          	addi	a5,a5,1608 # 800041d0 <timervec>
    80003b90:	30579073          	csrw	mtvec,a5
    80003b94:	300027f3          	csrr	a5,mstatus
    80003b98:	0087e793          	ori	a5,a5,8
    80003b9c:	30079073          	csrw	mstatus,a5
    80003ba0:	304027f3          	csrr	a5,mie
    80003ba4:	0807e793          	ori	a5,a5,128
    80003ba8:	30479073          	csrw	mie,a5
    80003bac:	00813403          	ld	s0,8(sp)
    80003bb0:	01010113          	addi	sp,sp,16
    80003bb4:	00008067          	ret

0000000080003bb8 <system_main>:
    80003bb8:	fe010113          	addi	sp,sp,-32
    80003bbc:	00813823          	sd	s0,16(sp)
    80003bc0:	00913423          	sd	s1,8(sp)
    80003bc4:	00113c23          	sd	ra,24(sp)
    80003bc8:	02010413          	addi	s0,sp,32
    80003bcc:	00000097          	auipc	ra,0x0
    80003bd0:	0c4080e7          	jalr	196(ra) # 80003c90 <cpuid>
    80003bd4:	00003497          	auipc	s1,0x3
    80003bd8:	30c48493          	addi	s1,s1,780 # 80006ee0 <started>
    80003bdc:	02050263          	beqz	a0,80003c00 <system_main+0x48>
    80003be0:	0004a783          	lw	a5,0(s1)
    80003be4:	0007879b          	sext.w	a5,a5
    80003be8:	fe078ce3          	beqz	a5,80003be0 <system_main+0x28>
    80003bec:	0ff0000f          	fence
    80003bf0:	00002517          	auipc	a0,0x2
    80003bf4:	57050513          	addi	a0,a0,1392 # 80006160 <CONSOLE_STATUS+0x150>
    80003bf8:	00001097          	auipc	ra,0x1
    80003bfc:	a74080e7          	jalr	-1420(ra) # 8000466c <panic>
    80003c00:	00001097          	auipc	ra,0x1
    80003c04:	9c8080e7          	jalr	-1592(ra) # 800045c8 <consoleinit>
    80003c08:	00001097          	auipc	ra,0x1
    80003c0c:	154080e7          	jalr	340(ra) # 80004d5c <printfinit>
    80003c10:	00002517          	auipc	a0,0x2
    80003c14:	63050513          	addi	a0,a0,1584 # 80006240 <CONSOLE_STATUS+0x230>
    80003c18:	00001097          	auipc	ra,0x1
    80003c1c:	ab0080e7          	jalr	-1360(ra) # 800046c8 <__printf>
    80003c20:	00002517          	auipc	a0,0x2
    80003c24:	51050513          	addi	a0,a0,1296 # 80006130 <CONSOLE_STATUS+0x120>
    80003c28:	00001097          	auipc	ra,0x1
    80003c2c:	aa0080e7          	jalr	-1376(ra) # 800046c8 <__printf>
    80003c30:	00002517          	auipc	a0,0x2
    80003c34:	61050513          	addi	a0,a0,1552 # 80006240 <CONSOLE_STATUS+0x230>
    80003c38:	00001097          	auipc	ra,0x1
    80003c3c:	a90080e7          	jalr	-1392(ra) # 800046c8 <__printf>
    80003c40:	00001097          	auipc	ra,0x1
    80003c44:	4a8080e7          	jalr	1192(ra) # 800050e8 <kinit>
    80003c48:	00000097          	auipc	ra,0x0
    80003c4c:	148080e7          	jalr	328(ra) # 80003d90 <trapinit>
    80003c50:	00000097          	auipc	ra,0x0
    80003c54:	16c080e7          	jalr	364(ra) # 80003dbc <trapinithart>
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	5b8080e7          	jalr	1464(ra) # 80004210 <plicinit>
    80003c60:	00000097          	auipc	ra,0x0
    80003c64:	5d8080e7          	jalr	1496(ra) # 80004238 <plicinithart>
    80003c68:	00000097          	auipc	ra,0x0
    80003c6c:	078080e7          	jalr	120(ra) # 80003ce0 <userinit>
    80003c70:	0ff0000f          	fence
    80003c74:	00100793          	li	a5,1
    80003c78:	00002517          	auipc	a0,0x2
    80003c7c:	4d050513          	addi	a0,a0,1232 # 80006148 <CONSOLE_STATUS+0x138>
    80003c80:	00f4a023          	sw	a5,0(s1)
    80003c84:	00001097          	auipc	ra,0x1
    80003c88:	a44080e7          	jalr	-1468(ra) # 800046c8 <__printf>
    80003c8c:	0000006f          	j	80003c8c <system_main+0xd4>

0000000080003c90 <cpuid>:
    80003c90:	ff010113          	addi	sp,sp,-16
    80003c94:	00813423          	sd	s0,8(sp)
    80003c98:	01010413          	addi	s0,sp,16
    80003c9c:	00020513          	mv	a0,tp
    80003ca0:	00813403          	ld	s0,8(sp)
    80003ca4:	0005051b          	sext.w	a0,a0
    80003ca8:	01010113          	addi	sp,sp,16
    80003cac:	00008067          	ret

0000000080003cb0 <mycpu>:
    80003cb0:	ff010113          	addi	sp,sp,-16
    80003cb4:	00813423          	sd	s0,8(sp)
    80003cb8:	01010413          	addi	s0,sp,16
    80003cbc:	00020793          	mv	a5,tp
    80003cc0:	00813403          	ld	s0,8(sp)
    80003cc4:	0007879b          	sext.w	a5,a5
    80003cc8:	00779793          	slli	a5,a5,0x7
    80003ccc:	00004517          	auipc	a0,0x4
    80003cd0:	2c450513          	addi	a0,a0,708 # 80007f90 <cpus>
    80003cd4:	00f50533          	add	a0,a0,a5
    80003cd8:	01010113          	addi	sp,sp,16
    80003cdc:	00008067          	ret

0000000080003ce0 <userinit>:
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00813423          	sd	s0,8(sp)
    80003ce8:	01010413          	addi	s0,sp,16
    80003cec:	00813403          	ld	s0,8(sp)
    80003cf0:	01010113          	addi	sp,sp,16
    80003cf4:	fffff317          	auipc	t1,0xfffff
    80003cf8:	f7030067          	jr	-144(t1) # 80002c64 <main>

0000000080003cfc <either_copyout>:
    80003cfc:	ff010113          	addi	sp,sp,-16
    80003d00:	00813023          	sd	s0,0(sp)
    80003d04:	00113423          	sd	ra,8(sp)
    80003d08:	01010413          	addi	s0,sp,16
    80003d0c:	02051663          	bnez	a0,80003d38 <either_copyout+0x3c>
    80003d10:	00058513          	mv	a0,a1
    80003d14:	00060593          	mv	a1,a2
    80003d18:	0006861b          	sext.w	a2,a3
    80003d1c:	00002097          	auipc	ra,0x2
    80003d20:	c58080e7          	jalr	-936(ra) # 80005974 <__memmove>
    80003d24:	00813083          	ld	ra,8(sp)
    80003d28:	00013403          	ld	s0,0(sp)
    80003d2c:	00000513          	li	a0,0
    80003d30:	01010113          	addi	sp,sp,16
    80003d34:	00008067          	ret
    80003d38:	00002517          	auipc	a0,0x2
    80003d3c:	45050513          	addi	a0,a0,1104 # 80006188 <CONSOLE_STATUS+0x178>
    80003d40:	00001097          	auipc	ra,0x1
    80003d44:	92c080e7          	jalr	-1748(ra) # 8000466c <panic>

0000000080003d48 <either_copyin>:
    80003d48:	ff010113          	addi	sp,sp,-16
    80003d4c:	00813023          	sd	s0,0(sp)
    80003d50:	00113423          	sd	ra,8(sp)
    80003d54:	01010413          	addi	s0,sp,16
    80003d58:	02059463          	bnez	a1,80003d80 <either_copyin+0x38>
    80003d5c:	00060593          	mv	a1,a2
    80003d60:	0006861b          	sext.w	a2,a3
    80003d64:	00002097          	auipc	ra,0x2
    80003d68:	c10080e7          	jalr	-1008(ra) # 80005974 <__memmove>
    80003d6c:	00813083          	ld	ra,8(sp)
    80003d70:	00013403          	ld	s0,0(sp)
    80003d74:	00000513          	li	a0,0
    80003d78:	01010113          	addi	sp,sp,16
    80003d7c:	00008067          	ret
    80003d80:	00002517          	auipc	a0,0x2
    80003d84:	43050513          	addi	a0,a0,1072 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	8e4080e7          	jalr	-1820(ra) # 8000466c <panic>

0000000080003d90 <trapinit>:
    80003d90:	ff010113          	addi	sp,sp,-16
    80003d94:	00813423          	sd	s0,8(sp)
    80003d98:	01010413          	addi	s0,sp,16
    80003d9c:	00813403          	ld	s0,8(sp)
    80003da0:	00002597          	auipc	a1,0x2
    80003da4:	43858593          	addi	a1,a1,1080 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80003da8:	00004517          	auipc	a0,0x4
    80003dac:	26850513          	addi	a0,a0,616 # 80008010 <tickslock>
    80003db0:	01010113          	addi	sp,sp,16
    80003db4:	00001317          	auipc	t1,0x1
    80003db8:	5c430067          	jr	1476(t1) # 80005378 <initlock>

0000000080003dbc <trapinithart>:
    80003dbc:	ff010113          	addi	sp,sp,-16
    80003dc0:	00813423          	sd	s0,8(sp)
    80003dc4:	01010413          	addi	s0,sp,16
    80003dc8:	00000797          	auipc	a5,0x0
    80003dcc:	2f878793          	addi	a5,a5,760 # 800040c0 <kernelvec>
    80003dd0:	10579073          	csrw	stvec,a5
    80003dd4:	00813403          	ld	s0,8(sp)
    80003dd8:	01010113          	addi	sp,sp,16
    80003ddc:	00008067          	ret

0000000080003de0 <usertrap>:
    80003de0:	ff010113          	addi	sp,sp,-16
    80003de4:	00813423          	sd	s0,8(sp)
    80003de8:	01010413          	addi	s0,sp,16
    80003dec:	00813403          	ld	s0,8(sp)
    80003df0:	01010113          	addi	sp,sp,16
    80003df4:	00008067          	ret

0000000080003df8 <usertrapret>:
    80003df8:	ff010113          	addi	sp,sp,-16
    80003dfc:	00813423          	sd	s0,8(sp)
    80003e00:	01010413          	addi	s0,sp,16
    80003e04:	00813403          	ld	s0,8(sp)
    80003e08:	01010113          	addi	sp,sp,16
    80003e0c:	00008067          	ret

0000000080003e10 <kerneltrap>:
    80003e10:	fe010113          	addi	sp,sp,-32
    80003e14:	00813823          	sd	s0,16(sp)
    80003e18:	00113c23          	sd	ra,24(sp)
    80003e1c:	00913423          	sd	s1,8(sp)
    80003e20:	02010413          	addi	s0,sp,32
    80003e24:	142025f3          	csrr	a1,scause
    80003e28:	100027f3          	csrr	a5,sstatus
    80003e2c:	0027f793          	andi	a5,a5,2
    80003e30:	10079c63          	bnez	a5,80003f48 <kerneltrap+0x138>
    80003e34:	142027f3          	csrr	a5,scause
    80003e38:	0207ce63          	bltz	a5,80003e74 <kerneltrap+0x64>
    80003e3c:	00002517          	auipc	a0,0x2
    80003e40:	3e450513          	addi	a0,a0,996 # 80006220 <CONSOLE_STATUS+0x210>
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	884080e7          	jalr	-1916(ra) # 800046c8 <__printf>
    80003e4c:	141025f3          	csrr	a1,sepc
    80003e50:	14302673          	csrr	a2,stval
    80003e54:	00002517          	auipc	a0,0x2
    80003e58:	3dc50513          	addi	a0,a0,988 # 80006230 <CONSOLE_STATUS+0x220>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	86c080e7          	jalr	-1940(ra) # 800046c8 <__printf>
    80003e64:	00002517          	auipc	a0,0x2
    80003e68:	3e450513          	addi	a0,a0,996 # 80006248 <CONSOLE_STATUS+0x238>
    80003e6c:	00001097          	auipc	ra,0x1
    80003e70:	800080e7          	jalr	-2048(ra) # 8000466c <panic>
    80003e74:	0ff7f713          	andi	a4,a5,255
    80003e78:	00900693          	li	a3,9
    80003e7c:	04d70063          	beq	a4,a3,80003ebc <kerneltrap+0xac>
    80003e80:	fff00713          	li	a4,-1
    80003e84:	03f71713          	slli	a4,a4,0x3f
    80003e88:	00170713          	addi	a4,a4,1
    80003e8c:	fae798e3          	bne	a5,a4,80003e3c <kerneltrap+0x2c>
    80003e90:	00000097          	auipc	ra,0x0
    80003e94:	e00080e7          	jalr	-512(ra) # 80003c90 <cpuid>
    80003e98:	06050663          	beqz	a0,80003f04 <kerneltrap+0xf4>
    80003e9c:	144027f3          	csrr	a5,sip
    80003ea0:	ffd7f793          	andi	a5,a5,-3
    80003ea4:	14479073          	csrw	sip,a5
    80003ea8:	01813083          	ld	ra,24(sp)
    80003eac:	01013403          	ld	s0,16(sp)
    80003eb0:	00813483          	ld	s1,8(sp)
    80003eb4:	02010113          	addi	sp,sp,32
    80003eb8:	00008067          	ret
    80003ebc:	00000097          	auipc	ra,0x0
    80003ec0:	3c8080e7          	jalr	968(ra) # 80004284 <plic_claim>
    80003ec4:	00a00793          	li	a5,10
    80003ec8:	00050493          	mv	s1,a0
    80003ecc:	06f50863          	beq	a0,a5,80003f3c <kerneltrap+0x12c>
    80003ed0:	fc050ce3          	beqz	a0,80003ea8 <kerneltrap+0x98>
    80003ed4:	00050593          	mv	a1,a0
    80003ed8:	00002517          	auipc	a0,0x2
    80003edc:	32850513          	addi	a0,a0,808 # 80006200 <CONSOLE_STATUS+0x1f0>
    80003ee0:	00000097          	auipc	ra,0x0
    80003ee4:	7e8080e7          	jalr	2024(ra) # 800046c8 <__printf>
    80003ee8:	01013403          	ld	s0,16(sp)
    80003eec:	01813083          	ld	ra,24(sp)
    80003ef0:	00048513          	mv	a0,s1
    80003ef4:	00813483          	ld	s1,8(sp)
    80003ef8:	02010113          	addi	sp,sp,32
    80003efc:	00000317          	auipc	t1,0x0
    80003f00:	3c030067          	jr	960(t1) # 800042bc <plic_complete>
    80003f04:	00004517          	auipc	a0,0x4
    80003f08:	10c50513          	addi	a0,a0,268 # 80008010 <tickslock>
    80003f0c:	00001097          	auipc	ra,0x1
    80003f10:	490080e7          	jalr	1168(ra) # 8000539c <acquire>
    80003f14:	00003717          	auipc	a4,0x3
    80003f18:	fd070713          	addi	a4,a4,-48 # 80006ee4 <ticks>
    80003f1c:	00072783          	lw	a5,0(a4)
    80003f20:	00004517          	auipc	a0,0x4
    80003f24:	0f050513          	addi	a0,a0,240 # 80008010 <tickslock>
    80003f28:	0017879b          	addiw	a5,a5,1
    80003f2c:	00f72023          	sw	a5,0(a4)
    80003f30:	00001097          	auipc	ra,0x1
    80003f34:	538080e7          	jalr	1336(ra) # 80005468 <release>
    80003f38:	f65ff06f          	j	80003e9c <kerneltrap+0x8c>
    80003f3c:	00001097          	auipc	ra,0x1
    80003f40:	094080e7          	jalr	148(ra) # 80004fd0 <uartintr>
    80003f44:	fa5ff06f          	j	80003ee8 <kerneltrap+0xd8>
    80003f48:	00002517          	auipc	a0,0x2
    80003f4c:	29850513          	addi	a0,a0,664 # 800061e0 <CONSOLE_STATUS+0x1d0>
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	71c080e7          	jalr	1820(ra) # 8000466c <panic>

0000000080003f58 <clockintr>:
    80003f58:	fe010113          	addi	sp,sp,-32
    80003f5c:	00813823          	sd	s0,16(sp)
    80003f60:	00913423          	sd	s1,8(sp)
    80003f64:	00113c23          	sd	ra,24(sp)
    80003f68:	02010413          	addi	s0,sp,32
    80003f6c:	00004497          	auipc	s1,0x4
    80003f70:	0a448493          	addi	s1,s1,164 # 80008010 <tickslock>
    80003f74:	00048513          	mv	a0,s1
    80003f78:	00001097          	auipc	ra,0x1
    80003f7c:	424080e7          	jalr	1060(ra) # 8000539c <acquire>
    80003f80:	00003717          	auipc	a4,0x3
    80003f84:	f6470713          	addi	a4,a4,-156 # 80006ee4 <ticks>
    80003f88:	00072783          	lw	a5,0(a4)
    80003f8c:	01013403          	ld	s0,16(sp)
    80003f90:	01813083          	ld	ra,24(sp)
    80003f94:	00048513          	mv	a0,s1
    80003f98:	0017879b          	addiw	a5,a5,1
    80003f9c:	00813483          	ld	s1,8(sp)
    80003fa0:	00f72023          	sw	a5,0(a4)
    80003fa4:	02010113          	addi	sp,sp,32
    80003fa8:	00001317          	auipc	t1,0x1
    80003fac:	4c030067          	jr	1216(t1) # 80005468 <release>

0000000080003fb0 <devintr>:
    80003fb0:	142027f3          	csrr	a5,scause
    80003fb4:	00000513          	li	a0,0
    80003fb8:	0007c463          	bltz	a5,80003fc0 <devintr+0x10>
    80003fbc:	00008067          	ret
    80003fc0:	fe010113          	addi	sp,sp,-32
    80003fc4:	00813823          	sd	s0,16(sp)
    80003fc8:	00113c23          	sd	ra,24(sp)
    80003fcc:	00913423          	sd	s1,8(sp)
    80003fd0:	02010413          	addi	s0,sp,32
    80003fd4:	0ff7f713          	andi	a4,a5,255
    80003fd8:	00900693          	li	a3,9
    80003fdc:	04d70c63          	beq	a4,a3,80004034 <devintr+0x84>
    80003fe0:	fff00713          	li	a4,-1
    80003fe4:	03f71713          	slli	a4,a4,0x3f
    80003fe8:	00170713          	addi	a4,a4,1
    80003fec:	00e78c63          	beq	a5,a4,80004004 <devintr+0x54>
    80003ff0:	01813083          	ld	ra,24(sp)
    80003ff4:	01013403          	ld	s0,16(sp)
    80003ff8:	00813483          	ld	s1,8(sp)
    80003ffc:	02010113          	addi	sp,sp,32
    80004000:	00008067          	ret
    80004004:	00000097          	auipc	ra,0x0
    80004008:	c8c080e7          	jalr	-884(ra) # 80003c90 <cpuid>
    8000400c:	06050663          	beqz	a0,80004078 <devintr+0xc8>
    80004010:	144027f3          	csrr	a5,sip
    80004014:	ffd7f793          	andi	a5,a5,-3
    80004018:	14479073          	csrw	sip,a5
    8000401c:	01813083          	ld	ra,24(sp)
    80004020:	01013403          	ld	s0,16(sp)
    80004024:	00813483          	ld	s1,8(sp)
    80004028:	00200513          	li	a0,2
    8000402c:	02010113          	addi	sp,sp,32
    80004030:	00008067          	ret
    80004034:	00000097          	auipc	ra,0x0
    80004038:	250080e7          	jalr	592(ra) # 80004284 <plic_claim>
    8000403c:	00a00793          	li	a5,10
    80004040:	00050493          	mv	s1,a0
    80004044:	06f50663          	beq	a0,a5,800040b0 <devintr+0x100>
    80004048:	00100513          	li	a0,1
    8000404c:	fa0482e3          	beqz	s1,80003ff0 <devintr+0x40>
    80004050:	00048593          	mv	a1,s1
    80004054:	00002517          	auipc	a0,0x2
    80004058:	1ac50513          	addi	a0,a0,428 # 80006200 <CONSOLE_STATUS+0x1f0>
    8000405c:	00000097          	auipc	ra,0x0
    80004060:	66c080e7          	jalr	1644(ra) # 800046c8 <__printf>
    80004064:	00048513          	mv	a0,s1
    80004068:	00000097          	auipc	ra,0x0
    8000406c:	254080e7          	jalr	596(ra) # 800042bc <plic_complete>
    80004070:	00100513          	li	a0,1
    80004074:	f7dff06f          	j	80003ff0 <devintr+0x40>
    80004078:	00004517          	auipc	a0,0x4
    8000407c:	f9850513          	addi	a0,a0,-104 # 80008010 <tickslock>
    80004080:	00001097          	auipc	ra,0x1
    80004084:	31c080e7          	jalr	796(ra) # 8000539c <acquire>
    80004088:	00003717          	auipc	a4,0x3
    8000408c:	e5c70713          	addi	a4,a4,-420 # 80006ee4 <ticks>
    80004090:	00072783          	lw	a5,0(a4)
    80004094:	00004517          	auipc	a0,0x4
    80004098:	f7c50513          	addi	a0,a0,-132 # 80008010 <tickslock>
    8000409c:	0017879b          	addiw	a5,a5,1
    800040a0:	00f72023          	sw	a5,0(a4)
    800040a4:	00001097          	auipc	ra,0x1
    800040a8:	3c4080e7          	jalr	964(ra) # 80005468 <release>
    800040ac:	f65ff06f          	j	80004010 <devintr+0x60>
    800040b0:	00001097          	auipc	ra,0x1
    800040b4:	f20080e7          	jalr	-224(ra) # 80004fd0 <uartintr>
    800040b8:	fadff06f          	j	80004064 <devintr+0xb4>
    800040bc:	0000                	unimp
	...

00000000800040c0 <kernelvec>:
    800040c0:	f0010113          	addi	sp,sp,-256
    800040c4:	00113023          	sd	ra,0(sp)
    800040c8:	00213423          	sd	sp,8(sp)
    800040cc:	00313823          	sd	gp,16(sp)
    800040d0:	00413c23          	sd	tp,24(sp)
    800040d4:	02513023          	sd	t0,32(sp)
    800040d8:	02613423          	sd	t1,40(sp)
    800040dc:	02713823          	sd	t2,48(sp)
    800040e0:	02813c23          	sd	s0,56(sp)
    800040e4:	04913023          	sd	s1,64(sp)
    800040e8:	04a13423          	sd	a0,72(sp)
    800040ec:	04b13823          	sd	a1,80(sp)
    800040f0:	04c13c23          	sd	a2,88(sp)
    800040f4:	06d13023          	sd	a3,96(sp)
    800040f8:	06e13423          	sd	a4,104(sp)
    800040fc:	06f13823          	sd	a5,112(sp)
    80004100:	07013c23          	sd	a6,120(sp)
    80004104:	09113023          	sd	a7,128(sp)
    80004108:	09213423          	sd	s2,136(sp)
    8000410c:	09313823          	sd	s3,144(sp)
    80004110:	09413c23          	sd	s4,152(sp)
    80004114:	0b513023          	sd	s5,160(sp)
    80004118:	0b613423          	sd	s6,168(sp)
    8000411c:	0b713823          	sd	s7,176(sp)
    80004120:	0b813c23          	sd	s8,184(sp)
    80004124:	0d913023          	sd	s9,192(sp)
    80004128:	0da13423          	sd	s10,200(sp)
    8000412c:	0db13823          	sd	s11,208(sp)
    80004130:	0dc13c23          	sd	t3,216(sp)
    80004134:	0fd13023          	sd	t4,224(sp)
    80004138:	0fe13423          	sd	t5,232(sp)
    8000413c:	0ff13823          	sd	t6,240(sp)
    80004140:	cd1ff0ef          	jal	ra,80003e10 <kerneltrap>
    80004144:	00013083          	ld	ra,0(sp)
    80004148:	00813103          	ld	sp,8(sp)
    8000414c:	01013183          	ld	gp,16(sp)
    80004150:	02013283          	ld	t0,32(sp)
    80004154:	02813303          	ld	t1,40(sp)
    80004158:	03013383          	ld	t2,48(sp)
    8000415c:	03813403          	ld	s0,56(sp)
    80004160:	04013483          	ld	s1,64(sp)
    80004164:	04813503          	ld	a0,72(sp)
    80004168:	05013583          	ld	a1,80(sp)
    8000416c:	05813603          	ld	a2,88(sp)
    80004170:	06013683          	ld	a3,96(sp)
    80004174:	06813703          	ld	a4,104(sp)
    80004178:	07013783          	ld	a5,112(sp)
    8000417c:	07813803          	ld	a6,120(sp)
    80004180:	08013883          	ld	a7,128(sp)
    80004184:	08813903          	ld	s2,136(sp)
    80004188:	09013983          	ld	s3,144(sp)
    8000418c:	09813a03          	ld	s4,152(sp)
    80004190:	0a013a83          	ld	s5,160(sp)
    80004194:	0a813b03          	ld	s6,168(sp)
    80004198:	0b013b83          	ld	s7,176(sp)
    8000419c:	0b813c03          	ld	s8,184(sp)
    800041a0:	0c013c83          	ld	s9,192(sp)
    800041a4:	0c813d03          	ld	s10,200(sp)
    800041a8:	0d013d83          	ld	s11,208(sp)
    800041ac:	0d813e03          	ld	t3,216(sp)
    800041b0:	0e013e83          	ld	t4,224(sp)
    800041b4:	0e813f03          	ld	t5,232(sp)
    800041b8:	0f013f83          	ld	t6,240(sp)
    800041bc:	10010113          	addi	sp,sp,256
    800041c0:	10200073          	sret
    800041c4:	00000013          	nop
    800041c8:	00000013          	nop
    800041cc:	00000013          	nop

00000000800041d0 <timervec>:
    800041d0:	34051573          	csrrw	a0,mscratch,a0
    800041d4:	00b53023          	sd	a1,0(a0)
    800041d8:	00c53423          	sd	a2,8(a0)
    800041dc:	00d53823          	sd	a3,16(a0)
    800041e0:	01853583          	ld	a1,24(a0)
    800041e4:	02053603          	ld	a2,32(a0)
    800041e8:	0005b683          	ld	a3,0(a1)
    800041ec:	00c686b3          	add	a3,a3,a2
    800041f0:	00d5b023          	sd	a3,0(a1)
    800041f4:	00200593          	li	a1,2
    800041f8:	14459073          	csrw	sip,a1
    800041fc:	01053683          	ld	a3,16(a0)
    80004200:	00853603          	ld	a2,8(a0)
    80004204:	00053583          	ld	a1,0(a0)
    80004208:	34051573          	csrrw	a0,mscratch,a0
    8000420c:	30200073          	mret

0000000080004210 <plicinit>:
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00813423          	sd	s0,8(sp)
    80004218:	01010413          	addi	s0,sp,16
    8000421c:	00813403          	ld	s0,8(sp)
    80004220:	0c0007b7          	lui	a5,0xc000
    80004224:	00100713          	li	a4,1
    80004228:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000422c:	00e7a223          	sw	a4,4(a5)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <plicinithart>:
    80004238:	ff010113          	addi	sp,sp,-16
    8000423c:	00813023          	sd	s0,0(sp)
    80004240:	00113423          	sd	ra,8(sp)
    80004244:	01010413          	addi	s0,sp,16
    80004248:	00000097          	auipc	ra,0x0
    8000424c:	a48080e7          	jalr	-1464(ra) # 80003c90 <cpuid>
    80004250:	0085171b          	slliw	a4,a0,0x8
    80004254:	0c0027b7          	lui	a5,0xc002
    80004258:	00e787b3          	add	a5,a5,a4
    8000425c:	40200713          	li	a4,1026
    80004260:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004264:	00813083          	ld	ra,8(sp)
    80004268:	00013403          	ld	s0,0(sp)
    8000426c:	00d5151b          	slliw	a0,a0,0xd
    80004270:	0c2017b7          	lui	a5,0xc201
    80004274:	00a78533          	add	a0,a5,a0
    80004278:	00052023          	sw	zero,0(a0)
    8000427c:	01010113          	addi	sp,sp,16
    80004280:	00008067          	ret

0000000080004284 <plic_claim>:
    80004284:	ff010113          	addi	sp,sp,-16
    80004288:	00813023          	sd	s0,0(sp)
    8000428c:	00113423          	sd	ra,8(sp)
    80004290:	01010413          	addi	s0,sp,16
    80004294:	00000097          	auipc	ra,0x0
    80004298:	9fc080e7          	jalr	-1540(ra) # 80003c90 <cpuid>
    8000429c:	00813083          	ld	ra,8(sp)
    800042a0:	00013403          	ld	s0,0(sp)
    800042a4:	00d5151b          	slliw	a0,a0,0xd
    800042a8:	0c2017b7          	lui	a5,0xc201
    800042ac:	00a78533          	add	a0,a5,a0
    800042b0:	00452503          	lw	a0,4(a0)
    800042b4:	01010113          	addi	sp,sp,16
    800042b8:	00008067          	ret

00000000800042bc <plic_complete>:
    800042bc:	fe010113          	addi	sp,sp,-32
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00913423          	sd	s1,8(sp)
    800042c8:	00113c23          	sd	ra,24(sp)
    800042cc:	02010413          	addi	s0,sp,32
    800042d0:	00050493          	mv	s1,a0
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	9bc080e7          	jalr	-1604(ra) # 80003c90 <cpuid>
    800042dc:	01813083          	ld	ra,24(sp)
    800042e0:	01013403          	ld	s0,16(sp)
    800042e4:	00d5179b          	slliw	a5,a0,0xd
    800042e8:	0c201737          	lui	a4,0xc201
    800042ec:	00f707b3          	add	a5,a4,a5
    800042f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800042f4:	00813483          	ld	s1,8(sp)
    800042f8:	02010113          	addi	sp,sp,32
    800042fc:	00008067          	ret

0000000080004300 <consolewrite>:
    80004300:	fb010113          	addi	sp,sp,-80
    80004304:	04813023          	sd	s0,64(sp)
    80004308:	04113423          	sd	ra,72(sp)
    8000430c:	02913c23          	sd	s1,56(sp)
    80004310:	03213823          	sd	s2,48(sp)
    80004314:	03313423          	sd	s3,40(sp)
    80004318:	03413023          	sd	s4,32(sp)
    8000431c:	01513c23          	sd	s5,24(sp)
    80004320:	05010413          	addi	s0,sp,80
    80004324:	06c05c63          	blez	a2,8000439c <consolewrite+0x9c>
    80004328:	00060993          	mv	s3,a2
    8000432c:	00050a13          	mv	s4,a0
    80004330:	00058493          	mv	s1,a1
    80004334:	00000913          	li	s2,0
    80004338:	fff00a93          	li	s5,-1
    8000433c:	01c0006f          	j	80004358 <consolewrite+0x58>
    80004340:	fbf44503          	lbu	a0,-65(s0)
    80004344:	0019091b          	addiw	s2,s2,1
    80004348:	00148493          	addi	s1,s1,1
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	a9c080e7          	jalr	-1380(ra) # 80004de8 <uartputc>
    80004354:	03298063          	beq	s3,s2,80004374 <consolewrite+0x74>
    80004358:	00048613          	mv	a2,s1
    8000435c:	00100693          	li	a3,1
    80004360:	000a0593          	mv	a1,s4
    80004364:	fbf40513          	addi	a0,s0,-65
    80004368:	00000097          	auipc	ra,0x0
    8000436c:	9e0080e7          	jalr	-1568(ra) # 80003d48 <either_copyin>
    80004370:	fd5518e3          	bne	a0,s5,80004340 <consolewrite+0x40>
    80004374:	04813083          	ld	ra,72(sp)
    80004378:	04013403          	ld	s0,64(sp)
    8000437c:	03813483          	ld	s1,56(sp)
    80004380:	02813983          	ld	s3,40(sp)
    80004384:	02013a03          	ld	s4,32(sp)
    80004388:	01813a83          	ld	s5,24(sp)
    8000438c:	00090513          	mv	a0,s2
    80004390:	03013903          	ld	s2,48(sp)
    80004394:	05010113          	addi	sp,sp,80
    80004398:	00008067          	ret
    8000439c:	00000913          	li	s2,0
    800043a0:	fd5ff06f          	j	80004374 <consolewrite+0x74>

00000000800043a4 <consoleread>:
    800043a4:	f9010113          	addi	sp,sp,-112
    800043a8:	06813023          	sd	s0,96(sp)
    800043ac:	04913c23          	sd	s1,88(sp)
    800043b0:	05213823          	sd	s2,80(sp)
    800043b4:	05313423          	sd	s3,72(sp)
    800043b8:	05413023          	sd	s4,64(sp)
    800043bc:	03513c23          	sd	s5,56(sp)
    800043c0:	03613823          	sd	s6,48(sp)
    800043c4:	03713423          	sd	s7,40(sp)
    800043c8:	03813023          	sd	s8,32(sp)
    800043cc:	06113423          	sd	ra,104(sp)
    800043d0:	01913c23          	sd	s9,24(sp)
    800043d4:	07010413          	addi	s0,sp,112
    800043d8:	00060b93          	mv	s7,a2
    800043dc:	00050913          	mv	s2,a0
    800043e0:	00058c13          	mv	s8,a1
    800043e4:	00060b1b          	sext.w	s6,a2
    800043e8:	00004497          	auipc	s1,0x4
    800043ec:	c5048493          	addi	s1,s1,-944 # 80008038 <cons>
    800043f0:	00400993          	li	s3,4
    800043f4:	fff00a13          	li	s4,-1
    800043f8:	00a00a93          	li	s5,10
    800043fc:	05705e63          	blez	s7,80004458 <consoleread+0xb4>
    80004400:	09c4a703          	lw	a4,156(s1)
    80004404:	0984a783          	lw	a5,152(s1)
    80004408:	0007071b          	sext.w	a4,a4
    8000440c:	08e78463          	beq	a5,a4,80004494 <consoleread+0xf0>
    80004410:	07f7f713          	andi	a4,a5,127
    80004414:	00e48733          	add	a4,s1,a4
    80004418:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000441c:	0017869b          	addiw	a3,a5,1
    80004420:	08d4ac23          	sw	a3,152(s1)
    80004424:	00070c9b          	sext.w	s9,a4
    80004428:	0b370663          	beq	a4,s3,800044d4 <consoleread+0x130>
    8000442c:	00100693          	li	a3,1
    80004430:	f9f40613          	addi	a2,s0,-97
    80004434:	000c0593          	mv	a1,s8
    80004438:	00090513          	mv	a0,s2
    8000443c:	f8e40fa3          	sb	a4,-97(s0)
    80004440:	00000097          	auipc	ra,0x0
    80004444:	8bc080e7          	jalr	-1860(ra) # 80003cfc <either_copyout>
    80004448:	01450863          	beq	a0,s4,80004458 <consoleread+0xb4>
    8000444c:	001c0c13          	addi	s8,s8,1
    80004450:	fffb8b9b          	addiw	s7,s7,-1
    80004454:	fb5c94e3          	bne	s9,s5,800043fc <consoleread+0x58>
    80004458:	000b851b          	sext.w	a0,s7
    8000445c:	06813083          	ld	ra,104(sp)
    80004460:	06013403          	ld	s0,96(sp)
    80004464:	05813483          	ld	s1,88(sp)
    80004468:	05013903          	ld	s2,80(sp)
    8000446c:	04813983          	ld	s3,72(sp)
    80004470:	04013a03          	ld	s4,64(sp)
    80004474:	03813a83          	ld	s5,56(sp)
    80004478:	02813b83          	ld	s7,40(sp)
    8000447c:	02013c03          	ld	s8,32(sp)
    80004480:	01813c83          	ld	s9,24(sp)
    80004484:	40ab053b          	subw	a0,s6,a0
    80004488:	03013b03          	ld	s6,48(sp)
    8000448c:	07010113          	addi	sp,sp,112
    80004490:	00008067          	ret
    80004494:	00001097          	auipc	ra,0x1
    80004498:	1d8080e7          	jalr	472(ra) # 8000566c <push_on>
    8000449c:	0984a703          	lw	a4,152(s1)
    800044a0:	09c4a783          	lw	a5,156(s1)
    800044a4:	0007879b          	sext.w	a5,a5
    800044a8:	fef70ce3          	beq	a4,a5,800044a0 <consoleread+0xfc>
    800044ac:	00001097          	auipc	ra,0x1
    800044b0:	234080e7          	jalr	564(ra) # 800056e0 <pop_on>
    800044b4:	0984a783          	lw	a5,152(s1)
    800044b8:	07f7f713          	andi	a4,a5,127
    800044bc:	00e48733          	add	a4,s1,a4
    800044c0:	01874703          	lbu	a4,24(a4)
    800044c4:	0017869b          	addiw	a3,a5,1
    800044c8:	08d4ac23          	sw	a3,152(s1)
    800044cc:	00070c9b          	sext.w	s9,a4
    800044d0:	f5371ee3          	bne	a4,s3,8000442c <consoleread+0x88>
    800044d4:	000b851b          	sext.w	a0,s7
    800044d8:	f96bf2e3          	bgeu	s7,s6,8000445c <consoleread+0xb8>
    800044dc:	08f4ac23          	sw	a5,152(s1)
    800044e0:	f7dff06f          	j	8000445c <consoleread+0xb8>

00000000800044e4 <consputc>:
    800044e4:	10000793          	li	a5,256
    800044e8:	00f50663          	beq	a0,a5,800044f4 <consputc+0x10>
    800044ec:	00001317          	auipc	t1,0x1
    800044f0:	9f430067          	jr	-1548(t1) # 80004ee0 <uartputc_sync>
    800044f4:	ff010113          	addi	sp,sp,-16
    800044f8:	00113423          	sd	ra,8(sp)
    800044fc:	00813023          	sd	s0,0(sp)
    80004500:	01010413          	addi	s0,sp,16
    80004504:	00800513          	li	a0,8
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	9d8080e7          	jalr	-1576(ra) # 80004ee0 <uartputc_sync>
    80004510:	02000513          	li	a0,32
    80004514:	00001097          	auipc	ra,0x1
    80004518:	9cc080e7          	jalr	-1588(ra) # 80004ee0 <uartputc_sync>
    8000451c:	00013403          	ld	s0,0(sp)
    80004520:	00813083          	ld	ra,8(sp)
    80004524:	00800513          	li	a0,8
    80004528:	01010113          	addi	sp,sp,16
    8000452c:	00001317          	auipc	t1,0x1
    80004530:	9b430067          	jr	-1612(t1) # 80004ee0 <uartputc_sync>

0000000080004534 <consoleintr>:
    80004534:	fe010113          	addi	sp,sp,-32
    80004538:	00813823          	sd	s0,16(sp)
    8000453c:	00913423          	sd	s1,8(sp)
    80004540:	01213023          	sd	s2,0(sp)
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	02010413          	addi	s0,sp,32
    8000454c:	00004917          	auipc	s2,0x4
    80004550:	aec90913          	addi	s2,s2,-1300 # 80008038 <cons>
    80004554:	00050493          	mv	s1,a0
    80004558:	00090513          	mv	a0,s2
    8000455c:	00001097          	auipc	ra,0x1
    80004560:	e40080e7          	jalr	-448(ra) # 8000539c <acquire>
    80004564:	02048c63          	beqz	s1,8000459c <consoleintr+0x68>
    80004568:	0a092783          	lw	a5,160(s2)
    8000456c:	09892703          	lw	a4,152(s2)
    80004570:	07f00693          	li	a3,127
    80004574:	40e7873b          	subw	a4,a5,a4
    80004578:	02e6e263          	bltu	a3,a4,8000459c <consoleintr+0x68>
    8000457c:	00d00713          	li	a4,13
    80004580:	04e48063          	beq	s1,a4,800045c0 <consoleintr+0x8c>
    80004584:	07f7f713          	andi	a4,a5,127
    80004588:	00e90733          	add	a4,s2,a4
    8000458c:	0017879b          	addiw	a5,a5,1
    80004590:	0af92023          	sw	a5,160(s2)
    80004594:	00970c23          	sb	s1,24(a4)
    80004598:	08f92e23          	sw	a5,156(s2)
    8000459c:	01013403          	ld	s0,16(sp)
    800045a0:	01813083          	ld	ra,24(sp)
    800045a4:	00813483          	ld	s1,8(sp)
    800045a8:	00013903          	ld	s2,0(sp)
    800045ac:	00004517          	auipc	a0,0x4
    800045b0:	a8c50513          	addi	a0,a0,-1396 # 80008038 <cons>
    800045b4:	02010113          	addi	sp,sp,32
    800045b8:	00001317          	auipc	t1,0x1
    800045bc:	eb030067          	jr	-336(t1) # 80005468 <release>
    800045c0:	00a00493          	li	s1,10
    800045c4:	fc1ff06f          	j	80004584 <consoleintr+0x50>

00000000800045c8 <consoleinit>:
    800045c8:	fe010113          	addi	sp,sp,-32
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	00813823          	sd	s0,16(sp)
    800045d4:	00913423          	sd	s1,8(sp)
    800045d8:	02010413          	addi	s0,sp,32
    800045dc:	00004497          	auipc	s1,0x4
    800045e0:	a5c48493          	addi	s1,s1,-1444 # 80008038 <cons>
    800045e4:	00048513          	mv	a0,s1
    800045e8:	00002597          	auipc	a1,0x2
    800045ec:	c7058593          	addi	a1,a1,-912 # 80006258 <CONSOLE_STATUS+0x248>
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	d88080e7          	jalr	-632(ra) # 80005378 <initlock>
    800045f8:	00000097          	auipc	ra,0x0
    800045fc:	7ac080e7          	jalr	1964(ra) # 80004da4 <uartinit>
    80004600:	01813083          	ld	ra,24(sp)
    80004604:	01013403          	ld	s0,16(sp)
    80004608:	00000797          	auipc	a5,0x0
    8000460c:	d9c78793          	addi	a5,a5,-612 # 800043a4 <consoleread>
    80004610:	0af4bc23          	sd	a5,184(s1)
    80004614:	00000797          	auipc	a5,0x0
    80004618:	cec78793          	addi	a5,a5,-788 # 80004300 <consolewrite>
    8000461c:	0cf4b023          	sd	a5,192(s1)
    80004620:	00813483          	ld	s1,8(sp)
    80004624:	02010113          	addi	sp,sp,32
    80004628:	00008067          	ret

000000008000462c <console_read>:
    8000462c:	ff010113          	addi	sp,sp,-16
    80004630:	00813423          	sd	s0,8(sp)
    80004634:	01010413          	addi	s0,sp,16
    80004638:	00813403          	ld	s0,8(sp)
    8000463c:	00004317          	auipc	t1,0x4
    80004640:	ab433303          	ld	t1,-1356(t1) # 800080f0 <devsw+0x10>
    80004644:	01010113          	addi	sp,sp,16
    80004648:	00030067          	jr	t1

000000008000464c <console_write>:
    8000464c:	ff010113          	addi	sp,sp,-16
    80004650:	00813423          	sd	s0,8(sp)
    80004654:	01010413          	addi	s0,sp,16
    80004658:	00813403          	ld	s0,8(sp)
    8000465c:	00004317          	auipc	t1,0x4
    80004660:	a9c33303          	ld	t1,-1380(t1) # 800080f8 <devsw+0x18>
    80004664:	01010113          	addi	sp,sp,16
    80004668:	00030067          	jr	t1

000000008000466c <panic>:
    8000466c:	fe010113          	addi	sp,sp,-32
    80004670:	00113c23          	sd	ra,24(sp)
    80004674:	00813823          	sd	s0,16(sp)
    80004678:	00913423          	sd	s1,8(sp)
    8000467c:	02010413          	addi	s0,sp,32
    80004680:	00050493          	mv	s1,a0
    80004684:	00002517          	auipc	a0,0x2
    80004688:	bdc50513          	addi	a0,a0,-1060 # 80006260 <CONSOLE_STATUS+0x250>
    8000468c:	00004797          	auipc	a5,0x4
    80004690:	b007a623          	sw	zero,-1268(a5) # 80008198 <pr+0x18>
    80004694:	00000097          	auipc	ra,0x0
    80004698:	034080e7          	jalr	52(ra) # 800046c8 <__printf>
    8000469c:	00048513          	mv	a0,s1
    800046a0:	00000097          	auipc	ra,0x0
    800046a4:	028080e7          	jalr	40(ra) # 800046c8 <__printf>
    800046a8:	00002517          	auipc	a0,0x2
    800046ac:	b9850513          	addi	a0,a0,-1128 # 80006240 <CONSOLE_STATUS+0x230>
    800046b0:	00000097          	auipc	ra,0x0
    800046b4:	018080e7          	jalr	24(ra) # 800046c8 <__printf>
    800046b8:	00100793          	li	a5,1
    800046bc:	00003717          	auipc	a4,0x3
    800046c0:	82f72623          	sw	a5,-2004(a4) # 80006ee8 <panicked>
    800046c4:	0000006f          	j	800046c4 <panic+0x58>

00000000800046c8 <__printf>:
    800046c8:	f3010113          	addi	sp,sp,-208
    800046cc:	08813023          	sd	s0,128(sp)
    800046d0:	07313423          	sd	s3,104(sp)
    800046d4:	09010413          	addi	s0,sp,144
    800046d8:	05813023          	sd	s8,64(sp)
    800046dc:	08113423          	sd	ra,136(sp)
    800046e0:	06913c23          	sd	s1,120(sp)
    800046e4:	07213823          	sd	s2,112(sp)
    800046e8:	07413023          	sd	s4,96(sp)
    800046ec:	05513c23          	sd	s5,88(sp)
    800046f0:	05613823          	sd	s6,80(sp)
    800046f4:	05713423          	sd	s7,72(sp)
    800046f8:	03913c23          	sd	s9,56(sp)
    800046fc:	03a13823          	sd	s10,48(sp)
    80004700:	03b13423          	sd	s11,40(sp)
    80004704:	00004317          	auipc	t1,0x4
    80004708:	a7c30313          	addi	t1,t1,-1412 # 80008180 <pr>
    8000470c:	01832c03          	lw	s8,24(t1)
    80004710:	00b43423          	sd	a1,8(s0)
    80004714:	00c43823          	sd	a2,16(s0)
    80004718:	00d43c23          	sd	a3,24(s0)
    8000471c:	02e43023          	sd	a4,32(s0)
    80004720:	02f43423          	sd	a5,40(s0)
    80004724:	03043823          	sd	a6,48(s0)
    80004728:	03143c23          	sd	a7,56(s0)
    8000472c:	00050993          	mv	s3,a0
    80004730:	4a0c1663          	bnez	s8,80004bdc <__printf+0x514>
    80004734:	60098c63          	beqz	s3,80004d4c <__printf+0x684>
    80004738:	0009c503          	lbu	a0,0(s3)
    8000473c:	00840793          	addi	a5,s0,8
    80004740:	f6f43c23          	sd	a5,-136(s0)
    80004744:	00000493          	li	s1,0
    80004748:	22050063          	beqz	a0,80004968 <__printf+0x2a0>
    8000474c:	00002a37          	lui	s4,0x2
    80004750:	00018ab7          	lui	s5,0x18
    80004754:	000f4b37          	lui	s6,0xf4
    80004758:	00989bb7          	lui	s7,0x989
    8000475c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004760:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004764:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004768:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000476c:	00148c9b          	addiw	s9,s1,1
    80004770:	02500793          	li	a5,37
    80004774:	01998933          	add	s2,s3,s9
    80004778:	38f51263          	bne	a0,a5,80004afc <__printf+0x434>
    8000477c:	00094783          	lbu	a5,0(s2)
    80004780:	00078c9b          	sext.w	s9,a5
    80004784:	1e078263          	beqz	a5,80004968 <__printf+0x2a0>
    80004788:	0024849b          	addiw	s1,s1,2
    8000478c:	07000713          	li	a4,112
    80004790:	00998933          	add	s2,s3,s1
    80004794:	38e78a63          	beq	a5,a4,80004b28 <__printf+0x460>
    80004798:	20f76863          	bltu	a4,a5,800049a8 <__printf+0x2e0>
    8000479c:	42a78863          	beq	a5,a0,80004bcc <__printf+0x504>
    800047a0:	06400713          	li	a4,100
    800047a4:	40e79663          	bne	a5,a4,80004bb0 <__printf+0x4e8>
    800047a8:	f7843783          	ld	a5,-136(s0)
    800047ac:	0007a603          	lw	a2,0(a5)
    800047b0:	00878793          	addi	a5,a5,8
    800047b4:	f6f43c23          	sd	a5,-136(s0)
    800047b8:	42064a63          	bltz	a2,80004bec <__printf+0x524>
    800047bc:	00a00713          	li	a4,10
    800047c0:	02e677bb          	remuw	a5,a2,a4
    800047c4:	00002d97          	auipc	s11,0x2
    800047c8:	ac4d8d93          	addi	s11,s11,-1340 # 80006288 <digits>
    800047cc:	00900593          	li	a1,9
    800047d0:	0006051b          	sext.w	a0,a2
    800047d4:	00000c93          	li	s9,0
    800047d8:	02079793          	slli	a5,a5,0x20
    800047dc:	0207d793          	srli	a5,a5,0x20
    800047e0:	00fd87b3          	add	a5,s11,a5
    800047e4:	0007c783          	lbu	a5,0(a5)
    800047e8:	02e656bb          	divuw	a3,a2,a4
    800047ec:	f8f40023          	sb	a5,-128(s0)
    800047f0:	14c5d863          	bge	a1,a2,80004940 <__printf+0x278>
    800047f4:	06300593          	li	a1,99
    800047f8:	00100c93          	li	s9,1
    800047fc:	02e6f7bb          	remuw	a5,a3,a4
    80004800:	02079793          	slli	a5,a5,0x20
    80004804:	0207d793          	srli	a5,a5,0x20
    80004808:	00fd87b3          	add	a5,s11,a5
    8000480c:	0007c783          	lbu	a5,0(a5)
    80004810:	02e6d73b          	divuw	a4,a3,a4
    80004814:	f8f400a3          	sb	a5,-127(s0)
    80004818:	12a5f463          	bgeu	a1,a0,80004940 <__printf+0x278>
    8000481c:	00a00693          	li	a3,10
    80004820:	00900593          	li	a1,9
    80004824:	02d777bb          	remuw	a5,a4,a3
    80004828:	02079793          	slli	a5,a5,0x20
    8000482c:	0207d793          	srli	a5,a5,0x20
    80004830:	00fd87b3          	add	a5,s11,a5
    80004834:	0007c503          	lbu	a0,0(a5)
    80004838:	02d757bb          	divuw	a5,a4,a3
    8000483c:	f8a40123          	sb	a0,-126(s0)
    80004840:	48e5f263          	bgeu	a1,a4,80004cc4 <__printf+0x5fc>
    80004844:	06300513          	li	a0,99
    80004848:	02d7f5bb          	remuw	a1,a5,a3
    8000484c:	02059593          	slli	a1,a1,0x20
    80004850:	0205d593          	srli	a1,a1,0x20
    80004854:	00bd85b3          	add	a1,s11,a1
    80004858:	0005c583          	lbu	a1,0(a1)
    8000485c:	02d7d7bb          	divuw	a5,a5,a3
    80004860:	f8b401a3          	sb	a1,-125(s0)
    80004864:	48e57263          	bgeu	a0,a4,80004ce8 <__printf+0x620>
    80004868:	3e700513          	li	a0,999
    8000486c:	02d7f5bb          	remuw	a1,a5,a3
    80004870:	02059593          	slli	a1,a1,0x20
    80004874:	0205d593          	srli	a1,a1,0x20
    80004878:	00bd85b3          	add	a1,s11,a1
    8000487c:	0005c583          	lbu	a1,0(a1)
    80004880:	02d7d7bb          	divuw	a5,a5,a3
    80004884:	f8b40223          	sb	a1,-124(s0)
    80004888:	46e57663          	bgeu	a0,a4,80004cf4 <__printf+0x62c>
    8000488c:	02d7f5bb          	remuw	a1,a5,a3
    80004890:	02059593          	slli	a1,a1,0x20
    80004894:	0205d593          	srli	a1,a1,0x20
    80004898:	00bd85b3          	add	a1,s11,a1
    8000489c:	0005c583          	lbu	a1,0(a1)
    800048a0:	02d7d7bb          	divuw	a5,a5,a3
    800048a4:	f8b402a3          	sb	a1,-123(s0)
    800048a8:	46ea7863          	bgeu	s4,a4,80004d18 <__printf+0x650>
    800048ac:	02d7f5bb          	remuw	a1,a5,a3
    800048b0:	02059593          	slli	a1,a1,0x20
    800048b4:	0205d593          	srli	a1,a1,0x20
    800048b8:	00bd85b3          	add	a1,s11,a1
    800048bc:	0005c583          	lbu	a1,0(a1)
    800048c0:	02d7d7bb          	divuw	a5,a5,a3
    800048c4:	f8b40323          	sb	a1,-122(s0)
    800048c8:	3eeaf863          	bgeu	s5,a4,80004cb8 <__printf+0x5f0>
    800048cc:	02d7f5bb          	remuw	a1,a5,a3
    800048d0:	02059593          	slli	a1,a1,0x20
    800048d4:	0205d593          	srli	a1,a1,0x20
    800048d8:	00bd85b3          	add	a1,s11,a1
    800048dc:	0005c583          	lbu	a1,0(a1)
    800048e0:	02d7d7bb          	divuw	a5,a5,a3
    800048e4:	f8b403a3          	sb	a1,-121(s0)
    800048e8:	42eb7e63          	bgeu	s6,a4,80004d24 <__printf+0x65c>
    800048ec:	02d7f5bb          	remuw	a1,a5,a3
    800048f0:	02059593          	slli	a1,a1,0x20
    800048f4:	0205d593          	srli	a1,a1,0x20
    800048f8:	00bd85b3          	add	a1,s11,a1
    800048fc:	0005c583          	lbu	a1,0(a1)
    80004900:	02d7d7bb          	divuw	a5,a5,a3
    80004904:	f8b40423          	sb	a1,-120(s0)
    80004908:	42ebfc63          	bgeu	s7,a4,80004d40 <__printf+0x678>
    8000490c:	02079793          	slli	a5,a5,0x20
    80004910:	0207d793          	srli	a5,a5,0x20
    80004914:	00fd8db3          	add	s11,s11,a5
    80004918:	000dc703          	lbu	a4,0(s11)
    8000491c:	00a00793          	li	a5,10
    80004920:	00900c93          	li	s9,9
    80004924:	f8e404a3          	sb	a4,-119(s0)
    80004928:	00065c63          	bgez	a2,80004940 <__printf+0x278>
    8000492c:	f9040713          	addi	a4,s0,-112
    80004930:	00f70733          	add	a4,a4,a5
    80004934:	02d00693          	li	a3,45
    80004938:	fed70823          	sb	a3,-16(a4)
    8000493c:	00078c93          	mv	s9,a5
    80004940:	f8040793          	addi	a5,s0,-128
    80004944:	01978cb3          	add	s9,a5,s9
    80004948:	f7f40d13          	addi	s10,s0,-129
    8000494c:	000cc503          	lbu	a0,0(s9)
    80004950:	fffc8c93          	addi	s9,s9,-1
    80004954:	00000097          	auipc	ra,0x0
    80004958:	b90080e7          	jalr	-1136(ra) # 800044e4 <consputc>
    8000495c:	ffac98e3          	bne	s9,s10,8000494c <__printf+0x284>
    80004960:	00094503          	lbu	a0,0(s2)
    80004964:	e00514e3          	bnez	a0,8000476c <__printf+0xa4>
    80004968:	1a0c1663          	bnez	s8,80004b14 <__printf+0x44c>
    8000496c:	08813083          	ld	ra,136(sp)
    80004970:	08013403          	ld	s0,128(sp)
    80004974:	07813483          	ld	s1,120(sp)
    80004978:	07013903          	ld	s2,112(sp)
    8000497c:	06813983          	ld	s3,104(sp)
    80004980:	06013a03          	ld	s4,96(sp)
    80004984:	05813a83          	ld	s5,88(sp)
    80004988:	05013b03          	ld	s6,80(sp)
    8000498c:	04813b83          	ld	s7,72(sp)
    80004990:	04013c03          	ld	s8,64(sp)
    80004994:	03813c83          	ld	s9,56(sp)
    80004998:	03013d03          	ld	s10,48(sp)
    8000499c:	02813d83          	ld	s11,40(sp)
    800049a0:	0d010113          	addi	sp,sp,208
    800049a4:	00008067          	ret
    800049a8:	07300713          	li	a4,115
    800049ac:	1ce78a63          	beq	a5,a4,80004b80 <__printf+0x4b8>
    800049b0:	07800713          	li	a4,120
    800049b4:	1ee79e63          	bne	a5,a4,80004bb0 <__printf+0x4e8>
    800049b8:	f7843783          	ld	a5,-136(s0)
    800049bc:	0007a703          	lw	a4,0(a5)
    800049c0:	00878793          	addi	a5,a5,8
    800049c4:	f6f43c23          	sd	a5,-136(s0)
    800049c8:	28074263          	bltz	a4,80004c4c <__printf+0x584>
    800049cc:	00002d97          	auipc	s11,0x2
    800049d0:	8bcd8d93          	addi	s11,s11,-1860 # 80006288 <digits>
    800049d4:	00f77793          	andi	a5,a4,15
    800049d8:	00fd87b3          	add	a5,s11,a5
    800049dc:	0007c683          	lbu	a3,0(a5)
    800049e0:	00f00613          	li	a2,15
    800049e4:	0007079b          	sext.w	a5,a4
    800049e8:	f8d40023          	sb	a3,-128(s0)
    800049ec:	0047559b          	srliw	a1,a4,0x4
    800049f0:	0047569b          	srliw	a3,a4,0x4
    800049f4:	00000c93          	li	s9,0
    800049f8:	0ee65063          	bge	a2,a4,80004ad8 <__printf+0x410>
    800049fc:	00f6f693          	andi	a3,a3,15
    80004a00:	00dd86b3          	add	a3,s11,a3
    80004a04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004a08:	0087d79b          	srliw	a5,a5,0x8
    80004a0c:	00100c93          	li	s9,1
    80004a10:	f8d400a3          	sb	a3,-127(s0)
    80004a14:	0cb67263          	bgeu	a2,a1,80004ad8 <__printf+0x410>
    80004a18:	00f7f693          	andi	a3,a5,15
    80004a1c:	00dd86b3          	add	a3,s11,a3
    80004a20:	0006c583          	lbu	a1,0(a3)
    80004a24:	00f00613          	li	a2,15
    80004a28:	0047d69b          	srliw	a3,a5,0x4
    80004a2c:	f8b40123          	sb	a1,-126(s0)
    80004a30:	0047d593          	srli	a1,a5,0x4
    80004a34:	28f67e63          	bgeu	a2,a5,80004cd0 <__printf+0x608>
    80004a38:	00f6f693          	andi	a3,a3,15
    80004a3c:	00dd86b3          	add	a3,s11,a3
    80004a40:	0006c503          	lbu	a0,0(a3)
    80004a44:	0087d813          	srli	a6,a5,0x8
    80004a48:	0087d69b          	srliw	a3,a5,0x8
    80004a4c:	f8a401a3          	sb	a0,-125(s0)
    80004a50:	28b67663          	bgeu	a2,a1,80004cdc <__printf+0x614>
    80004a54:	00f6f693          	andi	a3,a3,15
    80004a58:	00dd86b3          	add	a3,s11,a3
    80004a5c:	0006c583          	lbu	a1,0(a3)
    80004a60:	00c7d513          	srli	a0,a5,0xc
    80004a64:	00c7d69b          	srliw	a3,a5,0xc
    80004a68:	f8b40223          	sb	a1,-124(s0)
    80004a6c:	29067a63          	bgeu	a2,a6,80004d00 <__printf+0x638>
    80004a70:	00f6f693          	andi	a3,a3,15
    80004a74:	00dd86b3          	add	a3,s11,a3
    80004a78:	0006c583          	lbu	a1,0(a3)
    80004a7c:	0107d813          	srli	a6,a5,0x10
    80004a80:	0107d69b          	srliw	a3,a5,0x10
    80004a84:	f8b402a3          	sb	a1,-123(s0)
    80004a88:	28a67263          	bgeu	a2,a0,80004d0c <__printf+0x644>
    80004a8c:	00f6f693          	andi	a3,a3,15
    80004a90:	00dd86b3          	add	a3,s11,a3
    80004a94:	0006c683          	lbu	a3,0(a3)
    80004a98:	0147d79b          	srliw	a5,a5,0x14
    80004a9c:	f8d40323          	sb	a3,-122(s0)
    80004aa0:	21067663          	bgeu	a2,a6,80004cac <__printf+0x5e4>
    80004aa4:	02079793          	slli	a5,a5,0x20
    80004aa8:	0207d793          	srli	a5,a5,0x20
    80004aac:	00fd8db3          	add	s11,s11,a5
    80004ab0:	000dc683          	lbu	a3,0(s11)
    80004ab4:	00800793          	li	a5,8
    80004ab8:	00700c93          	li	s9,7
    80004abc:	f8d403a3          	sb	a3,-121(s0)
    80004ac0:	00075c63          	bgez	a4,80004ad8 <__printf+0x410>
    80004ac4:	f9040713          	addi	a4,s0,-112
    80004ac8:	00f70733          	add	a4,a4,a5
    80004acc:	02d00693          	li	a3,45
    80004ad0:	fed70823          	sb	a3,-16(a4)
    80004ad4:	00078c93          	mv	s9,a5
    80004ad8:	f8040793          	addi	a5,s0,-128
    80004adc:	01978cb3          	add	s9,a5,s9
    80004ae0:	f7f40d13          	addi	s10,s0,-129
    80004ae4:	000cc503          	lbu	a0,0(s9)
    80004ae8:	fffc8c93          	addi	s9,s9,-1
    80004aec:	00000097          	auipc	ra,0x0
    80004af0:	9f8080e7          	jalr	-1544(ra) # 800044e4 <consputc>
    80004af4:	ff9d18e3          	bne	s10,s9,80004ae4 <__printf+0x41c>
    80004af8:	0100006f          	j	80004b08 <__printf+0x440>
    80004afc:	00000097          	auipc	ra,0x0
    80004b00:	9e8080e7          	jalr	-1560(ra) # 800044e4 <consputc>
    80004b04:	000c8493          	mv	s1,s9
    80004b08:	00094503          	lbu	a0,0(s2)
    80004b0c:	c60510e3          	bnez	a0,8000476c <__printf+0xa4>
    80004b10:	e40c0ee3          	beqz	s8,8000496c <__printf+0x2a4>
    80004b14:	00003517          	auipc	a0,0x3
    80004b18:	66c50513          	addi	a0,a0,1644 # 80008180 <pr>
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	94c080e7          	jalr	-1716(ra) # 80005468 <release>
    80004b24:	e49ff06f          	j	8000496c <__printf+0x2a4>
    80004b28:	f7843783          	ld	a5,-136(s0)
    80004b2c:	03000513          	li	a0,48
    80004b30:	01000d13          	li	s10,16
    80004b34:	00878713          	addi	a4,a5,8
    80004b38:	0007bc83          	ld	s9,0(a5)
    80004b3c:	f6e43c23          	sd	a4,-136(s0)
    80004b40:	00000097          	auipc	ra,0x0
    80004b44:	9a4080e7          	jalr	-1628(ra) # 800044e4 <consputc>
    80004b48:	07800513          	li	a0,120
    80004b4c:	00000097          	auipc	ra,0x0
    80004b50:	998080e7          	jalr	-1640(ra) # 800044e4 <consputc>
    80004b54:	00001d97          	auipc	s11,0x1
    80004b58:	734d8d93          	addi	s11,s11,1844 # 80006288 <digits>
    80004b5c:	03ccd793          	srli	a5,s9,0x3c
    80004b60:	00fd87b3          	add	a5,s11,a5
    80004b64:	0007c503          	lbu	a0,0(a5)
    80004b68:	fffd0d1b          	addiw	s10,s10,-1
    80004b6c:	004c9c93          	slli	s9,s9,0x4
    80004b70:	00000097          	auipc	ra,0x0
    80004b74:	974080e7          	jalr	-1676(ra) # 800044e4 <consputc>
    80004b78:	fe0d12e3          	bnez	s10,80004b5c <__printf+0x494>
    80004b7c:	f8dff06f          	j	80004b08 <__printf+0x440>
    80004b80:	f7843783          	ld	a5,-136(s0)
    80004b84:	0007bc83          	ld	s9,0(a5)
    80004b88:	00878793          	addi	a5,a5,8
    80004b8c:	f6f43c23          	sd	a5,-136(s0)
    80004b90:	000c9a63          	bnez	s9,80004ba4 <__printf+0x4dc>
    80004b94:	1080006f          	j	80004c9c <__printf+0x5d4>
    80004b98:	001c8c93          	addi	s9,s9,1
    80004b9c:	00000097          	auipc	ra,0x0
    80004ba0:	948080e7          	jalr	-1720(ra) # 800044e4 <consputc>
    80004ba4:	000cc503          	lbu	a0,0(s9)
    80004ba8:	fe0518e3          	bnez	a0,80004b98 <__printf+0x4d0>
    80004bac:	f5dff06f          	j	80004b08 <__printf+0x440>
    80004bb0:	02500513          	li	a0,37
    80004bb4:	00000097          	auipc	ra,0x0
    80004bb8:	930080e7          	jalr	-1744(ra) # 800044e4 <consputc>
    80004bbc:	000c8513          	mv	a0,s9
    80004bc0:	00000097          	auipc	ra,0x0
    80004bc4:	924080e7          	jalr	-1756(ra) # 800044e4 <consputc>
    80004bc8:	f41ff06f          	j	80004b08 <__printf+0x440>
    80004bcc:	02500513          	li	a0,37
    80004bd0:	00000097          	auipc	ra,0x0
    80004bd4:	914080e7          	jalr	-1772(ra) # 800044e4 <consputc>
    80004bd8:	f31ff06f          	j	80004b08 <__printf+0x440>
    80004bdc:	00030513          	mv	a0,t1
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	7bc080e7          	jalr	1980(ra) # 8000539c <acquire>
    80004be8:	b4dff06f          	j	80004734 <__printf+0x6c>
    80004bec:	40c0053b          	negw	a0,a2
    80004bf0:	00a00713          	li	a4,10
    80004bf4:	02e576bb          	remuw	a3,a0,a4
    80004bf8:	00001d97          	auipc	s11,0x1
    80004bfc:	690d8d93          	addi	s11,s11,1680 # 80006288 <digits>
    80004c00:	ff700593          	li	a1,-9
    80004c04:	02069693          	slli	a3,a3,0x20
    80004c08:	0206d693          	srli	a3,a3,0x20
    80004c0c:	00dd86b3          	add	a3,s11,a3
    80004c10:	0006c683          	lbu	a3,0(a3)
    80004c14:	02e557bb          	divuw	a5,a0,a4
    80004c18:	f8d40023          	sb	a3,-128(s0)
    80004c1c:	10b65e63          	bge	a2,a1,80004d38 <__printf+0x670>
    80004c20:	06300593          	li	a1,99
    80004c24:	02e7f6bb          	remuw	a3,a5,a4
    80004c28:	02069693          	slli	a3,a3,0x20
    80004c2c:	0206d693          	srli	a3,a3,0x20
    80004c30:	00dd86b3          	add	a3,s11,a3
    80004c34:	0006c683          	lbu	a3,0(a3)
    80004c38:	02e7d73b          	divuw	a4,a5,a4
    80004c3c:	00200793          	li	a5,2
    80004c40:	f8d400a3          	sb	a3,-127(s0)
    80004c44:	bca5ece3          	bltu	a1,a0,8000481c <__printf+0x154>
    80004c48:	ce5ff06f          	j	8000492c <__printf+0x264>
    80004c4c:	40e007bb          	negw	a5,a4
    80004c50:	00001d97          	auipc	s11,0x1
    80004c54:	638d8d93          	addi	s11,s11,1592 # 80006288 <digits>
    80004c58:	00f7f693          	andi	a3,a5,15
    80004c5c:	00dd86b3          	add	a3,s11,a3
    80004c60:	0006c583          	lbu	a1,0(a3)
    80004c64:	ff100613          	li	a2,-15
    80004c68:	0047d69b          	srliw	a3,a5,0x4
    80004c6c:	f8b40023          	sb	a1,-128(s0)
    80004c70:	0047d59b          	srliw	a1,a5,0x4
    80004c74:	0ac75e63          	bge	a4,a2,80004d30 <__printf+0x668>
    80004c78:	00f6f693          	andi	a3,a3,15
    80004c7c:	00dd86b3          	add	a3,s11,a3
    80004c80:	0006c603          	lbu	a2,0(a3)
    80004c84:	00f00693          	li	a3,15
    80004c88:	0087d79b          	srliw	a5,a5,0x8
    80004c8c:	f8c400a3          	sb	a2,-127(s0)
    80004c90:	d8b6e4e3          	bltu	a3,a1,80004a18 <__printf+0x350>
    80004c94:	00200793          	li	a5,2
    80004c98:	e2dff06f          	j	80004ac4 <__printf+0x3fc>
    80004c9c:	00001c97          	auipc	s9,0x1
    80004ca0:	5ccc8c93          	addi	s9,s9,1484 # 80006268 <CONSOLE_STATUS+0x258>
    80004ca4:	02800513          	li	a0,40
    80004ca8:	ef1ff06f          	j	80004b98 <__printf+0x4d0>
    80004cac:	00700793          	li	a5,7
    80004cb0:	00600c93          	li	s9,6
    80004cb4:	e0dff06f          	j	80004ac0 <__printf+0x3f8>
    80004cb8:	00700793          	li	a5,7
    80004cbc:	00600c93          	li	s9,6
    80004cc0:	c69ff06f          	j	80004928 <__printf+0x260>
    80004cc4:	00300793          	li	a5,3
    80004cc8:	00200c93          	li	s9,2
    80004ccc:	c5dff06f          	j	80004928 <__printf+0x260>
    80004cd0:	00300793          	li	a5,3
    80004cd4:	00200c93          	li	s9,2
    80004cd8:	de9ff06f          	j	80004ac0 <__printf+0x3f8>
    80004cdc:	00400793          	li	a5,4
    80004ce0:	00300c93          	li	s9,3
    80004ce4:	dddff06f          	j	80004ac0 <__printf+0x3f8>
    80004ce8:	00400793          	li	a5,4
    80004cec:	00300c93          	li	s9,3
    80004cf0:	c39ff06f          	j	80004928 <__printf+0x260>
    80004cf4:	00500793          	li	a5,5
    80004cf8:	00400c93          	li	s9,4
    80004cfc:	c2dff06f          	j	80004928 <__printf+0x260>
    80004d00:	00500793          	li	a5,5
    80004d04:	00400c93          	li	s9,4
    80004d08:	db9ff06f          	j	80004ac0 <__printf+0x3f8>
    80004d0c:	00600793          	li	a5,6
    80004d10:	00500c93          	li	s9,5
    80004d14:	dadff06f          	j	80004ac0 <__printf+0x3f8>
    80004d18:	00600793          	li	a5,6
    80004d1c:	00500c93          	li	s9,5
    80004d20:	c09ff06f          	j	80004928 <__printf+0x260>
    80004d24:	00800793          	li	a5,8
    80004d28:	00700c93          	li	s9,7
    80004d2c:	bfdff06f          	j	80004928 <__printf+0x260>
    80004d30:	00100793          	li	a5,1
    80004d34:	d91ff06f          	j	80004ac4 <__printf+0x3fc>
    80004d38:	00100793          	li	a5,1
    80004d3c:	bf1ff06f          	j	8000492c <__printf+0x264>
    80004d40:	00900793          	li	a5,9
    80004d44:	00800c93          	li	s9,8
    80004d48:	be1ff06f          	j	80004928 <__printf+0x260>
    80004d4c:	00001517          	auipc	a0,0x1
    80004d50:	52450513          	addi	a0,a0,1316 # 80006270 <CONSOLE_STATUS+0x260>
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	918080e7          	jalr	-1768(ra) # 8000466c <panic>

0000000080004d5c <printfinit>:
    80004d5c:	fe010113          	addi	sp,sp,-32
    80004d60:	00813823          	sd	s0,16(sp)
    80004d64:	00913423          	sd	s1,8(sp)
    80004d68:	00113c23          	sd	ra,24(sp)
    80004d6c:	02010413          	addi	s0,sp,32
    80004d70:	00003497          	auipc	s1,0x3
    80004d74:	41048493          	addi	s1,s1,1040 # 80008180 <pr>
    80004d78:	00048513          	mv	a0,s1
    80004d7c:	00001597          	auipc	a1,0x1
    80004d80:	50458593          	addi	a1,a1,1284 # 80006280 <CONSOLE_STATUS+0x270>
    80004d84:	00000097          	auipc	ra,0x0
    80004d88:	5f4080e7          	jalr	1524(ra) # 80005378 <initlock>
    80004d8c:	01813083          	ld	ra,24(sp)
    80004d90:	01013403          	ld	s0,16(sp)
    80004d94:	0004ac23          	sw	zero,24(s1)
    80004d98:	00813483          	ld	s1,8(sp)
    80004d9c:	02010113          	addi	sp,sp,32
    80004da0:	00008067          	ret

0000000080004da4 <uartinit>:
    80004da4:	ff010113          	addi	sp,sp,-16
    80004da8:	00813423          	sd	s0,8(sp)
    80004dac:	01010413          	addi	s0,sp,16
    80004db0:	100007b7          	lui	a5,0x10000
    80004db4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004db8:	f8000713          	li	a4,-128
    80004dbc:	00e781a3          	sb	a4,3(a5)
    80004dc0:	00300713          	li	a4,3
    80004dc4:	00e78023          	sb	a4,0(a5)
    80004dc8:	000780a3          	sb	zero,1(a5)
    80004dcc:	00e781a3          	sb	a4,3(a5)
    80004dd0:	00700693          	li	a3,7
    80004dd4:	00d78123          	sb	a3,2(a5)
    80004dd8:	00e780a3          	sb	a4,1(a5)
    80004ddc:	00813403          	ld	s0,8(sp)
    80004de0:	01010113          	addi	sp,sp,16
    80004de4:	00008067          	ret

0000000080004de8 <uartputc>:
    80004de8:	00002797          	auipc	a5,0x2
    80004dec:	1007a783          	lw	a5,256(a5) # 80006ee8 <panicked>
    80004df0:	00078463          	beqz	a5,80004df8 <uartputc+0x10>
    80004df4:	0000006f          	j	80004df4 <uartputc+0xc>
    80004df8:	fd010113          	addi	sp,sp,-48
    80004dfc:	02813023          	sd	s0,32(sp)
    80004e00:	00913c23          	sd	s1,24(sp)
    80004e04:	01213823          	sd	s2,16(sp)
    80004e08:	01313423          	sd	s3,8(sp)
    80004e0c:	02113423          	sd	ra,40(sp)
    80004e10:	03010413          	addi	s0,sp,48
    80004e14:	00002917          	auipc	s2,0x2
    80004e18:	0dc90913          	addi	s2,s2,220 # 80006ef0 <uart_tx_r>
    80004e1c:	00093783          	ld	a5,0(s2)
    80004e20:	00002497          	auipc	s1,0x2
    80004e24:	0d848493          	addi	s1,s1,216 # 80006ef8 <uart_tx_w>
    80004e28:	0004b703          	ld	a4,0(s1)
    80004e2c:	02078693          	addi	a3,a5,32
    80004e30:	00050993          	mv	s3,a0
    80004e34:	02e69c63          	bne	a3,a4,80004e6c <uartputc+0x84>
    80004e38:	00001097          	auipc	ra,0x1
    80004e3c:	834080e7          	jalr	-1996(ra) # 8000566c <push_on>
    80004e40:	00093783          	ld	a5,0(s2)
    80004e44:	0004b703          	ld	a4,0(s1)
    80004e48:	02078793          	addi	a5,a5,32
    80004e4c:	00e79463          	bne	a5,a4,80004e54 <uartputc+0x6c>
    80004e50:	0000006f          	j	80004e50 <uartputc+0x68>
    80004e54:	00001097          	auipc	ra,0x1
    80004e58:	88c080e7          	jalr	-1908(ra) # 800056e0 <pop_on>
    80004e5c:	00093783          	ld	a5,0(s2)
    80004e60:	0004b703          	ld	a4,0(s1)
    80004e64:	02078693          	addi	a3,a5,32
    80004e68:	fce688e3          	beq	a3,a4,80004e38 <uartputc+0x50>
    80004e6c:	01f77693          	andi	a3,a4,31
    80004e70:	00003597          	auipc	a1,0x3
    80004e74:	33058593          	addi	a1,a1,816 # 800081a0 <uart_tx_buf>
    80004e78:	00d586b3          	add	a3,a1,a3
    80004e7c:	00170713          	addi	a4,a4,1
    80004e80:	01368023          	sb	s3,0(a3)
    80004e84:	00e4b023          	sd	a4,0(s1)
    80004e88:	10000637          	lui	a2,0x10000
    80004e8c:	02f71063          	bne	a4,a5,80004eac <uartputc+0xc4>
    80004e90:	0340006f          	j	80004ec4 <uartputc+0xdc>
    80004e94:	00074703          	lbu	a4,0(a4)
    80004e98:	00f93023          	sd	a5,0(s2)
    80004e9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004ea0:	00093783          	ld	a5,0(s2)
    80004ea4:	0004b703          	ld	a4,0(s1)
    80004ea8:	00f70e63          	beq	a4,a5,80004ec4 <uartputc+0xdc>
    80004eac:	00564683          	lbu	a3,5(a2)
    80004eb0:	01f7f713          	andi	a4,a5,31
    80004eb4:	00e58733          	add	a4,a1,a4
    80004eb8:	0206f693          	andi	a3,a3,32
    80004ebc:	00178793          	addi	a5,a5,1
    80004ec0:	fc069ae3          	bnez	a3,80004e94 <uartputc+0xac>
    80004ec4:	02813083          	ld	ra,40(sp)
    80004ec8:	02013403          	ld	s0,32(sp)
    80004ecc:	01813483          	ld	s1,24(sp)
    80004ed0:	01013903          	ld	s2,16(sp)
    80004ed4:	00813983          	ld	s3,8(sp)
    80004ed8:	03010113          	addi	sp,sp,48
    80004edc:	00008067          	ret

0000000080004ee0 <uartputc_sync>:
    80004ee0:	ff010113          	addi	sp,sp,-16
    80004ee4:	00813423          	sd	s0,8(sp)
    80004ee8:	01010413          	addi	s0,sp,16
    80004eec:	00002717          	auipc	a4,0x2
    80004ef0:	ffc72703          	lw	a4,-4(a4) # 80006ee8 <panicked>
    80004ef4:	02071663          	bnez	a4,80004f20 <uartputc_sync+0x40>
    80004ef8:	00050793          	mv	a5,a0
    80004efc:	100006b7          	lui	a3,0x10000
    80004f00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004f04:	02077713          	andi	a4,a4,32
    80004f08:	fe070ce3          	beqz	a4,80004f00 <uartputc_sync+0x20>
    80004f0c:	0ff7f793          	andi	a5,a5,255
    80004f10:	00f68023          	sb	a5,0(a3)
    80004f14:	00813403          	ld	s0,8(sp)
    80004f18:	01010113          	addi	sp,sp,16
    80004f1c:	00008067          	ret
    80004f20:	0000006f          	j	80004f20 <uartputc_sync+0x40>

0000000080004f24 <uartstart>:
    80004f24:	ff010113          	addi	sp,sp,-16
    80004f28:	00813423          	sd	s0,8(sp)
    80004f2c:	01010413          	addi	s0,sp,16
    80004f30:	00002617          	auipc	a2,0x2
    80004f34:	fc060613          	addi	a2,a2,-64 # 80006ef0 <uart_tx_r>
    80004f38:	00002517          	auipc	a0,0x2
    80004f3c:	fc050513          	addi	a0,a0,-64 # 80006ef8 <uart_tx_w>
    80004f40:	00063783          	ld	a5,0(a2)
    80004f44:	00053703          	ld	a4,0(a0)
    80004f48:	04f70263          	beq	a4,a5,80004f8c <uartstart+0x68>
    80004f4c:	100005b7          	lui	a1,0x10000
    80004f50:	00003817          	auipc	a6,0x3
    80004f54:	25080813          	addi	a6,a6,592 # 800081a0 <uart_tx_buf>
    80004f58:	01c0006f          	j	80004f74 <uartstart+0x50>
    80004f5c:	0006c703          	lbu	a4,0(a3)
    80004f60:	00f63023          	sd	a5,0(a2)
    80004f64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f68:	00063783          	ld	a5,0(a2)
    80004f6c:	00053703          	ld	a4,0(a0)
    80004f70:	00f70e63          	beq	a4,a5,80004f8c <uartstart+0x68>
    80004f74:	01f7f713          	andi	a4,a5,31
    80004f78:	00e806b3          	add	a3,a6,a4
    80004f7c:	0055c703          	lbu	a4,5(a1)
    80004f80:	00178793          	addi	a5,a5,1
    80004f84:	02077713          	andi	a4,a4,32
    80004f88:	fc071ae3          	bnez	a4,80004f5c <uartstart+0x38>
    80004f8c:	00813403          	ld	s0,8(sp)
    80004f90:	01010113          	addi	sp,sp,16
    80004f94:	00008067          	ret

0000000080004f98 <uartgetc>:
    80004f98:	ff010113          	addi	sp,sp,-16
    80004f9c:	00813423          	sd	s0,8(sp)
    80004fa0:	01010413          	addi	s0,sp,16
    80004fa4:	10000737          	lui	a4,0x10000
    80004fa8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004fac:	0017f793          	andi	a5,a5,1
    80004fb0:	00078c63          	beqz	a5,80004fc8 <uartgetc+0x30>
    80004fb4:	00074503          	lbu	a0,0(a4)
    80004fb8:	0ff57513          	andi	a0,a0,255
    80004fbc:	00813403          	ld	s0,8(sp)
    80004fc0:	01010113          	addi	sp,sp,16
    80004fc4:	00008067          	ret
    80004fc8:	fff00513          	li	a0,-1
    80004fcc:	ff1ff06f          	j	80004fbc <uartgetc+0x24>

0000000080004fd0 <uartintr>:
    80004fd0:	100007b7          	lui	a5,0x10000
    80004fd4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004fd8:	0017f793          	andi	a5,a5,1
    80004fdc:	0a078463          	beqz	a5,80005084 <uartintr+0xb4>
    80004fe0:	fe010113          	addi	sp,sp,-32
    80004fe4:	00813823          	sd	s0,16(sp)
    80004fe8:	00913423          	sd	s1,8(sp)
    80004fec:	00113c23          	sd	ra,24(sp)
    80004ff0:	02010413          	addi	s0,sp,32
    80004ff4:	100004b7          	lui	s1,0x10000
    80004ff8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004ffc:	0ff57513          	andi	a0,a0,255
    80005000:	fffff097          	auipc	ra,0xfffff
    80005004:	534080e7          	jalr	1332(ra) # 80004534 <consoleintr>
    80005008:	0054c783          	lbu	a5,5(s1)
    8000500c:	0017f793          	andi	a5,a5,1
    80005010:	fe0794e3          	bnez	a5,80004ff8 <uartintr+0x28>
    80005014:	00002617          	auipc	a2,0x2
    80005018:	edc60613          	addi	a2,a2,-292 # 80006ef0 <uart_tx_r>
    8000501c:	00002517          	auipc	a0,0x2
    80005020:	edc50513          	addi	a0,a0,-292 # 80006ef8 <uart_tx_w>
    80005024:	00063783          	ld	a5,0(a2)
    80005028:	00053703          	ld	a4,0(a0)
    8000502c:	04f70263          	beq	a4,a5,80005070 <uartintr+0xa0>
    80005030:	100005b7          	lui	a1,0x10000
    80005034:	00003817          	auipc	a6,0x3
    80005038:	16c80813          	addi	a6,a6,364 # 800081a0 <uart_tx_buf>
    8000503c:	01c0006f          	j	80005058 <uartintr+0x88>
    80005040:	0006c703          	lbu	a4,0(a3)
    80005044:	00f63023          	sd	a5,0(a2)
    80005048:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000504c:	00063783          	ld	a5,0(a2)
    80005050:	00053703          	ld	a4,0(a0)
    80005054:	00f70e63          	beq	a4,a5,80005070 <uartintr+0xa0>
    80005058:	01f7f713          	andi	a4,a5,31
    8000505c:	00e806b3          	add	a3,a6,a4
    80005060:	0055c703          	lbu	a4,5(a1)
    80005064:	00178793          	addi	a5,a5,1
    80005068:	02077713          	andi	a4,a4,32
    8000506c:	fc071ae3          	bnez	a4,80005040 <uartintr+0x70>
    80005070:	01813083          	ld	ra,24(sp)
    80005074:	01013403          	ld	s0,16(sp)
    80005078:	00813483          	ld	s1,8(sp)
    8000507c:	02010113          	addi	sp,sp,32
    80005080:	00008067          	ret
    80005084:	00002617          	auipc	a2,0x2
    80005088:	e6c60613          	addi	a2,a2,-404 # 80006ef0 <uart_tx_r>
    8000508c:	00002517          	auipc	a0,0x2
    80005090:	e6c50513          	addi	a0,a0,-404 # 80006ef8 <uart_tx_w>
    80005094:	00063783          	ld	a5,0(a2)
    80005098:	00053703          	ld	a4,0(a0)
    8000509c:	04f70263          	beq	a4,a5,800050e0 <uartintr+0x110>
    800050a0:	100005b7          	lui	a1,0x10000
    800050a4:	00003817          	auipc	a6,0x3
    800050a8:	0fc80813          	addi	a6,a6,252 # 800081a0 <uart_tx_buf>
    800050ac:	01c0006f          	j	800050c8 <uartintr+0xf8>
    800050b0:	0006c703          	lbu	a4,0(a3)
    800050b4:	00f63023          	sd	a5,0(a2)
    800050b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800050bc:	00063783          	ld	a5,0(a2)
    800050c0:	00053703          	ld	a4,0(a0)
    800050c4:	02f70063          	beq	a4,a5,800050e4 <uartintr+0x114>
    800050c8:	01f7f713          	andi	a4,a5,31
    800050cc:	00e806b3          	add	a3,a6,a4
    800050d0:	0055c703          	lbu	a4,5(a1)
    800050d4:	00178793          	addi	a5,a5,1
    800050d8:	02077713          	andi	a4,a4,32
    800050dc:	fc071ae3          	bnez	a4,800050b0 <uartintr+0xe0>
    800050e0:	00008067          	ret
    800050e4:	00008067          	ret

00000000800050e8 <kinit>:
    800050e8:	fc010113          	addi	sp,sp,-64
    800050ec:	02913423          	sd	s1,40(sp)
    800050f0:	fffff7b7          	lui	a5,0xfffff
    800050f4:	00004497          	auipc	s1,0x4
    800050f8:	0cb48493          	addi	s1,s1,203 # 800091bf <end+0xfff>
    800050fc:	02813823          	sd	s0,48(sp)
    80005100:	01313c23          	sd	s3,24(sp)
    80005104:	00f4f4b3          	and	s1,s1,a5
    80005108:	02113c23          	sd	ra,56(sp)
    8000510c:	03213023          	sd	s2,32(sp)
    80005110:	01413823          	sd	s4,16(sp)
    80005114:	01513423          	sd	s5,8(sp)
    80005118:	04010413          	addi	s0,sp,64
    8000511c:	000017b7          	lui	a5,0x1
    80005120:	01100993          	li	s3,17
    80005124:	00f487b3          	add	a5,s1,a5
    80005128:	01b99993          	slli	s3,s3,0x1b
    8000512c:	06f9e063          	bltu	s3,a5,8000518c <kinit+0xa4>
    80005130:	00003a97          	auipc	s5,0x3
    80005134:	090a8a93          	addi	s5,s5,144 # 800081c0 <end>
    80005138:	0754ec63          	bltu	s1,s5,800051b0 <kinit+0xc8>
    8000513c:	0734fa63          	bgeu	s1,s3,800051b0 <kinit+0xc8>
    80005140:	00088a37          	lui	s4,0x88
    80005144:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005148:	00002917          	auipc	s2,0x2
    8000514c:	db890913          	addi	s2,s2,-584 # 80006f00 <kmem>
    80005150:	00ca1a13          	slli	s4,s4,0xc
    80005154:	0140006f          	j	80005168 <kinit+0x80>
    80005158:	000017b7          	lui	a5,0x1
    8000515c:	00f484b3          	add	s1,s1,a5
    80005160:	0554e863          	bltu	s1,s5,800051b0 <kinit+0xc8>
    80005164:	0534f663          	bgeu	s1,s3,800051b0 <kinit+0xc8>
    80005168:	00001637          	lui	a2,0x1
    8000516c:	00100593          	li	a1,1
    80005170:	00048513          	mv	a0,s1
    80005174:	00000097          	auipc	ra,0x0
    80005178:	5e4080e7          	jalr	1508(ra) # 80005758 <__memset>
    8000517c:	00093783          	ld	a5,0(s2)
    80005180:	00f4b023          	sd	a5,0(s1)
    80005184:	00993023          	sd	s1,0(s2)
    80005188:	fd4498e3          	bne	s1,s4,80005158 <kinit+0x70>
    8000518c:	03813083          	ld	ra,56(sp)
    80005190:	03013403          	ld	s0,48(sp)
    80005194:	02813483          	ld	s1,40(sp)
    80005198:	02013903          	ld	s2,32(sp)
    8000519c:	01813983          	ld	s3,24(sp)
    800051a0:	01013a03          	ld	s4,16(sp)
    800051a4:	00813a83          	ld	s5,8(sp)
    800051a8:	04010113          	addi	sp,sp,64
    800051ac:	00008067          	ret
    800051b0:	00001517          	auipc	a0,0x1
    800051b4:	0f050513          	addi	a0,a0,240 # 800062a0 <digits+0x18>
    800051b8:	fffff097          	auipc	ra,0xfffff
    800051bc:	4b4080e7          	jalr	1204(ra) # 8000466c <panic>

00000000800051c0 <freerange>:
    800051c0:	fc010113          	addi	sp,sp,-64
    800051c4:	000017b7          	lui	a5,0x1
    800051c8:	02913423          	sd	s1,40(sp)
    800051cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800051d0:	009504b3          	add	s1,a0,s1
    800051d4:	fffff537          	lui	a0,0xfffff
    800051d8:	02813823          	sd	s0,48(sp)
    800051dc:	02113c23          	sd	ra,56(sp)
    800051e0:	03213023          	sd	s2,32(sp)
    800051e4:	01313c23          	sd	s3,24(sp)
    800051e8:	01413823          	sd	s4,16(sp)
    800051ec:	01513423          	sd	s5,8(sp)
    800051f0:	01613023          	sd	s6,0(sp)
    800051f4:	04010413          	addi	s0,sp,64
    800051f8:	00a4f4b3          	and	s1,s1,a0
    800051fc:	00f487b3          	add	a5,s1,a5
    80005200:	06f5e463          	bltu	a1,a5,80005268 <freerange+0xa8>
    80005204:	00003a97          	auipc	s5,0x3
    80005208:	fbca8a93          	addi	s5,s5,-68 # 800081c0 <end>
    8000520c:	0954e263          	bltu	s1,s5,80005290 <freerange+0xd0>
    80005210:	01100993          	li	s3,17
    80005214:	01b99993          	slli	s3,s3,0x1b
    80005218:	0734fc63          	bgeu	s1,s3,80005290 <freerange+0xd0>
    8000521c:	00058a13          	mv	s4,a1
    80005220:	00002917          	auipc	s2,0x2
    80005224:	ce090913          	addi	s2,s2,-800 # 80006f00 <kmem>
    80005228:	00002b37          	lui	s6,0x2
    8000522c:	0140006f          	j	80005240 <freerange+0x80>
    80005230:	000017b7          	lui	a5,0x1
    80005234:	00f484b3          	add	s1,s1,a5
    80005238:	0554ec63          	bltu	s1,s5,80005290 <freerange+0xd0>
    8000523c:	0534fa63          	bgeu	s1,s3,80005290 <freerange+0xd0>
    80005240:	00001637          	lui	a2,0x1
    80005244:	00100593          	li	a1,1
    80005248:	00048513          	mv	a0,s1
    8000524c:	00000097          	auipc	ra,0x0
    80005250:	50c080e7          	jalr	1292(ra) # 80005758 <__memset>
    80005254:	00093703          	ld	a4,0(s2)
    80005258:	016487b3          	add	a5,s1,s6
    8000525c:	00e4b023          	sd	a4,0(s1)
    80005260:	00993023          	sd	s1,0(s2)
    80005264:	fcfa76e3          	bgeu	s4,a5,80005230 <freerange+0x70>
    80005268:	03813083          	ld	ra,56(sp)
    8000526c:	03013403          	ld	s0,48(sp)
    80005270:	02813483          	ld	s1,40(sp)
    80005274:	02013903          	ld	s2,32(sp)
    80005278:	01813983          	ld	s3,24(sp)
    8000527c:	01013a03          	ld	s4,16(sp)
    80005280:	00813a83          	ld	s5,8(sp)
    80005284:	00013b03          	ld	s6,0(sp)
    80005288:	04010113          	addi	sp,sp,64
    8000528c:	00008067          	ret
    80005290:	00001517          	auipc	a0,0x1
    80005294:	01050513          	addi	a0,a0,16 # 800062a0 <digits+0x18>
    80005298:	fffff097          	auipc	ra,0xfffff
    8000529c:	3d4080e7          	jalr	980(ra) # 8000466c <panic>

00000000800052a0 <kfree>:
    800052a0:	fe010113          	addi	sp,sp,-32
    800052a4:	00813823          	sd	s0,16(sp)
    800052a8:	00113c23          	sd	ra,24(sp)
    800052ac:	00913423          	sd	s1,8(sp)
    800052b0:	02010413          	addi	s0,sp,32
    800052b4:	03451793          	slli	a5,a0,0x34
    800052b8:	04079c63          	bnez	a5,80005310 <kfree+0x70>
    800052bc:	00003797          	auipc	a5,0x3
    800052c0:	f0478793          	addi	a5,a5,-252 # 800081c0 <end>
    800052c4:	00050493          	mv	s1,a0
    800052c8:	04f56463          	bltu	a0,a5,80005310 <kfree+0x70>
    800052cc:	01100793          	li	a5,17
    800052d0:	01b79793          	slli	a5,a5,0x1b
    800052d4:	02f57e63          	bgeu	a0,a5,80005310 <kfree+0x70>
    800052d8:	00001637          	lui	a2,0x1
    800052dc:	00100593          	li	a1,1
    800052e0:	00000097          	auipc	ra,0x0
    800052e4:	478080e7          	jalr	1144(ra) # 80005758 <__memset>
    800052e8:	00002797          	auipc	a5,0x2
    800052ec:	c1878793          	addi	a5,a5,-1000 # 80006f00 <kmem>
    800052f0:	0007b703          	ld	a4,0(a5)
    800052f4:	01813083          	ld	ra,24(sp)
    800052f8:	01013403          	ld	s0,16(sp)
    800052fc:	00e4b023          	sd	a4,0(s1)
    80005300:	0097b023          	sd	s1,0(a5)
    80005304:	00813483          	ld	s1,8(sp)
    80005308:	02010113          	addi	sp,sp,32
    8000530c:	00008067          	ret
    80005310:	00001517          	auipc	a0,0x1
    80005314:	f9050513          	addi	a0,a0,-112 # 800062a0 <digits+0x18>
    80005318:	fffff097          	auipc	ra,0xfffff
    8000531c:	354080e7          	jalr	852(ra) # 8000466c <panic>

0000000080005320 <kalloc>:
    80005320:	fe010113          	addi	sp,sp,-32
    80005324:	00813823          	sd	s0,16(sp)
    80005328:	00913423          	sd	s1,8(sp)
    8000532c:	00113c23          	sd	ra,24(sp)
    80005330:	02010413          	addi	s0,sp,32
    80005334:	00002797          	auipc	a5,0x2
    80005338:	bcc78793          	addi	a5,a5,-1076 # 80006f00 <kmem>
    8000533c:	0007b483          	ld	s1,0(a5)
    80005340:	02048063          	beqz	s1,80005360 <kalloc+0x40>
    80005344:	0004b703          	ld	a4,0(s1)
    80005348:	00001637          	lui	a2,0x1
    8000534c:	00500593          	li	a1,5
    80005350:	00048513          	mv	a0,s1
    80005354:	00e7b023          	sd	a4,0(a5)
    80005358:	00000097          	auipc	ra,0x0
    8000535c:	400080e7          	jalr	1024(ra) # 80005758 <__memset>
    80005360:	01813083          	ld	ra,24(sp)
    80005364:	01013403          	ld	s0,16(sp)
    80005368:	00048513          	mv	a0,s1
    8000536c:	00813483          	ld	s1,8(sp)
    80005370:	02010113          	addi	sp,sp,32
    80005374:	00008067          	ret

0000000080005378 <initlock>:
    80005378:	ff010113          	addi	sp,sp,-16
    8000537c:	00813423          	sd	s0,8(sp)
    80005380:	01010413          	addi	s0,sp,16
    80005384:	00813403          	ld	s0,8(sp)
    80005388:	00b53423          	sd	a1,8(a0)
    8000538c:	00052023          	sw	zero,0(a0)
    80005390:	00053823          	sd	zero,16(a0)
    80005394:	01010113          	addi	sp,sp,16
    80005398:	00008067          	ret

000000008000539c <acquire>:
    8000539c:	fe010113          	addi	sp,sp,-32
    800053a0:	00813823          	sd	s0,16(sp)
    800053a4:	00913423          	sd	s1,8(sp)
    800053a8:	00113c23          	sd	ra,24(sp)
    800053ac:	01213023          	sd	s2,0(sp)
    800053b0:	02010413          	addi	s0,sp,32
    800053b4:	00050493          	mv	s1,a0
    800053b8:	10002973          	csrr	s2,sstatus
    800053bc:	100027f3          	csrr	a5,sstatus
    800053c0:	ffd7f793          	andi	a5,a5,-3
    800053c4:	10079073          	csrw	sstatus,a5
    800053c8:	fffff097          	auipc	ra,0xfffff
    800053cc:	8e8080e7          	jalr	-1816(ra) # 80003cb0 <mycpu>
    800053d0:	07852783          	lw	a5,120(a0)
    800053d4:	06078e63          	beqz	a5,80005450 <acquire+0xb4>
    800053d8:	fffff097          	auipc	ra,0xfffff
    800053dc:	8d8080e7          	jalr	-1832(ra) # 80003cb0 <mycpu>
    800053e0:	07852783          	lw	a5,120(a0)
    800053e4:	0004a703          	lw	a4,0(s1)
    800053e8:	0017879b          	addiw	a5,a5,1
    800053ec:	06f52c23          	sw	a5,120(a0)
    800053f0:	04071063          	bnez	a4,80005430 <acquire+0x94>
    800053f4:	00100713          	li	a4,1
    800053f8:	00070793          	mv	a5,a4
    800053fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005400:	0007879b          	sext.w	a5,a5
    80005404:	fe079ae3          	bnez	a5,800053f8 <acquire+0x5c>
    80005408:	0ff0000f          	fence
    8000540c:	fffff097          	auipc	ra,0xfffff
    80005410:	8a4080e7          	jalr	-1884(ra) # 80003cb0 <mycpu>
    80005414:	01813083          	ld	ra,24(sp)
    80005418:	01013403          	ld	s0,16(sp)
    8000541c:	00a4b823          	sd	a0,16(s1)
    80005420:	00013903          	ld	s2,0(sp)
    80005424:	00813483          	ld	s1,8(sp)
    80005428:	02010113          	addi	sp,sp,32
    8000542c:	00008067          	ret
    80005430:	0104b903          	ld	s2,16(s1)
    80005434:	fffff097          	auipc	ra,0xfffff
    80005438:	87c080e7          	jalr	-1924(ra) # 80003cb0 <mycpu>
    8000543c:	faa91ce3          	bne	s2,a0,800053f4 <acquire+0x58>
    80005440:	00001517          	auipc	a0,0x1
    80005444:	e6850513          	addi	a0,a0,-408 # 800062a8 <digits+0x20>
    80005448:	fffff097          	auipc	ra,0xfffff
    8000544c:	224080e7          	jalr	548(ra) # 8000466c <panic>
    80005450:	00195913          	srli	s2,s2,0x1
    80005454:	fffff097          	auipc	ra,0xfffff
    80005458:	85c080e7          	jalr	-1956(ra) # 80003cb0 <mycpu>
    8000545c:	00197913          	andi	s2,s2,1
    80005460:	07252e23          	sw	s2,124(a0)
    80005464:	f75ff06f          	j	800053d8 <acquire+0x3c>

0000000080005468 <release>:
    80005468:	fe010113          	addi	sp,sp,-32
    8000546c:	00813823          	sd	s0,16(sp)
    80005470:	00113c23          	sd	ra,24(sp)
    80005474:	00913423          	sd	s1,8(sp)
    80005478:	01213023          	sd	s2,0(sp)
    8000547c:	02010413          	addi	s0,sp,32
    80005480:	00052783          	lw	a5,0(a0)
    80005484:	00079a63          	bnez	a5,80005498 <release+0x30>
    80005488:	00001517          	auipc	a0,0x1
    8000548c:	e2850513          	addi	a0,a0,-472 # 800062b0 <digits+0x28>
    80005490:	fffff097          	auipc	ra,0xfffff
    80005494:	1dc080e7          	jalr	476(ra) # 8000466c <panic>
    80005498:	01053903          	ld	s2,16(a0)
    8000549c:	00050493          	mv	s1,a0
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	810080e7          	jalr	-2032(ra) # 80003cb0 <mycpu>
    800054a8:	fea910e3          	bne	s2,a0,80005488 <release+0x20>
    800054ac:	0004b823          	sd	zero,16(s1)
    800054b0:	0ff0000f          	fence
    800054b4:	0f50000f          	fence	iorw,ow
    800054b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800054bc:	ffffe097          	auipc	ra,0xffffe
    800054c0:	7f4080e7          	jalr	2036(ra) # 80003cb0 <mycpu>
    800054c4:	100027f3          	csrr	a5,sstatus
    800054c8:	0027f793          	andi	a5,a5,2
    800054cc:	04079a63          	bnez	a5,80005520 <release+0xb8>
    800054d0:	07852783          	lw	a5,120(a0)
    800054d4:	02f05e63          	blez	a5,80005510 <release+0xa8>
    800054d8:	fff7871b          	addiw	a4,a5,-1
    800054dc:	06e52c23          	sw	a4,120(a0)
    800054e0:	00071c63          	bnez	a4,800054f8 <release+0x90>
    800054e4:	07c52783          	lw	a5,124(a0)
    800054e8:	00078863          	beqz	a5,800054f8 <release+0x90>
    800054ec:	100027f3          	csrr	a5,sstatus
    800054f0:	0027e793          	ori	a5,a5,2
    800054f4:	10079073          	csrw	sstatus,a5
    800054f8:	01813083          	ld	ra,24(sp)
    800054fc:	01013403          	ld	s0,16(sp)
    80005500:	00813483          	ld	s1,8(sp)
    80005504:	00013903          	ld	s2,0(sp)
    80005508:	02010113          	addi	sp,sp,32
    8000550c:	00008067          	ret
    80005510:	00001517          	auipc	a0,0x1
    80005514:	dc050513          	addi	a0,a0,-576 # 800062d0 <digits+0x48>
    80005518:	fffff097          	auipc	ra,0xfffff
    8000551c:	154080e7          	jalr	340(ra) # 8000466c <panic>
    80005520:	00001517          	auipc	a0,0x1
    80005524:	d9850513          	addi	a0,a0,-616 # 800062b8 <digits+0x30>
    80005528:	fffff097          	auipc	ra,0xfffff
    8000552c:	144080e7          	jalr	324(ra) # 8000466c <panic>

0000000080005530 <holding>:
    80005530:	00052783          	lw	a5,0(a0)
    80005534:	00079663          	bnez	a5,80005540 <holding+0x10>
    80005538:	00000513          	li	a0,0
    8000553c:	00008067          	ret
    80005540:	fe010113          	addi	sp,sp,-32
    80005544:	00813823          	sd	s0,16(sp)
    80005548:	00913423          	sd	s1,8(sp)
    8000554c:	00113c23          	sd	ra,24(sp)
    80005550:	02010413          	addi	s0,sp,32
    80005554:	01053483          	ld	s1,16(a0)
    80005558:	ffffe097          	auipc	ra,0xffffe
    8000555c:	758080e7          	jalr	1880(ra) # 80003cb0 <mycpu>
    80005560:	01813083          	ld	ra,24(sp)
    80005564:	01013403          	ld	s0,16(sp)
    80005568:	40a48533          	sub	a0,s1,a0
    8000556c:	00153513          	seqz	a0,a0
    80005570:	00813483          	ld	s1,8(sp)
    80005574:	02010113          	addi	sp,sp,32
    80005578:	00008067          	ret

000000008000557c <push_off>:
    8000557c:	fe010113          	addi	sp,sp,-32
    80005580:	00813823          	sd	s0,16(sp)
    80005584:	00113c23          	sd	ra,24(sp)
    80005588:	00913423          	sd	s1,8(sp)
    8000558c:	02010413          	addi	s0,sp,32
    80005590:	100024f3          	csrr	s1,sstatus
    80005594:	100027f3          	csrr	a5,sstatus
    80005598:	ffd7f793          	andi	a5,a5,-3
    8000559c:	10079073          	csrw	sstatus,a5
    800055a0:	ffffe097          	auipc	ra,0xffffe
    800055a4:	710080e7          	jalr	1808(ra) # 80003cb0 <mycpu>
    800055a8:	07852783          	lw	a5,120(a0)
    800055ac:	02078663          	beqz	a5,800055d8 <push_off+0x5c>
    800055b0:	ffffe097          	auipc	ra,0xffffe
    800055b4:	700080e7          	jalr	1792(ra) # 80003cb0 <mycpu>
    800055b8:	07852783          	lw	a5,120(a0)
    800055bc:	01813083          	ld	ra,24(sp)
    800055c0:	01013403          	ld	s0,16(sp)
    800055c4:	0017879b          	addiw	a5,a5,1
    800055c8:	06f52c23          	sw	a5,120(a0)
    800055cc:	00813483          	ld	s1,8(sp)
    800055d0:	02010113          	addi	sp,sp,32
    800055d4:	00008067          	ret
    800055d8:	0014d493          	srli	s1,s1,0x1
    800055dc:	ffffe097          	auipc	ra,0xffffe
    800055e0:	6d4080e7          	jalr	1748(ra) # 80003cb0 <mycpu>
    800055e4:	0014f493          	andi	s1,s1,1
    800055e8:	06952e23          	sw	s1,124(a0)
    800055ec:	fc5ff06f          	j	800055b0 <push_off+0x34>

00000000800055f0 <pop_off>:
    800055f0:	ff010113          	addi	sp,sp,-16
    800055f4:	00813023          	sd	s0,0(sp)
    800055f8:	00113423          	sd	ra,8(sp)
    800055fc:	01010413          	addi	s0,sp,16
    80005600:	ffffe097          	auipc	ra,0xffffe
    80005604:	6b0080e7          	jalr	1712(ra) # 80003cb0 <mycpu>
    80005608:	100027f3          	csrr	a5,sstatus
    8000560c:	0027f793          	andi	a5,a5,2
    80005610:	04079663          	bnez	a5,8000565c <pop_off+0x6c>
    80005614:	07852783          	lw	a5,120(a0)
    80005618:	02f05a63          	blez	a5,8000564c <pop_off+0x5c>
    8000561c:	fff7871b          	addiw	a4,a5,-1
    80005620:	06e52c23          	sw	a4,120(a0)
    80005624:	00071c63          	bnez	a4,8000563c <pop_off+0x4c>
    80005628:	07c52783          	lw	a5,124(a0)
    8000562c:	00078863          	beqz	a5,8000563c <pop_off+0x4c>
    80005630:	100027f3          	csrr	a5,sstatus
    80005634:	0027e793          	ori	a5,a5,2
    80005638:	10079073          	csrw	sstatus,a5
    8000563c:	00813083          	ld	ra,8(sp)
    80005640:	00013403          	ld	s0,0(sp)
    80005644:	01010113          	addi	sp,sp,16
    80005648:	00008067          	ret
    8000564c:	00001517          	auipc	a0,0x1
    80005650:	c8450513          	addi	a0,a0,-892 # 800062d0 <digits+0x48>
    80005654:	fffff097          	auipc	ra,0xfffff
    80005658:	018080e7          	jalr	24(ra) # 8000466c <panic>
    8000565c:	00001517          	auipc	a0,0x1
    80005660:	c5c50513          	addi	a0,a0,-932 # 800062b8 <digits+0x30>
    80005664:	fffff097          	auipc	ra,0xfffff
    80005668:	008080e7          	jalr	8(ra) # 8000466c <panic>

000000008000566c <push_on>:
    8000566c:	fe010113          	addi	sp,sp,-32
    80005670:	00813823          	sd	s0,16(sp)
    80005674:	00113c23          	sd	ra,24(sp)
    80005678:	00913423          	sd	s1,8(sp)
    8000567c:	02010413          	addi	s0,sp,32
    80005680:	100024f3          	csrr	s1,sstatus
    80005684:	100027f3          	csrr	a5,sstatus
    80005688:	0027e793          	ori	a5,a5,2
    8000568c:	10079073          	csrw	sstatus,a5
    80005690:	ffffe097          	auipc	ra,0xffffe
    80005694:	620080e7          	jalr	1568(ra) # 80003cb0 <mycpu>
    80005698:	07852783          	lw	a5,120(a0)
    8000569c:	02078663          	beqz	a5,800056c8 <push_on+0x5c>
    800056a0:	ffffe097          	auipc	ra,0xffffe
    800056a4:	610080e7          	jalr	1552(ra) # 80003cb0 <mycpu>
    800056a8:	07852783          	lw	a5,120(a0)
    800056ac:	01813083          	ld	ra,24(sp)
    800056b0:	01013403          	ld	s0,16(sp)
    800056b4:	0017879b          	addiw	a5,a5,1
    800056b8:	06f52c23          	sw	a5,120(a0)
    800056bc:	00813483          	ld	s1,8(sp)
    800056c0:	02010113          	addi	sp,sp,32
    800056c4:	00008067          	ret
    800056c8:	0014d493          	srli	s1,s1,0x1
    800056cc:	ffffe097          	auipc	ra,0xffffe
    800056d0:	5e4080e7          	jalr	1508(ra) # 80003cb0 <mycpu>
    800056d4:	0014f493          	andi	s1,s1,1
    800056d8:	06952e23          	sw	s1,124(a0)
    800056dc:	fc5ff06f          	j	800056a0 <push_on+0x34>

00000000800056e0 <pop_on>:
    800056e0:	ff010113          	addi	sp,sp,-16
    800056e4:	00813023          	sd	s0,0(sp)
    800056e8:	00113423          	sd	ra,8(sp)
    800056ec:	01010413          	addi	s0,sp,16
    800056f0:	ffffe097          	auipc	ra,0xffffe
    800056f4:	5c0080e7          	jalr	1472(ra) # 80003cb0 <mycpu>
    800056f8:	100027f3          	csrr	a5,sstatus
    800056fc:	0027f793          	andi	a5,a5,2
    80005700:	04078463          	beqz	a5,80005748 <pop_on+0x68>
    80005704:	07852783          	lw	a5,120(a0)
    80005708:	02f05863          	blez	a5,80005738 <pop_on+0x58>
    8000570c:	fff7879b          	addiw	a5,a5,-1
    80005710:	06f52c23          	sw	a5,120(a0)
    80005714:	07853783          	ld	a5,120(a0)
    80005718:	00079863          	bnez	a5,80005728 <pop_on+0x48>
    8000571c:	100027f3          	csrr	a5,sstatus
    80005720:	ffd7f793          	andi	a5,a5,-3
    80005724:	10079073          	csrw	sstatus,a5
    80005728:	00813083          	ld	ra,8(sp)
    8000572c:	00013403          	ld	s0,0(sp)
    80005730:	01010113          	addi	sp,sp,16
    80005734:	00008067          	ret
    80005738:	00001517          	auipc	a0,0x1
    8000573c:	bc050513          	addi	a0,a0,-1088 # 800062f8 <digits+0x70>
    80005740:	fffff097          	auipc	ra,0xfffff
    80005744:	f2c080e7          	jalr	-212(ra) # 8000466c <panic>
    80005748:	00001517          	auipc	a0,0x1
    8000574c:	b9050513          	addi	a0,a0,-1136 # 800062d8 <digits+0x50>
    80005750:	fffff097          	auipc	ra,0xfffff
    80005754:	f1c080e7          	jalr	-228(ra) # 8000466c <panic>

0000000080005758 <__memset>:
    80005758:	ff010113          	addi	sp,sp,-16
    8000575c:	00813423          	sd	s0,8(sp)
    80005760:	01010413          	addi	s0,sp,16
    80005764:	1a060e63          	beqz	a2,80005920 <__memset+0x1c8>
    80005768:	40a007b3          	neg	a5,a0
    8000576c:	0077f793          	andi	a5,a5,7
    80005770:	00778693          	addi	a3,a5,7
    80005774:	00b00813          	li	a6,11
    80005778:	0ff5f593          	andi	a1,a1,255
    8000577c:	fff6071b          	addiw	a4,a2,-1
    80005780:	1b06e663          	bltu	a3,a6,8000592c <__memset+0x1d4>
    80005784:	1cd76463          	bltu	a4,a3,8000594c <__memset+0x1f4>
    80005788:	1a078e63          	beqz	a5,80005944 <__memset+0x1ec>
    8000578c:	00b50023          	sb	a1,0(a0)
    80005790:	00100713          	li	a4,1
    80005794:	1ae78463          	beq	a5,a4,8000593c <__memset+0x1e4>
    80005798:	00b500a3          	sb	a1,1(a0)
    8000579c:	00200713          	li	a4,2
    800057a0:	1ae78a63          	beq	a5,a4,80005954 <__memset+0x1fc>
    800057a4:	00b50123          	sb	a1,2(a0)
    800057a8:	00300713          	li	a4,3
    800057ac:	18e78463          	beq	a5,a4,80005934 <__memset+0x1dc>
    800057b0:	00b501a3          	sb	a1,3(a0)
    800057b4:	00400713          	li	a4,4
    800057b8:	1ae78263          	beq	a5,a4,8000595c <__memset+0x204>
    800057bc:	00b50223          	sb	a1,4(a0)
    800057c0:	00500713          	li	a4,5
    800057c4:	1ae78063          	beq	a5,a4,80005964 <__memset+0x20c>
    800057c8:	00b502a3          	sb	a1,5(a0)
    800057cc:	00700713          	li	a4,7
    800057d0:	18e79e63          	bne	a5,a4,8000596c <__memset+0x214>
    800057d4:	00b50323          	sb	a1,6(a0)
    800057d8:	00700e93          	li	t4,7
    800057dc:	00859713          	slli	a4,a1,0x8
    800057e0:	00e5e733          	or	a4,a1,a4
    800057e4:	01059e13          	slli	t3,a1,0x10
    800057e8:	01c76e33          	or	t3,a4,t3
    800057ec:	01859313          	slli	t1,a1,0x18
    800057f0:	006e6333          	or	t1,t3,t1
    800057f4:	02059893          	slli	a7,a1,0x20
    800057f8:	40f60e3b          	subw	t3,a2,a5
    800057fc:	011368b3          	or	a7,t1,a7
    80005800:	02859813          	slli	a6,a1,0x28
    80005804:	0108e833          	or	a6,a7,a6
    80005808:	03059693          	slli	a3,a1,0x30
    8000580c:	003e589b          	srliw	a7,t3,0x3
    80005810:	00d866b3          	or	a3,a6,a3
    80005814:	03859713          	slli	a4,a1,0x38
    80005818:	00389813          	slli	a6,a7,0x3
    8000581c:	00f507b3          	add	a5,a0,a5
    80005820:	00e6e733          	or	a4,a3,a4
    80005824:	000e089b          	sext.w	a7,t3
    80005828:	00f806b3          	add	a3,a6,a5
    8000582c:	00e7b023          	sd	a4,0(a5)
    80005830:	00878793          	addi	a5,a5,8
    80005834:	fed79ce3          	bne	a5,a3,8000582c <__memset+0xd4>
    80005838:	ff8e7793          	andi	a5,t3,-8
    8000583c:	0007871b          	sext.w	a4,a5
    80005840:	01d787bb          	addw	a5,a5,t4
    80005844:	0ce88e63          	beq	a7,a4,80005920 <__memset+0x1c8>
    80005848:	00f50733          	add	a4,a0,a5
    8000584c:	00b70023          	sb	a1,0(a4)
    80005850:	0017871b          	addiw	a4,a5,1
    80005854:	0cc77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005858:	00e50733          	add	a4,a0,a4
    8000585c:	00b70023          	sb	a1,0(a4)
    80005860:	0027871b          	addiw	a4,a5,2
    80005864:	0ac77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005868:	00e50733          	add	a4,a0,a4
    8000586c:	00b70023          	sb	a1,0(a4)
    80005870:	0037871b          	addiw	a4,a5,3
    80005874:	0ac77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005878:	00e50733          	add	a4,a0,a4
    8000587c:	00b70023          	sb	a1,0(a4)
    80005880:	0047871b          	addiw	a4,a5,4
    80005884:	08c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005888:	00e50733          	add	a4,a0,a4
    8000588c:	00b70023          	sb	a1,0(a4)
    80005890:	0057871b          	addiw	a4,a5,5
    80005894:	08c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005898:	00e50733          	add	a4,a0,a4
    8000589c:	00b70023          	sb	a1,0(a4)
    800058a0:	0067871b          	addiw	a4,a5,6
    800058a4:	06c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058a8:	00e50733          	add	a4,a0,a4
    800058ac:	00b70023          	sb	a1,0(a4)
    800058b0:	0077871b          	addiw	a4,a5,7
    800058b4:	06c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058b8:	00e50733          	add	a4,a0,a4
    800058bc:	00b70023          	sb	a1,0(a4)
    800058c0:	0087871b          	addiw	a4,a5,8
    800058c4:	04c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058c8:	00e50733          	add	a4,a0,a4
    800058cc:	00b70023          	sb	a1,0(a4)
    800058d0:	0097871b          	addiw	a4,a5,9
    800058d4:	04c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058d8:	00e50733          	add	a4,a0,a4
    800058dc:	00b70023          	sb	a1,0(a4)
    800058e0:	00a7871b          	addiw	a4,a5,10
    800058e4:	02c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058e8:	00e50733          	add	a4,a0,a4
    800058ec:	00b70023          	sb	a1,0(a4)
    800058f0:	00b7871b          	addiw	a4,a5,11
    800058f4:	02c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058f8:	00e50733          	add	a4,a0,a4
    800058fc:	00b70023          	sb	a1,0(a4)
    80005900:	00c7871b          	addiw	a4,a5,12
    80005904:	00c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005908:	00e50733          	add	a4,a0,a4
    8000590c:	00b70023          	sb	a1,0(a4)
    80005910:	00d7879b          	addiw	a5,a5,13
    80005914:	00c7f663          	bgeu	a5,a2,80005920 <__memset+0x1c8>
    80005918:	00f507b3          	add	a5,a0,a5
    8000591c:	00b78023          	sb	a1,0(a5)
    80005920:	00813403          	ld	s0,8(sp)
    80005924:	01010113          	addi	sp,sp,16
    80005928:	00008067          	ret
    8000592c:	00b00693          	li	a3,11
    80005930:	e55ff06f          	j	80005784 <__memset+0x2c>
    80005934:	00300e93          	li	t4,3
    80005938:	ea5ff06f          	j	800057dc <__memset+0x84>
    8000593c:	00100e93          	li	t4,1
    80005940:	e9dff06f          	j	800057dc <__memset+0x84>
    80005944:	00000e93          	li	t4,0
    80005948:	e95ff06f          	j	800057dc <__memset+0x84>
    8000594c:	00000793          	li	a5,0
    80005950:	ef9ff06f          	j	80005848 <__memset+0xf0>
    80005954:	00200e93          	li	t4,2
    80005958:	e85ff06f          	j	800057dc <__memset+0x84>
    8000595c:	00400e93          	li	t4,4
    80005960:	e7dff06f          	j	800057dc <__memset+0x84>
    80005964:	00500e93          	li	t4,5
    80005968:	e75ff06f          	j	800057dc <__memset+0x84>
    8000596c:	00600e93          	li	t4,6
    80005970:	e6dff06f          	j	800057dc <__memset+0x84>

0000000080005974 <__memmove>:
    80005974:	ff010113          	addi	sp,sp,-16
    80005978:	00813423          	sd	s0,8(sp)
    8000597c:	01010413          	addi	s0,sp,16
    80005980:	0e060863          	beqz	a2,80005a70 <__memmove+0xfc>
    80005984:	fff6069b          	addiw	a3,a2,-1
    80005988:	0006881b          	sext.w	a6,a3
    8000598c:	0ea5e863          	bltu	a1,a0,80005a7c <__memmove+0x108>
    80005990:	00758713          	addi	a4,a1,7
    80005994:	00a5e7b3          	or	a5,a1,a0
    80005998:	40a70733          	sub	a4,a4,a0
    8000599c:	0077f793          	andi	a5,a5,7
    800059a0:	00f73713          	sltiu	a4,a4,15
    800059a4:	00174713          	xori	a4,a4,1
    800059a8:	0017b793          	seqz	a5,a5
    800059ac:	00e7f7b3          	and	a5,a5,a4
    800059b0:	10078863          	beqz	a5,80005ac0 <__memmove+0x14c>
    800059b4:	00900793          	li	a5,9
    800059b8:	1107f463          	bgeu	a5,a6,80005ac0 <__memmove+0x14c>
    800059bc:	0036581b          	srliw	a6,a2,0x3
    800059c0:	fff8081b          	addiw	a6,a6,-1
    800059c4:	02081813          	slli	a6,a6,0x20
    800059c8:	01d85893          	srli	a7,a6,0x1d
    800059cc:	00858813          	addi	a6,a1,8
    800059d0:	00058793          	mv	a5,a1
    800059d4:	00050713          	mv	a4,a0
    800059d8:	01088833          	add	a6,a7,a6
    800059dc:	0007b883          	ld	a7,0(a5)
    800059e0:	00878793          	addi	a5,a5,8
    800059e4:	00870713          	addi	a4,a4,8
    800059e8:	ff173c23          	sd	a7,-8(a4)
    800059ec:	ff0798e3          	bne	a5,a6,800059dc <__memmove+0x68>
    800059f0:	ff867713          	andi	a4,a2,-8
    800059f4:	02071793          	slli	a5,a4,0x20
    800059f8:	0207d793          	srli	a5,a5,0x20
    800059fc:	00f585b3          	add	a1,a1,a5
    80005a00:	40e686bb          	subw	a3,a3,a4
    80005a04:	00f507b3          	add	a5,a0,a5
    80005a08:	06e60463          	beq	a2,a4,80005a70 <__memmove+0xfc>
    80005a0c:	0005c703          	lbu	a4,0(a1)
    80005a10:	00e78023          	sb	a4,0(a5)
    80005a14:	04068e63          	beqz	a3,80005a70 <__memmove+0xfc>
    80005a18:	0015c603          	lbu	a2,1(a1)
    80005a1c:	00100713          	li	a4,1
    80005a20:	00c780a3          	sb	a2,1(a5)
    80005a24:	04e68663          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a28:	0025c603          	lbu	a2,2(a1)
    80005a2c:	00200713          	li	a4,2
    80005a30:	00c78123          	sb	a2,2(a5)
    80005a34:	02e68e63          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a38:	0035c603          	lbu	a2,3(a1)
    80005a3c:	00300713          	li	a4,3
    80005a40:	00c781a3          	sb	a2,3(a5)
    80005a44:	02e68663          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a48:	0045c603          	lbu	a2,4(a1)
    80005a4c:	00400713          	li	a4,4
    80005a50:	00c78223          	sb	a2,4(a5)
    80005a54:	00e68e63          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a58:	0055c603          	lbu	a2,5(a1)
    80005a5c:	00500713          	li	a4,5
    80005a60:	00c782a3          	sb	a2,5(a5)
    80005a64:	00e68663          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a68:	0065c703          	lbu	a4,6(a1)
    80005a6c:	00e78323          	sb	a4,6(a5)
    80005a70:	00813403          	ld	s0,8(sp)
    80005a74:	01010113          	addi	sp,sp,16
    80005a78:	00008067          	ret
    80005a7c:	02061713          	slli	a4,a2,0x20
    80005a80:	02075713          	srli	a4,a4,0x20
    80005a84:	00e587b3          	add	a5,a1,a4
    80005a88:	f0f574e3          	bgeu	a0,a5,80005990 <__memmove+0x1c>
    80005a8c:	02069613          	slli	a2,a3,0x20
    80005a90:	02065613          	srli	a2,a2,0x20
    80005a94:	fff64613          	not	a2,a2
    80005a98:	00e50733          	add	a4,a0,a4
    80005a9c:	00c78633          	add	a2,a5,a2
    80005aa0:	fff7c683          	lbu	a3,-1(a5)
    80005aa4:	fff78793          	addi	a5,a5,-1
    80005aa8:	fff70713          	addi	a4,a4,-1
    80005aac:	00d70023          	sb	a3,0(a4)
    80005ab0:	fec798e3          	bne	a5,a2,80005aa0 <__memmove+0x12c>
    80005ab4:	00813403          	ld	s0,8(sp)
    80005ab8:	01010113          	addi	sp,sp,16
    80005abc:	00008067          	ret
    80005ac0:	02069713          	slli	a4,a3,0x20
    80005ac4:	02075713          	srli	a4,a4,0x20
    80005ac8:	00170713          	addi	a4,a4,1
    80005acc:	00e50733          	add	a4,a0,a4
    80005ad0:	00050793          	mv	a5,a0
    80005ad4:	0005c683          	lbu	a3,0(a1)
    80005ad8:	00178793          	addi	a5,a5,1
    80005adc:	00158593          	addi	a1,a1,1
    80005ae0:	fed78fa3          	sb	a3,-1(a5)
    80005ae4:	fee798e3          	bne	a5,a4,80005ad4 <__memmove+0x160>
    80005ae8:	f89ff06f          	j	80005a70 <__memmove+0xfc>

0000000080005aec <__putc>:
    80005aec:	fe010113          	addi	sp,sp,-32
    80005af0:	00813823          	sd	s0,16(sp)
    80005af4:	00113c23          	sd	ra,24(sp)
    80005af8:	02010413          	addi	s0,sp,32
    80005afc:	00050793          	mv	a5,a0
    80005b00:	fef40593          	addi	a1,s0,-17
    80005b04:	00100613          	li	a2,1
    80005b08:	00000513          	li	a0,0
    80005b0c:	fef407a3          	sb	a5,-17(s0)
    80005b10:	fffff097          	auipc	ra,0xfffff
    80005b14:	b3c080e7          	jalr	-1220(ra) # 8000464c <console_write>
    80005b18:	01813083          	ld	ra,24(sp)
    80005b1c:	01013403          	ld	s0,16(sp)
    80005b20:	02010113          	addi	sp,sp,32
    80005b24:	00008067          	ret

0000000080005b28 <__getc>:
    80005b28:	fe010113          	addi	sp,sp,-32
    80005b2c:	00813823          	sd	s0,16(sp)
    80005b30:	00113c23          	sd	ra,24(sp)
    80005b34:	02010413          	addi	s0,sp,32
    80005b38:	fe840593          	addi	a1,s0,-24
    80005b3c:	00100613          	li	a2,1
    80005b40:	00000513          	li	a0,0
    80005b44:	fffff097          	auipc	ra,0xfffff
    80005b48:	ae8080e7          	jalr	-1304(ra) # 8000462c <console_read>
    80005b4c:	fe844503          	lbu	a0,-24(s0)
    80005b50:	01813083          	ld	ra,24(sp)
    80005b54:	01013403          	ld	s0,16(sp)
    80005b58:	02010113          	addi	sp,sp,32
    80005b5c:	00008067          	ret

0000000080005b60 <console_handler>:
    80005b60:	fe010113          	addi	sp,sp,-32
    80005b64:	00813823          	sd	s0,16(sp)
    80005b68:	00113c23          	sd	ra,24(sp)
    80005b6c:	00913423          	sd	s1,8(sp)
    80005b70:	02010413          	addi	s0,sp,32
    80005b74:	14202773          	csrr	a4,scause
    80005b78:	100027f3          	csrr	a5,sstatus
    80005b7c:	0027f793          	andi	a5,a5,2
    80005b80:	06079e63          	bnez	a5,80005bfc <console_handler+0x9c>
    80005b84:	00074c63          	bltz	a4,80005b9c <console_handler+0x3c>
    80005b88:	01813083          	ld	ra,24(sp)
    80005b8c:	01013403          	ld	s0,16(sp)
    80005b90:	00813483          	ld	s1,8(sp)
    80005b94:	02010113          	addi	sp,sp,32
    80005b98:	00008067          	ret
    80005b9c:	0ff77713          	andi	a4,a4,255
    80005ba0:	00900793          	li	a5,9
    80005ba4:	fef712e3          	bne	a4,a5,80005b88 <console_handler+0x28>
    80005ba8:	ffffe097          	auipc	ra,0xffffe
    80005bac:	6dc080e7          	jalr	1756(ra) # 80004284 <plic_claim>
    80005bb0:	00a00793          	li	a5,10
    80005bb4:	00050493          	mv	s1,a0
    80005bb8:	02f50c63          	beq	a0,a5,80005bf0 <console_handler+0x90>
    80005bbc:	fc0506e3          	beqz	a0,80005b88 <console_handler+0x28>
    80005bc0:	00050593          	mv	a1,a0
    80005bc4:	00000517          	auipc	a0,0x0
    80005bc8:	63c50513          	addi	a0,a0,1596 # 80006200 <CONSOLE_STATUS+0x1f0>
    80005bcc:	fffff097          	auipc	ra,0xfffff
    80005bd0:	afc080e7          	jalr	-1284(ra) # 800046c8 <__printf>
    80005bd4:	01013403          	ld	s0,16(sp)
    80005bd8:	01813083          	ld	ra,24(sp)
    80005bdc:	00048513          	mv	a0,s1
    80005be0:	00813483          	ld	s1,8(sp)
    80005be4:	02010113          	addi	sp,sp,32
    80005be8:	ffffe317          	auipc	t1,0xffffe
    80005bec:	6d430067          	jr	1748(t1) # 800042bc <plic_complete>
    80005bf0:	fffff097          	auipc	ra,0xfffff
    80005bf4:	3e0080e7          	jalr	992(ra) # 80004fd0 <uartintr>
    80005bf8:	fddff06f          	j	80005bd4 <console_handler+0x74>
    80005bfc:	00000517          	auipc	a0,0x0
    80005c00:	70450513          	addi	a0,a0,1796 # 80006300 <digits+0x78>
    80005c04:	fffff097          	auipc	ra,0xfffff
    80005c08:	a68080e7          	jalr	-1432(ra) # 8000466c <panic>
	...
