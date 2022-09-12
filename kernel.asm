
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	26813103          	ld	sp,616(sp) # 80007268 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4f1030ef          	jal	ra,80003d0c <start>

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
    800011a4:	57c000ef          	jal	ra,80001720 <_ZN5RiscV20handleSupervisorTrapEv>

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
    //__asm__ volatile("mv a4, %0" : : [started] "r" (started));
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

0000000080001478 <_Z12thread_startPP3TCBPFvPvE>:

void thread_start(thread_t* handle, void(*start_routine)(void*) ){
    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00813423          	sd	s0,8(sp)
    80001480:	01010413          	addi	s0,sp,16
    uint64 sysCallNr = 0x15UL;
    __asm__ volatile("mv a2, %0" : : [start_routine] "r"(start_routine));
    80001484:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : [handle] "r"(handle));
    80001488:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r"(sysCallNr));
    8000148c:	01500793          	li	a5,21
    80001490:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001494:	00000073          	ecall
    80001498:	00813403          	ld	s0,8(sp)
    8000149c:	01010113          	addi	sp,sp,16
    800014a0:	00008067          	ret

00000000800014a4 <_Z41__static_initialization_and_destruction_0ii>:

bool Queue::isEmpty() {
    if(queue.listEmpty()==true){
        return true;
    }else{return false;}
}
    800014a4:	ff010113          	addi	sp,sp,-16
    800014a8:	00813423          	sd	s0,8(sp)
    800014ac:	01010413          	addi	s0,sp,16
    800014b0:	00100793          	li	a5,1
    800014b4:	00f50863          	beq	a0,a5,800014c4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800014b8:	00813403          	ld	s0,8(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret
    800014c4:	000107b7          	lui	a5,0x10
    800014c8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800014cc:	fef596e3          	bne	a1,a5,800014b8 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    800014d0:	00006797          	auipc	a5,0x6
    800014d4:	e3078793          	addi	a5,a5,-464 # 80007300 <_ZN5Queue5queueE>
    800014d8:	0007b023          	sd	zero,0(a5)
    800014dc:	0007b423          	sd	zero,8(a5)
    800014e0:	fd9ff06f          	j	800014b8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800014e4 <_ZN5Queue3putEP3TCB>:
void Queue::put(TCB *thread) {
    800014e4:	ff010113          	addi	sp,sp,-16
    800014e8:	00813423          	sd	s0,8(sp)
    800014ec:	01010413          	addi	s0,sp,16

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800014f0:	00006797          	auipc	a5,0x6
    800014f4:	d907b783          	ld	a5,-624(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800014f8:	0007b783          	ld	a5,0(a5)
    800014fc:	0c078a63          	beqz	a5,800015d0 <_ZN5Queue3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80001500:	00006717          	auipc	a4,0x6
    80001504:	d8073703          	ld	a4,-640(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001508:	00073683          	ld	a3,0(a4)
    8000150c:	0006b683          	ld	a3,0(a3)
    80001510:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001514:	00073703          	ld	a4,0(a4)
    80001518:	00873603          	ld	a2,8(a4)
    8000151c:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001520:	0107b703          	ld	a4,16(a5)
    80001524:	03f00593          	li	a1,63
    80001528:	02e5f663          	bgeu	a1,a4,80001554 <_ZN5Queue3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    8000152c:	fc070713          	addi	a4,a4,-64
    80001530:	01800593          	li	a1,24
    80001534:	02e5ec63          	bltu	a1,a4,8000156c <_ZN5Queue3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001538:	02060263          	beqz	a2,8000155c <_ZN5Queue3putEP3TCB+0x78>
    8000153c:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80001540:	0007b703          	ld	a4,0(a5)
    80001544:	08070663          	beqz	a4,800015d0 <_ZN5Queue3putEP3TCB+0xec>
    80001548:	0087b683          	ld	a3,8(a5)
    8000154c:	00d73423          	sd	a3,8(a4)
                return cur;
    80001550:	0800006f          	j	800015d0 <_ZN5Queue3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001554:	00068793          	mv	a5,a3
    80001558:	fa5ff06f          	j	800014fc <_ZN5Queue3putEP3TCB+0x18>
                else fmem_head = cur->next;
    8000155c:	00006717          	auipc	a4,0x6
    80001560:	d2473703          	ld	a4,-732(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001564:	00d73023          	sd	a3,0(a4)
    80001568:	fd9ff06f          	j	80001540 <_ZN5Queue3putEP3TCB+0x5c>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    8000156c:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001570:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001574:	0407b023          	sd	zero,64(a5)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001578:	0087b683          	ld	a3,8(a5)
    8000157c:	08068063          	beqz	a3,800015fc <_ZN5Queue3putEP3TCB+0x118>
    80001580:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001584:	0007b683          	ld	a3,0(a5)
    80001588:	00068463          	beqz	a3,80001590 <_ZN5Queue3putEP3TCB+0xac>
    8000158c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001590:	0087b603          	ld	a2,8(a5)
    80001594:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001598:	0007b683          	ld	a3,0(a5)
    8000159c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800015a0:	0107b783          	ld	a5,16(a5)
    800015a4:	fc078793          	addi	a5,a5,-64
    800015a8:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800015ac:	0c070693          	addi	a3,a4,192
    800015b0:	00006597          	auipc	a1,0x6
    800015b4:	cd05b583          	ld	a1,-816(a1) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015b8:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800015bc:	00073583          	ld	a1,0(a4)
    800015c0:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    800015c4:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800015c8:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    800015cc:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    800015d0:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    800015d4:	0007b423          	sd	zero,8(a5)
        if (tail){
    800015d8:	00006717          	auipc	a4,0x6
    800015dc:	d3073703          	ld	a4,-720(a4) # 80007308 <_ZN5Queue5queueE+0x8>
    800015e0:	02070863          	beqz	a4,80001610 <_ZN5Queue3putEP3TCB+0x12c>
            tail->next=elem;
    800015e4:	00f73423          	sd	a5,8(a4)
            tail=elem;
    800015e8:	00006717          	auipc	a4,0x6
    800015ec:	d2f73023          	sd	a5,-736(a4) # 80007308 <_ZN5Queue5queueE+0x8>
}
    800015f0:	00813403          	ld	s0,8(sp)
    800015f4:	01010113          	addi	sp,sp,16
    800015f8:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800015fc:	0c070693          	addi	a3,a4,192
    80001600:	00006617          	auipc	a2,0x6
    80001604:	c8063603          	ld	a2,-896(a2) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001608:	00d63023          	sd	a3,0(a2)
    8000160c:	f79ff06f          	j	80001584 <_ZN5Queue3putEP3TCB+0xa0>
        }else{
            head=tail=elem;
    80001610:	00006717          	auipc	a4,0x6
    80001614:	cf070713          	addi	a4,a4,-784 # 80007300 <_ZN5Queue5queueE>
    80001618:	00f73423          	sd	a5,8(a4)
    8000161c:	00f73023          	sd	a5,0(a4)
    80001620:	fd1ff06f          	j	800015f0 <_ZN5Queue3putEP3TCB+0x10c>

0000000080001624 <_ZN5Queue3getEv>:
    {
    80001624:	fe010113          	addi	sp,sp,-32
    80001628:	00113c23          	sd	ra,24(sp)
    8000162c:	00813823          	sd	s0,16(sp)
    80001630:	00913423          	sd	s1,8(sp)
    80001634:	02010413          	addi	s0,sp,32
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001638:	00006517          	auipc	a0,0x6
    8000163c:	cc853503          	ld	a0,-824(a0) # 80007300 <_ZN5Queue5queueE>
    80001640:	04050263          	beqz	a0,80001684 <_ZN5Queue3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    80001644:	00853783          	ld	a5,8(a0)
    80001648:	00006717          	auipc	a4,0x6
    8000164c:	caf73c23          	sd	a5,-840(a4) # 80007300 <_ZN5Queue5queueE>
        if(!head) {
    80001650:	02078463          	beqz	a5,80001678 <_ZN5Queue3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    80001654:	00053483          	ld	s1,0(a0)
        delete elem;
    80001658:	00002097          	auipc	ra,0x2
    8000165c:	148080e7          	jalr	328(ra) # 800037a0 <_ZdlPv>
    }
    80001660:	00048513          	mv	a0,s1
    80001664:	01813083          	ld	ra,24(sp)
    80001668:	01013403          	ld	s0,16(sp)
    8000166c:	00813483          	ld	s1,8(sp)
    80001670:	02010113          	addi	sp,sp,32
    80001674:	00008067          	ret
            tail = 0;
    80001678:	00006797          	auipc	a5,0x6
    8000167c:	c807b823          	sd	zero,-880(a5) # 80007308 <_ZN5Queue5queueE+0x8>
    80001680:	fd5ff06f          	j	80001654 <_ZN5Queue3getEv+0x30>
        if (!head) {return 0;}
    80001684:	00050493          	mv	s1,a0
        return thread;
    80001688:	fd9ff06f          	j	80001660 <_ZN5Queue3getEv+0x3c>

000000008000168c <_ZN5Queue7isEmptyEv>:
bool Queue::isEmpty() {
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00813423          	sd	s0,8(sp)
    80001694:	01010413          	addi	s0,sp,16
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    80001698:	00006797          	auipc	a5,0x6
    8000169c:	c687b783          	ld	a5,-920(a5) # 80007300 <_ZN5Queue5queueE>
    800016a0:	00078e63          	beqz	a5,800016bc <_ZN5Queue7isEmptyEv+0x30>
        return head->data;
    800016a4:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    800016a8:	00078e63          	beqz	a5,800016c4 <_ZN5Queue7isEmptyEv+0x38>
    }else{return false;}
    800016ac:	00000513          	li	a0,0
}
    800016b0:	00813403          	ld	s0,8(sp)
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret
        return true;
    800016bc:	00100513          	li	a0,1
    800016c0:	ff1ff06f          	j	800016b0 <_ZN5Queue7isEmptyEv+0x24>
    800016c4:	00100513          	li	a0,1
    800016c8:	fe9ff06f          	j	800016b0 <_ZN5Queue7isEmptyEv+0x24>

00000000800016cc <_GLOBAL__sub_I__ZN5Queue5queueE>:
}
    800016cc:	ff010113          	addi	sp,sp,-16
    800016d0:	00113423          	sd	ra,8(sp)
    800016d4:	00813023          	sd	s0,0(sp)
    800016d8:	01010413          	addi	s0,sp,16
    800016dc:	000105b7          	lui	a1,0x10
    800016e0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800016e4:	00100513          	li	a0,1
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	dbc080e7          	jalr	-580(ra) # 800014a4 <_Z41__static_initialization_and_destruction_0ii>
    800016f0:	00813083          	ld	ra,8(sp)
    800016f4:	00013403          	ld	s0,0(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret

0000000080001700 <_ZN5RiscV10popSppSpieEv>:
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"


void RiscV::popSppSpie() {
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00813423          	sd	s0,8(sp)
    80001708:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000170c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001710:	10200073          	sret
}
    80001714:	00813403          	ld	s0,8(sp)
    80001718:	01010113          	addi	sp,sp,16
    8000171c:	00008067          	ret

0000000080001720 <_ZN5RiscV20handleSupervisorTrapEv>:

void RiscV::handleSupervisorTrap() {
    80001720:	fa010113          	addi	sp,sp,-96
    80001724:	04113c23          	sd	ra,88(sp)
    80001728:	04813823          	sd	s0,80(sp)
    8000172c:	06010413          	addi	s0,sp,96
    volatile uint64 size;
    volatile uint64 handle;
    volatile uint64 start_routine;
    volatile uint64 arg;
    volatile uint64 ptr;
    __asm__ volatile("sd a4, %0" : "=m"(a4));
    80001730:	fee43423          	sd	a4,-24(s0)
    __asm__ volatile("sd a3, %0" : "=m"(arg));
    80001734:	fcd43423          	sd	a3,-56(s0)
    __asm__ volatile("sd a2, %0" : "=m"(start_routine));
    80001738:	fcc43823          	sd	a2,-48(s0)
    __asm__ volatile("sd a1, %0" : "=m"(handle));
    8000173c:	fcb43c23          	sd	a1,-40(s0)
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    80001740:	142027f3          	csrr	a5,scause
    80001744:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001748:	fa843703          	ld	a4,-88(s0)

}

inline uint64 RiscV::r_sepc(){
    uint64  sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000174c:	141027f3          	csrr	a5,sepc
    //__asm__ volatile("sd a1, %0" : "=m"(size));
    //__asm__ volatile("sd a1, %0" : "=m"(ptr));
    uint64 sysCallNr;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    80001750:	00478793          	addi	a5,a5,4
    80001754:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64 sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80001758:	100027f3          	csrr	a5,sstatus
    volatile uint64 sstatus = r_sstatus();
    8000175c:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    80001760:	00050793          	mv	a5,a0
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
    80001764:	ff870613          	addi	a2,a4,-8
    80001768:	00100693          	li	a3,1
    8000176c:	02c6f863          	bgeu	a3,a2,8000179c <_ZN5RiscV20handleSupervisorTrapEv+0x7c>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80001770:	fff00793          	li	a5,-1
    80001774:	03f79793          	slli	a5,a5,0x3f
    80001778:	00178793          	addi	a5,a5,1
    8000177c:	40f70263          	beq	a4,a5,80001b80 <_ZN5RiscV20handleSupervisorTrapEv+0x460>
//             TCB::dispatch();
//             w_sstatus(sstatus);
//             w_sepc(sepc);
//         }
        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    80001780:	fff00793          	li	a5,-1
    80001784:	03f79793          	slli	a5,a5,0x3f
    80001788:	00978793          	addi	a5,a5,9
    8000178c:	18f71e63          	bne	a4,a5,80001928 <_ZN5RiscV20handleSupervisorTrapEv+0x208>
        //supervisor external interrupt (console)
        console_handler();
    80001790:	00004097          	auipc	ra,0x4
    80001794:	6b0080e7          	jalr	1712(ra) # 80005e40 <console_handler>
        //print (scause)
        //print sepc
        //print sval

    }
    80001798:	1900006f          	j	80001928 <_ZN5RiscV20handleSupervisorTrapEv+0x208>
        if (sysCallNr == 0x01UL) {
    8000179c:	00100713          	li	a4,1
    800017a0:	06e78c63          	beq	a5,a4,80001818 <_ZN5RiscV20handleSupervisorTrapEv+0xf8>
        } else if (sysCallNr == 0x02UL) {
    800017a4:	00200713          	li	a4,2
    800017a8:	1ae78263          	beq	a5,a4,8000194c <_ZN5RiscV20handleSupervisorTrapEv+0x22c>
        }else if(sysCallNr == 0x11UL){
    800017ac:	01100713          	li	a4,17
    800017b0:	2ae78e63          	beq	a5,a4,80001a6c <_ZN5RiscV20handleSupervisorTrapEv+0x34c>
        }else if(sysCallNr == 0x12UL){
    800017b4:	01200713          	li	a4,18
    800017b8:	2ce78c63          	beq	a5,a4,80001a90 <_ZN5RiscV20handleSupervisorTrapEv+0x370>
        }else if(sysCallNr == 0x13UL){
    800017bc:	01300713          	li	a4,19
    800017c0:	30e78063          	beq	a5,a4,80001ac0 <_ZN5RiscV20handleSupervisorTrapEv+0x3a0>
        }else if(sysCallNr==0x14UL){
    800017c4:	01400713          	li	a4,20
    800017c8:	30e78263          	beq	a5,a4,80001acc <_ZN5RiscV20handleSupervisorTrapEv+0x3ac>
        }else if(sysCallNr==0x15UL){
    800017cc:	01500713          	li	a4,21
    800017d0:	32e78063          	beq	a5,a4,80001af0 <_ZN5RiscV20handleSupervisorTrapEv+0x3d0>
        }else if(sysCallNr == 0x21UL){
    800017d4:	02100713          	li	a4,33
    800017d8:	32e78663          	beq	a5,a4,80001b04 <_ZN5RiscV20handleSupervisorTrapEv+0x3e4>
        }else if(sysCallNr == 0x22UL){
    800017dc:	02200713          	li	a4,34
    800017e0:	34e78263          	beq	a5,a4,80001b24 <_ZN5RiscV20handleSupervisorTrapEv+0x404>
        }else if(sysCallNr == 0x23UL){
    800017e4:	02300713          	li	a4,35
    800017e8:	34e78a63          	beq	a5,a4,80001b3c <_ZN5RiscV20handleSupervisorTrapEv+0x41c>
        }else if(sysCallNr == 0x24UL){
    800017ec:	02400713          	li	a4,36
    800017f0:	36e78263          	beq	a5,a4,80001b54 <_ZN5RiscV20handleSupervisorTrapEv+0x434>
       }else if(sysCallNr==0x41UL){
    800017f4:	04100713          	li	a4,65
    800017f8:	36e78a63          	beq	a5,a4,80001b6c <_ZN5RiscV20handleSupervisorTrapEv+0x44c>
        }else if(sysCallNr==0x42UL){
    800017fc:	04200713          	li	a4,66
    80001800:	10e79c63          	bne	a5,a4,80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            __putc((char)handle);
    80001804:	fd843503          	ld	a0,-40(s0)
    80001808:	0ff57513          	andi	a0,a0,255
    8000180c:	00004097          	auipc	ra,0x4
    80001810:	5c0080e7          	jalr	1472(ra) # 80005dcc <__putc>
    80001814:	1040006f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
    80001818:	00058793          	mv	a5,a1
    8000181c:	fef43023          	sd	a5,-32(s0)
            void* pointer=MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks((size_t)size)); //gore imas da pretvoris u bytes to blocks
    80001820:	fe043783          	ld	a5,-32(s0)

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001824:	05778793          	addi	a5,a5,87
    80001828:	0067d793          	srli	a5,a5,0x6
    8000182c:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80001830:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001834:	00006717          	auipc	a4,0x6
    80001838:	a4c73703          	ld	a4,-1460(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000183c:	00073703          	ld	a4,0(a4)
    80001840:	0c070863          	beqz	a4,80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f0>
            cur->next=fmem_head->next;
    80001844:	00006697          	auipc	a3,0x6
    80001848:	a3c6b683          	ld	a3,-1476(a3) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000184c:	0006b603          	ld	a2,0(a3)
    80001850:	00063603          	ld	a2,0(a2)
    80001854:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    80001858:	0006b683          	ld	a3,0(a3)
    8000185c:	0086b583          	ld	a1,8(a3)
    80001860:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    80001864:	01073683          	ld	a3,16(a4)
    80001868:	02f6e663          	bltu	a3,a5,80001894 <_ZN5RiscV20handleSupervisorTrapEv+0x174>
            if (cur->size-size<=sizeof(FreeMem)){
    8000186c:	40f686b3          	sub	a3,a3,a5
    80001870:	01800513          	li	a0,24
    80001874:	02d56c63          	bltu	a0,a3,800018ac <_ZN5RiscV20handleSupervisorTrapEv+0x18c>
                if (cur->prev) cur->prev->next = cur->next;
    80001878:	02058263          	beqz	a1,8000189c <_ZN5RiscV20handleSupervisorTrapEv+0x17c>
    8000187c:	00c5b023          	sd	a2,0(a1)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80001880:	00073783          	ld	a5,0(a4)
    80001884:	08078663          	beqz	a5,80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f0>
    80001888:	00873683          	ld	a3,8(a4)
    8000188c:	00d7b423          	sd	a3,8(a5)
                return cur;
    80001890:	0800006f          	j	80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x1f0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001894:	00060713          	mv	a4,a2
    80001898:	fa9ff06f          	j	80001840 <_ZN5RiscV20handleSupervisorTrapEv+0x120>
                else fmem_head = cur->next;
    8000189c:	00006797          	auipc	a5,0x6
    800018a0:	9e47b783          	ld	a5,-1564(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018a4:	00c7b023          	sd	a2,0(a5)
    800018a8:	fd9ff06f          	j	80001880 <_ZN5RiscV20handleSupervisorTrapEv+0x160>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800018ac:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    800018b0:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    800018b4:	0006b023          	sd	zero,0(a3)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800018b8:	00873603          	ld	a2,8(a4)
    800018bc:	06060e63          	beqz	a2,80001938 <_ZN5RiscV20handleSupervisorTrapEv+0x218>
    800018c0:	00d63023          	sd	a3,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800018c4:	00073603          	ld	a2,0(a4)
    800018c8:	00060463          	beqz	a2,800018d0 <_ZN5RiscV20handleSupervisorTrapEv+0x1b0>
    800018cc:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    800018d0:	00873603          	ld	a2,8(a4)
    800018d4:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    800018d8:	00073583          	ld	a1,0(a4)
    800018dc:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    800018e0:	01073703          	ld	a4,16(a4)
    800018e4:	40f707b3          	sub	a5,a4,a5
    800018e8:	00f6b823          	sd	a5,16(a3)
                fmem_head =newfrgm+sizeof(fmem_head);
    800018ec:	0c068713          	addi	a4,a3,192
    800018f0:	00006597          	auipc	a1,0x6
    800018f4:	9905b583          	ld	a1,-1648(a1) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018f8:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    800018fc:	0006b583          	ld	a1,0(a3)
    80001900:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    80001904:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    80001908:	0cf6b823          	sd	a5,208(a3)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    8000190c:	00068713          	mv	a4,a3
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
    80001910:	00070593          	mv	a1,a4
            __asm__ volatile("sd a1, 88(s0)");
    80001914:	04b43c23          	sd	a1,88(s0)
        w_sstatus(sstatus);
    80001918:	fb043783          	ld	a5,-80(s0)
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 volatile sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    8000191c:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001920:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    80001924:	14179073          	csrw	sepc,a5
    80001928:	05813083          	ld	ra,88(sp)
    8000192c:	05013403          	ld	s0,80(sp)
    80001930:	06010113          	addi	sp,sp,96
    80001934:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001938:	0c068613          	addi	a2,a3,192
    8000193c:	00006597          	auipc	a1,0x6
    80001940:	9445b583          	ld	a1,-1724(a1) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001944:	00c5b023          	sd	a2,0(a1)
    80001948:	f7dff06f          	j	800018c4 <_ZN5RiscV20handleSupervisorTrapEv+0x1a4>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    8000194c:	00058793          	mv	a5,a1
    80001950:	fcf43023          	sd	a5,-64(s0)
            int ret=MemoryAllocation::mem_free((void*)ptr);
    80001954:	fc043703          	ld	a4,-64(s0)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001958:	00006797          	auipc	a5,0x6
    8000195c:	9287b783          	ld	a5,-1752(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001960:	0007b783          	ld	a5,0(a5)
    80001964:	00078e63          	beqz	a5,80001980 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
    80001968:	02f76063          	bltu	a4,a5,80001988 <_ZN5RiscV20handleSupervisorTrapEv+0x268>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    8000196c:	00078693          	mv	a3,a5
    80001970:	0007b783          	ld	a5,0(a5)
    80001974:	00f70c63          	beq	a4,a5,8000198c <_ZN5RiscV20handleSupervisorTrapEv+0x26c>
    80001978:	fee7eae3          	bltu	a5,a4,8000196c <_ZN5RiscV20handleSupervisorTrapEv+0x24c>
    8000197c:	0100006f          	j	8000198c <_ZN5RiscV20handleSupervisorTrapEv+0x26c>
            cur=nullptr;
    80001980:	00078693          	mv	a3,a5
    80001984:	0080006f          	j	8000198c <_ZN5RiscV20handleSupervisorTrapEv+0x26c>
    80001988:	00000693          	li	a3,0
                newSeg->next=nullptr;
    8000198c:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001990:	04000793          	li	a5,64
    80001994:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    80001998:	00d73423          	sd	a3,8(a4)
                if(cur) {
    8000199c:	06068263          	beqz	a3,80001a00 <_ZN5RiscV20handleSupervisorTrapEv+0x2e0>
                    newSeg->next = cur->next;
    800019a0:	0006b783          	ld	a5,0(a3)
    800019a4:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    800019a8:	00073783          	ld	a5,0(a4)
    800019ac:	00078463          	beqz	a5,800019b4 <_ZN5RiscV20handleSupervisorTrapEv+0x294>
                    newSeg->next->prev=newSeg;
    800019b0:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    800019b4:	06068063          	beqz	a3,80001a14 <_ZN5RiscV20handleSupervisorTrapEv+0x2f4>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800019b8:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    800019bc:	00070c63          	beqz	a4,800019d4 <_ZN5RiscV20handleSupervisorTrapEv+0x2b4>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800019c0:	00073783          	ld	a5,0(a4)
    800019c4:	00078863          	beqz	a5,800019d4 <_ZN5RiscV20handleSupervisorTrapEv+0x2b4>
    800019c8:	01073603          	ld	a2,16(a4)
    800019cc:	00c705b3          	add	a1,a4,a2
    800019d0:	04b78a63          	beq	a5,a1,80001a24 <_ZN5RiscV20handleSupervisorTrapEv+0x304>
        if (!curr) return;
    800019d4:	00068c63          	beqz	a3,800019ec <_ZN5RiscV20handleSupervisorTrapEv+0x2cc>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800019d8:	0006b783          	ld	a5,0(a3)
    800019dc:	00078863          	beqz	a5,800019ec <_ZN5RiscV20handleSupervisorTrapEv+0x2cc>
    800019e0:	0106b603          	ld	a2,16(a3)
    800019e4:	00c685b3          	add	a1,a3,a2
    800019e8:	04b78e63          	beq	a5,a1,80001a44 <_ZN5RiscV20handleSupervisorTrapEv+0x324>
            if(newSeg==nullptr){
    800019ec:	06070c63          	beqz	a4,80001a64 <_ZN5RiscV20handleSupervisorTrapEv+0x344>
            }else{return 0;}
    800019f0:	00000793          	li	a5,0
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
    800019f4:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
    800019f8:	04b43c23          	sd	a1,88(s0)
    800019fc:	f1dff06f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
                    newSeg->next = fmem_head;
    80001a00:	00006797          	auipc	a5,0x6
    80001a04:	8807b783          	ld	a5,-1920(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a08:	0007b783          	ld	a5,0(a5)
    80001a0c:	00f73023          	sd	a5,0(a4)
    80001a10:	f99ff06f          	j	800019a8 <_ZN5RiscV20handleSupervisorTrapEv+0x288>
                    fmem_head = newSeg;
    80001a14:	00006797          	auipc	a5,0x6
    80001a18:	86c7b783          	ld	a5,-1940(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a1c:	00e7b023          	sd	a4,0(a5)
    80001a20:	f9dff06f          	j	800019bc <_ZN5RiscV20handleSupervisorTrapEv+0x29c>
            curr->size += curr->next->size;
    80001a24:	0107b583          	ld	a1,16(a5)
    80001a28:	00b60633          	add	a2,a2,a1
    80001a2c:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    80001a30:	0007b783          	ld	a5,0(a5)
    80001a34:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001a38:	f8078ee3          	beqz	a5,800019d4 <_ZN5RiscV20handleSupervisorTrapEv+0x2b4>
    80001a3c:	00e7b423          	sd	a4,8(a5)
    80001a40:	f95ff06f          	j	800019d4 <_ZN5RiscV20handleSupervisorTrapEv+0x2b4>
            curr->size += curr->next->size;
    80001a44:	0107b583          	ld	a1,16(a5)
    80001a48:	00b60633          	add	a2,a2,a1
    80001a4c:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    80001a50:	0007b783          	ld	a5,0(a5)
    80001a54:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    80001a58:	f8078ae3          	beqz	a5,800019ec <_ZN5RiscV20handleSupervisorTrapEv+0x2cc>
    80001a5c:	00d7b423          	sd	a3,8(a5)
    80001a60:	f8dff06f          	j	800019ec <_ZN5RiscV20handleSupervisorTrapEv+0x2cc>
                return -1;
    80001a64:	fff00793          	li	a5,-1
    80001a68:	f8dff06f          	j	800019f4 <_ZN5RiscV20handleSupervisorTrapEv+0x2d4>
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg, true);
    80001a6c:	fd043503          	ld	a0,-48(s0)
    80001a70:	fd843583          	ld	a1,-40(s0)
    80001a74:	fc843603          	ld	a2,-56(s0)
    80001a78:	00100693          	li	a3,1
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	758080e7          	jalr	1880(ra) # 800031d4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001a84:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001a88:	04b43c23          	sd	a1,88(s0)
    80001a8c:	e8dff06f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
    static int createThread(Body body, TCB** handle, void* arguments, bool started);

    static void thread_dispatch(){dispatch();}

    static int thread_exit(){
        running->setFinished(true);
    80001a90:	00100593          	li	a1,1
    80001a94:	00005797          	auipc	a5,0x5
    80001a98:	7fc7b783          	ld	a5,2044(a5) # 80007290 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001a9c:	0007b503          	ld	a0,0(a5)
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	718080e7          	jalr	1816(ra) # 800031b8 <_ZN3TCB11setFinishedEb>
        dispatch();
    80001aa8:	00002097          	auipc	ra,0x2
    80001aac:	a90080e7          	jalr	-1392(ra) # 80003538 <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    80001ab0:	00000793          	li	a5,0
    80001ab4:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    80001ab8:	04b43c23          	sd	a1,88(s0)
    80001abc:	e5dff06f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
    static void thread_dispatch(){dispatch();}
    80001ac0:	00002097          	auipc	ra,0x2
    80001ac4:	a78080e7          	jalr	-1416(ra) # 80003538 <_ZN3TCB8dispatchEv>
    80001ac8:	e51ff06f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            int ret_val=TCB::createThread((TCB::Body)a4, (thread_t*) handle, (void*)arg, false);
    80001acc:	fe843503          	ld	a0,-24(s0)
    80001ad0:	fd843583          	ld	a1,-40(s0)
    80001ad4:	fc843603          	ld	a2,-56(s0)
    80001ad8:	00000693          	li	a3,0
    80001adc:	00001097          	auipc	ra,0x1
    80001ae0:	6f8080e7          	jalr	1784(ra) # 800031d4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001ae4:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001ae8:	04b43c23          	sd	a1,88(s0)
    80001aec:	e2dff06f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            TCB::startThread((thread_t*)handle, (TCB::Body)start_routine);
    80001af0:	fd843503          	ld	a0,-40(s0)
    80001af4:	fd043583          	ld	a1,-48(s0)
    80001af8:	00002097          	auipc	ra,0x2
    80001afc:	ab8080e7          	jalr	-1352(ra) # 800035b0 <_ZN3TCB11startThreadEPPS_PFvPvE>
    80001b00:	e19ff06f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            int retval = semaphore::semOpen((sem_t*)handle, (unsigned)start_routine);
    80001b04:	fd843503          	ld	a0,-40(s0)
    80001b08:	fd043583          	ld	a1,-48(s0)
    80001b0c:	0005859b          	sext.w	a1,a1
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	280080e7          	jalr	640(ra) # 80001d90 <_ZN9semaphore7semOpenEPPS_j>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b18:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b1c:	04b43c23          	sd	a1,88(s0)
    80001b20:	df9ff06f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            int retval = semaphore::semClose((sem_t)handle);
    80001b24:	fd843503          	ld	a0,-40(s0)
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	488080e7          	jalr	1160(ra) # 80001fb0 <_ZN9semaphore8semCloseEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b30:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b34:	04b43c23          	sd	a1,88(s0)
    80001b38:	de1ff06f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            int retval = semaphore::semWait((sem_t)handle);
    80001b3c:	fd843503          	ld	a0,-40(s0)
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	5bc080e7          	jalr	1468(ra) # 800020fc <_ZN9semaphore7semWaitEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b48:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b4c:	04b43c23          	sd	a1,88(s0)
    80001b50:	dc9ff06f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            int retval = semaphore::semSignal((sem_t)handle);
    80001b54:	fd843503          	ld	a0,-40(s0)
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	5f8080e7          	jalr	1528(ra) # 80002150 <_ZN9semaphore9semSignalEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b60:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b64:	04b43c23          	sd	a1,88(s0)
    80001b68:	db1ff06f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
            char retval = __getc();
    80001b6c:	00004097          	auipc	ra,0x4
    80001b70:	29c080e7          	jalr	668(ra) # 80005e08 <__getc>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b74:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b78:	04b43c23          	sd	a1,88(s0)
    80001b7c:	d9dff06f          	j	80001918 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001b80:	00200793          	li	a5,2
    80001b84:	1447b073          	csrc	sip,a5
}
    80001b88:	da1ff06f          	j	80001928 <_ZN5RiscV20handleSupervisorTrapEv+0x208>

0000000080001b8c <_ZN9semaphore5blockEv>:
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"

void semaphore::block() {
    80001b8c:	fe010113          	addi	sp,sp,-32
    80001b90:	00113c23          	sd	ra,24(sp)
    80001b94:	00813823          	sd	s0,16(sp)
    80001b98:	00913423          	sd	s1,8(sp)
    80001b9c:	01213023          	sd	s2,0(sp)
    80001ba0:	02010413          	addi	s0,sp,32
    80001ba4:	00050913          	mv	s2,a0
        //setjmp je linija old=running;
        TCB *old = TCB::running;
    80001ba8:	00005797          	auipc	a5,0x5
    80001bac:	6e87b783          	ld	a5,1768(a5) # 80007290 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001bb0:	0007b483          	ld	s1,0(a5)
        old->semBlocked=this;
    80001bb4:	02a4b823          	sd	a0,48(s1)
        if (!old->isFinished()) {
    80001bb8:	00048513          	mv	a0,s1
    80001bbc:	00001097          	auipc	ra,0x1
    80001bc0:	5e0080e7          	jalr	1504(ra) # 8000319c <_ZNK3TCB10isFinishedEv>
    80001bc4:	04050063          	beqz	a0,80001c04 <_ZN9semaphore5blockEv+0x78>
            blocked->addLast(old);
        }
        TCB::running = Scheduler::get();
    80001bc8:	00001097          	auipc	ra,0x1
    80001bcc:	350080e7          	jalr	848(ra) # 80002f18 <_ZN9Scheduler3getEv>
    80001bd0:	00005797          	auipc	a5,0x5
    80001bd4:	6c07b783          	ld	a5,1728(a5) # 80007290 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001bd8:	00a7b023          	sd	a0,0(a5)


        TCB::contextSwitch(&old->context, &TCB::running->context);//TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
    80001bdc:	01050593          	addi	a1,a0,16
    80001be0:	01048513          	addi	a0,s1,16
    80001be4:	fffff097          	auipc	ra,0xfffff
    80001be8:	64c080e7          	jalr	1612(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
        //marinko kaze da je dobar ovaj block

        //TCB::running->semBlocked=this;
        //this->blocked->put(TCB::running);
        //TCB::dispatch();
}
    80001bec:	01813083          	ld	ra,24(sp)
    80001bf0:	01013403          	ld	s0,16(sp)
    80001bf4:	00813483          	ld	s1,8(sp)
    80001bf8:	00013903          	ld	s2,0(sp)
    80001bfc:	02010113          	addi	sp,sp,32
    80001c00:	00008067          	ret
            blocked->addLast(old);
    80001c04:	00893583          	ld	a1,8(s2)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001c08:	00005797          	auipc	a5,0x5
    80001c0c:	6787b783          	ld	a5,1656(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c10:	0007b783          	ld	a5,0(a5)
    80001c14:	0c078a63          	beqz	a5,80001ce8 <_ZN9semaphore5blockEv+0x15c>
            cur->next=fmem_head->next;
    80001c18:	00005717          	auipc	a4,0x5
    80001c1c:	66873703          	ld	a4,1640(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c20:	00073683          	ld	a3,0(a4)
    80001c24:	0006b683          	ld	a3,0(a3)
    80001c28:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001c2c:	00073703          	ld	a4,0(a4)
    80001c30:	00873603          	ld	a2,8(a4)
    80001c34:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001c38:	0107b703          	ld	a4,16(a5)
    80001c3c:	03f00513          	li	a0,63
    80001c40:	02e57663          	bgeu	a0,a4,80001c6c <_ZN9semaphore5blockEv+0xe0>
            if (cur->size-size<=sizeof(FreeMem)){
    80001c44:	fc070713          	addi	a4,a4,-64
    80001c48:	01800513          	li	a0,24
    80001c4c:	02e56c63          	bltu	a0,a4,80001c84 <_ZN9semaphore5blockEv+0xf8>
                if (cur->prev) cur->prev->next = cur->next;
    80001c50:	02060263          	beqz	a2,80001c74 <_ZN9semaphore5blockEv+0xe8>
    80001c54:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001c58:	0007b703          	ld	a4,0(a5)
    80001c5c:	08070663          	beqz	a4,80001ce8 <_ZN9semaphore5blockEv+0x15c>
    80001c60:	0087b683          	ld	a3,8(a5)
    80001c64:	00d73423          	sd	a3,8(a4)
                return cur;
    80001c68:	0800006f          	j	80001ce8 <_ZN9semaphore5blockEv+0x15c>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001c6c:	00068793          	mv	a5,a3
    80001c70:	fa5ff06f          	j	80001c14 <_ZN9semaphore5blockEv+0x88>
                else fmem_head = cur->next;
    80001c74:	00005717          	auipc	a4,0x5
    80001c78:	60c73703          	ld	a4,1548(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c7c:	00d73023          	sd	a3,0(a4)
    80001c80:	fd9ff06f          	j	80001c58 <_ZN9semaphore5blockEv+0xcc>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001c84:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001c88:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001c8c:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001c90:	0087b683          	ld	a3,8(a5)
    80001c94:	06068863          	beqz	a3,80001d04 <_ZN9semaphore5blockEv+0x178>
    80001c98:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001c9c:	0007b683          	ld	a3,0(a5)
    80001ca0:	00068463          	beqz	a3,80001ca8 <_ZN9semaphore5blockEv+0x11c>
    80001ca4:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001ca8:	0087b603          	ld	a2,8(a5)
    80001cac:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001cb0:	0007b683          	ld	a3,0(a5)
    80001cb4:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001cb8:	0107b783          	ld	a5,16(a5)
    80001cbc:	fc078793          	addi	a5,a5,-64
    80001cc0:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001cc4:	0c070693          	addi	a3,a4,192
    80001cc8:	00005517          	auipc	a0,0x5
    80001ccc:	5b853503          	ld	a0,1464(a0) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cd0:	00d53023          	sd	a3,0(a0)
                fmem_head->next=newfrgm->next;
    80001cd4:	00073503          	ld	a0,0(a4)
    80001cd8:	0ca73023          	sd	a0,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001cdc:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001ce0:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001ce4:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    80001ce8:	0097b023          	sd	s1,0(a5)
        elem->next=nullptr;
    80001cec:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001cf0:	0085b703          	ld	a4,8(a1)
    80001cf4:	02070263          	beqz	a4,80001d18 <_ZN9semaphore5blockEv+0x18c>
            tail->next=elem;
    80001cf8:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001cfc:	00f5b423          	sd	a5,8(a1)
    80001d00:	ec9ff06f          	j	80001bc8 <_ZN9semaphore5blockEv+0x3c>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001d04:	0c070693          	addi	a3,a4,192
    80001d08:	00005617          	auipc	a2,0x5
    80001d0c:	57863603          	ld	a2,1400(a2) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d10:	00d63023          	sd	a3,0(a2)
    80001d14:	f89ff06f          	j	80001c9c <_ZN9semaphore5blockEv+0x110>
        }else{
            head=tail=elem;
    80001d18:	00f5b423          	sd	a5,8(a1)
    80001d1c:	00f5b023          	sd	a5,0(a1)
    80001d20:	ea9ff06f          	j	80001bc8 <_ZN9semaphore5blockEv+0x3c>

0000000080001d24 <_ZN9semaphore7unblockEv>:

void semaphore::unblock() {
    80001d24:	fe010113          	addi	sp,sp,-32
    80001d28:	00113c23          	sd	ra,24(sp)
    80001d2c:	00813823          	sd	s0,16(sp)
    80001d30:	00913423          	sd	s1,8(sp)
    80001d34:	02010413          	addi	s0,sp,32
    TCB* t = blocked->removeFirst();
    80001d38:	00853783          	ld	a5,8(a0)
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001d3c:	0007b503          	ld	a0,0(a5)
    80001d40:	04050463          	beqz	a0,80001d88 <_ZN9semaphore7unblockEv+0x64>
        Elem *elem = head;
        head = head->next;
    80001d44:	00853703          	ld	a4,8(a0)
    80001d48:	00e7b023          	sd	a4,0(a5)
        if(!head) {
    80001d4c:	02070a63          	beqz	a4,80001d80 <_ZN9semaphore7unblockEv+0x5c>
            tail = 0;
        }
        T* ret = elem->data;
    80001d50:	00053483          	ld	s1,0(a0)
        delete elem;
    80001d54:	00002097          	auipc	ra,0x2
    80001d58:	a4c080e7          	jalr	-1460(ra) # 800037a0 <_ZdlPv>
    t->semBlocked=nullptr;
    80001d5c:	0204b823          	sd	zero,48(s1)
    Scheduler::put(t);
    80001d60:	00048513          	mv	a0,s1
    80001d64:	00001097          	auipc	ra,0x1
    80001d68:	21c080e7          	jalr	540(ra) # 80002f80 <_ZN9Scheduler3putEP3TCB>
}
    80001d6c:	01813083          	ld	ra,24(sp)
    80001d70:	01013403          	ld	s0,16(sp)
    80001d74:	00813483          	ld	s1,8(sp)
    80001d78:	02010113          	addi	sp,sp,32
    80001d7c:	00008067          	ret
            tail = 0;
    80001d80:	0007b423          	sd	zero,8(a5)
    80001d84:	fcdff06f          	j	80001d50 <_ZN9semaphore7unblockEv+0x2c>
        if (!head) {return 0;}
    80001d88:	00050493          	mv	s1,a0
    80001d8c:	fd1ff06f          	j	80001d5c <_ZN9semaphore7unblockEv+0x38>

0000000080001d90 <_ZN9semaphore7semOpenEPPS_j>:

int semaphore::semOpen(semaphore **handle, unsigned init) {
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00813423          	sd	s0,8(sp)
    80001d98:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001d9c:	00005797          	auipc	a5,0x5
    80001da0:	4e47b783          	ld	a5,1252(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001da4:	0007b783          	ld	a5,0(a5)
    80001da8:	0c078a63          	beqz	a5,80001e7c <_ZN9semaphore7semOpenEPPS_j+0xec>
            cur->next=fmem_head->next;
    80001dac:	00005717          	auipc	a4,0x5
    80001db0:	4d473703          	ld	a4,1236(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001db4:	00073683          	ld	a3,0(a4)
    80001db8:	0006b683          	ld	a3,0(a3)
    80001dbc:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001dc0:	00073703          	ld	a4,0(a4)
    80001dc4:	00873603          	ld	a2,8(a4)
    80001dc8:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001dcc:	0107b703          	ld	a4,16(a5)
    80001dd0:	03f00813          	li	a6,63
    80001dd4:	02e87663          	bgeu	a6,a4,80001e00 <_ZN9semaphore7semOpenEPPS_j+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001dd8:	fc070713          	addi	a4,a4,-64
    80001ddc:	01800813          	li	a6,24
    80001de0:	02e86c63          	bltu	a6,a4,80001e18 <_ZN9semaphore7semOpenEPPS_j+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001de4:	02060263          	beqz	a2,80001e08 <_ZN9semaphore7semOpenEPPS_j+0x78>
    80001de8:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001dec:	0007b703          	ld	a4,0(a5)
    80001df0:	08070663          	beqz	a4,80001e7c <_ZN9semaphore7semOpenEPPS_j+0xec>
    80001df4:	0087b683          	ld	a3,8(a5)
    80001df8:	00d73423          	sd	a3,8(a4)
                return cur;
    80001dfc:	0800006f          	j	80001e7c <_ZN9semaphore7semOpenEPPS_j+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001e00:	00068793          	mv	a5,a3
    80001e04:	fa5ff06f          	j	80001da8 <_ZN9semaphore7semOpenEPPS_j+0x18>
                else fmem_head = cur->next;
    80001e08:	00005717          	auipc	a4,0x5
    80001e0c:	47873703          	ld	a4,1144(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e10:	00d73023          	sd	a3,0(a4)
    80001e14:	fd9ff06f          	j	80001dec <_ZN9semaphore7semOpenEPPS_j+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001e18:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001e1c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001e20:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001e24:	0087b683          	ld	a3,8(a5)
    80001e28:	0c068463          	beqz	a3,80001ef0 <_ZN9semaphore7semOpenEPPS_j+0x160>
    80001e2c:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001e30:	0007b683          	ld	a3,0(a5)
    80001e34:	00068463          	beqz	a3,80001e3c <_ZN9semaphore7semOpenEPPS_j+0xac>
    80001e38:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001e3c:	0087b603          	ld	a2,8(a5)
    80001e40:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001e44:	0007b683          	ld	a3,0(a5)
    80001e48:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001e4c:	0107b783          	ld	a5,16(a5)
    80001e50:	fc078793          	addi	a5,a5,-64
    80001e54:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001e58:	0c070693          	addi	a3,a4,192
    80001e5c:	00005817          	auipc	a6,0x5
    80001e60:	42483803          	ld	a6,1060(a6) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e64:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80001e68:	00073803          	ld	a6,0(a4)
    80001e6c:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001e70:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001e74:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001e78:	00070793          	mv	a5,a4
    *handle=(semaphore*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(semaphore)));
    80001e7c:	00f53023          	sd	a5,0(a0)
    if (*handle==nullptr){
    80001e80:	12078463          	beqz	a5,80001fa8 <_ZN9semaphore7semOpenEPPS_j+0x218>
        return -1;
    }
    (*handle)->val=init;
    80001e84:	00b7a023          	sw	a1,0(a5)
    (*handle)->blocked=(LinkedList<TCB>*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(LinkedList<TCB>)));
    80001e88:	00053503          	ld	a0,0(a0)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001e8c:	00005797          	auipc	a5,0x5
    80001e90:	3f47b783          	ld	a5,1012(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e94:	0007b783          	ld	a5,0(a5)
    80001e98:	0e078463          	beqz	a5,80001f80 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
            cur->next=fmem_head->next;
    80001e9c:	00005717          	auipc	a4,0x5
    80001ea0:	3e473703          	ld	a4,996(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ea4:	00073683          	ld	a3,0(a4)
    80001ea8:	0006b683          	ld	a3,0(a3)
    80001eac:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001eb0:	00073703          	ld	a4,0(a4)
    80001eb4:	00873603          	ld	a2,8(a4)
    80001eb8:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001ebc:	0107b703          	ld	a4,16(a5)
    80001ec0:	03f00593          	li	a1,63
    80001ec4:	04e5f063          	bgeu	a1,a4,80001f04 <_ZN9semaphore7semOpenEPPS_j+0x174>
            if (cur->size-size<=sizeof(FreeMem)){
    80001ec8:	fc070713          	addi	a4,a4,-64
    80001ecc:	01800593          	li	a1,24
    80001ed0:	04e5e663          	bltu	a1,a4,80001f1c <_ZN9semaphore7semOpenEPPS_j+0x18c>
                if (cur->prev) cur->prev->next = cur->next;
    80001ed4:	02060c63          	beqz	a2,80001f0c <_ZN9semaphore7semOpenEPPS_j+0x17c>
    80001ed8:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001edc:	0007b703          	ld	a4,0(a5)
    80001ee0:	0a070063          	beqz	a4,80001f80 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
    80001ee4:	0087b683          	ld	a3,8(a5)
    80001ee8:	00d73423          	sd	a3,8(a4)
                return cur;
    80001eec:	0940006f          	j	80001f80 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001ef0:	0c070693          	addi	a3,a4,192
    80001ef4:	00005617          	auipc	a2,0x5
    80001ef8:	38c63603          	ld	a2,908(a2) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001efc:	00d63023          	sd	a3,0(a2)
    80001f00:	f31ff06f          	j	80001e30 <_ZN9semaphore7semOpenEPPS_j+0xa0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001f04:	00068793          	mv	a5,a3
    80001f08:	f91ff06f          	j	80001e98 <_ZN9semaphore7semOpenEPPS_j+0x108>
                else fmem_head = cur->next;
    80001f0c:	00005717          	auipc	a4,0x5
    80001f10:	37473703          	ld	a4,884(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f14:	00d73023          	sd	a3,0(a4)
    80001f18:	fc5ff06f          	j	80001edc <_ZN9semaphore7semOpenEPPS_j+0x14c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001f1c:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001f20:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001f24:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001f28:	0087b683          	ld	a3,8(a5)
    80001f2c:	06068463          	beqz	a3,80001f94 <_ZN9semaphore7semOpenEPPS_j+0x204>
    80001f30:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001f34:	0007b683          	ld	a3,0(a5)
    80001f38:	00068463          	beqz	a3,80001f40 <_ZN9semaphore7semOpenEPPS_j+0x1b0>
    80001f3c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001f40:	0087b603          	ld	a2,8(a5)
    80001f44:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001f48:	0007b683          	ld	a3,0(a5)
    80001f4c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001f50:	0107b783          	ld	a5,16(a5)
    80001f54:	fc078793          	addi	a5,a5,-64
    80001f58:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001f5c:	0c070693          	addi	a3,a4,192
    80001f60:	00005597          	auipc	a1,0x5
    80001f64:	3205b583          	ld	a1,800(a1) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f68:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001f6c:	00073583          	ld	a1,0(a4)
    80001f70:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001f74:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001f78:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001f7c:	00070793          	mv	a5,a4
    80001f80:	00f53423          	sd	a5,8(a0)
    return  0;
    80001f84:	00000513          	li	a0,0
}
    80001f88:	00813403          	ld	s0,8(sp)
    80001f8c:	01010113          	addi	sp,sp,16
    80001f90:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001f94:	0c070693          	addi	a3,a4,192
    80001f98:	00005617          	auipc	a2,0x5
    80001f9c:	2e863603          	ld	a2,744(a2) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fa0:	00d63023          	sd	a3,0(a2)
    80001fa4:	f91ff06f          	j	80001f34 <_ZN9semaphore7semOpenEPPS_j+0x1a4>
        return -1;
    80001fa8:	fff00513          	li	a0,-1
    80001fac:	fddff06f          	j	80001f88 <_ZN9semaphore7semOpenEPPS_j+0x1f8>

0000000080001fb0 <_ZN9semaphore8semCloseEPS_>:

int semaphore::semClose(semaphore *semID) {
    80001fb0:	fe010113          	addi	sp,sp,-32
    80001fb4:	00113c23          	sd	ra,24(sp)
    80001fb8:	00813823          	sd	s0,16(sp)
    80001fbc:	00913423          	sd	s1,8(sp)
    80001fc0:	02010413          	addi	s0,sp,32
    80001fc4:	00050493          	mv	s1,a0
    while(((semID)->blocked->listEmpty())==false){
    80001fc8:	0084b783          	ld	a5,8(s1)
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    80001fcc:	0007b783          	ld	a5,0(a5)
    80001fd0:	00078e63          	beqz	a5,80001fec <_ZN9semaphore8semCloseEPS_+0x3c>
        return head->data;
    80001fd4:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    80001fd8:	00078a63          	beqz	a5,80001fec <_ZN9semaphore8semCloseEPS_+0x3c>
        (semID)->unblock();
    80001fdc:	00048513          	mv	a0,s1
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	d44080e7          	jalr	-700(ra) # 80001d24 <_ZN9semaphore7unblockEv>
    while(((semID)->blocked->listEmpty())==false){
    80001fe8:	fe1ff06f          	j	80001fc8 <_ZN9semaphore8semCloseEPS_+0x18>
        if(!fmem_head || ptr < (char*)fmem_head)
    80001fec:	00005797          	auipc	a5,0x5
    80001ff0:	2947b783          	ld	a5,660(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ff4:	0007b783          	ld	a5,0(a5)
    80001ff8:	00078e63          	beqz	a5,80002014 <_ZN9semaphore8semCloseEPS_+0x64>
    80001ffc:	02f4e063          	bltu	s1,a5,8000201c <_ZN9semaphore8semCloseEPS_+0x6c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002000:	00078713          	mv	a4,a5
    80002004:	0007b783          	ld	a5,0(a5)
    80002008:	00f48c63          	beq	s1,a5,80002020 <_ZN9semaphore8semCloseEPS_+0x70>
    8000200c:	fe97eae3          	bltu	a5,s1,80002000 <_ZN9semaphore8semCloseEPS_+0x50>
    80002010:	0100006f          	j	80002020 <_ZN9semaphore8semCloseEPS_+0x70>
            cur=nullptr;
    80002014:	00078713          	mv	a4,a5
    80002018:	0080006f          	j	80002020 <_ZN9semaphore8semCloseEPS_+0x70>
    8000201c:	00000713          	li	a4,0
                newSeg->next=nullptr;
    80002020:	0004b023          	sd	zero,0(s1)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002024:	04000793          	li	a5,64
    80002028:	00f4b823          	sd	a5,16(s1)
                newSeg->prev=cur;
    8000202c:	00e4b423          	sd	a4,8(s1)
                if(cur) {
    80002030:	06070463          	beqz	a4,80002098 <_ZN9semaphore8semCloseEPS_+0xe8>
                    newSeg->next = cur->next;
    80002034:	00073783          	ld	a5,0(a4)
    80002038:	00f4b023          	sd	a5,0(s1)
                if(newSeg->next) {
    8000203c:	0004b783          	ld	a5,0(s1)
    80002040:	00078463          	beqz	a5,80002048 <_ZN9semaphore8semCloseEPS_+0x98>
                    newSeg->next->prev=newSeg;
    80002044:	0097b423          	sd	s1,8(a5)
                if (cur) {
    80002048:	06070263          	beqz	a4,800020ac <_ZN9semaphore8semCloseEPS_+0xfc>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    8000204c:	00973023          	sd	s1,0(a4)
        if (!curr) return;
    80002050:	00048c63          	beqz	s1,80002068 <_ZN9semaphore8semCloseEPS_+0xb8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002054:	0004b783          	ld	a5,0(s1)
    80002058:	00078863          	beqz	a5,80002068 <_ZN9semaphore8semCloseEPS_+0xb8>
    8000205c:	0104b683          	ld	a3,16(s1)
    80002060:	00d48633          	add	a2,s1,a3
    80002064:	04c78c63          	beq	a5,a2,800020bc <_ZN9semaphore8semCloseEPS_+0x10c>
        if (!curr) return;
    80002068:	00070c63          	beqz	a4,80002080 <_ZN9semaphore8semCloseEPS_+0xd0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000206c:	00073783          	ld	a5,0(a4)
    80002070:	00078863          	beqz	a5,80002080 <_ZN9semaphore8semCloseEPS_+0xd0>
    80002074:	01073683          	ld	a3,16(a4)
    80002078:	00d70633          	add	a2,a4,a3
    8000207c:	06c78063          	beq	a5,a2,800020dc <_ZN9semaphore8semCloseEPS_+0x12c>
        //TODO wait treba da vrati gresku? Kako to?
    }
    MemoryAllocation::mem_free(semID); //TODO mozda moze i samo (*handle)=nullptr
    return 0;
}
    80002080:	00000513          	li	a0,0
    80002084:	01813083          	ld	ra,24(sp)
    80002088:	01013403          	ld	s0,16(sp)
    8000208c:	00813483          	ld	s1,8(sp)
    80002090:	02010113          	addi	sp,sp,32
    80002094:	00008067          	ret
                    newSeg->next = fmem_head;
    80002098:	00005797          	auipc	a5,0x5
    8000209c:	1e87b783          	ld	a5,488(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020a0:	0007b783          	ld	a5,0(a5)
    800020a4:	00f4b023          	sd	a5,0(s1)
    800020a8:	f95ff06f          	j	8000203c <_ZN9semaphore8semCloseEPS_+0x8c>
                    fmem_head = newSeg;
    800020ac:	00005797          	auipc	a5,0x5
    800020b0:	1d47b783          	ld	a5,468(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020b4:	0097b023          	sd	s1,0(a5)
    800020b8:	f99ff06f          	j	80002050 <_ZN9semaphore8semCloseEPS_+0xa0>
            curr->size += curr->next->size;
    800020bc:	0107b603          	ld	a2,16(a5)
    800020c0:	00c686b3          	add	a3,a3,a2
    800020c4:	00d4b823          	sd	a3,16(s1)
            curr->next = curr->next->next;
    800020c8:	0007b783          	ld	a5,0(a5)
    800020cc:	00f4b023          	sd	a5,0(s1)
            if (curr->next) curr->next->prev = curr;
    800020d0:	f8078ce3          	beqz	a5,80002068 <_ZN9semaphore8semCloseEPS_+0xb8>
    800020d4:	0097b423          	sd	s1,8(a5)
    800020d8:	f91ff06f          	j	80002068 <_ZN9semaphore8semCloseEPS_+0xb8>
            curr->size += curr->next->size;
    800020dc:	0107b603          	ld	a2,16(a5)
    800020e0:	00c686b3          	add	a3,a3,a2
    800020e4:	00d73823          	sd	a3,16(a4)
            curr->next = curr->next->next;
    800020e8:	0007b783          	ld	a5,0(a5)
    800020ec:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    800020f0:	f80788e3          	beqz	a5,80002080 <_ZN9semaphore8semCloseEPS_+0xd0>
    800020f4:	00e7b423          	sd	a4,8(a5)
    800020f8:	f89ff06f          	j	80002080 <_ZN9semaphore8semCloseEPS_+0xd0>

00000000800020fc <_ZN9semaphore7semWaitEPS_>:

int semaphore::semWait(semaphore *semID) {
    if(semID == nullptr){return -1;}
    800020fc:	04050663          	beqz	a0,80002148 <_ZN9semaphore7semWaitEPS_+0x4c>
    if((--((semID)->val))<0) { (semID)->block(); }
    80002100:	00052783          	lw	a5,0(a0)
    80002104:	fff7879b          	addiw	a5,a5,-1
    80002108:	00f52023          	sw	a5,0(a0)
    8000210c:	02079713          	slli	a4,a5,0x20
    80002110:	00074663          	bltz	a4,8000211c <_ZN9semaphore7semWaitEPS_+0x20>
    return 0;
    80002114:	00000513          	li	a0,0
}
    80002118:	00008067          	ret
int semaphore::semWait(semaphore *semID) {
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00113423          	sd	ra,8(sp)
    80002124:	00813023          	sd	s0,0(sp)
    80002128:	01010413          	addi	s0,sp,16
    if((--((semID)->val))<0) { (semID)->block(); }
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	a60080e7          	jalr	-1440(ra) # 80001b8c <_ZN9semaphore5blockEv>
    return 0;
    80002134:	00000513          	li	a0,0
}
    80002138:	00813083          	ld	ra,8(sp)
    8000213c:	00013403          	ld	s0,0(sp)
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret
    if(semID == nullptr){return -1;}
    80002148:	fff00513          	li	a0,-1
    8000214c:	00008067          	ret

0000000080002150 <_ZN9semaphore9semSignalEPS_>:

int semaphore::semSignal(semaphore *semID) {
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    80002150:	00052783          	lw	a5,0(a0)
    80002154:	0017879b          	addiw	a5,a5,1
    80002158:	0007871b          	sext.w	a4,a5
    8000215c:	00f52023          	sw	a5,0(a0)
    80002160:	00e05663          	blez	a4,8000216c <_ZN9semaphore9semSignalEPS_+0x1c>
    return 0;
}
    80002164:	00000513          	li	a0,0
    80002168:	00008067          	ret
int semaphore::semSignal(semaphore *semID) {
    8000216c:	ff010113          	addi	sp,sp,-16
    80002170:	00113423          	sd	ra,8(sp)
    80002174:	00813023          	sd	s0,0(sp)
    80002178:	01010413          	addi	s0,sp,16
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	ba8080e7          	jalr	-1112(ra) # 80001d24 <_ZN9semaphore7unblockEv>
}
    80002184:	00000513          	li	a0,0
    80002188:	00813083          	ld	ra,8(sp)
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002198:	fe010113          	addi	sp,sp,-32
    8000219c:	00113c23          	sd	ra,24(sp)
    800021a0:	00813823          	sd	s0,16(sp)
    800021a4:	00913423          	sd	s1,8(sp)
    800021a8:	02010413          	addi	s0,sp,32
    800021ac:	00050493          	mv	s1,a0
    LOCK();
    800021b0:	00100613          	li	a2,1
    800021b4:	00000593          	li	a1,0
    800021b8:	00005517          	auipc	a0,0x5
    800021bc:	15850513          	addi	a0,a0,344 # 80007310 <lockPrint>
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	f38080e7          	jalr	-200(ra) # 800010f8 <copy_and_swap>
    800021c8:	fe0514e3          	bnez	a0,800021b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800021cc:	0004c503          	lbu	a0,0(s1)
    800021d0:	00050a63          	beqz	a0,800021e4 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800021d4:	fffff097          	auipc	ra,0xfffff
    800021d8:	244080e7          	jalr	580(ra) # 80001418 <_Z4putcc>
        string++;
    800021dc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800021e0:	fedff06f          	j	800021cc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800021e4:	00000613          	li	a2,0
    800021e8:	00100593          	li	a1,1
    800021ec:	00005517          	auipc	a0,0x5
    800021f0:	12450513          	addi	a0,a0,292 # 80007310 <lockPrint>
    800021f4:	fffff097          	auipc	ra,0xfffff
    800021f8:	f04080e7          	jalr	-252(ra) # 800010f8 <copy_and_swap>
    800021fc:	fe0514e3          	bnez	a0,800021e4 <_Z11printStringPKc+0x4c>
}
    80002200:	01813083          	ld	ra,24(sp)
    80002204:	01013403          	ld	s0,16(sp)
    80002208:	00813483          	ld	s1,8(sp)
    8000220c:	02010113          	addi	sp,sp,32
    80002210:	00008067          	ret

0000000080002214 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002214:	fd010113          	addi	sp,sp,-48
    80002218:	02113423          	sd	ra,40(sp)
    8000221c:	02813023          	sd	s0,32(sp)
    80002220:	00913c23          	sd	s1,24(sp)
    80002224:	01213823          	sd	s2,16(sp)
    80002228:	01313423          	sd	s3,8(sp)
    8000222c:	01413023          	sd	s4,0(sp)
    80002230:	03010413          	addi	s0,sp,48
    80002234:	00050993          	mv	s3,a0
    80002238:	00058a13          	mv	s4,a1
    LOCK();
    8000223c:	00100613          	li	a2,1
    80002240:	00000593          	li	a1,0
    80002244:	00005517          	auipc	a0,0x5
    80002248:	0cc50513          	addi	a0,a0,204 # 80007310 <lockPrint>
    8000224c:	fffff097          	auipc	ra,0xfffff
    80002250:	eac080e7          	jalr	-340(ra) # 800010f8 <copy_and_swap>
    80002254:	fe0514e3          	bnez	a0,8000223c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002258:	00000913          	li	s2,0
    8000225c:	00090493          	mv	s1,s2
    80002260:	0019091b          	addiw	s2,s2,1
    80002264:	03495a63          	bge	s2,s4,80002298 <_Z9getStringPci+0x84>
        cc = getc();
    80002268:	fffff097          	auipc	ra,0xfffff
    8000226c:	184080e7          	jalr	388(ra) # 800013ec <_Z4getcv>
        if(cc < 1)
    80002270:	02050463          	beqz	a0,80002298 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002274:	009984b3          	add	s1,s3,s1
    80002278:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000227c:	00a00793          	li	a5,10
    80002280:	00f50a63          	beq	a0,a5,80002294 <_Z9getStringPci+0x80>
    80002284:	00d00793          	li	a5,13
    80002288:	fcf51ae3          	bne	a0,a5,8000225c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000228c:	00090493          	mv	s1,s2
    80002290:	0080006f          	j	80002298 <_Z9getStringPci+0x84>
    80002294:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002298:	009984b3          	add	s1,s3,s1
    8000229c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800022a0:	00000613          	li	a2,0
    800022a4:	00100593          	li	a1,1
    800022a8:	00005517          	auipc	a0,0x5
    800022ac:	06850513          	addi	a0,a0,104 # 80007310 <lockPrint>
    800022b0:	fffff097          	auipc	ra,0xfffff
    800022b4:	e48080e7          	jalr	-440(ra) # 800010f8 <copy_and_swap>
    800022b8:	fe0514e3          	bnez	a0,800022a0 <_Z9getStringPci+0x8c>
    return buf;
}
    800022bc:	00098513          	mv	a0,s3
    800022c0:	02813083          	ld	ra,40(sp)
    800022c4:	02013403          	ld	s0,32(sp)
    800022c8:	01813483          	ld	s1,24(sp)
    800022cc:	01013903          	ld	s2,16(sp)
    800022d0:	00813983          	ld	s3,8(sp)
    800022d4:	00013a03          	ld	s4,0(sp)
    800022d8:	03010113          	addi	sp,sp,48
    800022dc:	00008067          	ret

00000000800022e0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800022e0:	ff010113          	addi	sp,sp,-16
    800022e4:	00813423          	sd	s0,8(sp)
    800022e8:	01010413          	addi	s0,sp,16
    800022ec:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800022f0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800022f4:	0006c603          	lbu	a2,0(a3)
    800022f8:	fd06071b          	addiw	a4,a2,-48
    800022fc:	0ff77713          	andi	a4,a4,255
    80002300:	00900793          	li	a5,9
    80002304:	02e7e063          	bltu	a5,a4,80002324 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002308:	0025179b          	slliw	a5,a0,0x2
    8000230c:	00a787bb          	addw	a5,a5,a0
    80002310:	0017979b          	slliw	a5,a5,0x1
    80002314:	00168693          	addi	a3,a3,1
    80002318:	00c787bb          	addw	a5,a5,a2
    8000231c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002320:	fd5ff06f          	j	800022f4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002324:	00813403          	ld	s0,8(sp)
    80002328:	01010113          	addi	sp,sp,16
    8000232c:	00008067          	ret

0000000080002330 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002330:	fc010113          	addi	sp,sp,-64
    80002334:	02113c23          	sd	ra,56(sp)
    80002338:	02813823          	sd	s0,48(sp)
    8000233c:	02913423          	sd	s1,40(sp)
    80002340:	03213023          	sd	s2,32(sp)
    80002344:	01313c23          	sd	s3,24(sp)
    80002348:	04010413          	addi	s0,sp,64
    8000234c:	00050493          	mv	s1,a0
    80002350:	00058913          	mv	s2,a1
    80002354:	00060993          	mv	s3,a2
    LOCK();
    80002358:	00100613          	li	a2,1
    8000235c:	00000593          	li	a1,0
    80002360:	00005517          	auipc	a0,0x5
    80002364:	fb050513          	addi	a0,a0,-80 # 80007310 <lockPrint>
    80002368:	fffff097          	auipc	ra,0xfffff
    8000236c:	d90080e7          	jalr	-624(ra) # 800010f8 <copy_and_swap>
    80002370:	fe0514e3          	bnez	a0,80002358 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002374:	00098463          	beqz	s3,8000237c <_Z8printIntiii+0x4c>
    80002378:	0804c463          	bltz	s1,80002400 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000237c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002380:	00000593          	li	a1,0
    }

    i = 0;
    80002384:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002388:	0009079b          	sext.w	a5,s2
    8000238c:	0325773b          	remuw	a4,a0,s2
    80002390:	00048613          	mv	a2,s1
    80002394:	0014849b          	addiw	s1,s1,1
    80002398:	02071693          	slli	a3,a4,0x20
    8000239c:	0206d693          	srli	a3,a3,0x20
    800023a0:	00005717          	auipc	a4,0x5
    800023a4:	dd070713          	addi	a4,a4,-560 # 80007170 <digits>
    800023a8:	00d70733          	add	a4,a4,a3
    800023ac:	00074683          	lbu	a3,0(a4)
    800023b0:	fd040713          	addi	a4,s0,-48
    800023b4:	00c70733          	add	a4,a4,a2
    800023b8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800023bc:	0005071b          	sext.w	a4,a0
    800023c0:	0325553b          	divuw	a0,a0,s2
    800023c4:	fcf772e3          	bgeu	a4,a5,80002388 <_Z8printIntiii+0x58>
    if(neg)
    800023c8:	00058c63          	beqz	a1,800023e0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800023cc:	fd040793          	addi	a5,s0,-48
    800023d0:	009784b3          	add	s1,a5,s1
    800023d4:	02d00793          	li	a5,45
    800023d8:	fef48823          	sb	a5,-16(s1)
    800023dc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800023e0:	fff4849b          	addiw	s1,s1,-1
    800023e4:	0204c463          	bltz	s1,8000240c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800023e8:	fd040793          	addi	a5,s0,-48
    800023ec:	009787b3          	add	a5,a5,s1
    800023f0:	ff07c503          	lbu	a0,-16(a5)
    800023f4:	fffff097          	auipc	ra,0xfffff
    800023f8:	024080e7          	jalr	36(ra) # 80001418 <_Z4putcc>
    800023fc:	fe5ff06f          	j	800023e0 <_Z8printIntiii+0xb0>
        x = -xx;
    80002400:	4090053b          	negw	a0,s1
        neg = 1;
    80002404:	00100593          	li	a1,1
        x = -xx;
    80002408:	f7dff06f          	j	80002384 <_Z8printIntiii+0x54>

    UNLOCK();
    8000240c:	00000613          	li	a2,0
    80002410:	00100593          	li	a1,1
    80002414:	00005517          	auipc	a0,0x5
    80002418:	efc50513          	addi	a0,a0,-260 # 80007310 <lockPrint>
    8000241c:	fffff097          	auipc	ra,0xfffff
    80002420:	cdc080e7          	jalr	-804(ra) # 800010f8 <copy_and_swap>
    80002424:	fe0514e3          	bnez	a0,8000240c <_Z8printIntiii+0xdc>
    80002428:	03813083          	ld	ra,56(sp)
    8000242c:	03013403          	ld	s0,48(sp)
    80002430:	02813483          	ld	s1,40(sp)
    80002434:	02013903          	ld	s2,32(sp)
    80002438:	01813983          	ld	s3,24(sp)
    8000243c:	04010113          	addi	sp,sp,64
    80002440:	00008067          	ret

0000000080002444 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    80002444:	fe010113          	addi	sp,sp,-32
    80002448:	00113c23          	sd	ra,24(sp)
    8000244c:	00813823          	sd	s0,16(sp)
    80002450:	00913423          	sd	s1,8(sp)
    80002454:	01213023          	sd	s2,0(sp)
    80002458:	02010413          	addi	s0,sp,32
    8000245c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002460:	00100793          	li	a5,1
    80002464:	02a7f863          	bgeu	a5,a0,80002494 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002468:	00a00793          	li	a5,10
    8000246c:	02f577b3          	remu	a5,a0,a5
    80002470:	02078e63          	beqz	a5,800024ac <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002474:	fff48513          	addi	a0,s1,-1
    80002478:	00000097          	auipc	ra,0x0
    8000247c:	fcc080e7          	jalr	-52(ra) # 80002444 <_Z9fibonaccim>
    80002480:	00050913          	mv	s2,a0
    80002484:	ffe48513          	addi	a0,s1,-2
    80002488:	00000097          	auipc	ra,0x0
    8000248c:	fbc080e7          	jalr	-68(ra) # 80002444 <_Z9fibonaccim>
    80002490:	00a90533          	add	a0,s2,a0
}
    80002494:	01813083          	ld	ra,24(sp)
    80002498:	01013403          	ld	s0,16(sp)
    8000249c:	00813483          	ld	s1,8(sp)
    800024a0:	00013903          	ld	s2,0(sp)
    800024a4:	02010113          	addi	sp,sp,32
    800024a8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800024ac:	fffff097          	auipc	ra,0xfffff
    800024b0:	e58080e7          	jalr	-424(ra) # 80001304 <_Z15thread_dispatchv>
    800024b4:	fc1ff06f          	j	80002474 <_Z9fibonaccim+0x30>

00000000800024b8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800024b8:	fe010113          	addi	sp,sp,-32
    800024bc:	00113c23          	sd	ra,24(sp)
    800024c0:	00813823          	sd	s0,16(sp)
    800024c4:	00913423          	sd	s1,8(sp)
    800024c8:	01213023          	sd	s2,0(sp)
    800024cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800024d0:	00000913          	li	s2,0
    800024d4:	0380006f          	j	8000250c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800024d8:	fffff097          	auipc	ra,0xfffff
    800024dc:	e2c080e7          	jalr	-468(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800024e0:	00148493          	addi	s1,s1,1
    800024e4:	000027b7          	lui	a5,0x2
    800024e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800024ec:	0097ee63          	bltu	a5,s1,80002508 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800024f0:	00000713          	li	a4,0
    800024f4:	000077b7          	lui	a5,0x7
    800024f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800024fc:	fce7eee3          	bltu	a5,a4,800024d8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002500:	00170713          	addi	a4,a4,1
    80002504:	ff1ff06f          	j	800024f4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002508:	00190913          	addi	s2,s2,1
    8000250c:	00900793          	li	a5,9
    80002510:	0527e063          	bltu	a5,s2,80002550 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002514:	00004517          	auipc	a0,0x4
    80002518:	b0c50513          	addi	a0,a0,-1268 # 80006020 <CONSOLE_STATUS+0x10>
    8000251c:	00000097          	auipc	ra,0x0
    80002520:	c7c080e7          	jalr	-900(ra) # 80002198 <_Z11printStringPKc>
    80002524:	00000613          	li	a2,0
    80002528:	00a00593          	li	a1,10
    8000252c:	0009051b          	sext.w	a0,s2
    80002530:	00000097          	auipc	ra,0x0
    80002534:	e00080e7          	jalr	-512(ra) # 80002330 <_Z8printIntiii>
    80002538:	00004517          	auipc	a0,0x4
    8000253c:	d6850513          	addi	a0,a0,-664 # 800062a0 <CONSOLE_STATUS+0x290>
    80002540:	00000097          	auipc	ra,0x0
    80002544:	c58080e7          	jalr	-936(ra) # 80002198 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002548:	00000493          	li	s1,0
    8000254c:	f99ff06f          	j	800024e4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002550:	00004517          	auipc	a0,0x4
    80002554:	ad850513          	addi	a0,a0,-1320 # 80006028 <CONSOLE_STATUS+0x18>
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	c40080e7          	jalr	-960(ra) # 80002198 <_Z11printStringPKc>
    finishedA = true;
    80002560:	00100793          	li	a5,1
    80002564:	00005717          	auipc	a4,0x5
    80002568:	daf70a23          	sb	a5,-588(a4) # 80007318 <finishedA>
}
    8000256c:	01813083          	ld	ra,24(sp)
    80002570:	01013403          	ld	s0,16(sp)
    80002574:	00813483          	ld	s1,8(sp)
    80002578:	00013903          	ld	s2,0(sp)
    8000257c:	02010113          	addi	sp,sp,32
    80002580:	00008067          	ret

0000000080002584 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002584:	fe010113          	addi	sp,sp,-32
    80002588:	00113c23          	sd	ra,24(sp)
    8000258c:	00813823          	sd	s0,16(sp)
    80002590:	00913423          	sd	s1,8(sp)
    80002594:	01213023          	sd	s2,0(sp)
    80002598:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000259c:	00000913          	li	s2,0
    800025a0:	0380006f          	j	800025d8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800025a4:	fffff097          	auipc	ra,0xfffff
    800025a8:	d60080e7          	jalr	-672(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800025ac:	00148493          	addi	s1,s1,1
    800025b0:	000027b7          	lui	a5,0x2
    800025b4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800025b8:	0097ee63          	bltu	a5,s1,800025d4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800025bc:	00000713          	li	a4,0
    800025c0:	000077b7          	lui	a5,0x7
    800025c4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800025c8:	fce7eee3          	bltu	a5,a4,800025a4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800025cc:	00170713          	addi	a4,a4,1
    800025d0:	ff1ff06f          	j	800025c0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800025d4:	00190913          	addi	s2,s2,1
    800025d8:	00f00793          	li	a5,15
    800025dc:	0527e063          	bltu	a5,s2,8000261c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800025e0:	00004517          	auipc	a0,0x4
    800025e4:	a5850513          	addi	a0,a0,-1448 # 80006038 <CONSOLE_STATUS+0x28>
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	bb0080e7          	jalr	-1104(ra) # 80002198 <_Z11printStringPKc>
    800025f0:	00000613          	li	a2,0
    800025f4:	00a00593          	li	a1,10
    800025f8:	0009051b          	sext.w	a0,s2
    800025fc:	00000097          	auipc	ra,0x0
    80002600:	d34080e7          	jalr	-716(ra) # 80002330 <_Z8printIntiii>
    80002604:	00004517          	auipc	a0,0x4
    80002608:	c9c50513          	addi	a0,a0,-868 # 800062a0 <CONSOLE_STATUS+0x290>
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	b8c080e7          	jalr	-1140(ra) # 80002198 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002614:	00000493          	li	s1,0
    80002618:	f99ff06f          	j	800025b0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000261c:	00004517          	auipc	a0,0x4
    80002620:	a2450513          	addi	a0,a0,-1500 # 80006040 <CONSOLE_STATUS+0x30>
    80002624:	00000097          	auipc	ra,0x0
    80002628:	b74080e7          	jalr	-1164(ra) # 80002198 <_Z11printStringPKc>
    finishedB = true;
    8000262c:	00100793          	li	a5,1
    80002630:	00005717          	auipc	a4,0x5
    80002634:	cef704a3          	sb	a5,-791(a4) # 80007319 <finishedB>
    thread_dispatch();
    80002638:	fffff097          	auipc	ra,0xfffff
    8000263c:	ccc080e7          	jalr	-820(ra) # 80001304 <_Z15thread_dispatchv>
}
    80002640:	01813083          	ld	ra,24(sp)
    80002644:	01013403          	ld	s0,16(sp)
    80002648:	00813483          	ld	s1,8(sp)
    8000264c:	00013903          	ld	s2,0(sp)
    80002650:	02010113          	addi	sp,sp,32
    80002654:	00008067          	ret

0000000080002658 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002658:	fe010113          	addi	sp,sp,-32
    8000265c:	00113c23          	sd	ra,24(sp)
    80002660:	00813823          	sd	s0,16(sp)
    80002664:	00913423          	sd	s1,8(sp)
    80002668:	01213023          	sd	s2,0(sp)
    8000266c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002670:	00000493          	li	s1,0
    80002674:	0400006f          	j	800026b4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002678:	00004517          	auipc	a0,0x4
    8000267c:	9d850513          	addi	a0,a0,-1576 # 80006050 <CONSOLE_STATUS+0x40>
    80002680:	00000097          	auipc	ra,0x0
    80002684:	b18080e7          	jalr	-1256(ra) # 80002198 <_Z11printStringPKc>
    80002688:	00000613          	li	a2,0
    8000268c:	00a00593          	li	a1,10
    80002690:	00048513          	mv	a0,s1
    80002694:	00000097          	auipc	ra,0x0
    80002698:	c9c080e7          	jalr	-868(ra) # 80002330 <_Z8printIntiii>
    8000269c:	00004517          	auipc	a0,0x4
    800026a0:	c0450513          	addi	a0,a0,-1020 # 800062a0 <CONSOLE_STATUS+0x290>
    800026a4:	00000097          	auipc	ra,0x0
    800026a8:	af4080e7          	jalr	-1292(ra) # 80002198 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800026ac:	0014849b          	addiw	s1,s1,1
    800026b0:	0ff4f493          	andi	s1,s1,255
    800026b4:	00200793          	li	a5,2
    800026b8:	fc97f0e3          	bgeu	a5,s1,80002678 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800026bc:	00004517          	auipc	a0,0x4
    800026c0:	99c50513          	addi	a0,a0,-1636 # 80006058 <CONSOLE_STATUS+0x48>
    800026c4:	00000097          	auipc	ra,0x0
    800026c8:	ad4080e7          	jalr	-1324(ra) # 80002198 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800026cc:	00700313          	li	t1,7
    thread_dispatch();
    800026d0:	fffff097          	auipc	ra,0xfffff
    800026d4:	c34080e7          	jalr	-972(ra) # 80001304 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800026d8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800026dc:	00004517          	auipc	a0,0x4
    800026e0:	98c50513          	addi	a0,a0,-1652 # 80006068 <CONSOLE_STATUS+0x58>
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	ab4080e7          	jalr	-1356(ra) # 80002198 <_Z11printStringPKc>
    800026ec:	00000613          	li	a2,0
    800026f0:	00a00593          	li	a1,10
    800026f4:	0009051b          	sext.w	a0,s2
    800026f8:	00000097          	auipc	ra,0x0
    800026fc:	c38080e7          	jalr	-968(ra) # 80002330 <_Z8printIntiii>
    80002700:	00004517          	auipc	a0,0x4
    80002704:	ba050513          	addi	a0,a0,-1120 # 800062a0 <CONSOLE_STATUS+0x290>
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	a90080e7          	jalr	-1392(ra) # 80002198 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002710:	00c00513          	li	a0,12
    80002714:	00000097          	auipc	ra,0x0
    80002718:	d30080e7          	jalr	-720(ra) # 80002444 <_Z9fibonaccim>
    8000271c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002720:	00004517          	auipc	a0,0x4
    80002724:	95050513          	addi	a0,a0,-1712 # 80006070 <CONSOLE_STATUS+0x60>
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	a70080e7          	jalr	-1424(ra) # 80002198 <_Z11printStringPKc>
    80002730:	00000613          	li	a2,0
    80002734:	00a00593          	li	a1,10
    80002738:	0009051b          	sext.w	a0,s2
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	bf4080e7          	jalr	-1036(ra) # 80002330 <_Z8printIntiii>
    80002744:	00004517          	auipc	a0,0x4
    80002748:	b5c50513          	addi	a0,a0,-1188 # 800062a0 <CONSOLE_STATUS+0x290>
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	a4c080e7          	jalr	-1460(ra) # 80002198 <_Z11printStringPKc>
    80002754:	0400006f          	j	80002794 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002758:	00004517          	auipc	a0,0x4
    8000275c:	8f850513          	addi	a0,a0,-1800 # 80006050 <CONSOLE_STATUS+0x40>
    80002760:	00000097          	auipc	ra,0x0
    80002764:	a38080e7          	jalr	-1480(ra) # 80002198 <_Z11printStringPKc>
    80002768:	00000613          	li	a2,0
    8000276c:	00a00593          	li	a1,10
    80002770:	00048513          	mv	a0,s1
    80002774:	00000097          	auipc	ra,0x0
    80002778:	bbc080e7          	jalr	-1092(ra) # 80002330 <_Z8printIntiii>
    8000277c:	00004517          	auipc	a0,0x4
    80002780:	b2450513          	addi	a0,a0,-1244 # 800062a0 <CONSOLE_STATUS+0x290>
    80002784:	00000097          	auipc	ra,0x0
    80002788:	a14080e7          	jalr	-1516(ra) # 80002198 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000278c:	0014849b          	addiw	s1,s1,1
    80002790:	0ff4f493          	andi	s1,s1,255
    80002794:	00500793          	li	a5,5
    80002798:	fc97f0e3          	bgeu	a5,s1,80002758 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    8000279c:	00004517          	auipc	a0,0x4
    800027a0:	88c50513          	addi	a0,a0,-1908 # 80006028 <CONSOLE_STATUS+0x18>
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	9f4080e7          	jalr	-1548(ra) # 80002198 <_Z11printStringPKc>
    finishedC = true;
    800027ac:	00100793          	li	a5,1
    800027b0:	00005717          	auipc	a4,0x5
    800027b4:	b6f70523          	sb	a5,-1174(a4) # 8000731a <finishedC>
    thread_dispatch();
    800027b8:	fffff097          	auipc	ra,0xfffff
    800027bc:	b4c080e7          	jalr	-1204(ra) # 80001304 <_Z15thread_dispatchv>
}
    800027c0:	01813083          	ld	ra,24(sp)
    800027c4:	01013403          	ld	s0,16(sp)
    800027c8:	00813483          	ld	s1,8(sp)
    800027cc:	00013903          	ld	s2,0(sp)
    800027d0:	02010113          	addi	sp,sp,32
    800027d4:	00008067          	ret

00000000800027d8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800027d8:	fe010113          	addi	sp,sp,-32
    800027dc:	00113c23          	sd	ra,24(sp)
    800027e0:	00813823          	sd	s0,16(sp)
    800027e4:	00913423          	sd	s1,8(sp)
    800027e8:	01213023          	sd	s2,0(sp)
    800027ec:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800027f0:	00a00493          	li	s1,10
    800027f4:	0400006f          	j	80002834 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800027f8:	00004517          	auipc	a0,0x4
    800027fc:	88850513          	addi	a0,a0,-1912 # 80006080 <CONSOLE_STATUS+0x70>
    80002800:	00000097          	auipc	ra,0x0
    80002804:	998080e7          	jalr	-1640(ra) # 80002198 <_Z11printStringPKc>
    80002808:	00000613          	li	a2,0
    8000280c:	00a00593          	li	a1,10
    80002810:	00048513          	mv	a0,s1
    80002814:	00000097          	auipc	ra,0x0
    80002818:	b1c080e7          	jalr	-1252(ra) # 80002330 <_Z8printIntiii>
    8000281c:	00004517          	auipc	a0,0x4
    80002820:	a8450513          	addi	a0,a0,-1404 # 800062a0 <CONSOLE_STATUS+0x290>
    80002824:	00000097          	auipc	ra,0x0
    80002828:	974080e7          	jalr	-1676(ra) # 80002198 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000282c:	0014849b          	addiw	s1,s1,1
    80002830:	0ff4f493          	andi	s1,s1,255
    80002834:	00c00793          	li	a5,12
    80002838:	fc97f0e3          	bgeu	a5,s1,800027f8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000283c:	00004517          	auipc	a0,0x4
    80002840:	84c50513          	addi	a0,a0,-1972 # 80006088 <CONSOLE_STATUS+0x78>
    80002844:	00000097          	auipc	ra,0x0
    80002848:	954080e7          	jalr	-1708(ra) # 80002198 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000284c:	00500313          	li	t1,5
    thread_dispatch();
    80002850:	fffff097          	auipc	ra,0xfffff
    80002854:	ab4080e7          	jalr	-1356(ra) # 80001304 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002858:	01000513          	li	a0,16
    8000285c:	00000097          	auipc	ra,0x0
    80002860:	be8080e7          	jalr	-1048(ra) # 80002444 <_Z9fibonaccim>
    80002864:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002868:	00004517          	auipc	a0,0x4
    8000286c:	83050513          	addi	a0,a0,-2000 # 80006098 <CONSOLE_STATUS+0x88>
    80002870:	00000097          	auipc	ra,0x0
    80002874:	928080e7          	jalr	-1752(ra) # 80002198 <_Z11printStringPKc>
    80002878:	00000613          	li	a2,0
    8000287c:	00a00593          	li	a1,10
    80002880:	0009051b          	sext.w	a0,s2
    80002884:	00000097          	auipc	ra,0x0
    80002888:	aac080e7          	jalr	-1364(ra) # 80002330 <_Z8printIntiii>
    8000288c:	00004517          	auipc	a0,0x4
    80002890:	a1450513          	addi	a0,a0,-1516 # 800062a0 <CONSOLE_STATUS+0x290>
    80002894:	00000097          	auipc	ra,0x0
    80002898:	904080e7          	jalr	-1788(ra) # 80002198 <_Z11printStringPKc>
    8000289c:	0400006f          	j	800028dc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800028a0:	00003517          	auipc	a0,0x3
    800028a4:	7e050513          	addi	a0,a0,2016 # 80006080 <CONSOLE_STATUS+0x70>
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	8f0080e7          	jalr	-1808(ra) # 80002198 <_Z11printStringPKc>
    800028b0:	00000613          	li	a2,0
    800028b4:	00a00593          	li	a1,10
    800028b8:	00048513          	mv	a0,s1
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	a74080e7          	jalr	-1420(ra) # 80002330 <_Z8printIntiii>
    800028c4:	00004517          	auipc	a0,0x4
    800028c8:	9dc50513          	addi	a0,a0,-1572 # 800062a0 <CONSOLE_STATUS+0x290>
    800028cc:	00000097          	auipc	ra,0x0
    800028d0:	8cc080e7          	jalr	-1844(ra) # 80002198 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800028d4:	0014849b          	addiw	s1,s1,1
    800028d8:	0ff4f493          	andi	s1,s1,255
    800028dc:	00f00793          	li	a5,15
    800028e0:	fc97f0e3          	bgeu	a5,s1,800028a0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800028e4:	00003517          	auipc	a0,0x3
    800028e8:	7c450513          	addi	a0,a0,1988 # 800060a8 <CONSOLE_STATUS+0x98>
    800028ec:	00000097          	auipc	ra,0x0
    800028f0:	8ac080e7          	jalr	-1876(ra) # 80002198 <_Z11printStringPKc>
    finishedD = true;
    800028f4:	00100793          	li	a5,1
    800028f8:	00005717          	auipc	a4,0x5
    800028fc:	a2f701a3          	sb	a5,-1501(a4) # 8000731b <finishedD>
    thread_dispatch();
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	a04080e7          	jalr	-1532(ra) # 80001304 <_Z15thread_dispatchv>
}
    80002908:	01813083          	ld	ra,24(sp)
    8000290c:	01013403          	ld	s0,16(sp)
    80002910:	00813483          	ld	s1,8(sp)
    80002914:	00013903          	ld	s2,0(sp)
    80002918:	02010113          	addi	sp,sp,32
    8000291c:	00008067          	ret

0000000080002920 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002920:	fc010113          	addi	sp,sp,-64
    80002924:	02113c23          	sd	ra,56(sp)
    80002928:	02813823          	sd	s0,48(sp)
    8000292c:	02913423          	sd	s1,40(sp)
    80002930:	03213023          	sd	s2,32(sp)
    80002934:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002938:	01000513          	li	a0,16
    8000293c:	00001097          	auipc	ra,0x1
    80002940:	e14080e7          	jalr	-492(ra) # 80003750 <_Znwm>
    80002944:	00050493          	mv	s1,a0
    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static void threadWrapper(void* arg);
protected:
    Thread (){
    80002948:	00005797          	auipc	a5,0x5
    8000294c:	9407b783          	ld	a5,-1728(a5) # 80007288 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002950:	01078793          	addi	a5,a5,16
    80002954:	00f53023          	sd	a5,0(a0)
        //tu izleda da treba da dodas gornji konstruktor
        printString("pre wrappera");
    80002958:	00003517          	auipc	a0,0x3
    8000295c:	76050513          	addi	a0,a0,1888 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002960:	00000097          	auipc	ra,0x0
    80002964:	838080e7          	jalr	-1992(ra) # 80002198 <_Z11printStringPKc>
        //threadWrapper(this); //todo uopste mi ne napravi handle
        //printString("posle wrappera");
        //Thread(threadWrapper(this), this); //todo mozda treba & ispred threadWrapper
        //thread_create_cpp_api(&myHandle, threadWrapper, this);
        thread_create(&myHandle,nullptr, this); //OVO RADI, ZNACI ILI NE RADI START ILI NESTO SJEBE U PREKIDNOJ
    80002968:	00048613          	mv	a2,s1
    8000296c:	00000593          	li	a1,0
    80002970:	00848513          	addi	a0,s1,8
    80002974:	fffff097          	auipc	ra,0xfffff
    80002978:	92c080e7          	jalr	-1748(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    WorkerA():Thread() {}
    8000297c:	00005797          	auipc	a5,0x5
    80002980:	81c78793          	addi	a5,a5,-2020 # 80007198 <_ZTV7WorkerA+0x10>
    80002984:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002988:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000298c:	00003517          	auipc	a0,0x3
    80002990:	73c50513          	addi	a0,a0,1852 # 800060c8 <CONSOLE_STATUS+0xb8>
    80002994:	00000097          	auipc	ra,0x0
    80002998:	804080e7          	jalr	-2044(ra) # 80002198 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000299c:	01000513          	li	a0,16
    800029a0:	00001097          	auipc	ra,0x1
    800029a4:	db0080e7          	jalr	-592(ra) # 80003750 <_Znwm>
    800029a8:	00050493          	mv	s1,a0
    Thread (){
    800029ac:	00005797          	auipc	a5,0x5
    800029b0:	8dc7b783          	ld	a5,-1828(a5) # 80007288 <_GLOBAL_OFFSET_TABLE_+0x30>
    800029b4:	01078793          	addi	a5,a5,16
    800029b8:	00f53023          	sd	a5,0(a0)
        printString("pre wrappera");
    800029bc:	00003517          	auipc	a0,0x3
    800029c0:	6fc50513          	addi	a0,a0,1788 # 800060b8 <CONSOLE_STATUS+0xa8>
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	7d4080e7          	jalr	2004(ra) # 80002198 <_Z11printStringPKc>
        thread_create(&myHandle,nullptr, this); //OVO RADI, ZNACI ILI NE RADI START ILI NESTO SJEBE U PREKIDNOJ
    800029cc:	00048613          	mv	a2,s1
    800029d0:	00000593          	li	a1,0
    800029d4:	00848513          	addi	a0,s1,8
    800029d8:	fffff097          	auipc	ra,0xfffff
    800029dc:	8c8080e7          	jalr	-1848(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    WorkerB():Thread() {}
    800029e0:	00004797          	auipc	a5,0x4
    800029e4:	7e078793          	addi	a5,a5,2016 # 800071c0 <_ZTV7WorkerB+0x10>
    800029e8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800029ec:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800029f0:	00003517          	auipc	a0,0x3
    800029f4:	6f050513          	addi	a0,a0,1776 # 800060e0 <CONSOLE_STATUS+0xd0>
    800029f8:	fffff097          	auipc	ra,0xfffff
    800029fc:	7a0080e7          	jalr	1952(ra) # 80002198 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002a00:	01000513          	li	a0,16
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	d4c080e7          	jalr	-692(ra) # 80003750 <_Znwm>
    80002a0c:	00050493          	mv	s1,a0
    Thread (){
    80002a10:	00005797          	auipc	a5,0x5
    80002a14:	8787b783          	ld	a5,-1928(a5) # 80007288 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002a18:	01078793          	addi	a5,a5,16
    80002a1c:	00f53023          	sd	a5,0(a0)
        printString("pre wrappera");
    80002a20:	00003517          	auipc	a0,0x3
    80002a24:	69850513          	addi	a0,a0,1688 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	770080e7          	jalr	1904(ra) # 80002198 <_Z11printStringPKc>
        thread_create(&myHandle,nullptr, this); //OVO RADI, ZNACI ILI NE RADI START ILI NESTO SJEBE U PREKIDNOJ
    80002a30:	00048613          	mv	a2,s1
    80002a34:	00000593          	li	a1,0
    80002a38:	00848513          	addi	a0,s1,8
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	864080e7          	jalr	-1948(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    WorkerC():Thread() {}
    80002a44:	00004797          	auipc	a5,0x4
    80002a48:	7a478793          	addi	a5,a5,1956 # 800071e8 <_ZTV7WorkerC+0x10>
    80002a4c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002a50:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002a54:	00003517          	auipc	a0,0x3
    80002a58:	6a450513          	addi	a0,a0,1700 # 800060f8 <CONSOLE_STATUS+0xe8>
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	73c080e7          	jalr	1852(ra) # 80002198 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002a64:	01000513          	li	a0,16
    80002a68:	00001097          	auipc	ra,0x1
    80002a6c:	ce8080e7          	jalr	-792(ra) # 80003750 <_Znwm>
    80002a70:	00050493          	mv	s1,a0
    Thread (){
    80002a74:	00005797          	auipc	a5,0x5
    80002a78:	8147b783          	ld	a5,-2028(a5) # 80007288 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002a7c:	01078793          	addi	a5,a5,16
    80002a80:	00f53023          	sd	a5,0(a0)
        printString("pre wrappera");
    80002a84:	00003517          	auipc	a0,0x3
    80002a88:	63450513          	addi	a0,a0,1588 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	70c080e7          	jalr	1804(ra) # 80002198 <_Z11printStringPKc>
        thread_create(&myHandle,nullptr, this); //OVO RADI, ZNACI ILI NE RADI START ILI NESTO SJEBE U PREKIDNOJ
    80002a94:	00048613          	mv	a2,s1
    80002a98:	00000593          	li	a1,0
    80002a9c:	00848513          	addi	a0,s1,8
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	800080e7          	jalr	-2048(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    WorkerD():Thread() {}
    80002aa8:	00004797          	auipc	a5,0x4
    80002aac:	76878793          	addi	a5,a5,1896 # 80007210 <_ZTV7WorkerD+0x10>
    80002ab0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002ab4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002ab8:	00003517          	auipc	a0,0x3
    80002abc:	65850513          	addi	a0,a0,1624 # 80006110 <CONSOLE_STATUS+0x100>
    80002ac0:	fffff097          	auipc	ra,0xfffff
    80002ac4:	6d8080e7          	jalr	1752(ra) # 80002198 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002ac8:	00000493          	li	s1,0
    80002acc:	00300793          	li	a5,3
    80002ad0:	0497c663          	blt	a5,s1,80002b1c <_Z20Threads_CPP_API_testv+0x1fc>
        printString("dodje do starta\n");
    80002ad4:	00003517          	auipc	a0,0x3
    80002ad8:	65450513          	addi	a0,a0,1620 # 80006128 <CONSOLE_STATUS+0x118>
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	6bc080e7          	jalr	1724(ra) # 80002198 <_Z11printStringPKc>
        threads[i]->start();
    80002ae4:	00349793          	slli	a5,s1,0x3
    80002ae8:	fe040713          	addi	a4,s0,-32
    80002aec:	00f707b3          	add	a5,a4,a5
    80002af0:	fe07b503          	ld	a0,-32(a5)
    80002af4:	00001097          	auipc	ra,0x1
    80002af8:	e04080e7          	jalr	-508(ra) # 800038f8 <_ZN6Thread5startEv>
        printString("startovao\n");
    80002afc:	00003517          	auipc	a0,0x3
    80002b00:	64450513          	addi	a0,a0,1604 # 80006140 <CONSOLE_STATUS+0x130>
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	694080e7          	jalr	1684(ra) # 80002198 <_Z11printStringPKc>
    for(int i=0; i<4; i++) {
    80002b0c:	0014849b          	addiw	s1,s1,1
    80002b10:	fbdff06f          	j	80002acc <_Z20Threads_CPP_API_testv+0x1ac>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        //printString("udje u dispatch\n");
        Thread::dispatch();
    80002b14:	00001097          	auipc	ra,0x1
    80002b18:	dbc080e7          	jalr	-580(ra) # 800038d0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002b1c:	00004797          	auipc	a5,0x4
    80002b20:	7fc7c783          	lbu	a5,2044(a5) # 80007318 <finishedA>
    80002b24:	fe0788e3          	beqz	a5,80002b14 <_Z20Threads_CPP_API_testv+0x1f4>
    80002b28:	00004797          	auipc	a5,0x4
    80002b2c:	7f17c783          	lbu	a5,2033(a5) # 80007319 <finishedB>
    80002b30:	fe0782e3          	beqz	a5,80002b14 <_Z20Threads_CPP_API_testv+0x1f4>
    80002b34:	00004797          	auipc	a5,0x4
    80002b38:	7e67c783          	lbu	a5,2022(a5) # 8000731a <finishedC>
    80002b3c:	fc078ce3          	beqz	a5,80002b14 <_Z20Threads_CPP_API_testv+0x1f4>
    80002b40:	00004797          	auipc	a5,0x4
    80002b44:	7db7c783          	lbu	a5,2011(a5) # 8000731b <finishedD>
    80002b48:	fc0786e3          	beqz	a5,80002b14 <_Z20Threads_CPP_API_testv+0x1f4>
        //printString("uradi dispatch\n");
    }

    for (auto thread: threads) { delete thread; }
    80002b4c:	fc040493          	addi	s1,s0,-64
    80002b50:	0080006f          	j	80002b58 <_Z20Threads_CPP_API_testv+0x238>
    80002b54:	00848493          	addi	s1,s1,8
    80002b58:	fe040793          	addi	a5,s0,-32
    80002b5c:	08f48663          	beq	s1,a5,80002be8 <_Z20Threads_CPP_API_testv+0x2c8>
    80002b60:	0004b503          	ld	a0,0(s1)
    80002b64:	fe0508e3          	beqz	a0,80002b54 <_Z20Threads_CPP_API_testv+0x234>
    80002b68:	00053783          	ld	a5,0(a0)
    80002b6c:	0087b783          	ld	a5,8(a5)
    80002b70:	000780e7          	jalr	a5
    80002b74:	fe1ff06f          	j	80002b54 <_Z20Threads_CPP_API_testv+0x234>
    80002b78:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002b7c:	00048513          	mv	a0,s1
    80002b80:	00001097          	auipc	ra,0x1
    80002b84:	c20080e7          	jalr	-992(ra) # 800037a0 <_ZdlPv>
    80002b88:	00090513          	mv	a0,s2
    80002b8c:	00006097          	auipc	ra,0x6
    80002b90:	88c080e7          	jalr	-1908(ra) # 80008418 <_Unwind_Resume>
    80002b94:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002b98:	00048513          	mv	a0,s1
    80002b9c:	00001097          	auipc	ra,0x1
    80002ba0:	c04080e7          	jalr	-1020(ra) # 800037a0 <_ZdlPv>
    80002ba4:	00090513          	mv	a0,s2
    80002ba8:	00006097          	auipc	ra,0x6
    80002bac:	870080e7          	jalr	-1936(ra) # 80008418 <_Unwind_Resume>
    80002bb0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002bb4:	00048513          	mv	a0,s1
    80002bb8:	00001097          	auipc	ra,0x1
    80002bbc:	be8080e7          	jalr	-1048(ra) # 800037a0 <_ZdlPv>
    80002bc0:	00090513          	mv	a0,s2
    80002bc4:	00006097          	auipc	ra,0x6
    80002bc8:	854080e7          	jalr	-1964(ra) # 80008418 <_Unwind_Resume>
    80002bcc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002bd0:	00048513          	mv	a0,s1
    80002bd4:	00001097          	auipc	ra,0x1
    80002bd8:	bcc080e7          	jalr	-1076(ra) # 800037a0 <_ZdlPv>
    80002bdc:	00090513          	mv	a0,s2
    80002be0:	00006097          	auipc	ra,0x6
    80002be4:	838080e7          	jalr	-1992(ra) # 80008418 <_Unwind_Resume>
}
    80002be8:	03813083          	ld	ra,56(sp)
    80002bec:	03013403          	ld	s0,48(sp)
    80002bf0:	02813483          	ld	s1,40(sp)
    80002bf4:	02013903          	ld	s2,32(sp)
    80002bf8:	04010113          	addi	sp,sp,64
    80002bfc:	00008067          	ret

0000000080002c00 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80002c00:	ff010113          	addi	sp,sp,-16
    80002c04:	00113423          	sd	ra,8(sp)
    80002c08:	00813023          	sd	s0,0(sp)
    80002c0c:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	d10080e7          	jalr	-752(ra) # 80002920 <_Z20Threads_CPP_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80002c18:	00813083          	ld	ra,8(sp)
    80002c1c:	00013403          	ld	s0,0(sp)
    80002c20:	01010113          	addi	sp,sp,16
    80002c24:	00008067          	ret

0000000080002c28 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002c28:	ff010113          	addi	sp,sp,-16
    80002c2c:	00113423          	sd	ra,8(sp)
    80002c30:	00813023          	sd	s0,0(sp)
    80002c34:	01010413          	addi	s0,sp,16
    80002c38:	00004797          	auipc	a5,0x4
    80002c3c:	56078793          	addi	a5,a5,1376 # 80007198 <_ZTV7WorkerA+0x10>
    80002c40:	00f53023          	sd	a5,0(a0)
    80002c44:	00001097          	auipc	ra,0x1
    80002c48:	bd8080e7          	jalr	-1064(ra) # 8000381c <_ZN6ThreadD1Ev>
    80002c4c:	00813083          	ld	ra,8(sp)
    80002c50:	00013403          	ld	s0,0(sp)
    80002c54:	01010113          	addi	sp,sp,16
    80002c58:	00008067          	ret

0000000080002c5c <_ZN7WorkerAD0Ev>:
    80002c5c:	fe010113          	addi	sp,sp,-32
    80002c60:	00113c23          	sd	ra,24(sp)
    80002c64:	00813823          	sd	s0,16(sp)
    80002c68:	00913423          	sd	s1,8(sp)
    80002c6c:	02010413          	addi	s0,sp,32
    80002c70:	00050493          	mv	s1,a0
    80002c74:	00004797          	auipc	a5,0x4
    80002c78:	52478793          	addi	a5,a5,1316 # 80007198 <_ZTV7WorkerA+0x10>
    80002c7c:	00f53023          	sd	a5,0(a0)
    80002c80:	00001097          	auipc	ra,0x1
    80002c84:	b9c080e7          	jalr	-1124(ra) # 8000381c <_ZN6ThreadD1Ev>
    80002c88:	00048513          	mv	a0,s1
    80002c8c:	00001097          	auipc	ra,0x1
    80002c90:	b14080e7          	jalr	-1260(ra) # 800037a0 <_ZdlPv>
    80002c94:	01813083          	ld	ra,24(sp)
    80002c98:	01013403          	ld	s0,16(sp)
    80002c9c:	00813483          	ld	s1,8(sp)
    80002ca0:	02010113          	addi	sp,sp,32
    80002ca4:	00008067          	ret

0000000080002ca8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80002ca8:	ff010113          	addi	sp,sp,-16
    80002cac:	00113423          	sd	ra,8(sp)
    80002cb0:	00813023          	sd	s0,0(sp)
    80002cb4:	01010413          	addi	s0,sp,16
    80002cb8:	00004797          	auipc	a5,0x4
    80002cbc:	50878793          	addi	a5,a5,1288 # 800071c0 <_ZTV7WorkerB+0x10>
    80002cc0:	00f53023          	sd	a5,0(a0)
    80002cc4:	00001097          	auipc	ra,0x1
    80002cc8:	b58080e7          	jalr	-1192(ra) # 8000381c <_ZN6ThreadD1Ev>
    80002ccc:	00813083          	ld	ra,8(sp)
    80002cd0:	00013403          	ld	s0,0(sp)
    80002cd4:	01010113          	addi	sp,sp,16
    80002cd8:	00008067          	ret

0000000080002cdc <_ZN7WorkerBD0Ev>:
    80002cdc:	fe010113          	addi	sp,sp,-32
    80002ce0:	00113c23          	sd	ra,24(sp)
    80002ce4:	00813823          	sd	s0,16(sp)
    80002ce8:	00913423          	sd	s1,8(sp)
    80002cec:	02010413          	addi	s0,sp,32
    80002cf0:	00050493          	mv	s1,a0
    80002cf4:	00004797          	auipc	a5,0x4
    80002cf8:	4cc78793          	addi	a5,a5,1228 # 800071c0 <_ZTV7WorkerB+0x10>
    80002cfc:	00f53023          	sd	a5,0(a0)
    80002d00:	00001097          	auipc	ra,0x1
    80002d04:	b1c080e7          	jalr	-1252(ra) # 8000381c <_ZN6ThreadD1Ev>
    80002d08:	00048513          	mv	a0,s1
    80002d0c:	00001097          	auipc	ra,0x1
    80002d10:	a94080e7          	jalr	-1388(ra) # 800037a0 <_ZdlPv>
    80002d14:	01813083          	ld	ra,24(sp)
    80002d18:	01013403          	ld	s0,16(sp)
    80002d1c:	00813483          	ld	s1,8(sp)
    80002d20:	02010113          	addi	sp,sp,32
    80002d24:	00008067          	ret

0000000080002d28 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80002d28:	ff010113          	addi	sp,sp,-16
    80002d2c:	00113423          	sd	ra,8(sp)
    80002d30:	00813023          	sd	s0,0(sp)
    80002d34:	01010413          	addi	s0,sp,16
    80002d38:	00004797          	auipc	a5,0x4
    80002d3c:	4b078793          	addi	a5,a5,1200 # 800071e8 <_ZTV7WorkerC+0x10>
    80002d40:	00f53023          	sd	a5,0(a0)
    80002d44:	00001097          	auipc	ra,0x1
    80002d48:	ad8080e7          	jalr	-1320(ra) # 8000381c <_ZN6ThreadD1Ev>
    80002d4c:	00813083          	ld	ra,8(sp)
    80002d50:	00013403          	ld	s0,0(sp)
    80002d54:	01010113          	addi	sp,sp,16
    80002d58:	00008067          	ret

0000000080002d5c <_ZN7WorkerCD0Ev>:
    80002d5c:	fe010113          	addi	sp,sp,-32
    80002d60:	00113c23          	sd	ra,24(sp)
    80002d64:	00813823          	sd	s0,16(sp)
    80002d68:	00913423          	sd	s1,8(sp)
    80002d6c:	02010413          	addi	s0,sp,32
    80002d70:	00050493          	mv	s1,a0
    80002d74:	00004797          	auipc	a5,0x4
    80002d78:	47478793          	addi	a5,a5,1140 # 800071e8 <_ZTV7WorkerC+0x10>
    80002d7c:	00f53023          	sd	a5,0(a0)
    80002d80:	00001097          	auipc	ra,0x1
    80002d84:	a9c080e7          	jalr	-1380(ra) # 8000381c <_ZN6ThreadD1Ev>
    80002d88:	00048513          	mv	a0,s1
    80002d8c:	00001097          	auipc	ra,0x1
    80002d90:	a14080e7          	jalr	-1516(ra) # 800037a0 <_ZdlPv>
    80002d94:	01813083          	ld	ra,24(sp)
    80002d98:	01013403          	ld	s0,16(sp)
    80002d9c:	00813483          	ld	s1,8(sp)
    80002da0:	02010113          	addi	sp,sp,32
    80002da4:	00008067          	ret

0000000080002da8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80002da8:	ff010113          	addi	sp,sp,-16
    80002dac:	00113423          	sd	ra,8(sp)
    80002db0:	00813023          	sd	s0,0(sp)
    80002db4:	01010413          	addi	s0,sp,16
    80002db8:	00004797          	auipc	a5,0x4
    80002dbc:	45878793          	addi	a5,a5,1112 # 80007210 <_ZTV7WorkerD+0x10>
    80002dc0:	00f53023          	sd	a5,0(a0)
    80002dc4:	00001097          	auipc	ra,0x1
    80002dc8:	a58080e7          	jalr	-1448(ra) # 8000381c <_ZN6ThreadD1Ev>
    80002dcc:	00813083          	ld	ra,8(sp)
    80002dd0:	00013403          	ld	s0,0(sp)
    80002dd4:	01010113          	addi	sp,sp,16
    80002dd8:	00008067          	ret

0000000080002ddc <_ZN7WorkerDD0Ev>:
    80002ddc:	fe010113          	addi	sp,sp,-32
    80002de0:	00113c23          	sd	ra,24(sp)
    80002de4:	00813823          	sd	s0,16(sp)
    80002de8:	00913423          	sd	s1,8(sp)
    80002dec:	02010413          	addi	s0,sp,32
    80002df0:	00050493          	mv	s1,a0
    80002df4:	00004797          	auipc	a5,0x4
    80002df8:	41c78793          	addi	a5,a5,1052 # 80007210 <_ZTV7WorkerD+0x10>
    80002dfc:	00f53023          	sd	a5,0(a0)
    80002e00:	00001097          	auipc	ra,0x1
    80002e04:	a1c080e7          	jalr	-1508(ra) # 8000381c <_ZN6ThreadD1Ev>
    80002e08:	00048513          	mv	a0,s1
    80002e0c:	00001097          	auipc	ra,0x1
    80002e10:	994080e7          	jalr	-1644(ra) # 800037a0 <_ZdlPv>
    80002e14:	01813083          	ld	ra,24(sp)
    80002e18:	01013403          	ld	s0,16(sp)
    80002e1c:	00813483          	ld	s1,8(sp)
    80002e20:	02010113          	addi	sp,sp,32
    80002e24:	00008067          	ret

0000000080002e28 <_ZN7WorkerA3runEv>:
    void run() override {
    80002e28:	ff010113          	addi	sp,sp,-16
    80002e2c:	00113423          	sd	ra,8(sp)
    80002e30:	00813023          	sd	s0,0(sp)
    80002e34:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002e38:	00000593          	li	a1,0
    80002e3c:	fffff097          	auipc	ra,0xfffff
    80002e40:	67c080e7          	jalr	1660(ra) # 800024b8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80002e44:	00813083          	ld	ra,8(sp)
    80002e48:	00013403          	ld	s0,0(sp)
    80002e4c:	01010113          	addi	sp,sp,16
    80002e50:	00008067          	ret

0000000080002e54 <_ZN7WorkerB3runEv>:
    void run() override {
    80002e54:	ff010113          	addi	sp,sp,-16
    80002e58:	00113423          	sd	ra,8(sp)
    80002e5c:	00813023          	sd	s0,0(sp)
    80002e60:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002e64:	00000593          	li	a1,0
    80002e68:	fffff097          	auipc	ra,0xfffff
    80002e6c:	71c080e7          	jalr	1820(ra) # 80002584 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002e70:	00813083          	ld	ra,8(sp)
    80002e74:	00013403          	ld	s0,0(sp)
    80002e78:	01010113          	addi	sp,sp,16
    80002e7c:	00008067          	ret

0000000080002e80 <_ZN7WorkerC3runEv>:
    void run() override {
    80002e80:	ff010113          	addi	sp,sp,-16
    80002e84:	00113423          	sd	ra,8(sp)
    80002e88:	00813023          	sd	s0,0(sp)
    80002e8c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80002e90:	00000593          	li	a1,0
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	7c4080e7          	jalr	1988(ra) # 80002658 <_ZN7WorkerC11workerBodyCEPv>
    }
    80002e9c:	00813083          	ld	ra,8(sp)
    80002ea0:	00013403          	ld	s0,0(sp)
    80002ea4:	01010113          	addi	sp,sp,16
    80002ea8:	00008067          	ret

0000000080002eac <_ZN7WorkerD3runEv>:
    void run() override {
    80002eac:	ff010113          	addi	sp,sp,-16
    80002eb0:	00113423          	sd	ra,8(sp)
    80002eb4:	00813023          	sd	s0,0(sp)
    80002eb8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002ebc:	00000593          	li	a1,0
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	918080e7          	jalr	-1768(ra) # 800027d8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80002ec8:	00813083          	ld	ra,8(sp)
    80002ecc:	00013403          	ld	s0,0(sp)
    80002ed0:	01010113          	addi	sp,sp,16
    80002ed4:	00008067          	ret

0000000080002ed8 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80002ed8:	ff010113          	addi	sp,sp,-16
    80002edc:	00813423          	sd	s0,8(sp)
    80002ee0:	01010413          	addi	s0,sp,16
    80002ee4:	00100793          	li	a5,1
    80002ee8:	00f50863          	beq	a0,a5,80002ef8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002eec:	00813403          	ld	s0,8(sp)
    80002ef0:	01010113          	addi	sp,sp,16
    80002ef4:	00008067          	ret
    80002ef8:	000107b7          	lui	a5,0x10
    80002efc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002f00:	fef596e3          	bne	a1,a5,80002eec <_Z41__static_initialization_and_destruction_0ii+0x14>
    LinkedList() : head(0), tail(0) {}
    80002f04:	00004797          	auipc	a5,0x4
    80002f08:	41c78793          	addi	a5,a5,1052 # 80007320 <_ZN9Scheduler19readyCoroutineQueueE>
    80002f0c:	0007b023          	sd	zero,0(a5)
    80002f10:	0007b423          	sd	zero,8(a5)
    80002f14:	fd9ff06f          	j	80002eec <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002f18 <_ZN9Scheduler3getEv>:
{
    80002f18:	fe010113          	addi	sp,sp,-32
    80002f1c:	00113c23          	sd	ra,24(sp)
    80002f20:	00813823          	sd	s0,16(sp)
    80002f24:	00913423          	sd	s1,8(sp)
    80002f28:	02010413          	addi	s0,sp,32
        if (!head) {return 0;}
    80002f2c:	00004517          	auipc	a0,0x4
    80002f30:	3f453503          	ld	a0,1012(a0) # 80007320 <_ZN9Scheduler19readyCoroutineQueueE>
    80002f34:	04050263          	beqz	a0,80002f78 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002f38:	00853783          	ld	a5,8(a0)
    80002f3c:	00004717          	auipc	a4,0x4
    80002f40:	3ef73223          	sd	a5,996(a4) # 80007320 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80002f44:	02078463          	beqz	a5,80002f6c <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    80002f48:	00053483          	ld	s1,0(a0)
        delete elem;
    80002f4c:	00001097          	auipc	ra,0x1
    80002f50:	854080e7          	jalr	-1964(ra) # 800037a0 <_ZdlPv>
}
    80002f54:	00048513          	mv	a0,s1
    80002f58:	01813083          	ld	ra,24(sp)
    80002f5c:	01013403          	ld	s0,16(sp)
    80002f60:	00813483          	ld	s1,8(sp)
    80002f64:	02010113          	addi	sp,sp,32
    80002f68:	00008067          	ret
            tail = 0;
    80002f6c:	00004797          	auipc	a5,0x4
    80002f70:	3a07be23          	sd	zero,956(a5) # 80007328 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002f74:	fd5ff06f          	j	80002f48 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80002f78:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002f7c:	fd9ff06f          	j	80002f54 <_ZN9Scheduler3getEv+0x3c>

0000000080002f80 <_ZN9Scheduler3putEP3TCB>:
{
    80002f80:	ff010113          	addi	sp,sp,-16
    80002f84:	00813423          	sd	s0,8(sp)
    80002f88:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002f8c:	00004797          	auipc	a5,0x4
    80002f90:	2f47b783          	ld	a5,756(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f94:	0007b783          	ld	a5,0(a5)
    80002f98:	0c078a63          	beqz	a5,8000306c <_ZN9Scheduler3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80002f9c:	00004717          	auipc	a4,0x4
    80002fa0:	2e473703          	ld	a4,740(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002fa4:	00073683          	ld	a3,0(a4)
    80002fa8:	0006b683          	ld	a3,0(a3)
    80002fac:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80002fb0:	00073703          	ld	a4,0(a4)
    80002fb4:	00873603          	ld	a2,8(a4)
    80002fb8:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80002fbc:	0107b703          	ld	a4,16(a5)
    80002fc0:	03f00593          	li	a1,63
    80002fc4:	02e5f663          	bgeu	a1,a4,80002ff0 <_ZN9Scheduler3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80002fc8:	fc070713          	addi	a4,a4,-64
    80002fcc:	01800593          	li	a1,24
    80002fd0:	02e5ec63          	bltu	a1,a4,80003008 <_ZN9Scheduler3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80002fd4:	02060263          	beqz	a2,80002ff8 <_ZN9Scheduler3putEP3TCB+0x78>
    80002fd8:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80002fdc:	0007b703          	ld	a4,0(a5)
    80002fe0:	08070663          	beqz	a4,8000306c <_ZN9Scheduler3putEP3TCB+0xec>
    80002fe4:	0087b683          	ld	a3,8(a5)
    80002fe8:	00d73423          	sd	a3,8(a4)
                return cur;
    80002fec:	0800006f          	j	8000306c <_ZN9Scheduler3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002ff0:	00068793          	mv	a5,a3
    80002ff4:	fa5ff06f          	j	80002f98 <_ZN9Scheduler3putEP3TCB+0x18>
                else fmem_head = cur->next;
    80002ff8:	00004717          	auipc	a4,0x4
    80002ffc:	28873703          	ld	a4,648(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003000:	00d73023          	sd	a3,0(a4)
    80003004:	fd9ff06f          	j	80002fdc <_ZN9Scheduler3putEP3TCB+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80003008:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    8000300c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80003010:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80003014:	0087b683          	ld	a3,8(a5)
    80003018:	08068063          	beqz	a3,80003098 <_ZN9Scheduler3putEP3TCB+0x118>
    8000301c:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80003020:	0007b683          	ld	a3,0(a5)
    80003024:	00068463          	beqz	a3,8000302c <_ZN9Scheduler3putEP3TCB+0xac>
    80003028:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    8000302c:	0087b603          	ld	a2,8(a5)
    80003030:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80003034:	0007b683          	ld	a3,0(a5)
    80003038:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    8000303c:	0107b783          	ld	a5,16(a5)
    80003040:	fc078793          	addi	a5,a5,-64
    80003044:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80003048:	0c070693          	addi	a3,a4,192
    8000304c:	00004597          	auipc	a1,0x4
    80003050:	2345b583          	ld	a1,564(a1) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003054:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80003058:	00073583          	ld	a1,0(a4)
    8000305c:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80003060:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80003064:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80003068:	00070793          	mv	a5,a4
        elem->data=data;
    8000306c:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80003070:	0007b423          	sd	zero,8(a5)
        if (tail){
    80003074:	00004717          	auipc	a4,0x4
    80003078:	2b473703          	ld	a4,692(a4) # 80007328 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000307c:	02070863          	beqz	a4,800030ac <_ZN9Scheduler3putEP3TCB+0x12c>
            tail->next=elem;
    80003080:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80003084:	00004717          	auipc	a4,0x4
    80003088:	2af73223          	sd	a5,676(a4) # 80007328 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000308c:	00813403          	ld	s0,8(sp)
    80003090:	01010113          	addi	sp,sp,16
    80003094:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80003098:	0c070693          	addi	a3,a4,192
    8000309c:	00004617          	auipc	a2,0x4
    800030a0:	1e463603          	ld	a2,484(a2) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800030a4:	00d63023          	sd	a3,0(a2)
    800030a8:	f79ff06f          	j	80003020 <_ZN9Scheduler3putEP3TCB+0xa0>
            head=tail=elem;
    800030ac:	00004717          	auipc	a4,0x4
    800030b0:	27470713          	addi	a4,a4,628 # 80007320 <_ZN9Scheduler19readyCoroutineQueueE>
    800030b4:	00f73423          	sd	a5,8(a4)
    800030b8:	00f73023          	sd	a5,0(a4)
    800030bc:	fd1ff06f          	j	8000308c <_ZN9Scheduler3putEP3TCB+0x10c>

00000000800030c0 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    800030c0:	ff010113          	addi	sp,sp,-16
    800030c4:	00113423          	sd	ra,8(sp)
    800030c8:	00813023          	sd	s0,0(sp)
    800030cc:	01010413          	addi	s0,sp,16
    800030d0:	000105b7          	lui	a1,0x10
    800030d4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800030d8:	00100513          	li	a0,1
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	dfc080e7          	jalr	-516(ra) # 80002ed8 <_Z41__static_initialization_and_destruction_0ii>
    800030e4:	00813083          	ld	ra,8(sp)
    800030e8:	00013403          	ld	s0,0(sp)
    800030ec:	01010113          	addi	sp,sp,16
    800030f0:	00008067          	ret

00000000800030f4 <main>:
//void smoker1(void* arg);
//void smoker2(void* arg);
//void smoker3(void* arg);
//void dummyfun(void* arg);

int main(){
    800030f4:	fe010113          	addi	sp,sp,-32
    800030f8:	00113c23          	sd	ra,24(sp)
    800030fc:	00813823          	sd	s0,16(sp)
    80003100:	02010413          	addi	s0,sp,32
        if (!instance) {
    80003104:	00004797          	auipc	a5,0x4
    80003108:	1747b783          	ld	a5,372(a5) # 80007278 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000310c:	0007b783          	ld	a5,0(a5)
    80003110:	04078863          	beqz	a5,80003160 <main+0x6c>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    80003114:	00004797          	auipc	a5,0x4
    80003118:	15c7b783          	ld	a5,348(a5) # 80007270 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    8000311c:	10579073          	csrw	stvec,a5
    //__asm__ volatile ("csrs sstatus, 0x2"); //todo nesto treba sa ovim spoljasnjim prekidima da se radi
    //RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    thread_t main;
    thread_create(&main, nullptr, nullptr);
    80003120:	00000613          	li	a2,0
    80003124:	00000593          	li	a1,0
    80003128:	fe840513          	addi	a0,s0,-24
    8000312c:	ffffe097          	auipc	ra,0xffffe
    80003130:	174080e7          	jalr	372(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    80003134:	00004797          	auipc	a5,0x4
    80003138:	15c7b783          	ld	a5,348(a5) # 80007290 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000313c:	fe843703          	ld	a4,-24(s0)
    80003140:	00e7b023          	sd	a4,0(a5)
//    thread_create(&t31, dummyfun, nullptr);
//    for (int i = 0; i < 30; ++i) {
//        thread_dispatch();
//    }
//    if(sem_wait(dummy)==-1) printString("ubien semafor\n");
    userMain();
    80003144:	00000097          	auipc	ra,0x0
    80003148:	abc080e7          	jalr	-1348(ra) # 80002c00 <_Z8userMainv>
//    char x=getc();
//    putc(x);

    return 0;
}
    8000314c:	00000513          	li	a0,0
    80003150:	01813083          	ld	ra,24(sp)
    80003154:	01013403          	ld	s0,16(sp)
    80003158:	02010113          	addi	sp,sp,32
    8000315c:	00008067          	ret
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80003160:	00004797          	auipc	a5,0x4
    80003164:	1007b783          	ld	a5,256(a5) # 80007260 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003168:	0007b783          	ld	a5,0(a5)
    8000316c:	00004697          	auipc	a3,0x4
    80003170:	1146b683          	ld	a3,276(a3) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003174:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80003178:	00004717          	auipc	a4,0x4
    8000317c:	12073703          	ld	a4,288(a4) # 80007298 <_GLOBAL_OFFSET_TABLE_+0x40>
    80003180:	00073703          	ld	a4,0(a4)
    80003184:	40f70733          	sub	a4,a4,a5
    80003188:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    8000318c:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80003190:	0006b783          	ld	a5,0(a3)
    80003194:	0007b423          	sd	zero,8(a5)
            return instance;
    80003198:	f7dff06f          	j	80003114 <main+0x20>

000000008000319c <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    8000319c:	ff010113          	addi	sp,sp,-16
    800031a0:	00813423          	sd	s0,8(sp)
    800031a4:	01010413          	addi	s0,sp,16
    return finished;
}
    800031a8:	02054503          	lbu	a0,32(a0)
    800031ac:	00813403          	ld	s0,8(sp)
    800031b0:	01010113          	addi	sp,sp,16
    800031b4:	00008067          	ret

00000000800031b8 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    800031b8:	ff010113          	addi	sp,sp,-16
    800031bc:	00813423          	sd	s0,8(sp)
    800031c0:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    800031c4:	02b50023          	sb	a1,32(a0)
}
    800031c8:	00813403          	ld	s0,8(sp)
    800031cc:	01010113          	addi	sp,sp,16
    800031d0:	00008067          	ret

00000000800031d4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments, bool started) {
    800031d4:	fe010113          	addi	sp,sp,-32
    800031d8:	00113c23          	sd	ra,24(sp)
    800031dc:	00813823          	sd	s0,16(sp)
    800031e0:	00913423          	sd	s1,8(sp)
    800031e4:	02010413          	addi	s0,sp,32
    800031e8:	00058493          	mv	s1,a1
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800031ec:	00004797          	auipc	a5,0x4
    800031f0:	0947b783          	ld	a5,148(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800031f4:	0007b783          	ld	a5,0(a5)
    800031f8:	0c078a63          	beqz	a5,800032cc <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
            cur->next=fmem_head->next;
    800031fc:	00004717          	auipc	a4,0x4
    80003200:	08473703          	ld	a4,132(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003204:	00073583          	ld	a1,0(a4)
    80003208:	0005b583          	ld	a1,0(a1)
    8000320c:	00b7b023          	sd	a1,0(a5)
            cur->prev=fmem_head->prev;
    80003210:	00073703          	ld	a4,0(a4)
    80003214:	00873803          	ld	a6,8(a4)
    80003218:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    8000321c:	0107b703          	ld	a4,16(a5)
    80003220:	07f00893          	li	a7,127
    80003224:	02e8f663          	bgeu	a7,a4,80003250 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80003228:	f8070713          	addi	a4,a4,-128
    8000322c:	01800893          	li	a7,24
    80003230:	02e8ec63          	bltu	a7,a4,80003268 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80003234:	02080263          	beqz	a6,80003258 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x84>
    80003238:	00b83023          	sd	a1,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    8000323c:	0007b703          	ld	a4,0(a5)
    80003240:	08070663          	beqz	a4,800032cc <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
    80003244:	0087b583          	ld	a1,8(a5)
    80003248:	00b73423          	sd	a1,8(a4)
                return cur;
    8000324c:	0800006f          	j	800032cc <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003250:	00058793          	mv	a5,a1
    80003254:	fa5ff06f          	j	800031f8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x24>
                else fmem_head = cur->next;
    80003258:	00004717          	auipc	a4,0x4
    8000325c:	02873703          	ld	a4,40(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003260:	00b73023          	sd	a1,0(a4)
    80003264:	fd9ff06f          	j	8000323c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80003268:	08078713          	addi	a4,a5,128
                newfrgm->prev=nullptr;
    8000326c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80003270:	0807b023          	sd	zero,128(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80003274:	0087b583          	ld	a1,8(a5)
    80003278:	0c058c63          	beqz	a1,80003350 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x17c>
    8000327c:	00e5b023          	sd	a4,0(a1)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80003280:	0007b583          	ld	a1,0(a5)
    80003284:	00058463          	beqz	a1,8000328c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xb8>
    80003288:	00e5b423          	sd	a4,8(a1)
                newfrgm->prev = cur->prev;
    8000328c:	0087b803          	ld	a6,8(a5)
    80003290:	01073423          	sd	a6,8(a4)
                newfrgm->next = cur->next;
    80003294:	0007b583          	ld	a1,0(a5)
    80003298:	00b73023          	sd	a1,0(a4)
                newfrgm->size = cur->size-size;
    8000329c:	0107b783          	ld	a5,16(a5)
    800032a0:	f8078793          	addi	a5,a5,-128
    800032a4:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800032a8:	0c070593          	addi	a1,a4,192
    800032ac:	00004897          	auipc	a7,0x4
    800032b0:	fd48b883          	ld	a7,-44(a7) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800032b4:	00b8b023          	sd	a1,0(a7)
                fmem_head->next=newfrgm->next;
    800032b8:	00073883          	ld	a7,0(a4)
    800032bc:	0d173023          	sd	a7,192(a4)
                fmem_head->prev=newfrgm->prev;
    800032c0:	0d073423          	sd	a6,200(a4)
                fmem_head->size=newfrgm->size;
    800032c4:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800032c8:	00070793          	mv	a5,a4
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    800032cc:	00f4b023          	sd	a5,0(s1)
    (*handle)->body=body;
    800032d0:	00a7b023          	sd	a0,0(a5)
    (*handle)->arguments=arguments;
    800032d4:	0004b783          	ld	a5,0(s1)
    800032d8:	02c7b423          	sd	a2,40(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    800032dc:	12050663          	beqz	a0,80003408 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x234>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800032e0:	00004797          	auipc	a5,0x4
    800032e4:	fa07b783          	ld	a5,-96(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800032e8:	0007b783          	ld	a5,0(a5)
    800032ec:	12078063          	beqz	a5,8000340c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
            cur->next=fmem_head->next;
    800032f0:	00004717          	auipc	a4,0x4
    800032f4:	f9073703          	ld	a4,-112(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800032f8:	00073603          	ld	a2,0(a4)
    800032fc:	00063583          	ld	a1,0(a2)
    80003300:	00b7b023          	sd	a1,0(a5)
            cur->prev=fmem_head->prev;
    80003304:	00073703          	ld	a4,0(a4)
    80003308:	00873803          	ld	a6,8(a4)
    8000330c:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    80003310:	0107b703          	ld	a4,16(a5)
    80003314:	00001637          	lui	a2,0x1
    80003318:	03f60613          	addi	a2,a2,63 # 103f <_entry-0x7fffefc1>
    8000331c:	04e67463          	bgeu	a2,a4,80003364 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x190>
            if (cur->size-size<=sizeof(FreeMem)){
    80003320:	fffff637          	lui	a2,0xfffff
    80003324:	fc060613          	addi	a2,a2,-64 # ffffffffffffefc0 <end+0xffffffff7fff6a10>
    80003328:	00c70733          	add	a4,a4,a2
    8000332c:	01800613          	li	a2,24
    80003330:	04e66663          	bltu	a2,a4,8000337c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1a8>
                if (cur->prev) cur->prev->next = cur->next;
    80003334:	02080c63          	beqz	a6,8000336c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x198>
    80003338:	00b83023          	sd	a1,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    8000333c:	0007b703          	ld	a4,0(a5)
    80003340:	0c070663          	beqz	a4,8000340c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
    80003344:	0087b603          	ld	a2,8(a5)
    80003348:	00c73423          	sd	a2,8(a4)
                return cur;
    8000334c:	0c00006f          	j	8000340c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80003350:	0c070593          	addi	a1,a4,192
    80003354:	00004817          	auipc	a6,0x4
    80003358:	f2c83803          	ld	a6,-212(a6) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000335c:	00b83023          	sd	a1,0(a6)
    80003360:	f21ff06f          	j	80003280 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xac>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003364:	00058793          	mv	a5,a1
    80003368:	f85ff06f          	j	800032ec <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x118>
                else fmem_head = cur->next;
    8000336c:	00004717          	auipc	a4,0x4
    80003370:	f1473703          	ld	a4,-236(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003374:	00b73023          	sd	a1,0(a4)
    80003378:	fc5ff06f          	j	8000333c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x168>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    8000337c:	00001737          	lui	a4,0x1
    80003380:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    80003384:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    80003388:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    8000338c:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80003390:	0087b603          	ld	a2,8(a5)
    80003394:	06060063          	beqz	a2,800033f4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x220>
    80003398:	00e63023          	sd	a4,0(a2)
                if (cur && cur->next) cur->next->prev = newfrgm;
    8000339c:	0007b603          	ld	a2,0(a5)
    800033a0:	00060463          	beqz	a2,800033a8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1d4>
    800033a4:	00e63423          	sd	a4,8(a2)
                newfrgm->prev = cur->prev;
    800033a8:	0087b583          	ld	a1,8(a5)
    800033ac:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    800033b0:	0007b603          	ld	a2,0(a5)
    800033b4:	00c73023          	sd	a2,0(a4)
                newfrgm->size = cur->size-size;
    800033b8:	0107b783          	ld	a5,16(a5)
    800033bc:	fffff637          	lui	a2,0xfffff
    800033c0:	fc060613          	addi	a2,a2,-64 # ffffffffffffefc0 <end+0xffffffff7fff6a10>
    800033c4:	00c787b3          	add	a5,a5,a2
    800033c8:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800033cc:	0c070613          	addi	a2,a4,192
    800033d0:	00004817          	auipc	a6,0x4
    800033d4:	eb083803          	ld	a6,-336(a6) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800033d8:	00c83023          	sd	a2,0(a6)
                fmem_head->next=newfrgm->next;
    800033dc:	00073803          	ld	a6,0(a4)
    800033e0:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    800033e4:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    800033e8:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800033ec:	00070793          	mv	a5,a4
    800033f0:	01c0006f          	j	8000340c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800033f4:	0c070613          	addi	a2,a4,192
    800033f8:	00004597          	auipc	a1,0x4
    800033fc:	e885b583          	ld	a1,-376(a1) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003400:	00c5b023          	sd	a2,0(a1)
    80003404:	f99ff06f          	j	8000339c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1c8>
    80003408:	00000793          	li	a5,0
    8000340c:	0004b703          	ld	a4,0(s1)
    80003410:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80003414:	08050063          	beqz	a0,80003494 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2c0>
    80003418:	00000717          	auipc	a4,0x0
    8000341c:	0c470713          	addi	a4,a4,196 # 800034dc <_ZN3TCB13threadWrapperEv>
    80003420:	0004b783          	ld	a5,0(s1)
    80003424:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80003428:	0004b703          	ld	a4,0(s1)
    8000342c:	00873783          	ld	a5,8(a4)
    80003430:	06078663          	beqz	a5,8000349c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2c8>
    80003434:	00008637          	lui	a2,0x8
    80003438:	00c787b3          	add	a5,a5,a2
    8000343c:	00f73c23          	sd	a5,24(a4)
    (*handle)->finished=false;
    80003440:	0004b783          	ld	a5,0(s1)
    80003444:	02078023          	sb	zero,32(a5)
    (*handle)->semBlocked=nullptr;
    80003448:	0004b783          	ld	a5,0(s1)
    8000344c:	0207b823          	sd	zero,48(a5)
    (*handle)->timeSlice=TIME_SLICE;
    80003450:	0004b783          	ld	a5,0(s1)
    80003454:	00200713          	li	a4,2
    80003458:	02e7bc23          	sd	a4,56(a5)
    (*handle)->threadStarted=started;
    8000345c:	0004b783          	ld	a5,0(s1)
    80003460:	04d78023          	sb	a3,64(a5)
    if (body != nullptr && (*handle)->isStarted()==true) { Scheduler::put(*handle); }
    80003464:	00050863          	beqz	a0,80003474 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2a0>
    80003468:	0004b503          	ld	a0,0(s1)
    void setStarted(TCB** handle){
        (*handle)->threadStarted=true;
    }

    bool isStarted() {
        return threadStarted;
    8000346c:	04054783          	lbu	a5,64(a0)
    80003470:	02079a63          	bnez	a5,800034a4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2d0>
    if(*handle==nullptr){
    80003474:	0004b783          	ld	a5,0(s1)
    80003478:	02078c63          	beqz	a5,800034b0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2dc>
        return -1;
    }else{return 0;}
    8000347c:	00000513          	li	a0,0
}
    80003480:	01813083          	ld	ra,24(sp)
    80003484:	01013403          	ld	s0,16(sp)
    80003488:	00813483          	ld	s1,8(sp)
    8000348c:	02010113          	addi	sp,sp,32
    80003490:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80003494:	00000713          	li	a4,0
    80003498:	f89ff06f          	j	80003420 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x24c>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    8000349c:	00000793          	li	a5,0
    800034a0:	f9dff06f          	j	8000343c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x268>
    if (body != nullptr && (*handle)->isStarted()==true) { Scheduler::put(*handle); }
    800034a4:	00000097          	auipc	ra,0x0
    800034a8:	adc080e7          	jalr	-1316(ra) # 80002f80 <_ZN9Scheduler3putEP3TCB>
    800034ac:	fc9ff06f          	j	80003474 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2a0>
        return -1;
    800034b0:	fff00513          	li	a0,-1
    800034b4:	fcdff06f          	j	80003480 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2ac>

00000000800034b8 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    800034b8:	ff010113          	addi	sp,sp,-16
    800034bc:	00813423          	sd	s0,8(sp)
    800034c0:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    800034c4:	01300793          	li	a5,19
    800034c8:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    800034cc:	00000073          	ecall

};
    800034d0:	00813403          	ld	s0,8(sp)
    800034d4:	01010113          	addi	sp,sp,16
    800034d8:	00008067          	ret

00000000800034dc <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    800034dc:	fe010113          	addi	sp,sp,-32
    800034e0:	00113c23          	sd	ra,24(sp)
    800034e4:	00813823          	sd	s0,16(sp)
    800034e8:	00913423          	sd	s1,8(sp)
    800034ec:	02010413          	addi	s0,sp,32
    //RiscV::popSppSpie();
    __asm__ volatile ("csrw sepc, ra");
    800034f0:	14109073          	csrw	sepc,ra
    //__asm__ volatile ("sret");
    running->body(running->arguments);
    800034f4:	00004497          	auipc	s1,0x4
    800034f8:	e3c48493          	addi	s1,s1,-452 # 80007330 <_ZN3TCB7runningE>
    800034fc:	0004b783          	ld	a5,0(s1)
    80003500:	0007b703          	ld	a4,0(a5)
    80003504:	0287b503          	ld	a0,40(a5)
    80003508:	000700e7          	jalr	a4
    running->setFinished(true);
    8000350c:	00100593          	li	a1,1
    80003510:	0004b503          	ld	a0,0(s1)
    80003514:	00000097          	auipc	ra,0x0
    80003518:	ca4080e7          	jalr	-860(ra) # 800031b8 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    8000351c:	00000097          	auipc	ra,0x0
    80003520:	f9c080e7          	jalr	-100(ra) # 800034b8 <_ZN3TCB5yieldEv>
}
    80003524:	01813083          	ld	ra,24(sp)
    80003528:	01013403          	ld	s0,16(sp)
    8000352c:	00813483          	ld	s1,8(sp)
    80003530:	02010113          	addi	sp,sp,32
    80003534:	00008067          	ret

0000000080003538 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80003538:	fe010113          	addi	sp,sp,-32
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	00813823          	sd	s0,16(sp)
    80003544:	00913423          	sd	s1,8(sp)
    80003548:	02010413          	addi	s0,sp,32
    TCB *old = running;
    8000354c:	00004497          	auipc	s1,0x4
    80003550:	de44b483          	ld	s1,-540(s1) # 80007330 <_ZN3TCB7runningE>
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80003554:	0304b783          	ld	a5,48(s1)
    80003558:	02078c63          	beqz	a5,80003590 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    8000355c:	00000097          	auipc	ra,0x0
    80003560:	9bc080e7          	jalr	-1604(ra) # 80002f18 <_ZN9Scheduler3getEv>
    80003564:	00004797          	auipc	a5,0x4
    80003568:	dca7b623          	sd	a0,-564(a5) # 80007330 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    8000356c:	01050593          	addi	a1,a0,16
    80003570:	01048513          	addi	a0,s1,16
    80003574:	ffffe097          	auipc	ra,0xffffe
    80003578:	cbc080e7          	jalr	-836(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000357c:	01813083          	ld	ra,24(sp)
    80003580:	01013403          	ld	s0,16(sp)
    80003584:	00813483          	ld	s1,8(sp)
    80003588:	02010113          	addi	sp,sp,32
    8000358c:	00008067          	ret
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80003590:	00048513          	mv	a0,s1
    80003594:	00000097          	auipc	ra,0x0
    80003598:	c08080e7          	jalr	-1016(ra) # 8000319c <_ZNK3TCB10isFinishedEv>
    8000359c:	fc0510e3          	bnez	a0,8000355c <_ZN3TCB8dispatchEv+0x24>
        Scheduler::put(old);
    800035a0:	00048513          	mv	a0,s1
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	9dc080e7          	jalr	-1572(ra) # 80002f80 <_ZN9Scheduler3putEP3TCB>
    800035ac:	fb1ff06f          	j	8000355c <_ZN3TCB8dispatchEv+0x24>

00000000800035b0 <_ZN3TCB11startThreadEPPS_PFvPvE>:

void TCB::startThread(TCB **handle, TCB::Body body) {
    800035b0:	ff010113          	addi	sp,sp,-16
    800035b4:	00113423          	sd	ra,8(sp)
    800035b8:	00813023          	sd	s0,0(sp)
    800035bc:	01010413          	addi	s0,sp,16
    (*handle)->body=body;
    800035c0:	00053783          	ld	a5,0(a0)
    800035c4:	00b7b023          	sd	a1,0(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    800035c8:	10058c63          	beqz	a1,800036e0 <_ZN3TCB11startThreadEPPS_PFvPvE+0x130>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800035cc:	00004797          	auipc	a5,0x4
    800035d0:	cb47b783          	ld	a5,-844(a5) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800035d4:	0007b783          	ld	a5,0(a5)
    800035d8:	10078663          	beqz	a5,800036e4 <_ZN3TCB11startThreadEPPS_PFvPvE+0x134>
            cur->next=fmem_head->next;
    800035dc:	00004717          	auipc	a4,0x4
    800035e0:	ca473703          	ld	a4,-860(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800035e4:	00073683          	ld	a3,0(a4)
    800035e8:	0006b603          	ld	a2,0(a3)
    800035ec:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    800035f0:	00073703          	ld	a4,0(a4)
    800035f4:	00873803          	ld	a6,8(a4)
    800035f8:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    800035fc:	0107b703          	ld	a4,16(a5)
    80003600:	000016b7          	lui	a3,0x1
    80003604:	03f68693          	addi	a3,a3,63 # 103f <_entry-0x7fffefc1>
    80003608:	02e6fa63          	bgeu	a3,a4,8000363c <_ZN3TCB11startThreadEPPS_PFvPvE+0x8c>
            if (cur->size-size<=sizeof(FreeMem)){
    8000360c:	fffff6b7          	lui	a3,0xfffff
    80003610:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff6a10>
    80003614:	00d70733          	add	a4,a4,a3
    80003618:	01800693          	li	a3,24
    8000361c:	02e6ec63          	bltu	a3,a4,80003654 <_ZN3TCB11startThreadEPPS_PFvPvE+0xa4>
                if (cur->prev) cur->prev->next = cur->next;
    80003620:	02080263          	beqz	a6,80003644 <_ZN3TCB11startThreadEPPS_PFvPvE+0x94>
    80003624:	00c83023          	sd	a2,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    80003628:	0007b703          	ld	a4,0(a5)
    8000362c:	0a070c63          	beqz	a4,800036e4 <_ZN3TCB11startThreadEPPS_PFvPvE+0x134>
    80003630:	0087b683          	ld	a3,8(a5)
    80003634:	00d73423          	sd	a3,8(a4)
                return cur;
    80003638:	0ac0006f          	j	800036e4 <_ZN3TCB11startThreadEPPS_PFvPvE+0x134>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000363c:	00060793          	mv	a5,a2
    80003640:	f99ff06f          	j	800035d8 <_ZN3TCB11startThreadEPPS_PFvPvE+0x28>
                else fmem_head = cur->next;
    80003644:	00004717          	auipc	a4,0x4
    80003648:	c3c73703          	ld	a4,-964(a4) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000364c:	00c73023          	sd	a2,0(a4)
    80003650:	fd9ff06f          	j	80003628 <_ZN3TCB11startThreadEPPS_PFvPvE+0x78>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80003654:	00001737          	lui	a4,0x1
    80003658:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    8000365c:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    80003660:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80003664:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80003668:	0087b683          	ld	a3,8(a5)
    8000366c:	06068063          	beqz	a3,800036cc <_ZN3TCB11startThreadEPPS_PFvPvE+0x11c>
    80003670:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80003674:	0007b683          	ld	a3,0(a5)
    80003678:	00068463          	beqz	a3,80003680 <_ZN3TCB11startThreadEPPS_PFvPvE+0xd0>
    8000367c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80003680:	0087b603          	ld	a2,8(a5)
    80003684:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80003688:	0007b683          	ld	a3,0(a5)
    8000368c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80003690:	0107b783          	ld	a5,16(a5)
    80003694:	fffff6b7          	lui	a3,0xfffff
    80003698:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff6a10>
    8000369c:	00d787b3          	add	a5,a5,a3
    800036a0:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800036a4:	0c070693          	addi	a3,a4,192
    800036a8:	00004817          	auipc	a6,0x4
    800036ac:	bd883803          	ld	a6,-1064(a6) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800036b0:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    800036b4:	00073803          	ld	a6,0(a4)
    800036b8:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    800036bc:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800036c0:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800036c4:	00070793          	mv	a5,a4
    800036c8:	01c0006f          	j	800036e4 <_ZN3TCB11startThreadEPPS_PFvPvE+0x134>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800036cc:	0c070693          	addi	a3,a4,192
    800036d0:	00004617          	auipc	a2,0x4
    800036d4:	bb063603          	ld	a2,-1104(a2) # 80007280 <_GLOBAL_OFFSET_TABLE_+0x28>
    800036d8:	00d63023          	sd	a3,0(a2)
    800036dc:	f99ff06f          	j	80003674 <_ZN3TCB11startThreadEPPS_PFvPvE+0xc4>
    800036e0:	00000793          	li	a5,0
    800036e4:	00053703          	ld	a4,0(a0)
    800036e8:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    800036ec:	04058a63          	beqz	a1,80003740 <_ZN3TCB11startThreadEPPS_PFvPvE+0x190>
    800036f0:	00000717          	auipc	a4,0x0
    800036f4:	dec70713          	addi	a4,a4,-532 # 800034dc <_ZN3TCB13threadWrapperEv>
    800036f8:	00053783          	ld	a5,0(a0)
    800036fc:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80003700:	00053703          	ld	a4,0(a0)
    80003704:	00873783          	ld	a5,8(a4)
    80003708:	04078063          	beqz	a5,80003748 <_ZN3TCB11startThreadEPPS_PFvPvE+0x198>
    8000370c:	000086b7          	lui	a3,0x8
    80003710:	00d787b3          	add	a5,a5,a3
    80003714:	00f73c23          	sd	a5,24(a4)
    (*handle)->threadStarted=true;
    80003718:	00053783          	ld	a5,0(a0)
    8000371c:	00100713          	li	a4,1
    80003720:	04e78023          	sb	a4,64(a5)
    //printString("setuje started\n");
    Scheduler::put(*handle); //vidi nekako da startuje handle nad kojim pozivas, mada mislim da ce poziv izgledati handle->start
    80003724:	00053503          	ld	a0,0(a0)
    80003728:	00000097          	auipc	ra,0x0
    8000372c:	858080e7          	jalr	-1960(ra) # 80002f80 <_ZN9Scheduler3putEP3TCB>
}
    80003730:	00813083          	ld	ra,8(sp)
    80003734:	00013403          	ld	s0,0(sp)
    80003738:	01010113          	addi	sp,sp,16
    8000373c:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80003740:	00000713          	li	a4,0
    80003744:	fb5ff06f          	j	800036f8 <_ZN3TCB11startThreadEPPS_PFvPvE+0x148>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80003748:	00000793          	li	a5,0
    8000374c:	fc9ff06f          	j	80003714 <_ZN3TCB11startThreadEPPS_PFvPvE+0x164>

0000000080003750 <_Znwm>:
//#include "../lib/mem.h"


//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    80003750:	ff010113          	addi	sp,sp,-16
    80003754:	00113423          	sd	ra,8(sp)
    80003758:	00813023          	sd	s0,0(sp)
    8000375c:	01010413          	addi	s0,sp,16
    //return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
    return mem_alloc(n);
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	ae4080e7          	jalr	-1308(ra) # 80001244 <_Z9mem_allocm>
}
    80003768:	00813083          	ld	ra,8(sp)
    8000376c:	00013403          	ld	s0,0(sp)
    80003770:	01010113          	addi	sp,sp,16
    80003774:	00008067          	ret

0000000080003778 <_Znam>:

void *operator new[](uint64 n){
    80003778:	ff010113          	addi	sp,sp,-16
    8000377c:	00113423          	sd	ra,8(sp)
    80003780:	00813023          	sd	s0,0(sp)
    80003784:	01010413          	addi	s0,sp,16
    //return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
    return mem_alloc(n);
    80003788:	ffffe097          	auipc	ra,0xffffe
    8000378c:	abc080e7          	jalr	-1348(ra) # 80001244 <_Z9mem_allocm>
}
    80003790:	00813083          	ld	ra,8(sp)
    80003794:	00013403          	ld	s0,0(sp)
    80003798:	01010113          	addi	sp,sp,16
    8000379c:	00008067          	ret

00000000800037a0 <_ZdlPv>:

void operator delete(void *p) noexcept {
    800037a0:	ff010113          	addi	sp,sp,-16
    800037a4:	00113423          	sd	ra,8(sp)
    800037a8:	00813023          	sd	s0,0(sp)
    800037ac:	01010413          	addi	s0,sp,16
    //MemoryAllocation::mem_free(p);
    //__mem_free(p);
    mem_free(p);
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	ac0080e7          	jalr	-1344(ra) # 80001270 <_Z8mem_freePv>
}
    800037b8:	00813083          	ld	ra,8(sp)
    800037bc:	00013403          	ld	s0,0(sp)
    800037c0:	01010113          	addi	sp,sp,16
    800037c4:	00008067          	ret

00000000800037c8 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    800037c8:	ff010113          	addi	sp,sp,-16
    800037cc:	00113423          	sd	ra,8(sp)
    800037d0:	00813023          	sd	s0,0(sp)
    800037d4:	01010413          	addi	s0,sp,16
    //MemoryAllocation::mem_free(p);
    //__mem_free(p);
    mem_free(p);
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	a98080e7          	jalr	-1384(ra) # 80001270 <_Z8mem_freePv>
}
    800037e0:	00813083          	ld	ra,8(sp)
    800037e4:	00013403          	ld	s0,0(sp)
    800037e8:	01010113          	addi	sp,sp,16
    800037ec:	00008067          	ret

00000000800037f0 <_ZN6Thread13threadWrapperEPv>:
    thread_start(&myHandle, threadWrapper); //todo vrati na cast (thread_t*) ako ne bude radilo
    printString("izadje iz starta");
    return 0;
}

void Thread::threadWrapper(void *arg) {
    800037f0:	ff010113          	addi	sp,sp,-16
    800037f4:	00113423          	sd	ra,8(sp)
    800037f8:	00813023          	sd	s0,0(sp)
    800037fc:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    80003800:	00053783          	ld	a5,0(a0)
    80003804:	0107b783          	ld	a5,16(a5)
    80003808:	000780e7          	jalr	a5
}
    8000380c:	00813083          	ld	ra,8(sp)
    80003810:	00013403          	ld	s0,0(sp)
    80003814:	01010113          	addi	sp,sp,16
    80003818:	00008067          	ret

000000008000381c <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    8000381c:	ff010113          	addi	sp,sp,-16
    80003820:	00113423          	sd	ra,8(sp)
    80003824:	00813023          	sd	s0,0(sp)
    80003828:	01010413          	addi	s0,sp,16
    8000382c:	00004797          	auipc	a5,0x4
    80003830:	a1478793          	addi	a5,a5,-1516 # 80007240 <_ZTV6Thread+0x10>
    80003834:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);//mozda cak i sizeof(Thread)
    80003838:	00853503          	ld	a0,8(a0)
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	a34080e7          	jalr	-1484(ra) # 80001270 <_Z8mem_freePv>
}
    80003844:	00813083          	ld	ra,8(sp)
    80003848:	00013403          	ld	s0,0(sp)
    8000384c:	01010113          	addi	sp,sp,16
    80003850:	00008067          	ret

0000000080003854 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80003854:	fe010113          	addi	sp,sp,-32
    80003858:	00113c23          	sd	ra,24(sp)
    8000385c:	00813823          	sd	s0,16(sp)
    80003860:	00913423          	sd	s1,8(sp)
    80003864:	02010413          	addi	s0,sp,32
    80003868:	00050493          	mv	s1,a0
}
    8000386c:	00000097          	auipc	ra,0x0
    80003870:	fb0080e7          	jalr	-80(ra) # 8000381c <_ZN6ThreadD1Ev>
    80003874:	00048513          	mv	a0,s1
    80003878:	00000097          	auipc	ra,0x0
    8000387c:	f28080e7          	jalr	-216(ra) # 800037a0 <_ZdlPv>
    80003880:	01813083          	ld	ra,24(sp)
    80003884:	01013403          	ld	s0,16(sp)
    80003888:	00813483          	ld	s1,8(sp)
    8000388c:	02010113          	addi	sp,sp,32
    80003890:	00008067          	ret

0000000080003894 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr){ //todo nekako treba da inicijalizujes myHandle, nullptr mi sumnjiv
    80003894:	ff010113          	addi	sp,sp,-16
    80003898:	00113423          	sd	ra,8(sp)
    8000389c:	00813023          	sd	s0,0(sp)
    800038a0:	01010413          	addi	s0,sp,16
    800038a4:	00004797          	auipc	a5,0x4
    800038a8:	99c78793          	addi	a5,a5,-1636 # 80007240 <_ZTV6Thread+0x10>
    800038ac:	00f53023          	sd	a5,0(a0)
    800038b0:	00053423          	sd	zero,8(a0)
    thread_create_cpp_api(&myHandle, body, arg);
    800038b4:	00850513          	addi	a0,a0,8
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	b88080e7          	jalr	-1144(ra) # 80001440 <_Z21thread_create_cpp_apiPP3TCBPFvPvES2_>
}
    800038c0:	00813083          	ld	ra,8(sp)
    800038c4:	00013403          	ld	s0,0(sp)
    800038c8:	01010113          	addi	sp,sp,16
    800038cc:	00008067          	ret

00000000800038d0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800038d0:	ff010113          	addi	sp,sp,-16
    800038d4:	00113423          	sd	ra,8(sp)
    800038d8:	00813023          	sd	s0,0(sp)
    800038dc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800038e0:	ffffe097          	auipc	ra,0xffffe
    800038e4:	a24080e7          	jalr	-1500(ra) # 80001304 <_Z15thread_dispatchv>
}
    800038e8:	00813083          	ld	ra,8(sp)
    800038ec:	00013403          	ld	s0,0(sp)
    800038f0:	01010113          	addi	sp,sp,16
    800038f4:	00008067          	ret

00000000800038f8 <_ZN6Thread5startEv>:
int Thread::start() {
    800038f8:	fe010113          	addi	sp,sp,-32
    800038fc:	00113c23          	sd	ra,24(sp)
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	02010413          	addi	s0,sp,32
    8000390c:	00050493          	mv	s1,a0
    printString("udje u start");
    80003910:	00003517          	auipc	a0,0x3
    80003914:	84050513          	addi	a0,a0,-1984 # 80006150 <CONSOLE_STATUS+0x140>
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	880080e7          	jalr	-1920(ra) # 80002198 <_Z11printStringPKc>
    thread_start(&myHandle, threadWrapper); //todo vrati na cast (thread_t*) ako ne bude radilo
    80003920:	00000597          	auipc	a1,0x0
    80003924:	ed058593          	addi	a1,a1,-304 # 800037f0 <_ZN6Thread13threadWrapperEPv>
    80003928:	00848513          	addi	a0,s1,8
    8000392c:	ffffe097          	auipc	ra,0xffffe
    80003930:	b4c080e7          	jalr	-1204(ra) # 80001478 <_Z12thread_startPP3TCBPFvPvE>
    printString("izadje iz starta");
    80003934:	00003517          	auipc	a0,0x3
    80003938:	82c50513          	addi	a0,a0,-2004 # 80006160 <CONSOLE_STATUS+0x150>
    8000393c:	fffff097          	auipc	ra,0xfffff
    80003940:	85c080e7          	jalr	-1956(ra) # 80002198 <_Z11printStringPKc>
}
    80003944:	00000513          	li	a0,0
    80003948:	01813083          	ld	ra,24(sp)
    8000394c:	01013403          	ld	s0,16(sp)
    80003950:	00813483          	ld	s1,8(sp)
    80003954:	02010113          	addi	sp,sp,32
    80003958:	00008067          	ret

000000008000395c <_ZN6Thread3runEv>:
        //Thread(threadWrapper(this), this); //todo mozda treba & ispred threadWrapper
        //thread_create_cpp_api(&myHandle, threadWrapper, this);
        thread_create(&myHandle,nullptr, this); //OVO RADI, ZNACI ILI NE RADI START ILI NESTO SJEBE U PREKIDNOJ
        //THREAD_CREATE RADI BEZ PROBLEMA, STAVLJAO FALSE ILI TRUE MODIFIKATOR, ZNACI I DA SVE OSTALO RADI, DRUGI THREAD CREATE NE RADI, ZATO MORAM DA PROVALIM KAKO DA ISKORISTIM THREAD_CREATE
    };
    virtual void run () {} //on ovde zabaguje potpuno
    8000395c:	ff010113          	addi	sp,sp,-16
    80003960:	00813423          	sd	s0,8(sp)
    80003964:	01010413          	addi	s0,sp,16
    80003968:	00813403          	ld	s0,8(sp)
    8000396c:	01010113          	addi	sp,sp,16
    80003970:	00008067          	ret

0000000080003974 <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80003974:	ff010113          	addi	sp,sp,-16
    80003978:	00813423          	sd	s0,8(sp)
    8000397c:	01010413          	addi	s0,sp,16
    80003980:	00100793          	li	a5,1
    80003984:	00f50863          	beq	a0,a5,80003994 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003988:	00813403          	ld	s0,8(sp)
    8000398c:	01010113          	addi	sp,sp,16
    80003990:	00008067          	ret
    80003994:	000107b7          	lui	a5,0x10
    80003998:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000399c:	fef596e3          	bne	a1,a5,80003988 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    800039a0:	00004797          	auipc	a5,0x4
    800039a4:	8c07b783          	ld	a5,-1856(a5) # 80007260 <_GLOBAL_OFFSET_TABLE_+0x8>
    800039a8:	0007b783          	ld	a5,0(a5)
    800039ac:	00004717          	auipc	a4,0x4
    800039b0:	98f73a23          	sd	a5,-1644(a4) # 80007340 <_ZN16MemoryAllocation9fmem_headE>
    800039b4:	fd5ff06f          	j	80003988 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800039b8 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    800039b8:	ff010113          	addi	sp,sp,-16
    800039bc:	00113423          	sd	ra,8(sp)
    800039c0:	00813023          	sd	s0,0(sp)
    800039c4:	01010413          	addi	s0,sp,16
    800039c8:	000105b7          	lui	a1,0x10
    800039cc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800039d0:	00100513          	li	a0,1
    800039d4:	00000097          	auipc	ra,0x0
    800039d8:	fa0080e7          	jalr	-96(ra) # 80003974 <_Z41__static_initialization_and_destruction_0ii>
    800039dc:	00813083          	ld	ra,8(sp)
    800039e0:	00013403          	ld	s0,0(sp)
    800039e4:	01010113          	addi	sp,sp,16
    800039e8:	00008067          	ret

00000000800039ec <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"
//TODO PROMENI SVE BUFFER PUTC I GETC
Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800039ec:	fe010113          	addi	sp,sp,-32
    800039f0:	00113c23          	sd	ra,24(sp)
    800039f4:	00813823          	sd	s0,16(sp)
    800039f8:	00913423          	sd	s1,8(sp)
    800039fc:	01213023          	sd	s2,0(sp)
    80003a00:	02010413          	addi	s0,sp,32
    80003a04:	00050493          	mv	s1,a0
    80003a08:	00058913          	mv	s2,a1
    80003a0c:	0015879b          	addiw	a5,a1,1
    80003a10:	0007851b          	sext.w	a0,a5
    80003a14:	00f4a023          	sw	a5,0(s1)
    80003a18:	0004a823          	sw	zero,16(s1)
    80003a1c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003a20:	00251513          	slli	a0,a0,0x2
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	820080e7          	jalr	-2016(ra) # 80001244 <_Z9mem_allocm>
    80003a2c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003a30:	00000593          	li	a1,0
    80003a34:	02048513          	addi	a0,s1,32
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	8f0080e7          	jalr	-1808(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&spaceAvailable, _cap);
    80003a40:	00090593          	mv	a1,s2
    80003a44:	01848513          	addi	a0,s1,24
    80003a48:	ffffe097          	auipc	ra,0xffffe
    80003a4c:	8e0080e7          	jalr	-1824(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexHead, 1);
    80003a50:	00100593          	li	a1,1
    80003a54:	02848513          	addi	a0,s1,40
    80003a58:	ffffe097          	auipc	ra,0xffffe
    80003a5c:	8d0080e7          	jalr	-1840(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexTail, 1);
    80003a60:	00100593          	li	a1,1
    80003a64:	03048513          	addi	a0,s1,48
    80003a68:	ffffe097          	auipc	ra,0xffffe
    80003a6c:	8c0080e7          	jalr	-1856(ra) # 80001328 <_Z8sem_openPP9semaphorej>
}
    80003a70:	01813083          	ld	ra,24(sp)
    80003a74:	01013403          	ld	s0,16(sp)
    80003a78:	00813483          	ld	s1,8(sp)
    80003a7c:	00013903          	ld	s2,0(sp)
    80003a80:	02010113          	addi	sp,sp,32
    80003a84:	00008067          	ret

0000000080003a88 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003a88:	fe010113          	addi	sp,sp,-32
    80003a8c:	00113c23          	sd	ra,24(sp)
    80003a90:	00813823          	sd	s0,16(sp)
    80003a94:	00913423          	sd	s1,8(sp)
    80003a98:	01213023          	sd	s2,0(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	00050493          	mv	s1,a0
    80003aa4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003aa8:	01853503          	ld	a0,24(a0)
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	8e0080e7          	jalr	-1824(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexTail);
    80003ab4:	0304b503          	ld	a0,48(s1)
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	8d4080e7          	jalr	-1836(ra) # 8000138c <_Z8sem_waitP9semaphore>
    buffer[tail] = val;
    80003ac0:	0084b783          	ld	a5,8(s1)
    80003ac4:	0144a703          	lw	a4,20(s1)
    80003ac8:	00271713          	slli	a4,a4,0x2
    80003acc:	00e787b3          	add	a5,a5,a4
    80003ad0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003ad4:	0144a783          	lw	a5,20(s1)
    80003ad8:	0017879b          	addiw	a5,a5,1
    80003adc:	0004a703          	lw	a4,0(s1)
    80003ae0:	02e7e7bb          	remw	a5,a5,a4
    80003ae4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003ae8:	0304b503          	ld	a0,48(s1)
    80003aec:	ffffe097          	auipc	ra,0xffffe
    80003af0:	8d0080e7          	jalr	-1840(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(itemAvailable);
    80003af4:	0204b503          	ld	a0,32(s1)
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	8c4080e7          	jalr	-1852(ra) # 800013bc <_Z10sem_signalP9semaphore>

}
    80003b00:	01813083          	ld	ra,24(sp)
    80003b04:	01013403          	ld	s0,16(sp)
    80003b08:	00813483          	ld	s1,8(sp)
    80003b0c:	00013903          	ld	s2,0(sp)
    80003b10:	02010113          	addi	sp,sp,32
    80003b14:	00008067          	ret

0000000080003b18 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003b18:	fe010113          	addi	sp,sp,-32
    80003b1c:	00113c23          	sd	ra,24(sp)
    80003b20:	00813823          	sd	s0,16(sp)
    80003b24:	00913423          	sd	s1,8(sp)
    80003b28:	01213023          	sd	s2,0(sp)
    80003b2c:	02010413          	addi	s0,sp,32
    80003b30:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003b34:	02053503          	ld	a0,32(a0)
    80003b38:	ffffe097          	auipc	ra,0xffffe
    80003b3c:	854080e7          	jalr	-1964(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexHead);
    80003b40:	0284b503          	ld	a0,40(s1)
    80003b44:	ffffe097          	auipc	ra,0xffffe
    80003b48:	848080e7          	jalr	-1976(ra) # 8000138c <_Z8sem_waitP9semaphore>

    int ret = buffer[head];
    80003b4c:	0084b703          	ld	a4,8(s1)
    80003b50:	0104a783          	lw	a5,16(s1)
    80003b54:	00279693          	slli	a3,a5,0x2
    80003b58:	00d70733          	add	a4,a4,a3
    80003b5c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003b60:	0017879b          	addiw	a5,a5,1
    80003b64:	0004a703          	lw	a4,0(s1)
    80003b68:	02e7e7bb          	remw	a5,a5,a4
    80003b6c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003b70:	0284b503          	ld	a0,40(s1)
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	848080e7          	jalr	-1976(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(spaceAvailable);
    80003b7c:	0184b503          	ld	a0,24(s1)
    80003b80:	ffffe097          	auipc	ra,0xffffe
    80003b84:	83c080e7          	jalr	-1988(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    80003b88:	00090513          	mv	a0,s2
    80003b8c:	01813083          	ld	ra,24(sp)
    80003b90:	01013403          	ld	s0,16(sp)
    80003b94:	00813483          	ld	s1,8(sp)
    80003b98:	00013903          	ld	s2,0(sp)
    80003b9c:	02010113          	addi	sp,sp,32
    80003ba0:	00008067          	ret

0000000080003ba4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003ba4:	fe010113          	addi	sp,sp,-32
    80003ba8:	00113c23          	sd	ra,24(sp)
    80003bac:	00813823          	sd	s0,16(sp)
    80003bb0:	00913423          	sd	s1,8(sp)
    80003bb4:	01213023          	sd	s2,0(sp)
    80003bb8:	02010413          	addi	s0,sp,32
    80003bbc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003bc0:	02853503          	ld	a0,40(a0)
    80003bc4:	ffffd097          	auipc	ra,0xffffd
    80003bc8:	7c8080e7          	jalr	1992(ra) # 8000138c <_Z8sem_waitP9semaphore>
    sem_wait(mutexTail);
    80003bcc:	0304b503          	ld	a0,48(s1)
    80003bd0:	ffffd097          	auipc	ra,0xffffd
    80003bd4:	7bc080e7          	jalr	1980(ra) # 8000138c <_Z8sem_waitP9semaphore>

    if (tail >= head) {
    80003bd8:	0144a783          	lw	a5,20(s1)
    80003bdc:	0104a903          	lw	s2,16(s1)
    80003be0:	0327ce63          	blt	a5,s2,80003c1c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003be4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003be8:	0304b503          	ld	a0,48(s1)
    80003bec:	ffffd097          	auipc	ra,0xffffd
    80003bf0:	7d0080e7          	jalr	2000(ra) # 800013bc <_Z10sem_signalP9semaphore>
    sem_signal(mutexHead);
    80003bf4:	0284b503          	ld	a0,40(s1)
    80003bf8:	ffffd097          	auipc	ra,0xffffd
    80003bfc:	7c4080e7          	jalr	1988(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    80003c00:	00090513          	mv	a0,s2
    80003c04:	01813083          	ld	ra,24(sp)
    80003c08:	01013403          	ld	s0,16(sp)
    80003c0c:	00813483          	ld	s1,8(sp)
    80003c10:	00013903          	ld	s2,0(sp)
    80003c14:	02010113          	addi	sp,sp,32
    80003c18:	00008067          	ret
        ret = cap - head + tail;
    80003c1c:	0004a703          	lw	a4,0(s1)
    80003c20:	4127093b          	subw	s2,a4,s2
    80003c24:	00f9093b          	addw	s2,s2,a5
    80003c28:	fc1ff06f          	j	80003be8 <_ZN6Buffer6getCntEv+0x44>

0000000080003c2c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003c2c:	fe010113          	addi	sp,sp,-32
    80003c30:	00113c23          	sd	ra,24(sp)
    80003c34:	00813823          	sd	s0,16(sp)
    80003c38:	00913423          	sd	s1,8(sp)
    80003c3c:	02010413          	addi	s0,sp,32
    80003c40:	00050493          	mv	s1,a0
    putc('\n');
    80003c44:	00a00513          	li	a0,10
    80003c48:	ffffd097          	auipc	ra,0xffffd
    80003c4c:	7d0080e7          	jalr	2000(ra) # 80001418 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003c50:	00002517          	auipc	a0,0x2
    80003c54:	52850513          	addi	a0,a0,1320 # 80006178 <CONSOLE_STATUS+0x168>
    80003c58:	ffffe097          	auipc	ra,0xffffe
    80003c5c:	540080e7          	jalr	1344(ra) # 80002198 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003c60:	00048513          	mv	a0,s1
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	f40080e7          	jalr	-192(ra) # 80003ba4 <_ZN6Buffer6getCntEv>
    80003c6c:	02a05c63          	blez	a0,80003ca4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003c70:	0084b783          	ld	a5,8(s1)
    80003c74:	0104a703          	lw	a4,16(s1)
    80003c78:	00271713          	slli	a4,a4,0x2
    80003c7c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003c80:	0007c503          	lbu	a0,0(a5)
    80003c84:	ffffd097          	auipc	ra,0xffffd
    80003c88:	794080e7          	jalr	1940(ra) # 80001418 <_Z4putcc>
        head = (head + 1) % cap;
    80003c8c:	0104a783          	lw	a5,16(s1)
    80003c90:	0017879b          	addiw	a5,a5,1
    80003c94:	0004a703          	lw	a4,0(s1)
    80003c98:	02e7e7bb          	remw	a5,a5,a4
    80003c9c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003ca0:	fc1ff06f          	j	80003c60 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003ca4:	02100513          	li	a0,33
    80003ca8:	ffffd097          	auipc	ra,0xffffd
    80003cac:	770080e7          	jalr	1904(ra) # 80001418 <_Z4putcc>
    putc('\n');
    80003cb0:	00a00513          	li	a0,10
    80003cb4:	ffffd097          	auipc	ra,0xffffd
    80003cb8:	764080e7          	jalr	1892(ra) # 80001418 <_Z4putcc>
    mem_free(buffer);
    80003cbc:	0084b503          	ld	a0,8(s1)
    80003cc0:	ffffd097          	auipc	ra,0xffffd
    80003cc4:	5b0080e7          	jalr	1456(ra) # 80001270 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003cc8:	0204b503          	ld	a0,32(s1)
    80003ccc:	ffffd097          	auipc	ra,0xffffd
    80003cd0:	690080e7          	jalr	1680(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(spaceAvailable);
    80003cd4:	0184b503          	ld	a0,24(s1)
    80003cd8:	ffffd097          	auipc	ra,0xffffd
    80003cdc:	684080e7          	jalr	1668(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexTail);
    80003ce0:	0304b503          	ld	a0,48(s1)
    80003ce4:	ffffd097          	auipc	ra,0xffffd
    80003ce8:	678080e7          	jalr	1656(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexHead);
    80003cec:	0284b503          	ld	a0,40(s1)
    80003cf0:	ffffd097          	auipc	ra,0xffffd
    80003cf4:	66c080e7          	jalr	1644(ra) # 8000135c <_Z9sem_closeP9semaphore>
}
    80003cf8:	01813083          	ld	ra,24(sp)
    80003cfc:	01013403          	ld	s0,16(sp)
    80003d00:	00813483          	ld	s1,8(sp)
    80003d04:	02010113          	addi	sp,sp,32
    80003d08:	00008067          	ret

0000000080003d0c <start>:
    80003d0c:	ff010113          	addi	sp,sp,-16
    80003d10:	00813423          	sd	s0,8(sp)
    80003d14:	01010413          	addi	s0,sp,16
    80003d18:	300027f3          	csrr	a5,mstatus
    80003d1c:	ffffe737          	lui	a4,0xffffe
    80003d20:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff624f>
    80003d24:	00e7f7b3          	and	a5,a5,a4
    80003d28:	00001737          	lui	a4,0x1
    80003d2c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003d30:	00e7e7b3          	or	a5,a5,a4
    80003d34:	30079073          	csrw	mstatus,a5
    80003d38:	00000797          	auipc	a5,0x0
    80003d3c:	16078793          	addi	a5,a5,352 # 80003e98 <system_main>
    80003d40:	34179073          	csrw	mepc,a5
    80003d44:	00000793          	li	a5,0
    80003d48:	18079073          	csrw	satp,a5
    80003d4c:	000107b7          	lui	a5,0x10
    80003d50:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003d54:	30279073          	csrw	medeleg,a5
    80003d58:	30379073          	csrw	mideleg,a5
    80003d5c:	104027f3          	csrr	a5,sie
    80003d60:	2227e793          	ori	a5,a5,546
    80003d64:	10479073          	csrw	sie,a5
    80003d68:	fff00793          	li	a5,-1
    80003d6c:	00a7d793          	srli	a5,a5,0xa
    80003d70:	3b079073          	csrw	pmpaddr0,a5
    80003d74:	00f00793          	li	a5,15
    80003d78:	3a079073          	csrw	pmpcfg0,a5
    80003d7c:	f14027f3          	csrr	a5,mhartid
    80003d80:	0200c737          	lui	a4,0x200c
    80003d84:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003d88:	0007869b          	sext.w	a3,a5
    80003d8c:	00269713          	slli	a4,a3,0x2
    80003d90:	000f4637          	lui	a2,0xf4
    80003d94:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003d98:	00d70733          	add	a4,a4,a3
    80003d9c:	0037979b          	slliw	a5,a5,0x3
    80003da0:	020046b7          	lui	a3,0x2004
    80003da4:	00d787b3          	add	a5,a5,a3
    80003da8:	00c585b3          	add	a1,a1,a2
    80003dac:	00371693          	slli	a3,a4,0x3
    80003db0:	00003717          	auipc	a4,0x3
    80003db4:	5a070713          	addi	a4,a4,1440 # 80007350 <timer_scratch>
    80003db8:	00b7b023          	sd	a1,0(a5)
    80003dbc:	00d70733          	add	a4,a4,a3
    80003dc0:	00f73c23          	sd	a5,24(a4)
    80003dc4:	02c73023          	sd	a2,32(a4)
    80003dc8:	34071073          	csrw	mscratch,a4
    80003dcc:	00000797          	auipc	a5,0x0
    80003dd0:	6e478793          	addi	a5,a5,1764 # 800044b0 <timervec>
    80003dd4:	30579073          	csrw	mtvec,a5
    80003dd8:	300027f3          	csrr	a5,mstatus
    80003ddc:	0087e793          	ori	a5,a5,8
    80003de0:	30079073          	csrw	mstatus,a5
    80003de4:	304027f3          	csrr	a5,mie
    80003de8:	0807e793          	ori	a5,a5,128
    80003dec:	30479073          	csrw	mie,a5
    80003df0:	f14027f3          	csrr	a5,mhartid
    80003df4:	0007879b          	sext.w	a5,a5
    80003df8:	00078213          	mv	tp,a5
    80003dfc:	30200073          	mret
    80003e00:	00813403          	ld	s0,8(sp)
    80003e04:	01010113          	addi	sp,sp,16
    80003e08:	00008067          	ret

0000000080003e0c <timerinit>:
    80003e0c:	ff010113          	addi	sp,sp,-16
    80003e10:	00813423          	sd	s0,8(sp)
    80003e14:	01010413          	addi	s0,sp,16
    80003e18:	f14027f3          	csrr	a5,mhartid
    80003e1c:	0200c737          	lui	a4,0x200c
    80003e20:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003e24:	0007869b          	sext.w	a3,a5
    80003e28:	00269713          	slli	a4,a3,0x2
    80003e2c:	000f4637          	lui	a2,0xf4
    80003e30:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003e34:	00d70733          	add	a4,a4,a3
    80003e38:	0037979b          	slliw	a5,a5,0x3
    80003e3c:	020046b7          	lui	a3,0x2004
    80003e40:	00d787b3          	add	a5,a5,a3
    80003e44:	00c585b3          	add	a1,a1,a2
    80003e48:	00371693          	slli	a3,a4,0x3
    80003e4c:	00003717          	auipc	a4,0x3
    80003e50:	50470713          	addi	a4,a4,1284 # 80007350 <timer_scratch>
    80003e54:	00b7b023          	sd	a1,0(a5)
    80003e58:	00d70733          	add	a4,a4,a3
    80003e5c:	00f73c23          	sd	a5,24(a4)
    80003e60:	02c73023          	sd	a2,32(a4)
    80003e64:	34071073          	csrw	mscratch,a4
    80003e68:	00000797          	auipc	a5,0x0
    80003e6c:	64878793          	addi	a5,a5,1608 # 800044b0 <timervec>
    80003e70:	30579073          	csrw	mtvec,a5
    80003e74:	300027f3          	csrr	a5,mstatus
    80003e78:	0087e793          	ori	a5,a5,8
    80003e7c:	30079073          	csrw	mstatus,a5
    80003e80:	304027f3          	csrr	a5,mie
    80003e84:	0807e793          	ori	a5,a5,128
    80003e88:	30479073          	csrw	mie,a5
    80003e8c:	00813403          	ld	s0,8(sp)
    80003e90:	01010113          	addi	sp,sp,16
    80003e94:	00008067          	ret

0000000080003e98 <system_main>:
    80003e98:	fe010113          	addi	sp,sp,-32
    80003e9c:	00813823          	sd	s0,16(sp)
    80003ea0:	00913423          	sd	s1,8(sp)
    80003ea4:	00113c23          	sd	ra,24(sp)
    80003ea8:	02010413          	addi	s0,sp,32
    80003eac:	00000097          	auipc	ra,0x0
    80003eb0:	0c4080e7          	jalr	196(ra) # 80003f70 <cpuid>
    80003eb4:	00003497          	auipc	s1,0x3
    80003eb8:	41c48493          	addi	s1,s1,1052 # 800072d0 <started>
    80003ebc:	02050263          	beqz	a0,80003ee0 <system_main+0x48>
    80003ec0:	0004a783          	lw	a5,0(s1)
    80003ec4:	0007879b          	sext.w	a5,a5
    80003ec8:	fe078ce3          	beqz	a5,80003ec0 <system_main+0x28>
    80003ecc:	0ff0000f          	fence
    80003ed0:	00002517          	auipc	a0,0x2
    80003ed4:	2f050513          	addi	a0,a0,752 # 800061c0 <CONSOLE_STATUS+0x1b0>
    80003ed8:	00001097          	auipc	ra,0x1
    80003edc:	a74080e7          	jalr	-1420(ra) # 8000494c <panic>
    80003ee0:	00001097          	auipc	ra,0x1
    80003ee4:	9c8080e7          	jalr	-1592(ra) # 800048a8 <consoleinit>
    80003ee8:	00001097          	auipc	ra,0x1
    80003eec:	154080e7          	jalr	340(ra) # 8000503c <printfinit>
    80003ef0:	00002517          	auipc	a0,0x2
    80003ef4:	3b050513          	addi	a0,a0,944 # 800062a0 <CONSOLE_STATUS+0x290>
    80003ef8:	00001097          	auipc	ra,0x1
    80003efc:	ab0080e7          	jalr	-1360(ra) # 800049a8 <__printf>
    80003f00:	00002517          	auipc	a0,0x2
    80003f04:	29050513          	addi	a0,a0,656 # 80006190 <CONSOLE_STATUS+0x180>
    80003f08:	00001097          	auipc	ra,0x1
    80003f0c:	aa0080e7          	jalr	-1376(ra) # 800049a8 <__printf>
    80003f10:	00002517          	auipc	a0,0x2
    80003f14:	39050513          	addi	a0,a0,912 # 800062a0 <CONSOLE_STATUS+0x290>
    80003f18:	00001097          	auipc	ra,0x1
    80003f1c:	a90080e7          	jalr	-1392(ra) # 800049a8 <__printf>
    80003f20:	00001097          	auipc	ra,0x1
    80003f24:	4a8080e7          	jalr	1192(ra) # 800053c8 <kinit>
    80003f28:	00000097          	auipc	ra,0x0
    80003f2c:	148080e7          	jalr	328(ra) # 80004070 <trapinit>
    80003f30:	00000097          	auipc	ra,0x0
    80003f34:	16c080e7          	jalr	364(ra) # 8000409c <trapinithart>
    80003f38:	00000097          	auipc	ra,0x0
    80003f3c:	5b8080e7          	jalr	1464(ra) # 800044f0 <plicinit>
    80003f40:	00000097          	auipc	ra,0x0
    80003f44:	5d8080e7          	jalr	1496(ra) # 80004518 <plicinithart>
    80003f48:	00000097          	auipc	ra,0x0
    80003f4c:	078080e7          	jalr	120(ra) # 80003fc0 <userinit>
    80003f50:	0ff0000f          	fence
    80003f54:	00100793          	li	a5,1
    80003f58:	00002517          	auipc	a0,0x2
    80003f5c:	25050513          	addi	a0,a0,592 # 800061a8 <CONSOLE_STATUS+0x198>
    80003f60:	00f4a023          	sw	a5,0(s1)
    80003f64:	00001097          	auipc	ra,0x1
    80003f68:	a44080e7          	jalr	-1468(ra) # 800049a8 <__printf>
    80003f6c:	0000006f          	j	80003f6c <system_main+0xd4>

0000000080003f70 <cpuid>:
    80003f70:	ff010113          	addi	sp,sp,-16
    80003f74:	00813423          	sd	s0,8(sp)
    80003f78:	01010413          	addi	s0,sp,16
    80003f7c:	00020513          	mv	a0,tp
    80003f80:	00813403          	ld	s0,8(sp)
    80003f84:	0005051b          	sext.w	a0,a0
    80003f88:	01010113          	addi	sp,sp,16
    80003f8c:	00008067          	ret

0000000080003f90 <mycpu>:
    80003f90:	ff010113          	addi	sp,sp,-16
    80003f94:	00813423          	sd	s0,8(sp)
    80003f98:	01010413          	addi	s0,sp,16
    80003f9c:	00020793          	mv	a5,tp
    80003fa0:	00813403          	ld	s0,8(sp)
    80003fa4:	0007879b          	sext.w	a5,a5
    80003fa8:	00779793          	slli	a5,a5,0x7
    80003fac:	00004517          	auipc	a0,0x4
    80003fb0:	3d450513          	addi	a0,a0,980 # 80008380 <cpus>
    80003fb4:	00f50533          	add	a0,a0,a5
    80003fb8:	01010113          	addi	sp,sp,16
    80003fbc:	00008067          	ret

0000000080003fc0 <userinit>:
    80003fc0:	ff010113          	addi	sp,sp,-16
    80003fc4:	00813423          	sd	s0,8(sp)
    80003fc8:	01010413          	addi	s0,sp,16
    80003fcc:	00813403          	ld	s0,8(sp)
    80003fd0:	01010113          	addi	sp,sp,16
    80003fd4:	fffff317          	auipc	t1,0xfffff
    80003fd8:	12030067          	jr	288(t1) # 800030f4 <main>

0000000080003fdc <either_copyout>:
    80003fdc:	ff010113          	addi	sp,sp,-16
    80003fe0:	00813023          	sd	s0,0(sp)
    80003fe4:	00113423          	sd	ra,8(sp)
    80003fe8:	01010413          	addi	s0,sp,16
    80003fec:	02051663          	bnez	a0,80004018 <either_copyout+0x3c>
    80003ff0:	00058513          	mv	a0,a1
    80003ff4:	00060593          	mv	a1,a2
    80003ff8:	0006861b          	sext.w	a2,a3
    80003ffc:	00002097          	auipc	ra,0x2
    80004000:	c58080e7          	jalr	-936(ra) # 80005c54 <__memmove>
    80004004:	00813083          	ld	ra,8(sp)
    80004008:	00013403          	ld	s0,0(sp)
    8000400c:	00000513          	li	a0,0
    80004010:	01010113          	addi	sp,sp,16
    80004014:	00008067          	ret
    80004018:	00002517          	auipc	a0,0x2
    8000401c:	1d050513          	addi	a0,a0,464 # 800061e8 <CONSOLE_STATUS+0x1d8>
    80004020:	00001097          	auipc	ra,0x1
    80004024:	92c080e7          	jalr	-1748(ra) # 8000494c <panic>

0000000080004028 <either_copyin>:
    80004028:	ff010113          	addi	sp,sp,-16
    8000402c:	00813023          	sd	s0,0(sp)
    80004030:	00113423          	sd	ra,8(sp)
    80004034:	01010413          	addi	s0,sp,16
    80004038:	02059463          	bnez	a1,80004060 <either_copyin+0x38>
    8000403c:	00060593          	mv	a1,a2
    80004040:	0006861b          	sext.w	a2,a3
    80004044:	00002097          	auipc	ra,0x2
    80004048:	c10080e7          	jalr	-1008(ra) # 80005c54 <__memmove>
    8000404c:	00813083          	ld	ra,8(sp)
    80004050:	00013403          	ld	s0,0(sp)
    80004054:	00000513          	li	a0,0
    80004058:	01010113          	addi	sp,sp,16
    8000405c:	00008067          	ret
    80004060:	00002517          	auipc	a0,0x2
    80004064:	1b050513          	addi	a0,a0,432 # 80006210 <CONSOLE_STATUS+0x200>
    80004068:	00001097          	auipc	ra,0x1
    8000406c:	8e4080e7          	jalr	-1820(ra) # 8000494c <panic>

0000000080004070 <trapinit>:
    80004070:	ff010113          	addi	sp,sp,-16
    80004074:	00813423          	sd	s0,8(sp)
    80004078:	01010413          	addi	s0,sp,16
    8000407c:	00813403          	ld	s0,8(sp)
    80004080:	00002597          	auipc	a1,0x2
    80004084:	1b858593          	addi	a1,a1,440 # 80006238 <CONSOLE_STATUS+0x228>
    80004088:	00004517          	auipc	a0,0x4
    8000408c:	37850513          	addi	a0,a0,888 # 80008400 <tickslock>
    80004090:	01010113          	addi	sp,sp,16
    80004094:	00001317          	auipc	t1,0x1
    80004098:	5c430067          	jr	1476(t1) # 80005658 <initlock>

000000008000409c <trapinithart>:
    8000409c:	ff010113          	addi	sp,sp,-16
    800040a0:	00813423          	sd	s0,8(sp)
    800040a4:	01010413          	addi	s0,sp,16
    800040a8:	00000797          	auipc	a5,0x0
    800040ac:	2f878793          	addi	a5,a5,760 # 800043a0 <kernelvec>
    800040b0:	10579073          	csrw	stvec,a5
    800040b4:	00813403          	ld	s0,8(sp)
    800040b8:	01010113          	addi	sp,sp,16
    800040bc:	00008067          	ret

00000000800040c0 <usertrap>:
    800040c0:	ff010113          	addi	sp,sp,-16
    800040c4:	00813423          	sd	s0,8(sp)
    800040c8:	01010413          	addi	s0,sp,16
    800040cc:	00813403          	ld	s0,8(sp)
    800040d0:	01010113          	addi	sp,sp,16
    800040d4:	00008067          	ret

00000000800040d8 <usertrapret>:
    800040d8:	ff010113          	addi	sp,sp,-16
    800040dc:	00813423          	sd	s0,8(sp)
    800040e0:	01010413          	addi	s0,sp,16
    800040e4:	00813403          	ld	s0,8(sp)
    800040e8:	01010113          	addi	sp,sp,16
    800040ec:	00008067          	ret

00000000800040f0 <kerneltrap>:
    800040f0:	fe010113          	addi	sp,sp,-32
    800040f4:	00813823          	sd	s0,16(sp)
    800040f8:	00113c23          	sd	ra,24(sp)
    800040fc:	00913423          	sd	s1,8(sp)
    80004100:	02010413          	addi	s0,sp,32
    80004104:	142025f3          	csrr	a1,scause
    80004108:	100027f3          	csrr	a5,sstatus
    8000410c:	0027f793          	andi	a5,a5,2
    80004110:	10079c63          	bnez	a5,80004228 <kerneltrap+0x138>
    80004114:	142027f3          	csrr	a5,scause
    80004118:	0207ce63          	bltz	a5,80004154 <kerneltrap+0x64>
    8000411c:	00002517          	auipc	a0,0x2
    80004120:	16450513          	addi	a0,a0,356 # 80006280 <CONSOLE_STATUS+0x270>
    80004124:	00001097          	auipc	ra,0x1
    80004128:	884080e7          	jalr	-1916(ra) # 800049a8 <__printf>
    8000412c:	141025f3          	csrr	a1,sepc
    80004130:	14302673          	csrr	a2,stval
    80004134:	00002517          	auipc	a0,0x2
    80004138:	15c50513          	addi	a0,a0,348 # 80006290 <CONSOLE_STATUS+0x280>
    8000413c:	00001097          	auipc	ra,0x1
    80004140:	86c080e7          	jalr	-1940(ra) # 800049a8 <__printf>
    80004144:	00002517          	auipc	a0,0x2
    80004148:	16450513          	addi	a0,a0,356 # 800062a8 <CONSOLE_STATUS+0x298>
    8000414c:	00001097          	auipc	ra,0x1
    80004150:	800080e7          	jalr	-2048(ra) # 8000494c <panic>
    80004154:	0ff7f713          	andi	a4,a5,255
    80004158:	00900693          	li	a3,9
    8000415c:	04d70063          	beq	a4,a3,8000419c <kerneltrap+0xac>
    80004160:	fff00713          	li	a4,-1
    80004164:	03f71713          	slli	a4,a4,0x3f
    80004168:	00170713          	addi	a4,a4,1
    8000416c:	fae798e3          	bne	a5,a4,8000411c <kerneltrap+0x2c>
    80004170:	00000097          	auipc	ra,0x0
    80004174:	e00080e7          	jalr	-512(ra) # 80003f70 <cpuid>
    80004178:	06050663          	beqz	a0,800041e4 <kerneltrap+0xf4>
    8000417c:	144027f3          	csrr	a5,sip
    80004180:	ffd7f793          	andi	a5,a5,-3
    80004184:	14479073          	csrw	sip,a5
    80004188:	01813083          	ld	ra,24(sp)
    8000418c:	01013403          	ld	s0,16(sp)
    80004190:	00813483          	ld	s1,8(sp)
    80004194:	02010113          	addi	sp,sp,32
    80004198:	00008067          	ret
    8000419c:	00000097          	auipc	ra,0x0
    800041a0:	3c8080e7          	jalr	968(ra) # 80004564 <plic_claim>
    800041a4:	00a00793          	li	a5,10
    800041a8:	00050493          	mv	s1,a0
    800041ac:	06f50863          	beq	a0,a5,8000421c <kerneltrap+0x12c>
    800041b0:	fc050ce3          	beqz	a0,80004188 <kerneltrap+0x98>
    800041b4:	00050593          	mv	a1,a0
    800041b8:	00002517          	auipc	a0,0x2
    800041bc:	0a850513          	addi	a0,a0,168 # 80006260 <CONSOLE_STATUS+0x250>
    800041c0:	00000097          	auipc	ra,0x0
    800041c4:	7e8080e7          	jalr	2024(ra) # 800049a8 <__printf>
    800041c8:	01013403          	ld	s0,16(sp)
    800041cc:	01813083          	ld	ra,24(sp)
    800041d0:	00048513          	mv	a0,s1
    800041d4:	00813483          	ld	s1,8(sp)
    800041d8:	02010113          	addi	sp,sp,32
    800041dc:	00000317          	auipc	t1,0x0
    800041e0:	3c030067          	jr	960(t1) # 8000459c <plic_complete>
    800041e4:	00004517          	auipc	a0,0x4
    800041e8:	21c50513          	addi	a0,a0,540 # 80008400 <tickslock>
    800041ec:	00001097          	auipc	ra,0x1
    800041f0:	490080e7          	jalr	1168(ra) # 8000567c <acquire>
    800041f4:	00003717          	auipc	a4,0x3
    800041f8:	0e070713          	addi	a4,a4,224 # 800072d4 <ticks>
    800041fc:	00072783          	lw	a5,0(a4)
    80004200:	00004517          	auipc	a0,0x4
    80004204:	20050513          	addi	a0,a0,512 # 80008400 <tickslock>
    80004208:	0017879b          	addiw	a5,a5,1
    8000420c:	00f72023          	sw	a5,0(a4)
    80004210:	00001097          	auipc	ra,0x1
    80004214:	538080e7          	jalr	1336(ra) # 80005748 <release>
    80004218:	f65ff06f          	j	8000417c <kerneltrap+0x8c>
    8000421c:	00001097          	auipc	ra,0x1
    80004220:	094080e7          	jalr	148(ra) # 800052b0 <uartintr>
    80004224:	fa5ff06f          	j	800041c8 <kerneltrap+0xd8>
    80004228:	00002517          	auipc	a0,0x2
    8000422c:	01850513          	addi	a0,a0,24 # 80006240 <CONSOLE_STATUS+0x230>
    80004230:	00000097          	auipc	ra,0x0
    80004234:	71c080e7          	jalr	1820(ra) # 8000494c <panic>

0000000080004238 <clockintr>:
    80004238:	fe010113          	addi	sp,sp,-32
    8000423c:	00813823          	sd	s0,16(sp)
    80004240:	00913423          	sd	s1,8(sp)
    80004244:	00113c23          	sd	ra,24(sp)
    80004248:	02010413          	addi	s0,sp,32
    8000424c:	00004497          	auipc	s1,0x4
    80004250:	1b448493          	addi	s1,s1,436 # 80008400 <tickslock>
    80004254:	00048513          	mv	a0,s1
    80004258:	00001097          	auipc	ra,0x1
    8000425c:	424080e7          	jalr	1060(ra) # 8000567c <acquire>
    80004260:	00003717          	auipc	a4,0x3
    80004264:	07470713          	addi	a4,a4,116 # 800072d4 <ticks>
    80004268:	00072783          	lw	a5,0(a4)
    8000426c:	01013403          	ld	s0,16(sp)
    80004270:	01813083          	ld	ra,24(sp)
    80004274:	00048513          	mv	a0,s1
    80004278:	0017879b          	addiw	a5,a5,1
    8000427c:	00813483          	ld	s1,8(sp)
    80004280:	00f72023          	sw	a5,0(a4)
    80004284:	02010113          	addi	sp,sp,32
    80004288:	00001317          	auipc	t1,0x1
    8000428c:	4c030067          	jr	1216(t1) # 80005748 <release>

0000000080004290 <devintr>:
    80004290:	142027f3          	csrr	a5,scause
    80004294:	00000513          	li	a0,0
    80004298:	0007c463          	bltz	a5,800042a0 <devintr+0x10>
    8000429c:	00008067          	ret
    800042a0:	fe010113          	addi	sp,sp,-32
    800042a4:	00813823          	sd	s0,16(sp)
    800042a8:	00113c23          	sd	ra,24(sp)
    800042ac:	00913423          	sd	s1,8(sp)
    800042b0:	02010413          	addi	s0,sp,32
    800042b4:	0ff7f713          	andi	a4,a5,255
    800042b8:	00900693          	li	a3,9
    800042bc:	04d70c63          	beq	a4,a3,80004314 <devintr+0x84>
    800042c0:	fff00713          	li	a4,-1
    800042c4:	03f71713          	slli	a4,a4,0x3f
    800042c8:	00170713          	addi	a4,a4,1
    800042cc:	00e78c63          	beq	a5,a4,800042e4 <devintr+0x54>
    800042d0:	01813083          	ld	ra,24(sp)
    800042d4:	01013403          	ld	s0,16(sp)
    800042d8:	00813483          	ld	s1,8(sp)
    800042dc:	02010113          	addi	sp,sp,32
    800042e0:	00008067          	ret
    800042e4:	00000097          	auipc	ra,0x0
    800042e8:	c8c080e7          	jalr	-884(ra) # 80003f70 <cpuid>
    800042ec:	06050663          	beqz	a0,80004358 <devintr+0xc8>
    800042f0:	144027f3          	csrr	a5,sip
    800042f4:	ffd7f793          	andi	a5,a5,-3
    800042f8:	14479073          	csrw	sip,a5
    800042fc:	01813083          	ld	ra,24(sp)
    80004300:	01013403          	ld	s0,16(sp)
    80004304:	00813483          	ld	s1,8(sp)
    80004308:	00200513          	li	a0,2
    8000430c:	02010113          	addi	sp,sp,32
    80004310:	00008067          	ret
    80004314:	00000097          	auipc	ra,0x0
    80004318:	250080e7          	jalr	592(ra) # 80004564 <plic_claim>
    8000431c:	00a00793          	li	a5,10
    80004320:	00050493          	mv	s1,a0
    80004324:	06f50663          	beq	a0,a5,80004390 <devintr+0x100>
    80004328:	00100513          	li	a0,1
    8000432c:	fa0482e3          	beqz	s1,800042d0 <devintr+0x40>
    80004330:	00048593          	mv	a1,s1
    80004334:	00002517          	auipc	a0,0x2
    80004338:	f2c50513          	addi	a0,a0,-212 # 80006260 <CONSOLE_STATUS+0x250>
    8000433c:	00000097          	auipc	ra,0x0
    80004340:	66c080e7          	jalr	1644(ra) # 800049a8 <__printf>
    80004344:	00048513          	mv	a0,s1
    80004348:	00000097          	auipc	ra,0x0
    8000434c:	254080e7          	jalr	596(ra) # 8000459c <plic_complete>
    80004350:	00100513          	li	a0,1
    80004354:	f7dff06f          	j	800042d0 <devintr+0x40>
    80004358:	00004517          	auipc	a0,0x4
    8000435c:	0a850513          	addi	a0,a0,168 # 80008400 <tickslock>
    80004360:	00001097          	auipc	ra,0x1
    80004364:	31c080e7          	jalr	796(ra) # 8000567c <acquire>
    80004368:	00003717          	auipc	a4,0x3
    8000436c:	f6c70713          	addi	a4,a4,-148 # 800072d4 <ticks>
    80004370:	00072783          	lw	a5,0(a4)
    80004374:	00004517          	auipc	a0,0x4
    80004378:	08c50513          	addi	a0,a0,140 # 80008400 <tickslock>
    8000437c:	0017879b          	addiw	a5,a5,1
    80004380:	00f72023          	sw	a5,0(a4)
    80004384:	00001097          	auipc	ra,0x1
    80004388:	3c4080e7          	jalr	964(ra) # 80005748 <release>
    8000438c:	f65ff06f          	j	800042f0 <devintr+0x60>
    80004390:	00001097          	auipc	ra,0x1
    80004394:	f20080e7          	jalr	-224(ra) # 800052b0 <uartintr>
    80004398:	fadff06f          	j	80004344 <devintr+0xb4>
    8000439c:	0000                	unimp
	...

00000000800043a0 <kernelvec>:
    800043a0:	f0010113          	addi	sp,sp,-256
    800043a4:	00113023          	sd	ra,0(sp)
    800043a8:	00213423          	sd	sp,8(sp)
    800043ac:	00313823          	sd	gp,16(sp)
    800043b0:	00413c23          	sd	tp,24(sp)
    800043b4:	02513023          	sd	t0,32(sp)
    800043b8:	02613423          	sd	t1,40(sp)
    800043bc:	02713823          	sd	t2,48(sp)
    800043c0:	02813c23          	sd	s0,56(sp)
    800043c4:	04913023          	sd	s1,64(sp)
    800043c8:	04a13423          	sd	a0,72(sp)
    800043cc:	04b13823          	sd	a1,80(sp)
    800043d0:	04c13c23          	sd	a2,88(sp)
    800043d4:	06d13023          	sd	a3,96(sp)
    800043d8:	06e13423          	sd	a4,104(sp)
    800043dc:	06f13823          	sd	a5,112(sp)
    800043e0:	07013c23          	sd	a6,120(sp)
    800043e4:	09113023          	sd	a7,128(sp)
    800043e8:	09213423          	sd	s2,136(sp)
    800043ec:	09313823          	sd	s3,144(sp)
    800043f0:	09413c23          	sd	s4,152(sp)
    800043f4:	0b513023          	sd	s5,160(sp)
    800043f8:	0b613423          	sd	s6,168(sp)
    800043fc:	0b713823          	sd	s7,176(sp)
    80004400:	0b813c23          	sd	s8,184(sp)
    80004404:	0d913023          	sd	s9,192(sp)
    80004408:	0da13423          	sd	s10,200(sp)
    8000440c:	0db13823          	sd	s11,208(sp)
    80004410:	0dc13c23          	sd	t3,216(sp)
    80004414:	0fd13023          	sd	t4,224(sp)
    80004418:	0fe13423          	sd	t5,232(sp)
    8000441c:	0ff13823          	sd	t6,240(sp)
    80004420:	cd1ff0ef          	jal	ra,800040f0 <kerneltrap>
    80004424:	00013083          	ld	ra,0(sp)
    80004428:	00813103          	ld	sp,8(sp)
    8000442c:	01013183          	ld	gp,16(sp)
    80004430:	02013283          	ld	t0,32(sp)
    80004434:	02813303          	ld	t1,40(sp)
    80004438:	03013383          	ld	t2,48(sp)
    8000443c:	03813403          	ld	s0,56(sp)
    80004440:	04013483          	ld	s1,64(sp)
    80004444:	04813503          	ld	a0,72(sp)
    80004448:	05013583          	ld	a1,80(sp)
    8000444c:	05813603          	ld	a2,88(sp)
    80004450:	06013683          	ld	a3,96(sp)
    80004454:	06813703          	ld	a4,104(sp)
    80004458:	07013783          	ld	a5,112(sp)
    8000445c:	07813803          	ld	a6,120(sp)
    80004460:	08013883          	ld	a7,128(sp)
    80004464:	08813903          	ld	s2,136(sp)
    80004468:	09013983          	ld	s3,144(sp)
    8000446c:	09813a03          	ld	s4,152(sp)
    80004470:	0a013a83          	ld	s5,160(sp)
    80004474:	0a813b03          	ld	s6,168(sp)
    80004478:	0b013b83          	ld	s7,176(sp)
    8000447c:	0b813c03          	ld	s8,184(sp)
    80004480:	0c013c83          	ld	s9,192(sp)
    80004484:	0c813d03          	ld	s10,200(sp)
    80004488:	0d013d83          	ld	s11,208(sp)
    8000448c:	0d813e03          	ld	t3,216(sp)
    80004490:	0e013e83          	ld	t4,224(sp)
    80004494:	0e813f03          	ld	t5,232(sp)
    80004498:	0f013f83          	ld	t6,240(sp)
    8000449c:	10010113          	addi	sp,sp,256
    800044a0:	10200073          	sret
    800044a4:	00000013          	nop
    800044a8:	00000013          	nop
    800044ac:	00000013          	nop

00000000800044b0 <timervec>:
    800044b0:	34051573          	csrrw	a0,mscratch,a0
    800044b4:	00b53023          	sd	a1,0(a0)
    800044b8:	00c53423          	sd	a2,8(a0)
    800044bc:	00d53823          	sd	a3,16(a0)
    800044c0:	01853583          	ld	a1,24(a0)
    800044c4:	02053603          	ld	a2,32(a0)
    800044c8:	0005b683          	ld	a3,0(a1)
    800044cc:	00c686b3          	add	a3,a3,a2
    800044d0:	00d5b023          	sd	a3,0(a1)
    800044d4:	00200593          	li	a1,2
    800044d8:	14459073          	csrw	sip,a1
    800044dc:	01053683          	ld	a3,16(a0)
    800044e0:	00853603          	ld	a2,8(a0)
    800044e4:	00053583          	ld	a1,0(a0)
    800044e8:	34051573          	csrrw	a0,mscratch,a0
    800044ec:	30200073          	mret

00000000800044f0 <plicinit>:
    800044f0:	ff010113          	addi	sp,sp,-16
    800044f4:	00813423          	sd	s0,8(sp)
    800044f8:	01010413          	addi	s0,sp,16
    800044fc:	00813403          	ld	s0,8(sp)
    80004500:	0c0007b7          	lui	a5,0xc000
    80004504:	00100713          	li	a4,1
    80004508:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000450c:	00e7a223          	sw	a4,4(a5)
    80004510:	01010113          	addi	sp,sp,16
    80004514:	00008067          	ret

0000000080004518 <plicinithart>:
    80004518:	ff010113          	addi	sp,sp,-16
    8000451c:	00813023          	sd	s0,0(sp)
    80004520:	00113423          	sd	ra,8(sp)
    80004524:	01010413          	addi	s0,sp,16
    80004528:	00000097          	auipc	ra,0x0
    8000452c:	a48080e7          	jalr	-1464(ra) # 80003f70 <cpuid>
    80004530:	0085171b          	slliw	a4,a0,0x8
    80004534:	0c0027b7          	lui	a5,0xc002
    80004538:	00e787b3          	add	a5,a5,a4
    8000453c:	40200713          	li	a4,1026
    80004540:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004544:	00813083          	ld	ra,8(sp)
    80004548:	00013403          	ld	s0,0(sp)
    8000454c:	00d5151b          	slliw	a0,a0,0xd
    80004550:	0c2017b7          	lui	a5,0xc201
    80004554:	00a78533          	add	a0,a5,a0
    80004558:	00052023          	sw	zero,0(a0)
    8000455c:	01010113          	addi	sp,sp,16
    80004560:	00008067          	ret

0000000080004564 <plic_claim>:
    80004564:	ff010113          	addi	sp,sp,-16
    80004568:	00813023          	sd	s0,0(sp)
    8000456c:	00113423          	sd	ra,8(sp)
    80004570:	01010413          	addi	s0,sp,16
    80004574:	00000097          	auipc	ra,0x0
    80004578:	9fc080e7          	jalr	-1540(ra) # 80003f70 <cpuid>
    8000457c:	00813083          	ld	ra,8(sp)
    80004580:	00013403          	ld	s0,0(sp)
    80004584:	00d5151b          	slliw	a0,a0,0xd
    80004588:	0c2017b7          	lui	a5,0xc201
    8000458c:	00a78533          	add	a0,a5,a0
    80004590:	00452503          	lw	a0,4(a0)
    80004594:	01010113          	addi	sp,sp,16
    80004598:	00008067          	ret

000000008000459c <plic_complete>:
    8000459c:	fe010113          	addi	sp,sp,-32
    800045a0:	00813823          	sd	s0,16(sp)
    800045a4:	00913423          	sd	s1,8(sp)
    800045a8:	00113c23          	sd	ra,24(sp)
    800045ac:	02010413          	addi	s0,sp,32
    800045b0:	00050493          	mv	s1,a0
    800045b4:	00000097          	auipc	ra,0x0
    800045b8:	9bc080e7          	jalr	-1604(ra) # 80003f70 <cpuid>
    800045bc:	01813083          	ld	ra,24(sp)
    800045c0:	01013403          	ld	s0,16(sp)
    800045c4:	00d5179b          	slliw	a5,a0,0xd
    800045c8:	0c201737          	lui	a4,0xc201
    800045cc:	00f707b3          	add	a5,a4,a5
    800045d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800045d4:	00813483          	ld	s1,8(sp)
    800045d8:	02010113          	addi	sp,sp,32
    800045dc:	00008067          	ret

00000000800045e0 <consolewrite>:
    800045e0:	fb010113          	addi	sp,sp,-80
    800045e4:	04813023          	sd	s0,64(sp)
    800045e8:	04113423          	sd	ra,72(sp)
    800045ec:	02913c23          	sd	s1,56(sp)
    800045f0:	03213823          	sd	s2,48(sp)
    800045f4:	03313423          	sd	s3,40(sp)
    800045f8:	03413023          	sd	s4,32(sp)
    800045fc:	01513c23          	sd	s5,24(sp)
    80004600:	05010413          	addi	s0,sp,80
    80004604:	06c05c63          	blez	a2,8000467c <consolewrite+0x9c>
    80004608:	00060993          	mv	s3,a2
    8000460c:	00050a13          	mv	s4,a0
    80004610:	00058493          	mv	s1,a1
    80004614:	00000913          	li	s2,0
    80004618:	fff00a93          	li	s5,-1
    8000461c:	01c0006f          	j	80004638 <consolewrite+0x58>
    80004620:	fbf44503          	lbu	a0,-65(s0)
    80004624:	0019091b          	addiw	s2,s2,1
    80004628:	00148493          	addi	s1,s1,1
    8000462c:	00001097          	auipc	ra,0x1
    80004630:	a9c080e7          	jalr	-1380(ra) # 800050c8 <uartputc>
    80004634:	03298063          	beq	s3,s2,80004654 <consolewrite+0x74>
    80004638:	00048613          	mv	a2,s1
    8000463c:	00100693          	li	a3,1
    80004640:	000a0593          	mv	a1,s4
    80004644:	fbf40513          	addi	a0,s0,-65
    80004648:	00000097          	auipc	ra,0x0
    8000464c:	9e0080e7          	jalr	-1568(ra) # 80004028 <either_copyin>
    80004650:	fd5518e3          	bne	a0,s5,80004620 <consolewrite+0x40>
    80004654:	04813083          	ld	ra,72(sp)
    80004658:	04013403          	ld	s0,64(sp)
    8000465c:	03813483          	ld	s1,56(sp)
    80004660:	02813983          	ld	s3,40(sp)
    80004664:	02013a03          	ld	s4,32(sp)
    80004668:	01813a83          	ld	s5,24(sp)
    8000466c:	00090513          	mv	a0,s2
    80004670:	03013903          	ld	s2,48(sp)
    80004674:	05010113          	addi	sp,sp,80
    80004678:	00008067          	ret
    8000467c:	00000913          	li	s2,0
    80004680:	fd5ff06f          	j	80004654 <consolewrite+0x74>

0000000080004684 <consoleread>:
    80004684:	f9010113          	addi	sp,sp,-112
    80004688:	06813023          	sd	s0,96(sp)
    8000468c:	04913c23          	sd	s1,88(sp)
    80004690:	05213823          	sd	s2,80(sp)
    80004694:	05313423          	sd	s3,72(sp)
    80004698:	05413023          	sd	s4,64(sp)
    8000469c:	03513c23          	sd	s5,56(sp)
    800046a0:	03613823          	sd	s6,48(sp)
    800046a4:	03713423          	sd	s7,40(sp)
    800046a8:	03813023          	sd	s8,32(sp)
    800046ac:	06113423          	sd	ra,104(sp)
    800046b0:	01913c23          	sd	s9,24(sp)
    800046b4:	07010413          	addi	s0,sp,112
    800046b8:	00060b93          	mv	s7,a2
    800046bc:	00050913          	mv	s2,a0
    800046c0:	00058c13          	mv	s8,a1
    800046c4:	00060b1b          	sext.w	s6,a2
    800046c8:	00004497          	auipc	s1,0x4
    800046cc:	d6048493          	addi	s1,s1,-672 # 80008428 <cons>
    800046d0:	00400993          	li	s3,4
    800046d4:	fff00a13          	li	s4,-1
    800046d8:	00a00a93          	li	s5,10
    800046dc:	05705e63          	blez	s7,80004738 <consoleread+0xb4>
    800046e0:	09c4a703          	lw	a4,156(s1)
    800046e4:	0984a783          	lw	a5,152(s1)
    800046e8:	0007071b          	sext.w	a4,a4
    800046ec:	08e78463          	beq	a5,a4,80004774 <consoleread+0xf0>
    800046f0:	07f7f713          	andi	a4,a5,127
    800046f4:	00e48733          	add	a4,s1,a4
    800046f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800046fc:	0017869b          	addiw	a3,a5,1
    80004700:	08d4ac23          	sw	a3,152(s1)
    80004704:	00070c9b          	sext.w	s9,a4
    80004708:	0b370663          	beq	a4,s3,800047b4 <consoleread+0x130>
    8000470c:	00100693          	li	a3,1
    80004710:	f9f40613          	addi	a2,s0,-97
    80004714:	000c0593          	mv	a1,s8
    80004718:	00090513          	mv	a0,s2
    8000471c:	f8e40fa3          	sb	a4,-97(s0)
    80004720:	00000097          	auipc	ra,0x0
    80004724:	8bc080e7          	jalr	-1860(ra) # 80003fdc <either_copyout>
    80004728:	01450863          	beq	a0,s4,80004738 <consoleread+0xb4>
    8000472c:	001c0c13          	addi	s8,s8,1
    80004730:	fffb8b9b          	addiw	s7,s7,-1
    80004734:	fb5c94e3          	bne	s9,s5,800046dc <consoleread+0x58>
    80004738:	000b851b          	sext.w	a0,s7
    8000473c:	06813083          	ld	ra,104(sp)
    80004740:	06013403          	ld	s0,96(sp)
    80004744:	05813483          	ld	s1,88(sp)
    80004748:	05013903          	ld	s2,80(sp)
    8000474c:	04813983          	ld	s3,72(sp)
    80004750:	04013a03          	ld	s4,64(sp)
    80004754:	03813a83          	ld	s5,56(sp)
    80004758:	02813b83          	ld	s7,40(sp)
    8000475c:	02013c03          	ld	s8,32(sp)
    80004760:	01813c83          	ld	s9,24(sp)
    80004764:	40ab053b          	subw	a0,s6,a0
    80004768:	03013b03          	ld	s6,48(sp)
    8000476c:	07010113          	addi	sp,sp,112
    80004770:	00008067          	ret
    80004774:	00001097          	auipc	ra,0x1
    80004778:	1d8080e7          	jalr	472(ra) # 8000594c <push_on>
    8000477c:	0984a703          	lw	a4,152(s1)
    80004780:	09c4a783          	lw	a5,156(s1)
    80004784:	0007879b          	sext.w	a5,a5
    80004788:	fef70ce3          	beq	a4,a5,80004780 <consoleread+0xfc>
    8000478c:	00001097          	auipc	ra,0x1
    80004790:	234080e7          	jalr	564(ra) # 800059c0 <pop_on>
    80004794:	0984a783          	lw	a5,152(s1)
    80004798:	07f7f713          	andi	a4,a5,127
    8000479c:	00e48733          	add	a4,s1,a4
    800047a0:	01874703          	lbu	a4,24(a4)
    800047a4:	0017869b          	addiw	a3,a5,1
    800047a8:	08d4ac23          	sw	a3,152(s1)
    800047ac:	00070c9b          	sext.w	s9,a4
    800047b0:	f5371ee3          	bne	a4,s3,8000470c <consoleread+0x88>
    800047b4:	000b851b          	sext.w	a0,s7
    800047b8:	f96bf2e3          	bgeu	s7,s6,8000473c <consoleread+0xb8>
    800047bc:	08f4ac23          	sw	a5,152(s1)
    800047c0:	f7dff06f          	j	8000473c <consoleread+0xb8>

00000000800047c4 <consputc>:
    800047c4:	10000793          	li	a5,256
    800047c8:	00f50663          	beq	a0,a5,800047d4 <consputc+0x10>
    800047cc:	00001317          	auipc	t1,0x1
    800047d0:	9f430067          	jr	-1548(t1) # 800051c0 <uartputc_sync>
    800047d4:	ff010113          	addi	sp,sp,-16
    800047d8:	00113423          	sd	ra,8(sp)
    800047dc:	00813023          	sd	s0,0(sp)
    800047e0:	01010413          	addi	s0,sp,16
    800047e4:	00800513          	li	a0,8
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	9d8080e7          	jalr	-1576(ra) # 800051c0 <uartputc_sync>
    800047f0:	02000513          	li	a0,32
    800047f4:	00001097          	auipc	ra,0x1
    800047f8:	9cc080e7          	jalr	-1588(ra) # 800051c0 <uartputc_sync>
    800047fc:	00013403          	ld	s0,0(sp)
    80004800:	00813083          	ld	ra,8(sp)
    80004804:	00800513          	li	a0,8
    80004808:	01010113          	addi	sp,sp,16
    8000480c:	00001317          	auipc	t1,0x1
    80004810:	9b430067          	jr	-1612(t1) # 800051c0 <uartputc_sync>

0000000080004814 <consoleintr>:
    80004814:	fe010113          	addi	sp,sp,-32
    80004818:	00813823          	sd	s0,16(sp)
    8000481c:	00913423          	sd	s1,8(sp)
    80004820:	01213023          	sd	s2,0(sp)
    80004824:	00113c23          	sd	ra,24(sp)
    80004828:	02010413          	addi	s0,sp,32
    8000482c:	00004917          	auipc	s2,0x4
    80004830:	bfc90913          	addi	s2,s2,-1028 # 80008428 <cons>
    80004834:	00050493          	mv	s1,a0
    80004838:	00090513          	mv	a0,s2
    8000483c:	00001097          	auipc	ra,0x1
    80004840:	e40080e7          	jalr	-448(ra) # 8000567c <acquire>
    80004844:	02048c63          	beqz	s1,8000487c <consoleintr+0x68>
    80004848:	0a092783          	lw	a5,160(s2)
    8000484c:	09892703          	lw	a4,152(s2)
    80004850:	07f00693          	li	a3,127
    80004854:	40e7873b          	subw	a4,a5,a4
    80004858:	02e6e263          	bltu	a3,a4,8000487c <consoleintr+0x68>
    8000485c:	00d00713          	li	a4,13
    80004860:	04e48063          	beq	s1,a4,800048a0 <consoleintr+0x8c>
    80004864:	07f7f713          	andi	a4,a5,127
    80004868:	00e90733          	add	a4,s2,a4
    8000486c:	0017879b          	addiw	a5,a5,1
    80004870:	0af92023          	sw	a5,160(s2)
    80004874:	00970c23          	sb	s1,24(a4)
    80004878:	08f92e23          	sw	a5,156(s2)
    8000487c:	01013403          	ld	s0,16(sp)
    80004880:	01813083          	ld	ra,24(sp)
    80004884:	00813483          	ld	s1,8(sp)
    80004888:	00013903          	ld	s2,0(sp)
    8000488c:	00004517          	auipc	a0,0x4
    80004890:	b9c50513          	addi	a0,a0,-1124 # 80008428 <cons>
    80004894:	02010113          	addi	sp,sp,32
    80004898:	00001317          	auipc	t1,0x1
    8000489c:	eb030067          	jr	-336(t1) # 80005748 <release>
    800048a0:	00a00493          	li	s1,10
    800048a4:	fc1ff06f          	j	80004864 <consoleintr+0x50>

00000000800048a8 <consoleinit>:
    800048a8:	fe010113          	addi	sp,sp,-32
    800048ac:	00113c23          	sd	ra,24(sp)
    800048b0:	00813823          	sd	s0,16(sp)
    800048b4:	00913423          	sd	s1,8(sp)
    800048b8:	02010413          	addi	s0,sp,32
    800048bc:	00004497          	auipc	s1,0x4
    800048c0:	b6c48493          	addi	s1,s1,-1172 # 80008428 <cons>
    800048c4:	00048513          	mv	a0,s1
    800048c8:	00002597          	auipc	a1,0x2
    800048cc:	9f058593          	addi	a1,a1,-1552 # 800062b8 <CONSOLE_STATUS+0x2a8>
    800048d0:	00001097          	auipc	ra,0x1
    800048d4:	d88080e7          	jalr	-632(ra) # 80005658 <initlock>
    800048d8:	00000097          	auipc	ra,0x0
    800048dc:	7ac080e7          	jalr	1964(ra) # 80005084 <uartinit>
    800048e0:	01813083          	ld	ra,24(sp)
    800048e4:	01013403          	ld	s0,16(sp)
    800048e8:	00000797          	auipc	a5,0x0
    800048ec:	d9c78793          	addi	a5,a5,-612 # 80004684 <consoleread>
    800048f0:	0af4bc23          	sd	a5,184(s1)
    800048f4:	00000797          	auipc	a5,0x0
    800048f8:	cec78793          	addi	a5,a5,-788 # 800045e0 <consolewrite>
    800048fc:	0cf4b023          	sd	a5,192(s1)
    80004900:	00813483          	ld	s1,8(sp)
    80004904:	02010113          	addi	sp,sp,32
    80004908:	00008067          	ret

000000008000490c <console_read>:
    8000490c:	ff010113          	addi	sp,sp,-16
    80004910:	00813423          	sd	s0,8(sp)
    80004914:	01010413          	addi	s0,sp,16
    80004918:	00813403          	ld	s0,8(sp)
    8000491c:	00004317          	auipc	t1,0x4
    80004920:	bc433303          	ld	t1,-1084(t1) # 800084e0 <devsw+0x10>
    80004924:	01010113          	addi	sp,sp,16
    80004928:	00030067          	jr	t1

000000008000492c <console_write>:
    8000492c:	ff010113          	addi	sp,sp,-16
    80004930:	00813423          	sd	s0,8(sp)
    80004934:	01010413          	addi	s0,sp,16
    80004938:	00813403          	ld	s0,8(sp)
    8000493c:	00004317          	auipc	t1,0x4
    80004940:	bac33303          	ld	t1,-1108(t1) # 800084e8 <devsw+0x18>
    80004944:	01010113          	addi	sp,sp,16
    80004948:	00030067          	jr	t1

000000008000494c <panic>:
    8000494c:	fe010113          	addi	sp,sp,-32
    80004950:	00113c23          	sd	ra,24(sp)
    80004954:	00813823          	sd	s0,16(sp)
    80004958:	00913423          	sd	s1,8(sp)
    8000495c:	02010413          	addi	s0,sp,32
    80004960:	00050493          	mv	s1,a0
    80004964:	00002517          	auipc	a0,0x2
    80004968:	95c50513          	addi	a0,a0,-1700 # 800062c0 <CONSOLE_STATUS+0x2b0>
    8000496c:	00004797          	auipc	a5,0x4
    80004970:	c007ae23          	sw	zero,-996(a5) # 80008588 <pr+0x18>
    80004974:	00000097          	auipc	ra,0x0
    80004978:	034080e7          	jalr	52(ra) # 800049a8 <__printf>
    8000497c:	00048513          	mv	a0,s1
    80004980:	00000097          	auipc	ra,0x0
    80004984:	028080e7          	jalr	40(ra) # 800049a8 <__printf>
    80004988:	00002517          	auipc	a0,0x2
    8000498c:	91850513          	addi	a0,a0,-1768 # 800062a0 <CONSOLE_STATUS+0x290>
    80004990:	00000097          	auipc	ra,0x0
    80004994:	018080e7          	jalr	24(ra) # 800049a8 <__printf>
    80004998:	00100793          	li	a5,1
    8000499c:	00003717          	auipc	a4,0x3
    800049a0:	92f72e23          	sw	a5,-1732(a4) # 800072d8 <panicked>
    800049a4:	0000006f          	j	800049a4 <panic+0x58>

00000000800049a8 <__printf>:
    800049a8:	f3010113          	addi	sp,sp,-208
    800049ac:	08813023          	sd	s0,128(sp)
    800049b0:	07313423          	sd	s3,104(sp)
    800049b4:	09010413          	addi	s0,sp,144
    800049b8:	05813023          	sd	s8,64(sp)
    800049bc:	08113423          	sd	ra,136(sp)
    800049c0:	06913c23          	sd	s1,120(sp)
    800049c4:	07213823          	sd	s2,112(sp)
    800049c8:	07413023          	sd	s4,96(sp)
    800049cc:	05513c23          	sd	s5,88(sp)
    800049d0:	05613823          	sd	s6,80(sp)
    800049d4:	05713423          	sd	s7,72(sp)
    800049d8:	03913c23          	sd	s9,56(sp)
    800049dc:	03a13823          	sd	s10,48(sp)
    800049e0:	03b13423          	sd	s11,40(sp)
    800049e4:	00004317          	auipc	t1,0x4
    800049e8:	b8c30313          	addi	t1,t1,-1140 # 80008570 <pr>
    800049ec:	01832c03          	lw	s8,24(t1)
    800049f0:	00b43423          	sd	a1,8(s0)
    800049f4:	00c43823          	sd	a2,16(s0)
    800049f8:	00d43c23          	sd	a3,24(s0)
    800049fc:	02e43023          	sd	a4,32(s0)
    80004a00:	02f43423          	sd	a5,40(s0)
    80004a04:	03043823          	sd	a6,48(s0)
    80004a08:	03143c23          	sd	a7,56(s0)
    80004a0c:	00050993          	mv	s3,a0
    80004a10:	4a0c1663          	bnez	s8,80004ebc <__printf+0x514>
    80004a14:	60098c63          	beqz	s3,8000502c <__printf+0x684>
    80004a18:	0009c503          	lbu	a0,0(s3)
    80004a1c:	00840793          	addi	a5,s0,8
    80004a20:	f6f43c23          	sd	a5,-136(s0)
    80004a24:	00000493          	li	s1,0
    80004a28:	22050063          	beqz	a0,80004c48 <__printf+0x2a0>
    80004a2c:	00002a37          	lui	s4,0x2
    80004a30:	00018ab7          	lui	s5,0x18
    80004a34:	000f4b37          	lui	s6,0xf4
    80004a38:	00989bb7          	lui	s7,0x989
    80004a3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004a40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004a44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004a48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80004a4c:	00148c9b          	addiw	s9,s1,1
    80004a50:	02500793          	li	a5,37
    80004a54:	01998933          	add	s2,s3,s9
    80004a58:	38f51263          	bne	a0,a5,80004ddc <__printf+0x434>
    80004a5c:	00094783          	lbu	a5,0(s2)
    80004a60:	00078c9b          	sext.w	s9,a5
    80004a64:	1e078263          	beqz	a5,80004c48 <__printf+0x2a0>
    80004a68:	0024849b          	addiw	s1,s1,2
    80004a6c:	07000713          	li	a4,112
    80004a70:	00998933          	add	s2,s3,s1
    80004a74:	38e78a63          	beq	a5,a4,80004e08 <__printf+0x460>
    80004a78:	20f76863          	bltu	a4,a5,80004c88 <__printf+0x2e0>
    80004a7c:	42a78863          	beq	a5,a0,80004eac <__printf+0x504>
    80004a80:	06400713          	li	a4,100
    80004a84:	40e79663          	bne	a5,a4,80004e90 <__printf+0x4e8>
    80004a88:	f7843783          	ld	a5,-136(s0)
    80004a8c:	0007a603          	lw	a2,0(a5)
    80004a90:	00878793          	addi	a5,a5,8
    80004a94:	f6f43c23          	sd	a5,-136(s0)
    80004a98:	42064a63          	bltz	a2,80004ecc <__printf+0x524>
    80004a9c:	00a00713          	li	a4,10
    80004aa0:	02e677bb          	remuw	a5,a2,a4
    80004aa4:	00002d97          	auipc	s11,0x2
    80004aa8:	844d8d93          	addi	s11,s11,-1980 # 800062e8 <digits>
    80004aac:	00900593          	li	a1,9
    80004ab0:	0006051b          	sext.w	a0,a2
    80004ab4:	00000c93          	li	s9,0
    80004ab8:	02079793          	slli	a5,a5,0x20
    80004abc:	0207d793          	srli	a5,a5,0x20
    80004ac0:	00fd87b3          	add	a5,s11,a5
    80004ac4:	0007c783          	lbu	a5,0(a5)
    80004ac8:	02e656bb          	divuw	a3,a2,a4
    80004acc:	f8f40023          	sb	a5,-128(s0)
    80004ad0:	14c5d863          	bge	a1,a2,80004c20 <__printf+0x278>
    80004ad4:	06300593          	li	a1,99
    80004ad8:	00100c93          	li	s9,1
    80004adc:	02e6f7bb          	remuw	a5,a3,a4
    80004ae0:	02079793          	slli	a5,a5,0x20
    80004ae4:	0207d793          	srli	a5,a5,0x20
    80004ae8:	00fd87b3          	add	a5,s11,a5
    80004aec:	0007c783          	lbu	a5,0(a5)
    80004af0:	02e6d73b          	divuw	a4,a3,a4
    80004af4:	f8f400a3          	sb	a5,-127(s0)
    80004af8:	12a5f463          	bgeu	a1,a0,80004c20 <__printf+0x278>
    80004afc:	00a00693          	li	a3,10
    80004b00:	00900593          	li	a1,9
    80004b04:	02d777bb          	remuw	a5,a4,a3
    80004b08:	02079793          	slli	a5,a5,0x20
    80004b0c:	0207d793          	srli	a5,a5,0x20
    80004b10:	00fd87b3          	add	a5,s11,a5
    80004b14:	0007c503          	lbu	a0,0(a5)
    80004b18:	02d757bb          	divuw	a5,a4,a3
    80004b1c:	f8a40123          	sb	a0,-126(s0)
    80004b20:	48e5f263          	bgeu	a1,a4,80004fa4 <__printf+0x5fc>
    80004b24:	06300513          	li	a0,99
    80004b28:	02d7f5bb          	remuw	a1,a5,a3
    80004b2c:	02059593          	slli	a1,a1,0x20
    80004b30:	0205d593          	srli	a1,a1,0x20
    80004b34:	00bd85b3          	add	a1,s11,a1
    80004b38:	0005c583          	lbu	a1,0(a1)
    80004b3c:	02d7d7bb          	divuw	a5,a5,a3
    80004b40:	f8b401a3          	sb	a1,-125(s0)
    80004b44:	48e57263          	bgeu	a0,a4,80004fc8 <__printf+0x620>
    80004b48:	3e700513          	li	a0,999
    80004b4c:	02d7f5bb          	remuw	a1,a5,a3
    80004b50:	02059593          	slli	a1,a1,0x20
    80004b54:	0205d593          	srli	a1,a1,0x20
    80004b58:	00bd85b3          	add	a1,s11,a1
    80004b5c:	0005c583          	lbu	a1,0(a1)
    80004b60:	02d7d7bb          	divuw	a5,a5,a3
    80004b64:	f8b40223          	sb	a1,-124(s0)
    80004b68:	46e57663          	bgeu	a0,a4,80004fd4 <__printf+0x62c>
    80004b6c:	02d7f5bb          	remuw	a1,a5,a3
    80004b70:	02059593          	slli	a1,a1,0x20
    80004b74:	0205d593          	srli	a1,a1,0x20
    80004b78:	00bd85b3          	add	a1,s11,a1
    80004b7c:	0005c583          	lbu	a1,0(a1)
    80004b80:	02d7d7bb          	divuw	a5,a5,a3
    80004b84:	f8b402a3          	sb	a1,-123(s0)
    80004b88:	46ea7863          	bgeu	s4,a4,80004ff8 <__printf+0x650>
    80004b8c:	02d7f5bb          	remuw	a1,a5,a3
    80004b90:	02059593          	slli	a1,a1,0x20
    80004b94:	0205d593          	srli	a1,a1,0x20
    80004b98:	00bd85b3          	add	a1,s11,a1
    80004b9c:	0005c583          	lbu	a1,0(a1)
    80004ba0:	02d7d7bb          	divuw	a5,a5,a3
    80004ba4:	f8b40323          	sb	a1,-122(s0)
    80004ba8:	3eeaf863          	bgeu	s5,a4,80004f98 <__printf+0x5f0>
    80004bac:	02d7f5bb          	remuw	a1,a5,a3
    80004bb0:	02059593          	slli	a1,a1,0x20
    80004bb4:	0205d593          	srli	a1,a1,0x20
    80004bb8:	00bd85b3          	add	a1,s11,a1
    80004bbc:	0005c583          	lbu	a1,0(a1)
    80004bc0:	02d7d7bb          	divuw	a5,a5,a3
    80004bc4:	f8b403a3          	sb	a1,-121(s0)
    80004bc8:	42eb7e63          	bgeu	s6,a4,80005004 <__printf+0x65c>
    80004bcc:	02d7f5bb          	remuw	a1,a5,a3
    80004bd0:	02059593          	slli	a1,a1,0x20
    80004bd4:	0205d593          	srli	a1,a1,0x20
    80004bd8:	00bd85b3          	add	a1,s11,a1
    80004bdc:	0005c583          	lbu	a1,0(a1)
    80004be0:	02d7d7bb          	divuw	a5,a5,a3
    80004be4:	f8b40423          	sb	a1,-120(s0)
    80004be8:	42ebfc63          	bgeu	s7,a4,80005020 <__printf+0x678>
    80004bec:	02079793          	slli	a5,a5,0x20
    80004bf0:	0207d793          	srli	a5,a5,0x20
    80004bf4:	00fd8db3          	add	s11,s11,a5
    80004bf8:	000dc703          	lbu	a4,0(s11)
    80004bfc:	00a00793          	li	a5,10
    80004c00:	00900c93          	li	s9,9
    80004c04:	f8e404a3          	sb	a4,-119(s0)
    80004c08:	00065c63          	bgez	a2,80004c20 <__printf+0x278>
    80004c0c:	f9040713          	addi	a4,s0,-112
    80004c10:	00f70733          	add	a4,a4,a5
    80004c14:	02d00693          	li	a3,45
    80004c18:	fed70823          	sb	a3,-16(a4)
    80004c1c:	00078c93          	mv	s9,a5
    80004c20:	f8040793          	addi	a5,s0,-128
    80004c24:	01978cb3          	add	s9,a5,s9
    80004c28:	f7f40d13          	addi	s10,s0,-129
    80004c2c:	000cc503          	lbu	a0,0(s9)
    80004c30:	fffc8c93          	addi	s9,s9,-1
    80004c34:	00000097          	auipc	ra,0x0
    80004c38:	b90080e7          	jalr	-1136(ra) # 800047c4 <consputc>
    80004c3c:	ffac98e3          	bne	s9,s10,80004c2c <__printf+0x284>
    80004c40:	00094503          	lbu	a0,0(s2)
    80004c44:	e00514e3          	bnez	a0,80004a4c <__printf+0xa4>
    80004c48:	1a0c1663          	bnez	s8,80004df4 <__printf+0x44c>
    80004c4c:	08813083          	ld	ra,136(sp)
    80004c50:	08013403          	ld	s0,128(sp)
    80004c54:	07813483          	ld	s1,120(sp)
    80004c58:	07013903          	ld	s2,112(sp)
    80004c5c:	06813983          	ld	s3,104(sp)
    80004c60:	06013a03          	ld	s4,96(sp)
    80004c64:	05813a83          	ld	s5,88(sp)
    80004c68:	05013b03          	ld	s6,80(sp)
    80004c6c:	04813b83          	ld	s7,72(sp)
    80004c70:	04013c03          	ld	s8,64(sp)
    80004c74:	03813c83          	ld	s9,56(sp)
    80004c78:	03013d03          	ld	s10,48(sp)
    80004c7c:	02813d83          	ld	s11,40(sp)
    80004c80:	0d010113          	addi	sp,sp,208
    80004c84:	00008067          	ret
    80004c88:	07300713          	li	a4,115
    80004c8c:	1ce78a63          	beq	a5,a4,80004e60 <__printf+0x4b8>
    80004c90:	07800713          	li	a4,120
    80004c94:	1ee79e63          	bne	a5,a4,80004e90 <__printf+0x4e8>
    80004c98:	f7843783          	ld	a5,-136(s0)
    80004c9c:	0007a703          	lw	a4,0(a5)
    80004ca0:	00878793          	addi	a5,a5,8
    80004ca4:	f6f43c23          	sd	a5,-136(s0)
    80004ca8:	28074263          	bltz	a4,80004f2c <__printf+0x584>
    80004cac:	00001d97          	auipc	s11,0x1
    80004cb0:	63cd8d93          	addi	s11,s11,1596 # 800062e8 <digits>
    80004cb4:	00f77793          	andi	a5,a4,15
    80004cb8:	00fd87b3          	add	a5,s11,a5
    80004cbc:	0007c683          	lbu	a3,0(a5)
    80004cc0:	00f00613          	li	a2,15
    80004cc4:	0007079b          	sext.w	a5,a4
    80004cc8:	f8d40023          	sb	a3,-128(s0)
    80004ccc:	0047559b          	srliw	a1,a4,0x4
    80004cd0:	0047569b          	srliw	a3,a4,0x4
    80004cd4:	00000c93          	li	s9,0
    80004cd8:	0ee65063          	bge	a2,a4,80004db8 <__printf+0x410>
    80004cdc:	00f6f693          	andi	a3,a3,15
    80004ce0:	00dd86b3          	add	a3,s11,a3
    80004ce4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004ce8:	0087d79b          	srliw	a5,a5,0x8
    80004cec:	00100c93          	li	s9,1
    80004cf0:	f8d400a3          	sb	a3,-127(s0)
    80004cf4:	0cb67263          	bgeu	a2,a1,80004db8 <__printf+0x410>
    80004cf8:	00f7f693          	andi	a3,a5,15
    80004cfc:	00dd86b3          	add	a3,s11,a3
    80004d00:	0006c583          	lbu	a1,0(a3)
    80004d04:	00f00613          	li	a2,15
    80004d08:	0047d69b          	srliw	a3,a5,0x4
    80004d0c:	f8b40123          	sb	a1,-126(s0)
    80004d10:	0047d593          	srli	a1,a5,0x4
    80004d14:	28f67e63          	bgeu	a2,a5,80004fb0 <__printf+0x608>
    80004d18:	00f6f693          	andi	a3,a3,15
    80004d1c:	00dd86b3          	add	a3,s11,a3
    80004d20:	0006c503          	lbu	a0,0(a3)
    80004d24:	0087d813          	srli	a6,a5,0x8
    80004d28:	0087d69b          	srliw	a3,a5,0x8
    80004d2c:	f8a401a3          	sb	a0,-125(s0)
    80004d30:	28b67663          	bgeu	a2,a1,80004fbc <__printf+0x614>
    80004d34:	00f6f693          	andi	a3,a3,15
    80004d38:	00dd86b3          	add	a3,s11,a3
    80004d3c:	0006c583          	lbu	a1,0(a3)
    80004d40:	00c7d513          	srli	a0,a5,0xc
    80004d44:	00c7d69b          	srliw	a3,a5,0xc
    80004d48:	f8b40223          	sb	a1,-124(s0)
    80004d4c:	29067a63          	bgeu	a2,a6,80004fe0 <__printf+0x638>
    80004d50:	00f6f693          	andi	a3,a3,15
    80004d54:	00dd86b3          	add	a3,s11,a3
    80004d58:	0006c583          	lbu	a1,0(a3)
    80004d5c:	0107d813          	srli	a6,a5,0x10
    80004d60:	0107d69b          	srliw	a3,a5,0x10
    80004d64:	f8b402a3          	sb	a1,-123(s0)
    80004d68:	28a67263          	bgeu	a2,a0,80004fec <__printf+0x644>
    80004d6c:	00f6f693          	andi	a3,a3,15
    80004d70:	00dd86b3          	add	a3,s11,a3
    80004d74:	0006c683          	lbu	a3,0(a3)
    80004d78:	0147d79b          	srliw	a5,a5,0x14
    80004d7c:	f8d40323          	sb	a3,-122(s0)
    80004d80:	21067663          	bgeu	a2,a6,80004f8c <__printf+0x5e4>
    80004d84:	02079793          	slli	a5,a5,0x20
    80004d88:	0207d793          	srli	a5,a5,0x20
    80004d8c:	00fd8db3          	add	s11,s11,a5
    80004d90:	000dc683          	lbu	a3,0(s11)
    80004d94:	00800793          	li	a5,8
    80004d98:	00700c93          	li	s9,7
    80004d9c:	f8d403a3          	sb	a3,-121(s0)
    80004da0:	00075c63          	bgez	a4,80004db8 <__printf+0x410>
    80004da4:	f9040713          	addi	a4,s0,-112
    80004da8:	00f70733          	add	a4,a4,a5
    80004dac:	02d00693          	li	a3,45
    80004db0:	fed70823          	sb	a3,-16(a4)
    80004db4:	00078c93          	mv	s9,a5
    80004db8:	f8040793          	addi	a5,s0,-128
    80004dbc:	01978cb3          	add	s9,a5,s9
    80004dc0:	f7f40d13          	addi	s10,s0,-129
    80004dc4:	000cc503          	lbu	a0,0(s9)
    80004dc8:	fffc8c93          	addi	s9,s9,-1
    80004dcc:	00000097          	auipc	ra,0x0
    80004dd0:	9f8080e7          	jalr	-1544(ra) # 800047c4 <consputc>
    80004dd4:	ff9d18e3          	bne	s10,s9,80004dc4 <__printf+0x41c>
    80004dd8:	0100006f          	j	80004de8 <__printf+0x440>
    80004ddc:	00000097          	auipc	ra,0x0
    80004de0:	9e8080e7          	jalr	-1560(ra) # 800047c4 <consputc>
    80004de4:	000c8493          	mv	s1,s9
    80004de8:	00094503          	lbu	a0,0(s2)
    80004dec:	c60510e3          	bnez	a0,80004a4c <__printf+0xa4>
    80004df0:	e40c0ee3          	beqz	s8,80004c4c <__printf+0x2a4>
    80004df4:	00003517          	auipc	a0,0x3
    80004df8:	77c50513          	addi	a0,a0,1916 # 80008570 <pr>
    80004dfc:	00001097          	auipc	ra,0x1
    80004e00:	94c080e7          	jalr	-1716(ra) # 80005748 <release>
    80004e04:	e49ff06f          	j	80004c4c <__printf+0x2a4>
    80004e08:	f7843783          	ld	a5,-136(s0)
    80004e0c:	03000513          	li	a0,48
    80004e10:	01000d13          	li	s10,16
    80004e14:	00878713          	addi	a4,a5,8
    80004e18:	0007bc83          	ld	s9,0(a5)
    80004e1c:	f6e43c23          	sd	a4,-136(s0)
    80004e20:	00000097          	auipc	ra,0x0
    80004e24:	9a4080e7          	jalr	-1628(ra) # 800047c4 <consputc>
    80004e28:	07800513          	li	a0,120
    80004e2c:	00000097          	auipc	ra,0x0
    80004e30:	998080e7          	jalr	-1640(ra) # 800047c4 <consputc>
    80004e34:	00001d97          	auipc	s11,0x1
    80004e38:	4b4d8d93          	addi	s11,s11,1204 # 800062e8 <digits>
    80004e3c:	03ccd793          	srli	a5,s9,0x3c
    80004e40:	00fd87b3          	add	a5,s11,a5
    80004e44:	0007c503          	lbu	a0,0(a5)
    80004e48:	fffd0d1b          	addiw	s10,s10,-1
    80004e4c:	004c9c93          	slli	s9,s9,0x4
    80004e50:	00000097          	auipc	ra,0x0
    80004e54:	974080e7          	jalr	-1676(ra) # 800047c4 <consputc>
    80004e58:	fe0d12e3          	bnez	s10,80004e3c <__printf+0x494>
    80004e5c:	f8dff06f          	j	80004de8 <__printf+0x440>
    80004e60:	f7843783          	ld	a5,-136(s0)
    80004e64:	0007bc83          	ld	s9,0(a5)
    80004e68:	00878793          	addi	a5,a5,8
    80004e6c:	f6f43c23          	sd	a5,-136(s0)
    80004e70:	000c9a63          	bnez	s9,80004e84 <__printf+0x4dc>
    80004e74:	1080006f          	j	80004f7c <__printf+0x5d4>
    80004e78:	001c8c93          	addi	s9,s9,1
    80004e7c:	00000097          	auipc	ra,0x0
    80004e80:	948080e7          	jalr	-1720(ra) # 800047c4 <consputc>
    80004e84:	000cc503          	lbu	a0,0(s9)
    80004e88:	fe0518e3          	bnez	a0,80004e78 <__printf+0x4d0>
    80004e8c:	f5dff06f          	j	80004de8 <__printf+0x440>
    80004e90:	02500513          	li	a0,37
    80004e94:	00000097          	auipc	ra,0x0
    80004e98:	930080e7          	jalr	-1744(ra) # 800047c4 <consputc>
    80004e9c:	000c8513          	mv	a0,s9
    80004ea0:	00000097          	auipc	ra,0x0
    80004ea4:	924080e7          	jalr	-1756(ra) # 800047c4 <consputc>
    80004ea8:	f41ff06f          	j	80004de8 <__printf+0x440>
    80004eac:	02500513          	li	a0,37
    80004eb0:	00000097          	auipc	ra,0x0
    80004eb4:	914080e7          	jalr	-1772(ra) # 800047c4 <consputc>
    80004eb8:	f31ff06f          	j	80004de8 <__printf+0x440>
    80004ebc:	00030513          	mv	a0,t1
    80004ec0:	00000097          	auipc	ra,0x0
    80004ec4:	7bc080e7          	jalr	1980(ra) # 8000567c <acquire>
    80004ec8:	b4dff06f          	j	80004a14 <__printf+0x6c>
    80004ecc:	40c0053b          	negw	a0,a2
    80004ed0:	00a00713          	li	a4,10
    80004ed4:	02e576bb          	remuw	a3,a0,a4
    80004ed8:	00001d97          	auipc	s11,0x1
    80004edc:	410d8d93          	addi	s11,s11,1040 # 800062e8 <digits>
    80004ee0:	ff700593          	li	a1,-9
    80004ee4:	02069693          	slli	a3,a3,0x20
    80004ee8:	0206d693          	srli	a3,a3,0x20
    80004eec:	00dd86b3          	add	a3,s11,a3
    80004ef0:	0006c683          	lbu	a3,0(a3)
    80004ef4:	02e557bb          	divuw	a5,a0,a4
    80004ef8:	f8d40023          	sb	a3,-128(s0)
    80004efc:	10b65e63          	bge	a2,a1,80005018 <__printf+0x670>
    80004f00:	06300593          	li	a1,99
    80004f04:	02e7f6bb          	remuw	a3,a5,a4
    80004f08:	02069693          	slli	a3,a3,0x20
    80004f0c:	0206d693          	srli	a3,a3,0x20
    80004f10:	00dd86b3          	add	a3,s11,a3
    80004f14:	0006c683          	lbu	a3,0(a3)
    80004f18:	02e7d73b          	divuw	a4,a5,a4
    80004f1c:	00200793          	li	a5,2
    80004f20:	f8d400a3          	sb	a3,-127(s0)
    80004f24:	bca5ece3          	bltu	a1,a0,80004afc <__printf+0x154>
    80004f28:	ce5ff06f          	j	80004c0c <__printf+0x264>
    80004f2c:	40e007bb          	negw	a5,a4
    80004f30:	00001d97          	auipc	s11,0x1
    80004f34:	3b8d8d93          	addi	s11,s11,952 # 800062e8 <digits>
    80004f38:	00f7f693          	andi	a3,a5,15
    80004f3c:	00dd86b3          	add	a3,s11,a3
    80004f40:	0006c583          	lbu	a1,0(a3)
    80004f44:	ff100613          	li	a2,-15
    80004f48:	0047d69b          	srliw	a3,a5,0x4
    80004f4c:	f8b40023          	sb	a1,-128(s0)
    80004f50:	0047d59b          	srliw	a1,a5,0x4
    80004f54:	0ac75e63          	bge	a4,a2,80005010 <__printf+0x668>
    80004f58:	00f6f693          	andi	a3,a3,15
    80004f5c:	00dd86b3          	add	a3,s11,a3
    80004f60:	0006c603          	lbu	a2,0(a3)
    80004f64:	00f00693          	li	a3,15
    80004f68:	0087d79b          	srliw	a5,a5,0x8
    80004f6c:	f8c400a3          	sb	a2,-127(s0)
    80004f70:	d8b6e4e3          	bltu	a3,a1,80004cf8 <__printf+0x350>
    80004f74:	00200793          	li	a5,2
    80004f78:	e2dff06f          	j	80004da4 <__printf+0x3fc>
    80004f7c:	00001c97          	auipc	s9,0x1
    80004f80:	34cc8c93          	addi	s9,s9,844 # 800062c8 <CONSOLE_STATUS+0x2b8>
    80004f84:	02800513          	li	a0,40
    80004f88:	ef1ff06f          	j	80004e78 <__printf+0x4d0>
    80004f8c:	00700793          	li	a5,7
    80004f90:	00600c93          	li	s9,6
    80004f94:	e0dff06f          	j	80004da0 <__printf+0x3f8>
    80004f98:	00700793          	li	a5,7
    80004f9c:	00600c93          	li	s9,6
    80004fa0:	c69ff06f          	j	80004c08 <__printf+0x260>
    80004fa4:	00300793          	li	a5,3
    80004fa8:	00200c93          	li	s9,2
    80004fac:	c5dff06f          	j	80004c08 <__printf+0x260>
    80004fb0:	00300793          	li	a5,3
    80004fb4:	00200c93          	li	s9,2
    80004fb8:	de9ff06f          	j	80004da0 <__printf+0x3f8>
    80004fbc:	00400793          	li	a5,4
    80004fc0:	00300c93          	li	s9,3
    80004fc4:	dddff06f          	j	80004da0 <__printf+0x3f8>
    80004fc8:	00400793          	li	a5,4
    80004fcc:	00300c93          	li	s9,3
    80004fd0:	c39ff06f          	j	80004c08 <__printf+0x260>
    80004fd4:	00500793          	li	a5,5
    80004fd8:	00400c93          	li	s9,4
    80004fdc:	c2dff06f          	j	80004c08 <__printf+0x260>
    80004fe0:	00500793          	li	a5,5
    80004fe4:	00400c93          	li	s9,4
    80004fe8:	db9ff06f          	j	80004da0 <__printf+0x3f8>
    80004fec:	00600793          	li	a5,6
    80004ff0:	00500c93          	li	s9,5
    80004ff4:	dadff06f          	j	80004da0 <__printf+0x3f8>
    80004ff8:	00600793          	li	a5,6
    80004ffc:	00500c93          	li	s9,5
    80005000:	c09ff06f          	j	80004c08 <__printf+0x260>
    80005004:	00800793          	li	a5,8
    80005008:	00700c93          	li	s9,7
    8000500c:	bfdff06f          	j	80004c08 <__printf+0x260>
    80005010:	00100793          	li	a5,1
    80005014:	d91ff06f          	j	80004da4 <__printf+0x3fc>
    80005018:	00100793          	li	a5,1
    8000501c:	bf1ff06f          	j	80004c0c <__printf+0x264>
    80005020:	00900793          	li	a5,9
    80005024:	00800c93          	li	s9,8
    80005028:	be1ff06f          	j	80004c08 <__printf+0x260>
    8000502c:	00001517          	auipc	a0,0x1
    80005030:	2a450513          	addi	a0,a0,676 # 800062d0 <CONSOLE_STATUS+0x2c0>
    80005034:	00000097          	auipc	ra,0x0
    80005038:	918080e7          	jalr	-1768(ra) # 8000494c <panic>

000000008000503c <printfinit>:
    8000503c:	fe010113          	addi	sp,sp,-32
    80005040:	00813823          	sd	s0,16(sp)
    80005044:	00913423          	sd	s1,8(sp)
    80005048:	00113c23          	sd	ra,24(sp)
    8000504c:	02010413          	addi	s0,sp,32
    80005050:	00003497          	auipc	s1,0x3
    80005054:	52048493          	addi	s1,s1,1312 # 80008570 <pr>
    80005058:	00048513          	mv	a0,s1
    8000505c:	00001597          	auipc	a1,0x1
    80005060:	28458593          	addi	a1,a1,644 # 800062e0 <CONSOLE_STATUS+0x2d0>
    80005064:	00000097          	auipc	ra,0x0
    80005068:	5f4080e7          	jalr	1524(ra) # 80005658 <initlock>
    8000506c:	01813083          	ld	ra,24(sp)
    80005070:	01013403          	ld	s0,16(sp)
    80005074:	0004ac23          	sw	zero,24(s1)
    80005078:	00813483          	ld	s1,8(sp)
    8000507c:	02010113          	addi	sp,sp,32
    80005080:	00008067          	ret

0000000080005084 <uartinit>:
    80005084:	ff010113          	addi	sp,sp,-16
    80005088:	00813423          	sd	s0,8(sp)
    8000508c:	01010413          	addi	s0,sp,16
    80005090:	100007b7          	lui	a5,0x10000
    80005094:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005098:	f8000713          	li	a4,-128
    8000509c:	00e781a3          	sb	a4,3(a5)
    800050a0:	00300713          	li	a4,3
    800050a4:	00e78023          	sb	a4,0(a5)
    800050a8:	000780a3          	sb	zero,1(a5)
    800050ac:	00e781a3          	sb	a4,3(a5)
    800050b0:	00700693          	li	a3,7
    800050b4:	00d78123          	sb	a3,2(a5)
    800050b8:	00e780a3          	sb	a4,1(a5)
    800050bc:	00813403          	ld	s0,8(sp)
    800050c0:	01010113          	addi	sp,sp,16
    800050c4:	00008067          	ret

00000000800050c8 <uartputc>:
    800050c8:	00002797          	auipc	a5,0x2
    800050cc:	2107a783          	lw	a5,528(a5) # 800072d8 <panicked>
    800050d0:	00078463          	beqz	a5,800050d8 <uartputc+0x10>
    800050d4:	0000006f          	j	800050d4 <uartputc+0xc>
    800050d8:	fd010113          	addi	sp,sp,-48
    800050dc:	02813023          	sd	s0,32(sp)
    800050e0:	00913c23          	sd	s1,24(sp)
    800050e4:	01213823          	sd	s2,16(sp)
    800050e8:	01313423          	sd	s3,8(sp)
    800050ec:	02113423          	sd	ra,40(sp)
    800050f0:	03010413          	addi	s0,sp,48
    800050f4:	00002917          	auipc	s2,0x2
    800050f8:	1ec90913          	addi	s2,s2,492 # 800072e0 <uart_tx_r>
    800050fc:	00093783          	ld	a5,0(s2)
    80005100:	00002497          	auipc	s1,0x2
    80005104:	1e848493          	addi	s1,s1,488 # 800072e8 <uart_tx_w>
    80005108:	0004b703          	ld	a4,0(s1)
    8000510c:	02078693          	addi	a3,a5,32
    80005110:	00050993          	mv	s3,a0
    80005114:	02e69c63          	bne	a3,a4,8000514c <uartputc+0x84>
    80005118:	00001097          	auipc	ra,0x1
    8000511c:	834080e7          	jalr	-1996(ra) # 8000594c <push_on>
    80005120:	00093783          	ld	a5,0(s2)
    80005124:	0004b703          	ld	a4,0(s1)
    80005128:	02078793          	addi	a5,a5,32
    8000512c:	00e79463          	bne	a5,a4,80005134 <uartputc+0x6c>
    80005130:	0000006f          	j	80005130 <uartputc+0x68>
    80005134:	00001097          	auipc	ra,0x1
    80005138:	88c080e7          	jalr	-1908(ra) # 800059c0 <pop_on>
    8000513c:	00093783          	ld	a5,0(s2)
    80005140:	0004b703          	ld	a4,0(s1)
    80005144:	02078693          	addi	a3,a5,32
    80005148:	fce688e3          	beq	a3,a4,80005118 <uartputc+0x50>
    8000514c:	01f77693          	andi	a3,a4,31
    80005150:	00003597          	auipc	a1,0x3
    80005154:	44058593          	addi	a1,a1,1088 # 80008590 <uart_tx_buf>
    80005158:	00d586b3          	add	a3,a1,a3
    8000515c:	00170713          	addi	a4,a4,1
    80005160:	01368023          	sb	s3,0(a3)
    80005164:	00e4b023          	sd	a4,0(s1)
    80005168:	10000637          	lui	a2,0x10000
    8000516c:	02f71063          	bne	a4,a5,8000518c <uartputc+0xc4>
    80005170:	0340006f          	j	800051a4 <uartputc+0xdc>
    80005174:	00074703          	lbu	a4,0(a4)
    80005178:	00f93023          	sd	a5,0(s2)
    8000517c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80005180:	00093783          	ld	a5,0(s2)
    80005184:	0004b703          	ld	a4,0(s1)
    80005188:	00f70e63          	beq	a4,a5,800051a4 <uartputc+0xdc>
    8000518c:	00564683          	lbu	a3,5(a2)
    80005190:	01f7f713          	andi	a4,a5,31
    80005194:	00e58733          	add	a4,a1,a4
    80005198:	0206f693          	andi	a3,a3,32
    8000519c:	00178793          	addi	a5,a5,1
    800051a0:	fc069ae3          	bnez	a3,80005174 <uartputc+0xac>
    800051a4:	02813083          	ld	ra,40(sp)
    800051a8:	02013403          	ld	s0,32(sp)
    800051ac:	01813483          	ld	s1,24(sp)
    800051b0:	01013903          	ld	s2,16(sp)
    800051b4:	00813983          	ld	s3,8(sp)
    800051b8:	03010113          	addi	sp,sp,48
    800051bc:	00008067          	ret

00000000800051c0 <uartputc_sync>:
    800051c0:	ff010113          	addi	sp,sp,-16
    800051c4:	00813423          	sd	s0,8(sp)
    800051c8:	01010413          	addi	s0,sp,16
    800051cc:	00002717          	auipc	a4,0x2
    800051d0:	10c72703          	lw	a4,268(a4) # 800072d8 <panicked>
    800051d4:	02071663          	bnez	a4,80005200 <uartputc_sync+0x40>
    800051d8:	00050793          	mv	a5,a0
    800051dc:	100006b7          	lui	a3,0x10000
    800051e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800051e4:	02077713          	andi	a4,a4,32
    800051e8:	fe070ce3          	beqz	a4,800051e0 <uartputc_sync+0x20>
    800051ec:	0ff7f793          	andi	a5,a5,255
    800051f0:	00f68023          	sb	a5,0(a3)
    800051f4:	00813403          	ld	s0,8(sp)
    800051f8:	01010113          	addi	sp,sp,16
    800051fc:	00008067          	ret
    80005200:	0000006f          	j	80005200 <uartputc_sync+0x40>

0000000080005204 <uartstart>:
    80005204:	ff010113          	addi	sp,sp,-16
    80005208:	00813423          	sd	s0,8(sp)
    8000520c:	01010413          	addi	s0,sp,16
    80005210:	00002617          	auipc	a2,0x2
    80005214:	0d060613          	addi	a2,a2,208 # 800072e0 <uart_tx_r>
    80005218:	00002517          	auipc	a0,0x2
    8000521c:	0d050513          	addi	a0,a0,208 # 800072e8 <uart_tx_w>
    80005220:	00063783          	ld	a5,0(a2)
    80005224:	00053703          	ld	a4,0(a0)
    80005228:	04f70263          	beq	a4,a5,8000526c <uartstart+0x68>
    8000522c:	100005b7          	lui	a1,0x10000
    80005230:	00003817          	auipc	a6,0x3
    80005234:	36080813          	addi	a6,a6,864 # 80008590 <uart_tx_buf>
    80005238:	01c0006f          	j	80005254 <uartstart+0x50>
    8000523c:	0006c703          	lbu	a4,0(a3)
    80005240:	00f63023          	sd	a5,0(a2)
    80005244:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80005248:	00063783          	ld	a5,0(a2)
    8000524c:	00053703          	ld	a4,0(a0)
    80005250:	00f70e63          	beq	a4,a5,8000526c <uartstart+0x68>
    80005254:	01f7f713          	andi	a4,a5,31
    80005258:	00e806b3          	add	a3,a6,a4
    8000525c:	0055c703          	lbu	a4,5(a1)
    80005260:	00178793          	addi	a5,a5,1
    80005264:	02077713          	andi	a4,a4,32
    80005268:	fc071ae3          	bnez	a4,8000523c <uartstart+0x38>
    8000526c:	00813403          	ld	s0,8(sp)
    80005270:	01010113          	addi	sp,sp,16
    80005274:	00008067          	ret

0000000080005278 <uartgetc>:
    80005278:	ff010113          	addi	sp,sp,-16
    8000527c:	00813423          	sd	s0,8(sp)
    80005280:	01010413          	addi	s0,sp,16
    80005284:	10000737          	lui	a4,0x10000
    80005288:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000528c:	0017f793          	andi	a5,a5,1
    80005290:	00078c63          	beqz	a5,800052a8 <uartgetc+0x30>
    80005294:	00074503          	lbu	a0,0(a4)
    80005298:	0ff57513          	andi	a0,a0,255
    8000529c:	00813403          	ld	s0,8(sp)
    800052a0:	01010113          	addi	sp,sp,16
    800052a4:	00008067          	ret
    800052a8:	fff00513          	li	a0,-1
    800052ac:	ff1ff06f          	j	8000529c <uartgetc+0x24>

00000000800052b0 <uartintr>:
    800052b0:	100007b7          	lui	a5,0x10000
    800052b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800052b8:	0017f793          	andi	a5,a5,1
    800052bc:	0a078463          	beqz	a5,80005364 <uartintr+0xb4>
    800052c0:	fe010113          	addi	sp,sp,-32
    800052c4:	00813823          	sd	s0,16(sp)
    800052c8:	00913423          	sd	s1,8(sp)
    800052cc:	00113c23          	sd	ra,24(sp)
    800052d0:	02010413          	addi	s0,sp,32
    800052d4:	100004b7          	lui	s1,0x10000
    800052d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800052dc:	0ff57513          	andi	a0,a0,255
    800052e0:	fffff097          	auipc	ra,0xfffff
    800052e4:	534080e7          	jalr	1332(ra) # 80004814 <consoleintr>
    800052e8:	0054c783          	lbu	a5,5(s1)
    800052ec:	0017f793          	andi	a5,a5,1
    800052f0:	fe0794e3          	bnez	a5,800052d8 <uartintr+0x28>
    800052f4:	00002617          	auipc	a2,0x2
    800052f8:	fec60613          	addi	a2,a2,-20 # 800072e0 <uart_tx_r>
    800052fc:	00002517          	auipc	a0,0x2
    80005300:	fec50513          	addi	a0,a0,-20 # 800072e8 <uart_tx_w>
    80005304:	00063783          	ld	a5,0(a2)
    80005308:	00053703          	ld	a4,0(a0)
    8000530c:	04f70263          	beq	a4,a5,80005350 <uartintr+0xa0>
    80005310:	100005b7          	lui	a1,0x10000
    80005314:	00003817          	auipc	a6,0x3
    80005318:	27c80813          	addi	a6,a6,636 # 80008590 <uart_tx_buf>
    8000531c:	01c0006f          	j	80005338 <uartintr+0x88>
    80005320:	0006c703          	lbu	a4,0(a3)
    80005324:	00f63023          	sd	a5,0(a2)
    80005328:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000532c:	00063783          	ld	a5,0(a2)
    80005330:	00053703          	ld	a4,0(a0)
    80005334:	00f70e63          	beq	a4,a5,80005350 <uartintr+0xa0>
    80005338:	01f7f713          	andi	a4,a5,31
    8000533c:	00e806b3          	add	a3,a6,a4
    80005340:	0055c703          	lbu	a4,5(a1)
    80005344:	00178793          	addi	a5,a5,1
    80005348:	02077713          	andi	a4,a4,32
    8000534c:	fc071ae3          	bnez	a4,80005320 <uartintr+0x70>
    80005350:	01813083          	ld	ra,24(sp)
    80005354:	01013403          	ld	s0,16(sp)
    80005358:	00813483          	ld	s1,8(sp)
    8000535c:	02010113          	addi	sp,sp,32
    80005360:	00008067          	ret
    80005364:	00002617          	auipc	a2,0x2
    80005368:	f7c60613          	addi	a2,a2,-132 # 800072e0 <uart_tx_r>
    8000536c:	00002517          	auipc	a0,0x2
    80005370:	f7c50513          	addi	a0,a0,-132 # 800072e8 <uart_tx_w>
    80005374:	00063783          	ld	a5,0(a2)
    80005378:	00053703          	ld	a4,0(a0)
    8000537c:	04f70263          	beq	a4,a5,800053c0 <uartintr+0x110>
    80005380:	100005b7          	lui	a1,0x10000
    80005384:	00003817          	auipc	a6,0x3
    80005388:	20c80813          	addi	a6,a6,524 # 80008590 <uart_tx_buf>
    8000538c:	01c0006f          	j	800053a8 <uartintr+0xf8>
    80005390:	0006c703          	lbu	a4,0(a3)
    80005394:	00f63023          	sd	a5,0(a2)
    80005398:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000539c:	00063783          	ld	a5,0(a2)
    800053a0:	00053703          	ld	a4,0(a0)
    800053a4:	02f70063          	beq	a4,a5,800053c4 <uartintr+0x114>
    800053a8:	01f7f713          	andi	a4,a5,31
    800053ac:	00e806b3          	add	a3,a6,a4
    800053b0:	0055c703          	lbu	a4,5(a1)
    800053b4:	00178793          	addi	a5,a5,1
    800053b8:	02077713          	andi	a4,a4,32
    800053bc:	fc071ae3          	bnez	a4,80005390 <uartintr+0xe0>
    800053c0:	00008067          	ret
    800053c4:	00008067          	ret

00000000800053c8 <kinit>:
    800053c8:	fc010113          	addi	sp,sp,-64
    800053cc:	02913423          	sd	s1,40(sp)
    800053d0:	fffff7b7          	lui	a5,0xfffff
    800053d4:	00004497          	auipc	s1,0x4
    800053d8:	1db48493          	addi	s1,s1,475 # 800095af <end+0xfff>
    800053dc:	02813823          	sd	s0,48(sp)
    800053e0:	01313c23          	sd	s3,24(sp)
    800053e4:	00f4f4b3          	and	s1,s1,a5
    800053e8:	02113c23          	sd	ra,56(sp)
    800053ec:	03213023          	sd	s2,32(sp)
    800053f0:	01413823          	sd	s4,16(sp)
    800053f4:	01513423          	sd	s5,8(sp)
    800053f8:	04010413          	addi	s0,sp,64
    800053fc:	000017b7          	lui	a5,0x1
    80005400:	01100993          	li	s3,17
    80005404:	00f487b3          	add	a5,s1,a5
    80005408:	01b99993          	slli	s3,s3,0x1b
    8000540c:	06f9e063          	bltu	s3,a5,8000546c <kinit+0xa4>
    80005410:	00003a97          	auipc	s5,0x3
    80005414:	1a0a8a93          	addi	s5,s5,416 # 800085b0 <end>
    80005418:	0754ec63          	bltu	s1,s5,80005490 <kinit+0xc8>
    8000541c:	0734fa63          	bgeu	s1,s3,80005490 <kinit+0xc8>
    80005420:	00088a37          	lui	s4,0x88
    80005424:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005428:	00002917          	auipc	s2,0x2
    8000542c:	ec890913          	addi	s2,s2,-312 # 800072f0 <kmem>
    80005430:	00ca1a13          	slli	s4,s4,0xc
    80005434:	0140006f          	j	80005448 <kinit+0x80>
    80005438:	000017b7          	lui	a5,0x1
    8000543c:	00f484b3          	add	s1,s1,a5
    80005440:	0554e863          	bltu	s1,s5,80005490 <kinit+0xc8>
    80005444:	0534f663          	bgeu	s1,s3,80005490 <kinit+0xc8>
    80005448:	00001637          	lui	a2,0x1
    8000544c:	00100593          	li	a1,1
    80005450:	00048513          	mv	a0,s1
    80005454:	00000097          	auipc	ra,0x0
    80005458:	5e4080e7          	jalr	1508(ra) # 80005a38 <__memset>
    8000545c:	00093783          	ld	a5,0(s2)
    80005460:	00f4b023          	sd	a5,0(s1)
    80005464:	00993023          	sd	s1,0(s2)
    80005468:	fd4498e3          	bne	s1,s4,80005438 <kinit+0x70>
    8000546c:	03813083          	ld	ra,56(sp)
    80005470:	03013403          	ld	s0,48(sp)
    80005474:	02813483          	ld	s1,40(sp)
    80005478:	02013903          	ld	s2,32(sp)
    8000547c:	01813983          	ld	s3,24(sp)
    80005480:	01013a03          	ld	s4,16(sp)
    80005484:	00813a83          	ld	s5,8(sp)
    80005488:	04010113          	addi	sp,sp,64
    8000548c:	00008067          	ret
    80005490:	00001517          	auipc	a0,0x1
    80005494:	e7050513          	addi	a0,a0,-400 # 80006300 <digits+0x18>
    80005498:	fffff097          	auipc	ra,0xfffff
    8000549c:	4b4080e7          	jalr	1204(ra) # 8000494c <panic>

00000000800054a0 <freerange>:
    800054a0:	fc010113          	addi	sp,sp,-64
    800054a4:	000017b7          	lui	a5,0x1
    800054a8:	02913423          	sd	s1,40(sp)
    800054ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800054b0:	009504b3          	add	s1,a0,s1
    800054b4:	fffff537          	lui	a0,0xfffff
    800054b8:	02813823          	sd	s0,48(sp)
    800054bc:	02113c23          	sd	ra,56(sp)
    800054c0:	03213023          	sd	s2,32(sp)
    800054c4:	01313c23          	sd	s3,24(sp)
    800054c8:	01413823          	sd	s4,16(sp)
    800054cc:	01513423          	sd	s5,8(sp)
    800054d0:	01613023          	sd	s6,0(sp)
    800054d4:	04010413          	addi	s0,sp,64
    800054d8:	00a4f4b3          	and	s1,s1,a0
    800054dc:	00f487b3          	add	a5,s1,a5
    800054e0:	06f5e463          	bltu	a1,a5,80005548 <freerange+0xa8>
    800054e4:	00003a97          	auipc	s5,0x3
    800054e8:	0cca8a93          	addi	s5,s5,204 # 800085b0 <end>
    800054ec:	0954e263          	bltu	s1,s5,80005570 <freerange+0xd0>
    800054f0:	01100993          	li	s3,17
    800054f4:	01b99993          	slli	s3,s3,0x1b
    800054f8:	0734fc63          	bgeu	s1,s3,80005570 <freerange+0xd0>
    800054fc:	00058a13          	mv	s4,a1
    80005500:	00002917          	auipc	s2,0x2
    80005504:	df090913          	addi	s2,s2,-528 # 800072f0 <kmem>
    80005508:	00002b37          	lui	s6,0x2
    8000550c:	0140006f          	j	80005520 <freerange+0x80>
    80005510:	000017b7          	lui	a5,0x1
    80005514:	00f484b3          	add	s1,s1,a5
    80005518:	0554ec63          	bltu	s1,s5,80005570 <freerange+0xd0>
    8000551c:	0534fa63          	bgeu	s1,s3,80005570 <freerange+0xd0>
    80005520:	00001637          	lui	a2,0x1
    80005524:	00100593          	li	a1,1
    80005528:	00048513          	mv	a0,s1
    8000552c:	00000097          	auipc	ra,0x0
    80005530:	50c080e7          	jalr	1292(ra) # 80005a38 <__memset>
    80005534:	00093703          	ld	a4,0(s2)
    80005538:	016487b3          	add	a5,s1,s6
    8000553c:	00e4b023          	sd	a4,0(s1)
    80005540:	00993023          	sd	s1,0(s2)
    80005544:	fcfa76e3          	bgeu	s4,a5,80005510 <freerange+0x70>
    80005548:	03813083          	ld	ra,56(sp)
    8000554c:	03013403          	ld	s0,48(sp)
    80005550:	02813483          	ld	s1,40(sp)
    80005554:	02013903          	ld	s2,32(sp)
    80005558:	01813983          	ld	s3,24(sp)
    8000555c:	01013a03          	ld	s4,16(sp)
    80005560:	00813a83          	ld	s5,8(sp)
    80005564:	00013b03          	ld	s6,0(sp)
    80005568:	04010113          	addi	sp,sp,64
    8000556c:	00008067          	ret
    80005570:	00001517          	auipc	a0,0x1
    80005574:	d9050513          	addi	a0,a0,-624 # 80006300 <digits+0x18>
    80005578:	fffff097          	auipc	ra,0xfffff
    8000557c:	3d4080e7          	jalr	980(ra) # 8000494c <panic>

0000000080005580 <kfree>:
    80005580:	fe010113          	addi	sp,sp,-32
    80005584:	00813823          	sd	s0,16(sp)
    80005588:	00113c23          	sd	ra,24(sp)
    8000558c:	00913423          	sd	s1,8(sp)
    80005590:	02010413          	addi	s0,sp,32
    80005594:	03451793          	slli	a5,a0,0x34
    80005598:	04079c63          	bnez	a5,800055f0 <kfree+0x70>
    8000559c:	00003797          	auipc	a5,0x3
    800055a0:	01478793          	addi	a5,a5,20 # 800085b0 <end>
    800055a4:	00050493          	mv	s1,a0
    800055a8:	04f56463          	bltu	a0,a5,800055f0 <kfree+0x70>
    800055ac:	01100793          	li	a5,17
    800055b0:	01b79793          	slli	a5,a5,0x1b
    800055b4:	02f57e63          	bgeu	a0,a5,800055f0 <kfree+0x70>
    800055b8:	00001637          	lui	a2,0x1
    800055bc:	00100593          	li	a1,1
    800055c0:	00000097          	auipc	ra,0x0
    800055c4:	478080e7          	jalr	1144(ra) # 80005a38 <__memset>
    800055c8:	00002797          	auipc	a5,0x2
    800055cc:	d2878793          	addi	a5,a5,-728 # 800072f0 <kmem>
    800055d0:	0007b703          	ld	a4,0(a5)
    800055d4:	01813083          	ld	ra,24(sp)
    800055d8:	01013403          	ld	s0,16(sp)
    800055dc:	00e4b023          	sd	a4,0(s1)
    800055e0:	0097b023          	sd	s1,0(a5)
    800055e4:	00813483          	ld	s1,8(sp)
    800055e8:	02010113          	addi	sp,sp,32
    800055ec:	00008067          	ret
    800055f0:	00001517          	auipc	a0,0x1
    800055f4:	d1050513          	addi	a0,a0,-752 # 80006300 <digits+0x18>
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	354080e7          	jalr	852(ra) # 8000494c <panic>

0000000080005600 <kalloc>:
    80005600:	fe010113          	addi	sp,sp,-32
    80005604:	00813823          	sd	s0,16(sp)
    80005608:	00913423          	sd	s1,8(sp)
    8000560c:	00113c23          	sd	ra,24(sp)
    80005610:	02010413          	addi	s0,sp,32
    80005614:	00002797          	auipc	a5,0x2
    80005618:	cdc78793          	addi	a5,a5,-804 # 800072f0 <kmem>
    8000561c:	0007b483          	ld	s1,0(a5)
    80005620:	02048063          	beqz	s1,80005640 <kalloc+0x40>
    80005624:	0004b703          	ld	a4,0(s1)
    80005628:	00001637          	lui	a2,0x1
    8000562c:	00500593          	li	a1,5
    80005630:	00048513          	mv	a0,s1
    80005634:	00e7b023          	sd	a4,0(a5)
    80005638:	00000097          	auipc	ra,0x0
    8000563c:	400080e7          	jalr	1024(ra) # 80005a38 <__memset>
    80005640:	01813083          	ld	ra,24(sp)
    80005644:	01013403          	ld	s0,16(sp)
    80005648:	00048513          	mv	a0,s1
    8000564c:	00813483          	ld	s1,8(sp)
    80005650:	02010113          	addi	sp,sp,32
    80005654:	00008067          	ret

0000000080005658 <initlock>:
    80005658:	ff010113          	addi	sp,sp,-16
    8000565c:	00813423          	sd	s0,8(sp)
    80005660:	01010413          	addi	s0,sp,16
    80005664:	00813403          	ld	s0,8(sp)
    80005668:	00b53423          	sd	a1,8(a0)
    8000566c:	00052023          	sw	zero,0(a0)
    80005670:	00053823          	sd	zero,16(a0)
    80005674:	01010113          	addi	sp,sp,16
    80005678:	00008067          	ret

000000008000567c <acquire>:
    8000567c:	fe010113          	addi	sp,sp,-32
    80005680:	00813823          	sd	s0,16(sp)
    80005684:	00913423          	sd	s1,8(sp)
    80005688:	00113c23          	sd	ra,24(sp)
    8000568c:	01213023          	sd	s2,0(sp)
    80005690:	02010413          	addi	s0,sp,32
    80005694:	00050493          	mv	s1,a0
    80005698:	10002973          	csrr	s2,sstatus
    8000569c:	100027f3          	csrr	a5,sstatus
    800056a0:	ffd7f793          	andi	a5,a5,-3
    800056a4:	10079073          	csrw	sstatus,a5
    800056a8:	fffff097          	auipc	ra,0xfffff
    800056ac:	8e8080e7          	jalr	-1816(ra) # 80003f90 <mycpu>
    800056b0:	07852783          	lw	a5,120(a0)
    800056b4:	06078e63          	beqz	a5,80005730 <acquire+0xb4>
    800056b8:	fffff097          	auipc	ra,0xfffff
    800056bc:	8d8080e7          	jalr	-1832(ra) # 80003f90 <mycpu>
    800056c0:	07852783          	lw	a5,120(a0)
    800056c4:	0004a703          	lw	a4,0(s1)
    800056c8:	0017879b          	addiw	a5,a5,1
    800056cc:	06f52c23          	sw	a5,120(a0)
    800056d0:	04071063          	bnez	a4,80005710 <acquire+0x94>
    800056d4:	00100713          	li	a4,1
    800056d8:	00070793          	mv	a5,a4
    800056dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800056e0:	0007879b          	sext.w	a5,a5
    800056e4:	fe079ae3          	bnez	a5,800056d8 <acquire+0x5c>
    800056e8:	0ff0000f          	fence
    800056ec:	fffff097          	auipc	ra,0xfffff
    800056f0:	8a4080e7          	jalr	-1884(ra) # 80003f90 <mycpu>
    800056f4:	01813083          	ld	ra,24(sp)
    800056f8:	01013403          	ld	s0,16(sp)
    800056fc:	00a4b823          	sd	a0,16(s1)
    80005700:	00013903          	ld	s2,0(sp)
    80005704:	00813483          	ld	s1,8(sp)
    80005708:	02010113          	addi	sp,sp,32
    8000570c:	00008067          	ret
    80005710:	0104b903          	ld	s2,16(s1)
    80005714:	fffff097          	auipc	ra,0xfffff
    80005718:	87c080e7          	jalr	-1924(ra) # 80003f90 <mycpu>
    8000571c:	faa91ce3          	bne	s2,a0,800056d4 <acquire+0x58>
    80005720:	00001517          	auipc	a0,0x1
    80005724:	be850513          	addi	a0,a0,-1048 # 80006308 <digits+0x20>
    80005728:	fffff097          	auipc	ra,0xfffff
    8000572c:	224080e7          	jalr	548(ra) # 8000494c <panic>
    80005730:	00195913          	srli	s2,s2,0x1
    80005734:	fffff097          	auipc	ra,0xfffff
    80005738:	85c080e7          	jalr	-1956(ra) # 80003f90 <mycpu>
    8000573c:	00197913          	andi	s2,s2,1
    80005740:	07252e23          	sw	s2,124(a0)
    80005744:	f75ff06f          	j	800056b8 <acquire+0x3c>

0000000080005748 <release>:
    80005748:	fe010113          	addi	sp,sp,-32
    8000574c:	00813823          	sd	s0,16(sp)
    80005750:	00113c23          	sd	ra,24(sp)
    80005754:	00913423          	sd	s1,8(sp)
    80005758:	01213023          	sd	s2,0(sp)
    8000575c:	02010413          	addi	s0,sp,32
    80005760:	00052783          	lw	a5,0(a0)
    80005764:	00079a63          	bnez	a5,80005778 <release+0x30>
    80005768:	00001517          	auipc	a0,0x1
    8000576c:	ba850513          	addi	a0,a0,-1112 # 80006310 <digits+0x28>
    80005770:	fffff097          	auipc	ra,0xfffff
    80005774:	1dc080e7          	jalr	476(ra) # 8000494c <panic>
    80005778:	01053903          	ld	s2,16(a0)
    8000577c:	00050493          	mv	s1,a0
    80005780:	fffff097          	auipc	ra,0xfffff
    80005784:	810080e7          	jalr	-2032(ra) # 80003f90 <mycpu>
    80005788:	fea910e3          	bne	s2,a0,80005768 <release+0x20>
    8000578c:	0004b823          	sd	zero,16(s1)
    80005790:	0ff0000f          	fence
    80005794:	0f50000f          	fence	iorw,ow
    80005798:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000579c:	ffffe097          	auipc	ra,0xffffe
    800057a0:	7f4080e7          	jalr	2036(ra) # 80003f90 <mycpu>
    800057a4:	100027f3          	csrr	a5,sstatus
    800057a8:	0027f793          	andi	a5,a5,2
    800057ac:	04079a63          	bnez	a5,80005800 <release+0xb8>
    800057b0:	07852783          	lw	a5,120(a0)
    800057b4:	02f05e63          	blez	a5,800057f0 <release+0xa8>
    800057b8:	fff7871b          	addiw	a4,a5,-1
    800057bc:	06e52c23          	sw	a4,120(a0)
    800057c0:	00071c63          	bnez	a4,800057d8 <release+0x90>
    800057c4:	07c52783          	lw	a5,124(a0)
    800057c8:	00078863          	beqz	a5,800057d8 <release+0x90>
    800057cc:	100027f3          	csrr	a5,sstatus
    800057d0:	0027e793          	ori	a5,a5,2
    800057d4:	10079073          	csrw	sstatus,a5
    800057d8:	01813083          	ld	ra,24(sp)
    800057dc:	01013403          	ld	s0,16(sp)
    800057e0:	00813483          	ld	s1,8(sp)
    800057e4:	00013903          	ld	s2,0(sp)
    800057e8:	02010113          	addi	sp,sp,32
    800057ec:	00008067          	ret
    800057f0:	00001517          	auipc	a0,0x1
    800057f4:	b4050513          	addi	a0,a0,-1216 # 80006330 <digits+0x48>
    800057f8:	fffff097          	auipc	ra,0xfffff
    800057fc:	154080e7          	jalr	340(ra) # 8000494c <panic>
    80005800:	00001517          	auipc	a0,0x1
    80005804:	b1850513          	addi	a0,a0,-1256 # 80006318 <digits+0x30>
    80005808:	fffff097          	auipc	ra,0xfffff
    8000580c:	144080e7          	jalr	324(ra) # 8000494c <panic>

0000000080005810 <holding>:
    80005810:	00052783          	lw	a5,0(a0)
    80005814:	00079663          	bnez	a5,80005820 <holding+0x10>
    80005818:	00000513          	li	a0,0
    8000581c:	00008067          	ret
    80005820:	fe010113          	addi	sp,sp,-32
    80005824:	00813823          	sd	s0,16(sp)
    80005828:	00913423          	sd	s1,8(sp)
    8000582c:	00113c23          	sd	ra,24(sp)
    80005830:	02010413          	addi	s0,sp,32
    80005834:	01053483          	ld	s1,16(a0)
    80005838:	ffffe097          	auipc	ra,0xffffe
    8000583c:	758080e7          	jalr	1880(ra) # 80003f90 <mycpu>
    80005840:	01813083          	ld	ra,24(sp)
    80005844:	01013403          	ld	s0,16(sp)
    80005848:	40a48533          	sub	a0,s1,a0
    8000584c:	00153513          	seqz	a0,a0
    80005850:	00813483          	ld	s1,8(sp)
    80005854:	02010113          	addi	sp,sp,32
    80005858:	00008067          	ret

000000008000585c <push_off>:
    8000585c:	fe010113          	addi	sp,sp,-32
    80005860:	00813823          	sd	s0,16(sp)
    80005864:	00113c23          	sd	ra,24(sp)
    80005868:	00913423          	sd	s1,8(sp)
    8000586c:	02010413          	addi	s0,sp,32
    80005870:	100024f3          	csrr	s1,sstatus
    80005874:	100027f3          	csrr	a5,sstatus
    80005878:	ffd7f793          	andi	a5,a5,-3
    8000587c:	10079073          	csrw	sstatus,a5
    80005880:	ffffe097          	auipc	ra,0xffffe
    80005884:	710080e7          	jalr	1808(ra) # 80003f90 <mycpu>
    80005888:	07852783          	lw	a5,120(a0)
    8000588c:	02078663          	beqz	a5,800058b8 <push_off+0x5c>
    80005890:	ffffe097          	auipc	ra,0xffffe
    80005894:	700080e7          	jalr	1792(ra) # 80003f90 <mycpu>
    80005898:	07852783          	lw	a5,120(a0)
    8000589c:	01813083          	ld	ra,24(sp)
    800058a0:	01013403          	ld	s0,16(sp)
    800058a4:	0017879b          	addiw	a5,a5,1
    800058a8:	06f52c23          	sw	a5,120(a0)
    800058ac:	00813483          	ld	s1,8(sp)
    800058b0:	02010113          	addi	sp,sp,32
    800058b4:	00008067          	ret
    800058b8:	0014d493          	srli	s1,s1,0x1
    800058bc:	ffffe097          	auipc	ra,0xffffe
    800058c0:	6d4080e7          	jalr	1748(ra) # 80003f90 <mycpu>
    800058c4:	0014f493          	andi	s1,s1,1
    800058c8:	06952e23          	sw	s1,124(a0)
    800058cc:	fc5ff06f          	j	80005890 <push_off+0x34>

00000000800058d0 <pop_off>:
    800058d0:	ff010113          	addi	sp,sp,-16
    800058d4:	00813023          	sd	s0,0(sp)
    800058d8:	00113423          	sd	ra,8(sp)
    800058dc:	01010413          	addi	s0,sp,16
    800058e0:	ffffe097          	auipc	ra,0xffffe
    800058e4:	6b0080e7          	jalr	1712(ra) # 80003f90 <mycpu>
    800058e8:	100027f3          	csrr	a5,sstatus
    800058ec:	0027f793          	andi	a5,a5,2
    800058f0:	04079663          	bnez	a5,8000593c <pop_off+0x6c>
    800058f4:	07852783          	lw	a5,120(a0)
    800058f8:	02f05a63          	blez	a5,8000592c <pop_off+0x5c>
    800058fc:	fff7871b          	addiw	a4,a5,-1
    80005900:	06e52c23          	sw	a4,120(a0)
    80005904:	00071c63          	bnez	a4,8000591c <pop_off+0x4c>
    80005908:	07c52783          	lw	a5,124(a0)
    8000590c:	00078863          	beqz	a5,8000591c <pop_off+0x4c>
    80005910:	100027f3          	csrr	a5,sstatus
    80005914:	0027e793          	ori	a5,a5,2
    80005918:	10079073          	csrw	sstatus,a5
    8000591c:	00813083          	ld	ra,8(sp)
    80005920:	00013403          	ld	s0,0(sp)
    80005924:	01010113          	addi	sp,sp,16
    80005928:	00008067          	ret
    8000592c:	00001517          	auipc	a0,0x1
    80005930:	a0450513          	addi	a0,a0,-1532 # 80006330 <digits+0x48>
    80005934:	fffff097          	auipc	ra,0xfffff
    80005938:	018080e7          	jalr	24(ra) # 8000494c <panic>
    8000593c:	00001517          	auipc	a0,0x1
    80005940:	9dc50513          	addi	a0,a0,-1572 # 80006318 <digits+0x30>
    80005944:	fffff097          	auipc	ra,0xfffff
    80005948:	008080e7          	jalr	8(ra) # 8000494c <panic>

000000008000594c <push_on>:
    8000594c:	fe010113          	addi	sp,sp,-32
    80005950:	00813823          	sd	s0,16(sp)
    80005954:	00113c23          	sd	ra,24(sp)
    80005958:	00913423          	sd	s1,8(sp)
    8000595c:	02010413          	addi	s0,sp,32
    80005960:	100024f3          	csrr	s1,sstatus
    80005964:	100027f3          	csrr	a5,sstatus
    80005968:	0027e793          	ori	a5,a5,2
    8000596c:	10079073          	csrw	sstatus,a5
    80005970:	ffffe097          	auipc	ra,0xffffe
    80005974:	620080e7          	jalr	1568(ra) # 80003f90 <mycpu>
    80005978:	07852783          	lw	a5,120(a0)
    8000597c:	02078663          	beqz	a5,800059a8 <push_on+0x5c>
    80005980:	ffffe097          	auipc	ra,0xffffe
    80005984:	610080e7          	jalr	1552(ra) # 80003f90 <mycpu>
    80005988:	07852783          	lw	a5,120(a0)
    8000598c:	01813083          	ld	ra,24(sp)
    80005990:	01013403          	ld	s0,16(sp)
    80005994:	0017879b          	addiw	a5,a5,1
    80005998:	06f52c23          	sw	a5,120(a0)
    8000599c:	00813483          	ld	s1,8(sp)
    800059a0:	02010113          	addi	sp,sp,32
    800059a4:	00008067          	ret
    800059a8:	0014d493          	srli	s1,s1,0x1
    800059ac:	ffffe097          	auipc	ra,0xffffe
    800059b0:	5e4080e7          	jalr	1508(ra) # 80003f90 <mycpu>
    800059b4:	0014f493          	andi	s1,s1,1
    800059b8:	06952e23          	sw	s1,124(a0)
    800059bc:	fc5ff06f          	j	80005980 <push_on+0x34>

00000000800059c0 <pop_on>:
    800059c0:	ff010113          	addi	sp,sp,-16
    800059c4:	00813023          	sd	s0,0(sp)
    800059c8:	00113423          	sd	ra,8(sp)
    800059cc:	01010413          	addi	s0,sp,16
    800059d0:	ffffe097          	auipc	ra,0xffffe
    800059d4:	5c0080e7          	jalr	1472(ra) # 80003f90 <mycpu>
    800059d8:	100027f3          	csrr	a5,sstatus
    800059dc:	0027f793          	andi	a5,a5,2
    800059e0:	04078463          	beqz	a5,80005a28 <pop_on+0x68>
    800059e4:	07852783          	lw	a5,120(a0)
    800059e8:	02f05863          	blez	a5,80005a18 <pop_on+0x58>
    800059ec:	fff7879b          	addiw	a5,a5,-1
    800059f0:	06f52c23          	sw	a5,120(a0)
    800059f4:	07853783          	ld	a5,120(a0)
    800059f8:	00079863          	bnez	a5,80005a08 <pop_on+0x48>
    800059fc:	100027f3          	csrr	a5,sstatus
    80005a00:	ffd7f793          	andi	a5,a5,-3
    80005a04:	10079073          	csrw	sstatus,a5
    80005a08:	00813083          	ld	ra,8(sp)
    80005a0c:	00013403          	ld	s0,0(sp)
    80005a10:	01010113          	addi	sp,sp,16
    80005a14:	00008067          	ret
    80005a18:	00001517          	auipc	a0,0x1
    80005a1c:	94050513          	addi	a0,a0,-1728 # 80006358 <digits+0x70>
    80005a20:	fffff097          	auipc	ra,0xfffff
    80005a24:	f2c080e7          	jalr	-212(ra) # 8000494c <panic>
    80005a28:	00001517          	auipc	a0,0x1
    80005a2c:	91050513          	addi	a0,a0,-1776 # 80006338 <digits+0x50>
    80005a30:	fffff097          	auipc	ra,0xfffff
    80005a34:	f1c080e7          	jalr	-228(ra) # 8000494c <panic>

0000000080005a38 <__memset>:
    80005a38:	ff010113          	addi	sp,sp,-16
    80005a3c:	00813423          	sd	s0,8(sp)
    80005a40:	01010413          	addi	s0,sp,16
    80005a44:	1a060e63          	beqz	a2,80005c00 <__memset+0x1c8>
    80005a48:	40a007b3          	neg	a5,a0
    80005a4c:	0077f793          	andi	a5,a5,7
    80005a50:	00778693          	addi	a3,a5,7
    80005a54:	00b00813          	li	a6,11
    80005a58:	0ff5f593          	andi	a1,a1,255
    80005a5c:	fff6071b          	addiw	a4,a2,-1
    80005a60:	1b06e663          	bltu	a3,a6,80005c0c <__memset+0x1d4>
    80005a64:	1cd76463          	bltu	a4,a3,80005c2c <__memset+0x1f4>
    80005a68:	1a078e63          	beqz	a5,80005c24 <__memset+0x1ec>
    80005a6c:	00b50023          	sb	a1,0(a0)
    80005a70:	00100713          	li	a4,1
    80005a74:	1ae78463          	beq	a5,a4,80005c1c <__memset+0x1e4>
    80005a78:	00b500a3          	sb	a1,1(a0)
    80005a7c:	00200713          	li	a4,2
    80005a80:	1ae78a63          	beq	a5,a4,80005c34 <__memset+0x1fc>
    80005a84:	00b50123          	sb	a1,2(a0)
    80005a88:	00300713          	li	a4,3
    80005a8c:	18e78463          	beq	a5,a4,80005c14 <__memset+0x1dc>
    80005a90:	00b501a3          	sb	a1,3(a0)
    80005a94:	00400713          	li	a4,4
    80005a98:	1ae78263          	beq	a5,a4,80005c3c <__memset+0x204>
    80005a9c:	00b50223          	sb	a1,4(a0)
    80005aa0:	00500713          	li	a4,5
    80005aa4:	1ae78063          	beq	a5,a4,80005c44 <__memset+0x20c>
    80005aa8:	00b502a3          	sb	a1,5(a0)
    80005aac:	00700713          	li	a4,7
    80005ab0:	18e79e63          	bne	a5,a4,80005c4c <__memset+0x214>
    80005ab4:	00b50323          	sb	a1,6(a0)
    80005ab8:	00700e93          	li	t4,7
    80005abc:	00859713          	slli	a4,a1,0x8
    80005ac0:	00e5e733          	or	a4,a1,a4
    80005ac4:	01059e13          	slli	t3,a1,0x10
    80005ac8:	01c76e33          	or	t3,a4,t3
    80005acc:	01859313          	slli	t1,a1,0x18
    80005ad0:	006e6333          	or	t1,t3,t1
    80005ad4:	02059893          	slli	a7,a1,0x20
    80005ad8:	40f60e3b          	subw	t3,a2,a5
    80005adc:	011368b3          	or	a7,t1,a7
    80005ae0:	02859813          	slli	a6,a1,0x28
    80005ae4:	0108e833          	or	a6,a7,a6
    80005ae8:	03059693          	slli	a3,a1,0x30
    80005aec:	003e589b          	srliw	a7,t3,0x3
    80005af0:	00d866b3          	or	a3,a6,a3
    80005af4:	03859713          	slli	a4,a1,0x38
    80005af8:	00389813          	slli	a6,a7,0x3
    80005afc:	00f507b3          	add	a5,a0,a5
    80005b00:	00e6e733          	or	a4,a3,a4
    80005b04:	000e089b          	sext.w	a7,t3
    80005b08:	00f806b3          	add	a3,a6,a5
    80005b0c:	00e7b023          	sd	a4,0(a5)
    80005b10:	00878793          	addi	a5,a5,8
    80005b14:	fed79ce3          	bne	a5,a3,80005b0c <__memset+0xd4>
    80005b18:	ff8e7793          	andi	a5,t3,-8
    80005b1c:	0007871b          	sext.w	a4,a5
    80005b20:	01d787bb          	addw	a5,a5,t4
    80005b24:	0ce88e63          	beq	a7,a4,80005c00 <__memset+0x1c8>
    80005b28:	00f50733          	add	a4,a0,a5
    80005b2c:	00b70023          	sb	a1,0(a4)
    80005b30:	0017871b          	addiw	a4,a5,1
    80005b34:	0cc77663          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005b38:	00e50733          	add	a4,a0,a4
    80005b3c:	00b70023          	sb	a1,0(a4)
    80005b40:	0027871b          	addiw	a4,a5,2
    80005b44:	0ac77e63          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005b48:	00e50733          	add	a4,a0,a4
    80005b4c:	00b70023          	sb	a1,0(a4)
    80005b50:	0037871b          	addiw	a4,a5,3
    80005b54:	0ac77663          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005b58:	00e50733          	add	a4,a0,a4
    80005b5c:	00b70023          	sb	a1,0(a4)
    80005b60:	0047871b          	addiw	a4,a5,4
    80005b64:	08c77e63          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005b68:	00e50733          	add	a4,a0,a4
    80005b6c:	00b70023          	sb	a1,0(a4)
    80005b70:	0057871b          	addiw	a4,a5,5
    80005b74:	08c77663          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005b78:	00e50733          	add	a4,a0,a4
    80005b7c:	00b70023          	sb	a1,0(a4)
    80005b80:	0067871b          	addiw	a4,a5,6
    80005b84:	06c77e63          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005b88:	00e50733          	add	a4,a0,a4
    80005b8c:	00b70023          	sb	a1,0(a4)
    80005b90:	0077871b          	addiw	a4,a5,7
    80005b94:	06c77663          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005b98:	00e50733          	add	a4,a0,a4
    80005b9c:	00b70023          	sb	a1,0(a4)
    80005ba0:	0087871b          	addiw	a4,a5,8
    80005ba4:	04c77e63          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005ba8:	00e50733          	add	a4,a0,a4
    80005bac:	00b70023          	sb	a1,0(a4)
    80005bb0:	0097871b          	addiw	a4,a5,9
    80005bb4:	04c77663          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005bb8:	00e50733          	add	a4,a0,a4
    80005bbc:	00b70023          	sb	a1,0(a4)
    80005bc0:	00a7871b          	addiw	a4,a5,10
    80005bc4:	02c77e63          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005bc8:	00e50733          	add	a4,a0,a4
    80005bcc:	00b70023          	sb	a1,0(a4)
    80005bd0:	00b7871b          	addiw	a4,a5,11
    80005bd4:	02c77663          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005bd8:	00e50733          	add	a4,a0,a4
    80005bdc:	00b70023          	sb	a1,0(a4)
    80005be0:	00c7871b          	addiw	a4,a5,12
    80005be4:	00c77e63          	bgeu	a4,a2,80005c00 <__memset+0x1c8>
    80005be8:	00e50733          	add	a4,a0,a4
    80005bec:	00b70023          	sb	a1,0(a4)
    80005bf0:	00d7879b          	addiw	a5,a5,13
    80005bf4:	00c7f663          	bgeu	a5,a2,80005c00 <__memset+0x1c8>
    80005bf8:	00f507b3          	add	a5,a0,a5
    80005bfc:	00b78023          	sb	a1,0(a5)
    80005c00:	00813403          	ld	s0,8(sp)
    80005c04:	01010113          	addi	sp,sp,16
    80005c08:	00008067          	ret
    80005c0c:	00b00693          	li	a3,11
    80005c10:	e55ff06f          	j	80005a64 <__memset+0x2c>
    80005c14:	00300e93          	li	t4,3
    80005c18:	ea5ff06f          	j	80005abc <__memset+0x84>
    80005c1c:	00100e93          	li	t4,1
    80005c20:	e9dff06f          	j	80005abc <__memset+0x84>
    80005c24:	00000e93          	li	t4,0
    80005c28:	e95ff06f          	j	80005abc <__memset+0x84>
    80005c2c:	00000793          	li	a5,0
    80005c30:	ef9ff06f          	j	80005b28 <__memset+0xf0>
    80005c34:	00200e93          	li	t4,2
    80005c38:	e85ff06f          	j	80005abc <__memset+0x84>
    80005c3c:	00400e93          	li	t4,4
    80005c40:	e7dff06f          	j	80005abc <__memset+0x84>
    80005c44:	00500e93          	li	t4,5
    80005c48:	e75ff06f          	j	80005abc <__memset+0x84>
    80005c4c:	00600e93          	li	t4,6
    80005c50:	e6dff06f          	j	80005abc <__memset+0x84>

0000000080005c54 <__memmove>:
    80005c54:	ff010113          	addi	sp,sp,-16
    80005c58:	00813423          	sd	s0,8(sp)
    80005c5c:	01010413          	addi	s0,sp,16
    80005c60:	0e060863          	beqz	a2,80005d50 <__memmove+0xfc>
    80005c64:	fff6069b          	addiw	a3,a2,-1
    80005c68:	0006881b          	sext.w	a6,a3
    80005c6c:	0ea5e863          	bltu	a1,a0,80005d5c <__memmove+0x108>
    80005c70:	00758713          	addi	a4,a1,7
    80005c74:	00a5e7b3          	or	a5,a1,a0
    80005c78:	40a70733          	sub	a4,a4,a0
    80005c7c:	0077f793          	andi	a5,a5,7
    80005c80:	00f73713          	sltiu	a4,a4,15
    80005c84:	00174713          	xori	a4,a4,1
    80005c88:	0017b793          	seqz	a5,a5
    80005c8c:	00e7f7b3          	and	a5,a5,a4
    80005c90:	10078863          	beqz	a5,80005da0 <__memmove+0x14c>
    80005c94:	00900793          	li	a5,9
    80005c98:	1107f463          	bgeu	a5,a6,80005da0 <__memmove+0x14c>
    80005c9c:	0036581b          	srliw	a6,a2,0x3
    80005ca0:	fff8081b          	addiw	a6,a6,-1
    80005ca4:	02081813          	slli	a6,a6,0x20
    80005ca8:	01d85893          	srli	a7,a6,0x1d
    80005cac:	00858813          	addi	a6,a1,8
    80005cb0:	00058793          	mv	a5,a1
    80005cb4:	00050713          	mv	a4,a0
    80005cb8:	01088833          	add	a6,a7,a6
    80005cbc:	0007b883          	ld	a7,0(a5)
    80005cc0:	00878793          	addi	a5,a5,8
    80005cc4:	00870713          	addi	a4,a4,8
    80005cc8:	ff173c23          	sd	a7,-8(a4)
    80005ccc:	ff0798e3          	bne	a5,a6,80005cbc <__memmove+0x68>
    80005cd0:	ff867713          	andi	a4,a2,-8
    80005cd4:	02071793          	slli	a5,a4,0x20
    80005cd8:	0207d793          	srli	a5,a5,0x20
    80005cdc:	00f585b3          	add	a1,a1,a5
    80005ce0:	40e686bb          	subw	a3,a3,a4
    80005ce4:	00f507b3          	add	a5,a0,a5
    80005ce8:	06e60463          	beq	a2,a4,80005d50 <__memmove+0xfc>
    80005cec:	0005c703          	lbu	a4,0(a1)
    80005cf0:	00e78023          	sb	a4,0(a5)
    80005cf4:	04068e63          	beqz	a3,80005d50 <__memmove+0xfc>
    80005cf8:	0015c603          	lbu	a2,1(a1)
    80005cfc:	00100713          	li	a4,1
    80005d00:	00c780a3          	sb	a2,1(a5)
    80005d04:	04e68663          	beq	a3,a4,80005d50 <__memmove+0xfc>
    80005d08:	0025c603          	lbu	a2,2(a1)
    80005d0c:	00200713          	li	a4,2
    80005d10:	00c78123          	sb	a2,2(a5)
    80005d14:	02e68e63          	beq	a3,a4,80005d50 <__memmove+0xfc>
    80005d18:	0035c603          	lbu	a2,3(a1)
    80005d1c:	00300713          	li	a4,3
    80005d20:	00c781a3          	sb	a2,3(a5)
    80005d24:	02e68663          	beq	a3,a4,80005d50 <__memmove+0xfc>
    80005d28:	0045c603          	lbu	a2,4(a1)
    80005d2c:	00400713          	li	a4,4
    80005d30:	00c78223          	sb	a2,4(a5)
    80005d34:	00e68e63          	beq	a3,a4,80005d50 <__memmove+0xfc>
    80005d38:	0055c603          	lbu	a2,5(a1)
    80005d3c:	00500713          	li	a4,5
    80005d40:	00c782a3          	sb	a2,5(a5)
    80005d44:	00e68663          	beq	a3,a4,80005d50 <__memmove+0xfc>
    80005d48:	0065c703          	lbu	a4,6(a1)
    80005d4c:	00e78323          	sb	a4,6(a5)
    80005d50:	00813403          	ld	s0,8(sp)
    80005d54:	01010113          	addi	sp,sp,16
    80005d58:	00008067          	ret
    80005d5c:	02061713          	slli	a4,a2,0x20
    80005d60:	02075713          	srli	a4,a4,0x20
    80005d64:	00e587b3          	add	a5,a1,a4
    80005d68:	f0f574e3          	bgeu	a0,a5,80005c70 <__memmove+0x1c>
    80005d6c:	02069613          	slli	a2,a3,0x20
    80005d70:	02065613          	srli	a2,a2,0x20
    80005d74:	fff64613          	not	a2,a2
    80005d78:	00e50733          	add	a4,a0,a4
    80005d7c:	00c78633          	add	a2,a5,a2
    80005d80:	fff7c683          	lbu	a3,-1(a5)
    80005d84:	fff78793          	addi	a5,a5,-1
    80005d88:	fff70713          	addi	a4,a4,-1
    80005d8c:	00d70023          	sb	a3,0(a4)
    80005d90:	fec798e3          	bne	a5,a2,80005d80 <__memmove+0x12c>
    80005d94:	00813403          	ld	s0,8(sp)
    80005d98:	01010113          	addi	sp,sp,16
    80005d9c:	00008067          	ret
    80005da0:	02069713          	slli	a4,a3,0x20
    80005da4:	02075713          	srli	a4,a4,0x20
    80005da8:	00170713          	addi	a4,a4,1
    80005dac:	00e50733          	add	a4,a0,a4
    80005db0:	00050793          	mv	a5,a0
    80005db4:	0005c683          	lbu	a3,0(a1)
    80005db8:	00178793          	addi	a5,a5,1
    80005dbc:	00158593          	addi	a1,a1,1
    80005dc0:	fed78fa3          	sb	a3,-1(a5)
    80005dc4:	fee798e3          	bne	a5,a4,80005db4 <__memmove+0x160>
    80005dc8:	f89ff06f          	j	80005d50 <__memmove+0xfc>

0000000080005dcc <__putc>:
    80005dcc:	fe010113          	addi	sp,sp,-32
    80005dd0:	00813823          	sd	s0,16(sp)
    80005dd4:	00113c23          	sd	ra,24(sp)
    80005dd8:	02010413          	addi	s0,sp,32
    80005ddc:	00050793          	mv	a5,a0
    80005de0:	fef40593          	addi	a1,s0,-17
    80005de4:	00100613          	li	a2,1
    80005de8:	00000513          	li	a0,0
    80005dec:	fef407a3          	sb	a5,-17(s0)
    80005df0:	fffff097          	auipc	ra,0xfffff
    80005df4:	b3c080e7          	jalr	-1220(ra) # 8000492c <console_write>
    80005df8:	01813083          	ld	ra,24(sp)
    80005dfc:	01013403          	ld	s0,16(sp)
    80005e00:	02010113          	addi	sp,sp,32
    80005e04:	00008067          	ret

0000000080005e08 <__getc>:
    80005e08:	fe010113          	addi	sp,sp,-32
    80005e0c:	00813823          	sd	s0,16(sp)
    80005e10:	00113c23          	sd	ra,24(sp)
    80005e14:	02010413          	addi	s0,sp,32
    80005e18:	fe840593          	addi	a1,s0,-24
    80005e1c:	00100613          	li	a2,1
    80005e20:	00000513          	li	a0,0
    80005e24:	fffff097          	auipc	ra,0xfffff
    80005e28:	ae8080e7          	jalr	-1304(ra) # 8000490c <console_read>
    80005e2c:	fe844503          	lbu	a0,-24(s0)
    80005e30:	01813083          	ld	ra,24(sp)
    80005e34:	01013403          	ld	s0,16(sp)
    80005e38:	02010113          	addi	sp,sp,32
    80005e3c:	00008067          	ret

0000000080005e40 <console_handler>:
    80005e40:	fe010113          	addi	sp,sp,-32
    80005e44:	00813823          	sd	s0,16(sp)
    80005e48:	00113c23          	sd	ra,24(sp)
    80005e4c:	00913423          	sd	s1,8(sp)
    80005e50:	02010413          	addi	s0,sp,32
    80005e54:	14202773          	csrr	a4,scause
    80005e58:	100027f3          	csrr	a5,sstatus
    80005e5c:	0027f793          	andi	a5,a5,2
    80005e60:	06079e63          	bnez	a5,80005edc <console_handler+0x9c>
    80005e64:	00074c63          	bltz	a4,80005e7c <console_handler+0x3c>
    80005e68:	01813083          	ld	ra,24(sp)
    80005e6c:	01013403          	ld	s0,16(sp)
    80005e70:	00813483          	ld	s1,8(sp)
    80005e74:	02010113          	addi	sp,sp,32
    80005e78:	00008067          	ret
    80005e7c:	0ff77713          	andi	a4,a4,255
    80005e80:	00900793          	li	a5,9
    80005e84:	fef712e3          	bne	a4,a5,80005e68 <console_handler+0x28>
    80005e88:	ffffe097          	auipc	ra,0xffffe
    80005e8c:	6dc080e7          	jalr	1756(ra) # 80004564 <plic_claim>
    80005e90:	00a00793          	li	a5,10
    80005e94:	00050493          	mv	s1,a0
    80005e98:	02f50c63          	beq	a0,a5,80005ed0 <console_handler+0x90>
    80005e9c:	fc0506e3          	beqz	a0,80005e68 <console_handler+0x28>
    80005ea0:	00050593          	mv	a1,a0
    80005ea4:	00000517          	auipc	a0,0x0
    80005ea8:	3bc50513          	addi	a0,a0,956 # 80006260 <CONSOLE_STATUS+0x250>
    80005eac:	fffff097          	auipc	ra,0xfffff
    80005eb0:	afc080e7          	jalr	-1284(ra) # 800049a8 <__printf>
    80005eb4:	01013403          	ld	s0,16(sp)
    80005eb8:	01813083          	ld	ra,24(sp)
    80005ebc:	00048513          	mv	a0,s1
    80005ec0:	00813483          	ld	s1,8(sp)
    80005ec4:	02010113          	addi	sp,sp,32
    80005ec8:	ffffe317          	auipc	t1,0xffffe
    80005ecc:	6d430067          	jr	1748(t1) # 8000459c <plic_complete>
    80005ed0:	fffff097          	auipc	ra,0xfffff
    80005ed4:	3e0080e7          	jalr	992(ra) # 800052b0 <uartintr>
    80005ed8:	fddff06f          	j	80005eb4 <console_handler+0x74>
    80005edc:	00000517          	auipc	a0,0x0
    80005ee0:	48450513          	addi	a0,a0,1156 # 80006360 <digits+0x78>
    80005ee4:	fffff097          	auipc	ra,0xfffff
    80005ee8:	a68080e7          	jalr	-1432(ra) # 8000494c <panic>
	...
