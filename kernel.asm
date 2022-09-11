
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	25013103          	ld	sp,592(sp) # 80007250 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3c5030ef          	jal	ra,80003be0 <start>

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
    800014d0:	e1478793          	addi	a5,a5,-492 # 800072e0 <_ZN5Queue5queueE>
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
    800014f0:	d7c7b783          	ld	a5,-644(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    800014f4:	0007b783          	ld	a5,0(a5)
    800014f8:	0c078a63          	beqz	a5,800015cc <_ZN5Queue3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    800014fc:	00006717          	auipc	a4,0x6
    80001500:	d6c73703          	ld	a4,-660(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    8000155c:	d1073703          	ld	a4,-752(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    800015b0:	cbc5b583          	ld	a1,-836(a1) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    800015d8:	d1473703          	ld	a4,-748(a4) # 800072e8 <_ZN5Queue5queueE+0x8>
    800015dc:	02070863          	beqz	a4,8000160c <_ZN5Queue3putEP3TCB+0x12c>
            tail->next=elem;
    800015e0:	00f73423          	sd	a5,8(a4)
            tail=elem;
    800015e4:	00006717          	auipc	a4,0x6
    800015e8:	d0f73223          	sd	a5,-764(a4) # 800072e8 <_ZN5Queue5queueE+0x8>
}
    800015ec:	00813403          	ld	s0,8(sp)
    800015f0:	01010113          	addi	sp,sp,16
    800015f4:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800015f8:	0c070693          	addi	a3,a4,192
    800015fc:	00006617          	auipc	a2,0x6
    80001600:	c6c63603          	ld	a2,-916(a2) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001604:	00d63023          	sd	a3,0(a2)
    80001608:	f79ff06f          	j	80001580 <_ZN5Queue3putEP3TCB+0xa0>
        }else{
            head=tail=elem;
    8000160c:	00006717          	auipc	a4,0x6
    80001610:	cd470713          	addi	a4,a4,-812 # 800072e0 <_ZN5Queue5queueE>
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
    80001638:	cac53503          	ld	a0,-852(a0) # 800072e0 <_ZN5Queue5queueE>
    8000163c:	04050263          	beqz	a0,80001680 <_ZN5Queue3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    80001640:	00853783          	ld	a5,8(a0)
    80001644:	00006717          	auipc	a4,0x6
    80001648:	c8f73e23          	sd	a5,-868(a4) # 800072e0 <_ZN5Queue5queueE>
        if(!head) {
    8000164c:	02078463          	beqz	a5,80001674 <_ZN5Queue3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    80001650:	00053483          	ld	s1,0(a0)
        delete elem;
    80001654:	00002097          	auipc	ra,0x2
    80001658:	060080e7          	jalr	96(ra) # 800036b4 <_ZdlPv>
    }
    8000165c:	00048513          	mv	a0,s1
    80001660:	01813083          	ld	ra,24(sp)
    80001664:	01013403          	ld	s0,16(sp)
    80001668:	00813483          	ld	s1,8(sp)
    8000166c:	02010113          	addi	sp,sp,32
    80001670:	00008067          	ret
            tail = 0;
    80001674:	00006797          	auipc	a5,0x6
    80001678:	c607ba23          	sd	zero,-908(a5) # 800072e8 <_ZN5Queue5queueE+0x8>
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
    80001698:	c4c7b783          	ld	a5,-948(a5) # 800072e0 <_ZN5Queue5queueE>
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
    8000178c:	588080e7          	jalr	1416(ra) # 80005d10 <console_handler>
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
    80001808:	498080e7          	jalr	1176(ra) # 80005c9c <__putc>
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
    8000182c:	00006717          	auipc	a4,0x6
    80001830:	a3c73703          	ld	a4,-1476(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001834:	00073703          	ld	a4,0(a4)
    80001838:	0c070863          	beqz	a4,80001908 <_ZN5RiscV20handleSupervisorTrapEv+0x1ec>
            cur->next=fmem_head->next;
    8000183c:	00006697          	auipc	a3,0x6
    80001840:	a2c6b683          	ld	a3,-1492(a3) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001894:	00006797          	auipc	a5,0x6
    80001898:	9d47b783          	ld	a5,-1580(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    800018e8:	00006597          	auipc	a1,0x6
    800018ec:	9805b583          	ld	a1,-1664(a1) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001934:	00006597          	auipc	a1,0x6
    80001938:	9345b583          	ld	a1,-1740(a1) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000193c:	00c5b023          	sd	a2,0(a1)
    80001940:	f7dff06f          	j	800018bc <_ZN5RiscV20handleSupervisorTrapEv+0x1a0>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    80001944:	00058793          	mv	a5,a1
    80001948:	fcf43423          	sd	a5,-56(s0)
            int ret=MemoryAllocation::mem_free((void*)ptr);
    8000194c:	fc843703          	ld	a4,-56(s0)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001950:	00006797          	auipc	a5,0x6
    80001954:	9187b783          	ld	a5,-1768(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    800019f8:	00006797          	auipc	a5,0x6
    800019fc:	8707b783          	ld	a5,-1936(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a00:	0007b783          	ld	a5,0(a5)
    80001a04:	00f73023          	sd	a5,0(a4)
    80001a08:	f99ff06f          	j	800019a0 <_ZN5RiscV20handleSupervisorTrapEv+0x284>
                    fmem_head = newSeg;
    80001a0c:	00006797          	auipc	a5,0x6
    80001a10:	85c7b783          	ld	a5,-1956(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001a74:	00002097          	auipc	ra,0x2
    80001a78:	814080e7          	jalr	-2028(ra) # 80003288 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>
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
    80001a90:	7ec7b783          	ld	a5,2028(a5) # 80007278 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001a94:	0007b503          	ld	a0,0(a5)
    80001a98:	00001097          	auipc	ra,0x1
    80001a9c:	7d4080e7          	jalr	2004(ra) # 8000326c <_ZN3TCB11setFinishedEb>
        dispatch();
    80001aa0:	00002097          	auipc	ra,0x2
    80001aa4:	b4c080e7          	jalr	-1204(ra) # 800035ec <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    80001aa8:	00000793          	li	a5,0
    80001aac:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    80001ab0:	04b43c23          	sd	a1,88(s0)
    80001ab4:	e5dff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
    static void thread_dispatch(){dispatch();}
    80001ab8:	00002097          	auipc	ra,0x2
    80001abc:	b34080e7          	jalr	-1228(ra) # 800035ec <_ZN3TCB8dispatchEv>
    80001ac0:	e51ff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg, false);
    80001ac4:	fd843503          	ld	a0,-40(s0)
    80001ac8:	fe043583          	ld	a1,-32(s0)
    80001acc:	fd043603          	ld	a2,-48(s0)
    80001ad0:	00000693          	li	a3,0
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	7b4080e7          	jalr	1972(ra) # 80003288 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001adc:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001ae0:	04b43c23          	sd	a1,88(s0)
    80001ae4:	e2dff06f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
            TCB::startThread((thread_t*)handle);
    80001ae8:	fe043783          	ld	a5,-32(s0)
        return threadStarted;
    }

    static void startThread(TCB** handle){ //mzd ne treba static
        //printString("udje u start klasu\n");
        (*handle)->threadStarted=true;
    80001aec:	0007b703          	ld	a4,0(a5)
    80001af0:	00100693          	li	a3,1
    80001af4:	04d70023          	sb	a3,64(a4)
        //printString("setuje started\n");
        Scheduler::put(*handle); //vidi nekako da startuje handle nad kojim pozivas, mada mislim da ce poziv izgledati handle->start
    80001af8:	0007b503          	ld	a0,0(a5)
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	538080e7          	jalr	1336(ra) # 80003034 <_ZN9Scheduler3putEP3TCB>
        //printString("ubacuje u scheduler\n");
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
    80001b74:	168080e7          	jalr	360(ra) # 80005cd8 <__getc>
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
    80001bb0:	6cc7b783          	ld	a5,1740(a5) # 80007278 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001bb4:	0007b483          	ld	s1,0(a5)
        old->semBlocked=this;
    80001bb8:	02a4b823          	sd	a0,48(s1)
        if (!old->isFinished()) {
    80001bbc:	00048513          	mv	a0,s1
    80001bc0:	00001097          	auipc	ra,0x1
    80001bc4:	690080e7          	jalr	1680(ra) # 80003250 <_ZNK3TCB10isFinishedEv>
    80001bc8:	04050063          	beqz	a0,80001c08 <_ZN9semaphore5blockEv+0x78>
            blocked->addLast(old);
        }
        TCB::running = Scheduler::get();
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	400080e7          	jalr	1024(ra) # 80002fcc <_ZN9Scheduler3getEv>
    80001bd4:	00005797          	auipc	a5,0x5
    80001bd8:	6a47b783          	ld	a5,1700(a5) # 80007278 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    80001c10:	65c7b783          	ld	a5,1628(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c14:	0007b783          	ld	a5,0(a5)
    80001c18:	0c078a63          	beqz	a5,80001cec <_ZN9semaphore5blockEv+0x15c>
            cur->next=fmem_head->next;
    80001c1c:	00005717          	auipc	a4,0x5
    80001c20:	64c73703          	ld	a4,1612(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001c7c:	5f073703          	ld	a4,1520(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001cd0:	59c53503          	ld	a0,1436(a0) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001d10:	55c63603          	ld	a2,1372(a2) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001d58:	00002097          	auipc	ra,0x2
    80001d5c:	95c080e7          	jalr	-1700(ra) # 800036b4 <_ZdlPv>
    t->semBlocked=nullptr;
    80001d60:	0204b823          	sd	zero,48(s1)
    Scheduler::put(t);
    80001d64:	00048513          	mv	a0,s1
    80001d68:	00001097          	auipc	ra,0x1
    80001d6c:	2cc080e7          	jalr	716(ra) # 80003034 <_ZN9Scheduler3putEP3TCB>
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
    80001da4:	4c87b783          	ld	a5,1224(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001da8:	0007b783          	ld	a5,0(a5)
    80001dac:	0c078a63          	beqz	a5,80001e80 <_ZN9semaphore7semOpenEPPS_j+0xec>
            cur->next=fmem_head->next;
    80001db0:	00005717          	auipc	a4,0x5
    80001db4:	4b873703          	ld	a4,1208(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001e10:	45c73703          	ld	a4,1116(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001e64:	40883803          	ld	a6,1032(a6) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001e94:	3d87b783          	ld	a5,984(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e98:	0007b783          	ld	a5,0(a5)
    80001e9c:	0e078463          	beqz	a5,80001f84 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
            cur->next=fmem_head->next;
    80001ea0:	00005717          	auipc	a4,0x5
    80001ea4:	3c873703          	ld	a4,968(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001efc:	37063603          	ld	a2,880(a2) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001f00:	00d63023          	sd	a3,0(a2)
    80001f04:	f31ff06f          	j	80001e34 <_ZN9semaphore7semOpenEPPS_j+0xa0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001f08:	00068793          	mv	a5,a3
    80001f0c:	f91ff06f          	j	80001e9c <_ZN9semaphore7semOpenEPPS_j+0x108>
                else fmem_head = cur->next;
    80001f10:	00005717          	auipc	a4,0x5
    80001f14:	35873703          	ld	a4,856(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001f68:	3045b583          	ld	a1,772(a1) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001fa0:	2cc63603          	ld	a2,716(a2) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    80001ff4:	2787b783          	ld	a5,632(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    800020a0:	1cc7b783          	ld	a5,460(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020a4:	0007b783          	ld	a5,0(a5)
    800020a8:	00f4b023          	sd	a5,0(s1)
    800020ac:	f95ff06f          	j	80002040 <_ZN9semaphore8semCloseEPS_+0x8c>
                    fmem_head = newSeg;
    800020b0:	00005797          	auipc	a5,0x5
    800020b4:	1b87b783          	ld	a5,440(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
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
    800021c0:	13450513          	addi	a0,a0,308 # 800072f0 <lockPrint>
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
    800021f4:	10050513          	addi	a0,a0,256 # 800072f0 <lockPrint>
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
    8000224c:	0a850513          	addi	a0,a0,168 # 800072f0 <lockPrint>
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
    800022b0:	04450513          	addi	a0,a0,68 # 800072f0 <lockPrint>
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
    80002368:	f8c50513          	addi	a0,a0,-116 # 800072f0 <lockPrint>
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
    800023a8:	dac70713          	addi	a4,a4,-596 # 80007150 <digits>
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
    8000241c:	ed850513          	addi	a0,a0,-296 # 800072f0 <lockPrint>
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

0000000080002448 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    80002448:	fe010113          	addi	sp,sp,-32
    8000244c:	00113c23          	sd	ra,24(sp)
    80002450:	00813823          	sd	s0,16(sp)
    80002454:	00913423          	sd	s1,8(sp)
    80002458:	01213023          	sd	s2,0(sp)
    8000245c:	02010413          	addi	s0,sp,32
    80002460:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002464:	00100793          	li	a5,1
    80002468:	02a7f863          	bgeu	a5,a0,80002498 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000246c:	00a00793          	li	a5,10
    80002470:	02f577b3          	remu	a5,a0,a5
    80002474:	02078e63          	beqz	a5,800024b0 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002478:	fff48513          	addi	a0,s1,-1
    8000247c:	00000097          	auipc	ra,0x0
    80002480:	fcc080e7          	jalr	-52(ra) # 80002448 <_Z9fibonaccim>
    80002484:	00050913          	mv	s2,a0
    80002488:	ffe48513          	addi	a0,s1,-2
    8000248c:	00000097          	auipc	ra,0x0
    80002490:	fbc080e7          	jalr	-68(ra) # 80002448 <_Z9fibonaccim>
    80002494:	00a90533          	add	a0,s2,a0
}
    80002498:	01813083          	ld	ra,24(sp)
    8000249c:	01013403          	ld	s0,16(sp)
    800024a0:	00813483          	ld	s1,8(sp)
    800024a4:	00013903          	ld	s2,0(sp)
    800024a8:	02010113          	addi	sp,sp,32
    800024ac:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800024b0:	fffff097          	auipc	ra,0xfffff
    800024b4:	e54080e7          	jalr	-428(ra) # 80001304 <_Z15thread_dispatchv>
    800024b8:	fc1ff06f          	j	80002478 <_Z9fibonaccim+0x30>

00000000800024bc <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800024bc:	fe010113          	addi	sp,sp,-32
    800024c0:	00113c23          	sd	ra,24(sp)
    800024c4:	00813823          	sd	s0,16(sp)
    800024c8:	00913423          	sd	s1,8(sp)
    800024cc:	01213023          	sd	s2,0(sp)
    800024d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800024d4:	00000913          	li	s2,0
    800024d8:	0380006f          	j	80002510 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800024dc:	fffff097          	auipc	ra,0xfffff
    800024e0:	e28080e7          	jalr	-472(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800024e4:	00148493          	addi	s1,s1,1
    800024e8:	000027b7          	lui	a5,0x2
    800024ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800024f0:	0097ee63          	bltu	a5,s1,8000250c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800024f4:	00000713          	li	a4,0
    800024f8:	000077b7          	lui	a5,0x7
    800024fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002500:	fce7eee3          	bltu	a5,a4,800024dc <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002504:	00170713          	addi	a4,a4,1
    80002508:	ff1ff06f          	j	800024f8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000250c:	00190913          	addi	s2,s2,1
    80002510:	00900793          	li	a5,9
    80002514:	0527e063          	bltu	a5,s2,80002554 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002518:	00004517          	auipc	a0,0x4
    8000251c:	b0850513          	addi	a0,a0,-1272 # 80006020 <CONSOLE_STATUS+0x10>
    80002520:	00000097          	auipc	ra,0x0
    80002524:	c7c080e7          	jalr	-900(ra) # 8000219c <_Z11printStringPKc>
    80002528:	00000613          	li	a2,0
    8000252c:	00a00593          	li	a1,10
    80002530:	0009051b          	sext.w	a0,s2
    80002534:	00000097          	auipc	ra,0x0
    80002538:	e00080e7          	jalr	-512(ra) # 80002334 <_Z8printIntiii>
    8000253c:	00004517          	auipc	a0,0x4
    80002540:	d7450513          	addi	a0,a0,-652 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80002544:	00000097          	auipc	ra,0x0
    80002548:	c58080e7          	jalr	-936(ra) # 8000219c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000254c:	00000493          	li	s1,0
    80002550:	f99ff06f          	j	800024e8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002554:	00004517          	auipc	a0,0x4
    80002558:	ad450513          	addi	a0,a0,-1324 # 80006028 <CONSOLE_STATUS+0x18>
    8000255c:	00000097          	auipc	ra,0x0
    80002560:	c40080e7          	jalr	-960(ra) # 8000219c <_Z11printStringPKc>
    finishedA = true;
    80002564:	00100793          	li	a5,1
    80002568:	00005717          	auipc	a4,0x5
    8000256c:	d8f70823          	sb	a5,-624(a4) # 800072f8 <finishedA>
}
    80002570:	01813083          	ld	ra,24(sp)
    80002574:	01013403          	ld	s0,16(sp)
    80002578:	00813483          	ld	s1,8(sp)
    8000257c:	00013903          	ld	s2,0(sp)
    80002580:	02010113          	addi	sp,sp,32
    80002584:	00008067          	ret

0000000080002588 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002588:	fe010113          	addi	sp,sp,-32
    8000258c:	00113c23          	sd	ra,24(sp)
    80002590:	00813823          	sd	s0,16(sp)
    80002594:	00913423          	sd	s1,8(sp)
    80002598:	01213023          	sd	s2,0(sp)
    8000259c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800025a0:	00000913          	li	s2,0
    800025a4:	0380006f          	j	800025dc <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800025a8:	fffff097          	auipc	ra,0xfffff
    800025ac:	d5c080e7          	jalr	-676(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800025b0:	00148493          	addi	s1,s1,1
    800025b4:	000027b7          	lui	a5,0x2
    800025b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800025bc:	0097ee63          	bltu	a5,s1,800025d8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800025c0:	00000713          	li	a4,0
    800025c4:	000077b7          	lui	a5,0x7
    800025c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800025cc:	fce7eee3          	bltu	a5,a4,800025a8 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800025d0:	00170713          	addi	a4,a4,1
    800025d4:	ff1ff06f          	j	800025c4 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800025d8:	00190913          	addi	s2,s2,1
    800025dc:	00f00793          	li	a5,15
    800025e0:	0527e063          	bltu	a5,s2,80002620 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800025e4:	00004517          	auipc	a0,0x4
    800025e8:	a5450513          	addi	a0,a0,-1452 # 80006038 <CONSOLE_STATUS+0x28>
    800025ec:	00000097          	auipc	ra,0x0
    800025f0:	bb0080e7          	jalr	-1104(ra) # 8000219c <_Z11printStringPKc>
    800025f4:	00000613          	li	a2,0
    800025f8:	00a00593          	li	a1,10
    800025fc:	0009051b          	sext.w	a0,s2
    80002600:	00000097          	auipc	ra,0x0
    80002604:	d34080e7          	jalr	-716(ra) # 80002334 <_Z8printIntiii>
    80002608:	00004517          	auipc	a0,0x4
    8000260c:	ca850513          	addi	a0,a0,-856 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80002610:	00000097          	auipc	ra,0x0
    80002614:	b8c080e7          	jalr	-1140(ra) # 8000219c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002618:	00000493          	li	s1,0
    8000261c:	f99ff06f          	j	800025b4 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002620:	00004517          	auipc	a0,0x4
    80002624:	a2050513          	addi	a0,a0,-1504 # 80006040 <CONSOLE_STATUS+0x30>
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	b74080e7          	jalr	-1164(ra) # 8000219c <_Z11printStringPKc>
    finishedB = true;
    80002630:	00100793          	li	a5,1
    80002634:	00005717          	auipc	a4,0x5
    80002638:	ccf702a3          	sb	a5,-827(a4) # 800072f9 <finishedB>
    thread_dispatch();
    8000263c:	fffff097          	auipc	ra,0xfffff
    80002640:	cc8080e7          	jalr	-824(ra) # 80001304 <_Z15thread_dispatchv>
}
    80002644:	01813083          	ld	ra,24(sp)
    80002648:	01013403          	ld	s0,16(sp)
    8000264c:	00813483          	ld	s1,8(sp)
    80002650:	00013903          	ld	s2,0(sp)
    80002654:	02010113          	addi	sp,sp,32
    80002658:	00008067          	ret

000000008000265c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000265c:	fe010113          	addi	sp,sp,-32
    80002660:	00113c23          	sd	ra,24(sp)
    80002664:	00813823          	sd	s0,16(sp)
    80002668:	00913423          	sd	s1,8(sp)
    8000266c:	01213023          	sd	s2,0(sp)
    80002670:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002674:	00000493          	li	s1,0
    80002678:	0400006f          	j	800026b8 <_ZN7WorkerC11workerBodyCEPv+0x5c>
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
    800026a4:	c1050513          	addi	a0,a0,-1008 # 800062b0 <CONSOLE_STATUS+0x2a0>
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	af4080e7          	jalr	-1292(ra) # 8000219c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800026b0:	0014849b          	addiw	s1,s1,1
    800026b4:	0ff4f493          	andi	s1,s1,255
    800026b8:	00200793          	li	a5,2
    800026bc:	fc97f0e3          	bgeu	a5,s1,8000267c <_ZN7WorkerC11workerBodyCEPv+0x20>
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
    80002708:	bac50513          	addi	a0,a0,-1108 # 800062b0 <CONSOLE_STATUS+0x2a0>
    8000270c:	00000097          	auipc	ra,0x0
    80002710:	a90080e7          	jalr	-1392(ra) # 8000219c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002714:	00c00513          	li	a0,12
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	d30080e7          	jalr	-720(ra) # 80002448 <_Z9fibonaccim>
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
    8000274c:	b6850513          	addi	a0,a0,-1176 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80002750:	00000097          	auipc	ra,0x0
    80002754:	a4c080e7          	jalr	-1460(ra) # 8000219c <_Z11printStringPKc>
    80002758:	0400006f          	j	80002798 <_ZN7WorkerC11workerBodyCEPv+0x13c>

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
    80002784:	b3050513          	addi	a0,a0,-1232 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80002788:	00000097          	auipc	ra,0x0
    8000278c:	a14080e7          	jalr	-1516(ra) # 8000219c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002790:	0014849b          	addiw	s1,s1,1
    80002794:	0ff4f493          	andi	s1,s1,255
    80002798:	00500793          	li	a5,5
    8000279c:	fc97f0e3          	bgeu	a5,s1,8000275c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800027a0:	00004517          	auipc	a0,0x4
    800027a4:	88850513          	addi	a0,a0,-1912 # 80006028 <CONSOLE_STATUS+0x18>
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	9f4080e7          	jalr	-1548(ra) # 8000219c <_Z11printStringPKc>
    finishedC = true;
    800027b0:	00100793          	li	a5,1
    800027b4:	00005717          	auipc	a4,0x5
    800027b8:	b4f70323          	sb	a5,-1210(a4) # 800072fa <finishedC>
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

00000000800027dc <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800027dc:	fe010113          	addi	sp,sp,-32
    800027e0:	00113c23          	sd	ra,24(sp)
    800027e4:	00813823          	sd	s0,16(sp)
    800027e8:	00913423          	sd	s1,8(sp)
    800027ec:	01213023          	sd	s2,0(sp)
    800027f0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800027f4:	00a00493          	li	s1,10
    800027f8:	0400006f          	j	80002838 <_ZN7WorkerD11workerBodyDEPv+0x5c>
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
    80002824:	a9050513          	addi	a0,a0,-1392 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	974080e7          	jalr	-1676(ra) # 8000219c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002830:	0014849b          	addiw	s1,s1,1
    80002834:	0ff4f493          	andi	s1,s1,255
    80002838:	00c00793          	li	a5,12
    8000283c:	fc97f0e3          	bgeu	a5,s1,800027fc <_ZN7WorkerD11workerBodyDEPv+0x20>
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
    80002864:	be8080e7          	jalr	-1048(ra) # 80002448 <_Z9fibonaccim>
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
    80002894:	a2050513          	addi	a0,a0,-1504 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	904080e7          	jalr	-1788(ra) # 8000219c <_Z11printStringPKc>
    800028a0:	0400006f          	j	800028e0 <_ZN7WorkerD11workerBodyDEPv+0x104>

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
    800028cc:	9e850513          	addi	a0,a0,-1560 # 800062b0 <CONSOLE_STATUS+0x2a0>
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	8cc080e7          	jalr	-1844(ra) # 8000219c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800028d8:	0014849b          	addiw	s1,s1,1
    800028dc:	0ff4f493          	andi	s1,s1,255
    800028e0:	00f00793          	li	a5,15
    800028e4:	fc97f0e3          	bgeu	a5,s1,800028a4 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800028e8:	00003517          	auipc	a0,0x3
    800028ec:	7c050513          	addi	a0,a0,1984 # 800060a8 <CONSOLE_STATUS+0x98>
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	8ac080e7          	jalr	-1876(ra) # 8000219c <_Z11printStringPKc>
    finishedD = true;
    800028f8:	00100793          	li	a5,1
    800028fc:	00005717          	auipc	a4,0x5
    80002900:	9ef70fa3          	sb	a5,-1537(a4) # 800072fb <finishedD>
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

0000000080002924 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002924:	f8010113          	addi	sp,sp,-128
    80002928:	06113c23          	sd	ra,120(sp)
    8000292c:	06813823          	sd	s0,112(sp)
    80002930:	06913423          	sd	s1,104(sp)
    80002934:	07213023          	sd	s2,96(sp)
    80002938:	08010413          	addi	s0,sp,128
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000293c:	01000513          	li	a0,16
    80002940:	00001097          	auipc	ra,0x1
    80002944:	d24080e7          	jalr	-732(ra) # 80003664 <_Znwm>
    80002948:	00050493          	mv	s1,a0
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static void threadWrapper(void* arg);
protected:
    Thread (){
    8000294c:	00005797          	auipc	a5,0x5
    80002950:	9247b783          	ld	a5,-1756(a5) # 80007270 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002954:	01078793          	addi	a5,a5,16
    80002958:	00f53023          	sd	a5,0(a0)
        //tu izleda da treba da dodas gornji konstruktor
        printString("pre wrappera");
    8000295c:	00003517          	auipc	a0,0x3
    80002960:	75c50513          	addi	a0,a0,1884 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002964:	00000097          	auipc	ra,0x0
    80002968:	838080e7          	jalr	-1992(ra) # 8000219c <_Z11printStringPKc>
        threadWrapper(this);
    8000296c:	00048513          	mv	a0,s1
    80002970:	00001097          	auipc	ra,0x1
    80002974:	e94080e7          	jalr	-364(ra) # 80003804 <_ZN6Thread13threadWrapperEPv>
        printString("posle wrappera");
    80002978:	00003517          	auipc	a0,0x3
    8000297c:	75050513          	addi	a0,a0,1872 # 800060c8 <CONSOLE_STATUS+0xb8>
    80002980:	00000097          	auipc	ra,0x0
    80002984:	81c080e7          	jalr	-2020(ra) # 8000219c <_Z11printStringPKc>
        Thread(threadWrapper, this); //todo mozda treba & ispred threadWrapper
    80002988:	00048613          	mv	a2,s1
    8000298c:	00005597          	auipc	a1,0x5
    80002990:	8bc5b583          	ld	a1,-1860(a1) # 80007248 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002994:	fa040513          	addi	a0,s0,-96
    80002998:	00001097          	auipc	ra,0x1
    8000299c:	dac080e7          	jalr	-596(ra) # 80003744 <_ZN6ThreadC1EPFvPvES0_>
    800029a0:	fa040513          	addi	a0,s0,-96
    800029a4:	00001097          	auipc	ra,0x1
    800029a8:	d60080e7          	jalr	-672(ra) # 80003704 <_ZN6ThreadD1Ev>
    WorkerA():Thread() {}
    800029ac:	00004797          	auipc	a5,0x4
    800029b0:	7cc78793          	addi	a5,a5,1996 # 80007178 <_ZTV7WorkerA+0x10>
    800029b4:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800029b8:	f8943023          	sd	s1,-128(s0)
    printString("ThreadA created\n");
    800029bc:	00003517          	auipc	a0,0x3
    800029c0:	71c50513          	addi	a0,a0,1820 # 800060d8 <CONSOLE_STATUS+0xc8>
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	7d8080e7          	jalr	2008(ra) # 8000219c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800029cc:	01000513          	li	a0,16
    800029d0:	00001097          	auipc	ra,0x1
    800029d4:	c94080e7          	jalr	-876(ra) # 80003664 <_Znwm>
    800029d8:	00050493          	mv	s1,a0
    Thread (){
    800029dc:	00005797          	auipc	a5,0x5
    800029e0:	8947b783          	ld	a5,-1900(a5) # 80007270 <_GLOBAL_OFFSET_TABLE_+0x38>
    800029e4:	01078793          	addi	a5,a5,16
    800029e8:	00f53023          	sd	a5,0(a0)
        printString("pre wrappera");
    800029ec:	00003517          	auipc	a0,0x3
    800029f0:	6cc50513          	addi	a0,a0,1740 # 800060b8 <CONSOLE_STATUS+0xa8>
    800029f4:	fffff097          	auipc	ra,0xfffff
    800029f8:	7a8080e7          	jalr	1960(ra) # 8000219c <_Z11printStringPKc>
        threadWrapper(this);
    800029fc:	00048513          	mv	a0,s1
    80002a00:	00001097          	auipc	ra,0x1
    80002a04:	e04080e7          	jalr	-508(ra) # 80003804 <_ZN6Thread13threadWrapperEPv>
        printString("posle wrappera");
    80002a08:	00003517          	auipc	a0,0x3
    80002a0c:	6c050513          	addi	a0,a0,1728 # 800060c8 <CONSOLE_STATUS+0xb8>
    80002a10:	fffff097          	auipc	ra,0xfffff
    80002a14:	78c080e7          	jalr	1932(ra) # 8000219c <_Z11printStringPKc>
        Thread(threadWrapper, this); //todo mozda treba & ispred threadWrapper
    80002a18:	00048613          	mv	a2,s1
    80002a1c:	00005597          	auipc	a1,0x5
    80002a20:	82c5b583          	ld	a1,-2004(a1) # 80007248 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002a24:	fb040513          	addi	a0,s0,-80
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	d1c080e7          	jalr	-740(ra) # 80003744 <_ZN6ThreadC1EPFvPvES0_>
    80002a30:	fb040513          	addi	a0,s0,-80
    80002a34:	00001097          	auipc	ra,0x1
    80002a38:	cd0080e7          	jalr	-816(ra) # 80003704 <_ZN6ThreadD1Ev>
    WorkerB():Thread() {}
    80002a3c:	00004797          	auipc	a5,0x4
    80002a40:	76478793          	addi	a5,a5,1892 # 800071a0 <_ZTV7WorkerB+0x10>
    80002a44:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002a48:	f8943423          	sd	s1,-120(s0)
    printString("ThreadB created\n");
    80002a4c:	00003517          	auipc	a0,0x3
    80002a50:	6a450513          	addi	a0,a0,1700 # 800060f0 <CONSOLE_STATUS+0xe0>
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	748080e7          	jalr	1864(ra) # 8000219c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002a5c:	01000513          	li	a0,16
    80002a60:	00001097          	auipc	ra,0x1
    80002a64:	c04080e7          	jalr	-1020(ra) # 80003664 <_Znwm>
    80002a68:	00050493          	mv	s1,a0
    Thread (){
    80002a6c:	00005797          	auipc	a5,0x5
    80002a70:	8047b783          	ld	a5,-2044(a5) # 80007270 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a74:	01078793          	addi	a5,a5,16
    80002a78:	00f53023          	sd	a5,0(a0)
        printString("pre wrappera");
    80002a7c:	00003517          	auipc	a0,0x3
    80002a80:	63c50513          	addi	a0,a0,1596 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002a84:	fffff097          	auipc	ra,0xfffff
    80002a88:	718080e7          	jalr	1816(ra) # 8000219c <_Z11printStringPKc>
        threadWrapper(this);
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	00001097          	auipc	ra,0x1
    80002a94:	d74080e7          	jalr	-652(ra) # 80003804 <_ZN6Thread13threadWrapperEPv>
        printString("posle wrappera");
    80002a98:	00003517          	auipc	a0,0x3
    80002a9c:	63050513          	addi	a0,a0,1584 # 800060c8 <CONSOLE_STATUS+0xb8>
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	6fc080e7          	jalr	1788(ra) # 8000219c <_Z11printStringPKc>
        Thread(threadWrapper, this); //todo mozda treba & ispred threadWrapper
    80002aa8:	00048613          	mv	a2,s1
    80002aac:	00004597          	auipc	a1,0x4
    80002ab0:	79c5b583          	ld	a1,1948(a1) # 80007248 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ab4:	fc040513          	addi	a0,s0,-64
    80002ab8:	00001097          	auipc	ra,0x1
    80002abc:	c8c080e7          	jalr	-884(ra) # 80003744 <_ZN6ThreadC1EPFvPvES0_>
    80002ac0:	fc040513          	addi	a0,s0,-64
    80002ac4:	00001097          	auipc	ra,0x1
    80002ac8:	c40080e7          	jalr	-960(ra) # 80003704 <_ZN6ThreadD1Ev>
    WorkerC():Thread() {}
    80002acc:	00004797          	auipc	a5,0x4
    80002ad0:	6fc78793          	addi	a5,a5,1788 # 800071c8 <_ZTV7WorkerC+0x10>
    80002ad4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002ad8:	f8943823          	sd	s1,-112(s0)
    printString("ThreadC created\n");
    80002adc:	00003517          	auipc	a0,0x3
    80002ae0:	62c50513          	addi	a0,a0,1580 # 80006108 <CONSOLE_STATUS+0xf8>
    80002ae4:	fffff097          	auipc	ra,0xfffff
    80002ae8:	6b8080e7          	jalr	1720(ra) # 8000219c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002aec:	01000513          	li	a0,16
    80002af0:	00001097          	auipc	ra,0x1
    80002af4:	b74080e7          	jalr	-1164(ra) # 80003664 <_Znwm>
    80002af8:	00050493          	mv	s1,a0
    Thread (){
    80002afc:	00004797          	auipc	a5,0x4
    80002b00:	7747b783          	ld	a5,1908(a5) # 80007270 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002b04:	01078793          	addi	a5,a5,16
    80002b08:	00f53023          	sd	a5,0(a0)
        printString("pre wrappera");
    80002b0c:	00003517          	auipc	a0,0x3
    80002b10:	5ac50513          	addi	a0,a0,1452 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002b14:	fffff097          	auipc	ra,0xfffff
    80002b18:	688080e7          	jalr	1672(ra) # 8000219c <_Z11printStringPKc>
        threadWrapper(this);
    80002b1c:	00048513          	mv	a0,s1
    80002b20:	00001097          	auipc	ra,0x1
    80002b24:	ce4080e7          	jalr	-796(ra) # 80003804 <_ZN6Thread13threadWrapperEPv>
        printString("posle wrappera");
    80002b28:	00003517          	auipc	a0,0x3
    80002b2c:	5a050513          	addi	a0,a0,1440 # 800060c8 <CONSOLE_STATUS+0xb8>
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	66c080e7          	jalr	1644(ra) # 8000219c <_Z11printStringPKc>
        Thread(threadWrapper, this); //todo mozda treba & ispred threadWrapper
    80002b38:	00048613          	mv	a2,s1
    80002b3c:	00004597          	auipc	a1,0x4
    80002b40:	70c5b583          	ld	a1,1804(a1) # 80007248 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002b44:	fd040513          	addi	a0,s0,-48
    80002b48:	00001097          	auipc	ra,0x1
    80002b4c:	bfc080e7          	jalr	-1028(ra) # 80003744 <_ZN6ThreadC1EPFvPvES0_>
    80002b50:	fd040513          	addi	a0,s0,-48
    80002b54:	00001097          	auipc	ra,0x1
    80002b58:	bb0080e7          	jalr	-1104(ra) # 80003704 <_ZN6ThreadD1Ev>
    WorkerD():Thread() {}
    80002b5c:	00004797          	auipc	a5,0x4
    80002b60:	69478793          	addi	a5,a5,1684 # 800071f0 <_ZTV7WorkerD+0x10>
    80002b64:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002b68:	f8943c23          	sd	s1,-104(s0)
    printString("ThreadD created\n");
    80002b6c:	00003517          	auipc	a0,0x3
    80002b70:	5b450513          	addi	a0,a0,1460 # 80006120 <CONSOLE_STATUS+0x110>
    80002b74:	fffff097          	auipc	ra,0xfffff
    80002b78:	628080e7          	jalr	1576(ra) # 8000219c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002b7c:	00000493          	li	s1,0
    80002b80:	00300793          	li	a5,3
    80002b84:	0497c663          	blt	a5,s1,80002bd0 <_Z20Threads_CPP_API_testv+0x2ac>
        printString("dodje do starta\n");
    80002b88:	00003517          	auipc	a0,0x3
    80002b8c:	5b050513          	addi	a0,a0,1456 # 80006138 <CONSOLE_STATUS+0x128>
    80002b90:	fffff097          	auipc	ra,0xfffff
    80002b94:	60c080e7          	jalr	1548(ra) # 8000219c <_Z11printStringPKc>
        threads[i]->start();
    80002b98:	00349793          	slli	a5,s1,0x3
    80002b9c:	fe040713          	addi	a4,s0,-32
    80002ba0:	00f707b3          	add	a5,a4,a5
    80002ba4:	fa07b503          	ld	a0,-96(a5)
    80002ba8:	00001097          	auipc	ra,0x1
    80002bac:	c00080e7          	jalr	-1024(ra) # 800037a8 <_ZN6Thread5startEv>
        printString("startovao\n");
    80002bb0:	00003517          	auipc	a0,0x3
    80002bb4:	5a050513          	addi	a0,a0,1440 # 80006150 <CONSOLE_STATUS+0x140>
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	5e4080e7          	jalr	1508(ra) # 8000219c <_Z11printStringPKc>
    for(int i=0; i<4; i++) {
    80002bc0:	0014849b          	addiw	s1,s1,1
    80002bc4:	fbdff06f          	j	80002b80 <_Z20Threads_CPP_API_testv+0x25c>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002bc8:	00001097          	auipc	ra,0x1
    80002bcc:	bb8080e7          	jalr	-1096(ra) # 80003780 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002bd0:	00004797          	auipc	a5,0x4
    80002bd4:	7287c783          	lbu	a5,1832(a5) # 800072f8 <finishedA>
    80002bd8:	fe0788e3          	beqz	a5,80002bc8 <_Z20Threads_CPP_API_testv+0x2a4>
    80002bdc:	00004797          	auipc	a5,0x4
    80002be0:	71d7c783          	lbu	a5,1821(a5) # 800072f9 <finishedB>
    80002be4:	fe0782e3          	beqz	a5,80002bc8 <_Z20Threads_CPP_API_testv+0x2a4>
    80002be8:	00004797          	auipc	a5,0x4
    80002bec:	7127c783          	lbu	a5,1810(a5) # 800072fa <finishedC>
    80002bf0:	fc078ce3          	beqz	a5,80002bc8 <_Z20Threads_CPP_API_testv+0x2a4>
    80002bf4:	00004797          	auipc	a5,0x4
    80002bf8:	7077c783          	lbu	a5,1799(a5) # 800072fb <finishedD>
    80002bfc:	fc0786e3          	beqz	a5,80002bc8 <_Z20Threads_CPP_API_testv+0x2a4>
    }

    for (auto thread: threads) { delete thread; }
    80002c00:	f8040493          	addi	s1,s0,-128
    80002c04:	0080006f          	j	80002c0c <_Z20Threads_CPP_API_testv+0x2e8>
    80002c08:	00848493          	addi	s1,s1,8
    80002c0c:	fa040793          	addi	a5,s0,-96
    80002c10:	08f48663          	beq	s1,a5,80002c9c <_Z20Threads_CPP_API_testv+0x378>
    80002c14:	0004b503          	ld	a0,0(s1)
    80002c18:	fe0508e3          	beqz	a0,80002c08 <_Z20Threads_CPP_API_testv+0x2e4>
    80002c1c:	00053783          	ld	a5,0(a0)
    80002c20:	0087b783          	ld	a5,8(a5)
    80002c24:	000780e7          	jalr	a5
    80002c28:	fe1ff06f          	j	80002c08 <_Z20Threads_CPP_API_testv+0x2e4>
    80002c2c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002c30:	00048513          	mv	a0,s1
    80002c34:	00001097          	auipc	ra,0x1
    80002c38:	a80080e7          	jalr	-1408(ra) # 800036b4 <_ZdlPv>
    80002c3c:	00090513          	mv	a0,s2
    80002c40:	00005097          	auipc	ra,0x5
    80002c44:	7b8080e7          	jalr	1976(ra) # 800083f8 <_Unwind_Resume>
    80002c48:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002c4c:	00048513          	mv	a0,s1
    80002c50:	00001097          	auipc	ra,0x1
    80002c54:	a64080e7          	jalr	-1436(ra) # 800036b4 <_ZdlPv>
    80002c58:	00090513          	mv	a0,s2
    80002c5c:	00005097          	auipc	ra,0x5
    80002c60:	79c080e7          	jalr	1948(ra) # 800083f8 <_Unwind_Resume>
    80002c64:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002c68:	00048513          	mv	a0,s1
    80002c6c:	00001097          	auipc	ra,0x1
    80002c70:	a48080e7          	jalr	-1464(ra) # 800036b4 <_ZdlPv>
    80002c74:	00090513          	mv	a0,s2
    80002c78:	00005097          	auipc	ra,0x5
    80002c7c:	780080e7          	jalr	1920(ra) # 800083f8 <_Unwind_Resume>
    80002c80:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002c84:	00048513          	mv	a0,s1
    80002c88:	00001097          	auipc	ra,0x1
    80002c8c:	a2c080e7          	jalr	-1492(ra) # 800036b4 <_ZdlPv>
    80002c90:	00090513          	mv	a0,s2
    80002c94:	00005097          	auipc	ra,0x5
    80002c98:	764080e7          	jalr	1892(ra) # 800083f8 <_Unwind_Resume>
}
    80002c9c:	07813083          	ld	ra,120(sp)
    80002ca0:	07013403          	ld	s0,112(sp)
    80002ca4:	06813483          	ld	s1,104(sp)
    80002ca8:	06013903          	ld	s2,96(sp)
    80002cac:	08010113          	addi	sp,sp,128
    80002cb0:	00008067          	ret

0000000080002cb4 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00113423          	sd	ra,8(sp)
    80002cbc:	00813023          	sd	s0,0(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80002cc4:	00000097          	auipc	ra,0x0
    80002cc8:	c60080e7          	jalr	-928(ra) # 80002924 <_Z20Threads_CPP_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80002ccc:	00813083          	ld	ra,8(sp)
    80002cd0:	00013403          	ld	s0,0(sp)
    80002cd4:	01010113          	addi	sp,sp,16
    80002cd8:	00008067          	ret

0000000080002cdc <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002cdc:	ff010113          	addi	sp,sp,-16
    80002ce0:	00113423          	sd	ra,8(sp)
    80002ce4:	00813023          	sd	s0,0(sp)
    80002ce8:	01010413          	addi	s0,sp,16
    80002cec:	00004797          	auipc	a5,0x4
    80002cf0:	48c78793          	addi	a5,a5,1164 # 80007178 <_ZTV7WorkerA+0x10>
    80002cf4:	00f53023          	sd	a5,0(a0)
    80002cf8:	00001097          	auipc	ra,0x1
    80002cfc:	a0c080e7          	jalr	-1524(ra) # 80003704 <_ZN6ThreadD1Ev>
    80002d00:	00813083          	ld	ra,8(sp)
    80002d04:	00013403          	ld	s0,0(sp)
    80002d08:	01010113          	addi	sp,sp,16
    80002d0c:	00008067          	ret

0000000080002d10 <_ZN7WorkerAD0Ev>:
    80002d10:	fe010113          	addi	sp,sp,-32
    80002d14:	00113c23          	sd	ra,24(sp)
    80002d18:	00813823          	sd	s0,16(sp)
    80002d1c:	00913423          	sd	s1,8(sp)
    80002d20:	02010413          	addi	s0,sp,32
    80002d24:	00050493          	mv	s1,a0
    80002d28:	00004797          	auipc	a5,0x4
    80002d2c:	45078793          	addi	a5,a5,1104 # 80007178 <_ZTV7WorkerA+0x10>
    80002d30:	00f53023          	sd	a5,0(a0)
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	9d0080e7          	jalr	-1584(ra) # 80003704 <_ZN6ThreadD1Ev>
    80002d3c:	00048513          	mv	a0,s1
    80002d40:	00001097          	auipc	ra,0x1
    80002d44:	974080e7          	jalr	-1676(ra) # 800036b4 <_ZdlPv>
    80002d48:	01813083          	ld	ra,24(sp)
    80002d4c:	01013403          	ld	s0,16(sp)
    80002d50:	00813483          	ld	s1,8(sp)
    80002d54:	02010113          	addi	sp,sp,32
    80002d58:	00008067          	ret

0000000080002d5c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002d5c:	ff010113          	addi	sp,sp,-16
    80002d60:	00113423          	sd	ra,8(sp)
    80002d64:	00813023          	sd	s0,0(sp)
    80002d68:	01010413          	addi	s0,sp,16
    80002d6c:	00004797          	auipc	a5,0x4
    80002d70:	43478793          	addi	a5,a5,1076 # 800071a0 <_ZTV7WorkerB+0x10>
    80002d74:	00f53023          	sd	a5,0(a0)
    80002d78:	00001097          	auipc	ra,0x1
    80002d7c:	98c080e7          	jalr	-1652(ra) # 80003704 <_ZN6ThreadD1Ev>
    80002d80:	00813083          	ld	ra,8(sp)
    80002d84:	00013403          	ld	s0,0(sp)
    80002d88:	01010113          	addi	sp,sp,16
    80002d8c:	00008067          	ret

0000000080002d90 <_ZN7WorkerBD0Ev>:
    80002d90:	fe010113          	addi	sp,sp,-32
    80002d94:	00113c23          	sd	ra,24(sp)
    80002d98:	00813823          	sd	s0,16(sp)
    80002d9c:	00913423          	sd	s1,8(sp)
    80002da0:	02010413          	addi	s0,sp,32
    80002da4:	00050493          	mv	s1,a0
    80002da8:	00004797          	auipc	a5,0x4
    80002dac:	3f878793          	addi	a5,a5,1016 # 800071a0 <_ZTV7WorkerB+0x10>
    80002db0:	00f53023          	sd	a5,0(a0)
    80002db4:	00001097          	auipc	ra,0x1
    80002db8:	950080e7          	jalr	-1712(ra) # 80003704 <_ZN6ThreadD1Ev>
    80002dbc:	00048513          	mv	a0,s1
    80002dc0:	00001097          	auipc	ra,0x1
    80002dc4:	8f4080e7          	jalr	-1804(ra) # 800036b4 <_ZdlPv>
    80002dc8:	01813083          	ld	ra,24(sp)
    80002dcc:	01013403          	ld	s0,16(sp)
    80002dd0:	00813483          	ld	s1,8(sp)
    80002dd4:	02010113          	addi	sp,sp,32
    80002dd8:	00008067          	ret

0000000080002ddc <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002ddc:	ff010113          	addi	sp,sp,-16
    80002de0:	00113423          	sd	ra,8(sp)
    80002de4:	00813023          	sd	s0,0(sp)
    80002de8:	01010413          	addi	s0,sp,16
    80002dec:	00004797          	auipc	a5,0x4
    80002df0:	3dc78793          	addi	a5,a5,988 # 800071c8 <_ZTV7WorkerC+0x10>
    80002df4:	00f53023          	sd	a5,0(a0)
    80002df8:	00001097          	auipc	ra,0x1
    80002dfc:	90c080e7          	jalr	-1780(ra) # 80003704 <_ZN6ThreadD1Ev>
    80002e00:	00813083          	ld	ra,8(sp)
    80002e04:	00013403          	ld	s0,0(sp)
    80002e08:	01010113          	addi	sp,sp,16
    80002e0c:	00008067          	ret

0000000080002e10 <_ZN7WorkerCD0Ev>:
    80002e10:	fe010113          	addi	sp,sp,-32
    80002e14:	00113c23          	sd	ra,24(sp)
    80002e18:	00813823          	sd	s0,16(sp)
    80002e1c:	00913423          	sd	s1,8(sp)
    80002e20:	02010413          	addi	s0,sp,32
    80002e24:	00050493          	mv	s1,a0
    80002e28:	00004797          	auipc	a5,0x4
    80002e2c:	3a078793          	addi	a5,a5,928 # 800071c8 <_ZTV7WorkerC+0x10>
    80002e30:	00f53023          	sd	a5,0(a0)
    80002e34:	00001097          	auipc	ra,0x1
    80002e38:	8d0080e7          	jalr	-1840(ra) # 80003704 <_ZN6ThreadD1Ev>
    80002e3c:	00048513          	mv	a0,s1
    80002e40:	00001097          	auipc	ra,0x1
    80002e44:	874080e7          	jalr	-1932(ra) # 800036b4 <_ZdlPv>
    80002e48:	01813083          	ld	ra,24(sp)
    80002e4c:	01013403          	ld	s0,16(sp)
    80002e50:	00813483          	ld	s1,8(sp)
    80002e54:	02010113          	addi	sp,sp,32
    80002e58:	00008067          	ret

0000000080002e5c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002e5c:	ff010113          	addi	sp,sp,-16
    80002e60:	00113423          	sd	ra,8(sp)
    80002e64:	00813023          	sd	s0,0(sp)
    80002e68:	01010413          	addi	s0,sp,16
    80002e6c:	00004797          	auipc	a5,0x4
    80002e70:	38478793          	addi	a5,a5,900 # 800071f0 <_ZTV7WorkerD+0x10>
    80002e74:	00f53023          	sd	a5,0(a0)
    80002e78:	00001097          	auipc	ra,0x1
    80002e7c:	88c080e7          	jalr	-1908(ra) # 80003704 <_ZN6ThreadD1Ev>
    80002e80:	00813083          	ld	ra,8(sp)
    80002e84:	00013403          	ld	s0,0(sp)
    80002e88:	01010113          	addi	sp,sp,16
    80002e8c:	00008067          	ret

0000000080002e90 <_ZN7WorkerDD0Ev>:
    80002e90:	fe010113          	addi	sp,sp,-32
    80002e94:	00113c23          	sd	ra,24(sp)
    80002e98:	00813823          	sd	s0,16(sp)
    80002e9c:	00913423          	sd	s1,8(sp)
    80002ea0:	02010413          	addi	s0,sp,32
    80002ea4:	00050493          	mv	s1,a0
    80002ea8:	00004797          	auipc	a5,0x4
    80002eac:	34878793          	addi	a5,a5,840 # 800071f0 <_ZTV7WorkerD+0x10>
    80002eb0:	00f53023          	sd	a5,0(a0)
    80002eb4:	00001097          	auipc	ra,0x1
    80002eb8:	850080e7          	jalr	-1968(ra) # 80003704 <_ZN6ThreadD1Ev>
    80002ebc:	00048513          	mv	a0,s1
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	7f4080e7          	jalr	2036(ra) # 800036b4 <_ZdlPv>
    80002ec8:	01813083          	ld	ra,24(sp)
    80002ecc:	01013403          	ld	s0,16(sp)
    80002ed0:	00813483          	ld	s1,8(sp)
    80002ed4:	02010113          	addi	sp,sp,32
    80002ed8:	00008067          	ret

0000000080002edc <_ZN7WorkerA3runEv>:
    void run() override {
    80002edc:	ff010113          	addi	sp,sp,-16
    80002ee0:	00113423          	sd	ra,8(sp)
    80002ee4:	00813023          	sd	s0,0(sp)
    80002ee8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002eec:	00000593          	li	a1,0
    80002ef0:	fffff097          	auipc	ra,0xfffff
    80002ef4:	5cc080e7          	jalr	1484(ra) # 800024bc <_ZN7WorkerA11workerBodyAEPv>
    }
    80002ef8:	00813083          	ld	ra,8(sp)
    80002efc:	00013403          	ld	s0,0(sp)
    80002f00:	01010113          	addi	sp,sp,16
    80002f04:	00008067          	ret

0000000080002f08 <_ZN7WorkerB3runEv>:
    void run() override {
    80002f08:	ff010113          	addi	sp,sp,-16
    80002f0c:	00113423          	sd	ra,8(sp)
    80002f10:	00813023          	sd	s0,0(sp)
    80002f14:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002f18:	00000593          	li	a1,0
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	66c080e7          	jalr	1644(ra) # 80002588 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002f24:	00813083          	ld	ra,8(sp)
    80002f28:	00013403          	ld	s0,0(sp)
    80002f2c:	01010113          	addi	sp,sp,16
    80002f30:	00008067          	ret

0000000080002f34 <_ZN7WorkerC3runEv>:
    void run() override {
    80002f34:	ff010113          	addi	sp,sp,-16
    80002f38:	00113423          	sd	ra,8(sp)
    80002f3c:	00813023          	sd	s0,0(sp)
    80002f40:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80002f44:	00000593          	li	a1,0
    80002f48:	fffff097          	auipc	ra,0xfffff
    80002f4c:	714080e7          	jalr	1812(ra) # 8000265c <_ZN7WorkerC11workerBodyCEPv>
    }
    80002f50:	00813083          	ld	ra,8(sp)
    80002f54:	00013403          	ld	s0,0(sp)
    80002f58:	01010113          	addi	sp,sp,16
    80002f5c:	00008067          	ret

0000000080002f60 <_ZN7WorkerD3runEv>:
    void run() override {
    80002f60:	ff010113          	addi	sp,sp,-16
    80002f64:	00113423          	sd	ra,8(sp)
    80002f68:	00813023          	sd	s0,0(sp)
    80002f6c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002f70:	00000593          	li	a1,0
    80002f74:	00000097          	auipc	ra,0x0
    80002f78:	868080e7          	jalr	-1944(ra) # 800027dc <_ZN7WorkerD11workerBodyDEPv>
    }
    80002f7c:	00813083          	ld	ra,8(sp)
    80002f80:	00013403          	ld	s0,0(sp)
    80002f84:	01010113          	addi	sp,sp,16
    80002f88:	00008067          	ret

0000000080002f8c <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80002f8c:	ff010113          	addi	sp,sp,-16
    80002f90:	00813423          	sd	s0,8(sp)
    80002f94:	01010413          	addi	s0,sp,16
    80002f98:	00100793          	li	a5,1
    80002f9c:	00f50863          	beq	a0,a5,80002fac <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002fa0:	00813403          	ld	s0,8(sp)
    80002fa4:	01010113          	addi	sp,sp,16
    80002fa8:	00008067          	ret
    80002fac:	000107b7          	lui	a5,0x10
    80002fb0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002fb4:	fef596e3          	bne	a1,a5,80002fa0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    LinkedList() : head(0), tail(0) {}
    80002fb8:	00004797          	auipc	a5,0x4
    80002fbc:	34878793          	addi	a5,a5,840 # 80007300 <_ZN9Scheduler19readyCoroutineQueueE>
    80002fc0:	0007b023          	sd	zero,0(a5)
    80002fc4:	0007b423          	sd	zero,8(a5)
    80002fc8:	fd9ff06f          	j	80002fa0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002fcc <_ZN9Scheduler3getEv>:
{
    80002fcc:	fe010113          	addi	sp,sp,-32
    80002fd0:	00113c23          	sd	ra,24(sp)
    80002fd4:	00813823          	sd	s0,16(sp)
    80002fd8:	00913423          	sd	s1,8(sp)
    80002fdc:	02010413          	addi	s0,sp,32
        if (!head) {return 0;}
    80002fe0:	00004517          	auipc	a0,0x4
    80002fe4:	32053503          	ld	a0,800(a0) # 80007300 <_ZN9Scheduler19readyCoroutineQueueE>
    80002fe8:	04050263          	beqz	a0,8000302c <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002fec:	00853783          	ld	a5,8(a0)
    80002ff0:	00004717          	auipc	a4,0x4
    80002ff4:	30f73823          	sd	a5,784(a4) # 80007300 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80002ff8:	02078463          	beqz	a5,80003020 <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    80002ffc:	00053483          	ld	s1,0(a0)
        delete elem;
    80003000:	00000097          	auipc	ra,0x0
    80003004:	6b4080e7          	jalr	1716(ra) # 800036b4 <_ZdlPv>
}
    80003008:	00048513          	mv	a0,s1
    8000300c:	01813083          	ld	ra,24(sp)
    80003010:	01013403          	ld	s0,16(sp)
    80003014:	00813483          	ld	s1,8(sp)
    80003018:	02010113          	addi	sp,sp,32
    8000301c:	00008067          	ret
            tail = 0;
    80003020:	00004797          	auipc	a5,0x4
    80003024:	2e07b423          	sd	zero,744(a5) # 80007308 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80003028:	fd5ff06f          	j	80002ffc <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    8000302c:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80003030:	fd9ff06f          	j	80003008 <_ZN9Scheduler3getEv+0x3c>

0000000080003034 <_ZN9Scheduler3putEP3TCB>:
{
    80003034:	ff010113          	addi	sp,sp,-16
    80003038:	00813423          	sd	s0,8(sp)
    8000303c:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003040:	00004797          	auipc	a5,0x4
    80003044:	2287b783          	ld	a5,552(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003048:	0007b783          	ld	a5,0(a5)
    8000304c:	0c078a63          	beqz	a5,80003120 <_ZN9Scheduler3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80003050:	00004717          	auipc	a4,0x4
    80003054:	21873703          	ld	a4,536(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003058:	00073683          	ld	a3,0(a4)
    8000305c:	0006b683          	ld	a3,0(a3)
    80003060:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80003064:	00073703          	ld	a4,0(a4)
    80003068:	00873603          	ld	a2,8(a4)
    8000306c:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80003070:	0107b703          	ld	a4,16(a5)
    80003074:	03f00593          	li	a1,63
    80003078:	02e5f663          	bgeu	a1,a4,800030a4 <_ZN9Scheduler3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    8000307c:	fc070713          	addi	a4,a4,-64
    80003080:	01800593          	li	a1,24
    80003084:	02e5ec63          	bltu	a1,a4,800030bc <_ZN9Scheduler3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80003088:	02060263          	beqz	a2,800030ac <_ZN9Scheduler3putEP3TCB+0x78>
    8000308c:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80003090:	0007b703          	ld	a4,0(a5)
    80003094:	08070663          	beqz	a4,80003120 <_ZN9Scheduler3putEP3TCB+0xec>
    80003098:	0087b683          	ld	a3,8(a5)
    8000309c:	00d73423          	sd	a3,8(a4)
                return cur;
    800030a0:	0800006f          	j	80003120 <_ZN9Scheduler3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800030a4:	00068793          	mv	a5,a3
    800030a8:	fa5ff06f          	j	8000304c <_ZN9Scheduler3putEP3TCB+0x18>
                else fmem_head = cur->next;
    800030ac:	00004717          	auipc	a4,0x4
    800030b0:	1bc73703          	ld	a4,444(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    800030b4:	00d73023          	sd	a3,0(a4)
    800030b8:	fd9ff06f          	j	80003090 <_ZN9Scheduler3putEP3TCB+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800030bc:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    800030c0:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800030c4:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800030c8:	0087b683          	ld	a3,8(a5)
    800030cc:	08068063          	beqz	a3,8000314c <_ZN9Scheduler3putEP3TCB+0x118>
    800030d0:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800030d4:	0007b683          	ld	a3,0(a5)
    800030d8:	00068463          	beqz	a3,800030e0 <_ZN9Scheduler3putEP3TCB+0xac>
    800030dc:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800030e0:	0087b603          	ld	a2,8(a5)
    800030e4:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800030e8:	0007b683          	ld	a3,0(a5)
    800030ec:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800030f0:	0107b783          	ld	a5,16(a5)
    800030f4:	fc078793          	addi	a5,a5,-64
    800030f8:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800030fc:	0c070693          	addi	a3,a4,192
    80003100:	00004597          	auipc	a1,0x4
    80003104:	1685b583          	ld	a1,360(a1) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003108:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    8000310c:	00073583          	ld	a1,0(a4)
    80003110:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80003114:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80003118:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    8000311c:	00070793          	mv	a5,a4
        elem->data=data;
    80003120:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80003124:	0007b423          	sd	zero,8(a5)
        if (tail){
    80003128:	00004717          	auipc	a4,0x4
    8000312c:	1e073703          	ld	a4,480(a4) # 80007308 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80003130:	02070863          	beqz	a4,80003160 <_ZN9Scheduler3putEP3TCB+0x12c>
            tail->next=elem;
    80003134:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80003138:	00004717          	auipc	a4,0x4
    8000313c:	1cf73823          	sd	a5,464(a4) # 80007308 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80003140:	00813403          	ld	s0,8(sp)
    80003144:	01010113          	addi	sp,sp,16
    80003148:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    8000314c:	0c070693          	addi	a3,a4,192
    80003150:	00004617          	auipc	a2,0x4
    80003154:	11863603          	ld	a2,280(a2) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003158:	00d63023          	sd	a3,0(a2)
    8000315c:	f79ff06f          	j	800030d4 <_ZN9Scheduler3putEP3TCB+0xa0>
            head=tail=elem;
    80003160:	00004717          	auipc	a4,0x4
    80003164:	1a070713          	addi	a4,a4,416 # 80007300 <_ZN9Scheduler19readyCoroutineQueueE>
    80003168:	00f73423          	sd	a5,8(a4)
    8000316c:	00f73023          	sd	a5,0(a4)
    80003170:	fd1ff06f          	j	80003140 <_ZN9Scheduler3putEP3TCB+0x10c>

0000000080003174 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00113423          	sd	ra,8(sp)
    8000317c:	00813023          	sd	s0,0(sp)
    80003180:	01010413          	addi	s0,sp,16
    80003184:	000105b7          	lui	a1,0x10
    80003188:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000318c:	00100513          	li	a0,1
    80003190:	00000097          	auipc	ra,0x0
    80003194:	dfc080e7          	jalr	-516(ra) # 80002f8c <_Z41__static_initialization_and_destruction_0ii>
    80003198:	00813083          	ld	ra,8(sp)
    8000319c:	00013403          	ld	s0,0(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <main>:
//void smoker1(void* arg);
//void smoker2(void* arg);
//void smoker3(void* arg);
//void dummyfun(void* arg);

int main(){
    800031a8:	fe010113          	addi	sp,sp,-32
    800031ac:	00113c23          	sd	ra,24(sp)
    800031b0:	00813823          	sd	s0,16(sp)
    800031b4:	02010413          	addi	s0,sp,32
        if (!instance) {
    800031b8:	00004797          	auipc	a5,0x4
    800031bc:	0a87b783          	ld	a5,168(a5) # 80007260 <_GLOBAL_OFFSET_TABLE_+0x28>
    800031c0:	0007b783          	ld	a5,0(a5)
    800031c4:	04078863          	beqz	a5,80003214 <main+0x6c>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    800031c8:	00004797          	auipc	a5,0x4
    800031cc:	0907b783          	ld	a5,144(a5) # 80007258 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    800031d0:	10579073          	csrw	stvec,a5
    //__asm__ volatile ("csrs sstatus, 0x2"); //todo nesto treba sa ovim spoljasnjim prekidima da se radi
    //RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    thread_t main;
    thread_create(&main, nullptr, nullptr);
    800031d4:	00000613          	li	a2,0
    800031d8:	00000593          	li	a1,0
    800031dc:	fe840513          	addi	a0,s0,-24
    800031e0:	ffffe097          	auipc	ra,0xffffe
    800031e4:	0c0080e7          	jalr	192(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    800031e8:	00004797          	auipc	a5,0x4
    800031ec:	0907b783          	ld	a5,144(a5) # 80007278 <_GLOBAL_OFFSET_TABLE_+0x40>
    800031f0:	fe843703          	ld	a4,-24(s0)
    800031f4:	00e7b023          	sd	a4,0(a5)
//    thread_create(&t31, dummyfun, nullptr);
//    for (int i = 0; i < 30; ++i) {
//        thread_dispatch();
//    }
//    if(sem_wait(dummy)==-1) printString("ubien semafor\n");
    userMain();
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	abc080e7          	jalr	-1348(ra) # 80002cb4 <_Z8userMainv>
//    char x=getc();
//    putc(x);

    return 0;
}
    80003200:	00000513          	li	a0,0
    80003204:	01813083          	ld	ra,24(sp)
    80003208:	01013403          	ld	s0,16(sp)
    8000320c:	02010113          	addi	sp,sp,32
    80003210:	00008067          	ret
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80003214:	00004797          	auipc	a5,0x4
    80003218:	02c7b783          	ld	a5,44(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000321c:	0007b783          	ld	a5,0(a5)
    80003220:	00004697          	auipc	a3,0x4
    80003224:	0486b683          	ld	a3,72(a3) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003228:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    8000322c:	00004717          	auipc	a4,0x4
    80003230:	05473703          	ld	a4,84(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003234:	00073703          	ld	a4,0(a4)
    80003238:	40f70733          	sub	a4,a4,a5
    8000323c:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    80003240:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80003244:	0006b783          	ld	a5,0(a3)
    80003248:	0007b423          	sd	zero,8(a5)
            return instance;
    8000324c:	f7dff06f          	j	800031c8 <main+0x20>

0000000080003250 <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    80003250:	ff010113          	addi	sp,sp,-16
    80003254:	00813423          	sd	s0,8(sp)
    80003258:	01010413          	addi	s0,sp,16
    return finished;
}
    8000325c:	02054503          	lbu	a0,32(a0)
    80003260:	00813403          	ld	s0,8(sp)
    80003264:	01010113          	addi	sp,sp,16
    80003268:	00008067          	ret

000000008000326c <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    8000326c:	ff010113          	addi	sp,sp,-16
    80003270:	00813423          	sd	s0,8(sp)
    80003274:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    80003278:	02b50023          	sb	a1,32(a0)
}
    8000327c:	00813403          	ld	s0,8(sp)
    80003280:	01010113          	addi	sp,sp,16
    80003284:	00008067          	ret

0000000080003288 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments, bool started) {
    80003288:	fe010113          	addi	sp,sp,-32
    8000328c:	00113c23          	sd	ra,24(sp)
    80003290:	00813823          	sd	s0,16(sp)
    80003294:	00913423          	sd	s1,8(sp)
    80003298:	02010413          	addi	s0,sp,32
    8000329c:	00058493          	mv	s1,a1
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800032a0:	00004797          	auipc	a5,0x4
    800032a4:	fc87b783          	ld	a5,-56(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    800032a8:	0007b783          	ld	a5,0(a5)
    800032ac:	0c078a63          	beqz	a5,80003380 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
            cur->next=fmem_head->next;
    800032b0:	00004717          	auipc	a4,0x4
    800032b4:	fb873703          	ld	a4,-72(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    800032b8:	00073583          	ld	a1,0(a4)
    800032bc:	0005b583          	ld	a1,0(a1)
    800032c0:	00b7b023          	sd	a1,0(a5)
            cur->prev=fmem_head->prev;
    800032c4:	00073703          	ld	a4,0(a4)
    800032c8:	00873803          	ld	a6,8(a4)
    800032cc:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    800032d0:	0107b703          	ld	a4,16(a5)
    800032d4:	07f00893          	li	a7,127
    800032d8:	02e8f663          	bgeu	a7,a4,80003304 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    800032dc:	f8070713          	addi	a4,a4,-128
    800032e0:	01800893          	li	a7,24
    800032e4:	02e8ec63          	bltu	a7,a4,8000331c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    800032e8:	02080263          	beqz	a6,8000330c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x84>
    800032ec:	00b83023          	sd	a1,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    800032f0:	0007b703          	ld	a4,0(a5)
    800032f4:	08070663          	beqz	a4,80003380 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
    800032f8:	0087b583          	ld	a1,8(a5)
    800032fc:	00b73423          	sd	a1,8(a4)
                return cur;
    80003300:	0800006f          	j	80003380 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003304:	00058793          	mv	a5,a1
    80003308:	fa5ff06f          	j	800032ac <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x24>
                else fmem_head = cur->next;
    8000330c:	00004717          	auipc	a4,0x4
    80003310:	f5c73703          	ld	a4,-164(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003314:	00b73023          	sd	a1,0(a4)
    80003318:	fd9ff06f          	j	800032f0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    8000331c:	08078713          	addi	a4,a5,128
                newfrgm->prev=nullptr;
    80003320:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80003324:	0807b023          	sd	zero,128(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80003328:	0087b583          	ld	a1,8(a5)
    8000332c:	0c058c63          	beqz	a1,80003404 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x17c>
    80003330:	00e5b023          	sd	a4,0(a1)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80003334:	0007b583          	ld	a1,0(a5)
    80003338:	00058463          	beqz	a1,80003340 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xb8>
    8000333c:	00e5b423          	sd	a4,8(a1)
                newfrgm->prev = cur->prev;
    80003340:	0087b803          	ld	a6,8(a5)
    80003344:	01073423          	sd	a6,8(a4)
                newfrgm->next = cur->next;
    80003348:	0007b583          	ld	a1,0(a5)
    8000334c:	00b73023          	sd	a1,0(a4)
                newfrgm->size = cur->size-size;
    80003350:	0107b783          	ld	a5,16(a5)
    80003354:	f8078793          	addi	a5,a5,-128
    80003358:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    8000335c:	0c070593          	addi	a1,a4,192
    80003360:	00004897          	auipc	a7,0x4
    80003364:	f088b883          	ld	a7,-248(a7) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003368:	00b8b023          	sd	a1,0(a7)
                fmem_head->next=newfrgm->next;
    8000336c:	00073883          	ld	a7,0(a4)
    80003370:	0d173023          	sd	a7,192(a4)
                fmem_head->prev=newfrgm->prev;
    80003374:	0d073423          	sd	a6,200(a4)
                fmem_head->size=newfrgm->size;
    80003378:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    8000337c:	00070793          	mv	a5,a4
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    80003380:	00f4b023          	sd	a5,0(s1)
    (*handle)->body=body;
    80003384:	00a7b023          	sd	a0,0(a5)
    (*handle)->arguments=arguments;
    80003388:	0004b783          	ld	a5,0(s1)
    8000338c:	02c7b423          	sd	a2,40(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    80003390:	12050663          	beqz	a0,800034bc <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x234>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003394:	00004797          	auipc	a5,0x4
    80003398:	ed47b783          	ld	a5,-300(a5) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000339c:	0007b783          	ld	a5,0(a5)
    800033a0:	12078063          	beqz	a5,800034c0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
            cur->next=fmem_head->next;
    800033a4:	00004717          	auipc	a4,0x4
    800033a8:	ec473703          	ld	a4,-316(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    800033ac:	00073603          	ld	a2,0(a4)
    800033b0:	00063583          	ld	a1,0(a2)
    800033b4:	00b7b023          	sd	a1,0(a5)
            cur->prev=fmem_head->prev;
    800033b8:	00073703          	ld	a4,0(a4)
    800033bc:	00873803          	ld	a6,8(a4)
    800033c0:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    800033c4:	0107b703          	ld	a4,16(a5)
    800033c8:	00001637          	lui	a2,0x1
    800033cc:	03f60613          	addi	a2,a2,63 # 103f <_entry-0x7fffefc1>
    800033d0:	04e67463          	bgeu	a2,a4,80003418 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x190>
            if (cur->size-size<=sizeof(FreeMem)){
    800033d4:	fffff637          	lui	a2,0xfffff
    800033d8:	fc060613          	addi	a2,a2,-64 # ffffffffffffefc0 <end+0xffffffff7fff6a30>
    800033dc:	00c70733          	add	a4,a4,a2
    800033e0:	01800613          	li	a2,24
    800033e4:	04e66663          	bltu	a2,a4,80003430 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1a8>
                if (cur->prev) cur->prev->next = cur->next;
    800033e8:	02080c63          	beqz	a6,80003420 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x198>
    800033ec:	00b83023          	sd	a1,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    800033f0:	0007b703          	ld	a4,0(a5)
    800033f4:	0c070663          	beqz	a4,800034c0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
    800033f8:	0087b603          	ld	a2,8(a5)
    800033fc:	00c73423          	sd	a2,8(a4)
                return cur;
    80003400:	0c00006f          	j	800034c0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80003404:	0c070593          	addi	a1,a4,192
    80003408:	00004817          	auipc	a6,0x4
    8000340c:	e6083803          	ld	a6,-416(a6) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003410:	00b83023          	sd	a1,0(a6)
    80003414:	f21ff06f          	j	80003334 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xac>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003418:	00058793          	mv	a5,a1
    8000341c:	f85ff06f          	j	800033a0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x118>
                else fmem_head = cur->next;
    80003420:	00004717          	auipc	a4,0x4
    80003424:	e4873703          	ld	a4,-440(a4) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003428:	00b73023          	sd	a1,0(a4)
    8000342c:	fc5ff06f          	j	800033f0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x168>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80003430:	00001737          	lui	a4,0x1
    80003434:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    80003438:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    8000343c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80003440:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80003444:	0087b603          	ld	a2,8(a5)
    80003448:	06060063          	beqz	a2,800034a8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x220>
    8000344c:	00e63023          	sd	a4,0(a2)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80003450:	0007b603          	ld	a2,0(a5)
    80003454:	00060463          	beqz	a2,8000345c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1d4>
    80003458:	00e63423          	sd	a4,8(a2)
                newfrgm->prev = cur->prev;
    8000345c:	0087b583          	ld	a1,8(a5)
    80003460:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    80003464:	0007b603          	ld	a2,0(a5)
    80003468:	00c73023          	sd	a2,0(a4)
                newfrgm->size = cur->size-size;
    8000346c:	0107b783          	ld	a5,16(a5)
    80003470:	fffff637          	lui	a2,0xfffff
    80003474:	fc060613          	addi	a2,a2,-64 # ffffffffffffefc0 <end+0xffffffff7fff6a30>
    80003478:	00c787b3          	add	a5,a5,a2
    8000347c:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80003480:	0c070613          	addi	a2,a4,192
    80003484:	00004817          	auipc	a6,0x4
    80003488:	de483803          	ld	a6,-540(a6) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000348c:	00c83023          	sd	a2,0(a6)
                fmem_head->next=newfrgm->next;
    80003490:	00073803          	ld	a6,0(a4)
    80003494:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80003498:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    8000349c:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800034a0:	00070793          	mv	a5,a4
    800034a4:	01c0006f          	j	800034c0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800034a8:	0c070613          	addi	a2,a4,192
    800034ac:	00004597          	auipc	a1,0x4
    800034b0:	dbc5b583          	ld	a1,-580(a1) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x30>
    800034b4:	00c5b023          	sd	a2,0(a1)
    800034b8:	f99ff06f          	j	80003450 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1c8>
    800034bc:	00000793          	li	a5,0
    800034c0:	0004b703          	ld	a4,0(s1)
    800034c4:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    800034c8:	08050063          	beqz	a0,80003548 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2c0>
    800034cc:	00000717          	auipc	a4,0x0
    800034d0:	0c470713          	addi	a4,a4,196 # 80003590 <_ZN3TCB13threadWrapperEv>
    800034d4:	0004b783          	ld	a5,0(s1)
    800034d8:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    800034dc:	0004b703          	ld	a4,0(s1)
    800034e0:	00873783          	ld	a5,8(a4)
    800034e4:	06078663          	beqz	a5,80003550 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2c8>
    800034e8:	00008637          	lui	a2,0x8
    800034ec:	00c787b3          	add	a5,a5,a2
    800034f0:	00f73c23          	sd	a5,24(a4)
    (*handle)->finished=false;
    800034f4:	0004b783          	ld	a5,0(s1)
    800034f8:	02078023          	sb	zero,32(a5)
    (*handle)->semBlocked=nullptr;
    800034fc:	0004b783          	ld	a5,0(s1)
    80003500:	0207b823          	sd	zero,48(a5)
    (*handle)->timeSlice=TIME_SLICE;
    80003504:	0004b783          	ld	a5,0(s1)
    80003508:	00200713          	li	a4,2
    8000350c:	02e7bc23          	sd	a4,56(a5)
    (*handle)->threadStarted=started;
    80003510:	0004b783          	ld	a5,0(s1)
    80003514:	04d78023          	sb	a3,64(a5)
    if (body != nullptr && (*handle)->isStarted()==true) { Scheduler::put(*handle); }
    80003518:	00050863          	beqz	a0,80003528 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2a0>
    8000351c:	0004b503          	ld	a0,0(s1)
        return threadStarted;
    80003520:	04054783          	lbu	a5,64(a0)
    80003524:	02079a63          	bnez	a5,80003558 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2d0>
    if(*handle==nullptr){
    80003528:	0004b783          	ld	a5,0(s1)
    8000352c:	02078c63          	beqz	a5,80003564 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2dc>
        return -1;
    }else{return 0;}
    80003530:	00000513          	li	a0,0
}
    80003534:	01813083          	ld	ra,24(sp)
    80003538:	01013403          	ld	s0,16(sp)
    8000353c:	00813483          	ld	s1,8(sp)
    80003540:	02010113          	addi	sp,sp,32
    80003544:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80003548:	00000713          	li	a4,0
    8000354c:	f89ff06f          	j	800034d4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x24c>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80003550:	00000793          	li	a5,0
    80003554:	f9dff06f          	j	800034f0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x268>
    if (body != nullptr && (*handle)->isStarted()==true) { Scheduler::put(*handle); }
    80003558:	00000097          	auipc	ra,0x0
    8000355c:	adc080e7          	jalr	-1316(ra) # 80003034 <_ZN9Scheduler3putEP3TCB>
    80003560:	fc9ff06f          	j	80003528 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2a0>
        return -1;
    80003564:	fff00513          	li	a0,-1
    80003568:	fcdff06f          	j	80003534 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2ac>

000000008000356c <_ZN3TCB5yieldEv>:

void TCB::yield(){
    8000356c:	ff010113          	addi	sp,sp,-16
    80003570:	00813423          	sd	s0,8(sp)
    80003574:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80003578:	01300793          	li	a5,19
    8000357c:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80003580:	00000073          	ecall

};
    80003584:	00813403          	ld	s0,8(sp)
    80003588:	01010113          	addi	sp,sp,16
    8000358c:	00008067          	ret

0000000080003590 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80003590:	fe010113          	addi	sp,sp,-32
    80003594:	00113c23          	sd	ra,24(sp)
    80003598:	00813823          	sd	s0,16(sp)
    8000359c:	00913423          	sd	s1,8(sp)
    800035a0:	02010413          	addi	s0,sp,32
    //RiscV::popSppSpie();
    __asm__ volatile ("csrw sepc, ra");
    800035a4:	14109073          	csrw	sepc,ra
    //__asm__ volatile ("sret");
    running->body(running->arguments);
    800035a8:	00004497          	auipc	s1,0x4
    800035ac:	d6848493          	addi	s1,s1,-664 # 80007310 <_ZN3TCB7runningE>
    800035b0:	0004b783          	ld	a5,0(s1)
    800035b4:	0007b703          	ld	a4,0(a5)
    800035b8:	0287b503          	ld	a0,40(a5)
    800035bc:	000700e7          	jalr	a4
    running->setFinished(true);
    800035c0:	00100593          	li	a1,1
    800035c4:	0004b503          	ld	a0,0(s1)
    800035c8:	00000097          	auipc	ra,0x0
    800035cc:	ca4080e7          	jalr	-860(ra) # 8000326c <_ZN3TCB11setFinishedEb>
    TCB::yield();
    800035d0:	00000097          	auipc	ra,0x0
    800035d4:	f9c080e7          	jalr	-100(ra) # 8000356c <_ZN3TCB5yieldEv>
}
    800035d8:	01813083          	ld	ra,24(sp)
    800035dc:	01013403          	ld	s0,16(sp)
    800035e0:	00813483          	ld	s1,8(sp)
    800035e4:	02010113          	addi	sp,sp,32
    800035e8:	00008067          	ret

00000000800035ec <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800035ec:	fe010113          	addi	sp,sp,-32
    800035f0:	00113c23          	sd	ra,24(sp)
    800035f4:	00813823          	sd	s0,16(sp)
    800035f8:	00913423          	sd	s1,8(sp)
    800035fc:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80003600:	00004497          	auipc	s1,0x4
    80003604:	d104b483          	ld	s1,-752(s1) # 80007310 <_ZN3TCB7runningE>
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80003608:	0304b783          	ld	a5,48(s1)
    8000360c:	02078c63          	beqz	a5,80003644 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80003610:	00000097          	auipc	ra,0x0
    80003614:	9bc080e7          	jalr	-1604(ra) # 80002fcc <_ZN9Scheduler3getEv>
    80003618:	00004797          	auipc	a5,0x4
    8000361c:	cea7bc23          	sd	a0,-776(a5) # 80007310 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80003620:	01050593          	addi	a1,a0,16
    80003624:	01048513          	addi	a0,s1,16
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	c08080e7          	jalr	-1016(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80003630:	01813083          	ld	ra,24(sp)
    80003634:	01013403          	ld	s0,16(sp)
    80003638:	00813483          	ld	s1,8(sp)
    8000363c:	02010113          	addi	sp,sp,32
    80003640:	00008067          	ret
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80003644:	00048513          	mv	a0,s1
    80003648:	00000097          	auipc	ra,0x0
    8000364c:	c08080e7          	jalr	-1016(ra) # 80003250 <_ZNK3TCB10isFinishedEv>
    80003650:	fc0510e3          	bnez	a0,80003610 <_ZN3TCB8dispatchEv+0x24>
        Scheduler::put(old);
    80003654:	00048513          	mv	a0,s1
    80003658:	00000097          	auipc	ra,0x0
    8000365c:	9dc080e7          	jalr	-1572(ra) # 80003034 <_ZN9Scheduler3putEP3TCB>
    80003660:	fb1ff06f          	j	80003610 <_ZN3TCB8dispatchEv+0x24>

0000000080003664 <_Znwm>:
//#include "../lib/mem.h"


//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    80003664:	ff010113          	addi	sp,sp,-16
    80003668:	00113423          	sd	ra,8(sp)
    8000366c:	00813023          	sd	s0,0(sp)
    80003670:	01010413          	addi	s0,sp,16
    //return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
    return mem_alloc(n);
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	bd0080e7          	jalr	-1072(ra) # 80001244 <_Z9mem_allocm>
}
    8000367c:	00813083          	ld	ra,8(sp)
    80003680:	00013403          	ld	s0,0(sp)
    80003684:	01010113          	addi	sp,sp,16
    80003688:	00008067          	ret

000000008000368c <_Znam>:

void *operator new[](uint64 n){
    8000368c:	ff010113          	addi	sp,sp,-16
    80003690:	00113423          	sd	ra,8(sp)
    80003694:	00813023          	sd	s0,0(sp)
    80003698:	01010413          	addi	s0,sp,16
    //return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
    return mem_alloc(n);
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	ba8080e7          	jalr	-1112(ra) # 80001244 <_Z9mem_allocm>
}
    800036a4:	00813083          	ld	ra,8(sp)
    800036a8:	00013403          	ld	s0,0(sp)
    800036ac:	01010113          	addi	sp,sp,16
    800036b0:	00008067          	ret

00000000800036b4 <_ZdlPv>:

void operator delete(void *p) noexcept {
    800036b4:	ff010113          	addi	sp,sp,-16
    800036b8:	00113423          	sd	ra,8(sp)
    800036bc:	00813023          	sd	s0,0(sp)
    800036c0:	01010413          	addi	s0,sp,16
    //MemoryAllocation::mem_free(p);
    //__mem_free(p);
    mem_free(p);
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	bac080e7          	jalr	-1108(ra) # 80001270 <_Z8mem_freePv>
}
    800036cc:	00813083          	ld	ra,8(sp)
    800036d0:	00013403          	ld	s0,0(sp)
    800036d4:	01010113          	addi	sp,sp,16
    800036d8:	00008067          	ret

00000000800036dc <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    800036dc:	ff010113          	addi	sp,sp,-16
    800036e0:	00113423          	sd	ra,8(sp)
    800036e4:	00813023          	sd	s0,0(sp)
    800036e8:	01010413          	addi	s0,sp,16
    //MemoryAllocation::mem_free(p);
    //__mem_free(p);
    mem_free(p);
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	b84080e7          	jalr	-1148(ra) # 80001270 <_Z8mem_freePv>
}
    800036f4:	00813083          	ld	ra,8(sp)
    800036f8:	00013403          	ld	s0,0(sp)
    800036fc:	01010113          	addi	sp,sp,16
    80003700:	00008067          	ret

0000000080003704 <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    80003704:	ff010113          	addi	sp,sp,-16
    80003708:	00813423          	sd	s0,8(sp)
    8000370c:	01010413          	addi	s0,sp,16
    //mem_free(myHandle);//mozda cak i sizeof(Thread)
}
    80003710:	00813403          	ld	s0,8(sp)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret

000000008000371c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000371c:	ff010113          	addi	sp,sp,-16
    80003720:	00113423          	sd	ra,8(sp)
    80003724:	00813023          	sd	s0,0(sp)
    80003728:	01010413          	addi	s0,sp,16
}
    8000372c:	00000097          	auipc	ra,0x0
    80003730:	f88080e7          	jalr	-120(ra) # 800036b4 <_ZdlPv>
    80003734:	00813083          	ld	ra,8(sp)
    80003738:	00013403          	ld	s0,0(sp)
    8000373c:	01010113          	addi	sp,sp,16
    80003740:	00008067          	ret

0000000080003744 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr){ //todo nekako treba da inicijalizujes myHandle, nullptr mi sumnjiv
    80003744:	ff010113          	addi	sp,sp,-16
    80003748:	00113423          	sd	ra,8(sp)
    8000374c:	00813023          	sd	s0,0(sp)
    80003750:	01010413          	addi	s0,sp,16
    80003754:	00004797          	auipc	a5,0x4
    80003758:	acc78793          	addi	a5,a5,-1332 # 80007220 <_ZTV6Thread+0x10>
    8000375c:	00f53023          	sd	a5,0(a0)
    80003760:	00053423          	sd	zero,8(a0)
    thread_create_cpp_api(&myHandle, body, arg);
    80003764:	00850513          	addi	a0,a0,8
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	cd8080e7          	jalr	-808(ra) # 80001440 <_Z21thread_create_cpp_apiPP3TCBPFvPvES2_>
}
    80003770:	00813083          	ld	ra,8(sp)
    80003774:	00013403          	ld	s0,0(sp)
    80003778:	01010113          	addi	sp,sp,16
    8000377c:	00008067          	ret

0000000080003780 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003780:	ff010113          	addi	sp,sp,-16
    80003784:	00113423          	sd	ra,8(sp)
    80003788:	00813023          	sd	s0,0(sp)
    8000378c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003790:	ffffe097          	auipc	ra,0xffffe
    80003794:	b74080e7          	jalr	-1164(ra) # 80001304 <_Z15thread_dispatchv>
}
    80003798:	00813083          	ld	ra,8(sp)
    8000379c:	00013403          	ld	s0,0(sp)
    800037a0:	01010113          	addi	sp,sp,16
    800037a4:	00008067          	ret

00000000800037a8 <_ZN6Thread5startEv>:

int Thread::start() {
    800037a8:	fe010113          	addi	sp,sp,-32
    800037ac:	00113c23          	sd	ra,24(sp)
    800037b0:	00813823          	sd	s0,16(sp)
    800037b4:	00913423          	sd	s1,8(sp)
    800037b8:	02010413          	addi	s0,sp,32
    800037bc:	00050493          	mv	s1,a0
    printString("udje u start");
    800037c0:	00003517          	auipc	a0,0x3
    800037c4:	9a050513          	addi	a0,a0,-1632 # 80006160 <CONSOLE_STATUS+0x150>
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	9d4080e7          	jalr	-1580(ra) # 8000219c <_Z11printStringPKc>
    thread_start(&myHandle); //todo vrati na cast (thread_t*) ako ne bude radilo
    800037d0:	00848513          	addi	a0,s1,8
    800037d4:	ffffe097          	auipc	ra,0xffffe
    800037d8:	ca4080e7          	jalr	-860(ra) # 80001478 <_Z12thread_startPP3TCB>
    printString("izadje iz starta");
    800037dc:	00003517          	auipc	a0,0x3
    800037e0:	99450513          	addi	a0,a0,-1644 # 80006170 <CONSOLE_STATUS+0x160>
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	9b8080e7          	jalr	-1608(ra) # 8000219c <_Z11printStringPKc>
    return 0;
}
    800037ec:	00000513          	li	a0,0
    800037f0:	01813083          	ld	ra,24(sp)
    800037f4:	01013403          	ld	s0,16(sp)
    800037f8:	00813483          	ld	s1,8(sp)
    800037fc:	02010113          	addi	sp,sp,32
    80003800:	00008067          	ret

0000000080003804 <_ZN6Thread13threadWrapperEPv>:

void Thread::threadWrapper(void *arg) {
    80003804:	ff010113          	addi	sp,sp,-16
    80003808:	00113423          	sd	ra,8(sp)
    8000380c:	00813023          	sd	s0,0(sp)
    80003810:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80003814:	00053783          	ld	a5,0(a0)
    80003818:	0107b783          	ld	a5,16(a5)
    8000381c:	000780e7          	jalr	a5
}
    80003820:	00813083          	ld	ra,8(sp)
    80003824:	00013403          	ld	s0,0(sp)
    80003828:	01010113          	addi	sp,sp,16
    8000382c:	00008067          	ret

0000000080003830 <_ZN6Thread3runEv>:
        printString("pre wrappera");
        threadWrapper(this);
        printString("posle wrappera");
        Thread(threadWrapper, this); //todo mozda treba & ispred threadWrapper
    };
    virtual void run () {} //on ovde zabaguje potpuno
    80003830:	ff010113          	addi	sp,sp,-16
    80003834:	00813423          	sd	s0,8(sp)
    80003838:	01010413          	addi	s0,sp,16
    8000383c:	00813403          	ld	s0,8(sp)
    80003840:	01010113          	addi	sp,sp,16
    80003844:	00008067          	ret

0000000080003848 <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80003848:	ff010113          	addi	sp,sp,-16
    8000384c:	00813423          	sd	s0,8(sp)
    80003850:	01010413          	addi	s0,sp,16
    80003854:	00100793          	li	a5,1
    80003858:	00f50863          	beq	a0,a5,80003868 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000385c:	00813403          	ld	s0,8(sp)
    80003860:	01010113          	addi	sp,sp,16
    80003864:	00008067          	ret
    80003868:	000107b7          	lui	a5,0x10
    8000386c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003870:	fef596e3          	bne	a1,a5,8000385c <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80003874:	00004797          	auipc	a5,0x4
    80003878:	9cc7b783          	ld	a5,-1588(a5) # 80007240 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000387c:	0007b783          	ld	a5,0(a5)
    80003880:	00004717          	auipc	a4,0x4
    80003884:	aaf73023          	sd	a5,-1376(a4) # 80007320 <_ZN16MemoryAllocation9fmem_headE>
    80003888:	fd5ff06f          	j	8000385c <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000388c <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    8000388c:	ff010113          	addi	sp,sp,-16
    80003890:	00113423          	sd	ra,8(sp)
    80003894:	00813023          	sd	s0,0(sp)
    80003898:	01010413          	addi	s0,sp,16
    8000389c:	000105b7          	lui	a1,0x10
    800038a0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800038a4:	00100513          	li	a0,1
    800038a8:	00000097          	auipc	ra,0x0
    800038ac:	fa0080e7          	jalr	-96(ra) # 80003848 <_Z41__static_initialization_and_destruction_0ii>
    800038b0:	00813083          	ld	ra,8(sp)
    800038b4:	00013403          	ld	s0,0(sp)
    800038b8:	01010113          	addi	sp,sp,16
    800038bc:	00008067          	ret

00000000800038c0 <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"
//TODO PROMENI SVE BUFFER PUTC I GETC
Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800038c0:	fe010113          	addi	sp,sp,-32
    800038c4:	00113c23          	sd	ra,24(sp)
    800038c8:	00813823          	sd	s0,16(sp)
    800038cc:	00913423          	sd	s1,8(sp)
    800038d0:	01213023          	sd	s2,0(sp)
    800038d4:	02010413          	addi	s0,sp,32
    800038d8:	00050493          	mv	s1,a0
    800038dc:	00058913          	mv	s2,a1
    800038e0:	0015879b          	addiw	a5,a1,1
    800038e4:	0007851b          	sext.w	a0,a5
    800038e8:	00f4a023          	sw	a5,0(s1)
    800038ec:	0004a823          	sw	zero,16(s1)
    800038f0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800038f4:	00251513          	slli	a0,a0,0x2
    800038f8:	ffffe097          	auipc	ra,0xffffe
    800038fc:	94c080e7          	jalr	-1716(ra) # 80001244 <_Z9mem_allocm>
    80003900:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003904:	00000593          	li	a1,0
    80003908:	02048513          	addi	a0,s1,32
    8000390c:	ffffe097          	auipc	ra,0xffffe
    80003910:	a1c080e7          	jalr	-1508(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&spaceAvailable, _cap);
    80003914:	00090593          	mv	a1,s2
    80003918:	01848513          	addi	a0,s1,24
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	a0c080e7          	jalr	-1524(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexHead, 1);
    80003924:	00100593          	li	a1,1
    80003928:	02848513          	addi	a0,s1,40
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	9fc080e7          	jalr	-1540(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexTail, 1);
    80003934:	00100593          	li	a1,1
    80003938:	03048513          	addi	a0,s1,48
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	9ec080e7          	jalr	-1556(ra) # 80001328 <_Z8sem_openPP9semaphorej>
}
    80003944:	01813083          	ld	ra,24(sp)
    80003948:	01013403          	ld	s0,16(sp)
    8000394c:	00813483          	ld	s1,8(sp)
    80003950:	00013903          	ld	s2,0(sp)
    80003954:	02010113          	addi	sp,sp,32
    80003958:	00008067          	ret

000000008000395c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000395c:	fe010113          	addi	sp,sp,-32
    80003960:	00113c23          	sd	ra,24(sp)
    80003964:	00813823          	sd	s0,16(sp)
    80003968:	00913423          	sd	s1,8(sp)
    8000396c:	01213023          	sd	s2,0(sp)
    80003970:	02010413          	addi	s0,sp,32
    80003974:	00050493          	mv	s1,a0
    80003978:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000397c:	01853503          	ld	a0,24(a0)
    80003980:	ffffe097          	auipc	ra,0xffffe
    80003984:	a0c080e7          	jalr	-1524(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexTail);
    80003988:	0304b503          	ld	a0,48(s1)
    8000398c:	ffffe097          	auipc	ra,0xffffe
    80003990:	a00080e7          	jalr	-1536(ra) # 8000138c <_Z8sem_waitP9semaphore>
    buffer[tail] = val;
    80003994:	0084b783          	ld	a5,8(s1)
    80003998:	0144a703          	lw	a4,20(s1)
    8000399c:	00271713          	slli	a4,a4,0x2
    800039a0:	00e787b3          	add	a5,a5,a4
    800039a4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800039a8:	0144a783          	lw	a5,20(s1)
    800039ac:	0017879b          	addiw	a5,a5,1
    800039b0:	0004a703          	lw	a4,0(s1)
    800039b4:	02e7e7bb          	remw	a5,a5,a4
    800039b8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800039bc:	0304b503          	ld	a0,48(s1)
    800039c0:	ffffe097          	auipc	ra,0xffffe
    800039c4:	9fc080e7          	jalr	-1540(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(itemAvailable);
    800039c8:	0204b503          	ld	a0,32(s1)
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	9f0080e7          	jalr	-1552(ra) # 800013bc <_Z10sem_signalP9semaphore>

}
    800039d4:	01813083          	ld	ra,24(sp)
    800039d8:	01013403          	ld	s0,16(sp)
    800039dc:	00813483          	ld	s1,8(sp)
    800039e0:	00013903          	ld	s2,0(sp)
    800039e4:	02010113          	addi	sp,sp,32
    800039e8:	00008067          	ret

00000000800039ec <_ZN6Buffer3getEv>:

int Buffer::get() {
    800039ec:	fe010113          	addi	sp,sp,-32
    800039f0:	00113c23          	sd	ra,24(sp)
    800039f4:	00813823          	sd	s0,16(sp)
    800039f8:	00913423          	sd	s1,8(sp)
    800039fc:	01213023          	sd	s2,0(sp)
    80003a00:	02010413          	addi	s0,sp,32
    80003a04:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003a08:	02053503          	ld	a0,32(a0)
    80003a0c:	ffffe097          	auipc	ra,0xffffe
    80003a10:	980080e7          	jalr	-1664(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexHead);
    80003a14:	0284b503          	ld	a0,40(s1)
    80003a18:	ffffe097          	auipc	ra,0xffffe
    80003a1c:	974080e7          	jalr	-1676(ra) # 8000138c <_Z8sem_waitP9semaphore>

    int ret = buffer[head];
    80003a20:	0084b703          	ld	a4,8(s1)
    80003a24:	0104a783          	lw	a5,16(s1)
    80003a28:	00279693          	slli	a3,a5,0x2
    80003a2c:	00d70733          	add	a4,a4,a3
    80003a30:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003a34:	0017879b          	addiw	a5,a5,1
    80003a38:	0004a703          	lw	a4,0(s1)
    80003a3c:	02e7e7bb          	remw	a5,a5,a4
    80003a40:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003a44:	0284b503          	ld	a0,40(s1)
    80003a48:	ffffe097          	auipc	ra,0xffffe
    80003a4c:	974080e7          	jalr	-1676(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(spaceAvailable);
    80003a50:	0184b503          	ld	a0,24(s1)
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	968080e7          	jalr	-1688(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    80003a5c:	00090513          	mv	a0,s2
    80003a60:	01813083          	ld	ra,24(sp)
    80003a64:	01013403          	ld	s0,16(sp)
    80003a68:	00813483          	ld	s1,8(sp)
    80003a6c:	00013903          	ld	s2,0(sp)
    80003a70:	02010113          	addi	sp,sp,32
    80003a74:	00008067          	ret

0000000080003a78 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003a78:	fe010113          	addi	sp,sp,-32
    80003a7c:	00113c23          	sd	ra,24(sp)
    80003a80:	00813823          	sd	s0,16(sp)
    80003a84:	00913423          	sd	s1,8(sp)
    80003a88:	01213023          	sd	s2,0(sp)
    80003a8c:	02010413          	addi	s0,sp,32
    80003a90:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003a94:	02853503          	ld	a0,40(a0)
    80003a98:	ffffe097          	auipc	ra,0xffffe
    80003a9c:	8f4080e7          	jalr	-1804(ra) # 8000138c <_Z8sem_waitP9semaphore>
    sem_wait(mutexTail);
    80003aa0:	0304b503          	ld	a0,48(s1)
    80003aa4:	ffffe097          	auipc	ra,0xffffe
    80003aa8:	8e8080e7          	jalr	-1816(ra) # 8000138c <_Z8sem_waitP9semaphore>

    if (tail >= head) {
    80003aac:	0144a783          	lw	a5,20(s1)
    80003ab0:	0104a903          	lw	s2,16(s1)
    80003ab4:	0327ce63          	blt	a5,s2,80003af0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003ab8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003abc:	0304b503          	ld	a0,48(s1)
    80003ac0:	ffffe097          	auipc	ra,0xffffe
    80003ac4:	8fc080e7          	jalr	-1796(ra) # 800013bc <_Z10sem_signalP9semaphore>
    sem_signal(mutexHead);
    80003ac8:	0284b503          	ld	a0,40(s1)
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	8f0080e7          	jalr	-1808(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    80003ad4:	00090513          	mv	a0,s2
    80003ad8:	01813083          	ld	ra,24(sp)
    80003adc:	01013403          	ld	s0,16(sp)
    80003ae0:	00813483          	ld	s1,8(sp)
    80003ae4:	00013903          	ld	s2,0(sp)
    80003ae8:	02010113          	addi	sp,sp,32
    80003aec:	00008067          	ret
        ret = cap - head + tail;
    80003af0:	0004a703          	lw	a4,0(s1)
    80003af4:	4127093b          	subw	s2,a4,s2
    80003af8:	00f9093b          	addw	s2,s2,a5
    80003afc:	fc1ff06f          	j	80003abc <_ZN6Buffer6getCntEv+0x44>

0000000080003b00 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003b00:	fe010113          	addi	sp,sp,-32
    80003b04:	00113c23          	sd	ra,24(sp)
    80003b08:	00813823          	sd	s0,16(sp)
    80003b0c:	00913423          	sd	s1,8(sp)
    80003b10:	02010413          	addi	s0,sp,32
    80003b14:	00050493          	mv	s1,a0
    putc('\n');
    80003b18:	00a00513          	li	a0,10
    80003b1c:	ffffe097          	auipc	ra,0xffffe
    80003b20:	8fc080e7          	jalr	-1796(ra) # 80001418 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003b24:	00002517          	auipc	a0,0x2
    80003b28:	66450513          	addi	a0,a0,1636 # 80006188 <CONSOLE_STATUS+0x178>
    80003b2c:	ffffe097          	auipc	ra,0xffffe
    80003b30:	670080e7          	jalr	1648(ra) # 8000219c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003b34:	00048513          	mv	a0,s1
    80003b38:	00000097          	auipc	ra,0x0
    80003b3c:	f40080e7          	jalr	-192(ra) # 80003a78 <_ZN6Buffer6getCntEv>
    80003b40:	02a05c63          	blez	a0,80003b78 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003b44:	0084b783          	ld	a5,8(s1)
    80003b48:	0104a703          	lw	a4,16(s1)
    80003b4c:	00271713          	slli	a4,a4,0x2
    80003b50:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003b54:	0007c503          	lbu	a0,0(a5)
    80003b58:	ffffe097          	auipc	ra,0xffffe
    80003b5c:	8c0080e7          	jalr	-1856(ra) # 80001418 <_Z4putcc>
        head = (head + 1) % cap;
    80003b60:	0104a783          	lw	a5,16(s1)
    80003b64:	0017879b          	addiw	a5,a5,1
    80003b68:	0004a703          	lw	a4,0(s1)
    80003b6c:	02e7e7bb          	remw	a5,a5,a4
    80003b70:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003b74:	fc1ff06f          	j	80003b34 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003b78:	02100513          	li	a0,33
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	89c080e7          	jalr	-1892(ra) # 80001418 <_Z4putcc>
    putc('\n');
    80003b84:	00a00513          	li	a0,10
    80003b88:	ffffe097          	auipc	ra,0xffffe
    80003b8c:	890080e7          	jalr	-1904(ra) # 80001418 <_Z4putcc>
    mem_free(buffer);
    80003b90:	0084b503          	ld	a0,8(s1)
    80003b94:	ffffd097          	auipc	ra,0xffffd
    80003b98:	6dc080e7          	jalr	1756(ra) # 80001270 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003b9c:	0204b503          	ld	a0,32(s1)
    80003ba0:	ffffd097          	auipc	ra,0xffffd
    80003ba4:	7bc080e7          	jalr	1980(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(spaceAvailable);
    80003ba8:	0184b503          	ld	a0,24(s1)
    80003bac:	ffffd097          	auipc	ra,0xffffd
    80003bb0:	7b0080e7          	jalr	1968(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexTail);
    80003bb4:	0304b503          	ld	a0,48(s1)
    80003bb8:	ffffd097          	auipc	ra,0xffffd
    80003bbc:	7a4080e7          	jalr	1956(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexHead);
    80003bc0:	0284b503          	ld	a0,40(s1)
    80003bc4:	ffffd097          	auipc	ra,0xffffd
    80003bc8:	798080e7          	jalr	1944(ra) # 8000135c <_Z9sem_closeP9semaphore>
}
    80003bcc:	01813083          	ld	ra,24(sp)
    80003bd0:	01013403          	ld	s0,16(sp)
    80003bd4:	00813483          	ld	s1,8(sp)
    80003bd8:	02010113          	addi	sp,sp,32
    80003bdc:	00008067          	ret

0000000080003be0 <start>:
    80003be0:	ff010113          	addi	sp,sp,-16
    80003be4:	00813423          	sd	s0,8(sp)
    80003be8:	01010413          	addi	s0,sp,16
    80003bec:	300027f3          	csrr	a5,mstatus
    80003bf0:	ffffe737          	lui	a4,0xffffe
    80003bf4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff626f>
    80003bf8:	00e7f7b3          	and	a5,a5,a4
    80003bfc:	00001737          	lui	a4,0x1
    80003c00:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003c04:	00e7e7b3          	or	a5,a5,a4
    80003c08:	30079073          	csrw	mstatus,a5
    80003c0c:	00000797          	auipc	a5,0x0
    80003c10:	16078793          	addi	a5,a5,352 # 80003d6c <system_main>
    80003c14:	34179073          	csrw	mepc,a5
    80003c18:	00000793          	li	a5,0
    80003c1c:	18079073          	csrw	satp,a5
    80003c20:	000107b7          	lui	a5,0x10
    80003c24:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003c28:	30279073          	csrw	medeleg,a5
    80003c2c:	30379073          	csrw	mideleg,a5
    80003c30:	104027f3          	csrr	a5,sie
    80003c34:	2227e793          	ori	a5,a5,546
    80003c38:	10479073          	csrw	sie,a5
    80003c3c:	fff00793          	li	a5,-1
    80003c40:	00a7d793          	srli	a5,a5,0xa
    80003c44:	3b079073          	csrw	pmpaddr0,a5
    80003c48:	00f00793          	li	a5,15
    80003c4c:	3a079073          	csrw	pmpcfg0,a5
    80003c50:	f14027f3          	csrr	a5,mhartid
    80003c54:	0200c737          	lui	a4,0x200c
    80003c58:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003c5c:	0007869b          	sext.w	a3,a5
    80003c60:	00269713          	slli	a4,a3,0x2
    80003c64:	000f4637          	lui	a2,0xf4
    80003c68:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003c6c:	00d70733          	add	a4,a4,a3
    80003c70:	0037979b          	slliw	a5,a5,0x3
    80003c74:	020046b7          	lui	a3,0x2004
    80003c78:	00d787b3          	add	a5,a5,a3
    80003c7c:	00c585b3          	add	a1,a1,a2
    80003c80:	00371693          	slli	a3,a4,0x3
    80003c84:	00003717          	auipc	a4,0x3
    80003c88:	6ac70713          	addi	a4,a4,1708 # 80007330 <timer_scratch>
    80003c8c:	00b7b023          	sd	a1,0(a5)
    80003c90:	00d70733          	add	a4,a4,a3
    80003c94:	00f73c23          	sd	a5,24(a4)
    80003c98:	02c73023          	sd	a2,32(a4)
    80003c9c:	34071073          	csrw	mscratch,a4
    80003ca0:	00000797          	auipc	a5,0x0
    80003ca4:	6e078793          	addi	a5,a5,1760 # 80004380 <timervec>
    80003ca8:	30579073          	csrw	mtvec,a5
    80003cac:	300027f3          	csrr	a5,mstatus
    80003cb0:	0087e793          	ori	a5,a5,8
    80003cb4:	30079073          	csrw	mstatus,a5
    80003cb8:	304027f3          	csrr	a5,mie
    80003cbc:	0807e793          	ori	a5,a5,128
    80003cc0:	30479073          	csrw	mie,a5
    80003cc4:	f14027f3          	csrr	a5,mhartid
    80003cc8:	0007879b          	sext.w	a5,a5
    80003ccc:	00078213          	mv	tp,a5
    80003cd0:	30200073          	mret
    80003cd4:	00813403          	ld	s0,8(sp)
    80003cd8:	01010113          	addi	sp,sp,16
    80003cdc:	00008067          	ret

0000000080003ce0 <timerinit>:
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00813423          	sd	s0,8(sp)
    80003ce8:	01010413          	addi	s0,sp,16
    80003cec:	f14027f3          	csrr	a5,mhartid
    80003cf0:	0200c737          	lui	a4,0x200c
    80003cf4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003cf8:	0007869b          	sext.w	a3,a5
    80003cfc:	00269713          	slli	a4,a3,0x2
    80003d00:	000f4637          	lui	a2,0xf4
    80003d04:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003d08:	00d70733          	add	a4,a4,a3
    80003d0c:	0037979b          	slliw	a5,a5,0x3
    80003d10:	020046b7          	lui	a3,0x2004
    80003d14:	00d787b3          	add	a5,a5,a3
    80003d18:	00c585b3          	add	a1,a1,a2
    80003d1c:	00371693          	slli	a3,a4,0x3
    80003d20:	00003717          	auipc	a4,0x3
    80003d24:	61070713          	addi	a4,a4,1552 # 80007330 <timer_scratch>
    80003d28:	00b7b023          	sd	a1,0(a5)
    80003d2c:	00d70733          	add	a4,a4,a3
    80003d30:	00f73c23          	sd	a5,24(a4)
    80003d34:	02c73023          	sd	a2,32(a4)
    80003d38:	34071073          	csrw	mscratch,a4
    80003d3c:	00000797          	auipc	a5,0x0
    80003d40:	64478793          	addi	a5,a5,1604 # 80004380 <timervec>
    80003d44:	30579073          	csrw	mtvec,a5
    80003d48:	300027f3          	csrr	a5,mstatus
    80003d4c:	0087e793          	ori	a5,a5,8
    80003d50:	30079073          	csrw	mstatus,a5
    80003d54:	304027f3          	csrr	a5,mie
    80003d58:	0807e793          	ori	a5,a5,128
    80003d5c:	30479073          	csrw	mie,a5
    80003d60:	00813403          	ld	s0,8(sp)
    80003d64:	01010113          	addi	sp,sp,16
    80003d68:	00008067          	ret

0000000080003d6c <system_main>:
    80003d6c:	fe010113          	addi	sp,sp,-32
    80003d70:	00813823          	sd	s0,16(sp)
    80003d74:	00913423          	sd	s1,8(sp)
    80003d78:	00113c23          	sd	ra,24(sp)
    80003d7c:	02010413          	addi	s0,sp,32
    80003d80:	00000097          	auipc	ra,0x0
    80003d84:	0c4080e7          	jalr	196(ra) # 80003e44 <cpuid>
    80003d88:	00003497          	auipc	s1,0x3
    80003d8c:	52848493          	addi	s1,s1,1320 # 800072b0 <started>
    80003d90:	02050263          	beqz	a0,80003db4 <system_main+0x48>
    80003d94:	0004a783          	lw	a5,0(s1)
    80003d98:	0007879b          	sext.w	a5,a5
    80003d9c:	fe078ce3          	beqz	a5,80003d94 <system_main+0x28>
    80003da0:	0ff0000f          	fence
    80003da4:	00002517          	auipc	a0,0x2
    80003da8:	42c50513          	addi	a0,a0,1068 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	a70080e7          	jalr	-1424(ra) # 8000481c <panic>
    80003db4:	00001097          	auipc	ra,0x1
    80003db8:	9c4080e7          	jalr	-1596(ra) # 80004778 <consoleinit>
    80003dbc:	00001097          	auipc	ra,0x1
    80003dc0:	150080e7          	jalr	336(ra) # 80004f0c <printfinit>
    80003dc4:	00002517          	auipc	a0,0x2
    80003dc8:	4ec50513          	addi	a0,a0,1260 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80003dcc:	00001097          	auipc	ra,0x1
    80003dd0:	aac080e7          	jalr	-1364(ra) # 80004878 <__printf>
    80003dd4:	00002517          	auipc	a0,0x2
    80003dd8:	3cc50513          	addi	a0,a0,972 # 800061a0 <CONSOLE_STATUS+0x190>
    80003ddc:	00001097          	auipc	ra,0x1
    80003de0:	a9c080e7          	jalr	-1380(ra) # 80004878 <__printf>
    80003de4:	00002517          	auipc	a0,0x2
    80003de8:	4cc50513          	addi	a0,a0,1228 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80003dec:	00001097          	auipc	ra,0x1
    80003df0:	a8c080e7          	jalr	-1396(ra) # 80004878 <__printf>
    80003df4:	00001097          	auipc	ra,0x1
    80003df8:	4a4080e7          	jalr	1188(ra) # 80005298 <kinit>
    80003dfc:	00000097          	auipc	ra,0x0
    80003e00:	148080e7          	jalr	328(ra) # 80003f44 <trapinit>
    80003e04:	00000097          	auipc	ra,0x0
    80003e08:	16c080e7          	jalr	364(ra) # 80003f70 <trapinithart>
    80003e0c:	00000097          	auipc	ra,0x0
    80003e10:	5b4080e7          	jalr	1460(ra) # 800043c0 <plicinit>
    80003e14:	00000097          	auipc	ra,0x0
    80003e18:	5d4080e7          	jalr	1492(ra) # 800043e8 <plicinithart>
    80003e1c:	00000097          	auipc	ra,0x0
    80003e20:	078080e7          	jalr	120(ra) # 80003e94 <userinit>
    80003e24:	0ff0000f          	fence
    80003e28:	00100793          	li	a5,1
    80003e2c:	00002517          	auipc	a0,0x2
    80003e30:	38c50513          	addi	a0,a0,908 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80003e34:	00f4a023          	sw	a5,0(s1)
    80003e38:	00001097          	auipc	ra,0x1
    80003e3c:	a40080e7          	jalr	-1472(ra) # 80004878 <__printf>
    80003e40:	0000006f          	j	80003e40 <system_main+0xd4>

0000000080003e44 <cpuid>:
    80003e44:	ff010113          	addi	sp,sp,-16
    80003e48:	00813423          	sd	s0,8(sp)
    80003e4c:	01010413          	addi	s0,sp,16
    80003e50:	00020513          	mv	a0,tp
    80003e54:	00813403          	ld	s0,8(sp)
    80003e58:	0005051b          	sext.w	a0,a0
    80003e5c:	01010113          	addi	sp,sp,16
    80003e60:	00008067          	ret

0000000080003e64 <mycpu>:
    80003e64:	ff010113          	addi	sp,sp,-16
    80003e68:	00813423          	sd	s0,8(sp)
    80003e6c:	01010413          	addi	s0,sp,16
    80003e70:	00020793          	mv	a5,tp
    80003e74:	00813403          	ld	s0,8(sp)
    80003e78:	0007879b          	sext.w	a5,a5
    80003e7c:	00779793          	slli	a5,a5,0x7
    80003e80:	00004517          	auipc	a0,0x4
    80003e84:	4e050513          	addi	a0,a0,1248 # 80008360 <cpus>
    80003e88:	00f50533          	add	a0,a0,a5
    80003e8c:	01010113          	addi	sp,sp,16
    80003e90:	00008067          	ret

0000000080003e94 <userinit>:
    80003e94:	ff010113          	addi	sp,sp,-16
    80003e98:	00813423          	sd	s0,8(sp)
    80003e9c:	01010413          	addi	s0,sp,16
    80003ea0:	00813403          	ld	s0,8(sp)
    80003ea4:	01010113          	addi	sp,sp,16
    80003ea8:	fffff317          	auipc	t1,0xfffff
    80003eac:	30030067          	jr	768(t1) # 800031a8 <main>

0000000080003eb0 <either_copyout>:
    80003eb0:	ff010113          	addi	sp,sp,-16
    80003eb4:	00813023          	sd	s0,0(sp)
    80003eb8:	00113423          	sd	ra,8(sp)
    80003ebc:	01010413          	addi	s0,sp,16
    80003ec0:	02051663          	bnez	a0,80003eec <either_copyout+0x3c>
    80003ec4:	00058513          	mv	a0,a1
    80003ec8:	00060593          	mv	a1,a2
    80003ecc:	0006861b          	sext.w	a2,a3
    80003ed0:	00002097          	auipc	ra,0x2
    80003ed4:	c54080e7          	jalr	-940(ra) # 80005b24 <__memmove>
    80003ed8:	00813083          	ld	ra,8(sp)
    80003edc:	00013403          	ld	s0,0(sp)
    80003ee0:	00000513          	li	a0,0
    80003ee4:	01010113          	addi	sp,sp,16
    80003ee8:	00008067          	ret
    80003eec:	00002517          	auipc	a0,0x2
    80003ef0:	30c50513          	addi	a0,a0,780 # 800061f8 <CONSOLE_STATUS+0x1e8>
    80003ef4:	00001097          	auipc	ra,0x1
    80003ef8:	928080e7          	jalr	-1752(ra) # 8000481c <panic>

0000000080003efc <either_copyin>:
    80003efc:	ff010113          	addi	sp,sp,-16
    80003f00:	00813023          	sd	s0,0(sp)
    80003f04:	00113423          	sd	ra,8(sp)
    80003f08:	01010413          	addi	s0,sp,16
    80003f0c:	02059463          	bnez	a1,80003f34 <either_copyin+0x38>
    80003f10:	00060593          	mv	a1,a2
    80003f14:	0006861b          	sext.w	a2,a3
    80003f18:	00002097          	auipc	ra,0x2
    80003f1c:	c0c080e7          	jalr	-1012(ra) # 80005b24 <__memmove>
    80003f20:	00813083          	ld	ra,8(sp)
    80003f24:	00013403          	ld	s0,0(sp)
    80003f28:	00000513          	li	a0,0
    80003f2c:	01010113          	addi	sp,sp,16
    80003f30:	00008067          	ret
    80003f34:	00002517          	auipc	a0,0x2
    80003f38:	2ec50513          	addi	a0,a0,748 # 80006220 <CONSOLE_STATUS+0x210>
    80003f3c:	00001097          	auipc	ra,0x1
    80003f40:	8e0080e7          	jalr	-1824(ra) # 8000481c <panic>

0000000080003f44 <trapinit>:
    80003f44:	ff010113          	addi	sp,sp,-16
    80003f48:	00813423          	sd	s0,8(sp)
    80003f4c:	01010413          	addi	s0,sp,16
    80003f50:	00813403          	ld	s0,8(sp)
    80003f54:	00002597          	auipc	a1,0x2
    80003f58:	2f458593          	addi	a1,a1,756 # 80006248 <CONSOLE_STATUS+0x238>
    80003f5c:	00004517          	auipc	a0,0x4
    80003f60:	48450513          	addi	a0,a0,1156 # 800083e0 <tickslock>
    80003f64:	01010113          	addi	sp,sp,16
    80003f68:	00001317          	auipc	t1,0x1
    80003f6c:	5c030067          	jr	1472(t1) # 80005528 <initlock>

0000000080003f70 <trapinithart>:
    80003f70:	ff010113          	addi	sp,sp,-16
    80003f74:	00813423          	sd	s0,8(sp)
    80003f78:	01010413          	addi	s0,sp,16
    80003f7c:	00000797          	auipc	a5,0x0
    80003f80:	2f478793          	addi	a5,a5,756 # 80004270 <kernelvec>
    80003f84:	10579073          	csrw	stvec,a5
    80003f88:	00813403          	ld	s0,8(sp)
    80003f8c:	01010113          	addi	sp,sp,16
    80003f90:	00008067          	ret

0000000080003f94 <usertrap>:
    80003f94:	ff010113          	addi	sp,sp,-16
    80003f98:	00813423          	sd	s0,8(sp)
    80003f9c:	01010413          	addi	s0,sp,16
    80003fa0:	00813403          	ld	s0,8(sp)
    80003fa4:	01010113          	addi	sp,sp,16
    80003fa8:	00008067          	ret

0000000080003fac <usertrapret>:
    80003fac:	ff010113          	addi	sp,sp,-16
    80003fb0:	00813423          	sd	s0,8(sp)
    80003fb4:	01010413          	addi	s0,sp,16
    80003fb8:	00813403          	ld	s0,8(sp)
    80003fbc:	01010113          	addi	sp,sp,16
    80003fc0:	00008067          	ret

0000000080003fc4 <kerneltrap>:
    80003fc4:	fe010113          	addi	sp,sp,-32
    80003fc8:	00813823          	sd	s0,16(sp)
    80003fcc:	00113c23          	sd	ra,24(sp)
    80003fd0:	00913423          	sd	s1,8(sp)
    80003fd4:	02010413          	addi	s0,sp,32
    80003fd8:	142025f3          	csrr	a1,scause
    80003fdc:	100027f3          	csrr	a5,sstatus
    80003fe0:	0027f793          	andi	a5,a5,2
    80003fe4:	10079c63          	bnez	a5,800040fc <kerneltrap+0x138>
    80003fe8:	142027f3          	csrr	a5,scause
    80003fec:	0207ce63          	bltz	a5,80004028 <kerneltrap+0x64>
    80003ff0:	00002517          	auipc	a0,0x2
    80003ff4:	2a050513          	addi	a0,a0,672 # 80006290 <CONSOLE_STATUS+0x280>
    80003ff8:	00001097          	auipc	ra,0x1
    80003ffc:	880080e7          	jalr	-1920(ra) # 80004878 <__printf>
    80004000:	141025f3          	csrr	a1,sepc
    80004004:	14302673          	csrr	a2,stval
    80004008:	00002517          	auipc	a0,0x2
    8000400c:	29850513          	addi	a0,a0,664 # 800062a0 <CONSOLE_STATUS+0x290>
    80004010:	00001097          	auipc	ra,0x1
    80004014:	868080e7          	jalr	-1944(ra) # 80004878 <__printf>
    80004018:	00002517          	auipc	a0,0x2
    8000401c:	2a050513          	addi	a0,a0,672 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80004020:	00000097          	auipc	ra,0x0
    80004024:	7fc080e7          	jalr	2044(ra) # 8000481c <panic>
    80004028:	0ff7f713          	andi	a4,a5,255
    8000402c:	00900693          	li	a3,9
    80004030:	04d70063          	beq	a4,a3,80004070 <kerneltrap+0xac>
    80004034:	fff00713          	li	a4,-1
    80004038:	03f71713          	slli	a4,a4,0x3f
    8000403c:	00170713          	addi	a4,a4,1
    80004040:	fae798e3          	bne	a5,a4,80003ff0 <kerneltrap+0x2c>
    80004044:	00000097          	auipc	ra,0x0
    80004048:	e00080e7          	jalr	-512(ra) # 80003e44 <cpuid>
    8000404c:	06050663          	beqz	a0,800040b8 <kerneltrap+0xf4>
    80004050:	144027f3          	csrr	a5,sip
    80004054:	ffd7f793          	andi	a5,a5,-3
    80004058:	14479073          	csrw	sip,a5
    8000405c:	01813083          	ld	ra,24(sp)
    80004060:	01013403          	ld	s0,16(sp)
    80004064:	00813483          	ld	s1,8(sp)
    80004068:	02010113          	addi	sp,sp,32
    8000406c:	00008067          	ret
    80004070:	00000097          	auipc	ra,0x0
    80004074:	3c4080e7          	jalr	964(ra) # 80004434 <plic_claim>
    80004078:	00a00793          	li	a5,10
    8000407c:	00050493          	mv	s1,a0
    80004080:	06f50863          	beq	a0,a5,800040f0 <kerneltrap+0x12c>
    80004084:	fc050ce3          	beqz	a0,8000405c <kerneltrap+0x98>
    80004088:	00050593          	mv	a1,a0
    8000408c:	00002517          	auipc	a0,0x2
    80004090:	1e450513          	addi	a0,a0,484 # 80006270 <CONSOLE_STATUS+0x260>
    80004094:	00000097          	auipc	ra,0x0
    80004098:	7e4080e7          	jalr	2020(ra) # 80004878 <__printf>
    8000409c:	01013403          	ld	s0,16(sp)
    800040a0:	01813083          	ld	ra,24(sp)
    800040a4:	00048513          	mv	a0,s1
    800040a8:	00813483          	ld	s1,8(sp)
    800040ac:	02010113          	addi	sp,sp,32
    800040b0:	00000317          	auipc	t1,0x0
    800040b4:	3bc30067          	jr	956(t1) # 8000446c <plic_complete>
    800040b8:	00004517          	auipc	a0,0x4
    800040bc:	32850513          	addi	a0,a0,808 # 800083e0 <tickslock>
    800040c0:	00001097          	auipc	ra,0x1
    800040c4:	48c080e7          	jalr	1164(ra) # 8000554c <acquire>
    800040c8:	00003717          	auipc	a4,0x3
    800040cc:	1ec70713          	addi	a4,a4,492 # 800072b4 <ticks>
    800040d0:	00072783          	lw	a5,0(a4)
    800040d4:	00004517          	auipc	a0,0x4
    800040d8:	30c50513          	addi	a0,a0,780 # 800083e0 <tickslock>
    800040dc:	0017879b          	addiw	a5,a5,1
    800040e0:	00f72023          	sw	a5,0(a4)
    800040e4:	00001097          	auipc	ra,0x1
    800040e8:	534080e7          	jalr	1332(ra) # 80005618 <release>
    800040ec:	f65ff06f          	j	80004050 <kerneltrap+0x8c>
    800040f0:	00001097          	auipc	ra,0x1
    800040f4:	090080e7          	jalr	144(ra) # 80005180 <uartintr>
    800040f8:	fa5ff06f          	j	8000409c <kerneltrap+0xd8>
    800040fc:	00002517          	auipc	a0,0x2
    80004100:	15450513          	addi	a0,a0,340 # 80006250 <CONSOLE_STATUS+0x240>
    80004104:	00000097          	auipc	ra,0x0
    80004108:	718080e7          	jalr	1816(ra) # 8000481c <panic>

000000008000410c <clockintr>:
    8000410c:	fe010113          	addi	sp,sp,-32
    80004110:	00813823          	sd	s0,16(sp)
    80004114:	00913423          	sd	s1,8(sp)
    80004118:	00113c23          	sd	ra,24(sp)
    8000411c:	02010413          	addi	s0,sp,32
    80004120:	00004497          	auipc	s1,0x4
    80004124:	2c048493          	addi	s1,s1,704 # 800083e0 <tickslock>
    80004128:	00048513          	mv	a0,s1
    8000412c:	00001097          	auipc	ra,0x1
    80004130:	420080e7          	jalr	1056(ra) # 8000554c <acquire>
    80004134:	00003717          	auipc	a4,0x3
    80004138:	18070713          	addi	a4,a4,384 # 800072b4 <ticks>
    8000413c:	00072783          	lw	a5,0(a4)
    80004140:	01013403          	ld	s0,16(sp)
    80004144:	01813083          	ld	ra,24(sp)
    80004148:	00048513          	mv	a0,s1
    8000414c:	0017879b          	addiw	a5,a5,1
    80004150:	00813483          	ld	s1,8(sp)
    80004154:	00f72023          	sw	a5,0(a4)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00001317          	auipc	t1,0x1
    80004160:	4bc30067          	jr	1212(t1) # 80005618 <release>

0000000080004164 <devintr>:
    80004164:	142027f3          	csrr	a5,scause
    80004168:	00000513          	li	a0,0
    8000416c:	0007c463          	bltz	a5,80004174 <devintr+0x10>
    80004170:	00008067          	ret
    80004174:	fe010113          	addi	sp,sp,-32
    80004178:	00813823          	sd	s0,16(sp)
    8000417c:	00113c23          	sd	ra,24(sp)
    80004180:	00913423          	sd	s1,8(sp)
    80004184:	02010413          	addi	s0,sp,32
    80004188:	0ff7f713          	andi	a4,a5,255
    8000418c:	00900693          	li	a3,9
    80004190:	04d70c63          	beq	a4,a3,800041e8 <devintr+0x84>
    80004194:	fff00713          	li	a4,-1
    80004198:	03f71713          	slli	a4,a4,0x3f
    8000419c:	00170713          	addi	a4,a4,1
    800041a0:	00e78c63          	beq	a5,a4,800041b8 <devintr+0x54>
    800041a4:	01813083          	ld	ra,24(sp)
    800041a8:	01013403          	ld	s0,16(sp)
    800041ac:	00813483          	ld	s1,8(sp)
    800041b0:	02010113          	addi	sp,sp,32
    800041b4:	00008067          	ret
    800041b8:	00000097          	auipc	ra,0x0
    800041bc:	c8c080e7          	jalr	-884(ra) # 80003e44 <cpuid>
    800041c0:	06050663          	beqz	a0,8000422c <devintr+0xc8>
    800041c4:	144027f3          	csrr	a5,sip
    800041c8:	ffd7f793          	andi	a5,a5,-3
    800041cc:	14479073          	csrw	sip,a5
    800041d0:	01813083          	ld	ra,24(sp)
    800041d4:	01013403          	ld	s0,16(sp)
    800041d8:	00813483          	ld	s1,8(sp)
    800041dc:	00200513          	li	a0,2
    800041e0:	02010113          	addi	sp,sp,32
    800041e4:	00008067          	ret
    800041e8:	00000097          	auipc	ra,0x0
    800041ec:	24c080e7          	jalr	588(ra) # 80004434 <plic_claim>
    800041f0:	00a00793          	li	a5,10
    800041f4:	00050493          	mv	s1,a0
    800041f8:	06f50663          	beq	a0,a5,80004264 <devintr+0x100>
    800041fc:	00100513          	li	a0,1
    80004200:	fa0482e3          	beqz	s1,800041a4 <devintr+0x40>
    80004204:	00048593          	mv	a1,s1
    80004208:	00002517          	auipc	a0,0x2
    8000420c:	06850513          	addi	a0,a0,104 # 80006270 <CONSOLE_STATUS+0x260>
    80004210:	00000097          	auipc	ra,0x0
    80004214:	668080e7          	jalr	1640(ra) # 80004878 <__printf>
    80004218:	00048513          	mv	a0,s1
    8000421c:	00000097          	auipc	ra,0x0
    80004220:	250080e7          	jalr	592(ra) # 8000446c <plic_complete>
    80004224:	00100513          	li	a0,1
    80004228:	f7dff06f          	j	800041a4 <devintr+0x40>
    8000422c:	00004517          	auipc	a0,0x4
    80004230:	1b450513          	addi	a0,a0,436 # 800083e0 <tickslock>
    80004234:	00001097          	auipc	ra,0x1
    80004238:	318080e7          	jalr	792(ra) # 8000554c <acquire>
    8000423c:	00003717          	auipc	a4,0x3
    80004240:	07870713          	addi	a4,a4,120 # 800072b4 <ticks>
    80004244:	00072783          	lw	a5,0(a4)
    80004248:	00004517          	auipc	a0,0x4
    8000424c:	19850513          	addi	a0,a0,408 # 800083e0 <tickslock>
    80004250:	0017879b          	addiw	a5,a5,1
    80004254:	00f72023          	sw	a5,0(a4)
    80004258:	00001097          	auipc	ra,0x1
    8000425c:	3c0080e7          	jalr	960(ra) # 80005618 <release>
    80004260:	f65ff06f          	j	800041c4 <devintr+0x60>
    80004264:	00001097          	auipc	ra,0x1
    80004268:	f1c080e7          	jalr	-228(ra) # 80005180 <uartintr>
    8000426c:	fadff06f          	j	80004218 <devintr+0xb4>

0000000080004270 <kernelvec>:
    80004270:	f0010113          	addi	sp,sp,-256
    80004274:	00113023          	sd	ra,0(sp)
    80004278:	00213423          	sd	sp,8(sp)
    8000427c:	00313823          	sd	gp,16(sp)
    80004280:	00413c23          	sd	tp,24(sp)
    80004284:	02513023          	sd	t0,32(sp)
    80004288:	02613423          	sd	t1,40(sp)
    8000428c:	02713823          	sd	t2,48(sp)
    80004290:	02813c23          	sd	s0,56(sp)
    80004294:	04913023          	sd	s1,64(sp)
    80004298:	04a13423          	sd	a0,72(sp)
    8000429c:	04b13823          	sd	a1,80(sp)
    800042a0:	04c13c23          	sd	a2,88(sp)
    800042a4:	06d13023          	sd	a3,96(sp)
    800042a8:	06e13423          	sd	a4,104(sp)
    800042ac:	06f13823          	sd	a5,112(sp)
    800042b0:	07013c23          	sd	a6,120(sp)
    800042b4:	09113023          	sd	a7,128(sp)
    800042b8:	09213423          	sd	s2,136(sp)
    800042bc:	09313823          	sd	s3,144(sp)
    800042c0:	09413c23          	sd	s4,152(sp)
    800042c4:	0b513023          	sd	s5,160(sp)
    800042c8:	0b613423          	sd	s6,168(sp)
    800042cc:	0b713823          	sd	s7,176(sp)
    800042d0:	0b813c23          	sd	s8,184(sp)
    800042d4:	0d913023          	sd	s9,192(sp)
    800042d8:	0da13423          	sd	s10,200(sp)
    800042dc:	0db13823          	sd	s11,208(sp)
    800042e0:	0dc13c23          	sd	t3,216(sp)
    800042e4:	0fd13023          	sd	t4,224(sp)
    800042e8:	0fe13423          	sd	t5,232(sp)
    800042ec:	0ff13823          	sd	t6,240(sp)
    800042f0:	cd5ff0ef          	jal	ra,80003fc4 <kerneltrap>
    800042f4:	00013083          	ld	ra,0(sp)
    800042f8:	00813103          	ld	sp,8(sp)
    800042fc:	01013183          	ld	gp,16(sp)
    80004300:	02013283          	ld	t0,32(sp)
    80004304:	02813303          	ld	t1,40(sp)
    80004308:	03013383          	ld	t2,48(sp)
    8000430c:	03813403          	ld	s0,56(sp)
    80004310:	04013483          	ld	s1,64(sp)
    80004314:	04813503          	ld	a0,72(sp)
    80004318:	05013583          	ld	a1,80(sp)
    8000431c:	05813603          	ld	a2,88(sp)
    80004320:	06013683          	ld	a3,96(sp)
    80004324:	06813703          	ld	a4,104(sp)
    80004328:	07013783          	ld	a5,112(sp)
    8000432c:	07813803          	ld	a6,120(sp)
    80004330:	08013883          	ld	a7,128(sp)
    80004334:	08813903          	ld	s2,136(sp)
    80004338:	09013983          	ld	s3,144(sp)
    8000433c:	09813a03          	ld	s4,152(sp)
    80004340:	0a013a83          	ld	s5,160(sp)
    80004344:	0a813b03          	ld	s6,168(sp)
    80004348:	0b013b83          	ld	s7,176(sp)
    8000434c:	0b813c03          	ld	s8,184(sp)
    80004350:	0c013c83          	ld	s9,192(sp)
    80004354:	0c813d03          	ld	s10,200(sp)
    80004358:	0d013d83          	ld	s11,208(sp)
    8000435c:	0d813e03          	ld	t3,216(sp)
    80004360:	0e013e83          	ld	t4,224(sp)
    80004364:	0e813f03          	ld	t5,232(sp)
    80004368:	0f013f83          	ld	t6,240(sp)
    8000436c:	10010113          	addi	sp,sp,256
    80004370:	10200073          	sret
    80004374:	00000013          	nop
    80004378:	00000013          	nop
    8000437c:	00000013          	nop

0000000080004380 <timervec>:
    80004380:	34051573          	csrrw	a0,mscratch,a0
    80004384:	00b53023          	sd	a1,0(a0)
    80004388:	00c53423          	sd	a2,8(a0)
    8000438c:	00d53823          	sd	a3,16(a0)
    80004390:	01853583          	ld	a1,24(a0)
    80004394:	02053603          	ld	a2,32(a0)
    80004398:	0005b683          	ld	a3,0(a1)
    8000439c:	00c686b3          	add	a3,a3,a2
    800043a0:	00d5b023          	sd	a3,0(a1)
    800043a4:	00200593          	li	a1,2
    800043a8:	14459073          	csrw	sip,a1
    800043ac:	01053683          	ld	a3,16(a0)
    800043b0:	00853603          	ld	a2,8(a0)
    800043b4:	00053583          	ld	a1,0(a0)
    800043b8:	34051573          	csrrw	a0,mscratch,a0
    800043bc:	30200073          	mret

00000000800043c0 <plicinit>:
    800043c0:	ff010113          	addi	sp,sp,-16
    800043c4:	00813423          	sd	s0,8(sp)
    800043c8:	01010413          	addi	s0,sp,16
    800043cc:	00813403          	ld	s0,8(sp)
    800043d0:	0c0007b7          	lui	a5,0xc000
    800043d4:	00100713          	li	a4,1
    800043d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800043dc:	00e7a223          	sw	a4,4(a5)
    800043e0:	01010113          	addi	sp,sp,16
    800043e4:	00008067          	ret

00000000800043e8 <plicinithart>:
    800043e8:	ff010113          	addi	sp,sp,-16
    800043ec:	00813023          	sd	s0,0(sp)
    800043f0:	00113423          	sd	ra,8(sp)
    800043f4:	01010413          	addi	s0,sp,16
    800043f8:	00000097          	auipc	ra,0x0
    800043fc:	a4c080e7          	jalr	-1460(ra) # 80003e44 <cpuid>
    80004400:	0085171b          	slliw	a4,a0,0x8
    80004404:	0c0027b7          	lui	a5,0xc002
    80004408:	00e787b3          	add	a5,a5,a4
    8000440c:	40200713          	li	a4,1026
    80004410:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004414:	00813083          	ld	ra,8(sp)
    80004418:	00013403          	ld	s0,0(sp)
    8000441c:	00d5151b          	slliw	a0,a0,0xd
    80004420:	0c2017b7          	lui	a5,0xc201
    80004424:	00a78533          	add	a0,a5,a0
    80004428:	00052023          	sw	zero,0(a0)
    8000442c:	01010113          	addi	sp,sp,16
    80004430:	00008067          	ret

0000000080004434 <plic_claim>:
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00813023          	sd	s0,0(sp)
    8000443c:	00113423          	sd	ra,8(sp)
    80004440:	01010413          	addi	s0,sp,16
    80004444:	00000097          	auipc	ra,0x0
    80004448:	a00080e7          	jalr	-1536(ra) # 80003e44 <cpuid>
    8000444c:	00813083          	ld	ra,8(sp)
    80004450:	00013403          	ld	s0,0(sp)
    80004454:	00d5151b          	slliw	a0,a0,0xd
    80004458:	0c2017b7          	lui	a5,0xc201
    8000445c:	00a78533          	add	a0,a5,a0
    80004460:	00452503          	lw	a0,4(a0)
    80004464:	01010113          	addi	sp,sp,16
    80004468:	00008067          	ret

000000008000446c <plic_complete>:
    8000446c:	fe010113          	addi	sp,sp,-32
    80004470:	00813823          	sd	s0,16(sp)
    80004474:	00913423          	sd	s1,8(sp)
    80004478:	00113c23          	sd	ra,24(sp)
    8000447c:	02010413          	addi	s0,sp,32
    80004480:	00050493          	mv	s1,a0
    80004484:	00000097          	auipc	ra,0x0
    80004488:	9c0080e7          	jalr	-1600(ra) # 80003e44 <cpuid>
    8000448c:	01813083          	ld	ra,24(sp)
    80004490:	01013403          	ld	s0,16(sp)
    80004494:	00d5179b          	slliw	a5,a0,0xd
    80004498:	0c201737          	lui	a4,0xc201
    8000449c:	00f707b3          	add	a5,a4,a5
    800044a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800044a4:	00813483          	ld	s1,8(sp)
    800044a8:	02010113          	addi	sp,sp,32
    800044ac:	00008067          	ret

00000000800044b0 <consolewrite>:
    800044b0:	fb010113          	addi	sp,sp,-80
    800044b4:	04813023          	sd	s0,64(sp)
    800044b8:	04113423          	sd	ra,72(sp)
    800044bc:	02913c23          	sd	s1,56(sp)
    800044c0:	03213823          	sd	s2,48(sp)
    800044c4:	03313423          	sd	s3,40(sp)
    800044c8:	03413023          	sd	s4,32(sp)
    800044cc:	01513c23          	sd	s5,24(sp)
    800044d0:	05010413          	addi	s0,sp,80
    800044d4:	06c05c63          	blez	a2,8000454c <consolewrite+0x9c>
    800044d8:	00060993          	mv	s3,a2
    800044dc:	00050a13          	mv	s4,a0
    800044e0:	00058493          	mv	s1,a1
    800044e4:	00000913          	li	s2,0
    800044e8:	fff00a93          	li	s5,-1
    800044ec:	01c0006f          	j	80004508 <consolewrite+0x58>
    800044f0:	fbf44503          	lbu	a0,-65(s0)
    800044f4:	0019091b          	addiw	s2,s2,1
    800044f8:	00148493          	addi	s1,s1,1
    800044fc:	00001097          	auipc	ra,0x1
    80004500:	a9c080e7          	jalr	-1380(ra) # 80004f98 <uartputc>
    80004504:	03298063          	beq	s3,s2,80004524 <consolewrite+0x74>
    80004508:	00048613          	mv	a2,s1
    8000450c:	00100693          	li	a3,1
    80004510:	000a0593          	mv	a1,s4
    80004514:	fbf40513          	addi	a0,s0,-65
    80004518:	00000097          	auipc	ra,0x0
    8000451c:	9e4080e7          	jalr	-1564(ra) # 80003efc <either_copyin>
    80004520:	fd5518e3          	bne	a0,s5,800044f0 <consolewrite+0x40>
    80004524:	04813083          	ld	ra,72(sp)
    80004528:	04013403          	ld	s0,64(sp)
    8000452c:	03813483          	ld	s1,56(sp)
    80004530:	02813983          	ld	s3,40(sp)
    80004534:	02013a03          	ld	s4,32(sp)
    80004538:	01813a83          	ld	s5,24(sp)
    8000453c:	00090513          	mv	a0,s2
    80004540:	03013903          	ld	s2,48(sp)
    80004544:	05010113          	addi	sp,sp,80
    80004548:	00008067          	ret
    8000454c:	00000913          	li	s2,0
    80004550:	fd5ff06f          	j	80004524 <consolewrite+0x74>

0000000080004554 <consoleread>:
    80004554:	f9010113          	addi	sp,sp,-112
    80004558:	06813023          	sd	s0,96(sp)
    8000455c:	04913c23          	sd	s1,88(sp)
    80004560:	05213823          	sd	s2,80(sp)
    80004564:	05313423          	sd	s3,72(sp)
    80004568:	05413023          	sd	s4,64(sp)
    8000456c:	03513c23          	sd	s5,56(sp)
    80004570:	03613823          	sd	s6,48(sp)
    80004574:	03713423          	sd	s7,40(sp)
    80004578:	03813023          	sd	s8,32(sp)
    8000457c:	06113423          	sd	ra,104(sp)
    80004580:	01913c23          	sd	s9,24(sp)
    80004584:	07010413          	addi	s0,sp,112
    80004588:	00060b93          	mv	s7,a2
    8000458c:	00050913          	mv	s2,a0
    80004590:	00058c13          	mv	s8,a1
    80004594:	00060b1b          	sext.w	s6,a2
    80004598:	00004497          	auipc	s1,0x4
    8000459c:	e7048493          	addi	s1,s1,-400 # 80008408 <cons>
    800045a0:	00400993          	li	s3,4
    800045a4:	fff00a13          	li	s4,-1
    800045a8:	00a00a93          	li	s5,10
    800045ac:	05705e63          	blez	s7,80004608 <consoleread+0xb4>
    800045b0:	09c4a703          	lw	a4,156(s1)
    800045b4:	0984a783          	lw	a5,152(s1)
    800045b8:	0007071b          	sext.w	a4,a4
    800045bc:	08e78463          	beq	a5,a4,80004644 <consoleread+0xf0>
    800045c0:	07f7f713          	andi	a4,a5,127
    800045c4:	00e48733          	add	a4,s1,a4
    800045c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800045cc:	0017869b          	addiw	a3,a5,1
    800045d0:	08d4ac23          	sw	a3,152(s1)
    800045d4:	00070c9b          	sext.w	s9,a4
    800045d8:	0b370663          	beq	a4,s3,80004684 <consoleread+0x130>
    800045dc:	00100693          	li	a3,1
    800045e0:	f9f40613          	addi	a2,s0,-97
    800045e4:	000c0593          	mv	a1,s8
    800045e8:	00090513          	mv	a0,s2
    800045ec:	f8e40fa3          	sb	a4,-97(s0)
    800045f0:	00000097          	auipc	ra,0x0
    800045f4:	8c0080e7          	jalr	-1856(ra) # 80003eb0 <either_copyout>
    800045f8:	01450863          	beq	a0,s4,80004608 <consoleread+0xb4>
    800045fc:	001c0c13          	addi	s8,s8,1
    80004600:	fffb8b9b          	addiw	s7,s7,-1
    80004604:	fb5c94e3          	bne	s9,s5,800045ac <consoleread+0x58>
    80004608:	000b851b          	sext.w	a0,s7
    8000460c:	06813083          	ld	ra,104(sp)
    80004610:	06013403          	ld	s0,96(sp)
    80004614:	05813483          	ld	s1,88(sp)
    80004618:	05013903          	ld	s2,80(sp)
    8000461c:	04813983          	ld	s3,72(sp)
    80004620:	04013a03          	ld	s4,64(sp)
    80004624:	03813a83          	ld	s5,56(sp)
    80004628:	02813b83          	ld	s7,40(sp)
    8000462c:	02013c03          	ld	s8,32(sp)
    80004630:	01813c83          	ld	s9,24(sp)
    80004634:	40ab053b          	subw	a0,s6,a0
    80004638:	03013b03          	ld	s6,48(sp)
    8000463c:	07010113          	addi	sp,sp,112
    80004640:	00008067          	ret
    80004644:	00001097          	auipc	ra,0x1
    80004648:	1d8080e7          	jalr	472(ra) # 8000581c <push_on>
    8000464c:	0984a703          	lw	a4,152(s1)
    80004650:	09c4a783          	lw	a5,156(s1)
    80004654:	0007879b          	sext.w	a5,a5
    80004658:	fef70ce3          	beq	a4,a5,80004650 <consoleread+0xfc>
    8000465c:	00001097          	auipc	ra,0x1
    80004660:	234080e7          	jalr	564(ra) # 80005890 <pop_on>
    80004664:	0984a783          	lw	a5,152(s1)
    80004668:	07f7f713          	andi	a4,a5,127
    8000466c:	00e48733          	add	a4,s1,a4
    80004670:	01874703          	lbu	a4,24(a4)
    80004674:	0017869b          	addiw	a3,a5,1
    80004678:	08d4ac23          	sw	a3,152(s1)
    8000467c:	00070c9b          	sext.w	s9,a4
    80004680:	f5371ee3          	bne	a4,s3,800045dc <consoleread+0x88>
    80004684:	000b851b          	sext.w	a0,s7
    80004688:	f96bf2e3          	bgeu	s7,s6,8000460c <consoleread+0xb8>
    8000468c:	08f4ac23          	sw	a5,152(s1)
    80004690:	f7dff06f          	j	8000460c <consoleread+0xb8>

0000000080004694 <consputc>:
    80004694:	10000793          	li	a5,256
    80004698:	00f50663          	beq	a0,a5,800046a4 <consputc+0x10>
    8000469c:	00001317          	auipc	t1,0x1
    800046a0:	9f430067          	jr	-1548(t1) # 80005090 <uartputc_sync>
    800046a4:	ff010113          	addi	sp,sp,-16
    800046a8:	00113423          	sd	ra,8(sp)
    800046ac:	00813023          	sd	s0,0(sp)
    800046b0:	01010413          	addi	s0,sp,16
    800046b4:	00800513          	li	a0,8
    800046b8:	00001097          	auipc	ra,0x1
    800046bc:	9d8080e7          	jalr	-1576(ra) # 80005090 <uartputc_sync>
    800046c0:	02000513          	li	a0,32
    800046c4:	00001097          	auipc	ra,0x1
    800046c8:	9cc080e7          	jalr	-1588(ra) # 80005090 <uartputc_sync>
    800046cc:	00013403          	ld	s0,0(sp)
    800046d0:	00813083          	ld	ra,8(sp)
    800046d4:	00800513          	li	a0,8
    800046d8:	01010113          	addi	sp,sp,16
    800046dc:	00001317          	auipc	t1,0x1
    800046e0:	9b430067          	jr	-1612(t1) # 80005090 <uartputc_sync>

00000000800046e4 <consoleintr>:
    800046e4:	fe010113          	addi	sp,sp,-32
    800046e8:	00813823          	sd	s0,16(sp)
    800046ec:	00913423          	sd	s1,8(sp)
    800046f0:	01213023          	sd	s2,0(sp)
    800046f4:	00113c23          	sd	ra,24(sp)
    800046f8:	02010413          	addi	s0,sp,32
    800046fc:	00004917          	auipc	s2,0x4
    80004700:	d0c90913          	addi	s2,s2,-756 # 80008408 <cons>
    80004704:	00050493          	mv	s1,a0
    80004708:	00090513          	mv	a0,s2
    8000470c:	00001097          	auipc	ra,0x1
    80004710:	e40080e7          	jalr	-448(ra) # 8000554c <acquire>
    80004714:	02048c63          	beqz	s1,8000474c <consoleintr+0x68>
    80004718:	0a092783          	lw	a5,160(s2)
    8000471c:	09892703          	lw	a4,152(s2)
    80004720:	07f00693          	li	a3,127
    80004724:	40e7873b          	subw	a4,a5,a4
    80004728:	02e6e263          	bltu	a3,a4,8000474c <consoleintr+0x68>
    8000472c:	00d00713          	li	a4,13
    80004730:	04e48063          	beq	s1,a4,80004770 <consoleintr+0x8c>
    80004734:	07f7f713          	andi	a4,a5,127
    80004738:	00e90733          	add	a4,s2,a4
    8000473c:	0017879b          	addiw	a5,a5,1
    80004740:	0af92023          	sw	a5,160(s2)
    80004744:	00970c23          	sb	s1,24(a4)
    80004748:	08f92e23          	sw	a5,156(s2)
    8000474c:	01013403          	ld	s0,16(sp)
    80004750:	01813083          	ld	ra,24(sp)
    80004754:	00813483          	ld	s1,8(sp)
    80004758:	00013903          	ld	s2,0(sp)
    8000475c:	00004517          	auipc	a0,0x4
    80004760:	cac50513          	addi	a0,a0,-852 # 80008408 <cons>
    80004764:	02010113          	addi	sp,sp,32
    80004768:	00001317          	auipc	t1,0x1
    8000476c:	eb030067          	jr	-336(t1) # 80005618 <release>
    80004770:	00a00493          	li	s1,10
    80004774:	fc1ff06f          	j	80004734 <consoleintr+0x50>

0000000080004778 <consoleinit>:
    80004778:	fe010113          	addi	sp,sp,-32
    8000477c:	00113c23          	sd	ra,24(sp)
    80004780:	00813823          	sd	s0,16(sp)
    80004784:	00913423          	sd	s1,8(sp)
    80004788:	02010413          	addi	s0,sp,32
    8000478c:	00004497          	auipc	s1,0x4
    80004790:	c7c48493          	addi	s1,s1,-900 # 80008408 <cons>
    80004794:	00048513          	mv	a0,s1
    80004798:	00002597          	auipc	a1,0x2
    8000479c:	b3058593          	addi	a1,a1,-1232 # 800062c8 <CONSOLE_STATUS+0x2b8>
    800047a0:	00001097          	auipc	ra,0x1
    800047a4:	d88080e7          	jalr	-632(ra) # 80005528 <initlock>
    800047a8:	00000097          	auipc	ra,0x0
    800047ac:	7ac080e7          	jalr	1964(ra) # 80004f54 <uartinit>
    800047b0:	01813083          	ld	ra,24(sp)
    800047b4:	01013403          	ld	s0,16(sp)
    800047b8:	00000797          	auipc	a5,0x0
    800047bc:	d9c78793          	addi	a5,a5,-612 # 80004554 <consoleread>
    800047c0:	0af4bc23          	sd	a5,184(s1)
    800047c4:	00000797          	auipc	a5,0x0
    800047c8:	cec78793          	addi	a5,a5,-788 # 800044b0 <consolewrite>
    800047cc:	0cf4b023          	sd	a5,192(s1)
    800047d0:	00813483          	ld	s1,8(sp)
    800047d4:	02010113          	addi	sp,sp,32
    800047d8:	00008067          	ret

00000000800047dc <console_read>:
    800047dc:	ff010113          	addi	sp,sp,-16
    800047e0:	00813423          	sd	s0,8(sp)
    800047e4:	01010413          	addi	s0,sp,16
    800047e8:	00813403          	ld	s0,8(sp)
    800047ec:	00004317          	auipc	t1,0x4
    800047f0:	cd433303          	ld	t1,-812(t1) # 800084c0 <devsw+0x10>
    800047f4:	01010113          	addi	sp,sp,16
    800047f8:	00030067          	jr	t1

00000000800047fc <console_write>:
    800047fc:	ff010113          	addi	sp,sp,-16
    80004800:	00813423          	sd	s0,8(sp)
    80004804:	01010413          	addi	s0,sp,16
    80004808:	00813403          	ld	s0,8(sp)
    8000480c:	00004317          	auipc	t1,0x4
    80004810:	cbc33303          	ld	t1,-836(t1) # 800084c8 <devsw+0x18>
    80004814:	01010113          	addi	sp,sp,16
    80004818:	00030067          	jr	t1

000000008000481c <panic>:
    8000481c:	fe010113          	addi	sp,sp,-32
    80004820:	00113c23          	sd	ra,24(sp)
    80004824:	00813823          	sd	s0,16(sp)
    80004828:	00913423          	sd	s1,8(sp)
    8000482c:	02010413          	addi	s0,sp,32
    80004830:	00050493          	mv	s1,a0
    80004834:	00002517          	auipc	a0,0x2
    80004838:	a9c50513          	addi	a0,a0,-1380 # 800062d0 <CONSOLE_STATUS+0x2c0>
    8000483c:	00004797          	auipc	a5,0x4
    80004840:	d207a623          	sw	zero,-724(a5) # 80008568 <pr+0x18>
    80004844:	00000097          	auipc	ra,0x0
    80004848:	034080e7          	jalr	52(ra) # 80004878 <__printf>
    8000484c:	00048513          	mv	a0,s1
    80004850:	00000097          	auipc	ra,0x0
    80004854:	028080e7          	jalr	40(ra) # 80004878 <__printf>
    80004858:	00002517          	auipc	a0,0x2
    8000485c:	a5850513          	addi	a0,a0,-1448 # 800062b0 <CONSOLE_STATUS+0x2a0>
    80004860:	00000097          	auipc	ra,0x0
    80004864:	018080e7          	jalr	24(ra) # 80004878 <__printf>
    80004868:	00100793          	li	a5,1
    8000486c:	00003717          	auipc	a4,0x3
    80004870:	a4f72623          	sw	a5,-1460(a4) # 800072b8 <panicked>
    80004874:	0000006f          	j	80004874 <panic+0x58>

0000000080004878 <__printf>:
    80004878:	f3010113          	addi	sp,sp,-208
    8000487c:	08813023          	sd	s0,128(sp)
    80004880:	07313423          	sd	s3,104(sp)
    80004884:	09010413          	addi	s0,sp,144
    80004888:	05813023          	sd	s8,64(sp)
    8000488c:	08113423          	sd	ra,136(sp)
    80004890:	06913c23          	sd	s1,120(sp)
    80004894:	07213823          	sd	s2,112(sp)
    80004898:	07413023          	sd	s4,96(sp)
    8000489c:	05513c23          	sd	s5,88(sp)
    800048a0:	05613823          	sd	s6,80(sp)
    800048a4:	05713423          	sd	s7,72(sp)
    800048a8:	03913c23          	sd	s9,56(sp)
    800048ac:	03a13823          	sd	s10,48(sp)
    800048b0:	03b13423          	sd	s11,40(sp)
    800048b4:	00004317          	auipc	t1,0x4
    800048b8:	c9c30313          	addi	t1,t1,-868 # 80008550 <pr>
    800048bc:	01832c03          	lw	s8,24(t1)
    800048c0:	00b43423          	sd	a1,8(s0)
    800048c4:	00c43823          	sd	a2,16(s0)
    800048c8:	00d43c23          	sd	a3,24(s0)
    800048cc:	02e43023          	sd	a4,32(s0)
    800048d0:	02f43423          	sd	a5,40(s0)
    800048d4:	03043823          	sd	a6,48(s0)
    800048d8:	03143c23          	sd	a7,56(s0)
    800048dc:	00050993          	mv	s3,a0
    800048e0:	4a0c1663          	bnez	s8,80004d8c <__printf+0x514>
    800048e4:	60098c63          	beqz	s3,80004efc <__printf+0x684>
    800048e8:	0009c503          	lbu	a0,0(s3)
    800048ec:	00840793          	addi	a5,s0,8
    800048f0:	f6f43c23          	sd	a5,-136(s0)
    800048f4:	00000493          	li	s1,0
    800048f8:	22050063          	beqz	a0,80004b18 <__printf+0x2a0>
    800048fc:	00002a37          	lui	s4,0x2
    80004900:	00018ab7          	lui	s5,0x18
    80004904:	000f4b37          	lui	s6,0xf4
    80004908:	00989bb7          	lui	s7,0x989
    8000490c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004910:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004914:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004918:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000491c:	00148c9b          	addiw	s9,s1,1
    80004920:	02500793          	li	a5,37
    80004924:	01998933          	add	s2,s3,s9
    80004928:	38f51263          	bne	a0,a5,80004cac <__printf+0x434>
    8000492c:	00094783          	lbu	a5,0(s2)
    80004930:	00078c9b          	sext.w	s9,a5
    80004934:	1e078263          	beqz	a5,80004b18 <__printf+0x2a0>
    80004938:	0024849b          	addiw	s1,s1,2
    8000493c:	07000713          	li	a4,112
    80004940:	00998933          	add	s2,s3,s1
    80004944:	38e78a63          	beq	a5,a4,80004cd8 <__printf+0x460>
    80004948:	20f76863          	bltu	a4,a5,80004b58 <__printf+0x2e0>
    8000494c:	42a78863          	beq	a5,a0,80004d7c <__printf+0x504>
    80004950:	06400713          	li	a4,100
    80004954:	40e79663          	bne	a5,a4,80004d60 <__printf+0x4e8>
    80004958:	f7843783          	ld	a5,-136(s0)
    8000495c:	0007a603          	lw	a2,0(a5)
    80004960:	00878793          	addi	a5,a5,8
    80004964:	f6f43c23          	sd	a5,-136(s0)
    80004968:	42064a63          	bltz	a2,80004d9c <__printf+0x524>
    8000496c:	00a00713          	li	a4,10
    80004970:	02e677bb          	remuw	a5,a2,a4
    80004974:	00002d97          	auipc	s11,0x2
    80004978:	984d8d93          	addi	s11,s11,-1660 # 800062f8 <digits>
    8000497c:	00900593          	li	a1,9
    80004980:	0006051b          	sext.w	a0,a2
    80004984:	00000c93          	li	s9,0
    80004988:	02079793          	slli	a5,a5,0x20
    8000498c:	0207d793          	srli	a5,a5,0x20
    80004990:	00fd87b3          	add	a5,s11,a5
    80004994:	0007c783          	lbu	a5,0(a5)
    80004998:	02e656bb          	divuw	a3,a2,a4
    8000499c:	f8f40023          	sb	a5,-128(s0)
    800049a0:	14c5d863          	bge	a1,a2,80004af0 <__printf+0x278>
    800049a4:	06300593          	li	a1,99
    800049a8:	00100c93          	li	s9,1
    800049ac:	02e6f7bb          	remuw	a5,a3,a4
    800049b0:	02079793          	slli	a5,a5,0x20
    800049b4:	0207d793          	srli	a5,a5,0x20
    800049b8:	00fd87b3          	add	a5,s11,a5
    800049bc:	0007c783          	lbu	a5,0(a5)
    800049c0:	02e6d73b          	divuw	a4,a3,a4
    800049c4:	f8f400a3          	sb	a5,-127(s0)
    800049c8:	12a5f463          	bgeu	a1,a0,80004af0 <__printf+0x278>
    800049cc:	00a00693          	li	a3,10
    800049d0:	00900593          	li	a1,9
    800049d4:	02d777bb          	remuw	a5,a4,a3
    800049d8:	02079793          	slli	a5,a5,0x20
    800049dc:	0207d793          	srli	a5,a5,0x20
    800049e0:	00fd87b3          	add	a5,s11,a5
    800049e4:	0007c503          	lbu	a0,0(a5)
    800049e8:	02d757bb          	divuw	a5,a4,a3
    800049ec:	f8a40123          	sb	a0,-126(s0)
    800049f0:	48e5f263          	bgeu	a1,a4,80004e74 <__printf+0x5fc>
    800049f4:	06300513          	li	a0,99
    800049f8:	02d7f5bb          	remuw	a1,a5,a3
    800049fc:	02059593          	slli	a1,a1,0x20
    80004a00:	0205d593          	srli	a1,a1,0x20
    80004a04:	00bd85b3          	add	a1,s11,a1
    80004a08:	0005c583          	lbu	a1,0(a1)
    80004a0c:	02d7d7bb          	divuw	a5,a5,a3
    80004a10:	f8b401a3          	sb	a1,-125(s0)
    80004a14:	48e57263          	bgeu	a0,a4,80004e98 <__printf+0x620>
    80004a18:	3e700513          	li	a0,999
    80004a1c:	02d7f5bb          	remuw	a1,a5,a3
    80004a20:	02059593          	slli	a1,a1,0x20
    80004a24:	0205d593          	srli	a1,a1,0x20
    80004a28:	00bd85b3          	add	a1,s11,a1
    80004a2c:	0005c583          	lbu	a1,0(a1)
    80004a30:	02d7d7bb          	divuw	a5,a5,a3
    80004a34:	f8b40223          	sb	a1,-124(s0)
    80004a38:	46e57663          	bgeu	a0,a4,80004ea4 <__printf+0x62c>
    80004a3c:	02d7f5bb          	remuw	a1,a5,a3
    80004a40:	02059593          	slli	a1,a1,0x20
    80004a44:	0205d593          	srli	a1,a1,0x20
    80004a48:	00bd85b3          	add	a1,s11,a1
    80004a4c:	0005c583          	lbu	a1,0(a1)
    80004a50:	02d7d7bb          	divuw	a5,a5,a3
    80004a54:	f8b402a3          	sb	a1,-123(s0)
    80004a58:	46ea7863          	bgeu	s4,a4,80004ec8 <__printf+0x650>
    80004a5c:	02d7f5bb          	remuw	a1,a5,a3
    80004a60:	02059593          	slli	a1,a1,0x20
    80004a64:	0205d593          	srli	a1,a1,0x20
    80004a68:	00bd85b3          	add	a1,s11,a1
    80004a6c:	0005c583          	lbu	a1,0(a1)
    80004a70:	02d7d7bb          	divuw	a5,a5,a3
    80004a74:	f8b40323          	sb	a1,-122(s0)
    80004a78:	3eeaf863          	bgeu	s5,a4,80004e68 <__printf+0x5f0>
    80004a7c:	02d7f5bb          	remuw	a1,a5,a3
    80004a80:	02059593          	slli	a1,a1,0x20
    80004a84:	0205d593          	srli	a1,a1,0x20
    80004a88:	00bd85b3          	add	a1,s11,a1
    80004a8c:	0005c583          	lbu	a1,0(a1)
    80004a90:	02d7d7bb          	divuw	a5,a5,a3
    80004a94:	f8b403a3          	sb	a1,-121(s0)
    80004a98:	42eb7e63          	bgeu	s6,a4,80004ed4 <__printf+0x65c>
    80004a9c:	02d7f5bb          	remuw	a1,a5,a3
    80004aa0:	02059593          	slli	a1,a1,0x20
    80004aa4:	0205d593          	srli	a1,a1,0x20
    80004aa8:	00bd85b3          	add	a1,s11,a1
    80004aac:	0005c583          	lbu	a1,0(a1)
    80004ab0:	02d7d7bb          	divuw	a5,a5,a3
    80004ab4:	f8b40423          	sb	a1,-120(s0)
    80004ab8:	42ebfc63          	bgeu	s7,a4,80004ef0 <__printf+0x678>
    80004abc:	02079793          	slli	a5,a5,0x20
    80004ac0:	0207d793          	srli	a5,a5,0x20
    80004ac4:	00fd8db3          	add	s11,s11,a5
    80004ac8:	000dc703          	lbu	a4,0(s11)
    80004acc:	00a00793          	li	a5,10
    80004ad0:	00900c93          	li	s9,9
    80004ad4:	f8e404a3          	sb	a4,-119(s0)
    80004ad8:	00065c63          	bgez	a2,80004af0 <__printf+0x278>
    80004adc:	f9040713          	addi	a4,s0,-112
    80004ae0:	00f70733          	add	a4,a4,a5
    80004ae4:	02d00693          	li	a3,45
    80004ae8:	fed70823          	sb	a3,-16(a4)
    80004aec:	00078c93          	mv	s9,a5
    80004af0:	f8040793          	addi	a5,s0,-128
    80004af4:	01978cb3          	add	s9,a5,s9
    80004af8:	f7f40d13          	addi	s10,s0,-129
    80004afc:	000cc503          	lbu	a0,0(s9)
    80004b00:	fffc8c93          	addi	s9,s9,-1
    80004b04:	00000097          	auipc	ra,0x0
    80004b08:	b90080e7          	jalr	-1136(ra) # 80004694 <consputc>
    80004b0c:	ffac98e3          	bne	s9,s10,80004afc <__printf+0x284>
    80004b10:	00094503          	lbu	a0,0(s2)
    80004b14:	e00514e3          	bnez	a0,8000491c <__printf+0xa4>
    80004b18:	1a0c1663          	bnez	s8,80004cc4 <__printf+0x44c>
    80004b1c:	08813083          	ld	ra,136(sp)
    80004b20:	08013403          	ld	s0,128(sp)
    80004b24:	07813483          	ld	s1,120(sp)
    80004b28:	07013903          	ld	s2,112(sp)
    80004b2c:	06813983          	ld	s3,104(sp)
    80004b30:	06013a03          	ld	s4,96(sp)
    80004b34:	05813a83          	ld	s5,88(sp)
    80004b38:	05013b03          	ld	s6,80(sp)
    80004b3c:	04813b83          	ld	s7,72(sp)
    80004b40:	04013c03          	ld	s8,64(sp)
    80004b44:	03813c83          	ld	s9,56(sp)
    80004b48:	03013d03          	ld	s10,48(sp)
    80004b4c:	02813d83          	ld	s11,40(sp)
    80004b50:	0d010113          	addi	sp,sp,208
    80004b54:	00008067          	ret
    80004b58:	07300713          	li	a4,115
    80004b5c:	1ce78a63          	beq	a5,a4,80004d30 <__printf+0x4b8>
    80004b60:	07800713          	li	a4,120
    80004b64:	1ee79e63          	bne	a5,a4,80004d60 <__printf+0x4e8>
    80004b68:	f7843783          	ld	a5,-136(s0)
    80004b6c:	0007a703          	lw	a4,0(a5)
    80004b70:	00878793          	addi	a5,a5,8
    80004b74:	f6f43c23          	sd	a5,-136(s0)
    80004b78:	28074263          	bltz	a4,80004dfc <__printf+0x584>
    80004b7c:	00001d97          	auipc	s11,0x1
    80004b80:	77cd8d93          	addi	s11,s11,1916 # 800062f8 <digits>
    80004b84:	00f77793          	andi	a5,a4,15
    80004b88:	00fd87b3          	add	a5,s11,a5
    80004b8c:	0007c683          	lbu	a3,0(a5)
    80004b90:	00f00613          	li	a2,15
    80004b94:	0007079b          	sext.w	a5,a4
    80004b98:	f8d40023          	sb	a3,-128(s0)
    80004b9c:	0047559b          	srliw	a1,a4,0x4
    80004ba0:	0047569b          	srliw	a3,a4,0x4
    80004ba4:	00000c93          	li	s9,0
    80004ba8:	0ee65063          	bge	a2,a4,80004c88 <__printf+0x410>
    80004bac:	00f6f693          	andi	a3,a3,15
    80004bb0:	00dd86b3          	add	a3,s11,a3
    80004bb4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004bb8:	0087d79b          	srliw	a5,a5,0x8
    80004bbc:	00100c93          	li	s9,1
    80004bc0:	f8d400a3          	sb	a3,-127(s0)
    80004bc4:	0cb67263          	bgeu	a2,a1,80004c88 <__printf+0x410>
    80004bc8:	00f7f693          	andi	a3,a5,15
    80004bcc:	00dd86b3          	add	a3,s11,a3
    80004bd0:	0006c583          	lbu	a1,0(a3)
    80004bd4:	00f00613          	li	a2,15
    80004bd8:	0047d69b          	srliw	a3,a5,0x4
    80004bdc:	f8b40123          	sb	a1,-126(s0)
    80004be0:	0047d593          	srli	a1,a5,0x4
    80004be4:	28f67e63          	bgeu	a2,a5,80004e80 <__printf+0x608>
    80004be8:	00f6f693          	andi	a3,a3,15
    80004bec:	00dd86b3          	add	a3,s11,a3
    80004bf0:	0006c503          	lbu	a0,0(a3)
    80004bf4:	0087d813          	srli	a6,a5,0x8
    80004bf8:	0087d69b          	srliw	a3,a5,0x8
    80004bfc:	f8a401a3          	sb	a0,-125(s0)
    80004c00:	28b67663          	bgeu	a2,a1,80004e8c <__printf+0x614>
    80004c04:	00f6f693          	andi	a3,a3,15
    80004c08:	00dd86b3          	add	a3,s11,a3
    80004c0c:	0006c583          	lbu	a1,0(a3)
    80004c10:	00c7d513          	srli	a0,a5,0xc
    80004c14:	00c7d69b          	srliw	a3,a5,0xc
    80004c18:	f8b40223          	sb	a1,-124(s0)
    80004c1c:	29067a63          	bgeu	a2,a6,80004eb0 <__printf+0x638>
    80004c20:	00f6f693          	andi	a3,a3,15
    80004c24:	00dd86b3          	add	a3,s11,a3
    80004c28:	0006c583          	lbu	a1,0(a3)
    80004c2c:	0107d813          	srli	a6,a5,0x10
    80004c30:	0107d69b          	srliw	a3,a5,0x10
    80004c34:	f8b402a3          	sb	a1,-123(s0)
    80004c38:	28a67263          	bgeu	a2,a0,80004ebc <__printf+0x644>
    80004c3c:	00f6f693          	andi	a3,a3,15
    80004c40:	00dd86b3          	add	a3,s11,a3
    80004c44:	0006c683          	lbu	a3,0(a3)
    80004c48:	0147d79b          	srliw	a5,a5,0x14
    80004c4c:	f8d40323          	sb	a3,-122(s0)
    80004c50:	21067663          	bgeu	a2,a6,80004e5c <__printf+0x5e4>
    80004c54:	02079793          	slli	a5,a5,0x20
    80004c58:	0207d793          	srli	a5,a5,0x20
    80004c5c:	00fd8db3          	add	s11,s11,a5
    80004c60:	000dc683          	lbu	a3,0(s11)
    80004c64:	00800793          	li	a5,8
    80004c68:	00700c93          	li	s9,7
    80004c6c:	f8d403a3          	sb	a3,-121(s0)
    80004c70:	00075c63          	bgez	a4,80004c88 <__printf+0x410>
    80004c74:	f9040713          	addi	a4,s0,-112
    80004c78:	00f70733          	add	a4,a4,a5
    80004c7c:	02d00693          	li	a3,45
    80004c80:	fed70823          	sb	a3,-16(a4)
    80004c84:	00078c93          	mv	s9,a5
    80004c88:	f8040793          	addi	a5,s0,-128
    80004c8c:	01978cb3          	add	s9,a5,s9
    80004c90:	f7f40d13          	addi	s10,s0,-129
    80004c94:	000cc503          	lbu	a0,0(s9)
    80004c98:	fffc8c93          	addi	s9,s9,-1
    80004c9c:	00000097          	auipc	ra,0x0
    80004ca0:	9f8080e7          	jalr	-1544(ra) # 80004694 <consputc>
    80004ca4:	ff9d18e3          	bne	s10,s9,80004c94 <__printf+0x41c>
    80004ca8:	0100006f          	j	80004cb8 <__printf+0x440>
    80004cac:	00000097          	auipc	ra,0x0
    80004cb0:	9e8080e7          	jalr	-1560(ra) # 80004694 <consputc>
    80004cb4:	000c8493          	mv	s1,s9
    80004cb8:	00094503          	lbu	a0,0(s2)
    80004cbc:	c60510e3          	bnez	a0,8000491c <__printf+0xa4>
    80004cc0:	e40c0ee3          	beqz	s8,80004b1c <__printf+0x2a4>
    80004cc4:	00004517          	auipc	a0,0x4
    80004cc8:	88c50513          	addi	a0,a0,-1908 # 80008550 <pr>
    80004ccc:	00001097          	auipc	ra,0x1
    80004cd0:	94c080e7          	jalr	-1716(ra) # 80005618 <release>
    80004cd4:	e49ff06f          	j	80004b1c <__printf+0x2a4>
    80004cd8:	f7843783          	ld	a5,-136(s0)
    80004cdc:	03000513          	li	a0,48
    80004ce0:	01000d13          	li	s10,16
    80004ce4:	00878713          	addi	a4,a5,8
    80004ce8:	0007bc83          	ld	s9,0(a5)
    80004cec:	f6e43c23          	sd	a4,-136(s0)
    80004cf0:	00000097          	auipc	ra,0x0
    80004cf4:	9a4080e7          	jalr	-1628(ra) # 80004694 <consputc>
    80004cf8:	07800513          	li	a0,120
    80004cfc:	00000097          	auipc	ra,0x0
    80004d00:	998080e7          	jalr	-1640(ra) # 80004694 <consputc>
    80004d04:	00001d97          	auipc	s11,0x1
    80004d08:	5f4d8d93          	addi	s11,s11,1524 # 800062f8 <digits>
    80004d0c:	03ccd793          	srli	a5,s9,0x3c
    80004d10:	00fd87b3          	add	a5,s11,a5
    80004d14:	0007c503          	lbu	a0,0(a5)
    80004d18:	fffd0d1b          	addiw	s10,s10,-1
    80004d1c:	004c9c93          	slli	s9,s9,0x4
    80004d20:	00000097          	auipc	ra,0x0
    80004d24:	974080e7          	jalr	-1676(ra) # 80004694 <consputc>
    80004d28:	fe0d12e3          	bnez	s10,80004d0c <__printf+0x494>
    80004d2c:	f8dff06f          	j	80004cb8 <__printf+0x440>
    80004d30:	f7843783          	ld	a5,-136(s0)
    80004d34:	0007bc83          	ld	s9,0(a5)
    80004d38:	00878793          	addi	a5,a5,8
    80004d3c:	f6f43c23          	sd	a5,-136(s0)
    80004d40:	000c9a63          	bnez	s9,80004d54 <__printf+0x4dc>
    80004d44:	1080006f          	j	80004e4c <__printf+0x5d4>
    80004d48:	001c8c93          	addi	s9,s9,1
    80004d4c:	00000097          	auipc	ra,0x0
    80004d50:	948080e7          	jalr	-1720(ra) # 80004694 <consputc>
    80004d54:	000cc503          	lbu	a0,0(s9)
    80004d58:	fe0518e3          	bnez	a0,80004d48 <__printf+0x4d0>
    80004d5c:	f5dff06f          	j	80004cb8 <__printf+0x440>
    80004d60:	02500513          	li	a0,37
    80004d64:	00000097          	auipc	ra,0x0
    80004d68:	930080e7          	jalr	-1744(ra) # 80004694 <consputc>
    80004d6c:	000c8513          	mv	a0,s9
    80004d70:	00000097          	auipc	ra,0x0
    80004d74:	924080e7          	jalr	-1756(ra) # 80004694 <consputc>
    80004d78:	f41ff06f          	j	80004cb8 <__printf+0x440>
    80004d7c:	02500513          	li	a0,37
    80004d80:	00000097          	auipc	ra,0x0
    80004d84:	914080e7          	jalr	-1772(ra) # 80004694 <consputc>
    80004d88:	f31ff06f          	j	80004cb8 <__printf+0x440>
    80004d8c:	00030513          	mv	a0,t1
    80004d90:	00000097          	auipc	ra,0x0
    80004d94:	7bc080e7          	jalr	1980(ra) # 8000554c <acquire>
    80004d98:	b4dff06f          	j	800048e4 <__printf+0x6c>
    80004d9c:	40c0053b          	negw	a0,a2
    80004da0:	00a00713          	li	a4,10
    80004da4:	02e576bb          	remuw	a3,a0,a4
    80004da8:	00001d97          	auipc	s11,0x1
    80004dac:	550d8d93          	addi	s11,s11,1360 # 800062f8 <digits>
    80004db0:	ff700593          	li	a1,-9
    80004db4:	02069693          	slli	a3,a3,0x20
    80004db8:	0206d693          	srli	a3,a3,0x20
    80004dbc:	00dd86b3          	add	a3,s11,a3
    80004dc0:	0006c683          	lbu	a3,0(a3)
    80004dc4:	02e557bb          	divuw	a5,a0,a4
    80004dc8:	f8d40023          	sb	a3,-128(s0)
    80004dcc:	10b65e63          	bge	a2,a1,80004ee8 <__printf+0x670>
    80004dd0:	06300593          	li	a1,99
    80004dd4:	02e7f6bb          	remuw	a3,a5,a4
    80004dd8:	02069693          	slli	a3,a3,0x20
    80004ddc:	0206d693          	srli	a3,a3,0x20
    80004de0:	00dd86b3          	add	a3,s11,a3
    80004de4:	0006c683          	lbu	a3,0(a3)
    80004de8:	02e7d73b          	divuw	a4,a5,a4
    80004dec:	00200793          	li	a5,2
    80004df0:	f8d400a3          	sb	a3,-127(s0)
    80004df4:	bca5ece3          	bltu	a1,a0,800049cc <__printf+0x154>
    80004df8:	ce5ff06f          	j	80004adc <__printf+0x264>
    80004dfc:	40e007bb          	negw	a5,a4
    80004e00:	00001d97          	auipc	s11,0x1
    80004e04:	4f8d8d93          	addi	s11,s11,1272 # 800062f8 <digits>
    80004e08:	00f7f693          	andi	a3,a5,15
    80004e0c:	00dd86b3          	add	a3,s11,a3
    80004e10:	0006c583          	lbu	a1,0(a3)
    80004e14:	ff100613          	li	a2,-15
    80004e18:	0047d69b          	srliw	a3,a5,0x4
    80004e1c:	f8b40023          	sb	a1,-128(s0)
    80004e20:	0047d59b          	srliw	a1,a5,0x4
    80004e24:	0ac75e63          	bge	a4,a2,80004ee0 <__printf+0x668>
    80004e28:	00f6f693          	andi	a3,a3,15
    80004e2c:	00dd86b3          	add	a3,s11,a3
    80004e30:	0006c603          	lbu	a2,0(a3)
    80004e34:	00f00693          	li	a3,15
    80004e38:	0087d79b          	srliw	a5,a5,0x8
    80004e3c:	f8c400a3          	sb	a2,-127(s0)
    80004e40:	d8b6e4e3          	bltu	a3,a1,80004bc8 <__printf+0x350>
    80004e44:	00200793          	li	a5,2
    80004e48:	e2dff06f          	j	80004c74 <__printf+0x3fc>
    80004e4c:	00001c97          	auipc	s9,0x1
    80004e50:	48cc8c93          	addi	s9,s9,1164 # 800062d8 <CONSOLE_STATUS+0x2c8>
    80004e54:	02800513          	li	a0,40
    80004e58:	ef1ff06f          	j	80004d48 <__printf+0x4d0>
    80004e5c:	00700793          	li	a5,7
    80004e60:	00600c93          	li	s9,6
    80004e64:	e0dff06f          	j	80004c70 <__printf+0x3f8>
    80004e68:	00700793          	li	a5,7
    80004e6c:	00600c93          	li	s9,6
    80004e70:	c69ff06f          	j	80004ad8 <__printf+0x260>
    80004e74:	00300793          	li	a5,3
    80004e78:	00200c93          	li	s9,2
    80004e7c:	c5dff06f          	j	80004ad8 <__printf+0x260>
    80004e80:	00300793          	li	a5,3
    80004e84:	00200c93          	li	s9,2
    80004e88:	de9ff06f          	j	80004c70 <__printf+0x3f8>
    80004e8c:	00400793          	li	a5,4
    80004e90:	00300c93          	li	s9,3
    80004e94:	dddff06f          	j	80004c70 <__printf+0x3f8>
    80004e98:	00400793          	li	a5,4
    80004e9c:	00300c93          	li	s9,3
    80004ea0:	c39ff06f          	j	80004ad8 <__printf+0x260>
    80004ea4:	00500793          	li	a5,5
    80004ea8:	00400c93          	li	s9,4
    80004eac:	c2dff06f          	j	80004ad8 <__printf+0x260>
    80004eb0:	00500793          	li	a5,5
    80004eb4:	00400c93          	li	s9,4
    80004eb8:	db9ff06f          	j	80004c70 <__printf+0x3f8>
    80004ebc:	00600793          	li	a5,6
    80004ec0:	00500c93          	li	s9,5
    80004ec4:	dadff06f          	j	80004c70 <__printf+0x3f8>
    80004ec8:	00600793          	li	a5,6
    80004ecc:	00500c93          	li	s9,5
    80004ed0:	c09ff06f          	j	80004ad8 <__printf+0x260>
    80004ed4:	00800793          	li	a5,8
    80004ed8:	00700c93          	li	s9,7
    80004edc:	bfdff06f          	j	80004ad8 <__printf+0x260>
    80004ee0:	00100793          	li	a5,1
    80004ee4:	d91ff06f          	j	80004c74 <__printf+0x3fc>
    80004ee8:	00100793          	li	a5,1
    80004eec:	bf1ff06f          	j	80004adc <__printf+0x264>
    80004ef0:	00900793          	li	a5,9
    80004ef4:	00800c93          	li	s9,8
    80004ef8:	be1ff06f          	j	80004ad8 <__printf+0x260>
    80004efc:	00001517          	auipc	a0,0x1
    80004f00:	3e450513          	addi	a0,a0,996 # 800062e0 <CONSOLE_STATUS+0x2d0>
    80004f04:	00000097          	auipc	ra,0x0
    80004f08:	918080e7          	jalr	-1768(ra) # 8000481c <panic>

0000000080004f0c <printfinit>:
    80004f0c:	fe010113          	addi	sp,sp,-32
    80004f10:	00813823          	sd	s0,16(sp)
    80004f14:	00913423          	sd	s1,8(sp)
    80004f18:	00113c23          	sd	ra,24(sp)
    80004f1c:	02010413          	addi	s0,sp,32
    80004f20:	00003497          	auipc	s1,0x3
    80004f24:	63048493          	addi	s1,s1,1584 # 80008550 <pr>
    80004f28:	00048513          	mv	a0,s1
    80004f2c:	00001597          	auipc	a1,0x1
    80004f30:	3c458593          	addi	a1,a1,964 # 800062f0 <CONSOLE_STATUS+0x2e0>
    80004f34:	00000097          	auipc	ra,0x0
    80004f38:	5f4080e7          	jalr	1524(ra) # 80005528 <initlock>
    80004f3c:	01813083          	ld	ra,24(sp)
    80004f40:	01013403          	ld	s0,16(sp)
    80004f44:	0004ac23          	sw	zero,24(s1)
    80004f48:	00813483          	ld	s1,8(sp)
    80004f4c:	02010113          	addi	sp,sp,32
    80004f50:	00008067          	ret

0000000080004f54 <uartinit>:
    80004f54:	ff010113          	addi	sp,sp,-16
    80004f58:	00813423          	sd	s0,8(sp)
    80004f5c:	01010413          	addi	s0,sp,16
    80004f60:	100007b7          	lui	a5,0x10000
    80004f64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004f68:	f8000713          	li	a4,-128
    80004f6c:	00e781a3          	sb	a4,3(a5)
    80004f70:	00300713          	li	a4,3
    80004f74:	00e78023          	sb	a4,0(a5)
    80004f78:	000780a3          	sb	zero,1(a5)
    80004f7c:	00e781a3          	sb	a4,3(a5)
    80004f80:	00700693          	li	a3,7
    80004f84:	00d78123          	sb	a3,2(a5)
    80004f88:	00e780a3          	sb	a4,1(a5)
    80004f8c:	00813403          	ld	s0,8(sp)
    80004f90:	01010113          	addi	sp,sp,16
    80004f94:	00008067          	ret

0000000080004f98 <uartputc>:
    80004f98:	00002797          	auipc	a5,0x2
    80004f9c:	3207a783          	lw	a5,800(a5) # 800072b8 <panicked>
    80004fa0:	00078463          	beqz	a5,80004fa8 <uartputc+0x10>
    80004fa4:	0000006f          	j	80004fa4 <uartputc+0xc>
    80004fa8:	fd010113          	addi	sp,sp,-48
    80004fac:	02813023          	sd	s0,32(sp)
    80004fb0:	00913c23          	sd	s1,24(sp)
    80004fb4:	01213823          	sd	s2,16(sp)
    80004fb8:	01313423          	sd	s3,8(sp)
    80004fbc:	02113423          	sd	ra,40(sp)
    80004fc0:	03010413          	addi	s0,sp,48
    80004fc4:	00002917          	auipc	s2,0x2
    80004fc8:	2fc90913          	addi	s2,s2,764 # 800072c0 <uart_tx_r>
    80004fcc:	00093783          	ld	a5,0(s2)
    80004fd0:	00002497          	auipc	s1,0x2
    80004fd4:	2f848493          	addi	s1,s1,760 # 800072c8 <uart_tx_w>
    80004fd8:	0004b703          	ld	a4,0(s1)
    80004fdc:	02078693          	addi	a3,a5,32
    80004fe0:	00050993          	mv	s3,a0
    80004fe4:	02e69c63          	bne	a3,a4,8000501c <uartputc+0x84>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	834080e7          	jalr	-1996(ra) # 8000581c <push_on>
    80004ff0:	00093783          	ld	a5,0(s2)
    80004ff4:	0004b703          	ld	a4,0(s1)
    80004ff8:	02078793          	addi	a5,a5,32
    80004ffc:	00e79463          	bne	a5,a4,80005004 <uartputc+0x6c>
    80005000:	0000006f          	j	80005000 <uartputc+0x68>
    80005004:	00001097          	auipc	ra,0x1
    80005008:	88c080e7          	jalr	-1908(ra) # 80005890 <pop_on>
    8000500c:	00093783          	ld	a5,0(s2)
    80005010:	0004b703          	ld	a4,0(s1)
    80005014:	02078693          	addi	a3,a5,32
    80005018:	fce688e3          	beq	a3,a4,80004fe8 <uartputc+0x50>
    8000501c:	01f77693          	andi	a3,a4,31
    80005020:	00003597          	auipc	a1,0x3
    80005024:	55058593          	addi	a1,a1,1360 # 80008570 <uart_tx_buf>
    80005028:	00d586b3          	add	a3,a1,a3
    8000502c:	00170713          	addi	a4,a4,1
    80005030:	01368023          	sb	s3,0(a3)
    80005034:	00e4b023          	sd	a4,0(s1)
    80005038:	10000637          	lui	a2,0x10000
    8000503c:	02f71063          	bne	a4,a5,8000505c <uartputc+0xc4>
    80005040:	0340006f          	j	80005074 <uartputc+0xdc>
    80005044:	00074703          	lbu	a4,0(a4)
    80005048:	00f93023          	sd	a5,0(s2)
    8000504c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005050:	00093783          	ld	a5,0(s2)
    80005054:	0004b703          	ld	a4,0(s1)
    80005058:	00f70e63          	beq	a4,a5,80005074 <uartputc+0xdc>
    8000505c:	00564683          	lbu	a3,5(a2)
    80005060:	01f7f713          	andi	a4,a5,31
    80005064:	00e58733          	add	a4,a1,a4
    80005068:	0206f693          	andi	a3,a3,32
    8000506c:	00178793          	addi	a5,a5,1
    80005070:	fc069ae3          	bnez	a3,80005044 <uartputc+0xac>
    80005074:	02813083          	ld	ra,40(sp)
    80005078:	02013403          	ld	s0,32(sp)
    8000507c:	01813483          	ld	s1,24(sp)
    80005080:	01013903          	ld	s2,16(sp)
    80005084:	00813983          	ld	s3,8(sp)
    80005088:	03010113          	addi	sp,sp,48
    8000508c:	00008067          	ret

0000000080005090 <uartputc_sync>:
    80005090:	ff010113          	addi	sp,sp,-16
    80005094:	00813423          	sd	s0,8(sp)
    80005098:	01010413          	addi	s0,sp,16
    8000509c:	00002717          	auipc	a4,0x2
    800050a0:	21c72703          	lw	a4,540(a4) # 800072b8 <panicked>
    800050a4:	02071663          	bnez	a4,800050d0 <uartputc_sync+0x40>
    800050a8:	00050793          	mv	a5,a0
    800050ac:	100006b7          	lui	a3,0x10000
    800050b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800050b4:	02077713          	andi	a4,a4,32
    800050b8:	fe070ce3          	beqz	a4,800050b0 <uartputc_sync+0x20>
    800050bc:	0ff7f793          	andi	a5,a5,255
    800050c0:	00f68023          	sb	a5,0(a3)
    800050c4:	00813403          	ld	s0,8(sp)
    800050c8:	01010113          	addi	sp,sp,16
    800050cc:	00008067          	ret
    800050d0:	0000006f          	j	800050d0 <uartputc_sync+0x40>

00000000800050d4 <uartstart>:
    800050d4:	ff010113          	addi	sp,sp,-16
    800050d8:	00813423          	sd	s0,8(sp)
    800050dc:	01010413          	addi	s0,sp,16
    800050e0:	00002617          	auipc	a2,0x2
    800050e4:	1e060613          	addi	a2,a2,480 # 800072c0 <uart_tx_r>
    800050e8:	00002517          	auipc	a0,0x2
    800050ec:	1e050513          	addi	a0,a0,480 # 800072c8 <uart_tx_w>
    800050f0:	00063783          	ld	a5,0(a2)
    800050f4:	00053703          	ld	a4,0(a0)
    800050f8:	04f70263          	beq	a4,a5,8000513c <uartstart+0x68>
    800050fc:	100005b7          	lui	a1,0x10000
    80005100:	00003817          	auipc	a6,0x3
    80005104:	47080813          	addi	a6,a6,1136 # 80008570 <uart_tx_buf>
    80005108:	01c0006f          	j	80005124 <uartstart+0x50>
    8000510c:	0006c703          	lbu	a4,0(a3)
    80005110:	00f63023          	sd	a5,0(a2)
    80005114:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005118:	00063783          	ld	a5,0(a2)
    8000511c:	00053703          	ld	a4,0(a0)
    80005120:	00f70e63          	beq	a4,a5,8000513c <uartstart+0x68>
    80005124:	01f7f713          	andi	a4,a5,31
    80005128:	00e806b3          	add	a3,a6,a4
    8000512c:	0055c703          	lbu	a4,5(a1)
    80005130:	00178793          	addi	a5,a5,1
    80005134:	02077713          	andi	a4,a4,32
    80005138:	fc071ae3          	bnez	a4,8000510c <uartstart+0x38>
    8000513c:	00813403          	ld	s0,8(sp)
    80005140:	01010113          	addi	sp,sp,16
    80005144:	00008067          	ret

0000000080005148 <uartgetc>:
    80005148:	ff010113          	addi	sp,sp,-16
    8000514c:	00813423          	sd	s0,8(sp)
    80005150:	01010413          	addi	s0,sp,16
    80005154:	10000737          	lui	a4,0x10000
    80005158:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000515c:	0017f793          	andi	a5,a5,1
    80005160:	00078c63          	beqz	a5,80005178 <uartgetc+0x30>
    80005164:	00074503          	lbu	a0,0(a4)
    80005168:	0ff57513          	andi	a0,a0,255
    8000516c:	00813403          	ld	s0,8(sp)
    80005170:	01010113          	addi	sp,sp,16
    80005174:	00008067          	ret
    80005178:	fff00513          	li	a0,-1
    8000517c:	ff1ff06f          	j	8000516c <uartgetc+0x24>

0000000080005180 <uartintr>:
    80005180:	100007b7          	lui	a5,0x10000
    80005184:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005188:	0017f793          	andi	a5,a5,1
    8000518c:	0a078463          	beqz	a5,80005234 <uartintr+0xb4>
    80005190:	fe010113          	addi	sp,sp,-32
    80005194:	00813823          	sd	s0,16(sp)
    80005198:	00913423          	sd	s1,8(sp)
    8000519c:	00113c23          	sd	ra,24(sp)
    800051a0:	02010413          	addi	s0,sp,32
    800051a4:	100004b7          	lui	s1,0x10000
    800051a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800051ac:	0ff57513          	andi	a0,a0,255
    800051b0:	fffff097          	auipc	ra,0xfffff
    800051b4:	534080e7          	jalr	1332(ra) # 800046e4 <consoleintr>
    800051b8:	0054c783          	lbu	a5,5(s1)
    800051bc:	0017f793          	andi	a5,a5,1
    800051c0:	fe0794e3          	bnez	a5,800051a8 <uartintr+0x28>
    800051c4:	00002617          	auipc	a2,0x2
    800051c8:	0fc60613          	addi	a2,a2,252 # 800072c0 <uart_tx_r>
    800051cc:	00002517          	auipc	a0,0x2
    800051d0:	0fc50513          	addi	a0,a0,252 # 800072c8 <uart_tx_w>
    800051d4:	00063783          	ld	a5,0(a2)
    800051d8:	00053703          	ld	a4,0(a0)
    800051dc:	04f70263          	beq	a4,a5,80005220 <uartintr+0xa0>
    800051e0:	100005b7          	lui	a1,0x10000
    800051e4:	00003817          	auipc	a6,0x3
    800051e8:	38c80813          	addi	a6,a6,908 # 80008570 <uart_tx_buf>
    800051ec:	01c0006f          	j	80005208 <uartintr+0x88>
    800051f0:	0006c703          	lbu	a4,0(a3)
    800051f4:	00f63023          	sd	a5,0(a2)
    800051f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800051fc:	00063783          	ld	a5,0(a2)
    80005200:	00053703          	ld	a4,0(a0)
    80005204:	00f70e63          	beq	a4,a5,80005220 <uartintr+0xa0>
    80005208:	01f7f713          	andi	a4,a5,31
    8000520c:	00e806b3          	add	a3,a6,a4
    80005210:	0055c703          	lbu	a4,5(a1)
    80005214:	00178793          	addi	a5,a5,1
    80005218:	02077713          	andi	a4,a4,32
    8000521c:	fc071ae3          	bnez	a4,800051f0 <uartintr+0x70>
    80005220:	01813083          	ld	ra,24(sp)
    80005224:	01013403          	ld	s0,16(sp)
    80005228:	00813483          	ld	s1,8(sp)
    8000522c:	02010113          	addi	sp,sp,32
    80005230:	00008067          	ret
    80005234:	00002617          	auipc	a2,0x2
    80005238:	08c60613          	addi	a2,a2,140 # 800072c0 <uart_tx_r>
    8000523c:	00002517          	auipc	a0,0x2
    80005240:	08c50513          	addi	a0,a0,140 # 800072c8 <uart_tx_w>
    80005244:	00063783          	ld	a5,0(a2)
    80005248:	00053703          	ld	a4,0(a0)
    8000524c:	04f70263          	beq	a4,a5,80005290 <uartintr+0x110>
    80005250:	100005b7          	lui	a1,0x10000
    80005254:	00003817          	auipc	a6,0x3
    80005258:	31c80813          	addi	a6,a6,796 # 80008570 <uart_tx_buf>
    8000525c:	01c0006f          	j	80005278 <uartintr+0xf8>
    80005260:	0006c703          	lbu	a4,0(a3)
    80005264:	00f63023          	sd	a5,0(a2)
    80005268:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000526c:	00063783          	ld	a5,0(a2)
    80005270:	00053703          	ld	a4,0(a0)
    80005274:	02f70063          	beq	a4,a5,80005294 <uartintr+0x114>
    80005278:	01f7f713          	andi	a4,a5,31
    8000527c:	00e806b3          	add	a3,a6,a4
    80005280:	0055c703          	lbu	a4,5(a1)
    80005284:	00178793          	addi	a5,a5,1
    80005288:	02077713          	andi	a4,a4,32
    8000528c:	fc071ae3          	bnez	a4,80005260 <uartintr+0xe0>
    80005290:	00008067          	ret
    80005294:	00008067          	ret

0000000080005298 <kinit>:
    80005298:	fc010113          	addi	sp,sp,-64
    8000529c:	02913423          	sd	s1,40(sp)
    800052a0:	fffff7b7          	lui	a5,0xfffff
    800052a4:	00004497          	auipc	s1,0x4
    800052a8:	2eb48493          	addi	s1,s1,747 # 8000958f <end+0xfff>
    800052ac:	02813823          	sd	s0,48(sp)
    800052b0:	01313c23          	sd	s3,24(sp)
    800052b4:	00f4f4b3          	and	s1,s1,a5
    800052b8:	02113c23          	sd	ra,56(sp)
    800052bc:	03213023          	sd	s2,32(sp)
    800052c0:	01413823          	sd	s4,16(sp)
    800052c4:	01513423          	sd	s5,8(sp)
    800052c8:	04010413          	addi	s0,sp,64
    800052cc:	000017b7          	lui	a5,0x1
    800052d0:	01100993          	li	s3,17
    800052d4:	00f487b3          	add	a5,s1,a5
    800052d8:	01b99993          	slli	s3,s3,0x1b
    800052dc:	06f9e063          	bltu	s3,a5,8000533c <kinit+0xa4>
    800052e0:	00003a97          	auipc	s5,0x3
    800052e4:	2b0a8a93          	addi	s5,s5,688 # 80008590 <end>
    800052e8:	0754ec63          	bltu	s1,s5,80005360 <kinit+0xc8>
    800052ec:	0734fa63          	bgeu	s1,s3,80005360 <kinit+0xc8>
    800052f0:	00088a37          	lui	s4,0x88
    800052f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800052f8:	00002917          	auipc	s2,0x2
    800052fc:	fd890913          	addi	s2,s2,-40 # 800072d0 <kmem>
    80005300:	00ca1a13          	slli	s4,s4,0xc
    80005304:	0140006f          	j	80005318 <kinit+0x80>
    80005308:	000017b7          	lui	a5,0x1
    8000530c:	00f484b3          	add	s1,s1,a5
    80005310:	0554e863          	bltu	s1,s5,80005360 <kinit+0xc8>
    80005314:	0534f663          	bgeu	s1,s3,80005360 <kinit+0xc8>
    80005318:	00001637          	lui	a2,0x1
    8000531c:	00100593          	li	a1,1
    80005320:	00048513          	mv	a0,s1
    80005324:	00000097          	auipc	ra,0x0
    80005328:	5e4080e7          	jalr	1508(ra) # 80005908 <__memset>
    8000532c:	00093783          	ld	a5,0(s2)
    80005330:	00f4b023          	sd	a5,0(s1)
    80005334:	00993023          	sd	s1,0(s2)
    80005338:	fd4498e3          	bne	s1,s4,80005308 <kinit+0x70>
    8000533c:	03813083          	ld	ra,56(sp)
    80005340:	03013403          	ld	s0,48(sp)
    80005344:	02813483          	ld	s1,40(sp)
    80005348:	02013903          	ld	s2,32(sp)
    8000534c:	01813983          	ld	s3,24(sp)
    80005350:	01013a03          	ld	s4,16(sp)
    80005354:	00813a83          	ld	s5,8(sp)
    80005358:	04010113          	addi	sp,sp,64
    8000535c:	00008067          	ret
    80005360:	00001517          	auipc	a0,0x1
    80005364:	fb050513          	addi	a0,a0,-80 # 80006310 <digits+0x18>
    80005368:	fffff097          	auipc	ra,0xfffff
    8000536c:	4b4080e7          	jalr	1204(ra) # 8000481c <panic>

0000000080005370 <freerange>:
    80005370:	fc010113          	addi	sp,sp,-64
    80005374:	000017b7          	lui	a5,0x1
    80005378:	02913423          	sd	s1,40(sp)
    8000537c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005380:	009504b3          	add	s1,a0,s1
    80005384:	fffff537          	lui	a0,0xfffff
    80005388:	02813823          	sd	s0,48(sp)
    8000538c:	02113c23          	sd	ra,56(sp)
    80005390:	03213023          	sd	s2,32(sp)
    80005394:	01313c23          	sd	s3,24(sp)
    80005398:	01413823          	sd	s4,16(sp)
    8000539c:	01513423          	sd	s5,8(sp)
    800053a0:	01613023          	sd	s6,0(sp)
    800053a4:	04010413          	addi	s0,sp,64
    800053a8:	00a4f4b3          	and	s1,s1,a0
    800053ac:	00f487b3          	add	a5,s1,a5
    800053b0:	06f5e463          	bltu	a1,a5,80005418 <freerange+0xa8>
    800053b4:	00003a97          	auipc	s5,0x3
    800053b8:	1dca8a93          	addi	s5,s5,476 # 80008590 <end>
    800053bc:	0954e263          	bltu	s1,s5,80005440 <freerange+0xd0>
    800053c0:	01100993          	li	s3,17
    800053c4:	01b99993          	slli	s3,s3,0x1b
    800053c8:	0734fc63          	bgeu	s1,s3,80005440 <freerange+0xd0>
    800053cc:	00058a13          	mv	s4,a1
    800053d0:	00002917          	auipc	s2,0x2
    800053d4:	f0090913          	addi	s2,s2,-256 # 800072d0 <kmem>
    800053d8:	00002b37          	lui	s6,0x2
    800053dc:	0140006f          	j	800053f0 <freerange+0x80>
    800053e0:	000017b7          	lui	a5,0x1
    800053e4:	00f484b3          	add	s1,s1,a5
    800053e8:	0554ec63          	bltu	s1,s5,80005440 <freerange+0xd0>
    800053ec:	0534fa63          	bgeu	s1,s3,80005440 <freerange+0xd0>
    800053f0:	00001637          	lui	a2,0x1
    800053f4:	00100593          	li	a1,1
    800053f8:	00048513          	mv	a0,s1
    800053fc:	00000097          	auipc	ra,0x0
    80005400:	50c080e7          	jalr	1292(ra) # 80005908 <__memset>
    80005404:	00093703          	ld	a4,0(s2)
    80005408:	016487b3          	add	a5,s1,s6
    8000540c:	00e4b023          	sd	a4,0(s1)
    80005410:	00993023          	sd	s1,0(s2)
    80005414:	fcfa76e3          	bgeu	s4,a5,800053e0 <freerange+0x70>
    80005418:	03813083          	ld	ra,56(sp)
    8000541c:	03013403          	ld	s0,48(sp)
    80005420:	02813483          	ld	s1,40(sp)
    80005424:	02013903          	ld	s2,32(sp)
    80005428:	01813983          	ld	s3,24(sp)
    8000542c:	01013a03          	ld	s4,16(sp)
    80005430:	00813a83          	ld	s5,8(sp)
    80005434:	00013b03          	ld	s6,0(sp)
    80005438:	04010113          	addi	sp,sp,64
    8000543c:	00008067          	ret
    80005440:	00001517          	auipc	a0,0x1
    80005444:	ed050513          	addi	a0,a0,-304 # 80006310 <digits+0x18>
    80005448:	fffff097          	auipc	ra,0xfffff
    8000544c:	3d4080e7          	jalr	980(ra) # 8000481c <panic>

0000000080005450 <kfree>:
    80005450:	fe010113          	addi	sp,sp,-32
    80005454:	00813823          	sd	s0,16(sp)
    80005458:	00113c23          	sd	ra,24(sp)
    8000545c:	00913423          	sd	s1,8(sp)
    80005460:	02010413          	addi	s0,sp,32
    80005464:	03451793          	slli	a5,a0,0x34
    80005468:	04079c63          	bnez	a5,800054c0 <kfree+0x70>
    8000546c:	00003797          	auipc	a5,0x3
    80005470:	12478793          	addi	a5,a5,292 # 80008590 <end>
    80005474:	00050493          	mv	s1,a0
    80005478:	04f56463          	bltu	a0,a5,800054c0 <kfree+0x70>
    8000547c:	01100793          	li	a5,17
    80005480:	01b79793          	slli	a5,a5,0x1b
    80005484:	02f57e63          	bgeu	a0,a5,800054c0 <kfree+0x70>
    80005488:	00001637          	lui	a2,0x1
    8000548c:	00100593          	li	a1,1
    80005490:	00000097          	auipc	ra,0x0
    80005494:	478080e7          	jalr	1144(ra) # 80005908 <__memset>
    80005498:	00002797          	auipc	a5,0x2
    8000549c:	e3878793          	addi	a5,a5,-456 # 800072d0 <kmem>
    800054a0:	0007b703          	ld	a4,0(a5)
    800054a4:	01813083          	ld	ra,24(sp)
    800054a8:	01013403          	ld	s0,16(sp)
    800054ac:	00e4b023          	sd	a4,0(s1)
    800054b0:	0097b023          	sd	s1,0(a5)
    800054b4:	00813483          	ld	s1,8(sp)
    800054b8:	02010113          	addi	sp,sp,32
    800054bc:	00008067          	ret
    800054c0:	00001517          	auipc	a0,0x1
    800054c4:	e5050513          	addi	a0,a0,-432 # 80006310 <digits+0x18>
    800054c8:	fffff097          	auipc	ra,0xfffff
    800054cc:	354080e7          	jalr	852(ra) # 8000481c <panic>

00000000800054d0 <kalloc>:
    800054d0:	fe010113          	addi	sp,sp,-32
    800054d4:	00813823          	sd	s0,16(sp)
    800054d8:	00913423          	sd	s1,8(sp)
    800054dc:	00113c23          	sd	ra,24(sp)
    800054e0:	02010413          	addi	s0,sp,32
    800054e4:	00002797          	auipc	a5,0x2
    800054e8:	dec78793          	addi	a5,a5,-532 # 800072d0 <kmem>
    800054ec:	0007b483          	ld	s1,0(a5)
    800054f0:	02048063          	beqz	s1,80005510 <kalloc+0x40>
    800054f4:	0004b703          	ld	a4,0(s1)
    800054f8:	00001637          	lui	a2,0x1
    800054fc:	00500593          	li	a1,5
    80005500:	00048513          	mv	a0,s1
    80005504:	00e7b023          	sd	a4,0(a5)
    80005508:	00000097          	auipc	ra,0x0
    8000550c:	400080e7          	jalr	1024(ra) # 80005908 <__memset>
    80005510:	01813083          	ld	ra,24(sp)
    80005514:	01013403          	ld	s0,16(sp)
    80005518:	00048513          	mv	a0,s1
    8000551c:	00813483          	ld	s1,8(sp)
    80005520:	02010113          	addi	sp,sp,32
    80005524:	00008067          	ret

0000000080005528 <initlock>:
    80005528:	ff010113          	addi	sp,sp,-16
    8000552c:	00813423          	sd	s0,8(sp)
    80005530:	01010413          	addi	s0,sp,16
    80005534:	00813403          	ld	s0,8(sp)
    80005538:	00b53423          	sd	a1,8(a0)
    8000553c:	00052023          	sw	zero,0(a0)
    80005540:	00053823          	sd	zero,16(a0)
    80005544:	01010113          	addi	sp,sp,16
    80005548:	00008067          	ret

000000008000554c <acquire>:
    8000554c:	fe010113          	addi	sp,sp,-32
    80005550:	00813823          	sd	s0,16(sp)
    80005554:	00913423          	sd	s1,8(sp)
    80005558:	00113c23          	sd	ra,24(sp)
    8000555c:	01213023          	sd	s2,0(sp)
    80005560:	02010413          	addi	s0,sp,32
    80005564:	00050493          	mv	s1,a0
    80005568:	10002973          	csrr	s2,sstatus
    8000556c:	100027f3          	csrr	a5,sstatus
    80005570:	ffd7f793          	andi	a5,a5,-3
    80005574:	10079073          	csrw	sstatus,a5
    80005578:	fffff097          	auipc	ra,0xfffff
    8000557c:	8ec080e7          	jalr	-1812(ra) # 80003e64 <mycpu>
    80005580:	07852783          	lw	a5,120(a0)
    80005584:	06078e63          	beqz	a5,80005600 <acquire+0xb4>
    80005588:	fffff097          	auipc	ra,0xfffff
    8000558c:	8dc080e7          	jalr	-1828(ra) # 80003e64 <mycpu>
    80005590:	07852783          	lw	a5,120(a0)
    80005594:	0004a703          	lw	a4,0(s1)
    80005598:	0017879b          	addiw	a5,a5,1
    8000559c:	06f52c23          	sw	a5,120(a0)
    800055a0:	04071063          	bnez	a4,800055e0 <acquire+0x94>
    800055a4:	00100713          	li	a4,1
    800055a8:	00070793          	mv	a5,a4
    800055ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800055b0:	0007879b          	sext.w	a5,a5
    800055b4:	fe079ae3          	bnez	a5,800055a8 <acquire+0x5c>
    800055b8:	0ff0000f          	fence
    800055bc:	fffff097          	auipc	ra,0xfffff
    800055c0:	8a8080e7          	jalr	-1880(ra) # 80003e64 <mycpu>
    800055c4:	01813083          	ld	ra,24(sp)
    800055c8:	01013403          	ld	s0,16(sp)
    800055cc:	00a4b823          	sd	a0,16(s1)
    800055d0:	00013903          	ld	s2,0(sp)
    800055d4:	00813483          	ld	s1,8(sp)
    800055d8:	02010113          	addi	sp,sp,32
    800055dc:	00008067          	ret
    800055e0:	0104b903          	ld	s2,16(s1)
    800055e4:	fffff097          	auipc	ra,0xfffff
    800055e8:	880080e7          	jalr	-1920(ra) # 80003e64 <mycpu>
    800055ec:	faa91ce3          	bne	s2,a0,800055a4 <acquire+0x58>
    800055f0:	00001517          	auipc	a0,0x1
    800055f4:	d2850513          	addi	a0,a0,-728 # 80006318 <digits+0x20>
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	224080e7          	jalr	548(ra) # 8000481c <panic>
    80005600:	00195913          	srli	s2,s2,0x1
    80005604:	fffff097          	auipc	ra,0xfffff
    80005608:	860080e7          	jalr	-1952(ra) # 80003e64 <mycpu>
    8000560c:	00197913          	andi	s2,s2,1
    80005610:	07252e23          	sw	s2,124(a0)
    80005614:	f75ff06f          	j	80005588 <acquire+0x3c>

0000000080005618 <release>:
    80005618:	fe010113          	addi	sp,sp,-32
    8000561c:	00813823          	sd	s0,16(sp)
    80005620:	00113c23          	sd	ra,24(sp)
    80005624:	00913423          	sd	s1,8(sp)
    80005628:	01213023          	sd	s2,0(sp)
    8000562c:	02010413          	addi	s0,sp,32
    80005630:	00052783          	lw	a5,0(a0)
    80005634:	00079a63          	bnez	a5,80005648 <release+0x30>
    80005638:	00001517          	auipc	a0,0x1
    8000563c:	ce850513          	addi	a0,a0,-792 # 80006320 <digits+0x28>
    80005640:	fffff097          	auipc	ra,0xfffff
    80005644:	1dc080e7          	jalr	476(ra) # 8000481c <panic>
    80005648:	01053903          	ld	s2,16(a0)
    8000564c:	00050493          	mv	s1,a0
    80005650:	fffff097          	auipc	ra,0xfffff
    80005654:	814080e7          	jalr	-2028(ra) # 80003e64 <mycpu>
    80005658:	fea910e3          	bne	s2,a0,80005638 <release+0x20>
    8000565c:	0004b823          	sd	zero,16(s1)
    80005660:	0ff0000f          	fence
    80005664:	0f50000f          	fence	iorw,ow
    80005668:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000566c:	ffffe097          	auipc	ra,0xffffe
    80005670:	7f8080e7          	jalr	2040(ra) # 80003e64 <mycpu>
    80005674:	100027f3          	csrr	a5,sstatus
    80005678:	0027f793          	andi	a5,a5,2
    8000567c:	04079a63          	bnez	a5,800056d0 <release+0xb8>
    80005680:	07852783          	lw	a5,120(a0)
    80005684:	02f05e63          	blez	a5,800056c0 <release+0xa8>
    80005688:	fff7871b          	addiw	a4,a5,-1
    8000568c:	06e52c23          	sw	a4,120(a0)
    80005690:	00071c63          	bnez	a4,800056a8 <release+0x90>
    80005694:	07c52783          	lw	a5,124(a0)
    80005698:	00078863          	beqz	a5,800056a8 <release+0x90>
    8000569c:	100027f3          	csrr	a5,sstatus
    800056a0:	0027e793          	ori	a5,a5,2
    800056a4:	10079073          	csrw	sstatus,a5
    800056a8:	01813083          	ld	ra,24(sp)
    800056ac:	01013403          	ld	s0,16(sp)
    800056b0:	00813483          	ld	s1,8(sp)
    800056b4:	00013903          	ld	s2,0(sp)
    800056b8:	02010113          	addi	sp,sp,32
    800056bc:	00008067          	ret
    800056c0:	00001517          	auipc	a0,0x1
    800056c4:	c8050513          	addi	a0,a0,-896 # 80006340 <digits+0x48>
    800056c8:	fffff097          	auipc	ra,0xfffff
    800056cc:	154080e7          	jalr	340(ra) # 8000481c <panic>
    800056d0:	00001517          	auipc	a0,0x1
    800056d4:	c5850513          	addi	a0,a0,-936 # 80006328 <digits+0x30>
    800056d8:	fffff097          	auipc	ra,0xfffff
    800056dc:	144080e7          	jalr	324(ra) # 8000481c <panic>

00000000800056e0 <holding>:
    800056e0:	00052783          	lw	a5,0(a0)
    800056e4:	00079663          	bnez	a5,800056f0 <holding+0x10>
    800056e8:	00000513          	li	a0,0
    800056ec:	00008067          	ret
    800056f0:	fe010113          	addi	sp,sp,-32
    800056f4:	00813823          	sd	s0,16(sp)
    800056f8:	00913423          	sd	s1,8(sp)
    800056fc:	00113c23          	sd	ra,24(sp)
    80005700:	02010413          	addi	s0,sp,32
    80005704:	01053483          	ld	s1,16(a0)
    80005708:	ffffe097          	auipc	ra,0xffffe
    8000570c:	75c080e7          	jalr	1884(ra) # 80003e64 <mycpu>
    80005710:	01813083          	ld	ra,24(sp)
    80005714:	01013403          	ld	s0,16(sp)
    80005718:	40a48533          	sub	a0,s1,a0
    8000571c:	00153513          	seqz	a0,a0
    80005720:	00813483          	ld	s1,8(sp)
    80005724:	02010113          	addi	sp,sp,32
    80005728:	00008067          	ret

000000008000572c <push_off>:
    8000572c:	fe010113          	addi	sp,sp,-32
    80005730:	00813823          	sd	s0,16(sp)
    80005734:	00113c23          	sd	ra,24(sp)
    80005738:	00913423          	sd	s1,8(sp)
    8000573c:	02010413          	addi	s0,sp,32
    80005740:	100024f3          	csrr	s1,sstatus
    80005744:	100027f3          	csrr	a5,sstatus
    80005748:	ffd7f793          	andi	a5,a5,-3
    8000574c:	10079073          	csrw	sstatus,a5
    80005750:	ffffe097          	auipc	ra,0xffffe
    80005754:	714080e7          	jalr	1812(ra) # 80003e64 <mycpu>
    80005758:	07852783          	lw	a5,120(a0)
    8000575c:	02078663          	beqz	a5,80005788 <push_off+0x5c>
    80005760:	ffffe097          	auipc	ra,0xffffe
    80005764:	704080e7          	jalr	1796(ra) # 80003e64 <mycpu>
    80005768:	07852783          	lw	a5,120(a0)
    8000576c:	01813083          	ld	ra,24(sp)
    80005770:	01013403          	ld	s0,16(sp)
    80005774:	0017879b          	addiw	a5,a5,1
    80005778:	06f52c23          	sw	a5,120(a0)
    8000577c:	00813483          	ld	s1,8(sp)
    80005780:	02010113          	addi	sp,sp,32
    80005784:	00008067          	ret
    80005788:	0014d493          	srli	s1,s1,0x1
    8000578c:	ffffe097          	auipc	ra,0xffffe
    80005790:	6d8080e7          	jalr	1752(ra) # 80003e64 <mycpu>
    80005794:	0014f493          	andi	s1,s1,1
    80005798:	06952e23          	sw	s1,124(a0)
    8000579c:	fc5ff06f          	j	80005760 <push_off+0x34>

00000000800057a0 <pop_off>:
    800057a0:	ff010113          	addi	sp,sp,-16
    800057a4:	00813023          	sd	s0,0(sp)
    800057a8:	00113423          	sd	ra,8(sp)
    800057ac:	01010413          	addi	s0,sp,16
    800057b0:	ffffe097          	auipc	ra,0xffffe
    800057b4:	6b4080e7          	jalr	1716(ra) # 80003e64 <mycpu>
    800057b8:	100027f3          	csrr	a5,sstatus
    800057bc:	0027f793          	andi	a5,a5,2
    800057c0:	04079663          	bnez	a5,8000580c <pop_off+0x6c>
    800057c4:	07852783          	lw	a5,120(a0)
    800057c8:	02f05a63          	blez	a5,800057fc <pop_off+0x5c>
    800057cc:	fff7871b          	addiw	a4,a5,-1
    800057d0:	06e52c23          	sw	a4,120(a0)
    800057d4:	00071c63          	bnez	a4,800057ec <pop_off+0x4c>
    800057d8:	07c52783          	lw	a5,124(a0)
    800057dc:	00078863          	beqz	a5,800057ec <pop_off+0x4c>
    800057e0:	100027f3          	csrr	a5,sstatus
    800057e4:	0027e793          	ori	a5,a5,2
    800057e8:	10079073          	csrw	sstatus,a5
    800057ec:	00813083          	ld	ra,8(sp)
    800057f0:	00013403          	ld	s0,0(sp)
    800057f4:	01010113          	addi	sp,sp,16
    800057f8:	00008067          	ret
    800057fc:	00001517          	auipc	a0,0x1
    80005800:	b4450513          	addi	a0,a0,-1212 # 80006340 <digits+0x48>
    80005804:	fffff097          	auipc	ra,0xfffff
    80005808:	018080e7          	jalr	24(ra) # 8000481c <panic>
    8000580c:	00001517          	auipc	a0,0x1
    80005810:	b1c50513          	addi	a0,a0,-1252 # 80006328 <digits+0x30>
    80005814:	fffff097          	auipc	ra,0xfffff
    80005818:	008080e7          	jalr	8(ra) # 8000481c <panic>

000000008000581c <push_on>:
    8000581c:	fe010113          	addi	sp,sp,-32
    80005820:	00813823          	sd	s0,16(sp)
    80005824:	00113c23          	sd	ra,24(sp)
    80005828:	00913423          	sd	s1,8(sp)
    8000582c:	02010413          	addi	s0,sp,32
    80005830:	100024f3          	csrr	s1,sstatus
    80005834:	100027f3          	csrr	a5,sstatus
    80005838:	0027e793          	ori	a5,a5,2
    8000583c:	10079073          	csrw	sstatus,a5
    80005840:	ffffe097          	auipc	ra,0xffffe
    80005844:	624080e7          	jalr	1572(ra) # 80003e64 <mycpu>
    80005848:	07852783          	lw	a5,120(a0)
    8000584c:	02078663          	beqz	a5,80005878 <push_on+0x5c>
    80005850:	ffffe097          	auipc	ra,0xffffe
    80005854:	614080e7          	jalr	1556(ra) # 80003e64 <mycpu>
    80005858:	07852783          	lw	a5,120(a0)
    8000585c:	01813083          	ld	ra,24(sp)
    80005860:	01013403          	ld	s0,16(sp)
    80005864:	0017879b          	addiw	a5,a5,1
    80005868:	06f52c23          	sw	a5,120(a0)
    8000586c:	00813483          	ld	s1,8(sp)
    80005870:	02010113          	addi	sp,sp,32
    80005874:	00008067          	ret
    80005878:	0014d493          	srli	s1,s1,0x1
    8000587c:	ffffe097          	auipc	ra,0xffffe
    80005880:	5e8080e7          	jalr	1512(ra) # 80003e64 <mycpu>
    80005884:	0014f493          	andi	s1,s1,1
    80005888:	06952e23          	sw	s1,124(a0)
    8000588c:	fc5ff06f          	j	80005850 <push_on+0x34>

0000000080005890 <pop_on>:
    80005890:	ff010113          	addi	sp,sp,-16
    80005894:	00813023          	sd	s0,0(sp)
    80005898:	00113423          	sd	ra,8(sp)
    8000589c:	01010413          	addi	s0,sp,16
    800058a0:	ffffe097          	auipc	ra,0xffffe
    800058a4:	5c4080e7          	jalr	1476(ra) # 80003e64 <mycpu>
    800058a8:	100027f3          	csrr	a5,sstatus
    800058ac:	0027f793          	andi	a5,a5,2
    800058b0:	04078463          	beqz	a5,800058f8 <pop_on+0x68>
    800058b4:	07852783          	lw	a5,120(a0)
    800058b8:	02f05863          	blez	a5,800058e8 <pop_on+0x58>
    800058bc:	fff7879b          	addiw	a5,a5,-1
    800058c0:	06f52c23          	sw	a5,120(a0)
    800058c4:	07853783          	ld	a5,120(a0)
    800058c8:	00079863          	bnez	a5,800058d8 <pop_on+0x48>
    800058cc:	100027f3          	csrr	a5,sstatus
    800058d0:	ffd7f793          	andi	a5,a5,-3
    800058d4:	10079073          	csrw	sstatus,a5
    800058d8:	00813083          	ld	ra,8(sp)
    800058dc:	00013403          	ld	s0,0(sp)
    800058e0:	01010113          	addi	sp,sp,16
    800058e4:	00008067          	ret
    800058e8:	00001517          	auipc	a0,0x1
    800058ec:	a8050513          	addi	a0,a0,-1408 # 80006368 <digits+0x70>
    800058f0:	fffff097          	auipc	ra,0xfffff
    800058f4:	f2c080e7          	jalr	-212(ra) # 8000481c <panic>
    800058f8:	00001517          	auipc	a0,0x1
    800058fc:	a5050513          	addi	a0,a0,-1456 # 80006348 <digits+0x50>
    80005900:	fffff097          	auipc	ra,0xfffff
    80005904:	f1c080e7          	jalr	-228(ra) # 8000481c <panic>

0000000080005908 <__memset>:
    80005908:	ff010113          	addi	sp,sp,-16
    8000590c:	00813423          	sd	s0,8(sp)
    80005910:	01010413          	addi	s0,sp,16
    80005914:	1a060e63          	beqz	a2,80005ad0 <__memset+0x1c8>
    80005918:	40a007b3          	neg	a5,a0
    8000591c:	0077f793          	andi	a5,a5,7
    80005920:	00778693          	addi	a3,a5,7
    80005924:	00b00813          	li	a6,11
    80005928:	0ff5f593          	andi	a1,a1,255
    8000592c:	fff6071b          	addiw	a4,a2,-1
    80005930:	1b06e663          	bltu	a3,a6,80005adc <__memset+0x1d4>
    80005934:	1cd76463          	bltu	a4,a3,80005afc <__memset+0x1f4>
    80005938:	1a078e63          	beqz	a5,80005af4 <__memset+0x1ec>
    8000593c:	00b50023          	sb	a1,0(a0)
    80005940:	00100713          	li	a4,1
    80005944:	1ae78463          	beq	a5,a4,80005aec <__memset+0x1e4>
    80005948:	00b500a3          	sb	a1,1(a0)
    8000594c:	00200713          	li	a4,2
    80005950:	1ae78a63          	beq	a5,a4,80005b04 <__memset+0x1fc>
    80005954:	00b50123          	sb	a1,2(a0)
    80005958:	00300713          	li	a4,3
    8000595c:	18e78463          	beq	a5,a4,80005ae4 <__memset+0x1dc>
    80005960:	00b501a3          	sb	a1,3(a0)
    80005964:	00400713          	li	a4,4
    80005968:	1ae78263          	beq	a5,a4,80005b0c <__memset+0x204>
    8000596c:	00b50223          	sb	a1,4(a0)
    80005970:	00500713          	li	a4,5
    80005974:	1ae78063          	beq	a5,a4,80005b14 <__memset+0x20c>
    80005978:	00b502a3          	sb	a1,5(a0)
    8000597c:	00700713          	li	a4,7
    80005980:	18e79e63          	bne	a5,a4,80005b1c <__memset+0x214>
    80005984:	00b50323          	sb	a1,6(a0)
    80005988:	00700e93          	li	t4,7
    8000598c:	00859713          	slli	a4,a1,0x8
    80005990:	00e5e733          	or	a4,a1,a4
    80005994:	01059e13          	slli	t3,a1,0x10
    80005998:	01c76e33          	or	t3,a4,t3
    8000599c:	01859313          	slli	t1,a1,0x18
    800059a0:	006e6333          	or	t1,t3,t1
    800059a4:	02059893          	slli	a7,a1,0x20
    800059a8:	40f60e3b          	subw	t3,a2,a5
    800059ac:	011368b3          	or	a7,t1,a7
    800059b0:	02859813          	slli	a6,a1,0x28
    800059b4:	0108e833          	or	a6,a7,a6
    800059b8:	03059693          	slli	a3,a1,0x30
    800059bc:	003e589b          	srliw	a7,t3,0x3
    800059c0:	00d866b3          	or	a3,a6,a3
    800059c4:	03859713          	slli	a4,a1,0x38
    800059c8:	00389813          	slli	a6,a7,0x3
    800059cc:	00f507b3          	add	a5,a0,a5
    800059d0:	00e6e733          	or	a4,a3,a4
    800059d4:	000e089b          	sext.w	a7,t3
    800059d8:	00f806b3          	add	a3,a6,a5
    800059dc:	00e7b023          	sd	a4,0(a5)
    800059e0:	00878793          	addi	a5,a5,8
    800059e4:	fed79ce3          	bne	a5,a3,800059dc <__memset+0xd4>
    800059e8:	ff8e7793          	andi	a5,t3,-8
    800059ec:	0007871b          	sext.w	a4,a5
    800059f0:	01d787bb          	addw	a5,a5,t4
    800059f4:	0ce88e63          	beq	a7,a4,80005ad0 <__memset+0x1c8>
    800059f8:	00f50733          	add	a4,a0,a5
    800059fc:	00b70023          	sb	a1,0(a4)
    80005a00:	0017871b          	addiw	a4,a5,1
    80005a04:	0cc77663          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005a08:	00e50733          	add	a4,a0,a4
    80005a0c:	00b70023          	sb	a1,0(a4)
    80005a10:	0027871b          	addiw	a4,a5,2
    80005a14:	0ac77e63          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005a18:	00e50733          	add	a4,a0,a4
    80005a1c:	00b70023          	sb	a1,0(a4)
    80005a20:	0037871b          	addiw	a4,a5,3
    80005a24:	0ac77663          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005a28:	00e50733          	add	a4,a0,a4
    80005a2c:	00b70023          	sb	a1,0(a4)
    80005a30:	0047871b          	addiw	a4,a5,4
    80005a34:	08c77e63          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005a38:	00e50733          	add	a4,a0,a4
    80005a3c:	00b70023          	sb	a1,0(a4)
    80005a40:	0057871b          	addiw	a4,a5,5
    80005a44:	08c77663          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005a48:	00e50733          	add	a4,a0,a4
    80005a4c:	00b70023          	sb	a1,0(a4)
    80005a50:	0067871b          	addiw	a4,a5,6
    80005a54:	06c77e63          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005a58:	00e50733          	add	a4,a0,a4
    80005a5c:	00b70023          	sb	a1,0(a4)
    80005a60:	0077871b          	addiw	a4,a5,7
    80005a64:	06c77663          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005a68:	00e50733          	add	a4,a0,a4
    80005a6c:	00b70023          	sb	a1,0(a4)
    80005a70:	0087871b          	addiw	a4,a5,8
    80005a74:	04c77e63          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005a78:	00e50733          	add	a4,a0,a4
    80005a7c:	00b70023          	sb	a1,0(a4)
    80005a80:	0097871b          	addiw	a4,a5,9
    80005a84:	04c77663          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005a88:	00e50733          	add	a4,a0,a4
    80005a8c:	00b70023          	sb	a1,0(a4)
    80005a90:	00a7871b          	addiw	a4,a5,10
    80005a94:	02c77e63          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005a98:	00e50733          	add	a4,a0,a4
    80005a9c:	00b70023          	sb	a1,0(a4)
    80005aa0:	00b7871b          	addiw	a4,a5,11
    80005aa4:	02c77663          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005aa8:	00e50733          	add	a4,a0,a4
    80005aac:	00b70023          	sb	a1,0(a4)
    80005ab0:	00c7871b          	addiw	a4,a5,12
    80005ab4:	00c77e63          	bgeu	a4,a2,80005ad0 <__memset+0x1c8>
    80005ab8:	00e50733          	add	a4,a0,a4
    80005abc:	00b70023          	sb	a1,0(a4)
    80005ac0:	00d7879b          	addiw	a5,a5,13
    80005ac4:	00c7f663          	bgeu	a5,a2,80005ad0 <__memset+0x1c8>
    80005ac8:	00f507b3          	add	a5,a0,a5
    80005acc:	00b78023          	sb	a1,0(a5)
    80005ad0:	00813403          	ld	s0,8(sp)
    80005ad4:	01010113          	addi	sp,sp,16
    80005ad8:	00008067          	ret
    80005adc:	00b00693          	li	a3,11
    80005ae0:	e55ff06f          	j	80005934 <__memset+0x2c>
    80005ae4:	00300e93          	li	t4,3
    80005ae8:	ea5ff06f          	j	8000598c <__memset+0x84>
    80005aec:	00100e93          	li	t4,1
    80005af0:	e9dff06f          	j	8000598c <__memset+0x84>
    80005af4:	00000e93          	li	t4,0
    80005af8:	e95ff06f          	j	8000598c <__memset+0x84>
    80005afc:	00000793          	li	a5,0
    80005b00:	ef9ff06f          	j	800059f8 <__memset+0xf0>
    80005b04:	00200e93          	li	t4,2
    80005b08:	e85ff06f          	j	8000598c <__memset+0x84>
    80005b0c:	00400e93          	li	t4,4
    80005b10:	e7dff06f          	j	8000598c <__memset+0x84>
    80005b14:	00500e93          	li	t4,5
    80005b18:	e75ff06f          	j	8000598c <__memset+0x84>
    80005b1c:	00600e93          	li	t4,6
    80005b20:	e6dff06f          	j	8000598c <__memset+0x84>

0000000080005b24 <__memmove>:
    80005b24:	ff010113          	addi	sp,sp,-16
    80005b28:	00813423          	sd	s0,8(sp)
    80005b2c:	01010413          	addi	s0,sp,16
    80005b30:	0e060863          	beqz	a2,80005c20 <__memmove+0xfc>
    80005b34:	fff6069b          	addiw	a3,a2,-1
    80005b38:	0006881b          	sext.w	a6,a3
    80005b3c:	0ea5e863          	bltu	a1,a0,80005c2c <__memmove+0x108>
    80005b40:	00758713          	addi	a4,a1,7
    80005b44:	00a5e7b3          	or	a5,a1,a0
    80005b48:	40a70733          	sub	a4,a4,a0
    80005b4c:	0077f793          	andi	a5,a5,7
    80005b50:	00f73713          	sltiu	a4,a4,15
    80005b54:	00174713          	xori	a4,a4,1
    80005b58:	0017b793          	seqz	a5,a5
    80005b5c:	00e7f7b3          	and	a5,a5,a4
    80005b60:	10078863          	beqz	a5,80005c70 <__memmove+0x14c>
    80005b64:	00900793          	li	a5,9
    80005b68:	1107f463          	bgeu	a5,a6,80005c70 <__memmove+0x14c>
    80005b6c:	0036581b          	srliw	a6,a2,0x3
    80005b70:	fff8081b          	addiw	a6,a6,-1
    80005b74:	02081813          	slli	a6,a6,0x20
    80005b78:	01d85893          	srli	a7,a6,0x1d
    80005b7c:	00858813          	addi	a6,a1,8
    80005b80:	00058793          	mv	a5,a1
    80005b84:	00050713          	mv	a4,a0
    80005b88:	01088833          	add	a6,a7,a6
    80005b8c:	0007b883          	ld	a7,0(a5)
    80005b90:	00878793          	addi	a5,a5,8
    80005b94:	00870713          	addi	a4,a4,8
    80005b98:	ff173c23          	sd	a7,-8(a4)
    80005b9c:	ff0798e3          	bne	a5,a6,80005b8c <__memmove+0x68>
    80005ba0:	ff867713          	andi	a4,a2,-8
    80005ba4:	02071793          	slli	a5,a4,0x20
    80005ba8:	0207d793          	srli	a5,a5,0x20
    80005bac:	00f585b3          	add	a1,a1,a5
    80005bb0:	40e686bb          	subw	a3,a3,a4
    80005bb4:	00f507b3          	add	a5,a0,a5
    80005bb8:	06e60463          	beq	a2,a4,80005c20 <__memmove+0xfc>
    80005bbc:	0005c703          	lbu	a4,0(a1)
    80005bc0:	00e78023          	sb	a4,0(a5)
    80005bc4:	04068e63          	beqz	a3,80005c20 <__memmove+0xfc>
    80005bc8:	0015c603          	lbu	a2,1(a1)
    80005bcc:	00100713          	li	a4,1
    80005bd0:	00c780a3          	sb	a2,1(a5)
    80005bd4:	04e68663          	beq	a3,a4,80005c20 <__memmove+0xfc>
    80005bd8:	0025c603          	lbu	a2,2(a1)
    80005bdc:	00200713          	li	a4,2
    80005be0:	00c78123          	sb	a2,2(a5)
    80005be4:	02e68e63          	beq	a3,a4,80005c20 <__memmove+0xfc>
    80005be8:	0035c603          	lbu	a2,3(a1)
    80005bec:	00300713          	li	a4,3
    80005bf0:	00c781a3          	sb	a2,3(a5)
    80005bf4:	02e68663          	beq	a3,a4,80005c20 <__memmove+0xfc>
    80005bf8:	0045c603          	lbu	a2,4(a1)
    80005bfc:	00400713          	li	a4,4
    80005c00:	00c78223          	sb	a2,4(a5)
    80005c04:	00e68e63          	beq	a3,a4,80005c20 <__memmove+0xfc>
    80005c08:	0055c603          	lbu	a2,5(a1)
    80005c0c:	00500713          	li	a4,5
    80005c10:	00c782a3          	sb	a2,5(a5)
    80005c14:	00e68663          	beq	a3,a4,80005c20 <__memmove+0xfc>
    80005c18:	0065c703          	lbu	a4,6(a1)
    80005c1c:	00e78323          	sb	a4,6(a5)
    80005c20:	00813403          	ld	s0,8(sp)
    80005c24:	01010113          	addi	sp,sp,16
    80005c28:	00008067          	ret
    80005c2c:	02061713          	slli	a4,a2,0x20
    80005c30:	02075713          	srli	a4,a4,0x20
    80005c34:	00e587b3          	add	a5,a1,a4
    80005c38:	f0f574e3          	bgeu	a0,a5,80005b40 <__memmove+0x1c>
    80005c3c:	02069613          	slli	a2,a3,0x20
    80005c40:	02065613          	srli	a2,a2,0x20
    80005c44:	fff64613          	not	a2,a2
    80005c48:	00e50733          	add	a4,a0,a4
    80005c4c:	00c78633          	add	a2,a5,a2
    80005c50:	fff7c683          	lbu	a3,-1(a5)
    80005c54:	fff78793          	addi	a5,a5,-1
    80005c58:	fff70713          	addi	a4,a4,-1
    80005c5c:	00d70023          	sb	a3,0(a4)
    80005c60:	fec798e3          	bne	a5,a2,80005c50 <__memmove+0x12c>
    80005c64:	00813403          	ld	s0,8(sp)
    80005c68:	01010113          	addi	sp,sp,16
    80005c6c:	00008067          	ret
    80005c70:	02069713          	slli	a4,a3,0x20
    80005c74:	02075713          	srli	a4,a4,0x20
    80005c78:	00170713          	addi	a4,a4,1
    80005c7c:	00e50733          	add	a4,a0,a4
    80005c80:	00050793          	mv	a5,a0
    80005c84:	0005c683          	lbu	a3,0(a1)
    80005c88:	00178793          	addi	a5,a5,1
    80005c8c:	00158593          	addi	a1,a1,1
    80005c90:	fed78fa3          	sb	a3,-1(a5)
    80005c94:	fee798e3          	bne	a5,a4,80005c84 <__memmove+0x160>
    80005c98:	f89ff06f          	j	80005c20 <__memmove+0xfc>

0000000080005c9c <__putc>:
    80005c9c:	fe010113          	addi	sp,sp,-32
    80005ca0:	00813823          	sd	s0,16(sp)
    80005ca4:	00113c23          	sd	ra,24(sp)
    80005ca8:	02010413          	addi	s0,sp,32
    80005cac:	00050793          	mv	a5,a0
    80005cb0:	fef40593          	addi	a1,s0,-17
    80005cb4:	00100613          	li	a2,1
    80005cb8:	00000513          	li	a0,0
    80005cbc:	fef407a3          	sb	a5,-17(s0)
    80005cc0:	fffff097          	auipc	ra,0xfffff
    80005cc4:	b3c080e7          	jalr	-1220(ra) # 800047fc <console_write>
    80005cc8:	01813083          	ld	ra,24(sp)
    80005ccc:	01013403          	ld	s0,16(sp)
    80005cd0:	02010113          	addi	sp,sp,32
    80005cd4:	00008067          	ret

0000000080005cd8 <__getc>:
    80005cd8:	fe010113          	addi	sp,sp,-32
    80005cdc:	00813823          	sd	s0,16(sp)
    80005ce0:	00113c23          	sd	ra,24(sp)
    80005ce4:	02010413          	addi	s0,sp,32
    80005ce8:	fe840593          	addi	a1,s0,-24
    80005cec:	00100613          	li	a2,1
    80005cf0:	00000513          	li	a0,0
    80005cf4:	fffff097          	auipc	ra,0xfffff
    80005cf8:	ae8080e7          	jalr	-1304(ra) # 800047dc <console_read>
    80005cfc:	fe844503          	lbu	a0,-24(s0)
    80005d00:	01813083          	ld	ra,24(sp)
    80005d04:	01013403          	ld	s0,16(sp)
    80005d08:	02010113          	addi	sp,sp,32
    80005d0c:	00008067          	ret

0000000080005d10 <console_handler>:
    80005d10:	fe010113          	addi	sp,sp,-32
    80005d14:	00813823          	sd	s0,16(sp)
    80005d18:	00113c23          	sd	ra,24(sp)
    80005d1c:	00913423          	sd	s1,8(sp)
    80005d20:	02010413          	addi	s0,sp,32
    80005d24:	14202773          	csrr	a4,scause
    80005d28:	100027f3          	csrr	a5,sstatus
    80005d2c:	0027f793          	andi	a5,a5,2
    80005d30:	06079e63          	bnez	a5,80005dac <console_handler+0x9c>
    80005d34:	00074c63          	bltz	a4,80005d4c <console_handler+0x3c>
    80005d38:	01813083          	ld	ra,24(sp)
    80005d3c:	01013403          	ld	s0,16(sp)
    80005d40:	00813483          	ld	s1,8(sp)
    80005d44:	02010113          	addi	sp,sp,32
    80005d48:	00008067          	ret
    80005d4c:	0ff77713          	andi	a4,a4,255
    80005d50:	00900793          	li	a5,9
    80005d54:	fef712e3          	bne	a4,a5,80005d38 <console_handler+0x28>
    80005d58:	ffffe097          	auipc	ra,0xffffe
    80005d5c:	6dc080e7          	jalr	1756(ra) # 80004434 <plic_claim>
    80005d60:	00a00793          	li	a5,10
    80005d64:	00050493          	mv	s1,a0
    80005d68:	02f50c63          	beq	a0,a5,80005da0 <console_handler+0x90>
    80005d6c:	fc0506e3          	beqz	a0,80005d38 <console_handler+0x28>
    80005d70:	00050593          	mv	a1,a0
    80005d74:	00000517          	auipc	a0,0x0
    80005d78:	4fc50513          	addi	a0,a0,1276 # 80006270 <CONSOLE_STATUS+0x260>
    80005d7c:	fffff097          	auipc	ra,0xfffff
    80005d80:	afc080e7          	jalr	-1284(ra) # 80004878 <__printf>
    80005d84:	01013403          	ld	s0,16(sp)
    80005d88:	01813083          	ld	ra,24(sp)
    80005d8c:	00048513          	mv	a0,s1
    80005d90:	00813483          	ld	s1,8(sp)
    80005d94:	02010113          	addi	sp,sp,32
    80005d98:	ffffe317          	auipc	t1,0xffffe
    80005d9c:	6d430067          	jr	1748(t1) # 8000446c <plic_complete>
    80005da0:	fffff097          	auipc	ra,0xfffff
    80005da4:	3e0080e7          	jalr	992(ra) # 80005180 <uartintr>
    80005da8:	fddff06f          	j	80005d84 <console_handler+0x74>
    80005dac:	00000517          	auipc	a0,0x0
    80005db0:	5c450513          	addi	a0,a0,1476 # 80006370 <digits+0x78>
    80005db4:	fffff097          	auipc	ra,0xfffff
    80005db8:	a68080e7          	jalr	-1432(ra) # 8000481c <panic>
	...
