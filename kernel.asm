
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	21013103          	ld	sp,528(sp) # 80007210 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2e5030ef          	jal	ra,80003b00 <start>

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
    __asm__ volatile("mv a4, %0" : : [handle] "r"(handle));
    8000144c:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" : : [arg] "r"(arg));
    80001450:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : [start_routine] "r"(start_routine));
    80001454:	00058613          	mv	a2,a1
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
    800014d0:	dd478793          	addi	a5,a5,-556 # 800072a0 <_ZN5Queue5queueE>
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
    800014f0:	d3c7b783          	ld	a5,-708(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    800014f4:	0007b783          	ld	a5,0(a5)
    800014f8:	0c078a63          	beqz	a5,800015cc <_ZN5Queue3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    800014fc:	00006717          	auipc	a4,0x6
    80001500:	d2c73703          	ld	a4,-724(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    8000155c:	cd073703          	ld	a4,-816(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    800015b0:	c7c5b583          	ld	a1,-900(a1) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    800015d8:	cd473703          	ld	a4,-812(a4) # 800072a8 <_ZN5Queue5queueE+0x8>
    800015dc:	02070863          	beqz	a4,8000160c <_ZN5Queue3putEP3TCB+0x12c>
            tail->next=elem;
    800015e0:	00f73423          	sd	a5,8(a4)
            tail=elem;
    800015e4:	00006717          	auipc	a4,0x6
    800015e8:	ccf73223          	sd	a5,-828(a4) # 800072a8 <_ZN5Queue5queueE+0x8>
}
    800015ec:	00813403          	ld	s0,8(sp)
    800015f0:	01010113          	addi	sp,sp,16
    800015f4:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800015f8:	0c070693          	addi	a3,a4,192
    800015fc:	00006617          	auipc	a2,0x6
    80001600:	c2c63603          	ld	a2,-980(a2) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001604:	00d63023          	sd	a3,0(a2)
    80001608:	f79ff06f          	j	80001580 <_ZN5Queue3putEP3TCB+0xa0>
        }else{
            head=tail=elem;
    8000160c:	00006717          	auipc	a4,0x6
    80001610:	c9470713          	addi	a4,a4,-876 # 800072a0 <_ZN5Queue5queueE>
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
    80001638:	c6c53503          	ld	a0,-916(a0) # 800072a0 <_ZN5Queue5queueE>
    8000163c:	04050263          	beqz	a0,80001680 <_ZN5Queue3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    80001640:	00853783          	ld	a5,8(a0)
    80001644:	00006717          	auipc	a4,0x6
    80001648:	c4f73e23          	sd	a5,-932(a4) # 800072a0 <_ZN5Queue5queueE>
        if(!head) {
    8000164c:	02078463          	beqz	a5,80001674 <_ZN5Queue3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    80001650:	00053483          	ld	s1,0(a0)
        delete elem;
    80001654:	00002097          	auipc	ra,0x2
    80001658:	f80080e7          	jalr	-128(ra) # 800035d4 <_ZdlPv>
    }
    8000165c:	00048513          	mv	a0,s1
    80001660:	01813083          	ld	ra,24(sp)
    80001664:	01013403          	ld	s0,16(sp)
    80001668:	00813483          	ld	s1,8(sp)
    8000166c:	02010113          	addi	sp,sp,32
    80001670:	00008067          	ret
            tail = 0;
    80001674:	00006797          	auipc	a5,0x6
    80001678:	c207ba23          	sd	zero,-972(a5) # 800072a8 <_ZN5Queue5queueE+0x8>
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
    80001698:	c0c7b783          	ld	a5,-1012(a5) # 800072a0 <_ZN5Queue5queueE>
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
    8000171c:	fa010113          	addi	sp,sp,-96
    80001720:	04113c23          	sd	ra,88(sp)
    80001724:	04813823          	sd	s0,80(sp)
    80001728:	06010413          	addi	s0,sp,96
    volatile uint64 size;
    volatile uint64 handle;
    volatile uint64 start_routine;
    volatile uint64 arg;
    volatile uint64 ptr;
    __asm__ volatile("sd a4, %0" : "=m"(a4));
    8000172c:	fee43423          	sd	a4,-24(s0)
    __asm__ volatile("sd a3, %0" : "=m"(arg));
    80001730:	fcd43423          	sd	a3,-56(s0)
    __asm__ volatile("sd a2, %0" : "=m"(start_routine));
    80001734:	fcc43823          	sd	a2,-48(s0)
    __asm__ volatile("sd a1, %0" : "=m"(handle));
    80001738:	fcb43c23          	sd	a1,-40(s0)
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    8000173c:	142027f3          	csrr	a5,scause
    80001740:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001744:	fa843703          	ld	a4,-88(s0)

}

inline uint64 RiscV::r_sepc(){
    uint64  sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001748:	141027f3          	csrr	a5,sepc
    //__asm__ volatile("sd a1, %0" : "=m"(size));
    //__asm__ volatile("sd a1, %0" : "=m"(ptr));
    uint64 sysCallNr;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    8000174c:	00478793          	addi	a5,a5,4
    80001750:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64 sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80001754:	100027f3          	csrr	a5,sstatus
    volatile uint64 sstatus = r_sstatus();
    80001758:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    8000175c:	00050793          	mv	a5,a0
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
    80001760:	ff870613          	addi	a2,a4,-8
    80001764:	00100693          	li	a3,1
    80001768:	02c6f863          	bgeu	a3,a2,80001798 <_ZN5RiscV20handleSupervisorTrapEv+0x7c>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    8000176c:	fff00793          	li	a5,-1
    80001770:	03f79793          	slli	a5,a5,0x3f
    80001774:	00178793          	addi	a5,a5,1
    80001778:	40f70863          	beq	a4,a5,80001b88 <_ZN5RiscV20handleSupervisorTrapEv+0x46c>
//             TCB::dispatch();
//             w_sstatus(sstatus);
//             w_sepc(sepc);
//         }
        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    8000177c:	fff00793          	li	a5,-1
    80001780:	03f79793          	slli	a5,a5,0x3f
    80001784:	00978793          	addi	a5,a5,9
    80001788:	18f71e63          	bne	a4,a5,80001924 <_ZN5RiscV20handleSupervisorTrapEv+0x208>
        //supervisor external interrupt (console)
        console_handler();
    8000178c:	00004097          	auipc	ra,0x4
    80001790:	4a4080e7          	jalr	1188(ra) # 80005c30 <console_handler>
        //print (scause)
        //print sepc
        //print sval

    }
    80001794:	1900006f          	j	80001924 <_ZN5RiscV20handleSupervisorTrapEv+0x208>
        if (sysCallNr == 0x01UL) {
    80001798:	00100713          	li	a4,1
    8000179c:	06e78c63          	beq	a5,a4,80001814 <_ZN5RiscV20handleSupervisorTrapEv+0xf8>
        } else if (sysCallNr == 0x02UL) {
    800017a0:	00200713          	li	a4,2
    800017a4:	1ae78263          	beq	a5,a4,80001948 <_ZN5RiscV20handleSupervisorTrapEv+0x22c>
        }else if(sysCallNr == 0x11UL){
    800017a8:	01100713          	li	a4,17
    800017ac:	2ae78e63          	beq	a5,a4,80001a68 <_ZN5RiscV20handleSupervisorTrapEv+0x34c>
        }else if(sysCallNr == 0x12UL){
    800017b0:	01200713          	li	a4,18
    800017b4:	2ce78c63          	beq	a5,a4,80001a8c <_ZN5RiscV20handleSupervisorTrapEv+0x370>
        }else if(sysCallNr == 0x13UL){
    800017b8:	01300713          	li	a4,19
    800017bc:	30e78063          	beq	a5,a4,80001abc <_ZN5RiscV20handleSupervisorTrapEv+0x3a0>
        }else if(sysCallNr==0x14UL){
    800017c0:	01400713          	li	a4,20
    800017c4:	30e78263          	beq	a5,a4,80001ac8 <_ZN5RiscV20handleSupervisorTrapEv+0x3ac>
        }else if(sysCallNr==0x15UL){
    800017c8:	01500713          	li	a4,21
    800017cc:	32e78063          	beq	a5,a4,80001aec <_ZN5RiscV20handleSupervisorTrapEv+0x3d0>
        }else if(sysCallNr == 0x21UL){
    800017d0:	02100713          	li	a4,33
    800017d4:	32e78c63          	beq	a5,a4,80001b0c <_ZN5RiscV20handleSupervisorTrapEv+0x3f0>
        }else if(sysCallNr == 0x22UL){
    800017d8:	02200713          	li	a4,34
    800017dc:	34e78863          	beq	a5,a4,80001b2c <_ZN5RiscV20handleSupervisorTrapEv+0x410>
        }else if(sysCallNr == 0x23UL){
    800017e0:	02300713          	li	a4,35
    800017e4:	36e78063          	beq	a5,a4,80001b44 <_ZN5RiscV20handleSupervisorTrapEv+0x428>
        }else if(sysCallNr == 0x24UL){
    800017e8:	02400713          	li	a4,36
    800017ec:	36e78863          	beq	a5,a4,80001b5c <_ZN5RiscV20handleSupervisorTrapEv+0x440>
       }else if(sysCallNr==0x41UL){
    800017f0:	04100713          	li	a4,65
    800017f4:	38e78063          	beq	a5,a4,80001b74 <_ZN5RiscV20handleSupervisorTrapEv+0x458>
        }else if(sysCallNr==0x42UL){
    800017f8:	04200713          	li	a4,66
    800017fc:	10e79c63          	bne	a5,a4,80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            __putc((char)handle);
    80001800:	fd843503          	ld	a0,-40(s0)
    80001804:	0ff57513          	andi	a0,a0,255
    80001808:	00004097          	auipc	ra,0x4
    8000180c:	3b4080e7          	jalr	948(ra) # 80005bbc <__putc>
    80001810:	1040006f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
    80001814:	00058793          	mv	a5,a1
    80001818:	fef43023          	sd	a5,-32(s0)
            void* pointer=MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks((size_t)size)); //gore imas da pretvoris u bytes to blocks
    8000181c:	fe043783          	ld	a5,-32(s0)

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001820:	05778793          	addi	a5,a5,87
    80001824:	0067d793          	srli	a5,a5,0x6
    80001828:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    8000182c:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001830:	00006717          	auipc	a4,0x6
    80001834:	9f873703          	ld	a4,-1544(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001838:	00073703          	ld	a4,0(a4)
    8000183c:	0c070863          	beqz	a4,8000190c <_ZN5RiscV20handleSupervisorTrapEv+0x1f0>
            cur->next=fmem_head->next;
    80001840:	00006697          	auipc	a3,0x6
    80001844:	9e86b683          	ld	a3,-1560(a3) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001848:	0006b603          	ld	a2,0(a3)
    8000184c:	00063603          	ld	a2,0(a2)
    80001850:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    80001854:	0006b683          	ld	a3,0(a3)
    80001858:	0086b583          	ld	a1,8(a3)
    8000185c:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    80001860:	01073683          	ld	a3,16(a4)
    80001864:	02f6e663          	bltu	a3,a5,80001890 <_ZN5RiscV20handleSupervisorTrapEv+0x174>
            if (cur->size-size<=sizeof(FreeMem)){
    80001868:	40f686b3          	sub	a3,a3,a5
    8000186c:	01800513          	li	a0,24
    80001870:	02d56c63          	bltu	a0,a3,800018a8 <_ZN5RiscV20handleSupervisorTrapEv+0x18c>
                if (cur->prev) cur->prev->next = cur->next;
    80001874:	02058263          	beqz	a1,80001898 <_ZN5RiscV20handleSupervisorTrapEv+0x17c>
    80001878:	00c5b023          	sd	a2,0(a1)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    8000187c:	00073783          	ld	a5,0(a4)
    80001880:	08078663          	beqz	a5,8000190c <_ZN5RiscV20handleSupervisorTrapEv+0x1f0>
    80001884:	00873683          	ld	a3,8(a4)
    80001888:	00d7b423          	sd	a3,8(a5)
                return cur;
    8000188c:	0800006f          	j	8000190c <_ZN5RiscV20handleSupervisorTrapEv+0x1f0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001890:	00060713          	mv	a4,a2
    80001894:	fa9ff06f          	j	8000183c <_ZN5RiscV20handleSupervisorTrapEv+0x120>
                else fmem_head = cur->next;
    80001898:	00006797          	auipc	a5,0x6
    8000189c:	9907b783          	ld	a5,-1648(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018a0:	00c7b023          	sd	a2,0(a5)
    800018a4:	fd9ff06f          	j	8000187c <_ZN5RiscV20handleSupervisorTrapEv+0x160>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800018a8:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    800018ac:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    800018b0:	0006b023          	sd	zero,0(a3)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800018b4:	00873603          	ld	a2,8(a4)
    800018b8:	06060e63          	beqz	a2,80001934 <_ZN5RiscV20handleSupervisorTrapEv+0x218>
    800018bc:	00d63023          	sd	a3,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800018c0:	00073603          	ld	a2,0(a4)
    800018c4:	00060463          	beqz	a2,800018cc <_ZN5RiscV20handleSupervisorTrapEv+0x1b0>
    800018c8:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    800018cc:	00873603          	ld	a2,8(a4)
    800018d0:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    800018d4:	00073583          	ld	a1,0(a4)
    800018d8:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    800018dc:	01073703          	ld	a4,16(a4)
    800018e0:	40f707b3          	sub	a5,a4,a5
    800018e4:	00f6b823          	sd	a5,16(a3)
                fmem_head =newfrgm+sizeof(fmem_head);
    800018e8:	0c068713          	addi	a4,a3,192
    800018ec:	00006597          	auipc	a1,0x6
    800018f0:	93c5b583          	ld	a1,-1732(a1) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018f4:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    800018f8:	0006b583          	ld	a1,0(a3)
    800018fc:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    80001900:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    80001904:	0cf6b823          	sd	a5,208(a3)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001908:	00068713          	mv	a4,a3
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
    8000190c:	00070593          	mv	a1,a4
            __asm__ volatile("sd a1, 88(s0)");
    80001910:	04b43c23          	sd	a1,88(s0)
        w_sstatus(sstatus);
    80001914:	fb043783          	ld	a5,-80(s0)
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 volatile sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    80001918:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    8000191c:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    80001920:	14179073          	csrw	sepc,a5
    80001924:	05813083          	ld	ra,88(sp)
    80001928:	05013403          	ld	s0,80(sp)
    8000192c:	06010113          	addi	sp,sp,96
    80001930:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001934:	0c068613          	addi	a2,a3,192
    80001938:	00006597          	auipc	a1,0x6
    8000193c:	8f05b583          	ld	a1,-1808(a1) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001940:	00c5b023          	sd	a2,0(a1)
    80001944:	f7dff06f          	j	800018c0 <_ZN5RiscV20handleSupervisorTrapEv+0x1a4>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    80001948:	00058793          	mv	a5,a1
    8000194c:	fcf43023          	sd	a5,-64(s0)
            int ret=MemoryAllocation::mem_free((void*)ptr);
    80001950:	fc043703          	ld	a4,-64(s0)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001954:	00006797          	auipc	a5,0x6
    80001958:	8d47b783          	ld	a5,-1836(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000195c:	0007b783          	ld	a5,0(a5)
    80001960:	00078e63          	beqz	a5,8000197c <_ZN5RiscV20handleSupervisorTrapEv+0x260>
    80001964:	02f76063          	bltu	a4,a5,80001984 <_ZN5RiscV20handleSupervisorTrapEv+0x268>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001968:	00078693          	mv	a3,a5
    8000196c:	0007b783          	ld	a5,0(a5)
    80001970:	00f70c63          	beq	a4,a5,80001988 <_ZN5RiscV20handleSupervisorTrapEv+0x26c>
    80001974:	fee7eae3          	bltu	a5,a4,80001968 <_ZN5RiscV20handleSupervisorTrapEv+0x24c>
    80001978:	0100006f          	j	80001988 <_ZN5RiscV20handleSupervisorTrapEv+0x26c>
            cur=nullptr;
    8000197c:	00078693          	mv	a3,a5
    80001980:	0080006f          	j	80001988 <_ZN5RiscV20handleSupervisorTrapEv+0x26c>
    80001984:	00000693          	li	a3,0
                newSeg->next=nullptr;
    80001988:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    8000198c:	04000793          	li	a5,64
    80001990:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    80001994:	00d73423          	sd	a3,8(a4)
                if(cur) {
    80001998:	06068263          	beqz	a3,800019fc <_ZN5RiscV20handleSupervisorTrapEv+0x2e0>
                    newSeg->next = cur->next;
    8000199c:	0006b783          	ld	a5,0(a3)
    800019a0:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    800019a4:	00073783          	ld	a5,0(a4)
    800019a8:	00078463          	beqz	a5,800019b0 <_ZN5RiscV20handleSupervisorTrapEv+0x294>
                    newSeg->next->prev=newSeg;
    800019ac:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    800019b0:	06068063          	beqz	a3,80001a10 <_ZN5RiscV20handleSupervisorTrapEv+0x2f4>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800019b4:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    800019b8:	00070c63          	beqz	a4,800019d0 <_ZN5RiscV20handleSupervisorTrapEv+0x2b4>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800019bc:	00073783          	ld	a5,0(a4)
    800019c0:	00078863          	beqz	a5,800019d0 <_ZN5RiscV20handleSupervisorTrapEv+0x2b4>
    800019c4:	01073603          	ld	a2,16(a4)
    800019c8:	00c705b3          	add	a1,a4,a2
    800019cc:	04b78a63          	beq	a5,a1,80001a20 <_ZN5RiscV20handleSupervisorTrapEv+0x304>
        if (!curr) return;
    800019d0:	00068c63          	beqz	a3,800019e8 <_ZN5RiscV20handleSupervisorTrapEv+0x2cc>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800019d4:	0006b783          	ld	a5,0(a3)
    800019d8:	00078863          	beqz	a5,800019e8 <_ZN5RiscV20handleSupervisorTrapEv+0x2cc>
    800019dc:	0106b603          	ld	a2,16(a3)
    800019e0:	00c685b3          	add	a1,a3,a2
    800019e4:	04b78e63          	beq	a5,a1,80001a40 <_ZN5RiscV20handleSupervisorTrapEv+0x324>
            if(newSeg==nullptr){
    800019e8:	06070c63          	beqz	a4,80001a60 <_ZN5RiscV20handleSupervisorTrapEv+0x344>
            }else{return 0;}
    800019ec:	00000793          	li	a5,0
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
    800019f0:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
    800019f4:	04b43c23          	sd	a1,88(s0)
    800019f8:	f1dff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
                    newSeg->next = fmem_head;
    800019fc:	00006797          	auipc	a5,0x6
    80001a00:	82c7b783          	ld	a5,-2004(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a04:	0007b783          	ld	a5,0(a5)
    80001a08:	00f73023          	sd	a5,0(a4)
    80001a0c:	f99ff06f          	j	800019a4 <_ZN5RiscV20handleSupervisorTrapEv+0x288>
                    fmem_head = newSeg;
    80001a10:	00006797          	auipc	a5,0x6
    80001a14:	8187b783          	ld	a5,-2024(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a18:	00e7b023          	sd	a4,0(a5)
    80001a1c:	f9dff06f          	j	800019b8 <_ZN5RiscV20handleSupervisorTrapEv+0x29c>
            curr->size += curr->next->size;
    80001a20:	0107b583          	ld	a1,16(a5)
    80001a24:	00b60633          	add	a2,a2,a1
    80001a28:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    80001a2c:	0007b783          	ld	a5,0(a5)
    80001a30:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001a34:	f8078ee3          	beqz	a5,800019d0 <_ZN5RiscV20handleSupervisorTrapEv+0x2b4>
    80001a38:	00e7b423          	sd	a4,8(a5)
    80001a3c:	f95ff06f          	j	800019d0 <_ZN5RiscV20handleSupervisorTrapEv+0x2b4>
            curr->size += curr->next->size;
    80001a40:	0107b583          	ld	a1,16(a5)
    80001a44:	00b60633          	add	a2,a2,a1
    80001a48:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    80001a4c:	0007b783          	ld	a5,0(a5)
    80001a50:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    80001a54:	f8078ae3          	beqz	a5,800019e8 <_ZN5RiscV20handleSupervisorTrapEv+0x2cc>
    80001a58:	00d7b423          	sd	a3,8(a5)
    80001a5c:	f8dff06f          	j	800019e8 <_ZN5RiscV20handleSupervisorTrapEv+0x2cc>
                return -1;
    80001a60:	fff00793          	li	a5,-1
    80001a64:	f8dff06f          	j	800019f0 <_ZN5RiscV20handleSupervisorTrapEv+0x2d4>
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg, true);
    80001a68:	fd043503          	ld	a0,-48(s0)
    80001a6c:	fd843583          	ld	a1,-40(s0)
    80001a70:	fc843603          	ld	a2,-56(s0)
    80001a74:	00100693          	li	a3,1
    80001a78:	00001097          	auipc	ra,0x1
    80001a7c:	72c080e7          	jalr	1836(ra) # 800031a4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001a80:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001a84:	04b43c23          	sd	a1,88(s0)
    80001a88:	e8dff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
    static int createThread(Body body, TCB** handle, void* arguments, bool started);

    static void thread_dispatch(){dispatch();}

    static int thread_exit(){
        running->setFinished(true);
    80001a8c:	00100593          	li	a1,1
    80001a90:	00005797          	auipc	a5,0x5
    80001a94:	7a87b783          	ld	a5,1960(a5) # 80007238 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001a98:	0007b503          	ld	a0,0(a5)
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	6ec080e7          	jalr	1772(ra) # 80003188 <_ZN3TCB11setFinishedEb>
        dispatch();
    80001aa4:	00002097          	auipc	ra,0x2
    80001aa8:	a68080e7          	jalr	-1432(ra) # 8000350c <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    80001aac:	00000793          	li	a5,0
    80001ab0:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    80001ab4:	04b43c23          	sd	a1,88(s0)
    80001ab8:	e5dff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
    static void thread_dispatch(){dispatch();}
    80001abc:	00002097          	auipc	ra,0x2
    80001ac0:	a50080e7          	jalr	-1456(ra) # 8000350c <_ZN3TCB8dispatchEv>
    80001ac4:	e51ff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            int ret_val=TCB::createThread((TCB::Body)a4, (thread_t*) handle, (void*)arg, false);
    80001ac8:	fe843503          	ld	a0,-24(s0)
    80001acc:	fd843583          	ld	a1,-40(s0)
    80001ad0:	fc843603          	ld	a2,-56(s0)
    80001ad4:	00000693          	li	a3,0
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	6cc080e7          	jalr	1740(ra) # 800031a4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001ae0:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001ae4:	04b43c23          	sd	a1,88(s0)
    80001ae8:	e2dff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            TCB::startThread((thread_t*)handle);
    80001aec:	fd843783          	ld	a5,-40(s0)
        return threadStarted;
    }

    static void startThread(TCB** handle){ //mzd ne treba static
        //printString("udje u start klasu\n");
        (*handle)->threadStarted=true;
    80001af0:	0007b703          	ld	a4,0(a5)
    80001af4:	00100693          	li	a3,1
    80001af8:	04d70023          	sb	a3,64(a4)
        //printString("setuje started\n");
        Scheduler::put(*handle); //vidi nekako da startuje handle nad kojim pozivas, mada mislim da ce poziv izgledati handle->start
    80001afc:	0007b503          	ld	a0,0(a5)
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	450080e7          	jalr	1104(ra) # 80002f50 <_ZN9Scheduler3putEP3TCB>
       //printString("ubacuje u scheduler\n");
    }
    80001b08:	e0dff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            int retval = semaphore::semOpen((sem_t*)handle, (unsigned)start_routine);
    80001b0c:	fd843503          	ld	a0,-40(s0)
    80001b10:	fd043583          	ld	a1,-48(s0)
    80001b14:	0005859b          	sext.w	a1,a1
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	280080e7          	jalr	640(ra) # 80001d98 <_ZN9semaphore7semOpenEPPS_j>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b20:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b24:	04b43c23          	sd	a1,88(s0)
    80001b28:	dedff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            int retval = semaphore::semClose((sem_t)handle);
    80001b2c:	fd843503          	ld	a0,-40(s0)
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	488080e7          	jalr	1160(ra) # 80001fb8 <_ZN9semaphore8semCloseEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b38:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b3c:	04b43c23          	sd	a1,88(s0)
    80001b40:	dd5ff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            int retval = semaphore::semWait((sem_t)handle);
    80001b44:	fd843503          	ld	a0,-40(s0)
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	5bc080e7          	jalr	1468(ra) # 80002104 <_ZN9semaphore7semWaitEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b50:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b54:	04b43c23          	sd	a1,88(s0)
    80001b58:	dbdff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            int retval = semaphore::semSignal((sem_t)handle);
    80001b5c:	fd843503          	ld	a0,-40(s0)
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	5f8080e7          	jalr	1528(ra) # 80002158 <_ZN9semaphore9semSignalEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b68:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b6c:	04b43c23          	sd	a1,88(s0)
    80001b70:	da5ff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            char retval = __getc();
    80001b74:	00004097          	auipc	ra,0x4
    80001b78:	084080e7          	jalr	132(ra) # 80005bf8 <__getc>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b7c:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b80:	04b43c23          	sd	a1,88(s0)
    80001b84:	d91ff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001b88:	00200793          	li	a5,2
    80001b8c:	1447b073          	csrc	sip,a5
}
    80001b90:	d95ff06f          	j	80001924 <_ZN5RiscV20handleSupervisorTrapEv+0x208>

0000000080001b94 <_ZN9semaphore5blockEv>:
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"

void semaphore::block() {
    80001b94:	fe010113          	addi	sp,sp,-32
    80001b98:	00113c23          	sd	ra,24(sp)
    80001b9c:	00813823          	sd	s0,16(sp)
    80001ba0:	00913423          	sd	s1,8(sp)
    80001ba4:	01213023          	sd	s2,0(sp)
    80001ba8:	02010413          	addi	s0,sp,32
    80001bac:	00050913          	mv	s2,a0
        //setjmp je linija old=running;
        TCB *old = TCB::running;
    80001bb0:	00005797          	auipc	a5,0x5
    80001bb4:	6887b783          	ld	a5,1672(a5) # 80007238 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001bb8:	0007b483          	ld	s1,0(a5)
        old->semBlocked=this;
    80001bbc:	02a4b823          	sd	a0,48(s1)
        if (!old->isFinished()) {
    80001bc0:	00048513          	mv	a0,s1
    80001bc4:	00001097          	auipc	ra,0x1
    80001bc8:	5a8080e7          	jalr	1448(ra) # 8000316c <_ZNK3TCB10isFinishedEv>
    80001bcc:	04050063          	beqz	a0,80001c0c <_ZN9semaphore5blockEv+0x78>
            blocked->addLast(old);
        }
        TCB::running = Scheduler::get();
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	318080e7          	jalr	792(ra) # 80002ee8 <_ZN9Scheduler3getEv>
    80001bd8:	00005797          	auipc	a5,0x5
    80001bdc:	6607b783          	ld	a5,1632(a5) # 80007238 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001be0:	00a7b023          	sd	a0,0(a5)


        TCB::contextSwitch(&old->context, &TCB::running->context);//TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
    80001be4:	01050593          	addi	a1,a0,16
    80001be8:	01048513          	addi	a0,s1,16
    80001bec:	fffff097          	auipc	ra,0xfffff
    80001bf0:	644080e7          	jalr	1604(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
        //marinko kaze da je dobar ovaj block

        //TCB::running->semBlocked=this;
        //this->blocked->put(TCB::running);
        //TCB::dispatch();
}
    80001bf4:	01813083          	ld	ra,24(sp)
    80001bf8:	01013403          	ld	s0,16(sp)
    80001bfc:	00813483          	ld	s1,8(sp)
    80001c00:	00013903          	ld	s2,0(sp)
    80001c04:	02010113          	addi	sp,sp,32
    80001c08:	00008067          	ret
            blocked->addLast(old);
    80001c0c:	00893583          	ld	a1,8(s2)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001c10:	00005797          	auipc	a5,0x5
    80001c14:	6187b783          	ld	a5,1560(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c18:	0007b783          	ld	a5,0(a5)
    80001c1c:	0c078a63          	beqz	a5,80001cf0 <_ZN9semaphore5blockEv+0x15c>
            cur->next=fmem_head->next;
    80001c20:	00005717          	auipc	a4,0x5
    80001c24:	60873703          	ld	a4,1544(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c28:	00073683          	ld	a3,0(a4)
    80001c2c:	0006b683          	ld	a3,0(a3)
    80001c30:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001c34:	00073703          	ld	a4,0(a4)
    80001c38:	00873603          	ld	a2,8(a4)
    80001c3c:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001c40:	0107b703          	ld	a4,16(a5)
    80001c44:	03f00513          	li	a0,63
    80001c48:	02e57663          	bgeu	a0,a4,80001c74 <_ZN9semaphore5blockEv+0xe0>
            if (cur->size-size<=sizeof(FreeMem)){
    80001c4c:	fc070713          	addi	a4,a4,-64
    80001c50:	01800513          	li	a0,24
    80001c54:	02e56c63          	bltu	a0,a4,80001c8c <_ZN9semaphore5blockEv+0xf8>
                if (cur->prev) cur->prev->next = cur->next;
    80001c58:	02060263          	beqz	a2,80001c7c <_ZN9semaphore5blockEv+0xe8>
    80001c5c:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001c60:	0007b703          	ld	a4,0(a5)
    80001c64:	08070663          	beqz	a4,80001cf0 <_ZN9semaphore5blockEv+0x15c>
    80001c68:	0087b683          	ld	a3,8(a5)
    80001c6c:	00d73423          	sd	a3,8(a4)
                return cur;
    80001c70:	0800006f          	j	80001cf0 <_ZN9semaphore5blockEv+0x15c>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001c74:	00068793          	mv	a5,a3
    80001c78:	fa5ff06f          	j	80001c1c <_ZN9semaphore5blockEv+0x88>
                else fmem_head = cur->next;
    80001c7c:	00005717          	auipc	a4,0x5
    80001c80:	5ac73703          	ld	a4,1452(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c84:	00d73023          	sd	a3,0(a4)
    80001c88:	fd9ff06f          	j	80001c60 <_ZN9semaphore5blockEv+0xcc>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001c8c:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001c90:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001c94:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001c98:	0087b683          	ld	a3,8(a5)
    80001c9c:	06068863          	beqz	a3,80001d0c <_ZN9semaphore5blockEv+0x178>
    80001ca0:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001ca4:	0007b683          	ld	a3,0(a5)
    80001ca8:	00068463          	beqz	a3,80001cb0 <_ZN9semaphore5blockEv+0x11c>
    80001cac:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001cb0:	0087b603          	ld	a2,8(a5)
    80001cb4:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001cb8:	0007b683          	ld	a3,0(a5)
    80001cbc:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001cc0:	0107b783          	ld	a5,16(a5)
    80001cc4:	fc078793          	addi	a5,a5,-64
    80001cc8:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001ccc:	0c070693          	addi	a3,a4,192
    80001cd0:	00005517          	auipc	a0,0x5
    80001cd4:	55853503          	ld	a0,1368(a0) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cd8:	00d53023          	sd	a3,0(a0)
                fmem_head->next=newfrgm->next;
    80001cdc:	00073503          	ld	a0,0(a4)
    80001ce0:	0ca73023          	sd	a0,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001ce4:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001ce8:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001cec:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    80001cf0:	0097b023          	sd	s1,0(a5)
        elem->next=nullptr;
    80001cf4:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001cf8:	0085b703          	ld	a4,8(a1)
    80001cfc:	02070263          	beqz	a4,80001d20 <_ZN9semaphore5blockEv+0x18c>
            tail->next=elem;
    80001d00:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001d04:	00f5b423          	sd	a5,8(a1)
    80001d08:	ec9ff06f          	j	80001bd0 <_ZN9semaphore5blockEv+0x3c>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001d0c:	0c070693          	addi	a3,a4,192
    80001d10:	00005617          	auipc	a2,0x5
    80001d14:	51863603          	ld	a2,1304(a2) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001d18:	00d63023          	sd	a3,0(a2)
    80001d1c:	f89ff06f          	j	80001ca4 <_ZN9semaphore5blockEv+0x110>
        }else{
            head=tail=elem;
    80001d20:	00f5b423          	sd	a5,8(a1)
    80001d24:	00f5b023          	sd	a5,0(a1)
    80001d28:	ea9ff06f          	j	80001bd0 <_ZN9semaphore5blockEv+0x3c>

0000000080001d2c <_ZN9semaphore7unblockEv>:

void semaphore::unblock() {
    80001d2c:	fe010113          	addi	sp,sp,-32
    80001d30:	00113c23          	sd	ra,24(sp)
    80001d34:	00813823          	sd	s0,16(sp)
    80001d38:	00913423          	sd	s1,8(sp)
    80001d3c:	02010413          	addi	s0,sp,32
    TCB* t = blocked->removeFirst();
    80001d40:	00853783          	ld	a5,8(a0)
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001d44:	0007b503          	ld	a0,0(a5)
    80001d48:	04050463          	beqz	a0,80001d90 <_ZN9semaphore7unblockEv+0x64>
        Elem *elem = head;
        head = head->next;
    80001d4c:	00853703          	ld	a4,8(a0)
    80001d50:	00e7b023          	sd	a4,0(a5)
        if(!head) {
    80001d54:	02070a63          	beqz	a4,80001d88 <_ZN9semaphore7unblockEv+0x5c>
            tail = 0;
        }
        T* ret = elem->data;
    80001d58:	00053483          	ld	s1,0(a0)
        delete elem;
    80001d5c:	00002097          	auipc	ra,0x2
    80001d60:	878080e7          	jalr	-1928(ra) # 800035d4 <_ZdlPv>
    t->semBlocked=nullptr;
    80001d64:	0204b823          	sd	zero,48(s1)
    Scheduler::put(t);
    80001d68:	00048513          	mv	a0,s1
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	1e4080e7          	jalr	484(ra) # 80002f50 <_ZN9Scheduler3putEP3TCB>
}
    80001d74:	01813083          	ld	ra,24(sp)
    80001d78:	01013403          	ld	s0,16(sp)
    80001d7c:	00813483          	ld	s1,8(sp)
    80001d80:	02010113          	addi	sp,sp,32
    80001d84:	00008067          	ret
            tail = 0;
    80001d88:	0007b423          	sd	zero,8(a5)
    80001d8c:	fcdff06f          	j	80001d58 <_ZN9semaphore7unblockEv+0x2c>
        if (!head) {return 0;}
    80001d90:	00050493          	mv	s1,a0
    80001d94:	fd1ff06f          	j	80001d64 <_ZN9semaphore7unblockEv+0x38>

0000000080001d98 <_ZN9semaphore7semOpenEPPS_j>:

int semaphore::semOpen(semaphore **handle, unsigned init) {
    80001d98:	ff010113          	addi	sp,sp,-16
    80001d9c:	00813423          	sd	s0,8(sp)
    80001da0:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001da4:	00005797          	auipc	a5,0x5
    80001da8:	4847b783          	ld	a5,1156(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001dac:	0007b783          	ld	a5,0(a5)
    80001db0:	0c078a63          	beqz	a5,80001e84 <_ZN9semaphore7semOpenEPPS_j+0xec>
            cur->next=fmem_head->next;
    80001db4:	00005717          	auipc	a4,0x5
    80001db8:	47473703          	ld	a4,1140(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001dbc:	00073683          	ld	a3,0(a4)
    80001dc0:	0006b683          	ld	a3,0(a3)
    80001dc4:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001dc8:	00073703          	ld	a4,0(a4)
    80001dcc:	00873603          	ld	a2,8(a4)
    80001dd0:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001dd4:	0107b703          	ld	a4,16(a5)
    80001dd8:	03f00813          	li	a6,63
    80001ddc:	02e87663          	bgeu	a6,a4,80001e08 <_ZN9semaphore7semOpenEPPS_j+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001de0:	fc070713          	addi	a4,a4,-64
    80001de4:	01800813          	li	a6,24
    80001de8:	02e86c63          	bltu	a6,a4,80001e20 <_ZN9semaphore7semOpenEPPS_j+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001dec:	02060263          	beqz	a2,80001e10 <_ZN9semaphore7semOpenEPPS_j+0x78>
    80001df0:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001df4:	0007b703          	ld	a4,0(a5)
    80001df8:	08070663          	beqz	a4,80001e84 <_ZN9semaphore7semOpenEPPS_j+0xec>
    80001dfc:	0087b683          	ld	a3,8(a5)
    80001e00:	00d73423          	sd	a3,8(a4)
                return cur;
    80001e04:	0800006f          	j	80001e84 <_ZN9semaphore7semOpenEPPS_j+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001e08:	00068793          	mv	a5,a3
    80001e0c:	fa5ff06f          	j	80001db0 <_ZN9semaphore7semOpenEPPS_j+0x18>
                else fmem_head = cur->next;
    80001e10:	00005717          	auipc	a4,0x5
    80001e14:	41873703          	ld	a4,1048(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e18:	00d73023          	sd	a3,0(a4)
    80001e1c:	fd9ff06f          	j	80001df4 <_ZN9semaphore7semOpenEPPS_j+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001e20:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001e24:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001e28:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001e2c:	0087b683          	ld	a3,8(a5)
    80001e30:	0c068463          	beqz	a3,80001ef8 <_ZN9semaphore7semOpenEPPS_j+0x160>
    80001e34:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001e38:	0007b683          	ld	a3,0(a5)
    80001e3c:	00068463          	beqz	a3,80001e44 <_ZN9semaphore7semOpenEPPS_j+0xac>
    80001e40:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001e44:	0087b603          	ld	a2,8(a5)
    80001e48:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001e4c:	0007b683          	ld	a3,0(a5)
    80001e50:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001e54:	0107b783          	ld	a5,16(a5)
    80001e58:	fc078793          	addi	a5,a5,-64
    80001e5c:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001e60:	0c070693          	addi	a3,a4,192
    80001e64:	00005817          	auipc	a6,0x5
    80001e68:	3c483803          	ld	a6,964(a6) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e6c:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80001e70:	00073803          	ld	a6,0(a4)
    80001e74:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001e78:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001e7c:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001e80:	00070793          	mv	a5,a4
    *handle=(semaphore*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(semaphore)));
    80001e84:	00f53023          	sd	a5,0(a0)
    if (*handle==nullptr){
    80001e88:	12078463          	beqz	a5,80001fb0 <_ZN9semaphore7semOpenEPPS_j+0x218>
        return -1;
    }
    (*handle)->val=init;
    80001e8c:	00b7a023          	sw	a1,0(a5)
    (*handle)->blocked=(LinkedList<TCB>*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(LinkedList<TCB>)));
    80001e90:	00053503          	ld	a0,0(a0)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001e94:	00005797          	auipc	a5,0x5
    80001e98:	3947b783          	ld	a5,916(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e9c:	0007b783          	ld	a5,0(a5)
    80001ea0:	0e078463          	beqz	a5,80001f88 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
            cur->next=fmem_head->next;
    80001ea4:	00005717          	auipc	a4,0x5
    80001ea8:	38473703          	ld	a4,900(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001eac:	00073683          	ld	a3,0(a4)
    80001eb0:	0006b683          	ld	a3,0(a3)
    80001eb4:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001eb8:	00073703          	ld	a4,0(a4)
    80001ebc:	00873603          	ld	a2,8(a4)
    80001ec0:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001ec4:	0107b703          	ld	a4,16(a5)
    80001ec8:	03f00593          	li	a1,63
    80001ecc:	04e5f063          	bgeu	a1,a4,80001f0c <_ZN9semaphore7semOpenEPPS_j+0x174>
            if (cur->size-size<=sizeof(FreeMem)){
    80001ed0:	fc070713          	addi	a4,a4,-64
    80001ed4:	01800593          	li	a1,24
    80001ed8:	04e5e663          	bltu	a1,a4,80001f24 <_ZN9semaphore7semOpenEPPS_j+0x18c>
                if (cur->prev) cur->prev->next = cur->next;
    80001edc:	02060c63          	beqz	a2,80001f14 <_ZN9semaphore7semOpenEPPS_j+0x17c>
    80001ee0:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001ee4:	0007b703          	ld	a4,0(a5)
    80001ee8:	0a070063          	beqz	a4,80001f88 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
    80001eec:	0087b683          	ld	a3,8(a5)
    80001ef0:	00d73423          	sd	a3,8(a4)
                return cur;
    80001ef4:	0940006f          	j	80001f88 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001ef8:	0c070693          	addi	a3,a4,192
    80001efc:	00005617          	auipc	a2,0x5
    80001f00:	32c63603          	ld	a2,812(a2) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f04:	00d63023          	sd	a3,0(a2)
    80001f08:	f31ff06f          	j	80001e38 <_ZN9semaphore7semOpenEPPS_j+0xa0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001f0c:	00068793          	mv	a5,a3
    80001f10:	f91ff06f          	j	80001ea0 <_ZN9semaphore7semOpenEPPS_j+0x108>
                else fmem_head = cur->next;
    80001f14:	00005717          	auipc	a4,0x5
    80001f18:	31473703          	ld	a4,788(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f1c:	00d73023          	sd	a3,0(a4)
    80001f20:	fc5ff06f          	j	80001ee4 <_ZN9semaphore7semOpenEPPS_j+0x14c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001f24:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001f28:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001f2c:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001f30:	0087b683          	ld	a3,8(a5)
    80001f34:	06068463          	beqz	a3,80001f9c <_ZN9semaphore7semOpenEPPS_j+0x204>
    80001f38:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001f3c:	0007b683          	ld	a3,0(a5)
    80001f40:	00068463          	beqz	a3,80001f48 <_ZN9semaphore7semOpenEPPS_j+0x1b0>
    80001f44:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001f48:	0087b603          	ld	a2,8(a5)
    80001f4c:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001f50:	0007b683          	ld	a3,0(a5)
    80001f54:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001f58:	0107b783          	ld	a5,16(a5)
    80001f5c:	fc078793          	addi	a5,a5,-64
    80001f60:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001f64:	0c070693          	addi	a3,a4,192
    80001f68:	00005597          	auipc	a1,0x5
    80001f6c:	2c05b583          	ld	a1,704(a1) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f70:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001f74:	00073583          	ld	a1,0(a4)
    80001f78:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001f7c:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001f80:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001f84:	00070793          	mv	a5,a4
    80001f88:	00f53423          	sd	a5,8(a0)
    return  0;
    80001f8c:	00000513          	li	a0,0
}
    80001f90:	00813403          	ld	s0,8(sp)
    80001f94:	01010113          	addi	sp,sp,16
    80001f98:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001f9c:	0c070693          	addi	a3,a4,192
    80001fa0:	00005617          	auipc	a2,0x5
    80001fa4:	28863603          	ld	a2,648(a2) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001fa8:	00d63023          	sd	a3,0(a2)
    80001fac:	f91ff06f          	j	80001f3c <_ZN9semaphore7semOpenEPPS_j+0x1a4>
        return -1;
    80001fb0:	fff00513          	li	a0,-1
    80001fb4:	fddff06f          	j	80001f90 <_ZN9semaphore7semOpenEPPS_j+0x1f8>

0000000080001fb8 <_ZN9semaphore8semCloseEPS_>:

int semaphore::semClose(semaphore *semID) {
    80001fb8:	fe010113          	addi	sp,sp,-32
    80001fbc:	00113c23          	sd	ra,24(sp)
    80001fc0:	00813823          	sd	s0,16(sp)
    80001fc4:	00913423          	sd	s1,8(sp)
    80001fc8:	02010413          	addi	s0,sp,32
    80001fcc:	00050493          	mv	s1,a0
    while(((semID)->blocked->listEmpty())==false){
    80001fd0:	0084b783          	ld	a5,8(s1)
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    80001fd4:	0007b783          	ld	a5,0(a5)
    80001fd8:	00078e63          	beqz	a5,80001ff4 <_ZN9semaphore8semCloseEPS_+0x3c>
        return head->data;
    80001fdc:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    80001fe0:	00078a63          	beqz	a5,80001ff4 <_ZN9semaphore8semCloseEPS_+0x3c>
        (semID)->unblock();
    80001fe4:	00048513          	mv	a0,s1
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	d44080e7          	jalr	-700(ra) # 80001d2c <_ZN9semaphore7unblockEv>
    while(((semID)->blocked->listEmpty())==false){
    80001ff0:	fe1ff06f          	j	80001fd0 <_ZN9semaphore8semCloseEPS_+0x18>
        if(!fmem_head || ptr < (char*)fmem_head)
    80001ff4:	00005797          	auipc	a5,0x5
    80001ff8:	2347b783          	ld	a5,564(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001ffc:	0007b783          	ld	a5,0(a5)
    80002000:	00078e63          	beqz	a5,8000201c <_ZN9semaphore8semCloseEPS_+0x64>
    80002004:	02f4e063          	bltu	s1,a5,80002024 <_ZN9semaphore8semCloseEPS_+0x6c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002008:	00078713          	mv	a4,a5
    8000200c:	0007b783          	ld	a5,0(a5)
    80002010:	00f48c63          	beq	s1,a5,80002028 <_ZN9semaphore8semCloseEPS_+0x70>
    80002014:	fe97eae3          	bltu	a5,s1,80002008 <_ZN9semaphore8semCloseEPS_+0x50>
    80002018:	0100006f          	j	80002028 <_ZN9semaphore8semCloseEPS_+0x70>
            cur=nullptr;
    8000201c:	00078713          	mv	a4,a5
    80002020:	0080006f          	j	80002028 <_ZN9semaphore8semCloseEPS_+0x70>
    80002024:	00000713          	li	a4,0
                newSeg->next=nullptr;
    80002028:	0004b023          	sd	zero,0(s1)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    8000202c:	04000793          	li	a5,64
    80002030:	00f4b823          	sd	a5,16(s1)
                newSeg->prev=cur;
    80002034:	00e4b423          	sd	a4,8(s1)
                if(cur) {
    80002038:	06070463          	beqz	a4,800020a0 <_ZN9semaphore8semCloseEPS_+0xe8>
                    newSeg->next = cur->next;
    8000203c:	00073783          	ld	a5,0(a4)
    80002040:	00f4b023          	sd	a5,0(s1)
                if(newSeg->next) {
    80002044:	0004b783          	ld	a5,0(s1)
    80002048:	00078463          	beqz	a5,80002050 <_ZN9semaphore8semCloseEPS_+0x98>
                    newSeg->next->prev=newSeg;
    8000204c:	0097b423          	sd	s1,8(a5)
                if (cur) {
    80002050:	06070263          	beqz	a4,800020b4 <_ZN9semaphore8semCloseEPS_+0xfc>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002054:	00973023          	sd	s1,0(a4)
        if (!curr) return;
    80002058:	00048c63          	beqz	s1,80002070 <_ZN9semaphore8semCloseEPS_+0xb8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000205c:	0004b783          	ld	a5,0(s1)
    80002060:	00078863          	beqz	a5,80002070 <_ZN9semaphore8semCloseEPS_+0xb8>
    80002064:	0104b683          	ld	a3,16(s1)
    80002068:	00d48633          	add	a2,s1,a3
    8000206c:	04c78c63          	beq	a5,a2,800020c4 <_ZN9semaphore8semCloseEPS_+0x10c>
        if (!curr) return;
    80002070:	00070c63          	beqz	a4,80002088 <_ZN9semaphore8semCloseEPS_+0xd0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002074:	00073783          	ld	a5,0(a4)
    80002078:	00078863          	beqz	a5,80002088 <_ZN9semaphore8semCloseEPS_+0xd0>
    8000207c:	01073683          	ld	a3,16(a4)
    80002080:	00d70633          	add	a2,a4,a3
    80002084:	06c78063          	beq	a5,a2,800020e4 <_ZN9semaphore8semCloseEPS_+0x12c>
        //TODO wait treba da vrati gresku? Kako to?
    }
    MemoryAllocation::mem_free(semID); //TODO mozda moze i samo (*handle)=nullptr
    return 0;
}
    80002088:	00000513          	li	a0,0
    8000208c:	01813083          	ld	ra,24(sp)
    80002090:	01013403          	ld	s0,16(sp)
    80002094:	00813483          	ld	s1,8(sp)
    80002098:	02010113          	addi	sp,sp,32
    8000209c:	00008067          	ret
                    newSeg->next = fmem_head;
    800020a0:	00005797          	auipc	a5,0x5
    800020a4:	1887b783          	ld	a5,392(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020a8:	0007b783          	ld	a5,0(a5)
    800020ac:	00f4b023          	sd	a5,0(s1)
    800020b0:	f95ff06f          	j	80002044 <_ZN9semaphore8semCloseEPS_+0x8c>
                    fmem_head = newSeg;
    800020b4:	00005797          	auipc	a5,0x5
    800020b8:	1747b783          	ld	a5,372(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020bc:	0097b023          	sd	s1,0(a5)
    800020c0:	f99ff06f          	j	80002058 <_ZN9semaphore8semCloseEPS_+0xa0>
            curr->size += curr->next->size;
    800020c4:	0107b603          	ld	a2,16(a5)
    800020c8:	00c686b3          	add	a3,a3,a2
    800020cc:	00d4b823          	sd	a3,16(s1)
            curr->next = curr->next->next;
    800020d0:	0007b783          	ld	a5,0(a5)
    800020d4:	00f4b023          	sd	a5,0(s1)
            if (curr->next) curr->next->prev = curr;
    800020d8:	f8078ce3          	beqz	a5,80002070 <_ZN9semaphore8semCloseEPS_+0xb8>
    800020dc:	0097b423          	sd	s1,8(a5)
    800020e0:	f91ff06f          	j	80002070 <_ZN9semaphore8semCloseEPS_+0xb8>
            curr->size += curr->next->size;
    800020e4:	0107b603          	ld	a2,16(a5)
    800020e8:	00c686b3          	add	a3,a3,a2
    800020ec:	00d73823          	sd	a3,16(a4)
            curr->next = curr->next->next;
    800020f0:	0007b783          	ld	a5,0(a5)
    800020f4:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    800020f8:	f80788e3          	beqz	a5,80002088 <_ZN9semaphore8semCloseEPS_+0xd0>
    800020fc:	00e7b423          	sd	a4,8(a5)
    80002100:	f89ff06f          	j	80002088 <_ZN9semaphore8semCloseEPS_+0xd0>

0000000080002104 <_ZN9semaphore7semWaitEPS_>:

int semaphore::semWait(semaphore *semID) {
    if(semID == nullptr){return -1;}
    80002104:	04050663          	beqz	a0,80002150 <_ZN9semaphore7semWaitEPS_+0x4c>
    if((--((semID)->val))<0) { (semID)->block(); }
    80002108:	00052783          	lw	a5,0(a0)
    8000210c:	fff7879b          	addiw	a5,a5,-1
    80002110:	00f52023          	sw	a5,0(a0)
    80002114:	02079713          	slli	a4,a5,0x20
    80002118:	00074663          	bltz	a4,80002124 <_ZN9semaphore7semWaitEPS_+0x20>
    return 0;
    8000211c:	00000513          	li	a0,0
}
    80002120:	00008067          	ret
int semaphore::semWait(semaphore *semID) {
    80002124:	ff010113          	addi	sp,sp,-16
    80002128:	00113423          	sd	ra,8(sp)
    8000212c:	00813023          	sd	s0,0(sp)
    80002130:	01010413          	addi	s0,sp,16
    if((--((semID)->val))<0) { (semID)->block(); }
    80002134:	00000097          	auipc	ra,0x0
    80002138:	a60080e7          	jalr	-1440(ra) # 80001b94 <_ZN9semaphore5blockEv>
    return 0;
    8000213c:	00000513          	li	a0,0
}
    80002140:	00813083          	ld	ra,8(sp)
    80002144:	00013403          	ld	s0,0(sp)
    80002148:	01010113          	addi	sp,sp,16
    8000214c:	00008067          	ret
    if(semID == nullptr){return -1;}
    80002150:	fff00513          	li	a0,-1
    80002154:	00008067          	ret

0000000080002158 <_ZN9semaphore9semSignalEPS_>:

int semaphore::semSignal(semaphore *semID) {
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    80002158:	00052783          	lw	a5,0(a0)
    8000215c:	0017879b          	addiw	a5,a5,1
    80002160:	0007871b          	sext.w	a4,a5
    80002164:	00f52023          	sw	a5,0(a0)
    80002168:	00e05663          	blez	a4,80002174 <_ZN9semaphore9semSignalEPS_+0x1c>
    return 0;
}
    8000216c:	00000513          	li	a0,0
    80002170:	00008067          	ret
int semaphore::semSignal(semaphore *semID) {
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    80002184:	00000097          	auipc	ra,0x0
    80002188:	ba8080e7          	jalr	-1112(ra) # 80001d2c <_ZN9semaphore7unblockEv>
}
    8000218c:	00000513          	li	a0,0
    80002190:	00813083          	ld	ra,8(sp)
    80002194:	00013403          	ld	s0,0(sp)
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret

00000000800021a0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800021a0:	fe010113          	addi	sp,sp,-32
    800021a4:	00113c23          	sd	ra,24(sp)
    800021a8:	00813823          	sd	s0,16(sp)
    800021ac:	00913423          	sd	s1,8(sp)
    800021b0:	02010413          	addi	s0,sp,32
    800021b4:	00050493          	mv	s1,a0
    LOCK();
    800021b8:	00100613          	li	a2,1
    800021bc:	00000593          	li	a1,0
    800021c0:	00005517          	auipc	a0,0x5
    800021c4:	0f050513          	addi	a0,a0,240 # 800072b0 <lockPrint>
    800021c8:	fffff097          	auipc	ra,0xfffff
    800021cc:	f30080e7          	jalr	-208(ra) # 800010f8 <copy_and_swap>
    800021d0:	fe0514e3          	bnez	a0,800021b8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800021d4:	0004c503          	lbu	a0,0(s1)
    800021d8:	00050a63          	beqz	a0,800021ec <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800021dc:	fffff097          	auipc	ra,0xfffff
    800021e0:	23c080e7          	jalr	572(ra) # 80001418 <_Z4putcc>
        string++;
    800021e4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800021e8:	fedff06f          	j	800021d4 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800021ec:	00000613          	li	a2,0
    800021f0:	00100593          	li	a1,1
    800021f4:	00005517          	auipc	a0,0x5
    800021f8:	0bc50513          	addi	a0,a0,188 # 800072b0 <lockPrint>
    800021fc:	fffff097          	auipc	ra,0xfffff
    80002200:	efc080e7          	jalr	-260(ra) # 800010f8 <copy_and_swap>
    80002204:	fe0514e3          	bnez	a0,800021ec <_Z11printStringPKc+0x4c>
}
    80002208:	01813083          	ld	ra,24(sp)
    8000220c:	01013403          	ld	s0,16(sp)
    80002210:	00813483          	ld	s1,8(sp)
    80002214:	02010113          	addi	sp,sp,32
    80002218:	00008067          	ret

000000008000221c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000221c:	fd010113          	addi	sp,sp,-48
    80002220:	02113423          	sd	ra,40(sp)
    80002224:	02813023          	sd	s0,32(sp)
    80002228:	00913c23          	sd	s1,24(sp)
    8000222c:	01213823          	sd	s2,16(sp)
    80002230:	01313423          	sd	s3,8(sp)
    80002234:	01413023          	sd	s4,0(sp)
    80002238:	03010413          	addi	s0,sp,48
    8000223c:	00050993          	mv	s3,a0
    80002240:	00058a13          	mv	s4,a1
    LOCK();
    80002244:	00100613          	li	a2,1
    80002248:	00000593          	li	a1,0
    8000224c:	00005517          	auipc	a0,0x5
    80002250:	06450513          	addi	a0,a0,100 # 800072b0 <lockPrint>
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	ea4080e7          	jalr	-348(ra) # 800010f8 <copy_and_swap>
    8000225c:	fe0514e3          	bnez	a0,80002244 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002260:	00000913          	li	s2,0
    80002264:	00090493          	mv	s1,s2
    80002268:	0019091b          	addiw	s2,s2,1
    8000226c:	03495a63          	bge	s2,s4,800022a0 <_Z9getStringPci+0x84>
        cc = getc();
    80002270:	fffff097          	auipc	ra,0xfffff
    80002274:	17c080e7          	jalr	380(ra) # 800013ec <_Z4getcv>
        if(cc < 1)
    80002278:	02050463          	beqz	a0,800022a0 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    8000227c:	009984b3          	add	s1,s3,s1
    80002280:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002284:	00a00793          	li	a5,10
    80002288:	00f50a63          	beq	a0,a5,8000229c <_Z9getStringPci+0x80>
    8000228c:	00d00793          	li	a5,13
    80002290:	fcf51ae3          	bne	a0,a5,80002264 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002294:	00090493          	mv	s1,s2
    80002298:	0080006f          	j	800022a0 <_Z9getStringPci+0x84>
    8000229c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800022a0:	009984b3          	add	s1,s3,s1
    800022a4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800022a8:	00000613          	li	a2,0
    800022ac:	00100593          	li	a1,1
    800022b0:	00005517          	auipc	a0,0x5
    800022b4:	00050513          	mv	a0,a0
    800022b8:	fffff097          	auipc	ra,0xfffff
    800022bc:	e40080e7          	jalr	-448(ra) # 800010f8 <copy_and_swap>
    800022c0:	fe0514e3          	bnez	a0,800022a8 <_Z9getStringPci+0x8c>
    return buf;
}
    800022c4:	00098513          	mv	a0,s3
    800022c8:	02813083          	ld	ra,40(sp)
    800022cc:	02013403          	ld	s0,32(sp)
    800022d0:	01813483          	ld	s1,24(sp)
    800022d4:	01013903          	ld	s2,16(sp)
    800022d8:	00813983          	ld	s3,8(sp)
    800022dc:	00013a03          	ld	s4,0(sp)
    800022e0:	03010113          	addi	sp,sp,48
    800022e4:	00008067          	ret

00000000800022e8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813423          	sd	s0,8(sp)
    800022f0:	01010413          	addi	s0,sp,16
    800022f4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800022f8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800022fc:	0006c603          	lbu	a2,0(a3)
    80002300:	fd06071b          	addiw	a4,a2,-48
    80002304:	0ff77713          	andi	a4,a4,255
    80002308:	00900793          	li	a5,9
    8000230c:	02e7e063          	bltu	a5,a4,8000232c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002310:	0025179b          	slliw	a5,a0,0x2
    80002314:	00a787bb          	addw	a5,a5,a0
    80002318:	0017979b          	slliw	a5,a5,0x1
    8000231c:	00168693          	addi	a3,a3,1
    80002320:	00c787bb          	addw	a5,a5,a2
    80002324:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002328:	fd5ff06f          	j	800022fc <_Z11stringToIntPKc+0x14>
    return n;
}
    8000232c:	00813403          	ld	s0,8(sp)
    80002330:	01010113          	addi	sp,sp,16
    80002334:	00008067          	ret

0000000080002338 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002338:	fc010113          	addi	sp,sp,-64
    8000233c:	02113c23          	sd	ra,56(sp)
    80002340:	02813823          	sd	s0,48(sp)
    80002344:	02913423          	sd	s1,40(sp)
    80002348:	03213023          	sd	s2,32(sp)
    8000234c:	01313c23          	sd	s3,24(sp)
    80002350:	04010413          	addi	s0,sp,64
    80002354:	00050493          	mv	s1,a0
    80002358:	00058913          	mv	s2,a1
    8000235c:	00060993          	mv	s3,a2
    LOCK();
    80002360:	00100613          	li	a2,1
    80002364:	00000593          	li	a1,0
    80002368:	00005517          	auipc	a0,0x5
    8000236c:	f4850513          	addi	a0,a0,-184 # 800072b0 <lockPrint>
    80002370:	fffff097          	auipc	ra,0xfffff
    80002374:	d88080e7          	jalr	-632(ra) # 800010f8 <copy_and_swap>
    80002378:	fe0514e3          	bnez	a0,80002360 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000237c:	00098463          	beqz	s3,80002384 <_Z8printIntiii+0x4c>
    80002380:	0804c463          	bltz	s1,80002408 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002384:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002388:	00000593          	li	a1,0
    }

    i = 0;
    8000238c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002390:	0009079b          	sext.w	a5,s2
    80002394:	0325773b          	remuw	a4,a0,s2
    80002398:	00048613          	mv	a2,s1
    8000239c:	0014849b          	addiw	s1,s1,1
    800023a0:	02071693          	slli	a3,a4,0x20
    800023a4:	0206d693          	srli	a3,a3,0x20
    800023a8:	00005717          	auipc	a4,0x5
    800023ac:	d6870713          	addi	a4,a4,-664 # 80007110 <digits>
    800023b0:	00d70733          	add	a4,a4,a3
    800023b4:	00074683          	lbu	a3,0(a4)
    800023b8:	fd040713          	addi	a4,s0,-48
    800023bc:	00c70733          	add	a4,a4,a2
    800023c0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800023c4:	0005071b          	sext.w	a4,a0
    800023c8:	0325553b          	divuw	a0,a0,s2
    800023cc:	fcf772e3          	bgeu	a4,a5,80002390 <_Z8printIntiii+0x58>
    if(neg)
    800023d0:	00058c63          	beqz	a1,800023e8 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800023d4:	fd040793          	addi	a5,s0,-48
    800023d8:	009784b3          	add	s1,a5,s1
    800023dc:	02d00793          	li	a5,45
    800023e0:	fef48823          	sb	a5,-16(s1)
    800023e4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800023e8:	fff4849b          	addiw	s1,s1,-1
    800023ec:	0204c463          	bltz	s1,80002414 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800023f0:	fd040793          	addi	a5,s0,-48
    800023f4:	009787b3          	add	a5,a5,s1
    800023f8:	ff07c503          	lbu	a0,-16(a5)
    800023fc:	fffff097          	auipc	ra,0xfffff
    80002400:	01c080e7          	jalr	28(ra) # 80001418 <_Z4putcc>
    80002404:	fe5ff06f          	j	800023e8 <_Z8printIntiii+0xb0>
        x = -xx;
    80002408:	4090053b          	negw	a0,s1
        neg = 1;
    8000240c:	00100593          	li	a1,1
        x = -xx;
    80002410:	f7dff06f          	j	8000238c <_Z8printIntiii+0x54>

    UNLOCK();
    80002414:	00000613          	li	a2,0
    80002418:	00100593          	li	a1,1
    8000241c:	00005517          	auipc	a0,0x5
    80002420:	e9450513          	addi	a0,a0,-364 # 800072b0 <lockPrint>
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	cd4080e7          	jalr	-812(ra) # 800010f8 <copy_and_swap>
    8000242c:	fe0514e3          	bnez	a0,80002414 <_Z8printIntiii+0xdc>
    80002430:	03813083          	ld	ra,56(sp)
    80002434:	03013403          	ld	s0,48(sp)
    80002438:	02813483          	ld	s1,40(sp)
    8000243c:	02013903          	ld	s2,32(sp)
    80002440:	01813983          	ld	s3,24(sp)
    80002444:	04010113          	addi	sp,sp,64
    80002448:	00008067          	ret

000000008000244c <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    8000244c:	fe010113          	addi	sp,sp,-32
    80002450:	00113c23          	sd	ra,24(sp)
    80002454:	00813823          	sd	s0,16(sp)
    80002458:	00913423          	sd	s1,8(sp)
    8000245c:	01213023          	sd	s2,0(sp)
    80002460:	02010413          	addi	s0,sp,32
    80002464:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002468:	00100793          	li	a5,1
    8000246c:	02a7f863          	bgeu	a5,a0,8000249c <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002470:	00a00793          	li	a5,10
    80002474:	02f577b3          	remu	a5,a0,a5
    80002478:	02078e63          	beqz	a5,800024b4 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000247c:	fff48513          	addi	a0,s1,-1
    80002480:	00000097          	auipc	ra,0x0
    80002484:	fcc080e7          	jalr	-52(ra) # 8000244c <_Z9fibonaccim>
    80002488:	00050913          	mv	s2,a0
    8000248c:	ffe48513          	addi	a0,s1,-2
    80002490:	00000097          	auipc	ra,0x0
    80002494:	fbc080e7          	jalr	-68(ra) # 8000244c <_Z9fibonaccim>
    80002498:	00a90533          	add	a0,s2,a0
}
    8000249c:	01813083          	ld	ra,24(sp)
    800024a0:	01013403          	ld	s0,16(sp)
    800024a4:	00813483          	ld	s1,8(sp)
    800024a8:	00013903          	ld	s2,0(sp)
    800024ac:	02010113          	addi	sp,sp,32
    800024b0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	e50080e7          	jalr	-432(ra) # 80001304 <_Z15thread_dispatchv>
    800024bc:	fc1ff06f          	j	8000247c <_Z9fibonaccim+0x30>

00000000800024c0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800024c0:	fe010113          	addi	sp,sp,-32
    800024c4:	00113c23          	sd	ra,24(sp)
    800024c8:	00813823          	sd	s0,16(sp)
    800024cc:	00913423          	sd	s1,8(sp)
    800024d0:	01213023          	sd	s2,0(sp)
    800024d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800024d8:	00000913          	li	s2,0
    800024dc:	0380006f          	j	80002514 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800024e0:	fffff097          	auipc	ra,0xfffff
    800024e4:	e24080e7          	jalr	-476(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800024e8:	00148493          	addi	s1,s1,1
    800024ec:	000027b7          	lui	a5,0x2
    800024f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800024f4:	0097ee63          	bltu	a5,s1,80002510 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800024f8:	00000713          	li	a4,0
    800024fc:	000077b7          	lui	a5,0x7
    80002500:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002504:	fce7eee3          	bltu	a5,a4,800024e0 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002508:	00170713          	addi	a4,a4,1
    8000250c:	ff1ff06f          	j	800024fc <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002510:	00190913          	addi	s2,s2,1
    80002514:	00900793          	li	a5,9
    80002518:	0527e063          	bltu	a5,s2,80002558 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000251c:	00004517          	auipc	a0,0x4
    80002520:	b0450513          	addi	a0,a0,-1276 # 80006020 <CONSOLE_STATUS+0x10>
    80002524:	00000097          	auipc	ra,0x0
    80002528:	c7c080e7          	jalr	-900(ra) # 800021a0 <_Z11printStringPKc>
    8000252c:	00000613          	li	a2,0
    80002530:	00a00593          	li	a1,10
    80002534:	0009051b          	sext.w	a0,s2
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	e00080e7          	jalr	-512(ra) # 80002338 <_Z8printIntiii>
    80002540:	00004517          	auipc	a0,0x4
    80002544:	d3850513          	addi	a0,a0,-712 # 80006278 <CONSOLE_STATUS+0x268>
    80002548:	00000097          	auipc	ra,0x0
    8000254c:	c58080e7          	jalr	-936(ra) # 800021a0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002550:	00000493          	li	s1,0
    80002554:	f99ff06f          	j	800024ec <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002558:	00004517          	auipc	a0,0x4
    8000255c:	ad050513          	addi	a0,a0,-1328 # 80006028 <CONSOLE_STATUS+0x18>
    80002560:	00000097          	auipc	ra,0x0
    80002564:	c40080e7          	jalr	-960(ra) # 800021a0 <_Z11printStringPKc>
    finishedA = true;
    80002568:	00100793          	li	a5,1
    8000256c:	00005717          	auipc	a4,0x5
    80002570:	d4f70623          	sb	a5,-692(a4) # 800072b8 <finishedA>
}
    80002574:	01813083          	ld	ra,24(sp)
    80002578:	01013403          	ld	s0,16(sp)
    8000257c:	00813483          	ld	s1,8(sp)
    80002580:	00013903          	ld	s2,0(sp)
    80002584:	02010113          	addi	sp,sp,32
    80002588:	00008067          	ret

000000008000258c <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    8000258c:	fe010113          	addi	sp,sp,-32
    80002590:	00113c23          	sd	ra,24(sp)
    80002594:	00813823          	sd	s0,16(sp)
    80002598:	00913423          	sd	s1,8(sp)
    8000259c:	01213023          	sd	s2,0(sp)
    800025a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800025a4:	00000913          	li	s2,0
    800025a8:	0380006f          	j	800025e0 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800025ac:	fffff097          	auipc	ra,0xfffff
    800025b0:	d58080e7          	jalr	-680(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800025b4:	00148493          	addi	s1,s1,1
    800025b8:	000027b7          	lui	a5,0x2
    800025bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800025c0:	0097ee63          	bltu	a5,s1,800025dc <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800025c4:	00000713          	li	a4,0
    800025c8:	000077b7          	lui	a5,0x7
    800025cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800025d0:	fce7eee3          	bltu	a5,a4,800025ac <_ZN7WorkerB11workerBodyBEPv+0x20>
    800025d4:	00170713          	addi	a4,a4,1
    800025d8:	ff1ff06f          	j	800025c8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800025dc:	00190913          	addi	s2,s2,1
    800025e0:	00f00793          	li	a5,15
    800025e4:	0527e063          	bltu	a5,s2,80002624 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800025e8:	00004517          	auipc	a0,0x4
    800025ec:	a5050513          	addi	a0,a0,-1456 # 80006038 <CONSOLE_STATUS+0x28>
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	bb0080e7          	jalr	-1104(ra) # 800021a0 <_Z11printStringPKc>
    800025f8:	00000613          	li	a2,0
    800025fc:	00a00593          	li	a1,10
    80002600:	0009051b          	sext.w	a0,s2
    80002604:	00000097          	auipc	ra,0x0
    80002608:	d34080e7          	jalr	-716(ra) # 80002338 <_Z8printIntiii>
    8000260c:	00004517          	auipc	a0,0x4
    80002610:	c6c50513          	addi	a0,a0,-916 # 80006278 <CONSOLE_STATUS+0x268>
    80002614:	00000097          	auipc	ra,0x0
    80002618:	b8c080e7          	jalr	-1140(ra) # 800021a0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000261c:	00000493          	li	s1,0
    80002620:	f99ff06f          	j	800025b8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002624:	00004517          	auipc	a0,0x4
    80002628:	a1c50513          	addi	a0,a0,-1508 # 80006040 <CONSOLE_STATUS+0x30>
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	b74080e7          	jalr	-1164(ra) # 800021a0 <_Z11printStringPKc>
    finishedB = true;
    80002634:	00100793          	li	a5,1
    80002638:	00005717          	auipc	a4,0x5
    8000263c:	c8f700a3          	sb	a5,-895(a4) # 800072b9 <finishedB>
    thread_dispatch();
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	cc4080e7          	jalr	-828(ra) # 80001304 <_Z15thread_dispatchv>
}
    80002648:	01813083          	ld	ra,24(sp)
    8000264c:	01013403          	ld	s0,16(sp)
    80002650:	00813483          	ld	s1,8(sp)
    80002654:	00013903          	ld	s2,0(sp)
    80002658:	02010113          	addi	sp,sp,32
    8000265c:	00008067          	ret

0000000080002660 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002660:	fe010113          	addi	sp,sp,-32
    80002664:	00113c23          	sd	ra,24(sp)
    80002668:	00813823          	sd	s0,16(sp)
    8000266c:	00913423          	sd	s1,8(sp)
    80002670:	01213023          	sd	s2,0(sp)
    80002674:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002678:	00000493          	li	s1,0
    8000267c:	0400006f          	j	800026bc <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002680:	00004517          	auipc	a0,0x4
    80002684:	9d050513          	addi	a0,a0,-1584 # 80006050 <CONSOLE_STATUS+0x40>
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	b18080e7          	jalr	-1256(ra) # 800021a0 <_Z11printStringPKc>
    80002690:	00000613          	li	a2,0
    80002694:	00a00593          	li	a1,10
    80002698:	00048513          	mv	a0,s1
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	c9c080e7          	jalr	-868(ra) # 80002338 <_Z8printIntiii>
    800026a4:	00004517          	auipc	a0,0x4
    800026a8:	bd450513          	addi	a0,a0,-1068 # 80006278 <CONSOLE_STATUS+0x268>
    800026ac:	00000097          	auipc	ra,0x0
    800026b0:	af4080e7          	jalr	-1292(ra) # 800021a0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800026b4:	0014849b          	addiw	s1,s1,1
    800026b8:	0ff4f493          	andi	s1,s1,255
    800026bc:	00200793          	li	a5,2
    800026c0:	fc97f0e3          	bgeu	a5,s1,80002680 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800026c4:	00004517          	auipc	a0,0x4
    800026c8:	99450513          	addi	a0,a0,-1644 # 80006058 <CONSOLE_STATUS+0x48>
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	ad4080e7          	jalr	-1324(ra) # 800021a0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800026d4:	00700313          	li	t1,7
    thread_dispatch();
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	c2c080e7          	jalr	-980(ra) # 80001304 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800026e0:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800026e4:	00004517          	auipc	a0,0x4
    800026e8:	98450513          	addi	a0,a0,-1660 # 80006068 <CONSOLE_STATUS+0x58>
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	ab4080e7          	jalr	-1356(ra) # 800021a0 <_Z11printStringPKc>
    800026f4:	00000613          	li	a2,0
    800026f8:	00a00593          	li	a1,10
    800026fc:	0009051b          	sext.w	a0,s2
    80002700:	00000097          	auipc	ra,0x0
    80002704:	c38080e7          	jalr	-968(ra) # 80002338 <_Z8printIntiii>
    80002708:	00004517          	auipc	a0,0x4
    8000270c:	b7050513          	addi	a0,a0,-1168 # 80006278 <CONSOLE_STATUS+0x268>
    80002710:	00000097          	auipc	ra,0x0
    80002714:	a90080e7          	jalr	-1392(ra) # 800021a0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002718:	00c00513          	li	a0,12
    8000271c:	00000097          	auipc	ra,0x0
    80002720:	d30080e7          	jalr	-720(ra) # 8000244c <_Z9fibonaccim>
    80002724:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002728:	00004517          	auipc	a0,0x4
    8000272c:	94850513          	addi	a0,a0,-1720 # 80006070 <CONSOLE_STATUS+0x60>
    80002730:	00000097          	auipc	ra,0x0
    80002734:	a70080e7          	jalr	-1424(ra) # 800021a0 <_Z11printStringPKc>
    80002738:	00000613          	li	a2,0
    8000273c:	00a00593          	li	a1,10
    80002740:	0009051b          	sext.w	a0,s2
    80002744:	00000097          	auipc	ra,0x0
    80002748:	bf4080e7          	jalr	-1036(ra) # 80002338 <_Z8printIntiii>
    8000274c:	00004517          	auipc	a0,0x4
    80002750:	b2c50513          	addi	a0,a0,-1236 # 80006278 <CONSOLE_STATUS+0x268>
    80002754:	00000097          	auipc	ra,0x0
    80002758:	a4c080e7          	jalr	-1460(ra) # 800021a0 <_Z11printStringPKc>
    8000275c:	0400006f          	j	8000279c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002760:	00004517          	auipc	a0,0x4
    80002764:	8f050513          	addi	a0,a0,-1808 # 80006050 <CONSOLE_STATUS+0x40>
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	a38080e7          	jalr	-1480(ra) # 800021a0 <_Z11printStringPKc>
    80002770:	00000613          	li	a2,0
    80002774:	00a00593          	li	a1,10
    80002778:	00048513          	mv	a0,s1
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	bbc080e7          	jalr	-1092(ra) # 80002338 <_Z8printIntiii>
    80002784:	00004517          	auipc	a0,0x4
    80002788:	af450513          	addi	a0,a0,-1292 # 80006278 <CONSOLE_STATUS+0x268>
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	a14080e7          	jalr	-1516(ra) # 800021a0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002794:	0014849b          	addiw	s1,s1,1
    80002798:	0ff4f493          	andi	s1,s1,255
    8000279c:	00500793          	li	a5,5
    800027a0:	fc97f0e3          	bgeu	a5,s1,80002760 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800027a4:	00004517          	auipc	a0,0x4
    800027a8:	88450513          	addi	a0,a0,-1916 # 80006028 <CONSOLE_STATUS+0x18>
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	9f4080e7          	jalr	-1548(ra) # 800021a0 <_Z11printStringPKc>
    finishedC = true;
    800027b4:	00100793          	li	a5,1
    800027b8:	00005717          	auipc	a4,0x5
    800027bc:	b0f70123          	sb	a5,-1278(a4) # 800072ba <finishedC>
    thread_dispatch();
    800027c0:	fffff097          	auipc	ra,0xfffff
    800027c4:	b44080e7          	jalr	-1212(ra) # 80001304 <_Z15thread_dispatchv>
}
    800027c8:	01813083          	ld	ra,24(sp)
    800027cc:	01013403          	ld	s0,16(sp)
    800027d0:	00813483          	ld	s1,8(sp)
    800027d4:	00013903          	ld	s2,0(sp)
    800027d8:	02010113          	addi	sp,sp,32
    800027dc:	00008067          	ret

00000000800027e0 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800027e0:	fe010113          	addi	sp,sp,-32
    800027e4:	00113c23          	sd	ra,24(sp)
    800027e8:	00813823          	sd	s0,16(sp)
    800027ec:	00913423          	sd	s1,8(sp)
    800027f0:	01213023          	sd	s2,0(sp)
    800027f4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800027f8:	00a00493          	li	s1,10
    800027fc:	0400006f          	j	8000283c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002800:	00004517          	auipc	a0,0x4
    80002804:	88050513          	addi	a0,a0,-1920 # 80006080 <CONSOLE_STATUS+0x70>
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	998080e7          	jalr	-1640(ra) # 800021a0 <_Z11printStringPKc>
    80002810:	00000613          	li	a2,0
    80002814:	00a00593          	li	a1,10
    80002818:	00048513          	mv	a0,s1
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	b1c080e7          	jalr	-1252(ra) # 80002338 <_Z8printIntiii>
    80002824:	00004517          	auipc	a0,0x4
    80002828:	a5450513          	addi	a0,a0,-1452 # 80006278 <CONSOLE_STATUS+0x268>
    8000282c:	00000097          	auipc	ra,0x0
    80002830:	974080e7          	jalr	-1676(ra) # 800021a0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002834:	0014849b          	addiw	s1,s1,1
    80002838:	0ff4f493          	andi	s1,s1,255
    8000283c:	00c00793          	li	a5,12
    80002840:	fc97f0e3          	bgeu	a5,s1,80002800 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002844:	00004517          	auipc	a0,0x4
    80002848:	84450513          	addi	a0,a0,-1980 # 80006088 <CONSOLE_STATUS+0x78>
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	954080e7          	jalr	-1708(ra) # 800021a0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002854:	00500313          	li	t1,5
    thread_dispatch();
    80002858:	fffff097          	auipc	ra,0xfffff
    8000285c:	aac080e7          	jalr	-1364(ra) # 80001304 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002860:	01000513          	li	a0,16
    80002864:	00000097          	auipc	ra,0x0
    80002868:	be8080e7          	jalr	-1048(ra) # 8000244c <_Z9fibonaccim>
    8000286c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002870:	00004517          	auipc	a0,0x4
    80002874:	82850513          	addi	a0,a0,-2008 # 80006098 <CONSOLE_STATUS+0x88>
    80002878:	00000097          	auipc	ra,0x0
    8000287c:	928080e7          	jalr	-1752(ra) # 800021a0 <_Z11printStringPKc>
    80002880:	00000613          	li	a2,0
    80002884:	00a00593          	li	a1,10
    80002888:	0009051b          	sext.w	a0,s2
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	aac080e7          	jalr	-1364(ra) # 80002338 <_Z8printIntiii>
    80002894:	00004517          	auipc	a0,0x4
    80002898:	9e450513          	addi	a0,a0,-1564 # 80006278 <CONSOLE_STATUS+0x268>
    8000289c:	00000097          	auipc	ra,0x0
    800028a0:	904080e7          	jalr	-1788(ra) # 800021a0 <_Z11printStringPKc>
    800028a4:	0400006f          	j	800028e4 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800028a8:	00003517          	auipc	a0,0x3
    800028ac:	7d850513          	addi	a0,a0,2008 # 80006080 <CONSOLE_STATUS+0x70>
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	8f0080e7          	jalr	-1808(ra) # 800021a0 <_Z11printStringPKc>
    800028b8:	00000613          	li	a2,0
    800028bc:	00a00593          	li	a1,10
    800028c0:	00048513          	mv	a0,s1
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	a74080e7          	jalr	-1420(ra) # 80002338 <_Z8printIntiii>
    800028cc:	00004517          	auipc	a0,0x4
    800028d0:	9ac50513          	addi	a0,a0,-1620 # 80006278 <CONSOLE_STATUS+0x268>
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	8cc080e7          	jalr	-1844(ra) # 800021a0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800028dc:	0014849b          	addiw	s1,s1,1
    800028e0:	0ff4f493          	andi	s1,s1,255
    800028e4:	00f00793          	li	a5,15
    800028e8:	fc97f0e3          	bgeu	a5,s1,800028a8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800028ec:	00003517          	auipc	a0,0x3
    800028f0:	7bc50513          	addi	a0,a0,1980 # 800060a8 <CONSOLE_STATUS+0x98>
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	8ac080e7          	jalr	-1876(ra) # 800021a0 <_Z11printStringPKc>
    finishedD = true;
    800028fc:	00100793          	li	a5,1
    80002900:	00005717          	auipc	a4,0x5
    80002904:	9af70da3          	sb	a5,-1605(a4) # 800072bb <finishedD>
    thread_dispatch();
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	9fc080e7          	jalr	-1540(ra) # 80001304 <_Z15thread_dispatchv>
}
    80002910:	01813083          	ld	ra,24(sp)
    80002914:	01013403          	ld	s0,16(sp)
    80002918:	00813483          	ld	s1,8(sp)
    8000291c:	00013903          	ld	s2,0(sp)
    80002920:	02010113          	addi	sp,sp,32
    80002924:	00008067          	ret

0000000080002928 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002928:	fc010113          	addi	sp,sp,-64
    8000292c:	02113c23          	sd	ra,56(sp)
    80002930:	02813823          	sd	s0,48(sp)
    80002934:	02913423          	sd	s1,40(sp)
    80002938:	03213023          	sd	s2,32(sp)
    8000293c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002940:	01000513          	li	a0,16
    80002944:	00001097          	auipc	ra,0x1
    80002948:	c40080e7          	jalr	-960(ra) # 80003584 <_Znwm>
    8000294c:	00050493          	mv	s1,a0
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static void threadWrapper(void* arg);
protected:
    Thread (){
    80002950:	00005797          	auipc	a5,0x5
    80002954:	8e07b783          	ld	a5,-1824(a5) # 80007230 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002958:	01078793          	addi	a5,a5,16
    8000295c:	00f53023          	sd	a5,0(a0)
        //tu izleda da treba da dodas gornji konstruktor
        printString("pre wrappera");
    80002960:	00003517          	auipc	a0,0x3
    80002964:	75850513          	addi	a0,a0,1880 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	838080e7          	jalr	-1992(ra) # 800021a0 <_Z11printStringPKc>
        //threadWrapper(this); //todo uopste mi ne napravi handle
        //printString("posle wrappera");
        //Thread(threadWrapper(this), this); //todo mozda treba & ispred threadWrapper
        thread_create_cpp_api(&myHandle, threadWrapper, this);
    80002970:	00048613          	mv	a2,s1
    80002974:	00005597          	auipc	a1,0x5
    80002978:	8945b583          	ld	a1,-1900(a1) # 80007208 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000297c:	00848513          	addi	a0,s1,8
    80002980:	fffff097          	auipc	ra,0xfffff
    80002984:	ac0080e7          	jalr	-1344(ra) # 80001440 <_Z21thread_create_cpp_apiPP3TCBPFvPvES2_>
    WorkerA():Thread() {}
    80002988:	00004797          	auipc	a5,0x4
    8000298c:	7b078793          	addi	a5,a5,1968 # 80007138 <_ZTV7WorkerA+0x10>
    80002990:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002994:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002998:	00003517          	auipc	a0,0x3
    8000299c:	73050513          	addi	a0,a0,1840 # 800060c8 <CONSOLE_STATUS+0xb8>
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	800080e7          	jalr	-2048(ra) # 800021a0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800029a8:	01000513          	li	a0,16
    800029ac:	00001097          	auipc	ra,0x1
    800029b0:	bd8080e7          	jalr	-1064(ra) # 80003584 <_Znwm>
    800029b4:	00050493          	mv	s1,a0
    Thread (){
    800029b8:	00005797          	auipc	a5,0x5
    800029bc:	8787b783          	ld	a5,-1928(a5) # 80007230 <_GLOBAL_OFFSET_TABLE_+0x38>
    800029c0:	01078793          	addi	a5,a5,16
    800029c4:	00f53023          	sd	a5,0(a0)
        printString("pre wrappera");
    800029c8:	00003517          	auipc	a0,0x3
    800029cc:	6f050513          	addi	a0,a0,1776 # 800060b8 <CONSOLE_STATUS+0xa8>
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	7d0080e7          	jalr	2000(ra) # 800021a0 <_Z11printStringPKc>
        thread_create_cpp_api(&myHandle, threadWrapper, this);
    800029d8:	00048613          	mv	a2,s1
    800029dc:	00005597          	auipc	a1,0x5
    800029e0:	82c5b583          	ld	a1,-2004(a1) # 80007208 <_GLOBAL_OFFSET_TABLE_+0x10>
    800029e4:	00848513          	addi	a0,s1,8
    800029e8:	fffff097          	auipc	ra,0xfffff
    800029ec:	a58080e7          	jalr	-1448(ra) # 80001440 <_Z21thread_create_cpp_apiPP3TCBPFvPvES2_>
    WorkerB():Thread() {}
    800029f0:	00004797          	auipc	a5,0x4
    800029f4:	77078793          	addi	a5,a5,1904 # 80007160 <_ZTV7WorkerB+0x10>
    800029f8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800029fc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002a00:	00003517          	auipc	a0,0x3
    80002a04:	6e050513          	addi	a0,a0,1760 # 800060e0 <CONSOLE_STATUS+0xd0>
    80002a08:	fffff097          	auipc	ra,0xfffff
    80002a0c:	798080e7          	jalr	1944(ra) # 800021a0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002a10:	01000513          	li	a0,16
    80002a14:	00001097          	auipc	ra,0x1
    80002a18:	b70080e7          	jalr	-1168(ra) # 80003584 <_Znwm>
    80002a1c:	00050493          	mv	s1,a0
    Thread (){
    80002a20:	00005797          	auipc	a5,0x5
    80002a24:	8107b783          	ld	a5,-2032(a5) # 80007230 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a28:	01078793          	addi	a5,a5,16
    80002a2c:	00f53023          	sd	a5,0(a0)
        printString("pre wrappera");
    80002a30:	00003517          	auipc	a0,0x3
    80002a34:	68850513          	addi	a0,a0,1672 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002a38:	fffff097          	auipc	ra,0xfffff
    80002a3c:	768080e7          	jalr	1896(ra) # 800021a0 <_Z11printStringPKc>
        thread_create_cpp_api(&myHandle, threadWrapper, this);
    80002a40:	00048613          	mv	a2,s1
    80002a44:	00004597          	auipc	a1,0x4
    80002a48:	7c45b583          	ld	a1,1988(a1) # 80007208 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002a4c:	00848513          	addi	a0,s1,8
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	9f0080e7          	jalr	-1552(ra) # 80001440 <_Z21thread_create_cpp_apiPP3TCBPFvPvES2_>
    WorkerC():Thread() {}
    80002a58:	00004797          	auipc	a5,0x4
    80002a5c:	73078793          	addi	a5,a5,1840 # 80007188 <_ZTV7WorkerC+0x10>
    80002a60:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002a64:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002a68:	00003517          	auipc	a0,0x3
    80002a6c:	69050513          	addi	a0,a0,1680 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002a70:	fffff097          	auipc	ra,0xfffff
    80002a74:	730080e7          	jalr	1840(ra) # 800021a0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002a78:	01000513          	li	a0,16
    80002a7c:	00001097          	auipc	ra,0x1
    80002a80:	b08080e7          	jalr	-1272(ra) # 80003584 <_Znwm>
    80002a84:	00050493          	mv	s1,a0
    Thread (){
    80002a88:	00004797          	auipc	a5,0x4
    80002a8c:	7a87b783          	ld	a5,1960(a5) # 80007230 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a90:	01078793          	addi	a5,a5,16
    80002a94:	00f53023          	sd	a5,0(a0)
        printString("pre wrappera");
    80002a98:	00003517          	auipc	a0,0x3
    80002a9c:	62050513          	addi	a0,a0,1568 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	700080e7          	jalr	1792(ra) # 800021a0 <_Z11printStringPKc>
        thread_create_cpp_api(&myHandle, threadWrapper, this);
    80002aa8:	00048613          	mv	a2,s1
    80002aac:	00004597          	auipc	a1,0x4
    80002ab0:	75c5b583          	ld	a1,1884(a1) # 80007208 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ab4:	00848513          	addi	a0,s1,8
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	988080e7          	jalr	-1656(ra) # 80001440 <_Z21thread_create_cpp_apiPP3TCBPFvPvES2_>
    WorkerD():Thread() {}
    80002ac0:	00004797          	auipc	a5,0x4
    80002ac4:	6f078793          	addi	a5,a5,1776 # 800071b0 <_ZTV7WorkerD+0x10>
    80002ac8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002acc:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002ad0:	00003517          	auipc	a0,0x3
    80002ad4:	64050513          	addi	a0,a0,1600 # 80006110 <CONSOLE_STATUS+0x100>
    80002ad8:	fffff097          	auipc	ra,0xfffff
    80002adc:	6c8080e7          	jalr	1736(ra) # 800021a0 <_Z11printStringPKc>
    80002ae0:	00c0006f          	j	80002aec <_Z20Threads_CPP_API_testv+0x1c4>
//       threads[i]->start();
//       printString("startovao\n");
//   }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002ae4:	00001097          	auipc	ra,0x1
    80002ae8:	bbc080e7          	jalr	-1092(ra) # 800036a0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002aec:	00004797          	auipc	a5,0x4
    80002af0:	7cc7c783          	lbu	a5,1996(a5) # 800072b8 <finishedA>
    80002af4:	fe0788e3          	beqz	a5,80002ae4 <_Z20Threads_CPP_API_testv+0x1bc>
    80002af8:	00004797          	auipc	a5,0x4
    80002afc:	7c17c783          	lbu	a5,1985(a5) # 800072b9 <finishedB>
    80002b00:	fe0782e3          	beqz	a5,80002ae4 <_Z20Threads_CPP_API_testv+0x1bc>
    80002b04:	00004797          	auipc	a5,0x4
    80002b08:	7b67c783          	lbu	a5,1974(a5) # 800072ba <finishedC>
    80002b0c:	fc078ce3          	beqz	a5,80002ae4 <_Z20Threads_CPP_API_testv+0x1bc>
    80002b10:	00004797          	auipc	a5,0x4
    80002b14:	7ab7c783          	lbu	a5,1963(a5) # 800072bb <finishedD>
    80002b18:	fc0786e3          	beqz	a5,80002ae4 <_Z20Threads_CPP_API_testv+0x1bc>
    }

    for (auto thread: threads) { delete thread; }
    80002b1c:	fc040493          	addi	s1,s0,-64
    80002b20:	0080006f          	j	80002b28 <_Z20Threads_CPP_API_testv+0x200>
    80002b24:	00848493          	addi	s1,s1,8
    80002b28:	fe040793          	addi	a5,s0,-32
    80002b2c:	08f48663          	beq	s1,a5,80002bb8 <_Z20Threads_CPP_API_testv+0x290>
    80002b30:	0004b503          	ld	a0,0(s1)
    80002b34:	fe0508e3          	beqz	a0,80002b24 <_Z20Threads_CPP_API_testv+0x1fc>
    80002b38:	00053783          	ld	a5,0(a0)
    80002b3c:	0087b783          	ld	a5,8(a5)
    80002b40:	000780e7          	jalr	a5
    80002b44:	fe1ff06f          	j	80002b24 <_Z20Threads_CPP_API_testv+0x1fc>
    80002b48:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002b4c:	00048513          	mv	a0,s1
    80002b50:	00001097          	auipc	ra,0x1
    80002b54:	a84080e7          	jalr	-1404(ra) # 800035d4 <_ZdlPv>
    80002b58:	00090513          	mv	a0,s2
    80002b5c:	00006097          	auipc	ra,0x6
    80002b60:	85c080e7          	jalr	-1956(ra) # 800083b8 <_Unwind_Resume>
    80002b64:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002b68:	00048513          	mv	a0,s1
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	a68080e7          	jalr	-1432(ra) # 800035d4 <_ZdlPv>
    80002b74:	00090513          	mv	a0,s2
    80002b78:	00006097          	auipc	ra,0x6
    80002b7c:	840080e7          	jalr	-1984(ra) # 800083b8 <_Unwind_Resume>
    80002b80:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002b84:	00048513          	mv	a0,s1
    80002b88:	00001097          	auipc	ra,0x1
    80002b8c:	a4c080e7          	jalr	-1460(ra) # 800035d4 <_ZdlPv>
    80002b90:	00090513          	mv	a0,s2
    80002b94:	00006097          	auipc	ra,0x6
    80002b98:	824080e7          	jalr	-2012(ra) # 800083b8 <_Unwind_Resume>
    80002b9c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002ba0:	00048513          	mv	a0,s1
    80002ba4:	00001097          	auipc	ra,0x1
    80002ba8:	a30080e7          	jalr	-1488(ra) # 800035d4 <_ZdlPv>
    80002bac:	00090513          	mv	a0,s2
    80002bb0:	00006097          	auipc	ra,0x6
    80002bb4:	808080e7          	jalr	-2040(ra) # 800083b8 <_Unwind_Resume>
}
    80002bb8:	03813083          	ld	ra,56(sp)
    80002bbc:	03013403          	ld	s0,48(sp)
    80002bc0:	02813483          	ld	s1,40(sp)
    80002bc4:	02013903          	ld	s2,32(sp)
    80002bc8:	04010113          	addi	sp,sp,64
    80002bcc:	00008067          	ret

0000000080002bd0 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80002bd0:	ff010113          	addi	sp,sp,-16
    80002bd4:	00113423          	sd	ra,8(sp)
    80002bd8:	00813023          	sd	s0,0(sp)
    80002bdc:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	d48080e7          	jalr	-696(ra) # 80002928 <_Z20Threads_CPP_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80002be8:	00813083          	ld	ra,8(sp)
    80002bec:	00013403          	ld	s0,0(sp)
    80002bf0:	01010113          	addi	sp,sp,16
    80002bf4:	00008067          	ret

0000000080002bf8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002bf8:	ff010113          	addi	sp,sp,-16
    80002bfc:	00113423          	sd	ra,8(sp)
    80002c00:	00813023          	sd	s0,0(sp)
    80002c04:	01010413          	addi	s0,sp,16
    80002c08:	00004797          	auipc	a5,0x4
    80002c0c:	53078793          	addi	a5,a5,1328 # 80007138 <_ZTV7WorkerA+0x10>
    80002c10:	00f53023          	sd	a5,0(a0)
    80002c14:	00001097          	auipc	ra,0x1
    80002c18:	a10080e7          	jalr	-1520(ra) # 80003624 <_ZN6ThreadD1Ev>
    80002c1c:	00813083          	ld	ra,8(sp)
    80002c20:	00013403          	ld	s0,0(sp)
    80002c24:	01010113          	addi	sp,sp,16
    80002c28:	00008067          	ret

0000000080002c2c <_ZN7WorkerAD0Ev>:
    80002c2c:	fe010113          	addi	sp,sp,-32
    80002c30:	00113c23          	sd	ra,24(sp)
    80002c34:	00813823          	sd	s0,16(sp)
    80002c38:	00913423          	sd	s1,8(sp)
    80002c3c:	02010413          	addi	s0,sp,32
    80002c40:	00050493          	mv	s1,a0
    80002c44:	00004797          	auipc	a5,0x4
    80002c48:	4f478793          	addi	a5,a5,1268 # 80007138 <_ZTV7WorkerA+0x10>
    80002c4c:	00f53023          	sd	a5,0(a0)
    80002c50:	00001097          	auipc	ra,0x1
    80002c54:	9d4080e7          	jalr	-1580(ra) # 80003624 <_ZN6ThreadD1Ev>
    80002c58:	00048513          	mv	a0,s1
    80002c5c:	00001097          	auipc	ra,0x1
    80002c60:	978080e7          	jalr	-1672(ra) # 800035d4 <_ZdlPv>
    80002c64:	01813083          	ld	ra,24(sp)
    80002c68:	01013403          	ld	s0,16(sp)
    80002c6c:	00813483          	ld	s1,8(sp)
    80002c70:	02010113          	addi	sp,sp,32
    80002c74:	00008067          	ret

0000000080002c78 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002c78:	ff010113          	addi	sp,sp,-16
    80002c7c:	00113423          	sd	ra,8(sp)
    80002c80:	00813023          	sd	s0,0(sp)
    80002c84:	01010413          	addi	s0,sp,16
    80002c88:	00004797          	auipc	a5,0x4
    80002c8c:	4d878793          	addi	a5,a5,1240 # 80007160 <_ZTV7WorkerB+0x10>
    80002c90:	00f53023          	sd	a5,0(a0)
    80002c94:	00001097          	auipc	ra,0x1
    80002c98:	990080e7          	jalr	-1648(ra) # 80003624 <_ZN6ThreadD1Ev>
    80002c9c:	00813083          	ld	ra,8(sp)
    80002ca0:	00013403          	ld	s0,0(sp)
    80002ca4:	01010113          	addi	sp,sp,16
    80002ca8:	00008067          	ret

0000000080002cac <_ZN7WorkerBD0Ev>:
    80002cac:	fe010113          	addi	sp,sp,-32
    80002cb0:	00113c23          	sd	ra,24(sp)
    80002cb4:	00813823          	sd	s0,16(sp)
    80002cb8:	00913423          	sd	s1,8(sp)
    80002cbc:	02010413          	addi	s0,sp,32
    80002cc0:	00050493          	mv	s1,a0
    80002cc4:	00004797          	auipc	a5,0x4
    80002cc8:	49c78793          	addi	a5,a5,1180 # 80007160 <_ZTV7WorkerB+0x10>
    80002ccc:	00f53023          	sd	a5,0(a0)
    80002cd0:	00001097          	auipc	ra,0x1
    80002cd4:	954080e7          	jalr	-1708(ra) # 80003624 <_ZN6ThreadD1Ev>
    80002cd8:	00048513          	mv	a0,s1
    80002cdc:	00001097          	auipc	ra,0x1
    80002ce0:	8f8080e7          	jalr	-1800(ra) # 800035d4 <_ZdlPv>
    80002ce4:	01813083          	ld	ra,24(sp)
    80002ce8:	01013403          	ld	s0,16(sp)
    80002cec:	00813483          	ld	s1,8(sp)
    80002cf0:	02010113          	addi	sp,sp,32
    80002cf4:	00008067          	ret

0000000080002cf8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002cf8:	ff010113          	addi	sp,sp,-16
    80002cfc:	00113423          	sd	ra,8(sp)
    80002d00:	00813023          	sd	s0,0(sp)
    80002d04:	01010413          	addi	s0,sp,16
    80002d08:	00004797          	auipc	a5,0x4
    80002d0c:	48078793          	addi	a5,a5,1152 # 80007188 <_ZTV7WorkerC+0x10>
    80002d10:	00f53023          	sd	a5,0(a0)
    80002d14:	00001097          	auipc	ra,0x1
    80002d18:	910080e7          	jalr	-1776(ra) # 80003624 <_ZN6ThreadD1Ev>
    80002d1c:	00813083          	ld	ra,8(sp)
    80002d20:	00013403          	ld	s0,0(sp)
    80002d24:	01010113          	addi	sp,sp,16
    80002d28:	00008067          	ret

0000000080002d2c <_ZN7WorkerCD0Ev>:
    80002d2c:	fe010113          	addi	sp,sp,-32
    80002d30:	00113c23          	sd	ra,24(sp)
    80002d34:	00813823          	sd	s0,16(sp)
    80002d38:	00913423          	sd	s1,8(sp)
    80002d3c:	02010413          	addi	s0,sp,32
    80002d40:	00050493          	mv	s1,a0
    80002d44:	00004797          	auipc	a5,0x4
    80002d48:	44478793          	addi	a5,a5,1092 # 80007188 <_ZTV7WorkerC+0x10>
    80002d4c:	00f53023          	sd	a5,0(a0)
    80002d50:	00001097          	auipc	ra,0x1
    80002d54:	8d4080e7          	jalr	-1836(ra) # 80003624 <_ZN6ThreadD1Ev>
    80002d58:	00048513          	mv	a0,s1
    80002d5c:	00001097          	auipc	ra,0x1
    80002d60:	878080e7          	jalr	-1928(ra) # 800035d4 <_ZdlPv>
    80002d64:	01813083          	ld	ra,24(sp)
    80002d68:	01013403          	ld	s0,16(sp)
    80002d6c:	00813483          	ld	s1,8(sp)
    80002d70:	02010113          	addi	sp,sp,32
    80002d74:	00008067          	ret

0000000080002d78 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002d78:	ff010113          	addi	sp,sp,-16
    80002d7c:	00113423          	sd	ra,8(sp)
    80002d80:	00813023          	sd	s0,0(sp)
    80002d84:	01010413          	addi	s0,sp,16
    80002d88:	00004797          	auipc	a5,0x4
    80002d8c:	42878793          	addi	a5,a5,1064 # 800071b0 <_ZTV7WorkerD+0x10>
    80002d90:	00f53023          	sd	a5,0(a0)
    80002d94:	00001097          	auipc	ra,0x1
    80002d98:	890080e7          	jalr	-1904(ra) # 80003624 <_ZN6ThreadD1Ev>
    80002d9c:	00813083          	ld	ra,8(sp)
    80002da0:	00013403          	ld	s0,0(sp)
    80002da4:	01010113          	addi	sp,sp,16
    80002da8:	00008067          	ret

0000000080002dac <_ZN7WorkerDD0Ev>:
    80002dac:	fe010113          	addi	sp,sp,-32
    80002db0:	00113c23          	sd	ra,24(sp)
    80002db4:	00813823          	sd	s0,16(sp)
    80002db8:	00913423          	sd	s1,8(sp)
    80002dbc:	02010413          	addi	s0,sp,32
    80002dc0:	00050493          	mv	s1,a0
    80002dc4:	00004797          	auipc	a5,0x4
    80002dc8:	3ec78793          	addi	a5,a5,1004 # 800071b0 <_ZTV7WorkerD+0x10>
    80002dcc:	00f53023          	sd	a5,0(a0)
    80002dd0:	00001097          	auipc	ra,0x1
    80002dd4:	854080e7          	jalr	-1964(ra) # 80003624 <_ZN6ThreadD1Ev>
    80002dd8:	00048513          	mv	a0,s1
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	7f8080e7          	jalr	2040(ra) # 800035d4 <_ZdlPv>
    80002de4:	01813083          	ld	ra,24(sp)
    80002de8:	01013403          	ld	s0,16(sp)
    80002dec:	00813483          	ld	s1,8(sp)
    80002df0:	02010113          	addi	sp,sp,32
    80002df4:	00008067          	ret

0000000080002df8 <_ZN7WorkerA3runEv>:
    void run() override {
    80002df8:	ff010113          	addi	sp,sp,-16
    80002dfc:	00113423          	sd	ra,8(sp)
    80002e00:	00813023          	sd	s0,0(sp)
    80002e04:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002e08:	00000593          	li	a1,0
    80002e0c:	fffff097          	auipc	ra,0xfffff
    80002e10:	6b4080e7          	jalr	1716(ra) # 800024c0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80002e14:	00813083          	ld	ra,8(sp)
    80002e18:	00013403          	ld	s0,0(sp)
    80002e1c:	01010113          	addi	sp,sp,16
    80002e20:	00008067          	ret

0000000080002e24 <_ZN7WorkerB3runEv>:
    void run() override {
    80002e24:	ff010113          	addi	sp,sp,-16
    80002e28:	00113423          	sd	ra,8(sp)
    80002e2c:	00813023          	sd	s0,0(sp)
    80002e30:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002e34:	00000593          	li	a1,0
    80002e38:	fffff097          	auipc	ra,0xfffff
    80002e3c:	754080e7          	jalr	1876(ra) # 8000258c <_ZN7WorkerB11workerBodyBEPv>
    }
    80002e40:	00813083          	ld	ra,8(sp)
    80002e44:	00013403          	ld	s0,0(sp)
    80002e48:	01010113          	addi	sp,sp,16
    80002e4c:	00008067          	ret

0000000080002e50 <_ZN7WorkerC3runEv>:
    void run() override {
    80002e50:	ff010113          	addi	sp,sp,-16
    80002e54:	00113423          	sd	ra,8(sp)
    80002e58:	00813023          	sd	s0,0(sp)
    80002e5c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80002e60:	00000593          	li	a1,0
    80002e64:	fffff097          	auipc	ra,0xfffff
    80002e68:	7fc080e7          	jalr	2044(ra) # 80002660 <_ZN7WorkerC11workerBodyCEPv>
    }
    80002e6c:	00813083          	ld	ra,8(sp)
    80002e70:	00013403          	ld	s0,0(sp)
    80002e74:	01010113          	addi	sp,sp,16
    80002e78:	00008067          	ret

0000000080002e7c <_ZN7WorkerD3runEv>:
    void run() override {
    80002e7c:	ff010113          	addi	sp,sp,-16
    80002e80:	00113423          	sd	ra,8(sp)
    80002e84:	00813023          	sd	s0,0(sp)
    80002e88:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002e8c:	00000593          	li	a1,0
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	950080e7          	jalr	-1712(ra) # 800027e0 <_ZN7WorkerD11workerBodyDEPv>
    }
    80002e98:	00813083          	ld	ra,8(sp)
    80002e9c:	00013403          	ld	s0,0(sp)
    80002ea0:	01010113          	addi	sp,sp,16
    80002ea4:	00008067          	ret

0000000080002ea8 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80002ea8:	ff010113          	addi	sp,sp,-16
    80002eac:	00813423          	sd	s0,8(sp)
    80002eb0:	01010413          	addi	s0,sp,16
    80002eb4:	00100793          	li	a5,1
    80002eb8:	00f50863          	beq	a0,a5,80002ec8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002ebc:	00813403          	ld	s0,8(sp)
    80002ec0:	01010113          	addi	sp,sp,16
    80002ec4:	00008067          	ret
    80002ec8:	000107b7          	lui	a5,0x10
    80002ecc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002ed0:	fef596e3          	bne	a1,a5,80002ebc <_Z41__static_initialization_and_destruction_0ii+0x14>
    LinkedList() : head(0), tail(0) {}
    80002ed4:	00004797          	auipc	a5,0x4
    80002ed8:	3ec78793          	addi	a5,a5,1004 # 800072c0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002edc:	0007b023          	sd	zero,0(a5)
    80002ee0:	0007b423          	sd	zero,8(a5)
    80002ee4:	fd9ff06f          	j	80002ebc <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002ee8 <_ZN9Scheduler3getEv>:
{
    80002ee8:	fe010113          	addi	sp,sp,-32
    80002eec:	00113c23          	sd	ra,24(sp)
    80002ef0:	00813823          	sd	s0,16(sp)
    80002ef4:	00913423          	sd	s1,8(sp)
    80002ef8:	02010413          	addi	s0,sp,32
        if (!head) {return 0;}
    80002efc:	00004517          	auipc	a0,0x4
    80002f00:	3c453503          	ld	a0,964(a0) # 800072c0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002f04:	04050263          	beqz	a0,80002f48 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002f08:	00853783          	ld	a5,8(a0)
    80002f0c:	00004717          	auipc	a4,0x4
    80002f10:	3af73a23          	sd	a5,948(a4) # 800072c0 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80002f14:	02078463          	beqz	a5,80002f3c <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    80002f18:	00053483          	ld	s1,0(a0)
        delete elem;
    80002f1c:	00000097          	auipc	ra,0x0
    80002f20:	6b8080e7          	jalr	1720(ra) # 800035d4 <_ZdlPv>
}
    80002f24:	00048513          	mv	a0,s1
    80002f28:	01813083          	ld	ra,24(sp)
    80002f2c:	01013403          	ld	s0,16(sp)
    80002f30:	00813483          	ld	s1,8(sp)
    80002f34:	02010113          	addi	sp,sp,32
    80002f38:	00008067          	ret
            tail = 0;
    80002f3c:	00004797          	auipc	a5,0x4
    80002f40:	3807b623          	sd	zero,908(a5) # 800072c8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002f44:	fd5ff06f          	j	80002f18 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80002f48:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002f4c:	fd9ff06f          	j	80002f24 <_ZN9Scheduler3getEv+0x3c>

0000000080002f50 <_ZN9Scheduler3putEP3TCB>:
{
    80002f50:	ff010113          	addi	sp,sp,-16
    80002f54:	00813423          	sd	s0,8(sp)
    80002f58:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002f5c:	00004797          	auipc	a5,0x4
    80002f60:	2cc7b783          	ld	a5,716(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f64:	0007b783          	ld	a5,0(a5)
    80002f68:	0c078a63          	beqz	a5,8000303c <_ZN9Scheduler3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80002f6c:	00004717          	auipc	a4,0x4
    80002f70:	2bc73703          	ld	a4,700(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f74:	00073683          	ld	a3,0(a4)
    80002f78:	0006b683          	ld	a3,0(a3)
    80002f7c:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80002f80:	00073703          	ld	a4,0(a4)
    80002f84:	00873603          	ld	a2,8(a4)
    80002f88:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80002f8c:	0107b703          	ld	a4,16(a5)
    80002f90:	03f00593          	li	a1,63
    80002f94:	02e5f663          	bgeu	a1,a4,80002fc0 <_ZN9Scheduler3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80002f98:	fc070713          	addi	a4,a4,-64
    80002f9c:	01800593          	li	a1,24
    80002fa0:	02e5ec63          	bltu	a1,a4,80002fd8 <_ZN9Scheduler3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80002fa4:	02060263          	beqz	a2,80002fc8 <_ZN9Scheduler3putEP3TCB+0x78>
    80002fa8:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80002fac:	0007b703          	ld	a4,0(a5)
    80002fb0:	08070663          	beqz	a4,8000303c <_ZN9Scheduler3putEP3TCB+0xec>
    80002fb4:	0087b683          	ld	a3,8(a5)
    80002fb8:	00d73423          	sd	a3,8(a4)
                return cur;
    80002fbc:	0800006f          	j	8000303c <_ZN9Scheduler3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002fc0:	00068793          	mv	a5,a3
    80002fc4:	fa5ff06f          	j	80002f68 <_ZN9Scheduler3putEP3TCB+0x18>
                else fmem_head = cur->next;
    80002fc8:	00004717          	auipc	a4,0x4
    80002fcc:	26073703          	ld	a4,608(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002fd0:	00d73023          	sd	a3,0(a4)
    80002fd4:	fd9ff06f          	j	80002fac <_ZN9Scheduler3putEP3TCB+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002fd8:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80002fdc:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002fe0:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002fe4:	0087b683          	ld	a3,8(a5)
    80002fe8:	08068063          	beqz	a3,80003068 <_ZN9Scheduler3putEP3TCB+0x118>
    80002fec:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002ff0:	0007b683          	ld	a3,0(a5)
    80002ff4:	00068463          	beqz	a3,80002ffc <_ZN9Scheduler3putEP3TCB+0xac>
    80002ff8:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002ffc:	0087b603          	ld	a2,8(a5)
    80003000:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80003004:	0007b683          	ld	a3,0(a5)
    80003008:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    8000300c:	0107b783          	ld	a5,16(a5)
    80003010:	fc078793          	addi	a5,a5,-64
    80003014:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80003018:	0c070693          	addi	a3,a4,192
    8000301c:	00004597          	auipc	a1,0x4
    80003020:	20c5b583          	ld	a1,524(a1) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003024:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80003028:	00073583          	ld	a1,0(a4)
    8000302c:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80003030:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80003034:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80003038:	00070793          	mv	a5,a4
        elem->data=data;
    8000303c:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80003040:	0007b423          	sd	zero,8(a5)
        if (tail){
    80003044:	00004717          	auipc	a4,0x4
    80003048:	28473703          	ld	a4,644(a4) # 800072c8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000304c:	02070863          	beqz	a4,8000307c <_ZN9Scheduler3putEP3TCB+0x12c>
            tail->next=elem;
    80003050:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80003054:	00004717          	auipc	a4,0x4
    80003058:	26f73a23          	sd	a5,628(a4) # 800072c8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000305c:	00813403          	ld	s0,8(sp)
    80003060:	01010113          	addi	sp,sp,16
    80003064:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80003068:	0c070693          	addi	a3,a4,192
    8000306c:	00004617          	auipc	a2,0x4
    80003070:	1bc63603          	ld	a2,444(a2) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003074:	00d63023          	sd	a3,0(a2)
    80003078:	f79ff06f          	j	80002ff0 <_ZN9Scheduler3putEP3TCB+0xa0>
            head=tail=elem;
    8000307c:	00004717          	auipc	a4,0x4
    80003080:	24470713          	addi	a4,a4,580 # 800072c0 <_ZN9Scheduler19readyCoroutineQueueE>
    80003084:	00f73423          	sd	a5,8(a4)
    80003088:	00f73023          	sd	a5,0(a4)
    8000308c:	fd1ff06f          	j	8000305c <_ZN9Scheduler3putEP3TCB+0x10c>

0000000080003090 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80003090:	ff010113          	addi	sp,sp,-16
    80003094:	00113423          	sd	ra,8(sp)
    80003098:	00813023          	sd	s0,0(sp)
    8000309c:	01010413          	addi	s0,sp,16
    800030a0:	000105b7          	lui	a1,0x10
    800030a4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800030a8:	00100513          	li	a0,1
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	dfc080e7          	jalr	-516(ra) # 80002ea8 <_Z41__static_initialization_and_destruction_0ii>
    800030b4:	00813083          	ld	ra,8(sp)
    800030b8:	00013403          	ld	s0,0(sp)
    800030bc:	01010113          	addi	sp,sp,16
    800030c0:	00008067          	ret

00000000800030c4 <main>:
//void smoker1(void* arg);
//void smoker2(void* arg);
//void smoker3(void* arg);
//void dummyfun(void* arg);

int main(){
    800030c4:	fe010113          	addi	sp,sp,-32
    800030c8:	00113c23          	sd	ra,24(sp)
    800030cc:	00813823          	sd	s0,16(sp)
    800030d0:	02010413          	addi	s0,sp,32
        if (!instance) {
    800030d4:	00004797          	auipc	a5,0x4
    800030d8:	14c7b783          	ld	a5,332(a5) # 80007220 <_GLOBAL_OFFSET_TABLE_+0x28>
    800030dc:	0007b783          	ld	a5,0(a5)
    800030e0:	04078863          	beqz	a5,80003130 <main+0x6c>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    800030e4:	00004797          	auipc	a5,0x4
    800030e8:	1347b783          	ld	a5,308(a5) # 80007218 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    800030ec:	10579073          	csrw	stvec,a5
    //__asm__ volatile ("csrs sstatus, 0x2"); //todo nesto treba sa ovim spoljasnjim prekidima da se radi
    //RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    thread_t main;
    thread_create(&main, nullptr, nullptr);
    800030f0:	00000613          	li	a2,0
    800030f4:	00000593          	li	a1,0
    800030f8:	fe840513          	addi	a0,s0,-24
    800030fc:	ffffe097          	auipc	ra,0xffffe
    80003100:	1a4080e7          	jalr	420(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    80003104:	00004797          	auipc	a5,0x4
    80003108:	1347b783          	ld	a5,308(a5) # 80007238 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000310c:	fe843703          	ld	a4,-24(s0)
    80003110:	00e7b023          	sd	a4,0(a5)
//    thread_create(&t31, dummyfun, nullptr);
//    for (int i = 0; i < 30; ++i) {
//        thread_dispatch();
//    }
//    if(sem_wait(dummy)==-1) printString("ubien semafor\n");
    userMain();
    80003114:	00000097          	auipc	ra,0x0
    80003118:	abc080e7          	jalr	-1348(ra) # 80002bd0 <_Z8userMainv>
//    char x=getc();
//    putc(x);

    return 0;
}
    8000311c:	00000513          	li	a0,0
    80003120:	01813083          	ld	ra,24(sp)
    80003124:	01013403          	ld	s0,16(sp)
    80003128:	02010113          	addi	sp,sp,32
    8000312c:	00008067          	ret
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80003130:	00004797          	auipc	a5,0x4
    80003134:	0d07b783          	ld	a5,208(a5) # 80007200 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003138:	0007b783          	ld	a5,0(a5)
    8000313c:	00004697          	auipc	a3,0x4
    80003140:	0ec6b683          	ld	a3,236(a3) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003144:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80003148:	00004717          	auipc	a4,0x4
    8000314c:	0f873703          	ld	a4,248(a4) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003150:	00073703          	ld	a4,0(a4)
    80003154:	40f70733          	sub	a4,a4,a5
    80003158:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    8000315c:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80003160:	0006b783          	ld	a5,0(a3)
    80003164:	0007b423          	sd	zero,8(a5)
            return instance;
    80003168:	f7dff06f          	j	800030e4 <main+0x20>

000000008000316c <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    8000316c:	ff010113          	addi	sp,sp,-16
    80003170:	00813423          	sd	s0,8(sp)
    80003174:	01010413          	addi	s0,sp,16
    return finished;
}
    80003178:	02054503          	lbu	a0,32(a0)
    8000317c:	00813403          	ld	s0,8(sp)
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret

0000000080003188 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80003188:	ff010113          	addi	sp,sp,-16
    8000318c:	00813423          	sd	s0,8(sp)
    80003190:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    80003194:	02b50023          	sb	a1,32(a0)
}
    80003198:	00813403          	ld	s0,8(sp)
    8000319c:	01010113          	addi	sp,sp,16
    800031a0:	00008067          	ret

00000000800031a4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments, bool started) {
    800031a4:	fe010113          	addi	sp,sp,-32
    800031a8:	00113c23          	sd	ra,24(sp)
    800031ac:	00813823          	sd	s0,16(sp)
    800031b0:	00913423          	sd	s1,8(sp)
    800031b4:	02010413          	addi	s0,sp,32
    800031b8:	00058493          	mv	s1,a1
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800031bc:	00004797          	auipc	a5,0x4
    800031c0:	06c7b783          	ld	a5,108(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    800031c4:	0007b783          	ld	a5,0(a5)
    800031c8:	0c078a63          	beqz	a5,8000329c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
            cur->next=fmem_head->next;
    800031cc:	00004717          	auipc	a4,0x4
    800031d0:	05c73703          	ld	a4,92(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    800031d4:	00073583          	ld	a1,0(a4)
    800031d8:	0005b583          	ld	a1,0(a1)
    800031dc:	00b7b023          	sd	a1,0(a5)
            cur->prev=fmem_head->prev;
    800031e0:	00073703          	ld	a4,0(a4)
    800031e4:	00873803          	ld	a6,8(a4)
    800031e8:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    800031ec:	0107b703          	ld	a4,16(a5)
    800031f0:	07f00893          	li	a7,127
    800031f4:	02e8f663          	bgeu	a7,a4,80003220 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    800031f8:	f8070713          	addi	a4,a4,-128
    800031fc:	01800893          	li	a7,24
    80003200:	02e8ec63          	bltu	a7,a4,80003238 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80003204:	02080263          	beqz	a6,80003228 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x84>
    80003208:	00b83023          	sd	a1,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    8000320c:	0007b703          	ld	a4,0(a5)
    80003210:	08070663          	beqz	a4,8000329c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
    80003214:	0087b583          	ld	a1,8(a5)
    80003218:	00b73423          	sd	a1,8(a4)
                return cur;
    8000321c:	0800006f          	j	8000329c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003220:	00058793          	mv	a5,a1
    80003224:	fa5ff06f          	j	800031c8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x24>
                else fmem_head = cur->next;
    80003228:	00004717          	auipc	a4,0x4
    8000322c:	00073703          	ld	a4,0(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003230:	00b73023          	sd	a1,0(a4)
    80003234:	fd9ff06f          	j	8000320c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80003238:	08078713          	addi	a4,a5,128
                newfrgm->prev=nullptr;
    8000323c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80003240:	0807b023          	sd	zero,128(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80003244:	0087b583          	ld	a1,8(a5)
    80003248:	0c058c63          	beqz	a1,80003320 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x17c>
    8000324c:	00e5b023          	sd	a4,0(a1)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80003250:	0007b583          	ld	a1,0(a5)
    80003254:	00058463          	beqz	a1,8000325c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xb8>
    80003258:	00e5b423          	sd	a4,8(a1)
                newfrgm->prev = cur->prev;
    8000325c:	0087b803          	ld	a6,8(a5)
    80003260:	01073423          	sd	a6,8(a4)
                newfrgm->next = cur->next;
    80003264:	0007b583          	ld	a1,0(a5)
    80003268:	00b73023          	sd	a1,0(a4)
                newfrgm->size = cur->size-size;
    8000326c:	0107b783          	ld	a5,16(a5)
    80003270:	f8078793          	addi	a5,a5,-128
    80003274:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80003278:	0c070593          	addi	a1,a4,192
    8000327c:	00004897          	auipc	a7,0x4
    80003280:	fac8b883          	ld	a7,-84(a7) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003284:	00b8b023          	sd	a1,0(a7)
                fmem_head->next=newfrgm->next;
    80003288:	00073883          	ld	a7,0(a4)
    8000328c:	0d173023          	sd	a7,192(a4)
                fmem_head->prev=newfrgm->prev;
    80003290:	0d073423          	sd	a6,200(a4)
                fmem_head->size=newfrgm->size;
    80003294:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80003298:	00070793          	mv	a5,a4
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    8000329c:	00f4b023          	sd	a5,0(s1)
    (*handle)->body=body;
    800032a0:	00a7b023          	sd	a0,0(a5)
    (*handle)->arguments=arguments;
    800032a4:	0004b783          	ld	a5,0(s1)
    800032a8:	02c7b423          	sd	a2,40(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    800032ac:	12050663          	beqz	a0,800033d8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x234>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800032b0:	00004797          	auipc	a5,0x4
    800032b4:	f787b783          	ld	a5,-136(a5) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    800032b8:	0007b783          	ld	a5,0(a5)
    800032bc:	12078063          	beqz	a5,800033dc <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
            cur->next=fmem_head->next;
    800032c0:	00004717          	auipc	a4,0x4
    800032c4:	f6873703          	ld	a4,-152(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    800032c8:	00073603          	ld	a2,0(a4)
    800032cc:	00063583          	ld	a1,0(a2)
    800032d0:	00b7b023          	sd	a1,0(a5)
            cur->prev=fmem_head->prev;
    800032d4:	00073703          	ld	a4,0(a4)
    800032d8:	00873803          	ld	a6,8(a4)
    800032dc:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    800032e0:	0107b703          	ld	a4,16(a5)
    800032e4:	00001637          	lui	a2,0x1
    800032e8:	03f60613          	addi	a2,a2,63 # 103f <_entry-0x7fffefc1>
    800032ec:	04e67463          	bgeu	a2,a4,80003334 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x190>
            if (cur->size-size<=sizeof(FreeMem)){
    800032f0:	fffff637          	lui	a2,0xfffff
    800032f4:	fc060613          	addi	a2,a2,-64 # ffffffffffffefc0 <end+0xffffffff7fff6a70>
    800032f8:	00c70733          	add	a4,a4,a2
    800032fc:	01800613          	li	a2,24
    80003300:	04e66663          	bltu	a2,a4,8000334c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1a8>
                if (cur->prev) cur->prev->next = cur->next;
    80003304:	02080c63          	beqz	a6,8000333c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x198>
    80003308:	00b83023          	sd	a1,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    8000330c:	0007b703          	ld	a4,0(a5)
    80003310:	0c070663          	beqz	a4,800033dc <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
    80003314:	0087b603          	ld	a2,8(a5)
    80003318:	00c73423          	sd	a2,8(a4)
                return cur;
    8000331c:	0c00006f          	j	800033dc <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80003320:	0c070593          	addi	a1,a4,192
    80003324:	00004817          	auipc	a6,0x4
    80003328:	f0483803          	ld	a6,-252(a6) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000332c:	00b83023          	sd	a1,0(a6)
    80003330:	f21ff06f          	j	80003250 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xac>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003334:	00058793          	mv	a5,a1
    80003338:	f85ff06f          	j	800032bc <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x118>
                else fmem_head = cur->next;
    8000333c:	00004717          	auipc	a4,0x4
    80003340:	eec73703          	ld	a4,-276(a4) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003344:	00b73023          	sd	a1,0(a4)
    80003348:	fc5ff06f          	j	8000330c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x168>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    8000334c:	00001737          	lui	a4,0x1
    80003350:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    80003354:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    80003358:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    8000335c:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80003360:	0087b603          	ld	a2,8(a5)
    80003364:	06060063          	beqz	a2,800033c4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x220>
    80003368:	00e63023          	sd	a4,0(a2)
                if (cur && cur->next) cur->next->prev = newfrgm;
    8000336c:	0007b603          	ld	a2,0(a5)
    80003370:	00060463          	beqz	a2,80003378 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1d4>
    80003374:	00e63423          	sd	a4,8(a2)
                newfrgm->prev = cur->prev;
    80003378:	0087b583          	ld	a1,8(a5)
    8000337c:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    80003380:	0007b603          	ld	a2,0(a5)
    80003384:	00c73023          	sd	a2,0(a4)
                newfrgm->size = cur->size-size;
    80003388:	0107b783          	ld	a5,16(a5)
    8000338c:	fffff637          	lui	a2,0xfffff
    80003390:	fc060613          	addi	a2,a2,-64 # ffffffffffffefc0 <end+0xffffffff7fff6a70>
    80003394:	00c787b3          	add	a5,a5,a2
    80003398:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    8000339c:	0c070613          	addi	a2,a4,192
    800033a0:	00004817          	auipc	a6,0x4
    800033a4:	e8883803          	ld	a6,-376(a6) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    800033a8:	00c83023          	sd	a2,0(a6)
                fmem_head->next=newfrgm->next;
    800033ac:	00073803          	ld	a6,0(a4)
    800033b0:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    800033b4:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    800033b8:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800033bc:	00070793          	mv	a5,a4
    800033c0:	01c0006f          	j	800033dc <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800033c4:	0c070613          	addi	a2,a4,192
    800033c8:	00004597          	auipc	a1,0x4
    800033cc:	e605b583          	ld	a1,-416(a1) # 80007228 <_GLOBAL_OFFSET_TABLE_+0x30>
    800033d0:	00c5b023          	sd	a2,0(a1)
    800033d4:	f99ff06f          	j	8000336c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1c8>
    800033d8:	00000793          	li	a5,0
    800033dc:	0004b703          	ld	a4,0(s1)
    800033e0:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    800033e4:	08050263          	beqz	a0,80003468 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2c4>
    800033e8:	00000717          	auipc	a4,0x0
    800033ec:	0c870713          	addi	a4,a4,200 # 800034b0 <_ZN3TCB13threadWrapperEv>
    800033f0:	0004b783          	ld	a5,0(s1)
    800033f4:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    800033f8:	0004b703          	ld	a4,0(s1)
    800033fc:	00873783          	ld	a5,8(a4)
    80003400:	06078863          	beqz	a5,80003470 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2cc>
    80003404:	00008637          	lui	a2,0x8
    80003408:	00c787b3          	add	a5,a5,a2
    8000340c:	00f73c23          	sd	a5,24(a4)
    (*handle)->finished=true;
    80003410:	0004b783          	ld	a5,0(s1)
    80003414:	00100713          	li	a4,1
    80003418:	02e78023          	sb	a4,32(a5)
    (*handle)->semBlocked=nullptr;
    8000341c:	0004b783          	ld	a5,0(s1)
    80003420:	0207b823          	sd	zero,48(a5)
    (*handle)->timeSlice=TIME_SLICE;
    80003424:	0004b783          	ld	a5,0(s1)
    80003428:	00200713          	li	a4,2
    8000342c:	02e7bc23          	sd	a4,56(a5)
    (*handle)->threadStarted=started;
    80003430:	0004b783          	ld	a5,0(s1)
    80003434:	04d78023          	sb	a3,64(a5)
    if (body != nullptr && (*handle)->isStarted()==true) { Scheduler::put(*handle); }
    80003438:	00050863          	beqz	a0,80003448 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2a4>
    8000343c:	0004b503          	ld	a0,0(s1)
        return threadStarted;
    80003440:	04054783          	lbu	a5,64(a0)
    80003444:	02079a63          	bnez	a5,80003478 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2d4>
    if(*handle==nullptr){
    80003448:	0004b783          	ld	a5,0(s1)
    8000344c:	02078c63          	beqz	a5,80003484 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2e0>
        return -1;
    }else{return 0;}
    80003450:	00000513          	li	a0,0
}
    80003454:	01813083          	ld	ra,24(sp)
    80003458:	01013403          	ld	s0,16(sp)
    8000345c:	00813483          	ld	s1,8(sp)
    80003460:	02010113          	addi	sp,sp,32
    80003464:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80003468:	00000713          	li	a4,0
    8000346c:	f85ff06f          	j	800033f0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x24c>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80003470:	00000793          	li	a5,0
    80003474:	f99ff06f          	j	8000340c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x268>
    if (body != nullptr && (*handle)->isStarted()==true) { Scheduler::put(*handle); }
    80003478:	00000097          	auipc	ra,0x0
    8000347c:	ad8080e7          	jalr	-1320(ra) # 80002f50 <_ZN9Scheduler3putEP3TCB>
    80003480:	fc9ff06f          	j	80003448 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2a4>
        return -1;
    80003484:	fff00513          	li	a0,-1
    80003488:	fcdff06f          	j	80003454 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2b0>

000000008000348c <_ZN3TCB5yieldEv>:

void TCB::yield(){
    8000348c:	ff010113          	addi	sp,sp,-16
    80003490:	00813423          	sd	s0,8(sp)
    80003494:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80003498:	01300793          	li	a5,19
    8000349c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800034a0:	00000073          	ecall

};
    800034a4:	00813403          	ld	s0,8(sp)
    800034a8:	01010113          	addi	sp,sp,16
    800034ac:	00008067          	ret

00000000800034b0 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    800034b0:	fe010113          	addi	sp,sp,-32
    800034b4:	00113c23          	sd	ra,24(sp)
    800034b8:	00813823          	sd	s0,16(sp)
    800034bc:	00913423          	sd	s1,8(sp)
    800034c0:	02010413          	addi	s0,sp,32
    //RiscV::popSppSpie();
    __asm__ volatile ("csrw sepc, ra");
    800034c4:	14109073          	csrw	sepc,ra
    //__asm__ volatile ("sret");
    running->body(running->arguments);
    800034c8:	00004497          	auipc	s1,0x4
    800034cc:	e0848493          	addi	s1,s1,-504 # 800072d0 <_ZN3TCB7runningE>
    800034d0:	0004b783          	ld	a5,0(s1)
    800034d4:	0007b703          	ld	a4,0(a5)
    800034d8:	0287b503          	ld	a0,40(a5)
    800034dc:	000700e7          	jalr	a4
    running->setFinished(true);
    800034e0:	00100593          	li	a1,1
    800034e4:	0004b503          	ld	a0,0(s1)
    800034e8:	00000097          	auipc	ra,0x0
    800034ec:	ca0080e7          	jalr	-864(ra) # 80003188 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	f9c080e7          	jalr	-100(ra) # 8000348c <_ZN3TCB5yieldEv>
}
    800034f8:	01813083          	ld	ra,24(sp)
    800034fc:	01013403          	ld	s0,16(sp)
    80003500:	00813483          	ld	s1,8(sp)
    80003504:	02010113          	addi	sp,sp,32
    80003508:	00008067          	ret

000000008000350c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    8000350c:	fe010113          	addi	sp,sp,-32
    80003510:	00113c23          	sd	ra,24(sp)
    80003514:	00813823          	sd	s0,16(sp)
    80003518:	00913423          	sd	s1,8(sp)
    8000351c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80003520:	00004497          	auipc	s1,0x4
    80003524:	db04b483          	ld	s1,-592(s1) # 800072d0 <_ZN3TCB7runningE>
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80003528:	0304b783          	ld	a5,48(s1)
    8000352c:	02078c63          	beqz	a5,80003564 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80003530:	00000097          	auipc	ra,0x0
    80003534:	9b8080e7          	jalr	-1608(ra) # 80002ee8 <_ZN9Scheduler3getEv>
    80003538:	00004797          	auipc	a5,0x4
    8000353c:	d8a7bc23          	sd	a0,-616(a5) # 800072d0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80003540:	01050593          	addi	a1,a0,16
    80003544:	01048513          	addi	a0,s1,16
    80003548:	ffffe097          	auipc	ra,0xffffe
    8000354c:	ce8080e7          	jalr	-792(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80003550:	01813083          	ld	ra,24(sp)
    80003554:	01013403          	ld	s0,16(sp)
    80003558:	00813483          	ld	s1,8(sp)
    8000355c:	02010113          	addi	sp,sp,32
    80003560:	00008067          	ret
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80003564:	00048513          	mv	a0,s1
    80003568:	00000097          	auipc	ra,0x0
    8000356c:	c04080e7          	jalr	-1020(ra) # 8000316c <_ZNK3TCB10isFinishedEv>
    80003570:	fc0510e3          	bnez	a0,80003530 <_ZN3TCB8dispatchEv+0x24>
        Scheduler::put(old);
    80003574:	00048513          	mv	a0,s1
    80003578:	00000097          	auipc	ra,0x0
    8000357c:	9d8080e7          	jalr	-1576(ra) # 80002f50 <_ZN9Scheduler3putEP3TCB>
    80003580:	fb1ff06f          	j	80003530 <_ZN3TCB8dispatchEv+0x24>

0000000080003584 <_Znwm>:
//#include "../lib/mem.h"


//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    80003584:	ff010113          	addi	sp,sp,-16
    80003588:	00113423          	sd	ra,8(sp)
    8000358c:	00813023          	sd	s0,0(sp)
    80003590:	01010413          	addi	s0,sp,16
    //return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
    return mem_alloc(n);
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	cb0080e7          	jalr	-848(ra) # 80001244 <_Z9mem_allocm>
}
    8000359c:	00813083          	ld	ra,8(sp)
    800035a0:	00013403          	ld	s0,0(sp)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret

00000000800035ac <_Znam>:

void *operator new[](uint64 n){
    800035ac:	ff010113          	addi	sp,sp,-16
    800035b0:	00113423          	sd	ra,8(sp)
    800035b4:	00813023          	sd	s0,0(sp)
    800035b8:	01010413          	addi	s0,sp,16
    //return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
    return mem_alloc(n);
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	c88080e7          	jalr	-888(ra) # 80001244 <_Z9mem_allocm>
}
    800035c4:	00813083          	ld	ra,8(sp)
    800035c8:	00013403          	ld	s0,0(sp)
    800035cc:	01010113          	addi	sp,sp,16
    800035d0:	00008067          	ret

00000000800035d4 <_ZdlPv>:

void operator delete(void *p) noexcept {
    800035d4:	ff010113          	addi	sp,sp,-16
    800035d8:	00113423          	sd	ra,8(sp)
    800035dc:	00813023          	sd	s0,0(sp)
    800035e0:	01010413          	addi	s0,sp,16
    //MemoryAllocation::mem_free(p);
    //__mem_free(p);
    mem_free(p);
    800035e4:	ffffe097          	auipc	ra,0xffffe
    800035e8:	c8c080e7          	jalr	-884(ra) # 80001270 <_Z8mem_freePv>
}
    800035ec:	00813083          	ld	ra,8(sp)
    800035f0:	00013403          	ld	s0,0(sp)
    800035f4:	01010113          	addi	sp,sp,16
    800035f8:	00008067          	ret

00000000800035fc <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    800035fc:	ff010113          	addi	sp,sp,-16
    80003600:	00113423          	sd	ra,8(sp)
    80003604:	00813023          	sd	s0,0(sp)
    80003608:	01010413          	addi	s0,sp,16
    //MemoryAllocation::mem_free(p);
    //__mem_free(p);
    mem_free(p);
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	c64080e7          	jalr	-924(ra) # 80001270 <_Z8mem_freePv>
}
    80003614:	00813083          	ld	ra,8(sp)
    80003618:	00013403          	ld	s0,0(sp)
    8000361c:	01010113          	addi	sp,sp,16
    80003620:	00008067          	ret

0000000080003624 <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    80003624:	ff010113          	addi	sp,sp,-16
    80003628:	00813423          	sd	s0,8(sp)
    8000362c:	01010413          	addi	s0,sp,16
    //mem_free(myHandle);//mozda cak i sizeof(Thread)
}
    80003630:	00813403          	ld	s0,8(sp)
    80003634:	01010113          	addi	sp,sp,16
    80003638:	00008067          	ret

000000008000363c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000363c:	ff010113          	addi	sp,sp,-16
    80003640:	00113423          	sd	ra,8(sp)
    80003644:	00813023          	sd	s0,0(sp)
    80003648:	01010413          	addi	s0,sp,16
}
    8000364c:	00000097          	auipc	ra,0x0
    80003650:	f88080e7          	jalr	-120(ra) # 800035d4 <_ZdlPv>
    80003654:	00813083          	ld	ra,8(sp)
    80003658:	00013403          	ld	s0,0(sp)
    8000365c:	01010113          	addi	sp,sp,16
    80003660:	00008067          	ret

0000000080003664 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr){ //todo nekako treba da inicijalizujes myHandle, nullptr mi sumnjiv
    80003664:	ff010113          	addi	sp,sp,-16
    80003668:	00113423          	sd	ra,8(sp)
    8000366c:	00813023          	sd	s0,0(sp)
    80003670:	01010413          	addi	s0,sp,16
    80003674:	00004797          	auipc	a5,0x4
    80003678:	b6c78793          	addi	a5,a5,-1172 # 800071e0 <_ZTV6Thread+0x10>
    8000367c:	00f53023          	sd	a5,0(a0)
    80003680:	00053423          	sd	zero,8(a0)
    thread_create_cpp_api(&myHandle, body, arg);
    80003684:	00850513          	addi	a0,a0,8
    80003688:	ffffe097          	auipc	ra,0xffffe
    8000368c:	db8080e7          	jalr	-584(ra) # 80001440 <_Z21thread_create_cpp_apiPP3TCBPFvPvES2_>
}
    80003690:	00813083          	ld	ra,8(sp)
    80003694:	00013403          	ld	s0,0(sp)
    80003698:	01010113          	addi	sp,sp,16
    8000369c:	00008067          	ret

00000000800036a0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800036a0:	ff010113          	addi	sp,sp,-16
    800036a4:	00113423          	sd	ra,8(sp)
    800036a8:	00813023          	sd	s0,0(sp)
    800036ac:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	c54080e7          	jalr	-940(ra) # 80001304 <_Z15thread_dispatchv>
}
    800036b8:	00813083          	ld	ra,8(sp)
    800036bc:	00013403          	ld	s0,0(sp)
    800036c0:	01010113          	addi	sp,sp,16
    800036c4:	00008067          	ret

00000000800036c8 <_ZN6Thread5startEv>:

int Thread::start() {
    800036c8:	fe010113          	addi	sp,sp,-32
    800036cc:	00113c23          	sd	ra,24(sp)
    800036d0:	00813823          	sd	s0,16(sp)
    800036d4:	00913423          	sd	s1,8(sp)
    800036d8:	02010413          	addi	s0,sp,32
    800036dc:	00050493          	mv	s1,a0
    printString("udje u start");
    800036e0:	00003517          	auipc	a0,0x3
    800036e4:	a4850513          	addi	a0,a0,-1464 # 80006128 <CONSOLE_STATUS+0x118>
    800036e8:	fffff097          	auipc	ra,0xfffff
    800036ec:	ab8080e7          	jalr	-1352(ra) # 800021a0 <_Z11printStringPKc>
    thread_start(&myHandle); //todo vrati na cast (thread_t*) ako ne bude radilo
    800036f0:	00848513          	addi	a0,s1,8
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	d84080e7          	jalr	-636(ra) # 80001478 <_Z12thread_startPP3TCB>
    printString("izadje iz starta");
    800036fc:	00003517          	auipc	a0,0x3
    80003700:	a3c50513          	addi	a0,a0,-1476 # 80006138 <CONSOLE_STATUS+0x128>
    80003704:	fffff097          	auipc	ra,0xfffff
    80003708:	a9c080e7          	jalr	-1380(ra) # 800021a0 <_Z11printStringPKc>
    return 0;
}
    8000370c:	00000513          	li	a0,0
    80003710:	01813083          	ld	ra,24(sp)
    80003714:	01013403          	ld	s0,16(sp)
    80003718:	00813483          	ld	s1,8(sp)
    8000371c:	02010113          	addi	sp,sp,32
    80003720:	00008067          	ret

0000000080003724 <_ZN6Thread13threadWrapperEPv>:

void Thread::threadWrapper(void *arg) {
    80003724:	ff010113          	addi	sp,sp,-16
    80003728:	00113423          	sd	ra,8(sp)
    8000372c:	00813023          	sd	s0,0(sp)
    80003730:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80003734:	00053783          	ld	a5,0(a0)
    80003738:	0107b783          	ld	a5,16(a5)
    8000373c:	000780e7          	jalr	a5
}
    80003740:	00813083          	ld	ra,8(sp)
    80003744:	00013403          	ld	s0,0(sp)
    80003748:	01010113          	addi	sp,sp,16
    8000374c:	00008067          	ret

0000000080003750 <_ZN6Thread3runEv>:
        //threadWrapper(this); //todo uopste mi ne napravi handle
        //printString("posle wrappera");
        //Thread(threadWrapper(this), this); //todo mozda treba & ispred threadWrapper
        thread_create_cpp_api(&myHandle, threadWrapper, this);
    };
    virtual void run () {} //on ovde zabaguje potpuno
    80003750:	ff010113          	addi	sp,sp,-16
    80003754:	00813423          	sd	s0,8(sp)
    80003758:	01010413          	addi	s0,sp,16
    8000375c:	00813403          	ld	s0,8(sp)
    80003760:	01010113          	addi	sp,sp,16
    80003764:	00008067          	ret

0000000080003768 <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80003768:	ff010113          	addi	sp,sp,-16
    8000376c:	00813423          	sd	s0,8(sp)
    80003770:	01010413          	addi	s0,sp,16
    80003774:	00100793          	li	a5,1
    80003778:	00f50863          	beq	a0,a5,80003788 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000377c:	00813403          	ld	s0,8(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret
    80003788:	000107b7          	lui	a5,0x10
    8000378c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003790:	fef596e3          	bne	a1,a5,8000377c <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80003794:	00004797          	auipc	a5,0x4
    80003798:	a6c7b783          	ld	a5,-1428(a5) # 80007200 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000379c:	0007b783          	ld	a5,0(a5)
    800037a0:	00004717          	auipc	a4,0x4
    800037a4:	b4f73023          	sd	a5,-1216(a4) # 800072e0 <_ZN16MemoryAllocation9fmem_headE>
    800037a8:	fd5ff06f          	j	8000377c <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800037ac <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    800037ac:	ff010113          	addi	sp,sp,-16
    800037b0:	00113423          	sd	ra,8(sp)
    800037b4:	00813023          	sd	s0,0(sp)
    800037b8:	01010413          	addi	s0,sp,16
    800037bc:	000105b7          	lui	a1,0x10
    800037c0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800037c4:	00100513          	li	a0,1
    800037c8:	00000097          	auipc	ra,0x0
    800037cc:	fa0080e7          	jalr	-96(ra) # 80003768 <_Z41__static_initialization_and_destruction_0ii>
    800037d0:	00813083          	ld	ra,8(sp)
    800037d4:	00013403          	ld	s0,0(sp)
    800037d8:	01010113          	addi	sp,sp,16
    800037dc:	00008067          	ret

00000000800037e0 <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"
//TODO PROMENI SVE BUFFER PUTC I GETC
Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800037e0:	fe010113          	addi	sp,sp,-32
    800037e4:	00113c23          	sd	ra,24(sp)
    800037e8:	00813823          	sd	s0,16(sp)
    800037ec:	00913423          	sd	s1,8(sp)
    800037f0:	01213023          	sd	s2,0(sp)
    800037f4:	02010413          	addi	s0,sp,32
    800037f8:	00050493          	mv	s1,a0
    800037fc:	00058913          	mv	s2,a1
    80003800:	0015879b          	addiw	a5,a1,1
    80003804:	0007851b          	sext.w	a0,a5
    80003808:	00f4a023          	sw	a5,0(s1)
    8000380c:	0004a823          	sw	zero,16(s1)
    80003810:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003814:	00251513          	slli	a0,a0,0x2
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	a2c080e7          	jalr	-1492(ra) # 80001244 <_Z9mem_allocm>
    80003820:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003824:	00000593          	li	a1,0
    80003828:	02048513          	addi	a0,s1,32
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	afc080e7          	jalr	-1284(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&spaceAvailable, _cap);
    80003834:	00090593          	mv	a1,s2
    80003838:	01848513          	addi	a0,s1,24
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	aec080e7          	jalr	-1300(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexHead, 1);
    80003844:	00100593          	li	a1,1
    80003848:	02848513          	addi	a0,s1,40
    8000384c:	ffffe097          	auipc	ra,0xffffe
    80003850:	adc080e7          	jalr	-1316(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexTail, 1);
    80003854:	00100593          	li	a1,1
    80003858:	03048513          	addi	a0,s1,48
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	acc080e7          	jalr	-1332(ra) # 80001328 <_Z8sem_openPP9semaphorej>
}
    80003864:	01813083          	ld	ra,24(sp)
    80003868:	01013403          	ld	s0,16(sp)
    8000386c:	00813483          	ld	s1,8(sp)
    80003870:	00013903          	ld	s2,0(sp)
    80003874:	02010113          	addi	sp,sp,32
    80003878:	00008067          	ret

000000008000387c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000387c:	fe010113          	addi	sp,sp,-32
    80003880:	00113c23          	sd	ra,24(sp)
    80003884:	00813823          	sd	s0,16(sp)
    80003888:	00913423          	sd	s1,8(sp)
    8000388c:	01213023          	sd	s2,0(sp)
    80003890:	02010413          	addi	s0,sp,32
    80003894:	00050493          	mv	s1,a0
    80003898:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000389c:	01853503          	ld	a0,24(a0)
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	aec080e7          	jalr	-1300(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexTail);
    800038a8:	0304b503          	ld	a0,48(s1)
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	ae0080e7          	jalr	-1312(ra) # 8000138c <_Z8sem_waitP9semaphore>
    buffer[tail] = val;
    800038b4:	0084b783          	ld	a5,8(s1)
    800038b8:	0144a703          	lw	a4,20(s1)
    800038bc:	00271713          	slli	a4,a4,0x2
    800038c0:	00e787b3          	add	a5,a5,a4
    800038c4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800038c8:	0144a783          	lw	a5,20(s1)
    800038cc:	0017879b          	addiw	a5,a5,1
    800038d0:	0004a703          	lw	a4,0(s1)
    800038d4:	02e7e7bb          	remw	a5,a5,a4
    800038d8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800038dc:	0304b503          	ld	a0,48(s1)
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	adc080e7          	jalr	-1316(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(itemAvailable);
    800038e8:	0204b503          	ld	a0,32(s1)
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	ad0080e7          	jalr	-1328(ra) # 800013bc <_Z10sem_signalP9semaphore>

}
    800038f4:	01813083          	ld	ra,24(sp)
    800038f8:	01013403          	ld	s0,16(sp)
    800038fc:	00813483          	ld	s1,8(sp)
    80003900:	00013903          	ld	s2,0(sp)
    80003904:	02010113          	addi	sp,sp,32
    80003908:	00008067          	ret

000000008000390c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000390c:	fe010113          	addi	sp,sp,-32
    80003910:	00113c23          	sd	ra,24(sp)
    80003914:	00813823          	sd	s0,16(sp)
    80003918:	00913423          	sd	s1,8(sp)
    8000391c:	01213023          	sd	s2,0(sp)
    80003920:	02010413          	addi	s0,sp,32
    80003924:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003928:	02053503          	ld	a0,32(a0)
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	a60080e7          	jalr	-1440(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexHead);
    80003934:	0284b503          	ld	a0,40(s1)
    80003938:	ffffe097          	auipc	ra,0xffffe
    8000393c:	a54080e7          	jalr	-1452(ra) # 8000138c <_Z8sem_waitP9semaphore>

    int ret = buffer[head];
    80003940:	0084b703          	ld	a4,8(s1)
    80003944:	0104a783          	lw	a5,16(s1)
    80003948:	00279693          	slli	a3,a5,0x2
    8000394c:	00d70733          	add	a4,a4,a3
    80003950:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003954:	0017879b          	addiw	a5,a5,1
    80003958:	0004a703          	lw	a4,0(s1)
    8000395c:	02e7e7bb          	remw	a5,a5,a4
    80003960:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003964:	0284b503          	ld	a0,40(s1)
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	a54080e7          	jalr	-1452(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(spaceAvailable);
    80003970:	0184b503          	ld	a0,24(s1)
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	a48080e7          	jalr	-1464(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    8000397c:	00090513          	mv	a0,s2
    80003980:	01813083          	ld	ra,24(sp)
    80003984:	01013403          	ld	s0,16(sp)
    80003988:	00813483          	ld	s1,8(sp)
    8000398c:	00013903          	ld	s2,0(sp)
    80003990:	02010113          	addi	sp,sp,32
    80003994:	00008067          	ret

0000000080003998 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003998:	fe010113          	addi	sp,sp,-32
    8000399c:	00113c23          	sd	ra,24(sp)
    800039a0:	00813823          	sd	s0,16(sp)
    800039a4:	00913423          	sd	s1,8(sp)
    800039a8:	01213023          	sd	s2,0(sp)
    800039ac:	02010413          	addi	s0,sp,32
    800039b0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800039b4:	02853503          	ld	a0,40(a0)
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	9d4080e7          	jalr	-1580(ra) # 8000138c <_Z8sem_waitP9semaphore>
    sem_wait(mutexTail);
    800039c0:	0304b503          	ld	a0,48(s1)
    800039c4:	ffffe097          	auipc	ra,0xffffe
    800039c8:	9c8080e7          	jalr	-1592(ra) # 8000138c <_Z8sem_waitP9semaphore>

    if (tail >= head) {
    800039cc:	0144a783          	lw	a5,20(s1)
    800039d0:	0104a903          	lw	s2,16(s1)
    800039d4:	0327ce63          	blt	a5,s2,80003a10 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800039d8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800039dc:	0304b503          	ld	a0,48(s1)
    800039e0:	ffffe097          	auipc	ra,0xffffe
    800039e4:	9dc080e7          	jalr	-1572(ra) # 800013bc <_Z10sem_signalP9semaphore>
    sem_signal(mutexHead);
    800039e8:	0284b503          	ld	a0,40(s1)
    800039ec:	ffffe097          	auipc	ra,0xffffe
    800039f0:	9d0080e7          	jalr	-1584(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    800039f4:	00090513          	mv	a0,s2
    800039f8:	01813083          	ld	ra,24(sp)
    800039fc:	01013403          	ld	s0,16(sp)
    80003a00:	00813483          	ld	s1,8(sp)
    80003a04:	00013903          	ld	s2,0(sp)
    80003a08:	02010113          	addi	sp,sp,32
    80003a0c:	00008067          	ret
        ret = cap - head + tail;
    80003a10:	0004a703          	lw	a4,0(s1)
    80003a14:	4127093b          	subw	s2,a4,s2
    80003a18:	00f9093b          	addw	s2,s2,a5
    80003a1c:	fc1ff06f          	j	800039dc <_ZN6Buffer6getCntEv+0x44>

0000000080003a20 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003a20:	fe010113          	addi	sp,sp,-32
    80003a24:	00113c23          	sd	ra,24(sp)
    80003a28:	00813823          	sd	s0,16(sp)
    80003a2c:	00913423          	sd	s1,8(sp)
    80003a30:	02010413          	addi	s0,sp,32
    80003a34:	00050493          	mv	s1,a0
    putc('\n');
    80003a38:	00a00513          	li	a0,10
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	9dc080e7          	jalr	-1572(ra) # 80001418 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003a44:	00002517          	auipc	a0,0x2
    80003a48:	70c50513          	addi	a0,a0,1804 # 80006150 <CONSOLE_STATUS+0x140>
    80003a4c:	ffffe097          	auipc	ra,0xffffe
    80003a50:	754080e7          	jalr	1876(ra) # 800021a0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003a54:	00048513          	mv	a0,s1
    80003a58:	00000097          	auipc	ra,0x0
    80003a5c:	f40080e7          	jalr	-192(ra) # 80003998 <_ZN6Buffer6getCntEv>
    80003a60:	02a05c63          	blez	a0,80003a98 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003a64:	0084b783          	ld	a5,8(s1)
    80003a68:	0104a703          	lw	a4,16(s1)
    80003a6c:	00271713          	slli	a4,a4,0x2
    80003a70:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003a74:	0007c503          	lbu	a0,0(a5)
    80003a78:	ffffe097          	auipc	ra,0xffffe
    80003a7c:	9a0080e7          	jalr	-1632(ra) # 80001418 <_Z4putcc>
        head = (head + 1) % cap;
    80003a80:	0104a783          	lw	a5,16(s1)
    80003a84:	0017879b          	addiw	a5,a5,1
    80003a88:	0004a703          	lw	a4,0(s1)
    80003a8c:	02e7e7bb          	remw	a5,a5,a4
    80003a90:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003a94:	fc1ff06f          	j	80003a54 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003a98:	02100513          	li	a0,33
    80003a9c:	ffffe097          	auipc	ra,0xffffe
    80003aa0:	97c080e7          	jalr	-1668(ra) # 80001418 <_Z4putcc>
    putc('\n');
    80003aa4:	00a00513          	li	a0,10
    80003aa8:	ffffe097          	auipc	ra,0xffffe
    80003aac:	970080e7          	jalr	-1680(ra) # 80001418 <_Z4putcc>
    mem_free(buffer);
    80003ab0:	0084b503          	ld	a0,8(s1)
    80003ab4:	ffffd097          	auipc	ra,0xffffd
    80003ab8:	7bc080e7          	jalr	1980(ra) # 80001270 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003abc:	0204b503          	ld	a0,32(s1)
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	89c080e7          	jalr	-1892(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(spaceAvailable);
    80003ac8:	0184b503          	ld	a0,24(s1)
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	890080e7          	jalr	-1904(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexTail);
    80003ad4:	0304b503          	ld	a0,48(s1)
    80003ad8:	ffffe097          	auipc	ra,0xffffe
    80003adc:	884080e7          	jalr	-1916(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexHead);
    80003ae0:	0284b503          	ld	a0,40(s1)
    80003ae4:	ffffe097          	auipc	ra,0xffffe
    80003ae8:	878080e7          	jalr	-1928(ra) # 8000135c <_Z9sem_closeP9semaphore>
}
    80003aec:	01813083          	ld	ra,24(sp)
    80003af0:	01013403          	ld	s0,16(sp)
    80003af4:	00813483          	ld	s1,8(sp)
    80003af8:	02010113          	addi	sp,sp,32
    80003afc:	00008067          	ret

0000000080003b00 <start>:
    80003b00:	ff010113          	addi	sp,sp,-16
    80003b04:	00813423          	sd	s0,8(sp)
    80003b08:	01010413          	addi	s0,sp,16
    80003b0c:	300027f3          	csrr	a5,mstatus
    80003b10:	ffffe737          	lui	a4,0xffffe
    80003b14:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff62af>
    80003b18:	00e7f7b3          	and	a5,a5,a4
    80003b1c:	00001737          	lui	a4,0x1
    80003b20:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003b24:	00e7e7b3          	or	a5,a5,a4
    80003b28:	30079073          	csrw	mstatus,a5
    80003b2c:	00000797          	auipc	a5,0x0
    80003b30:	16078793          	addi	a5,a5,352 # 80003c8c <system_main>
    80003b34:	34179073          	csrw	mepc,a5
    80003b38:	00000793          	li	a5,0
    80003b3c:	18079073          	csrw	satp,a5
    80003b40:	000107b7          	lui	a5,0x10
    80003b44:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003b48:	30279073          	csrw	medeleg,a5
    80003b4c:	30379073          	csrw	mideleg,a5
    80003b50:	104027f3          	csrr	a5,sie
    80003b54:	2227e793          	ori	a5,a5,546
    80003b58:	10479073          	csrw	sie,a5
    80003b5c:	fff00793          	li	a5,-1
    80003b60:	00a7d793          	srli	a5,a5,0xa
    80003b64:	3b079073          	csrw	pmpaddr0,a5
    80003b68:	00f00793          	li	a5,15
    80003b6c:	3a079073          	csrw	pmpcfg0,a5
    80003b70:	f14027f3          	csrr	a5,mhartid
    80003b74:	0200c737          	lui	a4,0x200c
    80003b78:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b7c:	0007869b          	sext.w	a3,a5
    80003b80:	00269713          	slli	a4,a3,0x2
    80003b84:	000f4637          	lui	a2,0xf4
    80003b88:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b8c:	00d70733          	add	a4,a4,a3
    80003b90:	0037979b          	slliw	a5,a5,0x3
    80003b94:	020046b7          	lui	a3,0x2004
    80003b98:	00d787b3          	add	a5,a5,a3
    80003b9c:	00c585b3          	add	a1,a1,a2
    80003ba0:	00371693          	slli	a3,a4,0x3
    80003ba4:	00003717          	auipc	a4,0x3
    80003ba8:	74c70713          	addi	a4,a4,1868 # 800072f0 <timer_scratch>
    80003bac:	00b7b023          	sd	a1,0(a5)
    80003bb0:	00d70733          	add	a4,a4,a3
    80003bb4:	00f73c23          	sd	a5,24(a4)
    80003bb8:	02c73023          	sd	a2,32(a4)
    80003bbc:	34071073          	csrw	mscratch,a4
    80003bc0:	00000797          	auipc	a5,0x0
    80003bc4:	6e078793          	addi	a5,a5,1760 # 800042a0 <timervec>
    80003bc8:	30579073          	csrw	mtvec,a5
    80003bcc:	300027f3          	csrr	a5,mstatus
    80003bd0:	0087e793          	ori	a5,a5,8
    80003bd4:	30079073          	csrw	mstatus,a5
    80003bd8:	304027f3          	csrr	a5,mie
    80003bdc:	0807e793          	ori	a5,a5,128
    80003be0:	30479073          	csrw	mie,a5
    80003be4:	f14027f3          	csrr	a5,mhartid
    80003be8:	0007879b          	sext.w	a5,a5
    80003bec:	00078213          	mv	tp,a5
    80003bf0:	30200073          	mret
    80003bf4:	00813403          	ld	s0,8(sp)
    80003bf8:	01010113          	addi	sp,sp,16
    80003bfc:	00008067          	ret

0000000080003c00 <timerinit>:
    80003c00:	ff010113          	addi	sp,sp,-16
    80003c04:	00813423          	sd	s0,8(sp)
    80003c08:	01010413          	addi	s0,sp,16
    80003c0c:	f14027f3          	csrr	a5,mhartid
    80003c10:	0200c737          	lui	a4,0x200c
    80003c14:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003c18:	0007869b          	sext.w	a3,a5
    80003c1c:	00269713          	slli	a4,a3,0x2
    80003c20:	000f4637          	lui	a2,0xf4
    80003c24:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003c28:	00d70733          	add	a4,a4,a3
    80003c2c:	0037979b          	slliw	a5,a5,0x3
    80003c30:	020046b7          	lui	a3,0x2004
    80003c34:	00d787b3          	add	a5,a5,a3
    80003c38:	00c585b3          	add	a1,a1,a2
    80003c3c:	00371693          	slli	a3,a4,0x3
    80003c40:	00003717          	auipc	a4,0x3
    80003c44:	6b070713          	addi	a4,a4,1712 # 800072f0 <timer_scratch>
    80003c48:	00b7b023          	sd	a1,0(a5)
    80003c4c:	00d70733          	add	a4,a4,a3
    80003c50:	00f73c23          	sd	a5,24(a4)
    80003c54:	02c73023          	sd	a2,32(a4)
    80003c58:	34071073          	csrw	mscratch,a4
    80003c5c:	00000797          	auipc	a5,0x0
    80003c60:	64478793          	addi	a5,a5,1604 # 800042a0 <timervec>
    80003c64:	30579073          	csrw	mtvec,a5
    80003c68:	300027f3          	csrr	a5,mstatus
    80003c6c:	0087e793          	ori	a5,a5,8
    80003c70:	30079073          	csrw	mstatus,a5
    80003c74:	304027f3          	csrr	a5,mie
    80003c78:	0807e793          	ori	a5,a5,128
    80003c7c:	30479073          	csrw	mie,a5
    80003c80:	00813403          	ld	s0,8(sp)
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00008067          	ret

0000000080003c8c <system_main>:
    80003c8c:	fe010113          	addi	sp,sp,-32
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00913423          	sd	s1,8(sp)
    80003c98:	00113c23          	sd	ra,24(sp)
    80003c9c:	02010413          	addi	s0,sp,32
    80003ca0:	00000097          	auipc	ra,0x0
    80003ca4:	0c4080e7          	jalr	196(ra) # 80003d64 <cpuid>
    80003ca8:	00003497          	auipc	s1,0x3
    80003cac:	5c848493          	addi	s1,s1,1480 # 80007270 <started>
    80003cb0:	02050263          	beqz	a0,80003cd4 <system_main+0x48>
    80003cb4:	0004a783          	lw	a5,0(s1)
    80003cb8:	0007879b          	sext.w	a5,a5
    80003cbc:	fe078ce3          	beqz	a5,80003cb4 <system_main+0x28>
    80003cc0:	0ff0000f          	fence
    80003cc4:	00002517          	auipc	a0,0x2
    80003cc8:	4d450513          	addi	a0,a0,1236 # 80006198 <CONSOLE_STATUS+0x188>
    80003ccc:	00001097          	auipc	ra,0x1
    80003cd0:	a70080e7          	jalr	-1424(ra) # 8000473c <panic>
    80003cd4:	00001097          	auipc	ra,0x1
    80003cd8:	9c4080e7          	jalr	-1596(ra) # 80004698 <consoleinit>
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	150080e7          	jalr	336(ra) # 80004e2c <printfinit>
    80003ce4:	00002517          	auipc	a0,0x2
    80003ce8:	59450513          	addi	a0,a0,1428 # 80006278 <CONSOLE_STATUS+0x268>
    80003cec:	00001097          	auipc	ra,0x1
    80003cf0:	aac080e7          	jalr	-1364(ra) # 80004798 <__printf>
    80003cf4:	00002517          	auipc	a0,0x2
    80003cf8:	47450513          	addi	a0,a0,1140 # 80006168 <CONSOLE_STATUS+0x158>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	a9c080e7          	jalr	-1380(ra) # 80004798 <__printf>
    80003d04:	00002517          	auipc	a0,0x2
    80003d08:	57450513          	addi	a0,a0,1396 # 80006278 <CONSOLE_STATUS+0x268>
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	a8c080e7          	jalr	-1396(ra) # 80004798 <__printf>
    80003d14:	00001097          	auipc	ra,0x1
    80003d18:	4a4080e7          	jalr	1188(ra) # 800051b8 <kinit>
    80003d1c:	00000097          	auipc	ra,0x0
    80003d20:	148080e7          	jalr	328(ra) # 80003e64 <trapinit>
    80003d24:	00000097          	auipc	ra,0x0
    80003d28:	16c080e7          	jalr	364(ra) # 80003e90 <trapinithart>
    80003d2c:	00000097          	auipc	ra,0x0
    80003d30:	5b4080e7          	jalr	1460(ra) # 800042e0 <plicinit>
    80003d34:	00000097          	auipc	ra,0x0
    80003d38:	5d4080e7          	jalr	1492(ra) # 80004308 <plicinithart>
    80003d3c:	00000097          	auipc	ra,0x0
    80003d40:	078080e7          	jalr	120(ra) # 80003db4 <userinit>
    80003d44:	0ff0000f          	fence
    80003d48:	00100793          	li	a5,1
    80003d4c:	00002517          	auipc	a0,0x2
    80003d50:	43450513          	addi	a0,a0,1076 # 80006180 <CONSOLE_STATUS+0x170>
    80003d54:	00f4a023          	sw	a5,0(s1)
    80003d58:	00001097          	auipc	ra,0x1
    80003d5c:	a40080e7          	jalr	-1472(ra) # 80004798 <__printf>
    80003d60:	0000006f          	j	80003d60 <system_main+0xd4>

0000000080003d64 <cpuid>:
    80003d64:	ff010113          	addi	sp,sp,-16
    80003d68:	00813423          	sd	s0,8(sp)
    80003d6c:	01010413          	addi	s0,sp,16
    80003d70:	00020513          	mv	a0,tp
    80003d74:	00813403          	ld	s0,8(sp)
    80003d78:	0005051b          	sext.w	a0,a0
    80003d7c:	01010113          	addi	sp,sp,16
    80003d80:	00008067          	ret

0000000080003d84 <mycpu>:
    80003d84:	ff010113          	addi	sp,sp,-16
    80003d88:	00813423          	sd	s0,8(sp)
    80003d8c:	01010413          	addi	s0,sp,16
    80003d90:	00020793          	mv	a5,tp
    80003d94:	00813403          	ld	s0,8(sp)
    80003d98:	0007879b          	sext.w	a5,a5
    80003d9c:	00779793          	slli	a5,a5,0x7
    80003da0:	00004517          	auipc	a0,0x4
    80003da4:	58050513          	addi	a0,a0,1408 # 80008320 <cpus>
    80003da8:	00f50533          	add	a0,a0,a5
    80003dac:	01010113          	addi	sp,sp,16
    80003db0:	00008067          	ret

0000000080003db4 <userinit>:
    80003db4:	ff010113          	addi	sp,sp,-16
    80003db8:	00813423          	sd	s0,8(sp)
    80003dbc:	01010413          	addi	s0,sp,16
    80003dc0:	00813403          	ld	s0,8(sp)
    80003dc4:	01010113          	addi	sp,sp,16
    80003dc8:	fffff317          	auipc	t1,0xfffff
    80003dcc:	2fc30067          	jr	764(t1) # 800030c4 <main>

0000000080003dd0 <either_copyout>:
    80003dd0:	ff010113          	addi	sp,sp,-16
    80003dd4:	00813023          	sd	s0,0(sp)
    80003dd8:	00113423          	sd	ra,8(sp)
    80003ddc:	01010413          	addi	s0,sp,16
    80003de0:	02051663          	bnez	a0,80003e0c <either_copyout+0x3c>
    80003de4:	00058513          	mv	a0,a1
    80003de8:	00060593          	mv	a1,a2
    80003dec:	0006861b          	sext.w	a2,a3
    80003df0:	00002097          	auipc	ra,0x2
    80003df4:	c54080e7          	jalr	-940(ra) # 80005a44 <__memmove>
    80003df8:	00813083          	ld	ra,8(sp)
    80003dfc:	00013403          	ld	s0,0(sp)
    80003e00:	00000513          	li	a0,0
    80003e04:	01010113          	addi	sp,sp,16
    80003e08:	00008067          	ret
    80003e0c:	00002517          	auipc	a0,0x2
    80003e10:	3b450513          	addi	a0,a0,948 # 800061c0 <CONSOLE_STATUS+0x1b0>
    80003e14:	00001097          	auipc	ra,0x1
    80003e18:	928080e7          	jalr	-1752(ra) # 8000473c <panic>

0000000080003e1c <either_copyin>:
    80003e1c:	ff010113          	addi	sp,sp,-16
    80003e20:	00813023          	sd	s0,0(sp)
    80003e24:	00113423          	sd	ra,8(sp)
    80003e28:	01010413          	addi	s0,sp,16
    80003e2c:	02059463          	bnez	a1,80003e54 <either_copyin+0x38>
    80003e30:	00060593          	mv	a1,a2
    80003e34:	0006861b          	sext.w	a2,a3
    80003e38:	00002097          	auipc	ra,0x2
    80003e3c:	c0c080e7          	jalr	-1012(ra) # 80005a44 <__memmove>
    80003e40:	00813083          	ld	ra,8(sp)
    80003e44:	00013403          	ld	s0,0(sp)
    80003e48:	00000513          	li	a0,0
    80003e4c:	01010113          	addi	sp,sp,16
    80003e50:	00008067          	ret
    80003e54:	00002517          	auipc	a0,0x2
    80003e58:	39450513          	addi	a0,a0,916 # 800061e8 <CONSOLE_STATUS+0x1d8>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	8e0080e7          	jalr	-1824(ra) # 8000473c <panic>

0000000080003e64 <trapinit>:
    80003e64:	ff010113          	addi	sp,sp,-16
    80003e68:	00813423          	sd	s0,8(sp)
    80003e6c:	01010413          	addi	s0,sp,16
    80003e70:	00813403          	ld	s0,8(sp)
    80003e74:	00002597          	auipc	a1,0x2
    80003e78:	39c58593          	addi	a1,a1,924 # 80006210 <CONSOLE_STATUS+0x200>
    80003e7c:	00004517          	auipc	a0,0x4
    80003e80:	52450513          	addi	a0,a0,1316 # 800083a0 <tickslock>
    80003e84:	01010113          	addi	sp,sp,16
    80003e88:	00001317          	auipc	t1,0x1
    80003e8c:	5c030067          	jr	1472(t1) # 80005448 <initlock>

0000000080003e90 <trapinithart>:
    80003e90:	ff010113          	addi	sp,sp,-16
    80003e94:	00813423          	sd	s0,8(sp)
    80003e98:	01010413          	addi	s0,sp,16
    80003e9c:	00000797          	auipc	a5,0x0
    80003ea0:	2f478793          	addi	a5,a5,756 # 80004190 <kernelvec>
    80003ea4:	10579073          	csrw	stvec,a5
    80003ea8:	00813403          	ld	s0,8(sp)
    80003eac:	01010113          	addi	sp,sp,16
    80003eb0:	00008067          	ret

0000000080003eb4 <usertrap>:
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00813423          	sd	s0,8(sp)
    80003ebc:	01010413          	addi	s0,sp,16
    80003ec0:	00813403          	ld	s0,8(sp)
    80003ec4:	01010113          	addi	sp,sp,16
    80003ec8:	00008067          	ret

0000000080003ecc <usertrapret>:
    80003ecc:	ff010113          	addi	sp,sp,-16
    80003ed0:	00813423          	sd	s0,8(sp)
    80003ed4:	01010413          	addi	s0,sp,16
    80003ed8:	00813403          	ld	s0,8(sp)
    80003edc:	01010113          	addi	sp,sp,16
    80003ee0:	00008067          	ret

0000000080003ee4 <kerneltrap>:
    80003ee4:	fe010113          	addi	sp,sp,-32
    80003ee8:	00813823          	sd	s0,16(sp)
    80003eec:	00113c23          	sd	ra,24(sp)
    80003ef0:	00913423          	sd	s1,8(sp)
    80003ef4:	02010413          	addi	s0,sp,32
    80003ef8:	142025f3          	csrr	a1,scause
    80003efc:	100027f3          	csrr	a5,sstatus
    80003f00:	0027f793          	andi	a5,a5,2
    80003f04:	10079c63          	bnez	a5,8000401c <kerneltrap+0x138>
    80003f08:	142027f3          	csrr	a5,scause
    80003f0c:	0207ce63          	bltz	a5,80003f48 <kerneltrap+0x64>
    80003f10:	00002517          	auipc	a0,0x2
    80003f14:	34850513          	addi	a0,a0,840 # 80006258 <CONSOLE_STATUS+0x248>
    80003f18:	00001097          	auipc	ra,0x1
    80003f1c:	880080e7          	jalr	-1920(ra) # 80004798 <__printf>
    80003f20:	141025f3          	csrr	a1,sepc
    80003f24:	14302673          	csrr	a2,stval
    80003f28:	00002517          	auipc	a0,0x2
    80003f2c:	34050513          	addi	a0,a0,832 # 80006268 <CONSOLE_STATUS+0x258>
    80003f30:	00001097          	auipc	ra,0x1
    80003f34:	868080e7          	jalr	-1944(ra) # 80004798 <__printf>
    80003f38:	00002517          	auipc	a0,0x2
    80003f3c:	34850513          	addi	a0,a0,840 # 80006280 <CONSOLE_STATUS+0x270>
    80003f40:	00000097          	auipc	ra,0x0
    80003f44:	7fc080e7          	jalr	2044(ra) # 8000473c <panic>
    80003f48:	0ff7f713          	andi	a4,a5,255
    80003f4c:	00900693          	li	a3,9
    80003f50:	04d70063          	beq	a4,a3,80003f90 <kerneltrap+0xac>
    80003f54:	fff00713          	li	a4,-1
    80003f58:	03f71713          	slli	a4,a4,0x3f
    80003f5c:	00170713          	addi	a4,a4,1
    80003f60:	fae798e3          	bne	a5,a4,80003f10 <kerneltrap+0x2c>
    80003f64:	00000097          	auipc	ra,0x0
    80003f68:	e00080e7          	jalr	-512(ra) # 80003d64 <cpuid>
    80003f6c:	06050663          	beqz	a0,80003fd8 <kerneltrap+0xf4>
    80003f70:	144027f3          	csrr	a5,sip
    80003f74:	ffd7f793          	andi	a5,a5,-3
    80003f78:	14479073          	csrw	sip,a5
    80003f7c:	01813083          	ld	ra,24(sp)
    80003f80:	01013403          	ld	s0,16(sp)
    80003f84:	00813483          	ld	s1,8(sp)
    80003f88:	02010113          	addi	sp,sp,32
    80003f8c:	00008067          	ret
    80003f90:	00000097          	auipc	ra,0x0
    80003f94:	3c4080e7          	jalr	964(ra) # 80004354 <plic_claim>
    80003f98:	00a00793          	li	a5,10
    80003f9c:	00050493          	mv	s1,a0
    80003fa0:	06f50863          	beq	a0,a5,80004010 <kerneltrap+0x12c>
    80003fa4:	fc050ce3          	beqz	a0,80003f7c <kerneltrap+0x98>
    80003fa8:	00050593          	mv	a1,a0
    80003fac:	00002517          	auipc	a0,0x2
    80003fb0:	28c50513          	addi	a0,a0,652 # 80006238 <CONSOLE_STATUS+0x228>
    80003fb4:	00000097          	auipc	ra,0x0
    80003fb8:	7e4080e7          	jalr	2020(ra) # 80004798 <__printf>
    80003fbc:	01013403          	ld	s0,16(sp)
    80003fc0:	01813083          	ld	ra,24(sp)
    80003fc4:	00048513          	mv	a0,s1
    80003fc8:	00813483          	ld	s1,8(sp)
    80003fcc:	02010113          	addi	sp,sp,32
    80003fd0:	00000317          	auipc	t1,0x0
    80003fd4:	3bc30067          	jr	956(t1) # 8000438c <plic_complete>
    80003fd8:	00004517          	auipc	a0,0x4
    80003fdc:	3c850513          	addi	a0,a0,968 # 800083a0 <tickslock>
    80003fe0:	00001097          	auipc	ra,0x1
    80003fe4:	48c080e7          	jalr	1164(ra) # 8000546c <acquire>
    80003fe8:	00003717          	auipc	a4,0x3
    80003fec:	28c70713          	addi	a4,a4,652 # 80007274 <ticks>
    80003ff0:	00072783          	lw	a5,0(a4)
    80003ff4:	00004517          	auipc	a0,0x4
    80003ff8:	3ac50513          	addi	a0,a0,940 # 800083a0 <tickslock>
    80003ffc:	0017879b          	addiw	a5,a5,1
    80004000:	00f72023          	sw	a5,0(a4)
    80004004:	00001097          	auipc	ra,0x1
    80004008:	534080e7          	jalr	1332(ra) # 80005538 <release>
    8000400c:	f65ff06f          	j	80003f70 <kerneltrap+0x8c>
    80004010:	00001097          	auipc	ra,0x1
    80004014:	090080e7          	jalr	144(ra) # 800050a0 <uartintr>
    80004018:	fa5ff06f          	j	80003fbc <kerneltrap+0xd8>
    8000401c:	00002517          	auipc	a0,0x2
    80004020:	1fc50513          	addi	a0,a0,508 # 80006218 <CONSOLE_STATUS+0x208>
    80004024:	00000097          	auipc	ra,0x0
    80004028:	718080e7          	jalr	1816(ra) # 8000473c <panic>

000000008000402c <clockintr>:
    8000402c:	fe010113          	addi	sp,sp,-32
    80004030:	00813823          	sd	s0,16(sp)
    80004034:	00913423          	sd	s1,8(sp)
    80004038:	00113c23          	sd	ra,24(sp)
    8000403c:	02010413          	addi	s0,sp,32
    80004040:	00004497          	auipc	s1,0x4
    80004044:	36048493          	addi	s1,s1,864 # 800083a0 <tickslock>
    80004048:	00048513          	mv	a0,s1
    8000404c:	00001097          	auipc	ra,0x1
    80004050:	420080e7          	jalr	1056(ra) # 8000546c <acquire>
    80004054:	00003717          	auipc	a4,0x3
    80004058:	22070713          	addi	a4,a4,544 # 80007274 <ticks>
    8000405c:	00072783          	lw	a5,0(a4)
    80004060:	01013403          	ld	s0,16(sp)
    80004064:	01813083          	ld	ra,24(sp)
    80004068:	00048513          	mv	a0,s1
    8000406c:	0017879b          	addiw	a5,a5,1
    80004070:	00813483          	ld	s1,8(sp)
    80004074:	00f72023          	sw	a5,0(a4)
    80004078:	02010113          	addi	sp,sp,32
    8000407c:	00001317          	auipc	t1,0x1
    80004080:	4bc30067          	jr	1212(t1) # 80005538 <release>

0000000080004084 <devintr>:
    80004084:	142027f3          	csrr	a5,scause
    80004088:	00000513          	li	a0,0
    8000408c:	0007c463          	bltz	a5,80004094 <devintr+0x10>
    80004090:	00008067          	ret
    80004094:	fe010113          	addi	sp,sp,-32
    80004098:	00813823          	sd	s0,16(sp)
    8000409c:	00113c23          	sd	ra,24(sp)
    800040a0:	00913423          	sd	s1,8(sp)
    800040a4:	02010413          	addi	s0,sp,32
    800040a8:	0ff7f713          	andi	a4,a5,255
    800040ac:	00900693          	li	a3,9
    800040b0:	04d70c63          	beq	a4,a3,80004108 <devintr+0x84>
    800040b4:	fff00713          	li	a4,-1
    800040b8:	03f71713          	slli	a4,a4,0x3f
    800040bc:	00170713          	addi	a4,a4,1
    800040c0:	00e78c63          	beq	a5,a4,800040d8 <devintr+0x54>
    800040c4:	01813083          	ld	ra,24(sp)
    800040c8:	01013403          	ld	s0,16(sp)
    800040cc:	00813483          	ld	s1,8(sp)
    800040d0:	02010113          	addi	sp,sp,32
    800040d4:	00008067          	ret
    800040d8:	00000097          	auipc	ra,0x0
    800040dc:	c8c080e7          	jalr	-884(ra) # 80003d64 <cpuid>
    800040e0:	06050663          	beqz	a0,8000414c <devintr+0xc8>
    800040e4:	144027f3          	csrr	a5,sip
    800040e8:	ffd7f793          	andi	a5,a5,-3
    800040ec:	14479073          	csrw	sip,a5
    800040f0:	01813083          	ld	ra,24(sp)
    800040f4:	01013403          	ld	s0,16(sp)
    800040f8:	00813483          	ld	s1,8(sp)
    800040fc:	00200513          	li	a0,2
    80004100:	02010113          	addi	sp,sp,32
    80004104:	00008067          	ret
    80004108:	00000097          	auipc	ra,0x0
    8000410c:	24c080e7          	jalr	588(ra) # 80004354 <plic_claim>
    80004110:	00a00793          	li	a5,10
    80004114:	00050493          	mv	s1,a0
    80004118:	06f50663          	beq	a0,a5,80004184 <devintr+0x100>
    8000411c:	00100513          	li	a0,1
    80004120:	fa0482e3          	beqz	s1,800040c4 <devintr+0x40>
    80004124:	00048593          	mv	a1,s1
    80004128:	00002517          	auipc	a0,0x2
    8000412c:	11050513          	addi	a0,a0,272 # 80006238 <CONSOLE_STATUS+0x228>
    80004130:	00000097          	auipc	ra,0x0
    80004134:	668080e7          	jalr	1640(ra) # 80004798 <__printf>
    80004138:	00048513          	mv	a0,s1
    8000413c:	00000097          	auipc	ra,0x0
    80004140:	250080e7          	jalr	592(ra) # 8000438c <plic_complete>
    80004144:	00100513          	li	a0,1
    80004148:	f7dff06f          	j	800040c4 <devintr+0x40>
    8000414c:	00004517          	auipc	a0,0x4
    80004150:	25450513          	addi	a0,a0,596 # 800083a0 <tickslock>
    80004154:	00001097          	auipc	ra,0x1
    80004158:	318080e7          	jalr	792(ra) # 8000546c <acquire>
    8000415c:	00003717          	auipc	a4,0x3
    80004160:	11870713          	addi	a4,a4,280 # 80007274 <ticks>
    80004164:	00072783          	lw	a5,0(a4)
    80004168:	00004517          	auipc	a0,0x4
    8000416c:	23850513          	addi	a0,a0,568 # 800083a0 <tickslock>
    80004170:	0017879b          	addiw	a5,a5,1
    80004174:	00f72023          	sw	a5,0(a4)
    80004178:	00001097          	auipc	ra,0x1
    8000417c:	3c0080e7          	jalr	960(ra) # 80005538 <release>
    80004180:	f65ff06f          	j	800040e4 <devintr+0x60>
    80004184:	00001097          	auipc	ra,0x1
    80004188:	f1c080e7          	jalr	-228(ra) # 800050a0 <uartintr>
    8000418c:	fadff06f          	j	80004138 <devintr+0xb4>

0000000080004190 <kernelvec>:
    80004190:	f0010113          	addi	sp,sp,-256
    80004194:	00113023          	sd	ra,0(sp)
    80004198:	00213423          	sd	sp,8(sp)
    8000419c:	00313823          	sd	gp,16(sp)
    800041a0:	00413c23          	sd	tp,24(sp)
    800041a4:	02513023          	sd	t0,32(sp)
    800041a8:	02613423          	sd	t1,40(sp)
    800041ac:	02713823          	sd	t2,48(sp)
    800041b0:	02813c23          	sd	s0,56(sp)
    800041b4:	04913023          	sd	s1,64(sp)
    800041b8:	04a13423          	sd	a0,72(sp)
    800041bc:	04b13823          	sd	a1,80(sp)
    800041c0:	04c13c23          	sd	a2,88(sp)
    800041c4:	06d13023          	sd	a3,96(sp)
    800041c8:	06e13423          	sd	a4,104(sp)
    800041cc:	06f13823          	sd	a5,112(sp)
    800041d0:	07013c23          	sd	a6,120(sp)
    800041d4:	09113023          	sd	a7,128(sp)
    800041d8:	09213423          	sd	s2,136(sp)
    800041dc:	09313823          	sd	s3,144(sp)
    800041e0:	09413c23          	sd	s4,152(sp)
    800041e4:	0b513023          	sd	s5,160(sp)
    800041e8:	0b613423          	sd	s6,168(sp)
    800041ec:	0b713823          	sd	s7,176(sp)
    800041f0:	0b813c23          	sd	s8,184(sp)
    800041f4:	0d913023          	sd	s9,192(sp)
    800041f8:	0da13423          	sd	s10,200(sp)
    800041fc:	0db13823          	sd	s11,208(sp)
    80004200:	0dc13c23          	sd	t3,216(sp)
    80004204:	0fd13023          	sd	t4,224(sp)
    80004208:	0fe13423          	sd	t5,232(sp)
    8000420c:	0ff13823          	sd	t6,240(sp)
    80004210:	cd5ff0ef          	jal	ra,80003ee4 <kerneltrap>
    80004214:	00013083          	ld	ra,0(sp)
    80004218:	00813103          	ld	sp,8(sp)
    8000421c:	01013183          	ld	gp,16(sp)
    80004220:	02013283          	ld	t0,32(sp)
    80004224:	02813303          	ld	t1,40(sp)
    80004228:	03013383          	ld	t2,48(sp)
    8000422c:	03813403          	ld	s0,56(sp)
    80004230:	04013483          	ld	s1,64(sp)
    80004234:	04813503          	ld	a0,72(sp)
    80004238:	05013583          	ld	a1,80(sp)
    8000423c:	05813603          	ld	a2,88(sp)
    80004240:	06013683          	ld	a3,96(sp)
    80004244:	06813703          	ld	a4,104(sp)
    80004248:	07013783          	ld	a5,112(sp)
    8000424c:	07813803          	ld	a6,120(sp)
    80004250:	08013883          	ld	a7,128(sp)
    80004254:	08813903          	ld	s2,136(sp)
    80004258:	09013983          	ld	s3,144(sp)
    8000425c:	09813a03          	ld	s4,152(sp)
    80004260:	0a013a83          	ld	s5,160(sp)
    80004264:	0a813b03          	ld	s6,168(sp)
    80004268:	0b013b83          	ld	s7,176(sp)
    8000426c:	0b813c03          	ld	s8,184(sp)
    80004270:	0c013c83          	ld	s9,192(sp)
    80004274:	0c813d03          	ld	s10,200(sp)
    80004278:	0d013d83          	ld	s11,208(sp)
    8000427c:	0d813e03          	ld	t3,216(sp)
    80004280:	0e013e83          	ld	t4,224(sp)
    80004284:	0e813f03          	ld	t5,232(sp)
    80004288:	0f013f83          	ld	t6,240(sp)
    8000428c:	10010113          	addi	sp,sp,256
    80004290:	10200073          	sret
    80004294:	00000013          	nop
    80004298:	00000013          	nop
    8000429c:	00000013          	nop

00000000800042a0 <timervec>:
    800042a0:	34051573          	csrrw	a0,mscratch,a0
    800042a4:	00b53023          	sd	a1,0(a0)
    800042a8:	00c53423          	sd	a2,8(a0)
    800042ac:	00d53823          	sd	a3,16(a0)
    800042b0:	01853583          	ld	a1,24(a0)
    800042b4:	02053603          	ld	a2,32(a0)
    800042b8:	0005b683          	ld	a3,0(a1)
    800042bc:	00c686b3          	add	a3,a3,a2
    800042c0:	00d5b023          	sd	a3,0(a1)
    800042c4:	00200593          	li	a1,2
    800042c8:	14459073          	csrw	sip,a1
    800042cc:	01053683          	ld	a3,16(a0)
    800042d0:	00853603          	ld	a2,8(a0)
    800042d4:	00053583          	ld	a1,0(a0)
    800042d8:	34051573          	csrrw	a0,mscratch,a0
    800042dc:	30200073          	mret

00000000800042e0 <plicinit>:
    800042e0:	ff010113          	addi	sp,sp,-16
    800042e4:	00813423          	sd	s0,8(sp)
    800042e8:	01010413          	addi	s0,sp,16
    800042ec:	00813403          	ld	s0,8(sp)
    800042f0:	0c0007b7          	lui	a5,0xc000
    800042f4:	00100713          	li	a4,1
    800042f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800042fc:	00e7a223          	sw	a4,4(a5)
    80004300:	01010113          	addi	sp,sp,16
    80004304:	00008067          	ret

0000000080004308 <plicinithart>:
    80004308:	ff010113          	addi	sp,sp,-16
    8000430c:	00813023          	sd	s0,0(sp)
    80004310:	00113423          	sd	ra,8(sp)
    80004314:	01010413          	addi	s0,sp,16
    80004318:	00000097          	auipc	ra,0x0
    8000431c:	a4c080e7          	jalr	-1460(ra) # 80003d64 <cpuid>
    80004320:	0085171b          	slliw	a4,a0,0x8
    80004324:	0c0027b7          	lui	a5,0xc002
    80004328:	00e787b3          	add	a5,a5,a4
    8000432c:	40200713          	li	a4,1026
    80004330:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004334:	00813083          	ld	ra,8(sp)
    80004338:	00013403          	ld	s0,0(sp)
    8000433c:	00d5151b          	slliw	a0,a0,0xd
    80004340:	0c2017b7          	lui	a5,0xc201
    80004344:	00a78533          	add	a0,a5,a0
    80004348:	00052023          	sw	zero,0(a0)
    8000434c:	01010113          	addi	sp,sp,16
    80004350:	00008067          	ret

0000000080004354 <plic_claim>:
    80004354:	ff010113          	addi	sp,sp,-16
    80004358:	00813023          	sd	s0,0(sp)
    8000435c:	00113423          	sd	ra,8(sp)
    80004360:	01010413          	addi	s0,sp,16
    80004364:	00000097          	auipc	ra,0x0
    80004368:	a00080e7          	jalr	-1536(ra) # 80003d64 <cpuid>
    8000436c:	00813083          	ld	ra,8(sp)
    80004370:	00013403          	ld	s0,0(sp)
    80004374:	00d5151b          	slliw	a0,a0,0xd
    80004378:	0c2017b7          	lui	a5,0xc201
    8000437c:	00a78533          	add	a0,a5,a0
    80004380:	00452503          	lw	a0,4(a0)
    80004384:	01010113          	addi	sp,sp,16
    80004388:	00008067          	ret

000000008000438c <plic_complete>:
    8000438c:	fe010113          	addi	sp,sp,-32
    80004390:	00813823          	sd	s0,16(sp)
    80004394:	00913423          	sd	s1,8(sp)
    80004398:	00113c23          	sd	ra,24(sp)
    8000439c:	02010413          	addi	s0,sp,32
    800043a0:	00050493          	mv	s1,a0
    800043a4:	00000097          	auipc	ra,0x0
    800043a8:	9c0080e7          	jalr	-1600(ra) # 80003d64 <cpuid>
    800043ac:	01813083          	ld	ra,24(sp)
    800043b0:	01013403          	ld	s0,16(sp)
    800043b4:	00d5179b          	slliw	a5,a0,0xd
    800043b8:	0c201737          	lui	a4,0xc201
    800043bc:	00f707b3          	add	a5,a4,a5
    800043c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800043c4:	00813483          	ld	s1,8(sp)
    800043c8:	02010113          	addi	sp,sp,32
    800043cc:	00008067          	ret

00000000800043d0 <consolewrite>:
    800043d0:	fb010113          	addi	sp,sp,-80
    800043d4:	04813023          	sd	s0,64(sp)
    800043d8:	04113423          	sd	ra,72(sp)
    800043dc:	02913c23          	sd	s1,56(sp)
    800043e0:	03213823          	sd	s2,48(sp)
    800043e4:	03313423          	sd	s3,40(sp)
    800043e8:	03413023          	sd	s4,32(sp)
    800043ec:	01513c23          	sd	s5,24(sp)
    800043f0:	05010413          	addi	s0,sp,80
    800043f4:	06c05c63          	blez	a2,8000446c <consolewrite+0x9c>
    800043f8:	00060993          	mv	s3,a2
    800043fc:	00050a13          	mv	s4,a0
    80004400:	00058493          	mv	s1,a1
    80004404:	00000913          	li	s2,0
    80004408:	fff00a93          	li	s5,-1
    8000440c:	01c0006f          	j	80004428 <consolewrite+0x58>
    80004410:	fbf44503          	lbu	a0,-65(s0)
    80004414:	0019091b          	addiw	s2,s2,1
    80004418:	00148493          	addi	s1,s1,1
    8000441c:	00001097          	auipc	ra,0x1
    80004420:	a9c080e7          	jalr	-1380(ra) # 80004eb8 <uartputc>
    80004424:	03298063          	beq	s3,s2,80004444 <consolewrite+0x74>
    80004428:	00048613          	mv	a2,s1
    8000442c:	00100693          	li	a3,1
    80004430:	000a0593          	mv	a1,s4
    80004434:	fbf40513          	addi	a0,s0,-65
    80004438:	00000097          	auipc	ra,0x0
    8000443c:	9e4080e7          	jalr	-1564(ra) # 80003e1c <either_copyin>
    80004440:	fd5518e3          	bne	a0,s5,80004410 <consolewrite+0x40>
    80004444:	04813083          	ld	ra,72(sp)
    80004448:	04013403          	ld	s0,64(sp)
    8000444c:	03813483          	ld	s1,56(sp)
    80004450:	02813983          	ld	s3,40(sp)
    80004454:	02013a03          	ld	s4,32(sp)
    80004458:	01813a83          	ld	s5,24(sp)
    8000445c:	00090513          	mv	a0,s2
    80004460:	03013903          	ld	s2,48(sp)
    80004464:	05010113          	addi	sp,sp,80
    80004468:	00008067          	ret
    8000446c:	00000913          	li	s2,0
    80004470:	fd5ff06f          	j	80004444 <consolewrite+0x74>

0000000080004474 <consoleread>:
    80004474:	f9010113          	addi	sp,sp,-112
    80004478:	06813023          	sd	s0,96(sp)
    8000447c:	04913c23          	sd	s1,88(sp)
    80004480:	05213823          	sd	s2,80(sp)
    80004484:	05313423          	sd	s3,72(sp)
    80004488:	05413023          	sd	s4,64(sp)
    8000448c:	03513c23          	sd	s5,56(sp)
    80004490:	03613823          	sd	s6,48(sp)
    80004494:	03713423          	sd	s7,40(sp)
    80004498:	03813023          	sd	s8,32(sp)
    8000449c:	06113423          	sd	ra,104(sp)
    800044a0:	01913c23          	sd	s9,24(sp)
    800044a4:	07010413          	addi	s0,sp,112
    800044a8:	00060b93          	mv	s7,a2
    800044ac:	00050913          	mv	s2,a0
    800044b0:	00058c13          	mv	s8,a1
    800044b4:	00060b1b          	sext.w	s6,a2
    800044b8:	00004497          	auipc	s1,0x4
    800044bc:	f1048493          	addi	s1,s1,-240 # 800083c8 <cons>
    800044c0:	00400993          	li	s3,4
    800044c4:	fff00a13          	li	s4,-1
    800044c8:	00a00a93          	li	s5,10
    800044cc:	05705e63          	blez	s7,80004528 <consoleread+0xb4>
    800044d0:	09c4a703          	lw	a4,156(s1)
    800044d4:	0984a783          	lw	a5,152(s1)
    800044d8:	0007071b          	sext.w	a4,a4
    800044dc:	08e78463          	beq	a5,a4,80004564 <consoleread+0xf0>
    800044e0:	07f7f713          	andi	a4,a5,127
    800044e4:	00e48733          	add	a4,s1,a4
    800044e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800044ec:	0017869b          	addiw	a3,a5,1
    800044f0:	08d4ac23          	sw	a3,152(s1)
    800044f4:	00070c9b          	sext.w	s9,a4
    800044f8:	0b370663          	beq	a4,s3,800045a4 <consoleread+0x130>
    800044fc:	00100693          	li	a3,1
    80004500:	f9f40613          	addi	a2,s0,-97
    80004504:	000c0593          	mv	a1,s8
    80004508:	00090513          	mv	a0,s2
    8000450c:	f8e40fa3          	sb	a4,-97(s0)
    80004510:	00000097          	auipc	ra,0x0
    80004514:	8c0080e7          	jalr	-1856(ra) # 80003dd0 <either_copyout>
    80004518:	01450863          	beq	a0,s4,80004528 <consoleread+0xb4>
    8000451c:	001c0c13          	addi	s8,s8,1
    80004520:	fffb8b9b          	addiw	s7,s7,-1
    80004524:	fb5c94e3          	bne	s9,s5,800044cc <consoleread+0x58>
    80004528:	000b851b          	sext.w	a0,s7
    8000452c:	06813083          	ld	ra,104(sp)
    80004530:	06013403          	ld	s0,96(sp)
    80004534:	05813483          	ld	s1,88(sp)
    80004538:	05013903          	ld	s2,80(sp)
    8000453c:	04813983          	ld	s3,72(sp)
    80004540:	04013a03          	ld	s4,64(sp)
    80004544:	03813a83          	ld	s5,56(sp)
    80004548:	02813b83          	ld	s7,40(sp)
    8000454c:	02013c03          	ld	s8,32(sp)
    80004550:	01813c83          	ld	s9,24(sp)
    80004554:	40ab053b          	subw	a0,s6,a0
    80004558:	03013b03          	ld	s6,48(sp)
    8000455c:	07010113          	addi	sp,sp,112
    80004560:	00008067          	ret
    80004564:	00001097          	auipc	ra,0x1
    80004568:	1d8080e7          	jalr	472(ra) # 8000573c <push_on>
    8000456c:	0984a703          	lw	a4,152(s1)
    80004570:	09c4a783          	lw	a5,156(s1)
    80004574:	0007879b          	sext.w	a5,a5
    80004578:	fef70ce3          	beq	a4,a5,80004570 <consoleread+0xfc>
    8000457c:	00001097          	auipc	ra,0x1
    80004580:	234080e7          	jalr	564(ra) # 800057b0 <pop_on>
    80004584:	0984a783          	lw	a5,152(s1)
    80004588:	07f7f713          	andi	a4,a5,127
    8000458c:	00e48733          	add	a4,s1,a4
    80004590:	01874703          	lbu	a4,24(a4)
    80004594:	0017869b          	addiw	a3,a5,1
    80004598:	08d4ac23          	sw	a3,152(s1)
    8000459c:	00070c9b          	sext.w	s9,a4
    800045a0:	f5371ee3          	bne	a4,s3,800044fc <consoleread+0x88>
    800045a4:	000b851b          	sext.w	a0,s7
    800045a8:	f96bf2e3          	bgeu	s7,s6,8000452c <consoleread+0xb8>
    800045ac:	08f4ac23          	sw	a5,152(s1)
    800045b0:	f7dff06f          	j	8000452c <consoleread+0xb8>

00000000800045b4 <consputc>:
    800045b4:	10000793          	li	a5,256
    800045b8:	00f50663          	beq	a0,a5,800045c4 <consputc+0x10>
    800045bc:	00001317          	auipc	t1,0x1
    800045c0:	9f430067          	jr	-1548(t1) # 80004fb0 <uartputc_sync>
    800045c4:	ff010113          	addi	sp,sp,-16
    800045c8:	00113423          	sd	ra,8(sp)
    800045cc:	00813023          	sd	s0,0(sp)
    800045d0:	01010413          	addi	s0,sp,16
    800045d4:	00800513          	li	a0,8
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	9d8080e7          	jalr	-1576(ra) # 80004fb0 <uartputc_sync>
    800045e0:	02000513          	li	a0,32
    800045e4:	00001097          	auipc	ra,0x1
    800045e8:	9cc080e7          	jalr	-1588(ra) # 80004fb0 <uartputc_sync>
    800045ec:	00013403          	ld	s0,0(sp)
    800045f0:	00813083          	ld	ra,8(sp)
    800045f4:	00800513          	li	a0,8
    800045f8:	01010113          	addi	sp,sp,16
    800045fc:	00001317          	auipc	t1,0x1
    80004600:	9b430067          	jr	-1612(t1) # 80004fb0 <uartputc_sync>

0000000080004604 <consoleintr>:
    80004604:	fe010113          	addi	sp,sp,-32
    80004608:	00813823          	sd	s0,16(sp)
    8000460c:	00913423          	sd	s1,8(sp)
    80004610:	01213023          	sd	s2,0(sp)
    80004614:	00113c23          	sd	ra,24(sp)
    80004618:	02010413          	addi	s0,sp,32
    8000461c:	00004917          	auipc	s2,0x4
    80004620:	dac90913          	addi	s2,s2,-596 # 800083c8 <cons>
    80004624:	00050493          	mv	s1,a0
    80004628:	00090513          	mv	a0,s2
    8000462c:	00001097          	auipc	ra,0x1
    80004630:	e40080e7          	jalr	-448(ra) # 8000546c <acquire>
    80004634:	02048c63          	beqz	s1,8000466c <consoleintr+0x68>
    80004638:	0a092783          	lw	a5,160(s2)
    8000463c:	09892703          	lw	a4,152(s2)
    80004640:	07f00693          	li	a3,127
    80004644:	40e7873b          	subw	a4,a5,a4
    80004648:	02e6e263          	bltu	a3,a4,8000466c <consoleintr+0x68>
    8000464c:	00d00713          	li	a4,13
    80004650:	04e48063          	beq	s1,a4,80004690 <consoleintr+0x8c>
    80004654:	07f7f713          	andi	a4,a5,127
    80004658:	00e90733          	add	a4,s2,a4
    8000465c:	0017879b          	addiw	a5,a5,1
    80004660:	0af92023          	sw	a5,160(s2)
    80004664:	00970c23          	sb	s1,24(a4)
    80004668:	08f92e23          	sw	a5,156(s2)
    8000466c:	01013403          	ld	s0,16(sp)
    80004670:	01813083          	ld	ra,24(sp)
    80004674:	00813483          	ld	s1,8(sp)
    80004678:	00013903          	ld	s2,0(sp)
    8000467c:	00004517          	auipc	a0,0x4
    80004680:	d4c50513          	addi	a0,a0,-692 # 800083c8 <cons>
    80004684:	02010113          	addi	sp,sp,32
    80004688:	00001317          	auipc	t1,0x1
    8000468c:	eb030067          	jr	-336(t1) # 80005538 <release>
    80004690:	00a00493          	li	s1,10
    80004694:	fc1ff06f          	j	80004654 <consoleintr+0x50>

0000000080004698 <consoleinit>:
    80004698:	fe010113          	addi	sp,sp,-32
    8000469c:	00113c23          	sd	ra,24(sp)
    800046a0:	00813823          	sd	s0,16(sp)
    800046a4:	00913423          	sd	s1,8(sp)
    800046a8:	02010413          	addi	s0,sp,32
    800046ac:	00004497          	auipc	s1,0x4
    800046b0:	d1c48493          	addi	s1,s1,-740 # 800083c8 <cons>
    800046b4:	00048513          	mv	a0,s1
    800046b8:	00002597          	auipc	a1,0x2
    800046bc:	bd858593          	addi	a1,a1,-1064 # 80006290 <CONSOLE_STATUS+0x280>
    800046c0:	00001097          	auipc	ra,0x1
    800046c4:	d88080e7          	jalr	-632(ra) # 80005448 <initlock>
    800046c8:	00000097          	auipc	ra,0x0
    800046cc:	7ac080e7          	jalr	1964(ra) # 80004e74 <uartinit>
    800046d0:	01813083          	ld	ra,24(sp)
    800046d4:	01013403          	ld	s0,16(sp)
    800046d8:	00000797          	auipc	a5,0x0
    800046dc:	d9c78793          	addi	a5,a5,-612 # 80004474 <consoleread>
    800046e0:	0af4bc23          	sd	a5,184(s1)
    800046e4:	00000797          	auipc	a5,0x0
    800046e8:	cec78793          	addi	a5,a5,-788 # 800043d0 <consolewrite>
    800046ec:	0cf4b023          	sd	a5,192(s1)
    800046f0:	00813483          	ld	s1,8(sp)
    800046f4:	02010113          	addi	sp,sp,32
    800046f8:	00008067          	ret

00000000800046fc <console_read>:
    800046fc:	ff010113          	addi	sp,sp,-16
    80004700:	00813423          	sd	s0,8(sp)
    80004704:	01010413          	addi	s0,sp,16
    80004708:	00813403          	ld	s0,8(sp)
    8000470c:	00004317          	auipc	t1,0x4
    80004710:	d7433303          	ld	t1,-652(t1) # 80008480 <devsw+0x10>
    80004714:	01010113          	addi	sp,sp,16
    80004718:	00030067          	jr	t1

000000008000471c <console_write>:
    8000471c:	ff010113          	addi	sp,sp,-16
    80004720:	00813423          	sd	s0,8(sp)
    80004724:	01010413          	addi	s0,sp,16
    80004728:	00813403          	ld	s0,8(sp)
    8000472c:	00004317          	auipc	t1,0x4
    80004730:	d5c33303          	ld	t1,-676(t1) # 80008488 <devsw+0x18>
    80004734:	01010113          	addi	sp,sp,16
    80004738:	00030067          	jr	t1

000000008000473c <panic>:
    8000473c:	fe010113          	addi	sp,sp,-32
    80004740:	00113c23          	sd	ra,24(sp)
    80004744:	00813823          	sd	s0,16(sp)
    80004748:	00913423          	sd	s1,8(sp)
    8000474c:	02010413          	addi	s0,sp,32
    80004750:	00050493          	mv	s1,a0
    80004754:	00002517          	auipc	a0,0x2
    80004758:	b4450513          	addi	a0,a0,-1212 # 80006298 <CONSOLE_STATUS+0x288>
    8000475c:	00004797          	auipc	a5,0x4
    80004760:	dc07a623          	sw	zero,-564(a5) # 80008528 <pr+0x18>
    80004764:	00000097          	auipc	ra,0x0
    80004768:	034080e7          	jalr	52(ra) # 80004798 <__printf>
    8000476c:	00048513          	mv	a0,s1
    80004770:	00000097          	auipc	ra,0x0
    80004774:	028080e7          	jalr	40(ra) # 80004798 <__printf>
    80004778:	00002517          	auipc	a0,0x2
    8000477c:	b0050513          	addi	a0,a0,-1280 # 80006278 <CONSOLE_STATUS+0x268>
    80004780:	00000097          	auipc	ra,0x0
    80004784:	018080e7          	jalr	24(ra) # 80004798 <__printf>
    80004788:	00100793          	li	a5,1
    8000478c:	00003717          	auipc	a4,0x3
    80004790:	aef72623          	sw	a5,-1300(a4) # 80007278 <panicked>
    80004794:	0000006f          	j	80004794 <panic+0x58>

0000000080004798 <__printf>:
    80004798:	f3010113          	addi	sp,sp,-208
    8000479c:	08813023          	sd	s0,128(sp)
    800047a0:	07313423          	sd	s3,104(sp)
    800047a4:	09010413          	addi	s0,sp,144
    800047a8:	05813023          	sd	s8,64(sp)
    800047ac:	08113423          	sd	ra,136(sp)
    800047b0:	06913c23          	sd	s1,120(sp)
    800047b4:	07213823          	sd	s2,112(sp)
    800047b8:	07413023          	sd	s4,96(sp)
    800047bc:	05513c23          	sd	s5,88(sp)
    800047c0:	05613823          	sd	s6,80(sp)
    800047c4:	05713423          	sd	s7,72(sp)
    800047c8:	03913c23          	sd	s9,56(sp)
    800047cc:	03a13823          	sd	s10,48(sp)
    800047d0:	03b13423          	sd	s11,40(sp)
    800047d4:	00004317          	auipc	t1,0x4
    800047d8:	d3c30313          	addi	t1,t1,-708 # 80008510 <pr>
    800047dc:	01832c03          	lw	s8,24(t1)
    800047e0:	00b43423          	sd	a1,8(s0)
    800047e4:	00c43823          	sd	a2,16(s0)
    800047e8:	00d43c23          	sd	a3,24(s0)
    800047ec:	02e43023          	sd	a4,32(s0)
    800047f0:	02f43423          	sd	a5,40(s0)
    800047f4:	03043823          	sd	a6,48(s0)
    800047f8:	03143c23          	sd	a7,56(s0)
    800047fc:	00050993          	mv	s3,a0
    80004800:	4a0c1663          	bnez	s8,80004cac <__printf+0x514>
    80004804:	60098c63          	beqz	s3,80004e1c <__printf+0x684>
    80004808:	0009c503          	lbu	a0,0(s3)
    8000480c:	00840793          	addi	a5,s0,8
    80004810:	f6f43c23          	sd	a5,-136(s0)
    80004814:	00000493          	li	s1,0
    80004818:	22050063          	beqz	a0,80004a38 <__printf+0x2a0>
    8000481c:	00002a37          	lui	s4,0x2
    80004820:	00018ab7          	lui	s5,0x18
    80004824:	000f4b37          	lui	s6,0xf4
    80004828:	00989bb7          	lui	s7,0x989
    8000482c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004830:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004834:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004838:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000483c:	00148c9b          	addiw	s9,s1,1
    80004840:	02500793          	li	a5,37
    80004844:	01998933          	add	s2,s3,s9
    80004848:	38f51263          	bne	a0,a5,80004bcc <__printf+0x434>
    8000484c:	00094783          	lbu	a5,0(s2)
    80004850:	00078c9b          	sext.w	s9,a5
    80004854:	1e078263          	beqz	a5,80004a38 <__printf+0x2a0>
    80004858:	0024849b          	addiw	s1,s1,2
    8000485c:	07000713          	li	a4,112
    80004860:	00998933          	add	s2,s3,s1
    80004864:	38e78a63          	beq	a5,a4,80004bf8 <__printf+0x460>
    80004868:	20f76863          	bltu	a4,a5,80004a78 <__printf+0x2e0>
    8000486c:	42a78863          	beq	a5,a0,80004c9c <__printf+0x504>
    80004870:	06400713          	li	a4,100
    80004874:	40e79663          	bne	a5,a4,80004c80 <__printf+0x4e8>
    80004878:	f7843783          	ld	a5,-136(s0)
    8000487c:	0007a603          	lw	a2,0(a5)
    80004880:	00878793          	addi	a5,a5,8
    80004884:	f6f43c23          	sd	a5,-136(s0)
    80004888:	42064a63          	bltz	a2,80004cbc <__printf+0x524>
    8000488c:	00a00713          	li	a4,10
    80004890:	02e677bb          	remuw	a5,a2,a4
    80004894:	00002d97          	auipc	s11,0x2
    80004898:	a2cd8d93          	addi	s11,s11,-1492 # 800062c0 <digits>
    8000489c:	00900593          	li	a1,9
    800048a0:	0006051b          	sext.w	a0,a2
    800048a4:	00000c93          	li	s9,0
    800048a8:	02079793          	slli	a5,a5,0x20
    800048ac:	0207d793          	srli	a5,a5,0x20
    800048b0:	00fd87b3          	add	a5,s11,a5
    800048b4:	0007c783          	lbu	a5,0(a5)
    800048b8:	02e656bb          	divuw	a3,a2,a4
    800048bc:	f8f40023          	sb	a5,-128(s0)
    800048c0:	14c5d863          	bge	a1,a2,80004a10 <__printf+0x278>
    800048c4:	06300593          	li	a1,99
    800048c8:	00100c93          	li	s9,1
    800048cc:	02e6f7bb          	remuw	a5,a3,a4
    800048d0:	02079793          	slli	a5,a5,0x20
    800048d4:	0207d793          	srli	a5,a5,0x20
    800048d8:	00fd87b3          	add	a5,s11,a5
    800048dc:	0007c783          	lbu	a5,0(a5)
    800048e0:	02e6d73b          	divuw	a4,a3,a4
    800048e4:	f8f400a3          	sb	a5,-127(s0)
    800048e8:	12a5f463          	bgeu	a1,a0,80004a10 <__printf+0x278>
    800048ec:	00a00693          	li	a3,10
    800048f0:	00900593          	li	a1,9
    800048f4:	02d777bb          	remuw	a5,a4,a3
    800048f8:	02079793          	slli	a5,a5,0x20
    800048fc:	0207d793          	srli	a5,a5,0x20
    80004900:	00fd87b3          	add	a5,s11,a5
    80004904:	0007c503          	lbu	a0,0(a5)
    80004908:	02d757bb          	divuw	a5,a4,a3
    8000490c:	f8a40123          	sb	a0,-126(s0)
    80004910:	48e5f263          	bgeu	a1,a4,80004d94 <__printf+0x5fc>
    80004914:	06300513          	li	a0,99
    80004918:	02d7f5bb          	remuw	a1,a5,a3
    8000491c:	02059593          	slli	a1,a1,0x20
    80004920:	0205d593          	srli	a1,a1,0x20
    80004924:	00bd85b3          	add	a1,s11,a1
    80004928:	0005c583          	lbu	a1,0(a1)
    8000492c:	02d7d7bb          	divuw	a5,a5,a3
    80004930:	f8b401a3          	sb	a1,-125(s0)
    80004934:	48e57263          	bgeu	a0,a4,80004db8 <__printf+0x620>
    80004938:	3e700513          	li	a0,999
    8000493c:	02d7f5bb          	remuw	a1,a5,a3
    80004940:	02059593          	slli	a1,a1,0x20
    80004944:	0205d593          	srli	a1,a1,0x20
    80004948:	00bd85b3          	add	a1,s11,a1
    8000494c:	0005c583          	lbu	a1,0(a1)
    80004950:	02d7d7bb          	divuw	a5,a5,a3
    80004954:	f8b40223          	sb	a1,-124(s0)
    80004958:	46e57663          	bgeu	a0,a4,80004dc4 <__printf+0x62c>
    8000495c:	02d7f5bb          	remuw	a1,a5,a3
    80004960:	02059593          	slli	a1,a1,0x20
    80004964:	0205d593          	srli	a1,a1,0x20
    80004968:	00bd85b3          	add	a1,s11,a1
    8000496c:	0005c583          	lbu	a1,0(a1)
    80004970:	02d7d7bb          	divuw	a5,a5,a3
    80004974:	f8b402a3          	sb	a1,-123(s0)
    80004978:	46ea7863          	bgeu	s4,a4,80004de8 <__printf+0x650>
    8000497c:	02d7f5bb          	remuw	a1,a5,a3
    80004980:	02059593          	slli	a1,a1,0x20
    80004984:	0205d593          	srli	a1,a1,0x20
    80004988:	00bd85b3          	add	a1,s11,a1
    8000498c:	0005c583          	lbu	a1,0(a1)
    80004990:	02d7d7bb          	divuw	a5,a5,a3
    80004994:	f8b40323          	sb	a1,-122(s0)
    80004998:	3eeaf863          	bgeu	s5,a4,80004d88 <__printf+0x5f0>
    8000499c:	02d7f5bb          	remuw	a1,a5,a3
    800049a0:	02059593          	slli	a1,a1,0x20
    800049a4:	0205d593          	srli	a1,a1,0x20
    800049a8:	00bd85b3          	add	a1,s11,a1
    800049ac:	0005c583          	lbu	a1,0(a1)
    800049b0:	02d7d7bb          	divuw	a5,a5,a3
    800049b4:	f8b403a3          	sb	a1,-121(s0)
    800049b8:	42eb7e63          	bgeu	s6,a4,80004df4 <__printf+0x65c>
    800049bc:	02d7f5bb          	remuw	a1,a5,a3
    800049c0:	02059593          	slli	a1,a1,0x20
    800049c4:	0205d593          	srli	a1,a1,0x20
    800049c8:	00bd85b3          	add	a1,s11,a1
    800049cc:	0005c583          	lbu	a1,0(a1)
    800049d0:	02d7d7bb          	divuw	a5,a5,a3
    800049d4:	f8b40423          	sb	a1,-120(s0)
    800049d8:	42ebfc63          	bgeu	s7,a4,80004e10 <__printf+0x678>
    800049dc:	02079793          	slli	a5,a5,0x20
    800049e0:	0207d793          	srli	a5,a5,0x20
    800049e4:	00fd8db3          	add	s11,s11,a5
    800049e8:	000dc703          	lbu	a4,0(s11)
    800049ec:	00a00793          	li	a5,10
    800049f0:	00900c93          	li	s9,9
    800049f4:	f8e404a3          	sb	a4,-119(s0)
    800049f8:	00065c63          	bgez	a2,80004a10 <__printf+0x278>
    800049fc:	f9040713          	addi	a4,s0,-112
    80004a00:	00f70733          	add	a4,a4,a5
    80004a04:	02d00693          	li	a3,45
    80004a08:	fed70823          	sb	a3,-16(a4)
    80004a0c:	00078c93          	mv	s9,a5
    80004a10:	f8040793          	addi	a5,s0,-128
    80004a14:	01978cb3          	add	s9,a5,s9
    80004a18:	f7f40d13          	addi	s10,s0,-129
    80004a1c:	000cc503          	lbu	a0,0(s9)
    80004a20:	fffc8c93          	addi	s9,s9,-1
    80004a24:	00000097          	auipc	ra,0x0
    80004a28:	b90080e7          	jalr	-1136(ra) # 800045b4 <consputc>
    80004a2c:	ffac98e3          	bne	s9,s10,80004a1c <__printf+0x284>
    80004a30:	00094503          	lbu	a0,0(s2)
    80004a34:	e00514e3          	bnez	a0,8000483c <__printf+0xa4>
    80004a38:	1a0c1663          	bnez	s8,80004be4 <__printf+0x44c>
    80004a3c:	08813083          	ld	ra,136(sp)
    80004a40:	08013403          	ld	s0,128(sp)
    80004a44:	07813483          	ld	s1,120(sp)
    80004a48:	07013903          	ld	s2,112(sp)
    80004a4c:	06813983          	ld	s3,104(sp)
    80004a50:	06013a03          	ld	s4,96(sp)
    80004a54:	05813a83          	ld	s5,88(sp)
    80004a58:	05013b03          	ld	s6,80(sp)
    80004a5c:	04813b83          	ld	s7,72(sp)
    80004a60:	04013c03          	ld	s8,64(sp)
    80004a64:	03813c83          	ld	s9,56(sp)
    80004a68:	03013d03          	ld	s10,48(sp)
    80004a6c:	02813d83          	ld	s11,40(sp)
    80004a70:	0d010113          	addi	sp,sp,208
    80004a74:	00008067          	ret
    80004a78:	07300713          	li	a4,115
    80004a7c:	1ce78a63          	beq	a5,a4,80004c50 <__printf+0x4b8>
    80004a80:	07800713          	li	a4,120
    80004a84:	1ee79e63          	bne	a5,a4,80004c80 <__printf+0x4e8>
    80004a88:	f7843783          	ld	a5,-136(s0)
    80004a8c:	0007a703          	lw	a4,0(a5)
    80004a90:	00878793          	addi	a5,a5,8
    80004a94:	f6f43c23          	sd	a5,-136(s0)
    80004a98:	28074263          	bltz	a4,80004d1c <__printf+0x584>
    80004a9c:	00002d97          	auipc	s11,0x2
    80004aa0:	824d8d93          	addi	s11,s11,-2012 # 800062c0 <digits>
    80004aa4:	00f77793          	andi	a5,a4,15
    80004aa8:	00fd87b3          	add	a5,s11,a5
    80004aac:	0007c683          	lbu	a3,0(a5)
    80004ab0:	00f00613          	li	a2,15
    80004ab4:	0007079b          	sext.w	a5,a4
    80004ab8:	f8d40023          	sb	a3,-128(s0)
    80004abc:	0047559b          	srliw	a1,a4,0x4
    80004ac0:	0047569b          	srliw	a3,a4,0x4
    80004ac4:	00000c93          	li	s9,0
    80004ac8:	0ee65063          	bge	a2,a4,80004ba8 <__printf+0x410>
    80004acc:	00f6f693          	andi	a3,a3,15
    80004ad0:	00dd86b3          	add	a3,s11,a3
    80004ad4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004ad8:	0087d79b          	srliw	a5,a5,0x8
    80004adc:	00100c93          	li	s9,1
    80004ae0:	f8d400a3          	sb	a3,-127(s0)
    80004ae4:	0cb67263          	bgeu	a2,a1,80004ba8 <__printf+0x410>
    80004ae8:	00f7f693          	andi	a3,a5,15
    80004aec:	00dd86b3          	add	a3,s11,a3
    80004af0:	0006c583          	lbu	a1,0(a3)
    80004af4:	00f00613          	li	a2,15
    80004af8:	0047d69b          	srliw	a3,a5,0x4
    80004afc:	f8b40123          	sb	a1,-126(s0)
    80004b00:	0047d593          	srli	a1,a5,0x4
    80004b04:	28f67e63          	bgeu	a2,a5,80004da0 <__printf+0x608>
    80004b08:	00f6f693          	andi	a3,a3,15
    80004b0c:	00dd86b3          	add	a3,s11,a3
    80004b10:	0006c503          	lbu	a0,0(a3)
    80004b14:	0087d813          	srli	a6,a5,0x8
    80004b18:	0087d69b          	srliw	a3,a5,0x8
    80004b1c:	f8a401a3          	sb	a0,-125(s0)
    80004b20:	28b67663          	bgeu	a2,a1,80004dac <__printf+0x614>
    80004b24:	00f6f693          	andi	a3,a3,15
    80004b28:	00dd86b3          	add	a3,s11,a3
    80004b2c:	0006c583          	lbu	a1,0(a3)
    80004b30:	00c7d513          	srli	a0,a5,0xc
    80004b34:	00c7d69b          	srliw	a3,a5,0xc
    80004b38:	f8b40223          	sb	a1,-124(s0)
    80004b3c:	29067a63          	bgeu	a2,a6,80004dd0 <__printf+0x638>
    80004b40:	00f6f693          	andi	a3,a3,15
    80004b44:	00dd86b3          	add	a3,s11,a3
    80004b48:	0006c583          	lbu	a1,0(a3)
    80004b4c:	0107d813          	srli	a6,a5,0x10
    80004b50:	0107d69b          	srliw	a3,a5,0x10
    80004b54:	f8b402a3          	sb	a1,-123(s0)
    80004b58:	28a67263          	bgeu	a2,a0,80004ddc <__printf+0x644>
    80004b5c:	00f6f693          	andi	a3,a3,15
    80004b60:	00dd86b3          	add	a3,s11,a3
    80004b64:	0006c683          	lbu	a3,0(a3)
    80004b68:	0147d79b          	srliw	a5,a5,0x14
    80004b6c:	f8d40323          	sb	a3,-122(s0)
    80004b70:	21067663          	bgeu	a2,a6,80004d7c <__printf+0x5e4>
    80004b74:	02079793          	slli	a5,a5,0x20
    80004b78:	0207d793          	srli	a5,a5,0x20
    80004b7c:	00fd8db3          	add	s11,s11,a5
    80004b80:	000dc683          	lbu	a3,0(s11)
    80004b84:	00800793          	li	a5,8
    80004b88:	00700c93          	li	s9,7
    80004b8c:	f8d403a3          	sb	a3,-121(s0)
    80004b90:	00075c63          	bgez	a4,80004ba8 <__printf+0x410>
    80004b94:	f9040713          	addi	a4,s0,-112
    80004b98:	00f70733          	add	a4,a4,a5
    80004b9c:	02d00693          	li	a3,45
    80004ba0:	fed70823          	sb	a3,-16(a4)
    80004ba4:	00078c93          	mv	s9,a5
    80004ba8:	f8040793          	addi	a5,s0,-128
    80004bac:	01978cb3          	add	s9,a5,s9
    80004bb0:	f7f40d13          	addi	s10,s0,-129
    80004bb4:	000cc503          	lbu	a0,0(s9)
    80004bb8:	fffc8c93          	addi	s9,s9,-1
    80004bbc:	00000097          	auipc	ra,0x0
    80004bc0:	9f8080e7          	jalr	-1544(ra) # 800045b4 <consputc>
    80004bc4:	ff9d18e3          	bne	s10,s9,80004bb4 <__printf+0x41c>
    80004bc8:	0100006f          	j	80004bd8 <__printf+0x440>
    80004bcc:	00000097          	auipc	ra,0x0
    80004bd0:	9e8080e7          	jalr	-1560(ra) # 800045b4 <consputc>
    80004bd4:	000c8493          	mv	s1,s9
    80004bd8:	00094503          	lbu	a0,0(s2)
    80004bdc:	c60510e3          	bnez	a0,8000483c <__printf+0xa4>
    80004be0:	e40c0ee3          	beqz	s8,80004a3c <__printf+0x2a4>
    80004be4:	00004517          	auipc	a0,0x4
    80004be8:	92c50513          	addi	a0,a0,-1748 # 80008510 <pr>
    80004bec:	00001097          	auipc	ra,0x1
    80004bf0:	94c080e7          	jalr	-1716(ra) # 80005538 <release>
    80004bf4:	e49ff06f          	j	80004a3c <__printf+0x2a4>
    80004bf8:	f7843783          	ld	a5,-136(s0)
    80004bfc:	03000513          	li	a0,48
    80004c00:	01000d13          	li	s10,16
    80004c04:	00878713          	addi	a4,a5,8
    80004c08:	0007bc83          	ld	s9,0(a5)
    80004c0c:	f6e43c23          	sd	a4,-136(s0)
    80004c10:	00000097          	auipc	ra,0x0
    80004c14:	9a4080e7          	jalr	-1628(ra) # 800045b4 <consputc>
    80004c18:	07800513          	li	a0,120
    80004c1c:	00000097          	auipc	ra,0x0
    80004c20:	998080e7          	jalr	-1640(ra) # 800045b4 <consputc>
    80004c24:	00001d97          	auipc	s11,0x1
    80004c28:	69cd8d93          	addi	s11,s11,1692 # 800062c0 <digits>
    80004c2c:	03ccd793          	srli	a5,s9,0x3c
    80004c30:	00fd87b3          	add	a5,s11,a5
    80004c34:	0007c503          	lbu	a0,0(a5)
    80004c38:	fffd0d1b          	addiw	s10,s10,-1
    80004c3c:	004c9c93          	slli	s9,s9,0x4
    80004c40:	00000097          	auipc	ra,0x0
    80004c44:	974080e7          	jalr	-1676(ra) # 800045b4 <consputc>
    80004c48:	fe0d12e3          	bnez	s10,80004c2c <__printf+0x494>
    80004c4c:	f8dff06f          	j	80004bd8 <__printf+0x440>
    80004c50:	f7843783          	ld	a5,-136(s0)
    80004c54:	0007bc83          	ld	s9,0(a5)
    80004c58:	00878793          	addi	a5,a5,8
    80004c5c:	f6f43c23          	sd	a5,-136(s0)
    80004c60:	000c9a63          	bnez	s9,80004c74 <__printf+0x4dc>
    80004c64:	1080006f          	j	80004d6c <__printf+0x5d4>
    80004c68:	001c8c93          	addi	s9,s9,1
    80004c6c:	00000097          	auipc	ra,0x0
    80004c70:	948080e7          	jalr	-1720(ra) # 800045b4 <consputc>
    80004c74:	000cc503          	lbu	a0,0(s9)
    80004c78:	fe0518e3          	bnez	a0,80004c68 <__printf+0x4d0>
    80004c7c:	f5dff06f          	j	80004bd8 <__printf+0x440>
    80004c80:	02500513          	li	a0,37
    80004c84:	00000097          	auipc	ra,0x0
    80004c88:	930080e7          	jalr	-1744(ra) # 800045b4 <consputc>
    80004c8c:	000c8513          	mv	a0,s9
    80004c90:	00000097          	auipc	ra,0x0
    80004c94:	924080e7          	jalr	-1756(ra) # 800045b4 <consputc>
    80004c98:	f41ff06f          	j	80004bd8 <__printf+0x440>
    80004c9c:	02500513          	li	a0,37
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	914080e7          	jalr	-1772(ra) # 800045b4 <consputc>
    80004ca8:	f31ff06f          	j	80004bd8 <__printf+0x440>
    80004cac:	00030513          	mv	a0,t1
    80004cb0:	00000097          	auipc	ra,0x0
    80004cb4:	7bc080e7          	jalr	1980(ra) # 8000546c <acquire>
    80004cb8:	b4dff06f          	j	80004804 <__printf+0x6c>
    80004cbc:	40c0053b          	negw	a0,a2
    80004cc0:	00a00713          	li	a4,10
    80004cc4:	02e576bb          	remuw	a3,a0,a4
    80004cc8:	00001d97          	auipc	s11,0x1
    80004ccc:	5f8d8d93          	addi	s11,s11,1528 # 800062c0 <digits>
    80004cd0:	ff700593          	li	a1,-9
    80004cd4:	02069693          	slli	a3,a3,0x20
    80004cd8:	0206d693          	srli	a3,a3,0x20
    80004cdc:	00dd86b3          	add	a3,s11,a3
    80004ce0:	0006c683          	lbu	a3,0(a3)
    80004ce4:	02e557bb          	divuw	a5,a0,a4
    80004ce8:	f8d40023          	sb	a3,-128(s0)
    80004cec:	10b65e63          	bge	a2,a1,80004e08 <__printf+0x670>
    80004cf0:	06300593          	li	a1,99
    80004cf4:	02e7f6bb          	remuw	a3,a5,a4
    80004cf8:	02069693          	slli	a3,a3,0x20
    80004cfc:	0206d693          	srli	a3,a3,0x20
    80004d00:	00dd86b3          	add	a3,s11,a3
    80004d04:	0006c683          	lbu	a3,0(a3)
    80004d08:	02e7d73b          	divuw	a4,a5,a4
    80004d0c:	00200793          	li	a5,2
    80004d10:	f8d400a3          	sb	a3,-127(s0)
    80004d14:	bca5ece3          	bltu	a1,a0,800048ec <__printf+0x154>
    80004d18:	ce5ff06f          	j	800049fc <__printf+0x264>
    80004d1c:	40e007bb          	negw	a5,a4
    80004d20:	00001d97          	auipc	s11,0x1
    80004d24:	5a0d8d93          	addi	s11,s11,1440 # 800062c0 <digits>
    80004d28:	00f7f693          	andi	a3,a5,15
    80004d2c:	00dd86b3          	add	a3,s11,a3
    80004d30:	0006c583          	lbu	a1,0(a3)
    80004d34:	ff100613          	li	a2,-15
    80004d38:	0047d69b          	srliw	a3,a5,0x4
    80004d3c:	f8b40023          	sb	a1,-128(s0)
    80004d40:	0047d59b          	srliw	a1,a5,0x4
    80004d44:	0ac75e63          	bge	a4,a2,80004e00 <__printf+0x668>
    80004d48:	00f6f693          	andi	a3,a3,15
    80004d4c:	00dd86b3          	add	a3,s11,a3
    80004d50:	0006c603          	lbu	a2,0(a3)
    80004d54:	00f00693          	li	a3,15
    80004d58:	0087d79b          	srliw	a5,a5,0x8
    80004d5c:	f8c400a3          	sb	a2,-127(s0)
    80004d60:	d8b6e4e3          	bltu	a3,a1,80004ae8 <__printf+0x350>
    80004d64:	00200793          	li	a5,2
    80004d68:	e2dff06f          	j	80004b94 <__printf+0x3fc>
    80004d6c:	00001c97          	auipc	s9,0x1
    80004d70:	534c8c93          	addi	s9,s9,1332 # 800062a0 <CONSOLE_STATUS+0x290>
    80004d74:	02800513          	li	a0,40
    80004d78:	ef1ff06f          	j	80004c68 <__printf+0x4d0>
    80004d7c:	00700793          	li	a5,7
    80004d80:	00600c93          	li	s9,6
    80004d84:	e0dff06f          	j	80004b90 <__printf+0x3f8>
    80004d88:	00700793          	li	a5,7
    80004d8c:	00600c93          	li	s9,6
    80004d90:	c69ff06f          	j	800049f8 <__printf+0x260>
    80004d94:	00300793          	li	a5,3
    80004d98:	00200c93          	li	s9,2
    80004d9c:	c5dff06f          	j	800049f8 <__printf+0x260>
    80004da0:	00300793          	li	a5,3
    80004da4:	00200c93          	li	s9,2
    80004da8:	de9ff06f          	j	80004b90 <__printf+0x3f8>
    80004dac:	00400793          	li	a5,4
    80004db0:	00300c93          	li	s9,3
    80004db4:	dddff06f          	j	80004b90 <__printf+0x3f8>
    80004db8:	00400793          	li	a5,4
    80004dbc:	00300c93          	li	s9,3
    80004dc0:	c39ff06f          	j	800049f8 <__printf+0x260>
    80004dc4:	00500793          	li	a5,5
    80004dc8:	00400c93          	li	s9,4
    80004dcc:	c2dff06f          	j	800049f8 <__printf+0x260>
    80004dd0:	00500793          	li	a5,5
    80004dd4:	00400c93          	li	s9,4
    80004dd8:	db9ff06f          	j	80004b90 <__printf+0x3f8>
    80004ddc:	00600793          	li	a5,6
    80004de0:	00500c93          	li	s9,5
    80004de4:	dadff06f          	j	80004b90 <__printf+0x3f8>
    80004de8:	00600793          	li	a5,6
    80004dec:	00500c93          	li	s9,5
    80004df0:	c09ff06f          	j	800049f8 <__printf+0x260>
    80004df4:	00800793          	li	a5,8
    80004df8:	00700c93          	li	s9,7
    80004dfc:	bfdff06f          	j	800049f8 <__printf+0x260>
    80004e00:	00100793          	li	a5,1
    80004e04:	d91ff06f          	j	80004b94 <__printf+0x3fc>
    80004e08:	00100793          	li	a5,1
    80004e0c:	bf1ff06f          	j	800049fc <__printf+0x264>
    80004e10:	00900793          	li	a5,9
    80004e14:	00800c93          	li	s9,8
    80004e18:	be1ff06f          	j	800049f8 <__printf+0x260>
    80004e1c:	00001517          	auipc	a0,0x1
    80004e20:	48c50513          	addi	a0,a0,1164 # 800062a8 <CONSOLE_STATUS+0x298>
    80004e24:	00000097          	auipc	ra,0x0
    80004e28:	918080e7          	jalr	-1768(ra) # 8000473c <panic>

0000000080004e2c <printfinit>:
    80004e2c:	fe010113          	addi	sp,sp,-32
    80004e30:	00813823          	sd	s0,16(sp)
    80004e34:	00913423          	sd	s1,8(sp)
    80004e38:	00113c23          	sd	ra,24(sp)
    80004e3c:	02010413          	addi	s0,sp,32
    80004e40:	00003497          	auipc	s1,0x3
    80004e44:	6d048493          	addi	s1,s1,1744 # 80008510 <pr>
    80004e48:	00048513          	mv	a0,s1
    80004e4c:	00001597          	auipc	a1,0x1
    80004e50:	46c58593          	addi	a1,a1,1132 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80004e54:	00000097          	auipc	ra,0x0
    80004e58:	5f4080e7          	jalr	1524(ra) # 80005448 <initlock>
    80004e5c:	01813083          	ld	ra,24(sp)
    80004e60:	01013403          	ld	s0,16(sp)
    80004e64:	0004ac23          	sw	zero,24(s1)
    80004e68:	00813483          	ld	s1,8(sp)
    80004e6c:	02010113          	addi	sp,sp,32
    80004e70:	00008067          	ret

0000000080004e74 <uartinit>:
    80004e74:	ff010113          	addi	sp,sp,-16
    80004e78:	00813423          	sd	s0,8(sp)
    80004e7c:	01010413          	addi	s0,sp,16
    80004e80:	100007b7          	lui	a5,0x10000
    80004e84:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004e88:	f8000713          	li	a4,-128
    80004e8c:	00e781a3          	sb	a4,3(a5)
    80004e90:	00300713          	li	a4,3
    80004e94:	00e78023          	sb	a4,0(a5)
    80004e98:	000780a3          	sb	zero,1(a5)
    80004e9c:	00e781a3          	sb	a4,3(a5)
    80004ea0:	00700693          	li	a3,7
    80004ea4:	00d78123          	sb	a3,2(a5)
    80004ea8:	00e780a3          	sb	a4,1(a5)
    80004eac:	00813403          	ld	s0,8(sp)
    80004eb0:	01010113          	addi	sp,sp,16
    80004eb4:	00008067          	ret

0000000080004eb8 <uartputc>:
    80004eb8:	00002797          	auipc	a5,0x2
    80004ebc:	3c07a783          	lw	a5,960(a5) # 80007278 <panicked>
    80004ec0:	00078463          	beqz	a5,80004ec8 <uartputc+0x10>
    80004ec4:	0000006f          	j	80004ec4 <uartputc+0xc>
    80004ec8:	fd010113          	addi	sp,sp,-48
    80004ecc:	02813023          	sd	s0,32(sp)
    80004ed0:	00913c23          	sd	s1,24(sp)
    80004ed4:	01213823          	sd	s2,16(sp)
    80004ed8:	01313423          	sd	s3,8(sp)
    80004edc:	02113423          	sd	ra,40(sp)
    80004ee0:	03010413          	addi	s0,sp,48
    80004ee4:	00002917          	auipc	s2,0x2
    80004ee8:	39c90913          	addi	s2,s2,924 # 80007280 <uart_tx_r>
    80004eec:	00093783          	ld	a5,0(s2)
    80004ef0:	00002497          	auipc	s1,0x2
    80004ef4:	39848493          	addi	s1,s1,920 # 80007288 <uart_tx_w>
    80004ef8:	0004b703          	ld	a4,0(s1)
    80004efc:	02078693          	addi	a3,a5,32
    80004f00:	00050993          	mv	s3,a0
    80004f04:	02e69c63          	bne	a3,a4,80004f3c <uartputc+0x84>
    80004f08:	00001097          	auipc	ra,0x1
    80004f0c:	834080e7          	jalr	-1996(ra) # 8000573c <push_on>
    80004f10:	00093783          	ld	a5,0(s2)
    80004f14:	0004b703          	ld	a4,0(s1)
    80004f18:	02078793          	addi	a5,a5,32
    80004f1c:	00e79463          	bne	a5,a4,80004f24 <uartputc+0x6c>
    80004f20:	0000006f          	j	80004f20 <uartputc+0x68>
    80004f24:	00001097          	auipc	ra,0x1
    80004f28:	88c080e7          	jalr	-1908(ra) # 800057b0 <pop_on>
    80004f2c:	00093783          	ld	a5,0(s2)
    80004f30:	0004b703          	ld	a4,0(s1)
    80004f34:	02078693          	addi	a3,a5,32
    80004f38:	fce688e3          	beq	a3,a4,80004f08 <uartputc+0x50>
    80004f3c:	01f77693          	andi	a3,a4,31
    80004f40:	00003597          	auipc	a1,0x3
    80004f44:	5f058593          	addi	a1,a1,1520 # 80008530 <uart_tx_buf>
    80004f48:	00d586b3          	add	a3,a1,a3
    80004f4c:	00170713          	addi	a4,a4,1
    80004f50:	01368023          	sb	s3,0(a3)
    80004f54:	00e4b023          	sd	a4,0(s1)
    80004f58:	10000637          	lui	a2,0x10000
    80004f5c:	02f71063          	bne	a4,a5,80004f7c <uartputc+0xc4>
    80004f60:	0340006f          	j	80004f94 <uartputc+0xdc>
    80004f64:	00074703          	lbu	a4,0(a4)
    80004f68:	00f93023          	sd	a5,0(s2)
    80004f6c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004f70:	00093783          	ld	a5,0(s2)
    80004f74:	0004b703          	ld	a4,0(s1)
    80004f78:	00f70e63          	beq	a4,a5,80004f94 <uartputc+0xdc>
    80004f7c:	00564683          	lbu	a3,5(a2)
    80004f80:	01f7f713          	andi	a4,a5,31
    80004f84:	00e58733          	add	a4,a1,a4
    80004f88:	0206f693          	andi	a3,a3,32
    80004f8c:	00178793          	addi	a5,a5,1
    80004f90:	fc069ae3          	bnez	a3,80004f64 <uartputc+0xac>
    80004f94:	02813083          	ld	ra,40(sp)
    80004f98:	02013403          	ld	s0,32(sp)
    80004f9c:	01813483          	ld	s1,24(sp)
    80004fa0:	01013903          	ld	s2,16(sp)
    80004fa4:	00813983          	ld	s3,8(sp)
    80004fa8:	03010113          	addi	sp,sp,48
    80004fac:	00008067          	ret

0000000080004fb0 <uartputc_sync>:
    80004fb0:	ff010113          	addi	sp,sp,-16
    80004fb4:	00813423          	sd	s0,8(sp)
    80004fb8:	01010413          	addi	s0,sp,16
    80004fbc:	00002717          	auipc	a4,0x2
    80004fc0:	2bc72703          	lw	a4,700(a4) # 80007278 <panicked>
    80004fc4:	02071663          	bnez	a4,80004ff0 <uartputc_sync+0x40>
    80004fc8:	00050793          	mv	a5,a0
    80004fcc:	100006b7          	lui	a3,0x10000
    80004fd0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004fd4:	02077713          	andi	a4,a4,32
    80004fd8:	fe070ce3          	beqz	a4,80004fd0 <uartputc_sync+0x20>
    80004fdc:	0ff7f793          	andi	a5,a5,255
    80004fe0:	00f68023          	sb	a5,0(a3)
    80004fe4:	00813403          	ld	s0,8(sp)
    80004fe8:	01010113          	addi	sp,sp,16
    80004fec:	00008067          	ret
    80004ff0:	0000006f          	j	80004ff0 <uartputc_sync+0x40>

0000000080004ff4 <uartstart>:
    80004ff4:	ff010113          	addi	sp,sp,-16
    80004ff8:	00813423          	sd	s0,8(sp)
    80004ffc:	01010413          	addi	s0,sp,16
    80005000:	00002617          	auipc	a2,0x2
    80005004:	28060613          	addi	a2,a2,640 # 80007280 <uart_tx_r>
    80005008:	00002517          	auipc	a0,0x2
    8000500c:	28050513          	addi	a0,a0,640 # 80007288 <uart_tx_w>
    80005010:	00063783          	ld	a5,0(a2)
    80005014:	00053703          	ld	a4,0(a0)
    80005018:	04f70263          	beq	a4,a5,8000505c <uartstart+0x68>
    8000501c:	100005b7          	lui	a1,0x10000
    80005020:	00003817          	auipc	a6,0x3
    80005024:	51080813          	addi	a6,a6,1296 # 80008530 <uart_tx_buf>
    80005028:	01c0006f          	j	80005044 <uartstart+0x50>
    8000502c:	0006c703          	lbu	a4,0(a3)
    80005030:	00f63023          	sd	a5,0(a2)
    80005034:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005038:	00063783          	ld	a5,0(a2)
    8000503c:	00053703          	ld	a4,0(a0)
    80005040:	00f70e63          	beq	a4,a5,8000505c <uartstart+0x68>
    80005044:	01f7f713          	andi	a4,a5,31
    80005048:	00e806b3          	add	a3,a6,a4
    8000504c:	0055c703          	lbu	a4,5(a1)
    80005050:	00178793          	addi	a5,a5,1
    80005054:	02077713          	andi	a4,a4,32
    80005058:	fc071ae3          	bnez	a4,8000502c <uartstart+0x38>
    8000505c:	00813403          	ld	s0,8(sp)
    80005060:	01010113          	addi	sp,sp,16
    80005064:	00008067          	ret

0000000080005068 <uartgetc>:
    80005068:	ff010113          	addi	sp,sp,-16
    8000506c:	00813423          	sd	s0,8(sp)
    80005070:	01010413          	addi	s0,sp,16
    80005074:	10000737          	lui	a4,0x10000
    80005078:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000507c:	0017f793          	andi	a5,a5,1
    80005080:	00078c63          	beqz	a5,80005098 <uartgetc+0x30>
    80005084:	00074503          	lbu	a0,0(a4)
    80005088:	0ff57513          	andi	a0,a0,255
    8000508c:	00813403          	ld	s0,8(sp)
    80005090:	01010113          	addi	sp,sp,16
    80005094:	00008067          	ret
    80005098:	fff00513          	li	a0,-1
    8000509c:	ff1ff06f          	j	8000508c <uartgetc+0x24>

00000000800050a0 <uartintr>:
    800050a0:	100007b7          	lui	a5,0x10000
    800050a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800050a8:	0017f793          	andi	a5,a5,1
    800050ac:	0a078463          	beqz	a5,80005154 <uartintr+0xb4>
    800050b0:	fe010113          	addi	sp,sp,-32
    800050b4:	00813823          	sd	s0,16(sp)
    800050b8:	00913423          	sd	s1,8(sp)
    800050bc:	00113c23          	sd	ra,24(sp)
    800050c0:	02010413          	addi	s0,sp,32
    800050c4:	100004b7          	lui	s1,0x10000
    800050c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800050cc:	0ff57513          	andi	a0,a0,255
    800050d0:	fffff097          	auipc	ra,0xfffff
    800050d4:	534080e7          	jalr	1332(ra) # 80004604 <consoleintr>
    800050d8:	0054c783          	lbu	a5,5(s1)
    800050dc:	0017f793          	andi	a5,a5,1
    800050e0:	fe0794e3          	bnez	a5,800050c8 <uartintr+0x28>
    800050e4:	00002617          	auipc	a2,0x2
    800050e8:	19c60613          	addi	a2,a2,412 # 80007280 <uart_tx_r>
    800050ec:	00002517          	auipc	a0,0x2
    800050f0:	19c50513          	addi	a0,a0,412 # 80007288 <uart_tx_w>
    800050f4:	00063783          	ld	a5,0(a2)
    800050f8:	00053703          	ld	a4,0(a0)
    800050fc:	04f70263          	beq	a4,a5,80005140 <uartintr+0xa0>
    80005100:	100005b7          	lui	a1,0x10000
    80005104:	00003817          	auipc	a6,0x3
    80005108:	42c80813          	addi	a6,a6,1068 # 80008530 <uart_tx_buf>
    8000510c:	01c0006f          	j	80005128 <uartintr+0x88>
    80005110:	0006c703          	lbu	a4,0(a3)
    80005114:	00f63023          	sd	a5,0(a2)
    80005118:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000511c:	00063783          	ld	a5,0(a2)
    80005120:	00053703          	ld	a4,0(a0)
    80005124:	00f70e63          	beq	a4,a5,80005140 <uartintr+0xa0>
    80005128:	01f7f713          	andi	a4,a5,31
    8000512c:	00e806b3          	add	a3,a6,a4
    80005130:	0055c703          	lbu	a4,5(a1)
    80005134:	00178793          	addi	a5,a5,1
    80005138:	02077713          	andi	a4,a4,32
    8000513c:	fc071ae3          	bnez	a4,80005110 <uartintr+0x70>
    80005140:	01813083          	ld	ra,24(sp)
    80005144:	01013403          	ld	s0,16(sp)
    80005148:	00813483          	ld	s1,8(sp)
    8000514c:	02010113          	addi	sp,sp,32
    80005150:	00008067          	ret
    80005154:	00002617          	auipc	a2,0x2
    80005158:	12c60613          	addi	a2,a2,300 # 80007280 <uart_tx_r>
    8000515c:	00002517          	auipc	a0,0x2
    80005160:	12c50513          	addi	a0,a0,300 # 80007288 <uart_tx_w>
    80005164:	00063783          	ld	a5,0(a2)
    80005168:	00053703          	ld	a4,0(a0)
    8000516c:	04f70263          	beq	a4,a5,800051b0 <uartintr+0x110>
    80005170:	100005b7          	lui	a1,0x10000
    80005174:	00003817          	auipc	a6,0x3
    80005178:	3bc80813          	addi	a6,a6,956 # 80008530 <uart_tx_buf>
    8000517c:	01c0006f          	j	80005198 <uartintr+0xf8>
    80005180:	0006c703          	lbu	a4,0(a3)
    80005184:	00f63023          	sd	a5,0(a2)
    80005188:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000518c:	00063783          	ld	a5,0(a2)
    80005190:	00053703          	ld	a4,0(a0)
    80005194:	02f70063          	beq	a4,a5,800051b4 <uartintr+0x114>
    80005198:	01f7f713          	andi	a4,a5,31
    8000519c:	00e806b3          	add	a3,a6,a4
    800051a0:	0055c703          	lbu	a4,5(a1)
    800051a4:	00178793          	addi	a5,a5,1
    800051a8:	02077713          	andi	a4,a4,32
    800051ac:	fc071ae3          	bnez	a4,80005180 <uartintr+0xe0>
    800051b0:	00008067          	ret
    800051b4:	00008067          	ret

00000000800051b8 <kinit>:
    800051b8:	fc010113          	addi	sp,sp,-64
    800051bc:	02913423          	sd	s1,40(sp)
    800051c0:	fffff7b7          	lui	a5,0xfffff
    800051c4:	00004497          	auipc	s1,0x4
    800051c8:	38b48493          	addi	s1,s1,907 # 8000954f <end+0xfff>
    800051cc:	02813823          	sd	s0,48(sp)
    800051d0:	01313c23          	sd	s3,24(sp)
    800051d4:	00f4f4b3          	and	s1,s1,a5
    800051d8:	02113c23          	sd	ra,56(sp)
    800051dc:	03213023          	sd	s2,32(sp)
    800051e0:	01413823          	sd	s4,16(sp)
    800051e4:	01513423          	sd	s5,8(sp)
    800051e8:	04010413          	addi	s0,sp,64
    800051ec:	000017b7          	lui	a5,0x1
    800051f0:	01100993          	li	s3,17
    800051f4:	00f487b3          	add	a5,s1,a5
    800051f8:	01b99993          	slli	s3,s3,0x1b
    800051fc:	06f9e063          	bltu	s3,a5,8000525c <kinit+0xa4>
    80005200:	00003a97          	auipc	s5,0x3
    80005204:	350a8a93          	addi	s5,s5,848 # 80008550 <end>
    80005208:	0754ec63          	bltu	s1,s5,80005280 <kinit+0xc8>
    8000520c:	0734fa63          	bgeu	s1,s3,80005280 <kinit+0xc8>
    80005210:	00088a37          	lui	s4,0x88
    80005214:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005218:	00002917          	auipc	s2,0x2
    8000521c:	07890913          	addi	s2,s2,120 # 80007290 <kmem>
    80005220:	00ca1a13          	slli	s4,s4,0xc
    80005224:	0140006f          	j	80005238 <kinit+0x80>
    80005228:	000017b7          	lui	a5,0x1
    8000522c:	00f484b3          	add	s1,s1,a5
    80005230:	0554e863          	bltu	s1,s5,80005280 <kinit+0xc8>
    80005234:	0534f663          	bgeu	s1,s3,80005280 <kinit+0xc8>
    80005238:	00001637          	lui	a2,0x1
    8000523c:	00100593          	li	a1,1
    80005240:	00048513          	mv	a0,s1
    80005244:	00000097          	auipc	ra,0x0
    80005248:	5e4080e7          	jalr	1508(ra) # 80005828 <__memset>
    8000524c:	00093783          	ld	a5,0(s2)
    80005250:	00f4b023          	sd	a5,0(s1)
    80005254:	00993023          	sd	s1,0(s2)
    80005258:	fd4498e3          	bne	s1,s4,80005228 <kinit+0x70>
    8000525c:	03813083          	ld	ra,56(sp)
    80005260:	03013403          	ld	s0,48(sp)
    80005264:	02813483          	ld	s1,40(sp)
    80005268:	02013903          	ld	s2,32(sp)
    8000526c:	01813983          	ld	s3,24(sp)
    80005270:	01013a03          	ld	s4,16(sp)
    80005274:	00813a83          	ld	s5,8(sp)
    80005278:	04010113          	addi	sp,sp,64
    8000527c:	00008067          	ret
    80005280:	00001517          	auipc	a0,0x1
    80005284:	05850513          	addi	a0,a0,88 # 800062d8 <digits+0x18>
    80005288:	fffff097          	auipc	ra,0xfffff
    8000528c:	4b4080e7          	jalr	1204(ra) # 8000473c <panic>

0000000080005290 <freerange>:
    80005290:	fc010113          	addi	sp,sp,-64
    80005294:	000017b7          	lui	a5,0x1
    80005298:	02913423          	sd	s1,40(sp)
    8000529c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800052a0:	009504b3          	add	s1,a0,s1
    800052a4:	fffff537          	lui	a0,0xfffff
    800052a8:	02813823          	sd	s0,48(sp)
    800052ac:	02113c23          	sd	ra,56(sp)
    800052b0:	03213023          	sd	s2,32(sp)
    800052b4:	01313c23          	sd	s3,24(sp)
    800052b8:	01413823          	sd	s4,16(sp)
    800052bc:	01513423          	sd	s5,8(sp)
    800052c0:	01613023          	sd	s6,0(sp)
    800052c4:	04010413          	addi	s0,sp,64
    800052c8:	00a4f4b3          	and	s1,s1,a0
    800052cc:	00f487b3          	add	a5,s1,a5
    800052d0:	06f5e463          	bltu	a1,a5,80005338 <freerange+0xa8>
    800052d4:	00003a97          	auipc	s5,0x3
    800052d8:	27ca8a93          	addi	s5,s5,636 # 80008550 <end>
    800052dc:	0954e263          	bltu	s1,s5,80005360 <freerange+0xd0>
    800052e0:	01100993          	li	s3,17
    800052e4:	01b99993          	slli	s3,s3,0x1b
    800052e8:	0734fc63          	bgeu	s1,s3,80005360 <freerange+0xd0>
    800052ec:	00058a13          	mv	s4,a1
    800052f0:	00002917          	auipc	s2,0x2
    800052f4:	fa090913          	addi	s2,s2,-96 # 80007290 <kmem>
    800052f8:	00002b37          	lui	s6,0x2
    800052fc:	0140006f          	j	80005310 <freerange+0x80>
    80005300:	000017b7          	lui	a5,0x1
    80005304:	00f484b3          	add	s1,s1,a5
    80005308:	0554ec63          	bltu	s1,s5,80005360 <freerange+0xd0>
    8000530c:	0534fa63          	bgeu	s1,s3,80005360 <freerange+0xd0>
    80005310:	00001637          	lui	a2,0x1
    80005314:	00100593          	li	a1,1
    80005318:	00048513          	mv	a0,s1
    8000531c:	00000097          	auipc	ra,0x0
    80005320:	50c080e7          	jalr	1292(ra) # 80005828 <__memset>
    80005324:	00093703          	ld	a4,0(s2)
    80005328:	016487b3          	add	a5,s1,s6
    8000532c:	00e4b023          	sd	a4,0(s1)
    80005330:	00993023          	sd	s1,0(s2)
    80005334:	fcfa76e3          	bgeu	s4,a5,80005300 <freerange+0x70>
    80005338:	03813083          	ld	ra,56(sp)
    8000533c:	03013403          	ld	s0,48(sp)
    80005340:	02813483          	ld	s1,40(sp)
    80005344:	02013903          	ld	s2,32(sp)
    80005348:	01813983          	ld	s3,24(sp)
    8000534c:	01013a03          	ld	s4,16(sp)
    80005350:	00813a83          	ld	s5,8(sp)
    80005354:	00013b03          	ld	s6,0(sp)
    80005358:	04010113          	addi	sp,sp,64
    8000535c:	00008067          	ret
    80005360:	00001517          	auipc	a0,0x1
    80005364:	f7850513          	addi	a0,a0,-136 # 800062d8 <digits+0x18>
    80005368:	fffff097          	auipc	ra,0xfffff
    8000536c:	3d4080e7          	jalr	980(ra) # 8000473c <panic>

0000000080005370 <kfree>:
    80005370:	fe010113          	addi	sp,sp,-32
    80005374:	00813823          	sd	s0,16(sp)
    80005378:	00113c23          	sd	ra,24(sp)
    8000537c:	00913423          	sd	s1,8(sp)
    80005380:	02010413          	addi	s0,sp,32
    80005384:	03451793          	slli	a5,a0,0x34
    80005388:	04079c63          	bnez	a5,800053e0 <kfree+0x70>
    8000538c:	00003797          	auipc	a5,0x3
    80005390:	1c478793          	addi	a5,a5,452 # 80008550 <end>
    80005394:	00050493          	mv	s1,a0
    80005398:	04f56463          	bltu	a0,a5,800053e0 <kfree+0x70>
    8000539c:	01100793          	li	a5,17
    800053a0:	01b79793          	slli	a5,a5,0x1b
    800053a4:	02f57e63          	bgeu	a0,a5,800053e0 <kfree+0x70>
    800053a8:	00001637          	lui	a2,0x1
    800053ac:	00100593          	li	a1,1
    800053b0:	00000097          	auipc	ra,0x0
    800053b4:	478080e7          	jalr	1144(ra) # 80005828 <__memset>
    800053b8:	00002797          	auipc	a5,0x2
    800053bc:	ed878793          	addi	a5,a5,-296 # 80007290 <kmem>
    800053c0:	0007b703          	ld	a4,0(a5)
    800053c4:	01813083          	ld	ra,24(sp)
    800053c8:	01013403          	ld	s0,16(sp)
    800053cc:	00e4b023          	sd	a4,0(s1)
    800053d0:	0097b023          	sd	s1,0(a5)
    800053d4:	00813483          	ld	s1,8(sp)
    800053d8:	02010113          	addi	sp,sp,32
    800053dc:	00008067          	ret
    800053e0:	00001517          	auipc	a0,0x1
    800053e4:	ef850513          	addi	a0,a0,-264 # 800062d8 <digits+0x18>
    800053e8:	fffff097          	auipc	ra,0xfffff
    800053ec:	354080e7          	jalr	852(ra) # 8000473c <panic>

00000000800053f0 <kalloc>:
    800053f0:	fe010113          	addi	sp,sp,-32
    800053f4:	00813823          	sd	s0,16(sp)
    800053f8:	00913423          	sd	s1,8(sp)
    800053fc:	00113c23          	sd	ra,24(sp)
    80005400:	02010413          	addi	s0,sp,32
    80005404:	00002797          	auipc	a5,0x2
    80005408:	e8c78793          	addi	a5,a5,-372 # 80007290 <kmem>
    8000540c:	0007b483          	ld	s1,0(a5)
    80005410:	02048063          	beqz	s1,80005430 <kalloc+0x40>
    80005414:	0004b703          	ld	a4,0(s1)
    80005418:	00001637          	lui	a2,0x1
    8000541c:	00500593          	li	a1,5
    80005420:	00048513          	mv	a0,s1
    80005424:	00e7b023          	sd	a4,0(a5)
    80005428:	00000097          	auipc	ra,0x0
    8000542c:	400080e7          	jalr	1024(ra) # 80005828 <__memset>
    80005430:	01813083          	ld	ra,24(sp)
    80005434:	01013403          	ld	s0,16(sp)
    80005438:	00048513          	mv	a0,s1
    8000543c:	00813483          	ld	s1,8(sp)
    80005440:	02010113          	addi	sp,sp,32
    80005444:	00008067          	ret

0000000080005448 <initlock>:
    80005448:	ff010113          	addi	sp,sp,-16
    8000544c:	00813423          	sd	s0,8(sp)
    80005450:	01010413          	addi	s0,sp,16
    80005454:	00813403          	ld	s0,8(sp)
    80005458:	00b53423          	sd	a1,8(a0)
    8000545c:	00052023          	sw	zero,0(a0)
    80005460:	00053823          	sd	zero,16(a0)
    80005464:	01010113          	addi	sp,sp,16
    80005468:	00008067          	ret

000000008000546c <acquire>:
    8000546c:	fe010113          	addi	sp,sp,-32
    80005470:	00813823          	sd	s0,16(sp)
    80005474:	00913423          	sd	s1,8(sp)
    80005478:	00113c23          	sd	ra,24(sp)
    8000547c:	01213023          	sd	s2,0(sp)
    80005480:	02010413          	addi	s0,sp,32
    80005484:	00050493          	mv	s1,a0
    80005488:	10002973          	csrr	s2,sstatus
    8000548c:	100027f3          	csrr	a5,sstatus
    80005490:	ffd7f793          	andi	a5,a5,-3
    80005494:	10079073          	csrw	sstatus,a5
    80005498:	fffff097          	auipc	ra,0xfffff
    8000549c:	8ec080e7          	jalr	-1812(ra) # 80003d84 <mycpu>
    800054a0:	07852783          	lw	a5,120(a0)
    800054a4:	06078e63          	beqz	a5,80005520 <acquire+0xb4>
    800054a8:	fffff097          	auipc	ra,0xfffff
    800054ac:	8dc080e7          	jalr	-1828(ra) # 80003d84 <mycpu>
    800054b0:	07852783          	lw	a5,120(a0)
    800054b4:	0004a703          	lw	a4,0(s1)
    800054b8:	0017879b          	addiw	a5,a5,1
    800054bc:	06f52c23          	sw	a5,120(a0)
    800054c0:	04071063          	bnez	a4,80005500 <acquire+0x94>
    800054c4:	00100713          	li	a4,1
    800054c8:	00070793          	mv	a5,a4
    800054cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800054d0:	0007879b          	sext.w	a5,a5
    800054d4:	fe079ae3          	bnez	a5,800054c8 <acquire+0x5c>
    800054d8:	0ff0000f          	fence
    800054dc:	fffff097          	auipc	ra,0xfffff
    800054e0:	8a8080e7          	jalr	-1880(ra) # 80003d84 <mycpu>
    800054e4:	01813083          	ld	ra,24(sp)
    800054e8:	01013403          	ld	s0,16(sp)
    800054ec:	00a4b823          	sd	a0,16(s1)
    800054f0:	00013903          	ld	s2,0(sp)
    800054f4:	00813483          	ld	s1,8(sp)
    800054f8:	02010113          	addi	sp,sp,32
    800054fc:	00008067          	ret
    80005500:	0104b903          	ld	s2,16(s1)
    80005504:	fffff097          	auipc	ra,0xfffff
    80005508:	880080e7          	jalr	-1920(ra) # 80003d84 <mycpu>
    8000550c:	faa91ce3          	bne	s2,a0,800054c4 <acquire+0x58>
    80005510:	00001517          	auipc	a0,0x1
    80005514:	dd050513          	addi	a0,a0,-560 # 800062e0 <digits+0x20>
    80005518:	fffff097          	auipc	ra,0xfffff
    8000551c:	224080e7          	jalr	548(ra) # 8000473c <panic>
    80005520:	00195913          	srli	s2,s2,0x1
    80005524:	fffff097          	auipc	ra,0xfffff
    80005528:	860080e7          	jalr	-1952(ra) # 80003d84 <mycpu>
    8000552c:	00197913          	andi	s2,s2,1
    80005530:	07252e23          	sw	s2,124(a0)
    80005534:	f75ff06f          	j	800054a8 <acquire+0x3c>

0000000080005538 <release>:
    80005538:	fe010113          	addi	sp,sp,-32
    8000553c:	00813823          	sd	s0,16(sp)
    80005540:	00113c23          	sd	ra,24(sp)
    80005544:	00913423          	sd	s1,8(sp)
    80005548:	01213023          	sd	s2,0(sp)
    8000554c:	02010413          	addi	s0,sp,32
    80005550:	00052783          	lw	a5,0(a0)
    80005554:	00079a63          	bnez	a5,80005568 <release+0x30>
    80005558:	00001517          	auipc	a0,0x1
    8000555c:	d9050513          	addi	a0,a0,-624 # 800062e8 <digits+0x28>
    80005560:	fffff097          	auipc	ra,0xfffff
    80005564:	1dc080e7          	jalr	476(ra) # 8000473c <panic>
    80005568:	01053903          	ld	s2,16(a0)
    8000556c:	00050493          	mv	s1,a0
    80005570:	fffff097          	auipc	ra,0xfffff
    80005574:	814080e7          	jalr	-2028(ra) # 80003d84 <mycpu>
    80005578:	fea910e3          	bne	s2,a0,80005558 <release+0x20>
    8000557c:	0004b823          	sd	zero,16(s1)
    80005580:	0ff0000f          	fence
    80005584:	0f50000f          	fence	iorw,ow
    80005588:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000558c:	ffffe097          	auipc	ra,0xffffe
    80005590:	7f8080e7          	jalr	2040(ra) # 80003d84 <mycpu>
    80005594:	100027f3          	csrr	a5,sstatus
    80005598:	0027f793          	andi	a5,a5,2
    8000559c:	04079a63          	bnez	a5,800055f0 <release+0xb8>
    800055a0:	07852783          	lw	a5,120(a0)
    800055a4:	02f05e63          	blez	a5,800055e0 <release+0xa8>
    800055a8:	fff7871b          	addiw	a4,a5,-1
    800055ac:	06e52c23          	sw	a4,120(a0)
    800055b0:	00071c63          	bnez	a4,800055c8 <release+0x90>
    800055b4:	07c52783          	lw	a5,124(a0)
    800055b8:	00078863          	beqz	a5,800055c8 <release+0x90>
    800055bc:	100027f3          	csrr	a5,sstatus
    800055c0:	0027e793          	ori	a5,a5,2
    800055c4:	10079073          	csrw	sstatus,a5
    800055c8:	01813083          	ld	ra,24(sp)
    800055cc:	01013403          	ld	s0,16(sp)
    800055d0:	00813483          	ld	s1,8(sp)
    800055d4:	00013903          	ld	s2,0(sp)
    800055d8:	02010113          	addi	sp,sp,32
    800055dc:	00008067          	ret
    800055e0:	00001517          	auipc	a0,0x1
    800055e4:	d2850513          	addi	a0,a0,-728 # 80006308 <digits+0x48>
    800055e8:	fffff097          	auipc	ra,0xfffff
    800055ec:	154080e7          	jalr	340(ra) # 8000473c <panic>
    800055f0:	00001517          	auipc	a0,0x1
    800055f4:	d0050513          	addi	a0,a0,-768 # 800062f0 <digits+0x30>
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	144080e7          	jalr	324(ra) # 8000473c <panic>

0000000080005600 <holding>:
    80005600:	00052783          	lw	a5,0(a0)
    80005604:	00079663          	bnez	a5,80005610 <holding+0x10>
    80005608:	00000513          	li	a0,0
    8000560c:	00008067          	ret
    80005610:	fe010113          	addi	sp,sp,-32
    80005614:	00813823          	sd	s0,16(sp)
    80005618:	00913423          	sd	s1,8(sp)
    8000561c:	00113c23          	sd	ra,24(sp)
    80005620:	02010413          	addi	s0,sp,32
    80005624:	01053483          	ld	s1,16(a0)
    80005628:	ffffe097          	auipc	ra,0xffffe
    8000562c:	75c080e7          	jalr	1884(ra) # 80003d84 <mycpu>
    80005630:	01813083          	ld	ra,24(sp)
    80005634:	01013403          	ld	s0,16(sp)
    80005638:	40a48533          	sub	a0,s1,a0
    8000563c:	00153513          	seqz	a0,a0
    80005640:	00813483          	ld	s1,8(sp)
    80005644:	02010113          	addi	sp,sp,32
    80005648:	00008067          	ret

000000008000564c <push_off>:
    8000564c:	fe010113          	addi	sp,sp,-32
    80005650:	00813823          	sd	s0,16(sp)
    80005654:	00113c23          	sd	ra,24(sp)
    80005658:	00913423          	sd	s1,8(sp)
    8000565c:	02010413          	addi	s0,sp,32
    80005660:	100024f3          	csrr	s1,sstatus
    80005664:	100027f3          	csrr	a5,sstatus
    80005668:	ffd7f793          	andi	a5,a5,-3
    8000566c:	10079073          	csrw	sstatus,a5
    80005670:	ffffe097          	auipc	ra,0xffffe
    80005674:	714080e7          	jalr	1812(ra) # 80003d84 <mycpu>
    80005678:	07852783          	lw	a5,120(a0)
    8000567c:	02078663          	beqz	a5,800056a8 <push_off+0x5c>
    80005680:	ffffe097          	auipc	ra,0xffffe
    80005684:	704080e7          	jalr	1796(ra) # 80003d84 <mycpu>
    80005688:	07852783          	lw	a5,120(a0)
    8000568c:	01813083          	ld	ra,24(sp)
    80005690:	01013403          	ld	s0,16(sp)
    80005694:	0017879b          	addiw	a5,a5,1
    80005698:	06f52c23          	sw	a5,120(a0)
    8000569c:	00813483          	ld	s1,8(sp)
    800056a0:	02010113          	addi	sp,sp,32
    800056a4:	00008067          	ret
    800056a8:	0014d493          	srli	s1,s1,0x1
    800056ac:	ffffe097          	auipc	ra,0xffffe
    800056b0:	6d8080e7          	jalr	1752(ra) # 80003d84 <mycpu>
    800056b4:	0014f493          	andi	s1,s1,1
    800056b8:	06952e23          	sw	s1,124(a0)
    800056bc:	fc5ff06f          	j	80005680 <push_off+0x34>

00000000800056c0 <pop_off>:
    800056c0:	ff010113          	addi	sp,sp,-16
    800056c4:	00813023          	sd	s0,0(sp)
    800056c8:	00113423          	sd	ra,8(sp)
    800056cc:	01010413          	addi	s0,sp,16
    800056d0:	ffffe097          	auipc	ra,0xffffe
    800056d4:	6b4080e7          	jalr	1716(ra) # 80003d84 <mycpu>
    800056d8:	100027f3          	csrr	a5,sstatus
    800056dc:	0027f793          	andi	a5,a5,2
    800056e0:	04079663          	bnez	a5,8000572c <pop_off+0x6c>
    800056e4:	07852783          	lw	a5,120(a0)
    800056e8:	02f05a63          	blez	a5,8000571c <pop_off+0x5c>
    800056ec:	fff7871b          	addiw	a4,a5,-1
    800056f0:	06e52c23          	sw	a4,120(a0)
    800056f4:	00071c63          	bnez	a4,8000570c <pop_off+0x4c>
    800056f8:	07c52783          	lw	a5,124(a0)
    800056fc:	00078863          	beqz	a5,8000570c <pop_off+0x4c>
    80005700:	100027f3          	csrr	a5,sstatus
    80005704:	0027e793          	ori	a5,a5,2
    80005708:	10079073          	csrw	sstatus,a5
    8000570c:	00813083          	ld	ra,8(sp)
    80005710:	00013403          	ld	s0,0(sp)
    80005714:	01010113          	addi	sp,sp,16
    80005718:	00008067          	ret
    8000571c:	00001517          	auipc	a0,0x1
    80005720:	bec50513          	addi	a0,a0,-1044 # 80006308 <digits+0x48>
    80005724:	fffff097          	auipc	ra,0xfffff
    80005728:	018080e7          	jalr	24(ra) # 8000473c <panic>
    8000572c:	00001517          	auipc	a0,0x1
    80005730:	bc450513          	addi	a0,a0,-1084 # 800062f0 <digits+0x30>
    80005734:	fffff097          	auipc	ra,0xfffff
    80005738:	008080e7          	jalr	8(ra) # 8000473c <panic>

000000008000573c <push_on>:
    8000573c:	fe010113          	addi	sp,sp,-32
    80005740:	00813823          	sd	s0,16(sp)
    80005744:	00113c23          	sd	ra,24(sp)
    80005748:	00913423          	sd	s1,8(sp)
    8000574c:	02010413          	addi	s0,sp,32
    80005750:	100024f3          	csrr	s1,sstatus
    80005754:	100027f3          	csrr	a5,sstatus
    80005758:	0027e793          	ori	a5,a5,2
    8000575c:	10079073          	csrw	sstatus,a5
    80005760:	ffffe097          	auipc	ra,0xffffe
    80005764:	624080e7          	jalr	1572(ra) # 80003d84 <mycpu>
    80005768:	07852783          	lw	a5,120(a0)
    8000576c:	02078663          	beqz	a5,80005798 <push_on+0x5c>
    80005770:	ffffe097          	auipc	ra,0xffffe
    80005774:	614080e7          	jalr	1556(ra) # 80003d84 <mycpu>
    80005778:	07852783          	lw	a5,120(a0)
    8000577c:	01813083          	ld	ra,24(sp)
    80005780:	01013403          	ld	s0,16(sp)
    80005784:	0017879b          	addiw	a5,a5,1
    80005788:	06f52c23          	sw	a5,120(a0)
    8000578c:	00813483          	ld	s1,8(sp)
    80005790:	02010113          	addi	sp,sp,32
    80005794:	00008067          	ret
    80005798:	0014d493          	srli	s1,s1,0x1
    8000579c:	ffffe097          	auipc	ra,0xffffe
    800057a0:	5e8080e7          	jalr	1512(ra) # 80003d84 <mycpu>
    800057a4:	0014f493          	andi	s1,s1,1
    800057a8:	06952e23          	sw	s1,124(a0)
    800057ac:	fc5ff06f          	j	80005770 <push_on+0x34>

00000000800057b0 <pop_on>:
    800057b0:	ff010113          	addi	sp,sp,-16
    800057b4:	00813023          	sd	s0,0(sp)
    800057b8:	00113423          	sd	ra,8(sp)
    800057bc:	01010413          	addi	s0,sp,16
    800057c0:	ffffe097          	auipc	ra,0xffffe
    800057c4:	5c4080e7          	jalr	1476(ra) # 80003d84 <mycpu>
    800057c8:	100027f3          	csrr	a5,sstatus
    800057cc:	0027f793          	andi	a5,a5,2
    800057d0:	04078463          	beqz	a5,80005818 <pop_on+0x68>
    800057d4:	07852783          	lw	a5,120(a0)
    800057d8:	02f05863          	blez	a5,80005808 <pop_on+0x58>
    800057dc:	fff7879b          	addiw	a5,a5,-1
    800057e0:	06f52c23          	sw	a5,120(a0)
    800057e4:	07853783          	ld	a5,120(a0)
    800057e8:	00079863          	bnez	a5,800057f8 <pop_on+0x48>
    800057ec:	100027f3          	csrr	a5,sstatus
    800057f0:	ffd7f793          	andi	a5,a5,-3
    800057f4:	10079073          	csrw	sstatus,a5
    800057f8:	00813083          	ld	ra,8(sp)
    800057fc:	00013403          	ld	s0,0(sp)
    80005800:	01010113          	addi	sp,sp,16
    80005804:	00008067          	ret
    80005808:	00001517          	auipc	a0,0x1
    8000580c:	b2850513          	addi	a0,a0,-1240 # 80006330 <digits+0x70>
    80005810:	fffff097          	auipc	ra,0xfffff
    80005814:	f2c080e7          	jalr	-212(ra) # 8000473c <panic>
    80005818:	00001517          	auipc	a0,0x1
    8000581c:	af850513          	addi	a0,a0,-1288 # 80006310 <digits+0x50>
    80005820:	fffff097          	auipc	ra,0xfffff
    80005824:	f1c080e7          	jalr	-228(ra) # 8000473c <panic>

0000000080005828 <__memset>:
    80005828:	ff010113          	addi	sp,sp,-16
    8000582c:	00813423          	sd	s0,8(sp)
    80005830:	01010413          	addi	s0,sp,16
    80005834:	1a060e63          	beqz	a2,800059f0 <__memset+0x1c8>
    80005838:	40a007b3          	neg	a5,a0
    8000583c:	0077f793          	andi	a5,a5,7
    80005840:	00778693          	addi	a3,a5,7
    80005844:	00b00813          	li	a6,11
    80005848:	0ff5f593          	andi	a1,a1,255
    8000584c:	fff6071b          	addiw	a4,a2,-1
    80005850:	1b06e663          	bltu	a3,a6,800059fc <__memset+0x1d4>
    80005854:	1cd76463          	bltu	a4,a3,80005a1c <__memset+0x1f4>
    80005858:	1a078e63          	beqz	a5,80005a14 <__memset+0x1ec>
    8000585c:	00b50023          	sb	a1,0(a0)
    80005860:	00100713          	li	a4,1
    80005864:	1ae78463          	beq	a5,a4,80005a0c <__memset+0x1e4>
    80005868:	00b500a3          	sb	a1,1(a0)
    8000586c:	00200713          	li	a4,2
    80005870:	1ae78a63          	beq	a5,a4,80005a24 <__memset+0x1fc>
    80005874:	00b50123          	sb	a1,2(a0)
    80005878:	00300713          	li	a4,3
    8000587c:	18e78463          	beq	a5,a4,80005a04 <__memset+0x1dc>
    80005880:	00b501a3          	sb	a1,3(a0)
    80005884:	00400713          	li	a4,4
    80005888:	1ae78263          	beq	a5,a4,80005a2c <__memset+0x204>
    8000588c:	00b50223          	sb	a1,4(a0)
    80005890:	00500713          	li	a4,5
    80005894:	1ae78063          	beq	a5,a4,80005a34 <__memset+0x20c>
    80005898:	00b502a3          	sb	a1,5(a0)
    8000589c:	00700713          	li	a4,7
    800058a0:	18e79e63          	bne	a5,a4,80005a3c <__memset+0x214>
    800058a4:	00b50323          	sb	a1,6(a0)
    800058a8:	00700e93          	li	t4,7
    800058ac:	00859713          	slli	a4,a1,0x8
    800058b0:	00e5e733          	or	a4,a1,a4
    800058b4:	01059e13          	slli	t3,a1,0x10
    800058b8:	01c76e33          	or	t3,a4,t3
    800058bc:	01859313          	slli	t1,a1,0x18
    800058c0:	006e6333          	or	t1,t3,t1
    800058c4:	02059893          	slli	a7,a1,0x20
    800058c8:	40f60e3b          	subw	t3,a2,a5
    800058cc:	011368b3          	or	a7,t1,a7
    800058d0:	02859813          	slli	a6,a1,0x28
    800058d4:	0108e833          	or	a6,a7,a6
    800058d8:	03059693          	slli	a3,a1,0x30
    800058dc:	003e589b          	srliw	a7,t3,0x3
    800058e0:	00d866b3          	or	a3,a6,a3
    800058e4:	03859713          	slli	a4,a1,0x38
    800058e8:	00389813          	slli	a6,a7,0x3
    800058ec:	00f507b3          	add	a5,a0,a5
    800058f0:	00e6e733          	or	a4,a3,a4
    800058f4:	000e089b          	sext.w	a7,t3
    800058f8:	00f806b3          	add	a3,a6,a5
    800058fc:	00e7b023          	sd	a4,0(a5)
    80005900:	00878793          	addi	a5,a5,8
    80005904:	fed79ce3          	bne	a5,a3,800058fc <__memset+0xd4>
    80005908:	ff8e7793          	andi	a5,t3,-8
    8000590c:	0007871b          	sext.w	a4,a5
    80005910:	01d787bb          	addw	a5,a5,t4
    80005914:	0ce88e63          	beq	a7,a4,800059f0 <__memset+0x1c8>
    80005918:	00f50733          	add	a4,a0,a5
    8000591c:	00b70023          	sb	a1,0(a4)
    80005920:	0017871b          	addiw	a4,a5,1
    80005924:	0cc77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005928:	00e50733          	add	a4,a0,a4
    8000592c:	00b70023          	sb	a1,0(a4)
    80005930:	0027871b          	addiw	a4,a5,2
    80005934:	0ac77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005938:	00e50733          	add	a4,a0,a4
    8000593c:	00b70023          	sb	a1,0(a4)
    80005940:	0037871b          	addiw	a4,a5,3
    80005944:	0ac77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005948:	00e50733          	add	a4,a0,a4
    8000594c:	00b70023          	sb	a1,0(a4)
    80005950:	0047871b          	addiw	a4,a5,4
    80005954:	08c77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005958:	00e50733          	add	a4,a0,a4
    8000595c:	00b70023          	sb	a1,0(a4)
    80005960:	0057871b          	addiw	a4,a5,5
    80005964:	08c77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005968:	00e50733          	add	a4,a0,a4
    8000596c:	00b70023          	sb	a1,0(a4)
    80005970:	0067871b          	addiw	a4,a5,6
    80005974:	06c77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005978:	00e50733          	add	a4,a0,a4
    8000597c:	00b70023          	sb	a1,0(a4)
    80005980:	0077871b          	addiw	a4,a5,7
    80005984:	06c77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005988:	00e50733          	add	a4,a0,a4
    8000598c:	00b70023          	sb	a1,0(a4)
    80005990:	0087871b          	addiw	a4,a5,8
    80005994:	04c77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    80005998:	00e50733          	add	a4,a0,a4
    8000599c:	00b70023          	sb	a1,0(a4)
    800059a0:	0097871b          	addiw	a4,a5,9
    800059a4:	04c77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    800059a8:	00e50733          	add	a4,a0,a4
    800059ac:	00b70023          	sb	a1,0(a4)
    800059b0:	00a7871b          	addiw	a4,a5,10
    800059b4:	02c77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    800059b8:	00e50733          	add	a4,a0,a4
    800059bc:	00b70023          	sb	a1,0(a4)
    800059c0:	00b7871b          	addiw	a4,a5,11
    800059c4:	02c77663          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    800059c8:	00e50733          	add	a4,a0,a4
    800059cc:	00b70023          	sb	a1,0(a4)
    800059d0:	00c7871b          	addiw	a4,a5,12
    800059d4:	00c77e63          	bgeu	a4,a2,800059f0 <__memset+0x1c8>
    800059d8:	00e50733          	add	a4,a0,a4
    800059dc:	00b70023          	sb	a1,0(a4)
    800059e0:	00d7879b          	addiw	a5,a5,13
    800059e4:	00c7f663          	bgeu	a5,a2,800059f0 <__memset+0x1c8>
    800059e8:	00f507b3          	add	a5,a0,a5
    800059ec:	00b78023          	sb	a1,0(a5)
    800059f0:	00813403          	ld	s0,8(sp)
    800059f4:	01010113          	addi	sp,sp,16
    800059f8:	00008067          	ret
    800059fc:	00b00693          	li	a3,11
    80005a00:	e55ff06f          	j	80005854 <__memset+0x2c>
    80005a04:	00300e93          	li	t4,3
    80005a08:	ea5ff06f          	j	800058ac <__memset+0x84>
    80005a0c:	00100e93          	li	t4,1
    80005a10:	e9dff06f          	j	800058ac <__memset+0x84>
    80005a14:	00000e93          	li	t4,0
    80005a18:	e95ff06f          	j	800058ac <__memset+0x84>
    80005a1c:	00000793          	li	a5,0
    80005a20:	ef9ff06f          	j	80005918 <__memset+0xf0>
    80005a24:	00200e93          	li	t4,2
    80005a28:	e85ff06f          	j	800058ac <__memset+0x84>
    80005a2c:	00400e93          	li	t4,4
    80005a30:	e7dff06f          	j	800058ac <__memset+0x84>
    80005a34:	00500e93          	li	t4,5
    80005a38:	e75ff06f          	j	800058ac <__memset+0x84>
    80005a3c:	00600e93          	li	t4,6
    80005a40:	e6dff06f          	j	800058ac <__memset+0x84>

0000000080005a44 <__memmove>:
    80005a44:	ff010113          	addi	sp,sp,-16
    80005a48:	00813423          	sd	s0,8(sp)
    80005a4c:	01010413          	addi	s0,sp,16
    80005a50:	0e060863          	beqz	a2,80005b40 <__memmove+0xfc>
    80005a54:	fff6069b          	addiw	a3,a2,-1
    80005a58:	0006881b          	sext.w	a6,a3
    80005a5c:	0ea5e863          	bltu	a1,a0,80005b4c <__memmove+0x108>
    80005a60:	00758713          	addi	a4,a1,7
    80005a64:	00a5e7b3          	or	a5,a1,a0
    80005a68:	40a70733          	sub	a4,a4,a0
    80005a6c:	0077f793          	andi	a5,a5,7
    80005a70:	00f73713          	sltiu	a4,a4,15
    80005a74:	00174713          	xori	a4,a4,1
    80005a78:	0017b793          	seqz	a5,a5
    80005a7c:	00e7f7b3          	and	a5,a5,a4
    80005a80:	10078863          	beqz	a5,80005b90 <__memmove+0x14c>
    80005a84:	00900793          	li	a5,9
    80005a88:	1107f463          	bgeu	a5,a6,80005b90 <__memmove+0x14c>
    80005a8c:	0036581b          	srliw	a6,a2,0x3
    80005a90:	fff8081b          	addiw	a6,a6,-1
    80005a94:	02081813          	slli	a6,a6,0x20
    80005a98:	01d85893          	srli	a7,a6,0x1d
    80005a9c:	00858813          	addi	a6,a1,8
    80005aa0:	00058793          	mv	a5,a1
    80005aa4:	00050713          	mv	a4,a0
    80005aa8:	01088833          	add	a6,a7,a6
    80005aac:	0007b883          	ld	a7,0(a5)
    80005ab0:	00878793          	addi	a5,a5,8
    80005ab4:	00870713          	addi	a4,a4,8
    80005ab8:	ff173c23          	sd	a7,-8(a4)
    80005abc:	ff0798e3          	bne	a5,a6,80005aac <__memmove+0x68>
    80005ac0:	ff867713          	andi	a4,a2,-8
    80005ac4:	02071793          	slli	a5,a4,0x20
    80005ac8:	0207d793          	srli	a5,a5,0x20
    80005acc:	00f585b3          	add	a1,a1,a5
    80005ad0:	40e686bb          	subw	a3,a3,a4
    80005ad4:	00f507b3          	add	a5,a0,a5
    80005ad8:	06e60463          	beq	a2,a4,80005b40 <__memmove+0xfc>
    80005adc:	0005c703          	lbu	a4,0(a1)
    80005ae0:	00e78023          	sb	a4,0(a5)
    80005ae4:	04068e63          	beqz	a3,80005b40 <__memmove+0xfc>
    80005ae8:	0015c603          	lbu	a2,1(a1)
    80005aec:	00100713          	li	a4,1
    80005af0:	00c780a3          	sb	a2,1(a5)
    80005af4:	04e68663          	beq	a3,a4,80005b40 <__memmove+0xfc>
    80005af8:	0025c603          	lbu	a2,2(a1)
    80005afc:	00200713          	li	a4,2
    80005b00:	00c78123          	sb	a2,2(a5)
    80005b04:	02e68e63          	beq	a3,a4,80005b40 <__memmove+0xfc>
    80005b08:	0035c603          	lbu	a2,3(a1)
    80005b0c:	00300713          	li	a4,3
    80005b10:	00c781a3          	sb	a2,3(a5)
    80005b14:	02e68663          	beq	a3,a4,80005b40 <__memmove+0xfc>
    80005b18:	0045c603          	lbu	a2,4(a1)
    80005b1c:	00400713          	li	a4,4
    80005b20:	00c78223          	sb	a2,4(a5)
    80005b24:	00e68e63          	beq	a3,a4,80005b40 <__memmove+0xfc>
    80005b28:	0055c603          	lbu	a2,5(a1)
    80005b2c:	00500713          	li	a4,5
    80005b30:	00c782a3          	sb	a2,5(a5)
    80005b34:	00e68663          	beq	a3,a4,80005b40 <__memmove+0xfc>
    80005b38:	0065c703          	lbu	a4,6(a1)
    80005b3c:	00e78323          	sb	a4,6(a5)
    80005b40:	00813403          	ld	s0,8(sp)
    80005b44:	01010113          	addi	sp,sp,16
    80005b48:	00008067          	ret
    80005b4c:	02061713          	slli	a4,a2,0x20
    80005b50:	02075713          	srli	a4,a4,0x20
    80005b54:	00e587b3          	add	a5,a1,a4
    80005b58:	f0f574e3          	bgeu	a0,a5,80005a60 <__memmove+0x1c>
    80005b5c:	02069613          	slli	a2,a3,0x20
    80005b60:	02065613          	srli	a2,a2,0x20
    80005b64:	fff64613          	not	a2,a2
    80005b68:	00e50733          	add	a4,a0,a4
    80005b6c:	00c78633          	add	a2,a5,a2
    80005b70:	fff7c683          	lbu	a3,-1(a5)
    80005b74:	fff78793          	addi	a5,a5,-1
    80005b78:	fff70713          	addi	a4,a4,-1
    80005b7c:	00d70023          	sb	a3,0(a4)
    80005b80:	fec798e3          	bne	a5,a2,80005b70 <__memmove+0x12c>
    80005b84:	00813403          	ld	s0,8(sp)
    80005b88:	01010113          	addi	sp,sp,16
    80005b8c:	00008067          	ret
    80005b90:	02069713          	slli	a4,a3,0x20
    80005b94:	02075713          	srli	a4,a4,0x20
    80005b98:	00170713          	addi	a4,a4,1
    80005b9c:	00e50733          	add	a4,a0,a4
    80005ba0:	00050793          	mv	a5,a0
    80005ba4:	0005c683          	lbu	a3,0(a1)
    80005ba8:	00178793          	addi	a5,a5,1
    80005bac:	00158593          	addi	a1,a1,1
    80005bb0:	fed78fa3          	sb	a3,-1(a5)
    80005bb4:	fee798e3          	bne	a5,a4,80005ba4 <__memmove+0x160>
    80005bb8:	f89ff06f          	j	80005b40 <__memmove+0xfc>

0000000080005bbc <__putc>:
    80005bbc:	fe010113          	addi	sp,sp,-32
    80005bc0:	00813823          	sd	s0,16(sp)
    80005bc4:	00113c23          	sd	ra,24(sp)
    80005bc8:	02010413          	addi	s0,sp,32
    80005bcc:	00050793          	mv	a5,a0
    80005bd0:	fef40593          	addi	a1,s0,-17
    80005bd4:	00100613          	li	a2,1
    80005bd8:	00000513          	li	a0,0
    80005bdc:	fef407a3          	sb	a5,-17(s0)
    80005be0:	fffff097          	auipc	ra,0xfffff
    80005be4:	b3c080e7          	jalr	-1220(ra) # 8000471c <console_write>
    80005be8:	01813083          	ld	ra,24(sp)
    80005bec:	01013403          	ld	s0,16(sp)
    80005bf0:	02010113          	addi	sp,sp,32
    80005bf4:	00008067          	ret

0000000080005bf8 <__getc>:
    80005bf8:	fe010113          	addi	sp,sp,-32
    80005bfc:	00813823          	sd	s0,16(sp)
    80005c00:	00113c23          	sd	ra,24(sp)
    80005c04:	02010413          	addi	s0,sp,32
    80005c08:	fe840593          	addi	a1,s0,-24
    80005c0c:	00100613          	li	a2,1
    80005c10:	00000513          	li	a0,0
    80005c14:	fffff097          	auipc	ra,0xfffff
    80005c18:	ae8080e7          	jalr	-1304(ra) # 800046fc <console_read>
    80005c1c:	fe844503          	lbu	a0,-24(s0)
    80005c20:	01813083          	ld	ra,24(sp)
    80005c24:	01013403          	ld	s0,16(sp)
    80005c28:	02010113          	addi	sp,sp,32
    80005c2c:	00008067          	ret

0000000080005c30 <console_handler>:
    80005c30:	fe010113          	addi	sp,sp,-32
    80005c34:	00813823          	sd	s0,16(sp)
    80005c38:	00113c23          	sd	ra,24(sp)
    80005c3c:	00913423          	sd	s1,8(sp)
    80005c40:	02010413          	addi	s0,sp,32
    80005c44:	14202773          	csrr	a4,scause
    80005c48:	100027f3          	csrr	a5,sstatus
    80005c4c:	0027f793          	andi	a5,a5,2
    80005c50:	06079e63          	bnez	a5,80005ccc <console_handler+0x9c>
    80005c54:	00074c63          	bltz	a4,80005c6c <console_handler+0x3c>
    80005c58:	01813083          	ld	ra,24(sp)
    80005c5c:	01013403          	ld	s0,16(sp)
    80005c60:	00813483          	ld	s1,8(sp)
    80005c64:	02010113          	addi	sp,sp,32
    80005c68:	00008067          	ret
    80005c6c:	0ff77713          	andi	a4,a4,255
    80005c70:	00900793          	li	a5,9
    80005c74:	fef712e3          	bne	a4,a5,80005c58 <console_handler+0x28>
    80005c78:	ffffe097          	auipc	ra,0xffffe
    80005c7c:	6dc080e7          	jalr	1756(ra) # 80004354 <plic_claim>
    80005c80:	00a00793          	li	a5,10
    80005c84:	00050493          	mv	s1,a0
    80005c88:	02f50c63          	beq	a0,a5,80005cc0 <console_handler+0x90>
    80005c8c:	fc0506e3          	beqz	a0,80005c58 <console_handler+0x28>
    80005c90:	00050593          	mv	a1,a0
    80005c94:	00000517          	auipc	a0,0x0
    80005c98:	5a450513          	addi	a0,a0,1444 # 80006238 <CONSOLE_STATUS+0x228>
    80005c9c:	fffff097          	auipc	ra,0xfffff
    80005ca0:	afc080e7          	jalr	-1284(ra) # 80004798 <__printf>
    80005ca4:	01013403          	ld	s0,16(sp)
    80005ca8:	01813083          	ld	ra,24(sp)
    80005cac:	00048513          	mv	a0,s1
    80005cb0:	00813483          	ld	s1,8(sp)
    80005cb4:	02010113          	addi	sp,sp,32
    80005cb8:	ffffe317          	auipc	t1,0xffffe
    80005cbc:	6d430067          	jr	1748(t1) # 8000438c <plic_complete>
    80005cc0:	fffff097          	auipc	ra,0xfffff
    80005cc4:	3e0080e7          	jalr	992(ra) # 800050a0 <uartintr>
    80005cc8:	fddff06f          	j	80005ca4 <console_handler+0x74>
    80005ccc:	00000517          	auipc	a0,0x0
    80005cd0:	66c50513          	addi	a0,a0,1644 # 80006338 <digits+0x78>
    80005cd4:	fffff097          	auipc	ra,0xfffff
    80005cd8:	a68080e7          	jalr	-1432(ra) # 8000473c <panic>
	...
