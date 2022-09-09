
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	d0013103          	ld	sp,-768(sp) # 80006d00 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	73c030ef          	jal	ra,80003758 <start>

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
    800011a4:	518000ef          	jal	ra,800016bc <_ZN5RiscV20handleSupervisorTrapEv>

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

0000000080001440 <_Z41__static_initialization_and_destruction_0ii>:

bool Queue::isEmpty() {
    if(queue.listEmpty()==true){
        return true;
    }else{return false;}
}
    80001440:	ff010113          	addi	sp,sp,-16
    80001444:	00813423          	sd	s0,8(sp)
    80001448:	01010413          	addi	s0,sp,16
    8000144c:	00100793          	li	a5,1
    80001450:	00f50863          	beq	a0,a5,80001460 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001454:	00813403          	ld	s0,8(sp)
    80001458:	01010113          	addi	sp,sp,16
    8000145c:	00008067          	ret
    80001460:	000107b7          	lui	a5,0x10
    80001464:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001468:	fef596e3          	bne	a1,a5,80001454 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    8000146c:	00006797          	auipc	a5,0x6
    80001470:	92478793          	addi	a5,a5,-1756 # 80006d90 <_ZN5Queue5queueE>
    80001474:	0007b023          	sd	zero,0(a5)
    80001478:	0007b423          	sd	zero,8(a5)
    8000147c:	fd9ff06f          	j	80001454 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001480 <_ZN5Queue3putEP3TCB>:
void Queue::put(TCB *thread) {
    80001480:	ff010113          	addi	sp,sp,-16
    80001484:	00813423          	sd	s0,8(sp)
    80001488:	01010413          	addi	s0,sp,16

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000148c:	00006797          	auipc	a5,0x6
    80001490:	88c7b783          	ld	a5,-1908(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001494:	0007b783          	ld	a5,0(a5)
    80001498:	0c078a63          	beqz	a5,8000156c <_ZN5Queue3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    8000149c:	00006717          	auipc	a4,0x6
    800014a0:	87c73703          	ld	a4,-1924(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800014a4:	00073683          	ld	a3,0(a4)
    800014a8:	0006b683          	ld	a3,0(a3)
    800014ac:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    800014b0:	00073703          	ld	a4,0(a4)
    800014b4:	00873603          	ld	a2,8(a4)
    800014b8:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    800014bc:	0107b703          	ld	a4,16(a5)
    800014c0:	03f00593          	li	a1,63
    800014c4:	02e5f663          	bgeu	a1,a4,800014f0 <_ZN5Queue3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    800014c8:	fc070713          	addi	a4,a4,-64
    800014cc:	01800593          	li	a1,24
    800014d0:	02e5ec63          	bltu	a1,a4,80001508 <_ZN5Queue3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    800014d4:	02060263          	beqz	a2,800014f8 <_ZN5Queue3putEP3TCB+0x78>
    800014d8:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    800014dc:	0007b703          	ld	a4,0(a5)
    800014e0:	08070663          	beqz	a4,8000156c <_ZN5Queue3putEP3TCB+0xec>
    800014e4:	0087b683          	ld	a3,8(a5)
    800014e8:	00d73423          	sd	a3,8(a4)
                return cur;
    800014ec:	0800006f          	j	8000156c <_ZN5Queue3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800014f0:	00068793          	mv	a5,a3
    800014f4:	fa5ff06f          	j	80001498 <_ZN5Queue3putEP3TCB+0x18>
                else fmem_head = cur->next;
    800014f8:	00006717          	auipc	a4,0x6
    800014fc:	82073703          	ld	a4,-2016(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001500:	00d73023          	sd	a3,0(a4)
    80001504:	fd9ff06f          	j	800014dc <_ZN5Queue3putEP3TCB+0x5c>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001508:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    8000150c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001510:	0407b023          	sd	zero,64(a5)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001514:	0087b683          	ld	a3,8(a5)
    80001518:	08068063          	beqz	a3,80001598 <_ZN5Queue3putEP3TCB+0x118>
    8000151c:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001520:	0007b683          	ld	a3,0(a5)
    80001524:	00068463          	beqz	a3,8000152c <_ZN5Queue3putEP3TCB+0xac>
    80001528:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    8000152c:	0087b603          	ld	a2,8(a5)
    80001530:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001534:	0007b683          	ld	a3,0(a5)
    80001538:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    8000153c:	0107b783          	ld	a5,16(a5)
    80001540:	fc078793          	addi	a5,a5,-64
    80001544:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001548:	0c070693          	addi	a3,a4,192
    8000154c:	00005597          	auipc	a1,0x5
    80001550:	7cc5b583          	ld	a1,1996(a1) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001554:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001558:	00073583          	ld	a1,0(a4)
    8000155c:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001560:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001564:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001568:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    8000156c:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80001570:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001574:	00006717          	auipc	a4,0x6
    80001578:	82473703          	ld	a4,-2012(a4) # 80006d98 <_ZN5Queue5queueE+0x8>
    8000157c:	02070863          	beqz	a4,800015ac <_ZN5Queue3putEP3TCB+0x12c>
            tail->next=elem;
    80001580:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001584:	00006717          	auipc	a4,0x6
    80001588:	80f73a23          	sd	a5,-2028(a4) # 80006d98 <_ZN5Queue5queueE+0x8>
}
    8000158c:	00813403          	ld	s0,8(sp)
    80001590:	01010113          	addi	sp,sp,16
    80001594:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001598:	0c070693          	addi	a3,a4,192
    8000159c:	00005617          	auipc	a2,0x5
    800015a0:	77c63603          	ld	a2,1916(a2) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015a4:	00d63023          	sd	a3,0(a2)
    800015a8:	f79ff06f          	j	80001520 <_ZN5Queue3putEP3TCB+0xa0>
        }else{
            head=tail=elem;
    800015ac:	00005717          	auipc	a4,0x5
    800015b0:	7e470713          	addi	a4,a4,2020 # 80006d90 <_ZN5Queue5queueE>
    800015b4:	00f73423          	sd	a5,8(a4)
    800015b8:	00f73023          	sd	a5,0(a4)
    800015bc:	fd1ff06f          	j	8000158c <_ZN5Queue3putEP3TCB+0x10c>

00000000800015c0 <_ZN5Queue3getEv>:
    {
    800015c0:	fe010113          	addi	sp,sp,-32
    800015c4:	00113c23          	sd	ra,24(sp)
    800015c8:	00813823          	sd	s0,16(sp)
    800015cc:	00913423          	sd	s1,8(sp)
    800015d0:	02010413          	addi	s0,sp,32
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    800015d4:	00005517          	auipc	a0,0x5
    800015d8:	7bc53503          	ld	a0,1980(a0) # 80006d90 <_ZN5Queue5queueE>
    800015dc:	04050263          	beqz	a0,80001620 <_ZN5Queue3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    800015e0:	00853783          	ld	a5,8(a0)
    800015e4:	00005717          	auipc	a4,0x5
    800015e8:	7af73623          	sd	a5,1964(a4) # 80006d90 <_ZN5Queue5queueE>
        if(!head) {
    800015ec:	02078463          	beqz	a5,80001614 <_ZN5Queue3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    800015f0:	00053483          	ld	s1,0(a0)
        delete elem;
    800015f4:	00002097          	auipc	ra,0x2
    800015f8:	bac080e7          	jalr	-1108(ra) # 800031a0 <_ZdlPv>
    }
    800015fc:	00048513          	mv	a0,s1
    80001600:	01813083          	ld	ra,24(sp)
    80001604:	01013403          	ld	s0,16(sp)
    80001608:	00813483          	ld	s1,8(sp)
    8000160c:	02010113          	addi	sp,sp,32
    80001610:	00008067          	ret
            tail = 0;
    80001614:	00005797          	auipc	a5,0x5
    80001618:	7807b223          	sd	zero,1924(a5) # 80006d98 <_ZN5Queue5queueE+0x8>
    8000161c:	fd5ff06f          	j	800015f0 <_ZN5Queue3getEv+0x30>
        if (!head) {return 0;}
    80001620:	00050493          	mv	s1,a0
        return thread;
    80001624:	fd9ff06f          	j	800015fc <_ZN5Queue3getEv+0x3c>

0000000080001628 <_ZN5Queue7isEmptyEv>:
bool Queue::isEmpty() {
    80001628:	ff010113          	addi	sp,sp,-16
    8000162c:	00813423          	sd	s0,8(sp)
    80001630:	01010413          	addi	s0,sp,16
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    80001634:	00005797          	auipc	a5,0x5
    80001638:	75c7b783          	ld	a5,1884(a5) # 80006d90 <_ZN5Queue5queueE>
    8000163c:	00078e63          	beqz	a5,80001658 <_ZN5Queue7isEmptyEv+0x30>
        return head->data;
    80001640:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    80001644:	00078e63          	beqz	a5,80001660 <_ZN5Queue7isEmptyEv+0x38>
    }else{return false;}
    80001648:	00000513          	li	a0,0
}
    8000164c:	00813403          	ld	s0,8(sp)
    80001650:	01010113          	addi	sp,sp,16
    80001654:	00008067          	ret
        return true;
    80001658:	00100513          	li	a0,1
    8000165c:	ff1ff06f          	j	8000164c <_ZN5Queue7isEmptyEv+0x24>
    80001660:	00100513          	li	a0,1
    80001664:	fe9ff06f          	j	8000164c <_ZN5Queue7isEmptyEv+0x24>

0000000080001668 <_GLOBAL__sub_I__ZN5Queue5queueE>:
}
    80001668:	ff010113          	addi	sp,sp,-16
    8000166c:	00113423          	sd	ra,8(sp)
    80001670:	00813023          	sd	s0,0(sp)
    80001674:	01010413          	addi	s0,sp,16
    80001678:	000105b7          	lui	a1,0x10
    8000167c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001680:	00100513          	li	a0,1
    80001684:	00000097          	auipc	ra,0x0
    80001688:	dbc080e7          	jalr	-580(ra) # 80001440 <_Z41__static_initialization_and_destruction_0ii>
    8000168c:	00813083          	ld	ra,8(sp)
    80001690:	00013403          	ld	s0,0(sp)
    80001694:	01010113          	addi	sp,sp,16
    80001698:	00008067          	ret

000000008000169c <_ZN5RiscV10popSppSpieEv>:
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"


void RiscV::popSppSpie() {
    8000169c:	ff010113          	addi	sp,sp,-16
    800016a0:	00813423          	sd	s0,8(sp)
    800016a4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800016a8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800016ac:	10200073          	sret
}
    800016b0:	00813403          	ld	s0,8(sp)
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret

00000000800016bc <_ZN5RiscV20handleSupervisorTrapEv>:

void RiscV::handleSupervisorTrap() {
    800016bc:	fb010113          	addi	sp,sp,-80
    800016c0:	04113423          	sd	ra,72(sp)
    800016c4:	04813023          	sd	s0,64(sp)
    800016c8:	05010413          	addi	s0,sp,80
    volatile uint64 size;
    volatile uint64 handle;
    volatile uint64 start_routine;
    volatile uint64 arg;
    volatile uint64 ptr;
    __asm__ volatile("sd a3, %0" : "=m"(arg));
    800016cc:	fcd43823          	sd	a3,-48(s0)
    __asm__ volatile("sd a2, %0" : "=m"(start_routine));
    800016d0:	fcc43c23          	sd	a2,-40(s0)
    __asm__ volatile("sd a1, %0" : "=m"(handle));
    800016d4:	feb43023          	sd	a1,-32(s0)
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    800016d8:	142027f3          	csrr	a5,scause
    800016dc:	faf43823          	sd	a5,-80(s0)
    return scause;
    800016e0:	fb043703          	ld	a4,-80(s0)

}

inline uint64 RiscV::r_sepc(){
    uint64  sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800016e4:	141027f3          	csrr	a5,sepc
    //__asm__ volatile("sd a1, %0" : "=m"(size));
    //__asm__ volatile("sd a1, %0" : "=m"(ptr));
    uint64 sysCallNr;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    800016e8:	00478793          	addi	a5,a5,4
    800016ec:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64 sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    800016f0:	100027f3          	csrr	a5,sstatus
    volatile uint64 sstatus = r_sstatus();
    800016f4:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    800016f8:	00050793          	mv	a5,a0
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
    800016fc:	ff870613          	addi	a2,a4,-8
    80001700:	00100693          	li	a3,1
    80001704:	02c6f863          	bgeu	a3,a2,80001734 <_ZN5RiscV20handleSupervisorTrapEv+0x78>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80001708:	fff00793          	li	a5,-1
    8000170c:	03f79793          	slli	a5,a5,0x3f
    80001710:	00178793          	addi	a5,a5,1
    80001714:	3af70c63          	beq	a4,a5,80001acc <_ZN5RiscV20handleSupervisorTrapEv+0x410>
//              TCB::dispatch();
//              w_sstatus(sstatus);
//              w_sepc(sepc);
//          }
        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    80001718:	fff00793          	li	a5,-1
    8000171c:	03f79793          	slli	a5,a5,0x3f
    80001720:	00978793          	addi	a5,a5,9
    80001724:	18f71663          	bne	a4,a5,800018b0 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
        //supervisor external interrupt (console)
        console_handler();
    80001728:	00004097          	auipc	ra,0x4
    8000172c:	168080e7          	jalr	360(ra) # 80005890 <console_handler>
        //print (scause)
        //print sepc
        //print sval

    }
    80001730:	1800006f          	j	800018b0 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
        if (sysCallNr == 0x01UL) {
    80001734:	00100713          	li	a4,1
    80001738:	06e78463          	beq	a5,a4,800017a0 <_ZN5RiscV20handleSupervisorTrapEv+0xe4>
        } else if (sysCallNr == 0x02UL) {
    8000173c:	00200713          	li	a4,2
    80001740:	18e78a63          	beq	a5,a4,800018d4 <_ZN5RiscV20handleSupervisorTrapEv+0x218>
        }else if(sysCallNr == 0x11UL){
    80001744:	01100713          	li	a4,17
    80001748:	2ae78663          	beq	a5,a4,800019f4 <_ZN5RiscV20handleSupervisorTrapEv+0x338>
        }else if(sysCallNr == 0x12UL){
    8000174c:	01200713          	li	a4,18
    80001750:	2ce78263          	beq	a5,a4,80001a14 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
        }else if(sysCallNr == 0x13UL){
    80001754:	01300713          	li	a4,19
    80001758:	2ee78663          	beq	a5,a4,80001a44 <_ZN5RiscV20handleSupervisorTrapEv+0x388>
        }else if(sysCallNr == 0x21UL){
    8000175c:	02100713          	li	a4,33
    80001760:	2ee78863          	beq	a5,a4,80001a50 <_ZN5RiscV20handleSupervisorTrapEv+0x394>
        }else if(sysCallNr == 0x22UL){
    80001764:	02200713          	li	a4,34
    80001768:	30e78463          	beq	a5,a4,80001a70 <_ZN5RiscV20handleSupervisorTrapEv+0x3b4>
        }else if(sysCallNr == 0x23UL){
    8000176c:	02300713          	li	a4,35
    80001770:	30e78c63          	beq	a5,a4,80001a88 <_ZN5RiscV20handleSupervisorTrapEv+0x3cc>
        }else if(sysCallNr == 0x24UL){
    80001774:	02400713          	li	a4,36
    80001778:	32e78463          	beq	a5,a4,80001aa0 <_ZN5RiscV20handleSupervisorTrapEv+0x3e4>
       }else if(sysCallNr==0x41UL){
    8000177c:	04100713          	li	a4,65
    80001780:	32e78c63          	beq	a5,a4,80001ab8 <_ZN5RiscV20handleSupervisorTrapEv+0x3fc>
        }else if(sysCallNr==0x42UL){
    80001784:	04200713          	li	a4,66
    80001788:	10e79c63          	bne	a5,a4,800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1e4>
            __putc((char)handle);
    8000178c:	fe043503          	ld	a0,-32(s0)
    80001790:	0ff57513          	andi	a0,a0,255
    80001794:	00004097          	auipc	ra,0x4
    80001798:	088080e7          	jalr	136(ra) # 8000581c <__putc>
    8000179c:	1040006f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1e4>
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
    800017a0:	00058793          	mv	a5,a1
    800017a4:	fef43423          	sd	a5,-24(s0)
            void* pointer=MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks((size_t)size)); //gore imas da pretvoris u bytes to blocks
    800017a8:	fe843783          	ld	a5,-24(s0)

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800017ac:	05778793          	addi	a5,a5,87
    800017b0:	0067d793          	srli	a5,a5,0x6
    800017b4:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    800017b8:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800017bc:	00005717          	auipc	a4,0x5
    800017c0:	55c73703          	ld	a4,1372(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017c4:	00073703          	ld	a4,0(a4)
    800017c8:	0c070863          	beqz	a4,80001898 <_ZN5RiscV20handleSupervisorTrapEv+0x1dc>
            cur->next=fmem_head->next;
    800017cc:	00005697          	auipc	a3,0x5
    800017d0:	54c6b683          	ld	a3,1356(a3) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017d4:	0006b603          	ld	a2,0(a3)
    800017d8:	00063603          	ld	a2,0(a2)
    800017dc:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    800017e0:	0006b683          	ld	a3,0(a3)
    800017e4:	0086b583          	ld	a1,8(a3)
    800017e8:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    800017ec:	01073683          	ld	a3,16(a4)
    800017f0:	02f6e663          	bltu	a3,a5,8000181c <_ZN5RiscV20handleSupervisorTrapEv+0x160>
            if (cur->size-size<=sizeof(FreeMem)){
    800017f4:	40f686b3          	sub	a3,a3,a5
    800017f8:	01800513          	li	a0,24
    800017fc:	02d56c63          	bltu	a0,a3,80001834 <_ZN5RiscV20handleSupervisorTrapEv+0x178>
                if (cur->prev) cur->prev->next = cur->next;
    80001800:	02058263          	beqz	a1,80001824 <_ZN5RiscV20handleSupervisorTrapEv+0x168>
    80001804:	00c5b023          	sd	a2,0(a1)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80001808:	00073783          	ld	a5,0(a4)
    8000180c:	08078663          	beqz	a5,80001898 <_ZN5RiscV20handleSupervisorTrapEv+0x1dc>
    80001810:	00873683          	ld	a3,8(a4)
    80001814:	00d7b423          	sd	a3,8(a5)
                return cur;
    80001818:	0800006f          	j	80001898 <_ZN5RiscV20handleSupervisorTrapEv+0x1dc>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000181c:	00060713          	mv	a4,a2
    80001820:	fa9ff06f          	j	800017c8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
                else fmem_head = cur->next;
    80001824:	00005797          	auipc	a5,0x5
    80001828:	4f47b783          	ld	a5,1268(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000182c:	00c7b023          	sd	a2,0(a5)
    80001830:	fd9ff06f          	j	80001808 <_ZN5RiscV20handleSupervisorTrapEv+0x14c>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001834:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    80001838:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    8000183c:	0006b023          	sd	zero,0(a3)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001840:	00873603          	ld	a2,8(a4)
    80001844:	06060e63          	beqz	a2,800018c0 <_ZN5RiscV20handleSupervisorTrapEv+0x204>
    80001848:	00d63023          	sd	a3,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    8000184c:	00073603          	ld	a2,0(a4)
    80001850:	00060463          	beqz	a2,80001858 <_ZN5RiscV20handleSupervisorTrapEv+0x19c>
    80001854:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    80001858:	00873603          	ld	a2,8(a4)
    8000185c:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    80001860:	00073583          	ld	a1,0(a4)
    80001864:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    80001868:	01073703          	ld	a4,16(a4)
    8000186c:	40f707b3          	sub	a5,a4,a5
    80001870:	00f6b823          	sd	a5,16(a3)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001874:	0c068713          	addi	a4,a3,192
    80001878:	00005597          	auipc	a1,0x5
    8000187c:	4a05b583          	ld	a1,1184(a1) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001880:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    80001884:	0006b583          	ld	a1,0(a3)
    80001888:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    8000188c:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    80001890:	0cf6b823          	sd	a5,208(a3)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001894:	00068713          	mv	a4,a3
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
    80001898:	00070593          	mv	a1,a4
            __asm__ volatile("sd a1, 88(s0)");
    8000189c:	04b43c23          	sd	a1,88(s0)
        w_sstatus(sstatus);
    800018a0:	fb843783          	ld	a5,-72(s0)
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 volatile sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    800018a4:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800018a8:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    800018ac:	14179073          	csrw	sepc,a5
    800018b0:	04813083          	ld	ra,72(sp)
    800018b4:	04013403          	ld	s0,64(sp)
    800018b8:	05010113          	addi	sp,sp,80
    800018bc:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800018c0:	0c068613          	addi	a2,a3,192
    800018c4:	00005597          	auipc	a1,0x5
    800018c8:	4545b583          	ld	a1,1108(a1) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018cc:	00c5b023          	sd	a2,0(a1)
    800018d0:	f7dff06f          	j	8000184c <_ZN5RiscV20handleSupervisorTrapEv+0x190>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    800018d4:	00058793          	mv	a5,a1
    800018d8:	fcf43423          	sd	a5,-56(s0)
            int ret=MemoryAllocation::mem_free((void*)ptr);
    800018dc:	fc843703          	ld	a4,-56(s0)
        if(!fmem_head || ptr < (char*)fmem_head)
    800018e0:	00005797          	auipc	a5,0x5
    800018e4:	4387b783          	ld	a5,1080(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018e8:	0007b783          	ld	a5,0(a5)
    800018ec:	00078e63          	beqz	a5,80001908 <_ZN5RiscV20handleSupervisorTrapEv+0x24c>
    800018f0:	02f76063          	bltu	a4,a5,80001910 <_ZN5RiscV20handleSupervisorTrapEv+0x254>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800018f4:	00078693          	mv	a3,a5
    800018f8:	0007b783          	ld	a5,0(a5)
    800018fc:	00f70c63          	beq	a4,a5,80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x258>
    80001900:	fee7eae3          	bltu	a5,a4,800018f4 <_ZN5RiscV20handleSupervisorTrapEv+0x238>
    80001904:	0100006f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x258>
            cur=nullptr;
    80001908:	00078693          	mv	a3,a5
    8000190c:	0080006f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x258>
    80001910:	00000693          	li	a3,0
                newSeg->next=nullptr;
    80001914:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001918:	04000793          	li	a5,64
    8000191c:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    80001920:	00d73423          	sd	a3,8(a4)
                if(cur) {
    80001924:	06068263          	beqz	a3,80001988 <_ZN5RiscV20handleSupervisorTrapEv+0x2cc>
                    newSeg->next = cur->next;
    80001928:	0006b783          	ld	a5,0(a3)
    8000192c:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    80001930:	00073783          	ld	a5,0(a4)
    80001934:	00078463          	beqz	a5,8000193c <_ZN5RiscV20handleSupervisorTrapEv+0x280>
                    newSeg->next->prev=newSeg;
    80001938:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    8000193c:	06068063          	beqz	a3,8000199c <_ZN5RiscV20handleSupervisorTrapEv+0x2e0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001940:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    80001944:	00070c63          	beqz	a4,8000195c <_ZN5RiscV20handleSupervisorTrapEv+0x2a0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001948:	00073783          	ld	a5,0(a4)
    8000194c:	00078863          	beqz	a5,8000195c <_ZN5RiscV20handleSupervisorTrapEv+0x2a0>
    80001950:	01073603          	ld	a2,16(a4)
    80001954:	00c705b3          	add	a1,a4,a2
    80001958:	04b78a63          	beq	a5,a1,800019ac <_ZN5RiscV20handleSupervisorTrapEv+0x2f0>
        if (!curr) return;
    8000195c:	00068c63          	beqz	a3,80001974 <_ZN5RiscV20handleSupervisorTrapEv+0x2b8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001960:	0006b783          	ld	a5,0(a3)
    80001964:	00078863          	beqz	a5,80001974 <_ZN5RiscV20handleSupervisorTrapEv+0x2b8>
    80001968:	0106b603          	ld	a2,16(a3)
    8000196c:	00c685b3          	add	a1,a3,a2
    80001970:	04b78e63          	beq	a5,a1,800019cc <_ZN5RiscV20handleSupervisorTrapEv+0x310>
            if(newSeg==nullptr){
    80001974:	06070c63          	beqz	a4,800019ec <_ZN5RiscV20handleSupervisorTrapEv+0x330>
            }else{return 0;}
    80001978:	00000793          	li	a5,0
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
    8000197c:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
    80001980:	04b43c23          	sd	a1,88(s0)
    80001984:	f1dff06f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1e4>
                    newSeg->next = fmem_head;
    80001988:	00005797          	auipc	a5,0x5
    8000198c:	3907b783          	ld	a5,912(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001990:	0007b783          	ld	a5,0(a5)
    80001994:	00f73023          	sd	a5,0(a4)
    80001998:	f99ff06f          	j	80001930 <_ZN5RiscV20handleSupervisorTrapEv+0x274>
                    fmem_head = newSeg;
    8000199c:	00005797          	auipc	a5,0x5
    800019a0:	37c7b783          	ld	a5,892(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800019a4:	00e7b023          	sd	a4,0(a5)
    800019a8:	f9dff06f          	j	80001944 <_ZN5RiscV20handleSupervisorTrapEv+0x288>
            curr->size += curr->next->size;
    800019ac:	0107b583          	ld	a1,16(a5)
    800019b0:	00b60633          	add	a2,a2,a1
    800019b4:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    800019b8:	0007b783          	ld	a5,0(a5)
    800019bc:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    800019c0:	f8078ee3          	beqz	a5,8000195c <_ZN5RiscV20handleSupervisorTrapEv+0x2a0>
    800019c4:	00e7b423          	sd	a4,8(a5)
    800019c8:	f95ff06f          	j	8000195c <_ZN5RiscV20handleSupervisorTrapEv+0x2a0>
            curr->size += curr->next->size;
    800019cc:	0107b583          	ld	a1,16(a5)
    800019d0:	00b60633          	add	a2,a2,a1
    800019d4:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    800019d8:	0007b783          	ld	a5,0(a5)
    800019dc:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    800019e0:	f8078ae3          	beqz	a5,80001974 <_ZN5RiscV20handleSupervisorTrapEv+0x2b8>
    800019e4:	00d7b423          	sd	a3,8(a5)
    800019e8:	f8dff06f          	j	80001974 <_ZN5RiscV20handleSupervisorTrapEv+0x2b8>
                return -1;
    800019ec:	fff00793          	li	a5,-1
    800019f0:	f8dff06f          	j	8000197c <_ZN5RiscV20handleSupervisorTrapEv+0x2c0>
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg);
    800019f4:	fd843503          	ld	a0,-40(s0)
    800019f8:	fe043583          	ld	a1,-32(s0)
    800019fc:	fd043603          	ld	a2,-48(s0)
    80001a00:	00001097          	auipc	ra,0x1
    80001a04:	1a8080e7          	jalr	424(ra) # 80002ba8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001a08:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001a0c:	04b43c23          	sd	a1,88(s0)
    80001a10:	e91ff06f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1e4>
    static int createThread(Body body, TCB** handle, void* arguments);

    static void thread_dispatch(){dispatch();}

    static int thread_exit(){
        running->setFinished(true);
    80001a14:	00100593          	li	a1,1
    80001a18:	00005797          	auipc	a5,0x5
    80001a1c:	3087b783          	ld	a5,776(a5) # 80006d20 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a20:	0007b503          	ld	a0,0(a5)
    80001a24:	00001097          	auipc	ra,0x1
    80001a28:	168080e7          	jalr	360(ra) # 80002b8c <_ZN3TCB11setFinishedEb>
        dispatch();
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	4cc080e7          	jalr	1228(ra) # 80002ef8 <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    80001a34:	00000793          	li	a5,0
    80001a38:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    80001a3c:	04b43c23          	sd	a1,88(s0)
    80001a40:	e61ff06f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1e4>
    static void thread_dispatch(){dispatch();}
    80001a44:	00001097          	auipc	ra,0x1
    80001a48:	4b4080e7          	jalr	1204(ra) # 80002ef8 <_ZN3TCB8dispatchEv>
    80001a4c:	e55ff06f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1e4>
            int retval = semaphore::semOpen((sem_t*)handle, (unsigned)start_routine);
    80001a50:	fe043503          	ld	a0,-32(s0)
    80001a54:	fd843583          	ld	a1,-40(s0)
    80001a58:	0005859b          	sext.w	a1,a1
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	280080e7          	jalr	640(ra) # 80001cdc <_ZN9semaphore7semOpenEPPS_j>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001a64:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001a68:	04b43c23          	sd	a1,88(s0)
    80001a6c:	e35ff06f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1e4>
            int retval = semaphore::semClose((sem_t)handle);
    80001a70:	fe043503          	ld	a0,-32(s0)
    80001a74:	00000097          	auipc	ra,0x0
    80001a78:	488080e7          	jalr	1160(ra) # 80001efc <_ZN9semaphore8semCloseEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001a7c:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001a80:	04b43c23          	sd	a1,88(s0)
    80001a84:	e1dff06f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1e4>
            int retval = semaphore::semWait((sem_t)handle);
    80001a88:	fe043503          	ld	a0,-32(s0)
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	5bc080e7          	jalr	1468(ra) # 80002048 <_ZN9semaphore7semWaitEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001a94:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001a98:	04b43c23          	sd	a1,88(s0)
    80001a9c:	e05ff06f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1e4>
            int retval = semaphore::semSignal((sem_t)handle);
    80001aa0:	fe043503          	ld	a0,-32(s0)
    80001aa4:	00000097          	auipc	ra,0x0
    80001aa8:	5f8080e7          	jalr	1528(ra) # 8000209c <_ZN9semaphore9semSignalEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001aac:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001ab0:	04b43c23          	sd	a1,88(s0)
    80001ab4:	dedff06f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1e4>
            char retval = __getc();
    80001ab8:	00004097          	auipc	ra,0x4
    80001abc:	da0080e7          	jalr	-608(ra) # 80005858 <__getc>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001ac0:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001ac4:	04b43c23          	sd	a1,88(s0)
    80001ac8:	dd9ff06f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1e4>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001acc:	00200793          	li	a5,2
    80001ad0:	1447b073          	csrc	sip,a5
}
    80001ad4:	dddff06f          	j	800018b0 <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>

0000000080001ad8 <_ZN9semaphore5blockEv>:
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"

void semaphore::block() {
    80001ad8:	fe010113          	addi	sp,sp,-32
    80001adc:	00113c23          	sd	ra,24(sp)
    80001ae0:	00813823          	sd	s0,16(sp)
    80001ae4:	00913423          	sd	s1,8(sp)
    80001ae8:	01213023          	sd	s2,0(sp)
    80001aec:	02010413          	addi	s0,sp,32
    80001af0:	00050913          	mv	s2,a0
        //setjmp je linija old=running;
        TCB *old = TCB::running;
    80001af4:	00005797          	auipc	a5,0x5
    80001af8:	22c7b783          	ld	a5,556(a5) # 80006d20 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001afc:	0007b483          	ld	s1,0(a5)
        old->semBlocked=this;
    80001b00:	02a4b823          	sd	a0,48(s1)
        if (!old->isFinished()) {
    80001b04:	00048513          	mv	a0,s1
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	068080e7          	jalr	104(ra) # 80002b70 <_ZNK3TCB10isFinishedEv>
    80001b10:	04050063          	beqz	a0,80001b50 <_ZN9semaphore5blockEv+0x78>
            blocked->addLast(old);
        }
        TCB::running = Scheduler::get();
    80001b14:	00001097          	auipc	ra,0x1
    80001b18:	dd8080e7          	jalr	-552(ra) # 800028ec <_ZN9Scheduler3getEv>
    80001b1c:	00005797          	auipc	a5,0x5
    80001b20:	2047b783          	ld	a5,516(a5) # 80006d20 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b24:	00a7b023          	sd	a0,0(a5)


        TCB::contextSwitch(&old->context, &TCB::running->context);//TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
    80001b28:	01050593          	addi	a1,a0,16
    80001b2c:	01048513          	addi	a0,s1,16
    80001b30:	fffff097          	auipc	ra,0xfffff
    80001b34:	700080e7          	jalr	1792(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
        //marinko kaze da je dobar ovaj block

        //TCB::running->semBlocked=this;
        //this->blocked->put(TCB::running);
        //TCB::dispatch();
}
    80001b38:	01813083          	ld	ra,24(sp)
    80001b3c:	01013403          	ld	s0,16(sp)
    80001b40:	00813483          	ld	s1,8(sp)
    80001b44:	00013903          	ld	s2,0(sp)
    80001b48:	02010113          	addi	sp,sp,32
    80001b4c:	00008067          	ret
            blocked->addLast(old);
    80001b50:	00893583          	ld	a1,8(s2)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001b54:	00005797          	auipc	a5,0x5
    80001b58:	1c47b783          	ld	a5,452(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b5c:	0007b783          	ld	a5,0(a5)
    80001b60:	0c078a63          	beqz	a5,80001c34 <_ZN9semaphore5blockEv+0x15c>
            cur->next=fmem_head->next;
    80001b64:	00005717          	auipc	a4,0x5
    80001b68:	1b473703          	ld	a4,436(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b6c:	00073683          	ld	a3,0(a4)
    80001b70:	0006b683          	ld	a3,0(a3)
    80001b74:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001b78:	00073703          	ld	a4,0(a4)
    80001b7c:	00873603          	ld	a2,8(a4)
    80001b80:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001b84:	0107b703          	ld	a4,16(a5)
    80001b88:	03f00513          	li	a0,63
    80001b8c:	02e57663          	bgeu	a0,a4,80001bb8 <_ZN9semaphore5blockEv+0xe0>
            if (cur->size-size<=sizeof(FreeMem)){
    80001b90:	fc070713          	addi	a4,a4,-64
    80001b94:	01800513          	li	a0,24
    80001b98:	02e56c63          	bltu	a0,a4,80001bd0 <_ZN9semaphore5blockEv+0xf8>
                if (cur->prev) cur->prev->next = cur->next;
    80001b9c:	02060263          	beqz	a2,80001bc0 <_ZN9semaphore5blockEv+0xe8>
    80001ba0:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001ba4:	0007b703          	ld	a4,0(a5)
    80001ba8:	08070663          	beqz	a4,80001c34 <_ZN9semaphore5blockEv+0x15c>
    80001bac:	0087b683          	ld	a3,8(a5)
    80001bb0:	00d73423          	sd	a3,8(a4)
                return cur;
    80001bb4:	0800006f          	j	80001c34 <_ZN9semaphore5blockEv+0x15c>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001bb8:	00068793          	mv	a5,a3
    80001bbc:	fa5ff06f          	j	80001b60 <_ZN9semaphore5blockEv+0x88>
                else fmem_head = cur->next;
    80001bc0:	00005717          	auipc	a4,0x5
    80001bc4:	15873703          	ld	a4,344(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001bc8:	00d73023          	sd	a3,0(a4)
    80001bcc:	fd9ff06f          	j	80001ba4 <_ZN9semaphore5blockEv+0xcc>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001bd0:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001bd4:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001bd8:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001bdc:	0087b683          	ld	a3,8(a5)
    80001be0:	06068863          	beqz	a3,80001c50 <_ZN9semaphore5blockEv+0x178>
    80001be4:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001be8:	0007b683          	ld	a3,0(a5)
    80001bec:	00068463          	beqz	a3,80001bf4 <_ZN9semaphore5blockEv+0x11c>
    80001bf0:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001bf4:	0087b603          	ld	a2,8(a5)
    80001bf8:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001bfc:	0007b683          	ld	a3,0(a5)
    80001c00:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001c04:	0107b783          	ld	a5,16(a5)
    80001c08:	fc078793          	addi	a5,a5,-64
    80001c0c:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001c10:	0c070693          	addi	a3,a4,192
    80001c14:	00005517          	auipc	a0,0x5
    80001c18:	10453503          	ld	a0,260(a0) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c1c:	00d53023          	sd	a3,0(a0)
                fmem_head->next=newfrgm->next;
    80001c20:	00073503          	ld	a0,0(a4)
    80001c24:	0ca73023          	sd	a0,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001c28:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001c2c:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001c30:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    80001c34:	0097b023          	sd	s1,0(a5)
        elem->next=nullptr;
    80001c38:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001c3c:	0085b703          	ld	a4,8(a1)
    80001c40:	02070263          	beqz	a4,80001c64 <_ZN9semaphore5blockEv+0x18c>
            tail->next=elem;
    80001c44:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001c48:	00f5b423          	sd	a5,8(a1)
    80001c4c:	ec9ff06f          	j	80001b14 <_ZN9semaphore5blockEv+0x3c>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001c50:	0c070693          	addi	a3,a4,192
    80001c54:	00005617          	auipc	a2,0x5
    80001c58:	0c463603          	ld	a2,196(a2) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c5c:	00d63023          	sd	a3,0(a2)
    80001c60:	f89ff06f          	j	80001be8 <_ZN9semaphore5blockEv+0x110>
        }else{
            head=tail=elem;
    80001c64:	00f5b423          	sd	a5,8(a1)
    80001c68:	00f5b023          	sd	a5,0(a1)
    80001c6c:	ea9ff06f          	j	80001b14 <_ZN9semaphore5blockEv+0x3c>

0000000080001c70 <_ZN9semaphore7unblockEv>:

void semaphore::unblock() {
    80001c70:	fe010113          	addi	sp,sp,-32
    80001c74:	00113c23          	sd	ra,24(sp)
    80001c78:	00813823          	sd	s0,16(sp)
    80001c7c:	00913423          	sd	s1,8(sp)
    80001c80:	02010413          	addi	s0,sp,32
    TCB* t = blocked->removeFirst();
    80001c84:	00853783          	ld	a5,8(a0)
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001c88:	0007b503          	ld	a0,0(a5)
    80001c8c:	04050463          	beqz	a0,80001cd4 <_ZN9semaphore7unblockEv+0x64>
        Elem *elem = head;
        head = head->next;
    80001c90:	00853703          	ld	a4,8(a0)
    80001c94:	00e7b023          	sd	a4,0(a5)
        if(!head) {
    80001c98:	02070a63          	beqz	a4,80001ccc <_ZN9semaphore7unblockEv+0x5c>
            tail = 0;
        }
        T* ret = elem->data;
    80001c9c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001ca0:	00001097          	auipc	ra,0x1
    80001ca4:	500080e7          	jalr	1280(ra) # 800031a0 <_ZdlPv>
    t->semBlocked=nullptr;
    80001ca8:	0204b823          	sd	zero,48(s1)
    Scheduler::put(t);
    80001cac:	00048513          	mv	a0,s1
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	ca4080e7          	jalr	-860(ra) # 80002954 <_ZN9Scheduler3putEP3TCB>
}
    80001cb8:	01813083          	ld	ra,24(sp)
    80001cbc:	01013403          	ld	s0,16(sp)
    80001cc0:	00813483          	ld	s1,8(sp)
    80001cc4:	02010113          	addi	sp,sp,32
    80001cc8:	00008067          	ret
            tail = 0;
    80001ccc:	0007b423          	sd	zero,8(a5)
    80001cd0:	fcdff06f          	j	80001c9c <_ZN9semaphore7unblockEv+0x2c>
        if (!head) {return 0;}
    80001cd4:	00050493          	mv	s1,a0
    80001cd8:	fd1ff06f          	j	80001ca8 <_ZN9semaphore7unblockEv+0x38>

0000000080001cdc <_ZN9semaphore7semOpenEPPS_j>:

int semaphore::semOpen(semaphore **handle, unsigned init) {
    80001cdc:	ff010113          	addi	sp,sp,-16
    80001ce0:	00813423          	sd	s0,8(sp)
    80001ce4:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001ce8:	00005797          	auipc	a5,0x5
    80001cec:	0307b783          	ld	a5,48(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cf0:	0007b783          	ld	a5,0(a5)
    80001cf4:	0c078a63          	beqz	a5,80001dc8 <_ZN9semaphore7semOpenEPPS_j+0xec>
            cur->next=fmem_head->next;
    80001cf8:	00005717          	auipc	a4,0x5
    80001cfc:	02073703          	ld	a4,32(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d00:	00073683          	ld	a3,0(a4)
    80001d04:	0006b683          	ld	a3,0(a3)
    80001d08:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001d0c:	00073703          	ld	a4,0(a4)
    80001d10:	00873603          	ld	a2,8(a4)
    80001d14:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001d18:	0107b703          	ld	a4,16(a5)
    80001d1c:	03f00813          	li	a6,63
    80001d20:	02e87663          	bgeu	a6,a4,80001d4c <_ZN9semaphore7semOpenEPPS_j+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001d24:	fc070713          	addi	a4,a4,-64
    80001d28:	01800813          	li	a6,24
    80001d2c:	02e86c63          	bltu	a6,a4,80001d64 <_ZN9semaphore7semOpenEPPS_j+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001d30:	02060263          	beqz	a2,80001d54 <_ZN9semaphore7semOpenEPPS_j+0x78>
    80001d34:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001d38:	0007b703          	ld	a4,0(a5)
    80001d3c:	08070663          	beqz	a4,80001dc8 <_ZN9semaphore7semOpenEPPS_j+0xec>
    80001d40:	0087b683          	ld	a3,8(a5)
    80001d44:	00d73423          	sd	a3,8(a4)
                return cur;
    80001d48:	0800006f          	j	80001dc8 <_ZN9semaphore7semOpenEPPS_j+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001d4c:	00068793          	mv	a5,a3
    80001d50:	fa5ff06f          	j	80001cf4 <_ZN9semaphore7semOpenEPPS_j+0x18>
                else fmem_head = cur->next;
    80001d54:	00005717          	auipc	a4,0x5
    80001d58:	fc473703          	ld	a4,-60(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d5c:	00d73023          	sd	a3,0(a4)
    80001d60:	fd9ff06f          	j	80001d38 <_ZN9semaphore7semOpenEPPS_j+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001d64:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001d68:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001d6c:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001d70:	0087b683          	ld	a3,8(a5)
    80001d74:	0c068463          	beqz	a3,80001e3c <_ZN9semaphore7semOpenEPPS_j+0x160>
    80001d78:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001d7c:	0007b683          	ld	a3,0(a5)
    80001d80:	00068463          	beqz	a3,80001d88 <_ZN9semaphore7semOpenEPPS_j+0xac>
    80001d84:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001d88:	0087b603          	ld	a2,8(a5)
    80001d8c:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001d90:	0007b683          	ld	a3,0(a5)
    80001d94:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001d98:	0107b783          	ld	a5,16(a5)
    80001d9c:	fc078793          	addi	a5,a5,-64
    80001da0:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001da4:	0c070693          	addi	a3,a4,192
    80001da8:	00005817          	auipc	a6,0x5
    80001dac:	f7083803          	ld	a6,-144(a6) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001db0:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80001db4:	00073803          	ld	a6,0(a4)
    80001db8:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001dbc:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001dc0:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001dc4:	00070793          	mv	a5,a4
    *handle=(semaphore*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(semaphore)));
    80001dc8:	00f53023          	sd	a5,0(a0)
    if (*handle==nullptr){
    80001dcc:	12078463          	beqz	a5,80001ef4 <_ZN9semaphore7semOpenEPPS_j+0x218>
        return -1;
    }
    (*handle)->val=init;
    80001dd0:	00b7a023          	sw	a1,0(a5)
    (*handle)->blocked=(LinkedList<TCB>*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(LinkedList<TCB>)));
    80001dd4:	00053503          	ld	a0,0(a0)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001dd8:	00005797          	auipc	a5,0x5
    80001ddc:	f407b783          	ld	a5,-192(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001de0:	0007b783          	ld	a5,0(a5)
    80001de4:	0e078463          	beqz	a5,80001ecc <_ZN9semaphore7semOpenEPPS_j+0x1f0>
            cur->next=fmem_head->next;
    80001de8:	00005717          	auipc	a4,0x5
    80001dec:	f3073703          	ld	a4,-208(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001df0:	00073683          	ld	a3,0(a4)
    80001df4:	0006b683          	ld	a3,0(a3)
    80001df8:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001dfc:	00073703          	ld	a4,0(a4)
    80001e00:	00873603          	ld	a2,8(a4)
    80001e04:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001e08:	0107b703          	ld	a4,16(a5)
    80001e0c:	03f00593          	li	a1,63
    80001e10:	04e5f063          	bgeu	a1,a4,80001e50 <_ZN9semaphore7semOpenEPPS_j+0x174>
            if (cur->size-size<=sizeof(FreeMem)){
    80001e14:	fc070713          	addi	a4,a4,-64
    80001e18:	01800593          	li	a1,24
    80001e1c:	04e5e663          	bltu	a1,a4,80001e68 <_ZN9semaphore7semOpenEPPS_j+0x18c>
                if (cur->prev) cur->prev->next = cur->next;
    80001e20:	02060c63          	beqz	a2,80001e58 <_ZN9semaphore7semOpenEPPS_j+0x17c>
    80001e24:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001e28:	0007b703          	ld	a4,0(a5)
    80001e2c:	0a070063          	beqz	a4,80001ecc <_ZN9semaphore7semOpenEPPS_j+0x1f0>
    80001e30:	0087b683          	ld	a3,8(a5)
    80001e34:	00d73423          	sd	a3,8(a4)
                return cur;
    80001e38:	0940006f          	j	80001ecc <_ZN9semaphore7semOpenEPPS_j+0x1f0>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001e3c:	0c070693          	addi	a3,a4,192
    80001e40:	00005617          	auipc	a2,0x5
    80001e44:	ed863603          	ld	a2,-296(a2) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e48:	00d63023          	sd	a3,0(a2)
    80001e4c:	f31ff06f          	j	80001d7c <_ZN9semaphore7semOpenEPPS_j+0xa0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001e50:	00068793          	mv	a5,a3
    80001e54:	f91ff06f          	j	80001de4 <_ZN9semaphore7semOpenEPPS_j+0x108>
                else fmem_head = cur->next;
    80001e58:	00005717          	auipc	a4,0x5
    80001e5c:	ec073703          	ld	a4,-320(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e60:	00d73023          	sd	a3,0(a4)
    80001e64:	fc5ff06f          	j	80001e28 <_ZN9semaphore7semOpenEPPS_j+0x14c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001e68:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001e6c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001e70:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001e74:	0087b683          	ld	a3,8(a5)
    80001e78:	06068463          	beqz	a3,80001ee0 <_ZN9semaphore7semOpenEPPS_j+0x204>
    80001e7c:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001e80:	0007b683          	ld	a3,0(a5)
    80001e84:	00068463          	beqz	a3,80001e8c <_ZN9semaphore7semOpenEPPS_j+0x1b0>
    80001e88:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001e8c:	0087b603          	ld	a2,8(a5)
    80001e90:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001e94:	0007b683          	ld	a3,0(a5)
    80001e98:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001e9c:	0107b783          	ld	a5,16(a5)
    80001ea0:	fc078793          	addi	a5,a5,-64
    80001ea4:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001ea8:	0c070693          	addi	a3,a4,192
    80001eac:	00005597          	auipc	a1,0x5
    80001eb0:	e6c5b583          	ld	a1,-404(a1) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001eb4:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001eb8:	00073583          	ld	a1,0(a4)
    80001ebc:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001ec0:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001ec4:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001ec8:	00070793          	mv	a5,a4
    80001ecc:	00f53423          	sd	a5,8(a0)
    return  0;
    80001ed0:	00000513          	li	a0,0
}
    80001ed4:	00813403          	ld	s0,8(sp)
    80001ed8:	01010113          	addi	sp,sp,16
    80001edc:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001ee0:	0c070693          	addi	a3,a4,192
    80001ee4:	00005617          	auipc	a2,0x5
    80001ee8:	e3463603          	ld	a2,-460(a2) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001eec:	00d63023          	sd	a3,0(a2)
    80001ef0:	f91ff06f          	j	80001e80 <_ZN9semaphore7semOpenEPPS_j+0x1a4>
        return -1;
    80001ef4:	fff00513          	li	a0,-1
    80001ef8:	fddff06f          	j	80001ed4 <_ZN9semaphore7semOpenEPPS_j+0x1f8>

0000000080001efc <_ZN9semaphore8semCloseEPS_>:

int semaphore::semClose(semaphore *semID) {
    80001efc:	fe010113          	addi	sp,sp,-32
    80001f00:	00113c23          	sd	ra,24(sp)
    80001f04:	00813823          	sd	s0,16(sp)
    80001f08:	00913423          	sd	s1,8(sp)
    80001f0c:	02010413          	addi	s0,sp,32
    80001f10:	00050493          	mv	s1,a0
    while(((semID)->blocked->listEmpty())==false){
    80001f14:	0084b783          	ld	a5,8(s1)
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    80001f18:	0007b783          	ld	a5,0(a5)
    80001f1c:	00078e63          	beqz	a5,80001f38 <_ZN9semaphore8semCloseEPS_+0x3c>
        return head->data;
    80001f20:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    80001f24:	00078a63          	beqz	a5,80001f38 <_ZN9semaphore8semCloseEPS_+0x3c>
        (semID)->unblock();
    80001f28:	00048513          	mv	a0,s1
    80001f2c:	00000097          	auipc	ra,0x0
    80001f30:	d44080e7          	jalr	-700(ra) # 80001c70 <_ZN9semaphore7unblockEv>
    while(((semID)->blocked->listEmpty())==false){
    80001f34:	fe1ff06f          	j	80001f14 <_ZN9semaphore8semCloseEPS_+0x18>
        if(!fmem_head || ptr < (char*)fmem_head)
    80001f38:	00005797          	auipc	a5,0x5
    80001f3c:	de07b783          	ld	a5,-544(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f40:	0007b783          	ld	a5,0(a5)
    80001f44:	00078e63          	beqz	a5,80001f60 <_ZN9semaphore8semCloseEPS_+0x64>
    80001f48:	02f4e063          	bltu	s1,a5,80001f68 <_ZN9semaphore8semCloseEPS_+0x6c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001f4c:	00078713          	mv	a4,a5
    80001f50:	0007b783          	ld	a5,0(a5)
    80001f54:	00f48c63          	beq	s1,a5,80001f6c <_ZN9semaphore8semCloseEPS_+0x70>
    80001f58:	fe97eae3          	bltu	a5,s1,80001f4c <_ZN9semaphore8semCloseEPS_+0x50>
    80001f5c:	0100006f          	j	80001f6c <_ZN9semaphore8semCloseEPS_+0x70>
            cur=nullptr;
    80001f60:	00078713          	mv	a4,a5
    80001f64:	0080006f          	j	80001f6c <_ZN9semaphore8semCloseEPS_+0x70>
    80001f68:	00000713          	li	a4,0
                newSeg->next=nullptr;
    80001f6c:	0004b023          	sd	zero,0(s1)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001f70:	04000793          	li	a5,64
    80001f74:	00f4b823          	sd	a5,16(s1)
                newSeg->prev=cur;
    80001f78:	00e4b423          	sd	a4,8(s1)
                if(cur) {
    80001f7c:	06070463          	beqz	a4,80001fe4 <_ZN9semaphore8semCloseEPS_+0xe8>
                    newSeg->next = cur->next;
    80001f80:	00073783          	ld	a5,0(a4)
    80001f84:	00f4b023          	sd	a5,0(s1)
                if(newSeg->next) {
    80001f88:	0004b783          	ld	a5,0(s1)
    80001f8c:	00078463          	beqz	a5,80001f94 <_ZN9semaphore8semCloseEPS_+0x98>
                    newSeg->next->prev=newSeg;
    80001f90:	0097b423          	sd	s1,8(a5)
                if (cur) {
    80001f94:	06070263          	beqz	a4,80001ff8 <_ZN9semaphore8semCloseEPS_+0xfc>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001f98:	00973023          	sd	s1,0(a4)
        if (!curr) return;
    80001f9c:	00048c63          	beqz	s1,80001fb4 <_ZN9semaphore8semCloseEPS_+0xb8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001fa0:	0004b783          	ld	a5,0(s1)
    80001fa4:	00078863          	beqz	a5,80001fb4 <_ZN9semaphore8semCloseEPS_+0xb8>
    80001fa8:	0104b683          	ld	a3,16(s1)
    80001fac:	00d48633          	add	a2,s1,a3
    80001fb0:	04c78c63          	beq	a5,a2,80002008 <_ZN9semaphore8semCloseEPS_+0x10c>
        if (!curr) return;
    80001fb4:	00070c63          	beqz	a4,80001fcc <_ZN9semaphore8semCloseEPS_+0xd0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001fb8:	00073783          	ld	a5,0(a4)
    80001fbc:	00078863          	beqz	a5,80001fcc <_ZN9semaphore8semCloseEPS_+0xd0>
    80001fc0:	01073683          	ld	a3,16(a4)
    80001fc4:	00d70633          	add	a2,a4,a3
    80001fc8:	06c78063          	beq	a5,a2,80002028 <_ZN9semaphore8semCloseEPS_+0x12c>
        //TODO wait treba da vrati gresku? Kako to?
    }
    MemoryAllocation::mem_free(semID); //TODO mozda moze i samo (*handle)=nullptr
    return 0;
}
    80001fcc:	00000513          	li	a0,0
    80001fd0:	01813083          	ld	ra,24(sp)
    80001fd4:	01013403          	ld	s0,16(sp)
    80001fd8:	00813483          	ld	s1,8(sp)
    80001fdc:	02010113          	addi	sp,sp,32
    80001fe0:	00008067          	ret
                    newSeg->next = fmem_head;
    80001fe4:	00005797          	auipc	a5,0x5
    80001fe8:	d347b783          	ld	a5,-716(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fec:	0007b783          	ld	a5,0(a5)
    80001ff0:	00f4b023          	sd	a5,0(s1)
    80001ff4:	f95ff06f          	j	80001f88 <_ZN9semaphore8semCloseEPS_+0x8c>
                    fmem_head = newSeg;
    80001ff8:	00005797          	auipc	a5,0x5
    80001ffc:	d207b783          	ld	a5,-736(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002000:	0097b023          	sd	s1,0(a5)
    80002004:	f99ff06f          	j	80001f9c <_ZN9semaphore8semCloseEPS_+0xa0>
            curr->size += curr->next->size;
    80002008:	0107b603          	ld	a2,16(a5)
    8000200c:	00c686b3          	add	a3,a3,a2
    80002010:	00d4b823          	sd	a3,16(s1)
            curr->next = curr->next->next;
    80002014:	0007b783          	ld	a5,0(a5)
    80002018:	00f4b023          	sd	a5,0(s1)
            if (curr->next) curr->next->prev = curr;
    8000201c:	f8078ce3          	beqz	a5,80001fb4 <_ZN9semaphore8semCloseEPS_+0xb8>
    80002020:	0097b423          	sd	s1,8(a5)
    80002024:	f91ff06f          	j	80001fb4 <_ZN9semaphore8semCloseEPS_+0xb8>
            curr->size += curr->next->size;
    80002028:	0107b603          	ld	a2,16(a5)
    8000202c:	00c686b3          	add	a3,a3,a2
    80002030:	00d73823          	sd	a3,16(a4)
            curr->next = curr->next->next;
    80002034:	0007b783          	ld	a5,0(a5)
    80002038:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    8000203c:	f80788e3          	beqz	a5,80001fcc <_ZN9semaphore8semCloseEPS_+0xd0>
    80002040:	00e7b423          	sd	a4,8(a5)
    80002044:	f89ff06f          	j	80001fcc <_ZN9semaphore8semCloseEPS_+0xd0>

0000000080002048 <_ZN9semaphore7semWaitEPS_>:

int semaphore::semWait(semaphore *semID) {
    if(semID == nullptr){return -1;}
    80002048:	04050663          	beqz	a0,80002094 <_ZN9semaphore7semWaitEPS_+0x4c>
    if((--((semID)->val))<0) { (semID)->block(); }
    8000204c:	00052783          	lw	a5,0(a0)
    80002050:	fff7879b          	addiw	a5,a5,-1
    80002054:	00f52023          	sw	a5,0(a0)
    80002058:	02079713          	slli	a4,a5,0x20
    8000205c:	00074663          	bltz	a4,80002068 <_ZN9semaphore7semWaitEPS_+0x20>
    return 0;
    80002060:	00000513          	li	a0,0
}
    80002064:	00008067          	ret
int semaphore::semWait(semaphore *semID) {
    80002068:	ff010113          	addi	sp,sp,-16
    8000206c:	00113423          	sd	ra,8(sp)
    80002070:	00813023          	sd	s0,0(sp)
    80002074:	01010413          	addi	s0,sp,16
    if((--((semID)->val))<0) { (semID)->block(); }
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	a60080e7          	jalr	-1440(ra) # 80001ad8 <_ZN9semaphore5blockEv>
    return 0;
    80002080:	00000513          	li	a0,0
}
    80002084:	00813083          	ld	ra,8(sp)
    80002088:	00013403          	ld	s0,0(sp)
    8000208c:	01010113          	addi	sp,sp,16
    80002090:	00008067          	ret
    if(semID == nullptr){return -1;}
    80002094:	fff00513          	li	a0,-1
    80002098:	00008067          	ret

000000008000209c <_ZN9semaphore9semSignalEPS_>:

int semaphore::semSignal(semaphore *semID) {
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    8000209c:	00052783          	lw	a5,0(a0)
    800020a0:	0017879b          	addiw	a5,a5,1
    800020a4:	0007871b          	sext.w	a4,a5
    800020a8:	00f52023          	sw	a5,0(a0)
    800020ac:	00e05663          	blez	a4,800020b8 <_ZN9semaphore9semSignalEPS_+0x1c>
    return 0;
}
    800020b0:	00000513          	li	a0,0
    800020b4:	00008067          	ret
int semaphore::semSignal(semaphore *semID) {
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00113423          	sd	ra,8(sp)
    800020c0:	00813023          	sd	s0,0(sp)
    800020c4:	01010413          	addi	s0,sp,16
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    800020c8:	00000097          	auipc	ra,0x0
    800020cc:	ba8080e7          	jalr	-1112(ra) # 80001c70 <_ZN9semaphore7unblockEv>
}
    800020d0:	00000513          	li	a0,0
    800020d4:	00813083          	ld	ra,8(sp)
    800020d8:	00013403          	ld	s0,0(sp)
    800020dc:	01010113          	addi	sp,sp,16
    800020e0:	00008067          	ret

00000000800020e4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800020e4:	fe010113          	addi	sp,sp,-32
    800020e8:	00113c23          	sd	ra,24(sp)
    800020ec:	00813823          	sd	s0,16(sp)
    800020f0:	00913423          	sd	s1,8(sp)
    800020f4:	02010413          	addi	s0,sp,32
    800020f8:	00050493          	mv	s1,a0
    LOCK();
    800020fc:	00100613          	li	a2,1
    80002100:	00000593          	li	a1,0
    80002104:	00005517          	auipc	a0,0x5
    80002108:	c9c50513          	addi	a0,a0,-868 # 80006da0 <lockPrint>
    8000210c:	fffff097          	auipc	ra,0xfffff
    80002110:	fec080e7          	jalr	-20(ra) # 800010f8 <copy_and_swap>
    80002114:	fe0514e3          	bnez	a0,800020fc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002118:	0004c503          	lbu	a0,0(s1)
    8000211c:	00050a63          	beqz	a0,80002130 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002120:	fffff097          	auipc	ra,0xfffff
    80002124:	2f8080e7          	jalr	760(ra) # 80001418 <_Z4putcc>
        string++;
    80002128:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000212c:	fedff06f          	j	80002118 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002130:	00000613          	li	a2,0
    80002134:	00100593          	li	a1,1
    80002138:	00005517          	auipc	a0,0x5
    8000213c:	c6850513          	addi	a0,a0,-920 # 80006da0 <lockPrint>
    80002140:	fffff097          	auipc	ra,0xfffff
    80002144:	fb8080e7          	jalr	-72(ra) # 800010f8 <copy_and_swap>
    80002148:	fe0514e3          	bnez	a0,80002130 <_Z11printStringPKc+0x4c>
}
    8000214c:	01813083          	ld	ra,24(sp)
    80002150:	01013403          	ld	s0,16(sp)
    80002154:	00813483          	ld	s1,8(sp)
    80002158:	02010113          	addi	sp,sp,32
    8000215c:	00008067          	ret

0000000080002160 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002160:	fd010113          	addi	sp,sp,-48
    80002164:	02113423          	sd	ra,40(sp)
    80002168:	02813023          	sd	s0,32(sp)
    8000216c:	00913c23          	sd	s1,24(sp)
    80002170:	01213823          	sd	s2,16(sp)
    80002174:	01313423          	sd	s3,8(sp)
    80002178:	01413023          	sd	s4,0(sp)
    8000217c:	03010413          	addi	s0,sp,48
    80002180:	00050993          	mv	s3,a0
    80002184:	00058a13          	mv	s4,a1
    LOCK();
    80002188:	00100613          	li	a2,1
    8000218c:	00000593          	li	a1,0
    80002190:	00005517          	auipc	a0,0x5
    80002194:	c1050513          	addi	a0,a0,-1008 # 80006da0 <lockPrint>
    80002198:	fffff097          	auipc	ra,0xfffff
    8000219c:	f60080e7          	jalr	-160(ra) # 800010f8 <copy_and_swap>
    800021a0:	fe0514e3          	bnez	a0,80002188 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800021a4:	00000913          	li	s2,0
    800021a8:	00090493          	mv	s1,s2
    800021ac:	0019091b          	addiw	s2,s2,1
    800021b0:	03495a63          	bge	s2,s4,800021e4 <_Z9getStringPci+0x84>
        cc = getc();
    800021b4:	fffff097          	auipc	ra,0xfffff
    800021b8:	238080e7          	jalr	568(ra) # 800013ec <_Z4getcv>
        if(cc < 1)
    800021bc:	02050463          	beqz	a0,800021e4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800021c0:	009984b3          	add	s1,s3,s1
    800021c4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800021c8:	00a00793          	li	a5,10
    800021cc:	00f50a63          	beq	a0,a5,800021e0 <_Z9getStringPci+0x80>
    800021d0:	00d00793          	li	a5,13
    800021d4:	fcf51ae3          	bne	a0,a5,800021a8 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800021d8:	00090493          	mv	s1,s2
    800021dc:	0080006f          	j	800021e4 <_Z9getStringPci+0x84>
    800021e0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800021e4:	009984b3          	add	s1,s3,s1
    800021e8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800021ec:	00000613          	li	a2,0
    800021f0:	00100593          	li	a1,1
    800021f4:	00005517          	auipc	a0,0x5
    800021f8:	bac50513          	addi	a0,a0,-1108 # 80006da0 <lockPrint>
    800021fc:	fffff097          	auipc	ra,0xfffff
    80002200:	efc080e7          	jalr	-260(ra) # 800010f8 <copy_and_swap>
    80002204:	fe0514e3          	bnez	a0,800021ec <_Z9getStringPci+0x8c>
    return buf;
}
    80002208:	00098513          	mv	a0,s3
    8000220c:	02813083          	ld	ra,40(sp)
    80002210:	02013403          	ld	s0,32(sp)
    80002214:	01813483          	ld	s1,24(sp)
    80002218:	01013903          	ld	s2,16(sp)
    8000221c:	00813983          	ld	s3,8(sp)
    80002220:	00013a03          	ld	s4,0(sp)
    80002224:	03010113          	addi	sp,sp,48
    80002228:	00008067          	ret

000000008000222c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000222c:	ff010113          	addi	sp,sp,-16
    80002230:	00813423          	sd	s0,8(sp)
    80002234:	01010413          	addi	s0,sp,16
    80002238:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000223c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002240:	0006c603          	lbu	a2,0(a3)
    80002244:	fd06071b          	addiw	a4,a2,-48
    80002248:	0ff77713          	andi	a4,a4,255
    8000224c:	00900793          	li	a5,9
    80002250:	02e7e063          	bltu	a5,a4,80002270 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002254:	0025179b          	slliw	a5,a0,0x2
    80002258:	00a787bb          	addw	a5,a5,a0
    8000225c:	0017979b          	slliw	a5,a5,0x1
    80002260:	00168693          	addi	a3,a3,1
    80002264:	00c787bb          	addw	a5,a5,a2
    80002268:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000226c:	fd5ff06f          	j	80002240 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002270:	00813403          	ld	s0,8(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000227c:	fc010113          	addi	sp,sp,-64
    80002280:	02113c23          	sd	ra,56(sp)
    80002284:	02813823          	sd	s0,48(sp)
    80002288:	02913423          	sd	s1,40(sp)
    8000228c:	03213023          	sd	s2,32(sp)
    80002290:	01313c23          	sd	s3,24(sp)
    80002294:	04010413          	addi	s0,sp,64
    80002298:	00050493          	mv	s1,a0
    8000229c:	00058913          	mv	s2,a1
    800022a0:	00060993          	mv	s3,a2
    LOCK();
    800022a4:	00100613          	li	a2,1
    800022a8:	00000593          	li	a1,0
    800022ac:	00005517          	auipc	a0,0x5
    800022b0:	af450513          	addi	a0,a0,-1292 # 80006da0 <lockPrint>
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	e44080e7          	jalr	-444(ra) # 800010f8 <copy_and_swap>
    800022bc:	fe0514e3          	bnez	a0,800022a4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800022c0:	00098463          	beqz	s3,800022c8 <_Z8printIntiii+0x4c>
    800022c4:	0804c463          	bltz	s1,8000234c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800022c8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800022cc:	00000593          	li	a1,0
    }

    i = 0;
    800022d0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800022d4:	0009079b          	sext.w	a5,s2
    800022d8:	0325773b          	remuw	a4,a0,s2
    800022dc:	00048613          	mv	a2,s1
    800022e0:	0014849b          	addiw	s1,s1,1
    800022e4:	02071693          	slli	a3,a4,0x20
    800022e8:	0206d693          	srli	a3,a3,0x20
    800022ec:	00005717          	auipc	a4,0x5
    800022f0:	9e470713          	addi	a4,a4,-1564 # 80006cd0 <digits>
    800022f4:	00d70733          	add	a4,a4,a3
    800022f8:	00074683          	lbu	a3,0(a4)
    800022fc:	fd040713          	addi	a4,s0,-48
    80002300:	00c70733          	add	a4,a4,a2
    80002304:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002308:	0005071b          	sext.w	a4,a0
    8000230c:	0325553b          	divuw	a0,a0,s2
    80002310:	fcf772e3          	bgeu	a4,a5,800022d4 <_Z8printIntiii+0x58>
    if(neg)
    80002314:	00058c63          	beqz	a1,8000232c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002318:	fd040793          	addi	a5,s0,-48
    8000231c:	009784b3          	add	s1,a5,s1
    80002320:	02d00793          	li	a5,45
    80002324:	fef48823          	sb	a5,-16(s1)
    80002328:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000232c:	fff4849b          	addiw	s1,s1,-1
    80002330:	0204c463          	bltz	s1,80002358 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002334:	fd040793          	addi	a5,s0,-48
    80002338:	009787b3          	add	a5,a5,s1
    8000233c:	ff07c503          	lbu	a0,-16(a5)
    80002340:	fffff097          	auipc	ra,0xfffff
    80002344:	0d8080e7          	jalr	216(ra) # 80001418 <_Z4putcc>
    80002348:	fe5ff06f          	j	8000232c <_Z8printIntiii+0xb0>
        x = -xx;
    8000234c:	4090053b          	negw	a0,s1
        neg = 1;
    80002350:	00100593          	li	a1,1
        x = -xx;
    80002354:	f7dff06f          	j	800022d0 <_Z8printIntiii+0x54>

    UNLOCK();
    80002358:	00000613          	li	a2,0
    8000235c:	00100593          	li	a1,1
    80002360:	00005517          	auipc	a0,0x5
    80002364:	a4050513          	addi	a0,a0,-1472 # 80006da0 <lockPrint>
    80002368:	fffff097          	auipc	ra,0xfffff
    8000236c:	d90080e7          	jalr	-624(ra) # 800010f8 <copy_and_swap>
    80002370:	fe0514e3          	bnez	a0,80002358 <_Z8printIntiii+0xdc>
    80002374:	03813083          	ld	ra,56(sp)
    80002378:	03013403          	ld	s0,48(sp)
    8000237c:	02813483          	ld	s1,40(sp)
    80002380:	02013903          	ld	s2,32(sp)
    80002384:	01813983          	ld	s3,24(sp)
    80002388:	04010113          	addi	sp,sp,64
    8000238c:	00008067          	ret

0000000080002390 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80002390:	fe010113          	addi	sp,sp,-32
    80002394:	00113c23          	sd	ra,24(sp)
    80002398:	00813823          	sd	s0,16(sp)
    8000239c:	00913423          	sd	s1,8(sp)
    800023a0:	01213023          	sd	s2,0(sp)
    800023a4:	02010413          	addi	s0,sp,32
    800023a8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800023ac:	00000913          	li	s2,0
    800023b0:	00c0006f          	j	800023bc <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'q') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800023b4:	fffff097          	auipc	ra,0xfffff
    800023b8:	f50080e7          	jalr	-176(ra) # 80001304 <_Z15thread_dispatchv>
    while ((key = getc()) != 'q') {
    800023bc:	fffff097          	auipc	ra,0xfffff
    800023c0:	030080e7          	jalr	48(ra) # 800013ec <_Z4getcv>
    800023c4:	0005059b          	sext.w	a1,a0
    800023c8:	07100793          	li	a5,113
    800023cc:	02f58a63          	beq	a1,a5,80002400 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800023d0:	0084b503          	ld	a0,8(s1)
    800023d4:	00001097          	auipc	ra,0x1
    800023d8:	100080e7          	jalr	256(ra) # 800034d4 <_ZN6Buffer3putEi>
        i++;
    800023dc:	0019071b          	addiw	a4,s2,1
    800023e0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800023e4:	0004a683          	lw	a3,0(s1)
    800023e8:	0026979b          	slliw	a5,a3,0x2
    800023ec:	00d787bb          	addw	a5,a5,a3
    800023f0:	0017979b          	slliw	a5,a5,0x1
    800023f4:	02f767bb          	remw	a5,a4,a5
    800023f8:	fc0792e3          	bnez	a5,800023bc <_Z16producerKeyboardPv+0x2c>
    800023fc:	fb9ff06f          	j	800023b4 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002400:	00100793          	li	a5,1
    80002404:	00005717          	auipc	a4,0x5
    80002408:	9af72223          	sw	a5,-1628(a4) # 80006da8 <threadEnd>
    data->buffer->put('!');
    8000240c:	02100593          	li	a1,33
    80002410:	0084b503          	ld	a0,8(s1)
    80002414:	00001097          	auipc	ra,0x1
    80002418:	0c0080e7          	jalr	192(ra) # 800034d4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000241c:	0104b503          	ld	a0,16(s1)
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	f9c080e7          	jalr	-100(ra) # 800013bc <_Z10sem_signalP9semaphore>
}
    80002428:	01813083          	ld	ra,24(sp)
    8000242c:	01013403          	ld	s0,16(sp)
    80002430:	00813483          	ld	s1,8(sp)
    80002434:	00013903          	ld	s2,0(sp)
    80002438:	02010113          	addi	sp,sp,32
    8000243c:	00008067          	ret

0000000080002440 <_Z8producerPv>:

void producer(void *arg) {
    80002440:	fe010113          	addi	sp,sp,-32
    80002444:	00113c23          	sd	ra,24(sp)
    80002448:	00813823          	sd	s0,16(sp)
    8000244c:	00913423          	sd	s1,8(sp)
    80002450:	01213023          	sd	s2,0(sp)
    80002454:	02010413          	addi	s0,sp,32
    80002458:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000245c:	00000913          	li	s2,0
    80002460:	00c0006f          	j	8000246c <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002464:	fffff097          	auipc	ra,0xfffff
    80002468:	ea0080e7          	jalr	-352(ra) # 80001304 <_Z15thread_dispatchv>
    while (!threadEnd) {
    8000246c:	00005797          	auipc	a5,0x5
    80002470:	93c7a783          	lw	a5,-1732(a5) # 80006da8 <threadEnd>
    80002474:	02079e63          	bnez	a5,800024b0 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002478:	0004a583          	lw	a1,0(s1)
    8000247c:	0305859b          	addiw	a1,a1,48
    80002480:	0084b503          	ld	a0,8(s1)
    80002484:	00001097          	auipc	ra,0x1
    80002488:	050080e7          	jalr	80(ra) # 800034d4 <_ZN6Buffer3putEi>
        i++;
    8000248c:	0019071b          	addiw	a4,s2,1
    80002490:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002494:	0004a683          	lw	a3,0(s1)
    80002498:	0026979b          	slliw	a5,a3,0x2
    8000249c:	00d787bb          	addw	a5,a5,a3
    800024a0:	0017979b          	slliw	a5,a5,0x1
    800024a4:	02f767bb          	remw	a5,a4,a5
    800024a8:	fc0792e3          	bnez	a5,8000246c <_Z8producerPv+0x2c>
    800024ac:	fb9ff06f          	j	80002464 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800024b0:	0104b503          	ld	a0,16(s1)
    800024b4:	fffff097          	auipc	ra,0xfffff
    800024b8:	f08080e7          	jalr	-248(ra) # 800013bc <_Z10sem_signalP9semaphore>
}
    800024bc:	01813083          	ld	ra,24(sp)
    800024c0:	01013403          	ld	s0,16(sp)
    800024c4:	00813483          	ld	s1,8(sp)
    800024c8:	00013903          	ld	s2,0(sp)
    800024cc:	02010113          	addi	sp,sp,32
    800024d0:	00008067          	ret

00000000800024d4 <_Z8consumerPv>:

void consumer(void *arg) {
    800024d4:	fd010113          	addi	sp,sp,-48
    800024d8:	02113423          	sd	ra,40(sp)
    800024dc:	02813023          	sd	s0,32(sp)
    800024e0:	00913c23          	sd	s1,24(sp)
    800024e4:	01213823          	sd	s2,16(sp)
    800024e8:	01313423          	sd	s3,8(sp)
    800024ec:	03010413          	addi	s0,sp,48
    800024f0:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800024f4:	00000993          	li	s3,0
    800024f8:	01c0006f          	j	80002514 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	e08080e7          	jalr	-504(ra) # 80001304 <_Z15thread_dispatchv>
    80002504:	0500006f          	j	80002554 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002508:	00a00513          	li	a0,10
    8000250c:	fffff097          	auipc	ra,0xfffff
    80002510:	f0c080e7          	jalr	-244(ra) # 80001418 <_Z4putcc>
    while (!threadEnd) {
    80002514:	00005797          	auipc	a5,0x5
    80002518:	8947a783          	lw	a5,-1900(a5) # 80006da8 <threadEnd>
    8000251c:	06079063          	bnez	a5,8000257c <_Z8consumerPv+0xa8>
        int key = data->buffer->get();
    80002520:	00893503          	ld	a0,8(s2)
    80002524:	00001097          	auipc	ra,0x1
    80002528:	040080e7          	jalr	64(ra) # 80003564 <_ZN6Buffer3getEv>
        i++;
    8000252c:	0019849b          	addiw	s1,s3,1
    80002530:	0004899b          	sext.w	s3,s1
        putc(key);
    80002534:	0ff57513          	andi	a0,a0,255
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	ee0080e7          	jalr	-288(ra) # 80001418 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002540:	00092703          	lw	a4,0(s2)
    80002544:	0027179b          	slliw	a5,a4,0x2
    80002548:	00e787bb          	addw	a5,a5,a4
    8000254c:	02f4e7bb          	remw	a5,s1,a5
    80002550:	fa0786e3          	beqz	a5,800024fc <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80002554:	05000793          	li	a5,80
    80002558:	02f4e4bb          	remw	s1,s1,a5
    8000255c:	fa049ce3          	bnez	s1,80002514 <_Z8consumerPv+0x40>
    80002560:	fa9ff06f          	j	80002508 <_Z8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002564:	00893503          	ld	a0,8(s2)
    80002568:	00001097          	auipc	ra,0x1
    8000256c:	ffc080e7          	jalr	-4(ra) # 80003564 <_ZN6Buffer3getEv>
        putc(key);
    80002570:	0ff57513          	andi	a0,a0,255
    80002574:	fffff097          	auipc	ra,0xfffff
    80002578:	ea4080e7          	jalr	-348(ra) # 80001418 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000257c:	00893503          	ld	a0,8(s2)
    80002580:	00001097          	auipc	ra,0x1
    80002584:	070080e7          	jalr	112(ra) # 800035f0 <_ZN6Buffer6getCntEv>
    80002588:	fca04ee3          	bgtz	a0,80002564 <_Z8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000258c:	01093503          	ld	a0,16(s2)
    80002590:	fffff097          	auipc	ra,0xfffff
    80002594:	e2c080e7          	jalr	-468(ra) # 800013bc <_Z10sem_signalP9semaphore>
}
    80002598:	02813083          	ld	ra,40(sp)
    8000259c:	02013403          	ld	s0,32(sp)
    800025a0:	01813483          	ld	s1,24(sp)
    800025a4:	01013903          	ld	s2,16(sp)
    800025a8:	00813983          	ld	s3,8(sp)
    800025ac:	03010113          	addi	sp,sp,48
    800025b0:	00008067          	ret

00000000800025b4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800025b4:	f9010113          	addi	sp,sp,-112
    800025b8:	06113423          	sd	ra,104(sp)
    800025bc:	06813023          	sd	s0,96(sp)
    800025c0:	04913c23          	sd	s1,88(sp)
    800025c4:	05213823          	sd	s2,80(sp)
    800025c8:	05313423          	sd	s3,72(sp)
    800025cc:	05413023          	sd	s4,64(sp)
    800025d0:	03513c23          	sd	s5,56(sp)
    800025d4:	03613823          	sd	s6,48(sp)
    800025d8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800025dc:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800025e0:	00004517          	auipc	a0,0x4
    800025e4:	a4050513          	addi	a0,a0,-1472 # 80006020 <CONSOLE_STATUS+0x10>
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	afc080e7          	jalr	-1284(ra) # 800020e4 <_Z11printStringPKc>
    getString(input, 30);
    800025f0:	01e00593          	li	a1,30
    800025f4:	fa040493          	addi	s1,s0,-96
    800025f8:	00048513          	mv	a0,s1
    800025fc:	00000097          	auipc	ra,0x0
    80002600:	b64080e7          	jalr	-1180(ra) # 80002160 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002604:	00048513          	mv	a0,s1
    80002608:	00000097          	auipc	ra,0x0
    8000260c:	c24080e7          	jalr	-988(ra) # 8000222c <_Z11stringToIntPKc>
    80002610:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002614:	00004517          	auipc	a0,0x4
    80002618:	a2c50513          	addi	a0,a0,-1492 # 80006040 <CONSOLE_STATUS+0x30>
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	ac8080e7          	jalr	-1336(ra) # 800020e4 <_Z11printStringPKc>
    getString(input, 30);
    80002624:	01e00593          	li	a1,30
    80002628:	00048513          	mv	a0,s1
    8000262c:	00000097          	auipc	ra,0x0
    80002630:	b34080e7          	jalr	-1228(ra) # 80002160 <_Z9getStringPci>
    n = stringToInt(input);
    80002634:	00048513          	mv	a0,s1
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	bf4080e7          	jalr	-1036(ra) # 8000222c <_Z11stringToIntPKc>
    80002640:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002644:	00004517          	auipc	a0,0x4
    80002648:	a1c50513          	addi	a0,a0,-1508 # 80006060 <CONSOLE_STATUS+0x50>
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	a98080e7          	jalr	-1384(ra) # 800020e4 <_Z11printStringPKc>
    80002654:	00000613          	li	a2,0
    80002658:	00a00593          	li	a1,10
    8000265c:	00090513          	mv	a0,s2
    80002660:	00000097          	auipc	ra,0x0
    80002664:	c1c080e7          	jalr	-996(ra) # 8000227c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002668:	00004517          	auipc	a0,0x4
    8000266c:	a1050513          	addi	a0,a0,-1520 # 80006078 <CONSOLE_STATUS+0x68>
    80002670:	00000097          	auipc	ra,0x0
    80002674:	a74080e7          	jalr	-1420(ra) # 800020e4 <_Z11printStringPKc>
    80002678:	00000613          	li	a2,0
    8000267c:	00a00593          	li	a1,10
    80002680:	00048513          	mv	a0,s1
    80002684:	00000097          	auipc	ra,0x0
    80002688:	bf8080e7          	jalr	-1032(ra) # 8000227c <_Z8printIntiii>
    printString(".\n");
    8000268c:	00004517          	auipc	a0,0x4
    80002690:	a0450513          	addi	a0,a0,-1532 # 80006090 <CONSOLE_STATUS+0x80>
    80002694:	00000097          	auipc	ra,0x0
    80002698:	a50080e7          	jalr	-1456(ra) # 800020e4 <_Z11printStringPKc>
    if(threadNum > n) {
    8000269c:	0324c463          	blt	s1,s2,800026c4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800026a0:	03205c63          	blez	s2,800026d8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800026a4:	03800513          	li	a0,56
    800026a8:	00001097          	auipc	ra,0x1
    800026ac:	8c8080e7          	jalr	-1848(ra) # 80002f70 <_Znwm>
    800026b0:	00050a13          	mv	s4,a0
    800026b4:	00048593          	mv	a1,s1
    800026b8:	00001097          	auipc	ra,0x1
    800026bc:	d80080e7          	jalr	-640(ra) # 80003438 <_ZN6BufferC1Ei>
    800026c0:	0300006f          	j	800026f0 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800026c4:	00004517          	auipc	a0,0x4
    800026c8:	9d450513          	addi	a0,a0,-1580 # 80006098 <CONSOLE_STATUS+0x88>
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	a18080e7          	jalr	-1512(ra) # 800020e4 <_Z11printStringPKc>
        return;
    800026d4:	0140006f          	j	800026e8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800026d8:	00004517          	auipc	a0,0x4
    800026dc:	a0050513          	addi	a0,a0,-1536 # 800060d8 <CONSOLE_STATUS+0xc8>
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	a04080e7          	jalr	-1532(ra) # 800020e4 <_Z11printStringPKc>
        return;
    800026e8:	000b0113          	mv	sp,s6
    800026ec:	1500006f          	j	8000283c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800026f0:	00000593          	li	a1,0
    800026f4:	00004517          	auipc	a0,0x4
    800026f8:	6bc50513          	addi	a0,a0,1724 # 80006db0 <waitForAll>
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	c2c080e7          	jalr	-980(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    thread_t threads[threadNum];
    80002704:	00391793          	slli	a5,s2,0x3
    80002708:	00f78793          	addi	a5,a5,15
    8000270c:	ff07f793          	andi	a5,a5,-16
    80002710:	40f10133          	sub	sp,sp,a5
    80002714:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002718:	0019071b          	addiw	a4,s2,1
    8000271c:	00171793          	slli	a5,a4,0x1
    80002720:	00e787b3          	add	a5,a5,a4
    80002724:	00379793          	slli	a5,a5,0x3
    80002728:	00f78793          	addi	a5,a5,15
    8000272c:	ff07f793          	andi	a5,a5,-16
    80002730:	40f10133          	sub	sp,sp,a5
    80002734:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002738:	00191613          	slli	a2,s2,0x1
    8000273c:	012607b3          	add	a5,a2,s2
    80002740:	00379793          	slli	a5,a5,0x3
    80002744:	00f987b3          	add	a5,s3,a5
    80002748:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    8000274c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002750:	00004717          	auipc	a4,0x4
    80002754:	66073703          	ld	a4,1632(a4) # 80006db0 <waitForAll>
    80002758:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    8000275c:	00078613          	mv	a2,a5
    80002760:	00000597          	auipc	a1,0x0
    80002764:	d7458593          	addi	a1,a1,-652 # 800024d4 <_Z8consumerPv>
    80002768:	f9840513          	addi	a0,s0,-104
    8000276c:	fffff097          	auipc	ra,0xfffff
    80002770:	b34080e7          	jalr	-1228(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002774:	00000493          	li	s1,0
    80002778:	0280006f          	j	800027a0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000277c:	00000597          	auipc	a1,0x0
    80002780:	c1458593          	addi	a1,a1,-1004 # 80002390 <_Z16producerKeyboardPv>
                      data + i);
    80002784:	00179613          	slli	a2,a5,0x1
    80002788:	00f60633          	add	a2,a2,a5
    8000278c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002790:	00c98633          	add	a2,s3,a2
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	b0c080e7          	jalr	-1268(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000279c:	0014849b          	addiw	s1,s1,1
    800027a0:	0524d263          	bge	s1,s2,800027e4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800027a4:	00149793          	slli	a5,s1,0x1
    800027a8:	009787b3          	add	a5,a5,s1
    800027ac:	00379793          	slli	a5,a5,0x3
    800027b0:	00f987b3          	add	a5,s3,a5
    800027b4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800027b8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800027bc:	00004717          	auipc	a4,0x4
    800027c0:	5f473703          	ld	a4,1524(a4) # 80006db0 <waitForAll>
    800027c4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800027c8:	00048793          	mv	a5,s1
    800027cc:	00349513          	slli	a0,s1,0x3
    800027d0:	00aa8533          	add	a0,s5,a0
    800027d4:	fa9054e3          	blez	s1,8000277c <_Z22producerConsumer_C_APIv+0x1c8>
    800027d8:	00000597          	auipc	a1,0x0
    800027dc:	c6858593          	addi	a1,a1,-920 # 80002440 <_Z8producerPv>
    800027e0:	fa5ff06f          	j	80002784 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800027e4:	fffff097          	auipc	ra,0xfffff
    800027e8:	b20080e7          	jalr	-1248(ra) # 80001304 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800027ec:	00000493          	li	s1,0
    800027f0:	00994e63          	blt	s2,s1,8000280c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800027f4:	00004517          	auipc	a0,0x4
    800027f8:	5bc53503          	ld	a0,1468(a0) # 80006db0 <waitForAll>
    800027fc:	fffff097          	auipc	ra,0xfffff
    80002800:	b90080e7          	jalr	-1136(ra) # 8000138c <_Z8sem_waitP9semaphore>
    for (int i = 0; i <= threadNum; i++) {
    80002804:	0014849b          	addiw	s1,s1,1
    80002808:	fe9ff06f          	j	800027f0 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000280c:	00004517          	auipc	a0,0x4
    80002810:	5a453503          	ld	a0,1444(a0) # 80006db0 <waitForAll>
    80002814:	fffff097          	auipc	ra,0xfffff
    80002818:	b48080e7          	jalr	-1208(ra) # 8000135c <_Z9sem_closeP9semaphore>
    delete buffer;
    8000281c:	000a0e63          	beqz	s4,80002838 <_Z22producerConsumer_C_APIv+0x284>
    80002820:	000a0513          	mv	a0,s4
    80002824:	00001097          	auipc	ra,0x1
    80002828:	e54080e7          	jalr	-428(ra) # 80003678 <_ZN6BufferD1Ev>
    8000282c:	000a0513          	mv	a0,s4
    80002830:	00001097          	auipc	ra,0x1
    80002834:	970080e7          	jalr	-1680(ra) # 800031a0 <_ZdlPv>
    80002838:	000b0113          	mv	sp,s6

}
    8000283c:	f9040113          	addi	sp,s0,-112
    80002840:	06813083          	ld	ra,104(sp)
    80002844:	06013403          	ld	s0,96(sp)
    80002848:	05813483          	ld	s1,88(sp)
    8000284c:	05013903          	ld	s2,80(sp)
    80002850:	04813983          	ld	s3,72(sp)
    80002854:	04013a03          	ld	s4,64(sp)
    80002858:	03813a83          	ld	s5,56(sp)
    8000285c:	03013b03          	ld	s6,48(sp)
    80002860:	07010113          	addi	sp,sp,112
    80002864:	00008067          	ret
    80002868:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    8000286c:	000a0513          	mv	a0,s4
    80002870:	00001097          	auipc	ra,0x1
    80002874:	930080e7          	jalr	-1744(ra) # 800031a0 <_ZdlPv>
    80002878:	00048513          	mv	a0,s1
    8000287c:	00005097          	auipc	ra,0x5
    80002880:	63c080e7          	jalr	1596(ra) # 80007eb8 <_Unwind_Resume>

0000000080002884 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00113423          	sd	ra,8(sp)
    8000288c:	00813023          	sd	s0,0(sp)
    80002890:	01010413          	addi	s0,sp,16
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    80002894:	00000097          	auipc	ra,0x0
    80002898:	d20080e7          	jalr	-736(ra) # 800025b4 <_Z22producerConsumer_C_APIv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    8000289c:	00813083          	ld	ra,8(sp)
    800028a0:	00013403          	ld	s0,0(sp)
    800028a4:	01010113          	addi	sp,sp,16
    800028a8:	00008067          	ret

00000000800028ac <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    800028ac:	ff010113          	addi	sp,sp,-16
    800028b0:	00813423          	sd	s0,8(sp)
    800028b4:	01010413          	addi	s0,sp,16
    800028b8:	00100793          	li	a5,1
    800028bc:	00f50863          	beq	a0,a5,800028cc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800028c0:	00813403          	ld	s0,8(sp)
    800028c4:	01010113          	addi	sp,sp,16
    800028c8:	00008067          	ret
    800028cc:	000107b7          	lui	a5,0x10
    800028d0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800028d4:	fef596e3          	bne	a1,a5,800028c0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    LinkedList() : head(0), tail(0) {}
    800028d8:	00004797          	auipc	a5,0x4
    800028dc:	4e078793          	addi	a5,a5,1248 # 80006db8 <_ZN9Scheduler19readyCoroutineQueueE>
    800028e0:	0007b023          	sd	zero,0(a5)
    800028e4:	0007b423          	sd	zero,8(a5)
    800028e8:	fd9ff06f          	j	800028c0 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800028ec <_ZN9Scheduler3getEv>:
{
    800028ec:	fe010113          	addi	sp,sp,-32
    800028f0:	00113c23          	sd	ra,24(sp)
    800028f4:	00813823          	sd	s0,16(sp)
    800028f8:	00913423          	sd	s1,8(sp)
    800028fc:	02010413          	addi	s0,sp,32
        if (!head) {return 0;}
    80002900:	00004517          	auipc	a0,0x4
    80002904:	4b853503          	ld	a0,1208(a0) # 80006db8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002908:	04050263          	beqz	a0,8000294c <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    8000290c:	00853783          	ld	a5,8(a0)
    80002910:	00004717          	auipc	a4,0x4
    80002914:	4af73423          	sd	a5,1192(a4) # 80006db8 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80002918:	02078463          	beqz	a5,80002940 <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    8000291c:	00053483          	ld	s1,0(a0)
        delete elem;
    80002920:	00001097          	auipc	ra,0x1
    80002924:	880080e7          	jalr	-1920(ra) # 800031a0 <_ZdlPv>
}
    80002928:	00048513          	mv	a0,s1
    8000292c:	01813083          	ld	ra,24(sp)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	00813483          	ld	s1,8(sp)
    80002938:	02010113          	addi	sp,sp,32
    8000293c:	00008067          	ret
            tail = 0;
    80002940:	00004797          	auipc	a5,0x4
    80002944:	4807b023          	sd	zero,1152(a5) # 80006dc0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002948:	fd5ff06f          	j	8000291c <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    8000294c:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002950:	fd9ff06f          	j	80002928 <_ZN9Scheduler3getEv+0x3c>

0000000080002954 <_ZN9Scheduler3putEP3TCB>:
{
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00813423          	sd	s0,8(sp)
    8000295c:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002960:	00004797          	auipc	a5,0x4
    80002964:	3b87b783          	ld	a5,952(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002968:	0007b783          	ld	a5,0(a5)
    8000296c:	0c078a63          	beqz	a5,80002a40 <_ZN9Scheduler3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80002970:	00004717          	auipc	a4,0x4
    80002974:	3a873703          	ld	a4,936(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002978:	00073683          	ld	a3,0(a4)
    8000297c:	0006b683          	ld	a3,0(a3)
    80002980:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80002984:	00073703          	ld	a4,0(a4)
    80002988:	00873603          	ld	a2,8(a4)
    8000298c:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80002990:	0107b703          	ld	a4,16(a5)
    80002994:	03f00593          	li	a1,63
    80002998:	02e5f663          	bgeu	a1,a4,800029c4 <_ZN9Scheduler3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    8000299c:	fc070713          	addi	a4,a4,-64
    800029a0:	01800593          	li	a1,24
    800029a4:	02e5ec63          	bltu	a1,a4,800029dc <_ZN9Scheduler3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    800029a8:	02060263          	beqz	a2,800029cc <_ZN9Scheduler3putEP3TCB+0x78>
    800029ac:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    800029b0:	0007b703          	ld	a4,0(a5)
    800029b4:	08070663          	beqz	a4,80002a40 <_ZN9Scheduler3putEP3TCB+0xec>
    800029b8:	0087b683          	ld	a3,8(a5)
    800029bc:	00d73423          	sd	a3,8(a4)
                return cur;
    800029c0:	0800006f          	j	80002a40 <_ZN9Scheduler3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800029c4:	00068793          	mv	a5,a3
    800029c8:	fa5ff06f          	j	8000296c <_ZN9Scheduler3putEP3TCB+0x18>
                else fmem_head = cur->next;
    800029cc:	00004717          	auipc	a4,0x4
    800029d0:	34c73703          	ld	a4,844(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800029d4:	00d73023          	sd	a3,0(a4)
    800029d8:	fd9ff06f          	j	800029b0 <_ZN9Scheduler3putEP3TCB+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800029dc:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    800029e0:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800029e4:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800029e8:	0087b683          	ld	a3,8(a5)
    800029ec:	08068063          	beqz	a3,80002a6c <_ZN9Scheduler3putEP3TCB+0x118>
    800029f0:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800029f4:	0007b683          	ld	a3,0(a5)
    800029f8:	00068463          	beqz	a3,80002a00 <_ZN9Scheduler3putEP3TCB+0xac>
    800029fc:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002a00:	0087b603          	ld	a2,8(a5)
    80002a04:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002a08:	0007b683          	ld	a3,0(a5)
    80002a0c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002a10:	0107b783          	ld	a5,16(a5)
    80002a14:	fc078793          	addi	a5,a5,-64
    80002a18:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002a1c:	0c070693          	addi	a3,a4,192
    80002a20:	00004597          	auipc	a1,0x4
    80002a24:	2f85b583          	ld	a1,760(a1) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a28:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002a2c:	00073583          	ld	a1,0(a4)
    80002a30:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002a34:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002a38:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002a3c:	00070793          	mv	a5,a4
        elem->data=data;
    80002a40:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80002a44:	0007b423          	sd	zero,8(a5)
        if (tail){
    80002a48:	00004717          	auipc	a4,0x4
    80002a4c:	37873703          	ld	a4,888(a4) # 80006dc0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002a50:	02070863          	beqz	a4,80002a80 <_ZN9Scheduler3putEP3TCB+0x12c>
            tail->next=elem;
    80002a54:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80002a58:	00004717          	auipc	a4,0x4
    80002a5c:	36f73423          	sd	a5,872(a4) # 80006dc0 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002a60:	00813403          	ld	s0,8(sp)
    80002a64:	01010113          	addi	sp,sp,16
    80002a68:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002a6c:	0c070693          	addi	a3,a4,192
    80002a70:	00004617          	auipc	a2,0x4
    80002a74:	2a863603          	ld	a2,680(a2) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a78:	00d63023          	sd	a3,0(a2)
    80002a7c:	f79ff06f          	j	800029f4 <_ZN9Scheduler3putEP3TCB+0xa0>
            head=tail=elem;
    80002a80:	00004717          	auipc	a4,0x4
    80002a84:	33870713          	addi	a4,a4,824 # 80006db8 <_ZN9Scheduler19readyCoroutineQueueE>
    80002a88:	00f73423          	sd	a5,8(a4)
    80002a8c:	00f73023          	sd	a5,0(a4)
    80002a90:	fd1ff06f          	j	80002a60 <_ZN9Scheduler3putEP3TCB+0x10c>

0000000080002a94 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002a94:	ff010113          	addi	sp,sp,-16
    80002a98:	00113423          	sd	ra,8(sp)
    80002a9c:	00813023          	sd	s0,0(sp)
    80002aa0:	01010413          	addi	s0,sp,16
    80002aa4:	000105b7          	lui	a1,0x10
    80002aa8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002aac:	00100513          	li	a0,1
    80002ab0:	00000097          	auipc	ra,0x0
    80002ab4:	dfc080e7          	jalr	-516(ra) # 800028ac <_Z41__static_initialization_and_destruction_0ii>
    80002ab8:	00813083          	ld	ra,8(sp)
    80002abc:	00013403          	ld	s0,0(sp)
    80002ac0:	01010113          	addi	sp,sp,16
    80002ac4:	00008067          	ret

0000000080002ac8 <main>:
//void smoker1(void* arg);
//void smoker2(void* arg);
//void smoker3(void* arg);
//void dummyfun(void* arg);

int main(){
    80002ac8:	fe010113          	addi	sp,sp,-32
    80002acc:	00113c23          	sd	ra,24(sp)
    80002ad0:	00813823          	sd	s0,16(sp)
    80002ad4:	02010413          	addi	s0,sp,32
        if (!instance) {
    80002ad8:	00004797          	auipc	a5,0x4
    80002adc:	2387b783          	ld	a5,568(a5) # 80006d10 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ae0:	0007b783          	ld	a5,0(a5)
    80002ae4:	04078863          	beqz	a5,80002b34 <main+0x6c>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    80002ae8:	00004797          	auipc	a5,0x4
    80002aec:	2207b783          	ld	a5,544(a5) # 80006d08 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    80002af0:	10579073          	csrw	stvec,a5
    //__asm__ volatile ("csrs sstatus, 0x2"); //todo nesto treba sa ovim spoljasnjim prekidima da se radi
    thread_t main;
    thread_create(&main, nullptr, nullptr);
    80002af4:	00000613          	li	a2,0
    80002af8:	00000593          	li	a1,0
    80002afc:	fe840513          	addi	a0,s0,-24
    80002b00:	ffffe097          	auipc	ra,0xffffe
    80002b04:	7a0080e7          	jalr	1952(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    80002b08:	00004797          	auipc	a5,0x4
    80002b0c:	2187b783          	ld	a5,536(a5) # 80006d20 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002b10:	fe843703          	ld	a4,-24(s0)
    80002b14:	00e7b023          	sd	a4,0(a5)
//    thread_create(&t31, dummyfun, nullptr);
//    for (int i = 0; i < 30; ++i) {
//        thread_dispatch();
//    }
//    if(sem_wait(dummy)==-1) printString("ubien semafor\n");
    userMain();
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	d6c080e7          	jalr	-660(ra) # 80002884 <_Z8userMainv>
//    char x=getc();
//    putc(x);

    return 0;
}
    80002b20:	00000513          	li	a0,0
    80002b24:	01813083          	ld	ra,24(sp)
    80002b28:	01013403          	ld	s0,16(sp)
    80002b2c:	02010113          	addi	sp,sp,32
    80002b30:	00008067          	ret
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80002b34:	00004797          	auipc	a5,0x4
    80002b38:	1c47b783          	ld	a5,452(a5) # 80006cf8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002b3c:	0007b783          	ld	a5,0(a5)
    80002b40:	00004697          	auipc	a3,0x4
    80002b44:	1d86b683          	ld	a3,472(a3) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b48:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80002b4c:	00004717          	auipc	a4,0x4
    80002b50:	1dc73703          	ld	a4,476(a4) # 80006d28 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002b54:	00073703          	ld	a4,0(a4)
    80002b58:	40f70733          	sub	a4,a4,a5
    80002b5c:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    80002b60:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80002b64:	0006b783          	ld	a5,0(a3)
    80002b68:	0007b423          	sd	zero,8(a5)
            return instance;
    80002b6c:	f7dff06f          	j	80002ae8 <main+0x20>

0000000080002b70 <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00813423          	sd	s0,8(sp)
    80002b78:	01010413          	addi	s0,sp,16
    return finished;
}
    80002b7c:	02054503          	lbu	a0,32(a0)
    80002b80:	00813403          	ld	s0,8(sp)
    80002b84:	01010113          	addi	sp,sp,16
    80002b88:	00008067          	ret

0000000080002b8c <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80002b8c:	ff010113          	addi	sp,sp,-16
    80002b90:	00813423          	sd	s0,8(sp)
    80002b94:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    80002b98:	02b50023          	sb	a1,32(a0)
}
    80002b9c:	00813403          	ld	s0,8(sp)
    80002ba0:	01010113          	addi	sp,sp,16
    80002ba4:	00008067          	ret

0000000080002ba8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments) {
    80002ba8:	fe010113          	addi	sp,sp,-32
    80002bac:	00113c23          	sd	ra,24(sp)
    80002bb0:	00813823          	sd	s0,16(sp)
    80002bb4:	00913423          	sd	s1,8(sp)
    80002bb8:	02010413          	addi	s0,sp,32
    80002bbc:	00058493          	mv	s1,a1
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002bc0:	00004797          	auipc	a5,0x4
    80002bc4:	1587b783          	ld	a5,344(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002bc8:	0007b783          	ld	a5,0(a5)
    80002bcc:	0c078a63          	beqz	a5,80002ca0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
            cur->next=fmem_head->next;
    80002bd0:	00004717          	auipc	a4,0x4
    80002bd4:	14873703          	ld	a4,328(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002bd8:	00073683          	ld	a3,0(a4)
    80002bdc:	0006b683          	ld	a3,0(a3)
    80002be0:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80002be4:	00073703          	ld	a4,0(a4)
    80002be8:	00873583          	ld	a1,8(a4)
    80002bec:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80002bf0:	0107b703          	ld	a4,16(a5)
    80002bf4:	07f00813          	li	a6,127
    80002bf8:	02e87663          	bgeu	a6,a4,80002c24 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002bfc:	f8070713          	addi	a4,a4,-128
    80002c00:	01800813          	li	a6,24
    80002c04:	02e86c63          	bltu	a6,a4,80002c3c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002c08:	02058263          	beqz	a1,80002c2c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x84>
    80002c0c:	00d5b023          	sd	a3,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    80002c10:	0007b703          	ld	a4,0(a5)
    80002c14:	08070663          	beqz	a4,80002ca0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
    80002c18:	0087b683          	ld	a3,8(a5)
    80002c1c:	00d73423          	sd	a3,8(a4)
                return cur;
    80002c20:	0800006f          	j	80002ca0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002c24:	00068793          	mv	a5,a3
    80002c28:	fa5ff06f          	j	80002bcc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24>
                else fmem_head = cur->next;
    80002c2c:	00004717          	auipc	a4,0x4
    80002c30:	0ec73703          	ld	a4,236(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c34:	00d73023          	sd	a3,0(a4)
    80002c38:	fd9ff06f          	j	80002c10 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002c3c:	08078713          	addi	a4,a5,128
                newfrgm->prev=nullptr;
    80002c40:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002c44:	0807b023          	sd	zero,128(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002c48:	0087b683          	ld	a3,8(a5)
    80002c4c:	0c068c63          	beqz	a3,80002d24 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x17c>
    80002c50:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002c54:	0007b683          	ld	a3,0(a5)
    80002c58:	00068463          	beqz	a3,80002c60 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xb8>
    80002c5c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002c60:	0087b583          	ld	a1,8(a5)
    80002c64:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    80002c68:	0007b683          	ld	a3,0(a5)
    80002c6c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002c70:	0107b783          	ld	a5,16(a5)
    80002c74:	f8078793          	addi	a5,a5,-128
    80002c78:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002c7c:	0c070693          	addi	a3,a4,192
    80002c80:	00004817          	auipc	a6,0x4
    80002c84:	09883803          	ld	a6,152(a6) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c88:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80002c8c:	00073803          	ld	a6,0(a4)
    80002c90:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002c94:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    80002c98:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002c9c:	00070793          	mv	a5,a4
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    80002ca0:	00f4b023          	sd	a5,0(s1)
    (*handle)->body=body;
    80002ca4:	00a7b023          	sd	a0,0(a5)
    (*handle)->arguments=arguments;
    80002ca8:	0004b783          	ld	a5,0(s1)
    80002cac:	02c7b423          	sd	a2,40(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    80002cb0:	12050663          	beqz	a0,80002ddc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x234>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002cb4:	00004797          	auipc	a5,0x4
    80002cb8:	0647b783          	ld	a5,100(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002cbc:	0007b783          	ld	a5,0(a5)
    80002cc0:	12078063          	beqz	a5,80002de0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
            cur->next=fmem_head->next;
    80002cc4:	00004717          	auipc	a4,0x4
    80002cc8:	05473703          	ld	a4,84(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ccc:	00073683          	ld	a3,0(a4)
    80002cd0:	0006b603          	ld	a2,0(a3)
    80002cd4:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    80002cd8:	00073703          	ld	a4,0(a4)
    80002cdc:	00873583          	ld	a1,8(a4)
    80002ce0:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80002ce4:	0107b703          	ld	a4,16(a5)
    80002ce8:	000016b7          	lui	a3,0x1
    80002cec:	03f68693          	addi	a3,a3,63 # 103f <_entry-0x7fffefc1>
    80002cf0:	04e6f463          	bgeu	a3,a4,80002d38 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x190>
            if (cur->size-size<=sizeof(FreeMem)){
    80002cf4:	fffff6b7          	lui	a3,0xfffff
    80002cf8:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff6f70>
    80002cfc:	00d70733          	add	a4,a4,a3
    80002d00:	01800693          	li	a3,24
    80002d04:	04e6e663          	bltu	a3,a4,80002d50 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1a8>
                if (cur->prev) cur->prev->next = cur->next;
    80002d08:	02058c63          	beqz	a1,80002d40 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x198>
    80002d0c:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    80002d10:	0007b703          	ld	a4,0(a5)
    80002d14:	0c070663          	beqz	a4,80002de0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
    80002d18:	0087b683          	ld	a3,8(a5)
    80002d1c:	00d73423          	sd	a3,8(a4)
                return cur;
    80002d20:	0c00006f          	j	80002de0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002d24:	0c070693          	addi	a3,a4,192
    80002d28:	00004597          	auipc	a1,0x4
    80002d2c:	ff05b583          	ld	a1,-16(a1) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d30:	00d5b023          	sd	a3,0(a1)
    80002d34:	f21ff06f          	j	80002c54 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xac>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002d38:	00060793          	mv	a5,a2
    80002d3c:	f85ff06f          	j	80002cc0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x118>
                else fmem_head = cur->next;
    80002d40:	00004717          	auipc	a4,0x4
    80002d44:	fd873703          	ld	a4,-40(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d48:	00c73023          	sd	a2,0(a4)
    80002d4c:	fc5ff06f          	j	80002d10 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x168>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002d50:	00001737          	lui	a4,0x1
    80002d54:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    80002d58:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    80002d5c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002d60:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002d64:	0087b683          	ld	a3,8(a5)
    80002d68:	06068063          	beqz	a3,80002dc8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x220>
    80002d6c:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002d70:	0007b683          	ld	a3,0(a5)
    80002d74:	00068463          	beqz	a3,80002d7c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1d4>
    80002d78:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002d7c:	0087b603          	ld	a2,8(a5)
    80002d80:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002d84:	0007b683          	ld	a3,0(a5)
    80002d88:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002d8c:	0107b783          	ld	a5,16(a5)
    80002d90:	fffff6b7          	lui	a3,0xfffff
    80002d94:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff6f70>
    80002d98:	00d787b3          	add	a5,a5,a3
    80002d9c:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002da0:	0c070693          	addi	a3,a4,192
    80002da4:	00004597          	auipc	a1,0x4
    80002da8:	f745b583          	ld	a1,-140(a1) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002dac:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002db0:	00073583          	ld	a1,0(a4)
    80002db4:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002db8:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002dbc:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002dc0:	00070793          	mv	a5,a4
    80002dc4:	01c0006f          	j	80002de0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002dc8:	0c070693          	addi	a3,a4,192
    80002dcc:	00004617          	auipc	a2,0x4
    80002dd0:	f4c63603          	ld	a2,-180(a2) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002dd4:	00d63023          	sd	a3,0(a2)
    80002dd8:	f99ff06f          	j	80002d70 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1c8>
    80002ddc:	00000793          	li	a5,0
    80002de0:	0004b703          	ld	a4,0(s1)
    80002de4:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80002de8:	06050c63          	beqz	a0,80002e60 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2b8>
    80002dec:	00000717          	auipc	a4,0x0
    80002df0:	0b070713          	addi	a4,a4,176 # 80002e9c <_ZN3TCB13threadWrapperEv>
    80002df4:	0004b783          	ld	a5,0(s1)
    80002df8:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80002dfc:	0004b703          	ld	a4,0(s1)
    80002e00:	00873783          	ld	a5,8(a4)
    80002e04:	06078263          	beqz	a5,80002e68 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2c0>
    80002e08:	000086b7          	lui	a3,0x8
    80002e0c:	00d787b3          	add	a5,a5,a3
    80002e10:	00f73c23          	sd	a5,24(a4)
    (*handle)->finished=false;
    80002e14:	0004b783          	ld	a5,0(s1)
    80002e18:	02078023          	sb	zero,32(a5)
    (*handle)->semBlocked=nullptr;
    80002e1c:	0004b783          	ld	a5,0(s1)
    80002e20:	0207b823          	sd	zero,48(a5)
    (*handle)->timeSlice=TIME_SLICE;
    80002e24:	0004b783          	ld	a5,0(s1)
    80002e28:	00200713          	li	a4,2
    80002e2c:	02e7bc23          	sd	a4,56(a5)
    if (body != nullptr) { Scheduler::put(*handle); }
    80002e30:	00050863          	beqz	a0,80002e40 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x298>
    80002e34:	0004b503          	ld	a0,0(s1)
    80002e38:	00000097          	auipc	ra,0x0
    80002e3c:	b1c080e7          	jalr	-1252(ra) # 80002954 <_ZN9Scheduler3putEP3TCB>
    if(*handle==nullptr){
    80002e40:	0004b783          	ld	a5,0(s1)
    80002e44:	02078663          	beqz	a5,80002e70 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2c8>
        return -1;
    }else{return 0;}
    80002e48:	00000513          	li	a0,0
}
    80002e4c:	01813083          	ld	ra,24(sp)
    80002e50:	01013403          	ld	s0,16(sp)
    80002e54:	00813483          	ld	s1,8(sp)
    80002e58:	02010113          	addi	sp,sp,32
    80002e5c:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80002e60:	00000713          	li	a4,0
    80002e64:	f91ff06f          	j	80002df4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24c>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80002e68:	00000793          	li	a5,0
    80002e6c:	fa5ff06f          	j	80002e10 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x268>
        return -1;
    80002e70:	fff00513          	li	a0,-1
    80002e74:	fd9ff06f          	j	80002e4c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2a4>

0000000080002e78 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80002e78:	ff010113          	addi	sp,sp,-16
    80002e7c:	00813423          	sd	s0,8(sp)
    80002e80:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80002e84:	01300793          	li	a5,19
    80002e88:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80002e8c:	00000073          	ecall

};
    80002e90:	00813403          	ld	s0,8(sp)
    80002e94:	01010113          	addi	sp,sp,16
    80002e98:	00008067          	ret

0000000080002e9c <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80002e9c:	fe010113          	addi	sp,sp,-32
    80002ea0:	00113c23          	sd	ra,24(sp)
    80002ea4:	00813823          	sd	s0,16(sp)
    80002ea8:	00913423          	sd	s1,8(sp)
    80002eac:	02010413          	addi	s0,sp,32
    //RiscV::popSppSpie();
    __asm__ volatile ("csrw sepc, ra");
    80002eb0:	14109073          	csrw	sepc,ra
    //__asm__ volatile ("sret");
    running->body(running->arguments);
    80002eb4:	00004497          	auipc	s1,0x4
    80002eb8:	f1448493          	addi	s1,s1,-236 # 80006dc8 <_ZN3TCB7runningE>
    80002ebc:	0004b783          	ld	a5,0(s1)
    80002ec0:	0007b703          	ld	a4,0(a5)
    80002ec4:	0287b503          	ld	a0,40(a5)
    80002ec8:	000700e7          	jalr	a4
    running->setFinished(true);
    80002ecc:	00100593          	li	a1,1
    80002ed0:	0004b503          	ld	a0,0(s1)
    80002ed4:	00000097          	auipc	ra,0x0
    80002ed8:	cb8080e7          	jalr	-840(ra) # 80002b8c <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80002edc:	00000097          	auipc	ra,0x0
    80002ee0:	f9c080e7          	jalr	-100(ra) # 80002e78 <_ZN3TCB5yieldEv>
}
    80002ee4:	01813083          	ld	ra,24(sp)
    80002ee8:	01013403          	ld	s0,16(sp)
    80002eec:	00813483          	ld	s1,8(sp)
    80002ef0:	02010113          	addi	sp,sp,32
    80002ef4:	00008067          	ret

0000000080002ef8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002ef8:	fe010113          	addi	sp,sp,-32
    80002efc:	00113c23          	sd	ra,24(sp)
    80002f00:	00813823          	sd	s0,16(sp)
    80002f04:	00913423          	sd	s1,8(sp)
    80002f08:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002f0c:	00004497          	auipc	s1,0x4
    80002f10:	ebc4b483          	ld	s1,-324(s1) # 80006dc8 <_ZN3TCB7runningE>
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80002f14:	0304b783          	ld	a5,48(s1)
    80002f18:	02078c63          	beqz	a5,80002f50 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80002f1c:	00000097          	auipc	ra,0x0
    80002f20:	9d0080e7          	jalr	-1584(ra) # 800028ec <_ZN9Scheduler3getEv>
    80002f24:	00004797          	auipc	a5,0x4
    80002f28:	eaa7b223          	sd	a0,-348(a5) # 80006dc8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002f2c:	01050593          	addi	a1,a0,16
    80002f30:	01048513          	addi	a0,s1,16
    80002f34:	ffffe097          	auipc	ra,0xffffe
    80002f38:	2fc080e7          	jalr	764(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002f3c:	01813083          	ld	ra,24(sp)
    80002f40:	01013403          	ld	s0,16(sp)
    80002f44:	00813483          	ld	s1,8(sp)
    80002f48:	02010113          	addi	sp,sp,32
    80002f4c:	00008067          	ret
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80002f50:	00048513          	mv	a0,s1
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	c1c080e7          	jalr	-996(ra) # 80002b70 <_ZNK3TCB10isFinishedEv>
    80002f5c:	fc0510e3          	bnez	a0,80002f1c <_ZN3TCB8dispatchEv+0x24>
        Scheduler::put(old);
    80002f60:	00048513          	mv	a0,s1
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	9f0080e7          	jalr	-1552(ra) # 80002954 <_ZN9Scheduler3putEP3TCB>
    80002f6c:	fb1ff06f          	j	80002f1c <_ZN3TCB8dispatchEv+0x24>

0000000080002f70 <_Znwm>:
#include "../h/MemoryAllocation.hpp"
#include "../h/syscall_c.hpp"

//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    80002f70:	ff010113          	addi	sp,sp,-16
    80002f74:	00813423          	sd	s0,8(sp)
    80002f78:	01010413          	addi	s0,sp,16

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002f7c:	05750793          	addi	a5,a0,87
    80002f80:	0067d793          	srli	a5,a5,0x6
    80002f84:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80002f88:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002f8c:	00004717          	auipc	a4,0x4
    80002f90:	d8c73703          	ld	a4,-628(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f94:	00073503          	ld	a0,0(a4)
    80002f98:	0c050863          	beqz	a0,80003068 <_Znwm+0xf8>
            cur->next=fmem_head->next;
    80002f9c:	00004717          	auipc	a4,0x4
    80002fa0:	d7c73703          	ld	a4,-644(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002fa4:	00073683          	ld	a3,0(a4)
    80002fa8:	0006b683          	ld	a3,0(a3) # 8000 <_entry-0x7fff8000>
    80002fac:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80002fb0:	00073703          	ld	a4,0(a4)
    80002fb4:	00873603          	ld	a2,8(a4)
    80002fb8:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80002fbc:	01053703          	ld	a4,16(a0)
    80002fc0:	02f76663          	bltu	a4,a5,80002fec <_Znwm+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002fc4:	40f70733          	sub	a4,a4,a5
    80002fc8:	01800593          	li	a1,24
    80002fcc:	02e5ec63          	bltu	a1,a4,80003004 <_Znwm+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002fd0:	02060263          	beqz	a2,80002ff4 <_Znwm+0x84>
    80002fd4:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80002fd8:	00053783          	ld	a5,0(a0)
    80002fdc:	08078663          	beqz	a5,80003068 <_Znwm+0xf8>
    80002fe0:	00853703          	ld	a4,8(a0)
    80002fe4:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002fe8:	0800006f          	j	80003068 <_Znwm+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002fec:	00068513          	mv	a0,a3
    80002ff0:	fa9ff06f          	j	80002f98 <_Znwm+0x28>
                else fmem_head = cur->next;
    80002ff4:	00004797          	auipc	a5,0x4
    80002ff8:	d247b783          	ld	a5,-732(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ffc:	00d7b023          	sd	a3,0(a5)
    80003000:	fd9ff06f          	j	80002fd8 <_Znwm+0x68>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80003004:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80003008:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    8000300c:	00073023          	sd	zero,0(a4)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80003010:	00853683          	ld	a3,8(a0)
    80003014:	06068063          	beqz	a3,80003074 <_Znwm+0x104>
    80003018:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    8000301c:	00053683          	ld	a3,0(a0)
    80003020:	00068463          	beqz	a3,80003028 <_Znwm+0xb8>
    80003024:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80003028:	00853603          	ld	a2,8(a0)
    8000302c:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80003030:	00053683          	ld	a3,0(a0)
    80003034:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80003038:	01053683          	ld	a3,16(a0)
    8000303c:	40f687b3          	sub	a5,a3,a5
    80003040:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80003044:	0c070693          	addi	a3,a4,192
    80003048:	00004597          	auipc	a1,0x4
    8000304c:	cd05b583          	ld	a1,-816(a1) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003050:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80003054:	00073583          	ld	a1,0(a4)
    80003058:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    8000305c:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80003060:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80003064:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}
    80003068:	00813403          	ld	s0,8(sp)
    8000306c:	01010113          	addi	sp,sp,16
    80003070:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80003074:	0c070693          	addi	a3,a4,192
    80003078:	00004617          	auipc	a2,0x4
    8000307c:	ca063603          	ld	a2,-864(a2) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003080:	00d63023          	sd	a3,0(a2)
    80003084:	f99ff06f          	j	8000301c <_Znwm+0xac>

0000000080003088 <_Znam>:

void *operator new[](uint64 n){
    80003088:	ff010113          	addi	sp,sp,-16
    8000308c:	00813423          	sd	s0,8(sp)
    80003090:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80003094:	05750793          	addi	a5,a0,87
    80003098:	0067d793          	srli	a5,a5,0x6
    8000309c:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    800030a0:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800030a4:	00004717          	auipc	a4,0x4
    800030a8:	c7473703          	ld	a4,-908(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800030ac:	00073503          	ld	a0,0(a4)
    800030b0:	0c050863          	beqz	a0,80003180 <_Znam+0xf8>
            cur->next=fmem_head->next;
    800030b4:	00004717          	auipc	a4,0x4
    800030b8:	c6473703          	ld	a4,-924(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800030bc:	00073683          	ld	a3,0(a4)
    800030c0:	0006b683          	ld	a3,0(a3)
    800030c4:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    800030c8:	00073703          	ld	a4,0(a4)
    800030cc:	00873603          	ld	a2,8(a4)
    800030d0:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    800030d4:	01053703          	ld	a4,16(a0)
    800030d8:	02f76663          	bltu	a4,a5,80003104 <_Znam+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    800030dc:	40f70733          	sub	a4,a4,a5
    800030e0:	01800593          	li	a1,24
    800030e4:	02e5ec63          	bltu	a1,a4,8000311c <_Znam+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    800030e8:	02060263          	beqz	a2,8000310c <_Znam+0x84>
    800030ec:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    800030f0:	00053783          	ld	a5,0(a0)
    800030f4:	08078663          	beqz	a5,80003180 <_Znam+0xf8>
    800030f8:	00853703          	ld	a4,8(a0)
    800030fc:	00e7b423          	sd	a4,8(a5)
                return cur;
    80003100:	0800006f          	j	80003180 <_Znam+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003104:	00068513          	mv	a0,a3
    80003108:	fa9ff06f          	j	800030b0 <_Znam+0x28>
                else fmem_head = cur->next;
    8000310c:	00004797          	auipc	a5,0x4
    80003110:	c0c7b783          	ld	a5,-1012(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003114:	00d7b023          	sd	a3,0(a5)
    80003118:	fd9ff06f          	j	800030f0 <_Znam+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    8000311c:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80003120:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80003124:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80003128:	00853683          	ld	a3,8(a0)
    8000312c:	06068063          	beqz	a3,8000318c <_Znam+0x104>
    80003130:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80003134:	00053683          	ld	a3,0(a0)
    80003138:	00068463          	beqz	a3,80003140 <_Znam+0xb8>
    8000313c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80003140:	00853603          	ld	a2,8(a0)
    80003144:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80003148:	00053683          	ld	a3,0(a0)
    8000314c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80003150:	01053683          	ld	a3,16(a0)
    80003154:	40f687b3          	sub	a5,a3,a5
    80003158:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    8000315c:	0c070693          	addi	a3,a4,192
    80003160:	00004597          	auipc	a1,0x4
    80003164:	bb85b583          	ld	a1,-1096(a1) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003168:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    8000316c:	00073583          	ld	a1,0(a4)
    80003170:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80003174:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80003178:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    8000317c:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
}
    80003180:	00813403          	ld	s0,8(sp)
    80003184:	01010113          	addi	sp,sp,16
    80003188:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    8000318c:	0c070693          	addi	a3,a4,192
    80003190:	00004617          	auipc	a2,0x4
    80003194:	b8863603          	ld	a2,-1144(a2) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003198:	00d63023          	sd	a3,0(a2)
    8000319c:	f99ff06f          	j	80003134 <_Znam+0xac>

00000000800031a0 <_ZdlPv>:

void operator delete(void *p) noexcept {
    800031a0:	ff010113          	addi	sp,sp,-16
    800031a4:	00813423          	sd	s0,8(sp)
    800031a8:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    800031ac:	00004797          	auipc	a5,0x4
    800031b0:	b6c7b783          	ld	a5,-1172(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800031b4:	0007b703          	ld	a4,0(a5)
    800031b8:	00070e63          	beqz	a4,800031d4 <_ZdlPv+0x34>
    800031bc:	02e56063          	bltu	a0,a4,800031dc <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800031c0:	00070793          	mv	a5,a4
    800031c4:	00073703          	ld	a4,0(a4)
    800031c8:	00e50c63          	beq	a0,a4,800031e0 <_ZdlPv+0x40>
    800031cc:	fea76ae3          	bltu	a4,a0,800031c0 <_ZdlPv+0x20>
    800031d0:	0100006f          	j	800031e0 <_ZdlPv+0x40>
            cur=nullptr;
    800031d4:	00070793          	mv	a5,a4
    800031d8:	0080006f          	j	800031e0 <_ZdlPv+0x40>
    800031dc:	00000793          	li	a5,0
                newSeg->next=nullptr;
    800031e0:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    800031e4:	04000713          	li	a4,64
    800031e8:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    800031ec:	00f53423          	sd	a5,8(a0)
                if(cur) {
    800031f0:	04078e63          	beqz	a5,8000324c <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    800031f4:	0007b703          	ld	a4,0(a5)
    800031f8:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    800031fc:	00053703          	ld	a4,0(a0)
    80003200:	00070463          	beqz	a4,80003208 <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    80003204:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80003208:	04078c63          	beqz	a5,80003260 <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    8000320c:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80003210:	00050c63          	beqz	a0,80003228 <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80003214:	00053703          	ld	a4,0(a0)
    80003218:	00070863          	beqz	a4,80003228 <_ZdlPv+0x88>
    8000321c:	01053683          	ld	a3,16(a0)
    80003220:	00d50633          	add	a2,a0,a3
    80003224:	04c70663          	beq	a4,a2,80003270 <_ZdlPv+0xd0>
        if (!curr) return;
    80003228:	00078c63          	beqz	a5,80003240 <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000322c:	0007b703          	ld	a4,0(a5)
    80003230:	00070863          	beqz	a4,80003240 <_ZdlPv+0xa0>
    80003234:	0107b683          	ld	a3,16(a5)
    80003238:	00d78633          	add	a2,a5,a3
    8000323c:	04c70a63          	beq	a4,a2,80003290 <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    80003240:	00813403          	ld	s0,8(sp)
    80003244:	01010113          	addi	sp,sp,16
    80003248:	00008067          	ret
                    newSeg->next = fmem_head;
    8000324c:	00004717          	auipc	a4,0x4
    80003250:	acc73703          	ld	a4,-1332(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003254:	00073703          	ld	a4,0(a4)
    80003258:	00e53023          	sd	a4,0(a0)
    8000325c:	fa1ff06f          	j	800031fc <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    80003260:	00004717          	auipc	a4,0x4
    80003264:	ab873703          	ld	a4,-1352(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003268:	00a73023          	sd	a0,0(a4)
    8000326c:	fa5ff06f          	j	80003210 <_ZdlPv+0x70>
            curr->size += curr->next->size;
    80003270:	01073603          	ld	a2,16(a4)
    80003274:	00c686b3          	add	a3,a3,a2
    80003278:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    8000327c:	00073703          	ld	a4,0(a4)
    80003280:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80003284:	fa0702e3          	beqz	a4,80003228 <_ZdlPv+0x88>
    80003288:	00a73423          	sd	a0,8(a4)
    8000328c:	f9dff06f          	j	80003228 <_ZdlPv+0x88>
            curr->size += curr->next->size;
    80003290:	01073603          	ld	a2,16(a4)
    80003294:	00c686b3          	add	a3,a3,a2
    80003298:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    8000329c:	00073703          	ld	a4,0(a4)
    800032a0:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    800032a4:	f8070ee3          	beqz	a4,80003240 <_ZdlPv+0xa0>
    800032a8:	00f73423          	sd	a5,8(a4)
    800032ac:	f95ff06f          	j	80003240 <_ZdlPv+0xa0>

00000000800032b0 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    800032b0:	ff010113          	addi	sp,sp,-16
    800032b4:	00813423          	sd	s0,8(sp)
    800032b8:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    800032bc:	00004797          	auipc	a5,0x4
    800032c0:	a5c7b783          	ld	a5,-1444(a5) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    800032c4:	0007b703          	ld	a4,0(a5)
    800032c8:	00070e63          	beqz	a4,800032e4 <_ZdaPv+0x34>
    800032cc:	02e56063          	bltu	a0,a4,800032ec <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800032d0:	00070793          	mv	a5,a4
    800032d4:	00073703          	ld	a4,0(a4)
    800032d8:	00e50c63          	beq	a0,a4,800032f0 <_ZdaPv+0x40>
    800032dc:	fea76ae3          	bltu	a4,a0,800032d0 <_ZdaPv+0x20>
    800032e0:	0100006f          	j	800032f0 <_ZdaPv+0x40>
            cur=nullptr;
    800032e4:	00070793          	mv	a5,a4
    800032e8:	0080006f          	j	800032f0 <_ZdaPv+0x40>
    800032ec:	00000793          	li	a5,0
                newSeg->next=nullptr;
    800032f0:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    800032f4:	04000713          	li	a4,64
    800032f8:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    800032fc:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80003300:	04078e63          	beqz	a5,8000335c <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    80003304:	0007b703          	ld	a4,0(a5)
    80003308:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    8000330c:	00053703          	ld	a4,0(a0)
    80003310:	00070463          	beqz	a4,80003318 <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    80003314:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80003318:	04078c63          	beqz	a5,80003370 <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    8000331c:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80003320:	00050c63          	beqz	a0,80003338 <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80003324:	00053703          	ld	a4,0(a0)
    80003328:	00070863          	beqz	a4,80003338 <_ZdaPv+0x88>
    8000332c:	01053683          	ld	a3,16(a0)
    80003330:	00d50633          	add	a2,a0,a3
    80003334:	04c70663          	beq	a4,a2,80003380 <_ZdaPv+0xd0>
        if (!curr) return;
    80003338:	00078c63          	beqz	a5,80003350 <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000333c:	0007b703          	ld	a4,0(a5)
    80003340:	00070863          	beqz	a4,80003350 <_ZdaPv+0xa0>
    80003344:	0107b683          	ld	a3,16(a5)
    80003348:	00d78633          	add	a2,a5,a3
    8000334c:	04c70a63          	beq	a4,a2,800033a0 <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
    80003350:	00813403          	ld	s0,8(sp)
    80003354:	01010113          	addi	sp,sp,16
    80003358:	00008067          	ret
                    newSeg->next = fmem_head;
    8000335c:	00004717          	auipc	a4,0x4
    80003360:	9bc73703          	ld	a4,-1604(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003364:	00073703          	ld	a4,0(a4)
    80003368:	00e53023          	sd	a4,0(a0)
    8000336c:	fa1ff06f          	j	8000330c <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    80003370:	00004717          	auipc	a4,0x4
    80003374:	9a873703          	ld	a4,-1624(a4) # 80006d18 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003378:	00a73023          	sd	a0,0(a4)
    8000337c:	fa5ff06f          	j	80003320 <_ZdaPv+0x70>
            curr->size += curr->next->size;
    80003380:	01073603          	ld	a2,16(a4)
    80003384:	00c686b3          	add	a3,a3,a2
    80003388:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    8000338c:	00073703          	ld	a4,0(a4)
    80003390:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80003394:	fa0702e3          	beqz	a4,80003338 <_ZdaPv+0x88>
    80003398:	00a73423          	sd	a0,8(a4)
    8000339c:	f9dff06f          	j	80003338 <_ZdaPv+0x88>
            curr->size += curr->next->size;
    800033a0:	01073603          	ld	a2,16(a4)
    800033a4:	00c686b3          	add	a3,a3,a2
    800033a8:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    800033ac:	00073703          	ld	a4,0(a4)
    800033b0:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    800033b4:	f8070ee3          	beqz	a4,80003350 <_ZdaPv+0xa0>
    800033b8:	00f73423          	sd	a5,8(a4)
    800033bc:	f95ff06f          	j	80003350 <_ZdaPv+0xa0>

00000000800033c0 <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00813423          	sd	s0,8(sp)
    800033c8:	01010413          	addi	s0,sp,16
    800033cc:	00100793          	li	a5,1
    800033d0:	00f50863          	beq	a0,a5,800033e0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800033d4:	00813403          	ld	s0,8(sp)
    800033d8:	01010113          	addi	sp,sp,16
    800033dc:	00008067          	ret
    800033e0:	000107b7          	lui	a5,0x10
    800033e4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800033e8:	fef596e3          	bne	a1,a5,800033d4 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    800033ec:	00004797          	auipc	a5,0x4
    800033f0:	90c7b783          	ld	a5,-1780(a5) # 80006cf8 <_GLOBAL_OFFSET_TABLE_+0x8>
    800033f4:	0007b783          	ld	a5,0(a5)
    800033f8:	00004717          	auipc	a4,0x4
    800033fc:	9ef73023          	sd	a5,-1568(a4) # 80006dd8 <_ZN16MemoryAllocation9fmem_headE>
    80003400:	fd5ff06f          	j	800033d4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003404 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    80003404:	ff010113          	addi	sp,sp,-16
    80003408:	00113423          	sd	ra,8(sp)
    8000340c:	00813023          	sd	s0,0(sp)
    80003410:	01010413          	addi	s0,sp,16
    80003414:	000105b7          	lui	a1,0x10
    80003418:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000341c:	00100513          	li	a0,1
    80003420:	00000097          	auipc	ra,0x0
    80003424:	fa0080e7          	jalr	-96(ra) # 800033c0 <_Z41__static_initialization_and_destruction_0ii>
    80003428:	00813083          	ld	ra,8(sp)
    8000342c:	00013403          	ld	s0,0(sp)
    80003430:	01010113          	addi	sp,sp,16
    80003434:	00008067          	ret

0000000080003438 <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"
//TODO PROMENI SVE BUFFER PUTC I GETC
Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003438:	fe010113          	addi	sp,sp,-32
    8000343c:	00113c23          	sd	ra,24(sp)
    80003440:	00813823          	sd	s0,16(sp)
    80003444:	00913423          	sd	s1,8(sp)
    80003448:	01213023          	sd	s2,0(sp)
    8000344c:	02010413          	addi	s0,sp,32
    80003450:	00050493          	mv	s1,a0
    80003454:	00058913          	mv	s2,a1
    80003458:	0015879b          	addiw	a5,a1,1
    8000345c:	0007851b          	sext.w	a0,a5
    80003460:	00f4a023          	sw	a5,0(s1)
    80003464:	0004a823          	sw	zero,16(s1)
    80003468:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000346c:	00251513          	slli	a0,a0,0x2
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	dd4080e7          	jalr	-556(ra) # 80001244 <_Z9mem_allocm>
    80003478:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000347c:	00000593          	li	a1,0
    80003480:	02048513          	addi	a0,s1,32
    80003484:	ffffe097          	auipc	ra,0xffffe
    80003488:	ea4080e7          	jalr	-348(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&spaceAvailable, _cap);
    8000348c:	00090593          	mv	a1,s2
    80003490:	01848513          	addi	a0,s1,24
    80003494:	ffffe097          	auipc	ra,0xffffe
    80003498:	e94080e7          	jalr	-364(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexHead, 1);
    8000349c:	00100593          	li	a1,1
    800034a0:	02848513          	addi	a0,s1,40
    800034a4:	ffffe097          	auipc	ra,0xffffe
    800034a8:	e84080e7          	jalr	-380(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexTail, 1);
    800034ac:	00100593          	li	a1,1
    800034b0:	03048513          	addi	a0,s1,48
    800034b4:	ffffe097          	auipc	ra,0xffffe
    800034b8:	e74080e7          	jalr	-396(ra) # 80001328 <_Z8sem_openPP9semaphorej>
}
    800034bc:	01813083          	ld	ra,24(sp)
    800034c0:	01013403          	ld	s0,16(sp)
    800034c4:	00813483          	ld	s1,8(sp)
    800034c8:	00013903          	ld	s2,0(sp)
    800034cc:	02010113          	addi	sp,sp,32
    800034d0:	00008067          	ret

00000000800034d4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800034d4:	fe010113          	addi	sp,sp,-32
    800034d8:	00113c23          	sd	ra,24(sp)
    800034dc:	00813823          	sd	s0,16(sp)
    800034e0:	00913423          	sd	s1,8(sp)
    800034e4:	01213023          	sd	s2,0(sp)
    800034e8:	02010413          	addi	s0,sp,32
    800034ec:	00050493          	mv	s1,a0
    800034f0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800034f4:	01853503          	ld	a0,24(a0)
    800034f8:	ffffe097          	auipc	ra,0xffffe
    800034fc:	e94080e7          	jalr	-364(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexTail);
    80003500:	0304b503          	ld	a0,48(s1)
    80003504:	ffffe097          	auipc	ra,0xffffe
    80003508:	e88080e7          	jalr	-376(ra) # 8000138c <_Z8sem_waitP9semaphore>
    buffer[tail] = val;
    8000350c:	0084b783          	ld	a5,8(s1)
    80003510:	0144a703          	lw	a4,20(s1)
    80003514:	00271713          	slli	a4,a4,0x2
    80003518:	00e787b3          	add	a5,a5,a4
    8000351c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003520:	0144a783          	lw	a5,20(s1)
    80003524:	0017879b          	addiw	a5,a5,1
    80003528:	0004a703          	lw	a4,0(s1)
    8000352c:	02e7e7bb          	remw	a5,a5,a4
    80003530:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003534:	0304b503          	ld	a0,48(s1)
    80003538:	ffffe097          	auipc	ra,0xffffe
    8000353c:	e84080e7          	jalr	-380(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(itemAvailable);
    80003540:	0204b503          	ld	a0,32(s1)
    80003544:	ffffe097          	auipc	ra,0xffffe
    80003548:	e78080e7          	jalr	-392(ra) # 800013bc <_Z10sem_signalP9semaphore>

}
    8000354c:	01813083          	ld	ra,24(sp)
    80003550:	01013403          	ld	s0,16(sp)
    80003554:	00813483          	ld	s1,8(sp)
    80003558:	00013903          	ld	s2,0(sp)
    8000355c:	02010113          	addi	sp,sp,32
    80003560:	00008067          	ret

0000000080003564 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003564:	fe010113          	addi	sp,sp,-32
    80003568:	00113c23          	sd	ra,24(sp)
    8000356c:	00813823          	sd	s0,16(sp)
    80003570:	00913423          	sd	s1,8(sp)
    80003574:	01213023          	sd	s2,0(sp)
    80003578:	02010413          	addi	s0,sp,32
    8000357c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003580:	02053503          	ld	a0,32(a0)
    80003584:	ffffe097          	auipc	ra,0xffffe
    80003588:	e08080e7          	jalr	-504(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexHead);
    8000358c:	0284b503          	ld	a0,40(s1)
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	dfc080e7          	jalr	-516(ra) # 8000138c <_Z8sem_waitP9semaphore>

    int ret = buffer[head];
    80003598:	0084b703          	ld	a4,8(s1)
    8000359c:	0104a783          	lw	a5,16(s1)
    800035a0:	00279693          	slli	a3,a5,0x2
    800035a4:	00d70733          	add	a4,a4,a3
    800035a8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800035ac:	0017879b          	addiw	a5,a5,1
    800035b0:	0004a703          	lw	a4,0(s1)
    800035b4:	02e7e7bb          	remw	a5,a5,a4
    800035b8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800035bc:	0284b503          	ld	a0,40(s1)
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	dfc080e7          	jalr	-516(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(spaceAvailable);
    800035c8:	0184b503          	ld	a0,24(s1)
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	df0080e7          	jalr	-528(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    800035d4:	00090513          	mv	a0,s2
    800035d8:	01813083          	ld	ra,24(sp)
    800035dc:	01013403          	ld	s0,16(sp)
    800035e0:	00813483          	ld	s1,8(sp)
    800035e4:	00013903          	ld	s2,0(sp)
    800035e8:	02010113          	addi	sp,sp,32
    800035ec:	00008067          	ret

00000000800035f0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800035f0:	fe010113          	addi	sp,sp,-32
    800035f4:	00113c23          	sd	ra,24(sp)
    800035f8:	00813823          	sd	s0,16(sp)
    800035fc:	00913423          	sd	s1,8(sp)
    80003600:	01213023          	sd	s2,0(sp)
    80003604:	02010413          	addi	s0,sp,32
    80003608:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000360c:	02853503          	ld	a0,40(a0)
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	d7c080e7          	jalr	-644(ra) # 8000138c <_Z8sem_waitP9semaphore>
    sem_wait(mutexTail);
    80003618:	0304b503          	ld	a0,48(s1)
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	d70080e7          	jalr	-656(ra) # 8000138c <_Z8sem_waitP9semaphore>

    if (tail >= head) {
    80003624:	0144a783          	lw	a5,20(s1)
    80003628:	0104a903          	lw	s2,16(s1)
    8000362c:	0327ce63          	blt	a5,s2,80003668 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003630:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003634:	0304b503          	ld	a0,48(s1)
    80003638:	ffffe097          	auipc	ra,0xffffe
    8000363c:	d84080e7          	jalr	-636(ra) # 800013bc <_Z10sem_signalP9semaphore>
    sem_signal(mutexHead);
    80003640:	0284b503          	ld	a0,40(s1)
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	d78080e7          	jalr	-648(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    8000364c:	00090513          	mv	a0,s2
    80003650:	01813083          	ld	ra,24(sp)
    80003654:	01013403          	ld	s0,16(sp)
    80003658:	00813483          	ld	s1,8(sp)
    8000365c:	00013903          	ld	s2,0(sp)
    80003660:	02010113          	addi	sp,sp,32
    80003664:	00008067          	ret
        ret = cap - head + tail;
    80003668:	0004a703          	lw	a4,0(s1)
    8000366c:	4127093b          	subw	s2,a4,s2
    80003670:	00f9093b          	addw	s2,s2,a5
    80003674:	fc1ff06f          	j	80003634 <_ZN6Buffer6getCntEv+0x44>

0000000080003678 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003678:	fe010113          	addi	sp,sp,-32
    8000367c:	00113c23          	sd	ra,24(sp)
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	02010413          	addi	s0,sp,32
    8000368c:	00050493          	mv	s1,a0
    putc('\n');
    80003690:	00a00513          	li	a0,10
    80003694:	ffffe097          	auipc	ra,0xffffe
    80003698:	d84080e7          	jalr	-636(ra) # 80001418 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000369c:	00003517          	auipc	a0,0x3
    800036a0:	a6c50513          	addi	a0,a0,-1428 # 80006108 <CONSOLE_STATUS+0xf8>
    800036a4:	fffff097          	auipc	ra,0xfffff
    800036a8:	a40080e7          	jalr	-1472(ra) # 800020e4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800036ac:	00048513          	mv	a0,s1
    800036b0:	00000097          	auipc	ra,0x0
    800036b4:	f40080e7          	jalr	-192(ra) # 800035f0 <_ZN6Buffer6getCntEv>
    800036b8:	02a05c63          	blez	a0,800036f0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800036bc:	0084b783          	ld	a5,8(s1)
    800036c0:	0104a703          	lw	a4,16(s1)
    800036c4:	00271713          	slli	a4,a4,0x2
    800036c8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800036cc:	0007c503          	lbu	a0,0(a5)
    800036d0:	ffffe097          	auipc	ra,0xffffe
    800036d4:	d48080e7          	jalr	-696(ra) # 80001418 <_Z4putcc>
        head = (head + 1) % cap;
    800036d8:	0104a783          	lw	a5,16(s1)
    800036dc:	0017879b          	addiw	a5,a5,1
    800036e0:	0004a703          	lw	a4,0(s1)
    800036e4:	02e7e7bb          	remw	a5,a5,a4
    800036e8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800036ec:	fc1ff06f          	j	800036ac <_ZN6BufferD1Ev+0x34>
    putc('!');
    800036f0:	02100513          	li	a0,33
    800036f4:	ffffe097          	auipc	ra,0xffffe
    800036f8:	d24080e7          	jalr	-732(ra) # 80001418 <_Z4putcc>
    putc('\n');
    800036fc:	00a00513          	li	a0,10
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	d18080e7          	jalr	-744(ra) # 80001418 <_Z4putcc>
    mem_free(buffer);
    80003708:	0084b503          	ld	a0,8(s1)
    8000370c:	ffffe097          	auipc	ra,0xffffe
    80003710:	b64080e7          	jalr	-1180(ra) # 80001270 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003714:	0204b503          	ld	a0,32(s1)
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	c44080e7          	jalr	-956(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(spaceAvailable);
    80003720:	0184b503          	ld	a0,24(s1)
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	c38080e7          	jalr	-968(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexTail);
    8000372c:	0304b503          	ld	a0,48(s1)
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	c2c080e7          	jalr	-980(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexHead);
    80003738:	0284b503          	ld	a0,40(s1)
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	c20080e7          	jalr	-992(ra) # 8000135c <_Z9sem_closeP9semaphore>
}
    80003744:	01813083          	ld	ra,24(sp)
    80003748:	01013403          	ld	s0,16(sp)
    8000374c:	00813483          	ld	s1,8(sp)
    80003750:	02010113          	addi	sp,sp,32
    80003754:	00008067          	ret

0000000080003758 <start>:
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00813423          	sd	s0,8(sp)
    80003760:	01010413          	addi	s0,sp,16
    80003764:	300027f3          	csrr	a5,mstatus
    80003768:	ffffe737          	lui	a4,0xffffe
    8000376c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff67af>
    80003770:	00e7f7b3          	and	a5,a5,a4
    80003774:	00001737          	lui	a4,0x1
    80003778:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000377c:	00e7e7b3          	or	a5,a5,a4
    80003780:	30079073          	csrw	mstatus,a5
    80003784:	00000797          	auipc	a5,0x0
    80003788:	16078793          	addi	a5,a5,352 # 800038e4 <system_main>
    8000378c:	34179073          	csrw	mepc,a5
    80003790:	00000793          	li	a5,0
    80003794:	18079073          	csrw	satp,a5
    80003798:	000107b7          	lui	a5,0x10
    8000379c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800037a0:	30279073          	csrw	medeleg,a5
    800037a4:	30379073          	csrw	mideleg,a5
    800037a8:	104027f3          	csrr	a5,sie
    800037ac:	2227e793          	ori	a5,a5,546
    800037b0:	10479073          	csrw	sie,a5
    800037b4:	fff00793          	li	a5,-1
    800037b8:	00a7d793          	srli	a5,a5,0xa
    800037bc:	3b079073          	csrw	pmpaddr0,a5
    800037c0:	00f00793          	li	a5,15
    800037c4:	3a079073          	csrw	pmpcfg0,a5
    800037c8:	f14027f3          	csrr	a5,mhartid
    800037cc:	0200c737          	lui	a4,0x200c
    800037d0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800037d4:	0007869b          	sext.w	a3,a5
    800037d8:	00269713          	slli	a4,a3,0x2
    800037dc:	000f4637          	lui	a2,0xf4
    800037e0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800037e4:	00d70733          	add	a4,a4,a3
    800037e8:	0037979b          	slliw	a5,a5,0x3
    800037ec:	020046b7          	lui	a3,0x2004
    800037f0:	00d787b3          	add	a5,a5,a3
    800037f4:	00c585b3          	add	a1,a1,a2
    800037f8:	00371693          	slli	a3,a4,0x3
    800037fc:	00003717          	auipc	a4,0x3
    80003800:	5f470713          	addi	a4,a4,1524 # 80006df0 <timer_scratch>
    80003804:	00b7b023          	sd	a1,0(a5)
    80003808:	00d70733          	add	a4,a4,a3
    8000380c:	00f73c23          	sd	a5,24(a4)
    80003810:	02c73023          	sd	a2,32(a4)
    80003814:	34071073          	csrw	mscratch,a4
    80003818:	00000797          	auipc	a5,0x0
    8000381c:	6e878793          	addi	a5,a5,1768 # 80003f00 <timervec>
    80003820:	30579073          	csrw	mtvec,a5
    80003824:	300027f3          	csrr	a5,mstatus
    80003828:	0087e793          	ori	a5,a5,8
    8000382c:	30079073          	csrw	mstatus,a5
    80003830:	304027f3          	csrr	a5,mie
    80003834:	0807e793          	ori	a5,a5,128
    80003838:	30479073          	csrw	mie,a5
    8000383c:	f14027f3          	csrr	a5,mhartid
    80003840:	0007879b          	sext.w	a5,a5
    80003844:	00078213          	mv	tp,a5
    80003848:	30200073          	mret
    8000384c:	00813403          	ld	s0,8(sp)
    80003850:	01010113          	addi	sp,sp,16
    80003854:	00008067          	ret

0000000080003858 <timerinit>:
    80003858:	ff010113          	addi	sp,sp,-16
    8000385c:	00813423          	sd	s0,8(sp)
    80003860:	01010413          	addi	s0,sp,16
    80003864:	f14027f3          	csrr	a5,mhartid
    80003868:	0200c737          	lui	a4,0x200c
    8000386c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003870:	0007869b          	sext.w	a3,a5
    80003874:	00269713          	slli	a4,a3,0x2
    80003878:	000f4637          	lui	a2,0xf4
    8000387c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003880:	00d70733          	add	a4,a4,a3
    80003884:	0037979b          	slliw	a5,a5,0x3
    80003888:	020046b7          	lui	a3,0x2004
    8000388c:	00d787b3          	add	a5,a5,a3
    80003890:	00c585b3          	add	a1,a1,a2
    80003894:	00371693          	slli	a3,a4,0x3
    80003898:	00003717          	auipc	a4,0x3
    8000389c:	55870713          	addi	a4,a4,1368 # 80006df0 <timer_scratch>
    800038a0:	00b7b023          	sd	a1,0(a5)
    800038a4:	00d70733          	add	a4,a4,a3
    800038a8:	00f73c23          	sd	a5,24(a4)
    800038ac:	02c73023          	sd	a2,32(a4)
    800038b0:	34071073          	csrw	mscratch,a4
    800038b4:	00000797          	auipc	a5,0x0
    800038b8:	64c78793          	addi	a5,a5,1612 # 80003f00 <timervec>
    800038bc:	30579073          	csrw	mtvec,a5
    800038c0:	300027f3          	csrr	a5,mstatus
    800038c4:	0087e793          	ori	a5,a5,8
    800038c8:	30079073          	csrw	mstatus,a5
    800038cc:	304027f3          	csrr	a5,mie
    800038d0:	0807e793          	ori	a5,a5,128
    800038d4:	30479073          	csrw	mie,a5
    800038d8:	00813403          	ld	s0,8(sp)
    800038dc:	01010113          	addi	sp,sp,16
    800038e0:	00008067          	ret

00000000800038e4 <system_main>:
    800038e4:	fe010113          	addi	sp,sp,-32
    800038e8:	00813823          	sd	s0,16(sp)
    800038ec:	00913423          	sd	s1,8(sp)
    800038f0:	00113c23          	sd	ra,24(sp)
    800038f4:	02010413          	addi	s0,sp,32
    800038f8:	00000097          	auipc	ra,0x0
    800038fc:	0c4080e7          	jalr	196(ra) # 800039bc <cpuid>
    80003900:	00003497          	auipc	s1,0x3
    80003904:	46048493          	addi	s1,s1,1120 # 80006d60 <started>
    80003908:	02050263          	beqz	a0,8000392c <system_main+0x48>
    8000390c:	0004a783          	lw	a5,0(s1)
    80003910:	0007879b          	sext.w	a5,a5
    80003914:	fe078ce3          	beqz	a5,8000390c <system_main+0x28>
    80003918:	0ff0000f          	fence
    8000391c:	00003517          	auipc	a0,0x3
    80003920:	83450513          	addi	a0,a0,-1996 # 80006150 <CONSOLE_STATUS+0x140>
    80003924:	00001097          	auipc	ra,0x1
    80003928:	a78080e7          	jalr	-1416(ra) # 8000439c <panic>
    8000392c:	00001097          	auipc	ra,0x1
    80003930:	9cc080e7          	jalr	-1588(ra) # 800042f8 <consoleinit>
    80003934:	00001097          	auipc	ra,0x1
    80003938:	158080e7          	jalr	344(ra) # 80004a8c <printfinit>
    8000393c:	00002517          	auipc	a0,0x2
    80003940:	71c50513          	addi	a0,a0,1820 # 80006058 <CONSOLE_STATUS+0x48>
    80003944:	00001097          	auipc	ra,0x1
    80003948:	ab4080e7          	jalr	-1356(ra) # 800043f8 <__printf>
    8000394c:	00002517          	auipc	a0,0x2
    80003950:	7d450513          	addi	a0,a0,2004 # 80006120 <CONSOLE_STATUS+0x110>
    80003954:	00001097          	auipc	ra,0x1
    80003958:	aa4080e7          	jalr	-1372(ra) # 800043f8 <__printf>
    8000395c:	00002517          	auipc	a0,0x2
    80003960:	6fc50513          	addi	a0,a0,1788 # 80006058 <CONSOLE_STATUS+0x48>
    80003964:	00001097          	auipc	ra,0x1
    80003968:	a94080e7          	jalr	-1388(ra) # 800043f8 <__printf>
    8000396c:	00001097          	auipc	ra,0x1
    80003970:	4ac080e7          	jalr	1196(ra) # 80004e18 <kinit>
    80003974:	00000097          	auipc	ra,0x0
    80003978:	148080e7          	jalr	328(ra) # 80003abc <trapinit>
    8000397c:	00000097          	auipc	ra,0x0
    80003980:	16c080e7          	jalr	364(ra) # 80003ae8 <trapinithart>
    80003984:	00000097          	auipc	ra,0x0
    80003988:	5bc080e7          	jalr	1468(ra) # 80003f40 <plicinit>
    8000398c:	00000097          	auipc	ra,0x0
    80003990:	5dc080e7          	jalr	1500(ra) # 80003f68 <plicinithart>
    80003994:	00000097          	auipc	ra,0x0
    80003998:	078080e7          	jalr	120(ra) # 80003a0c <userinit>
    8000399c:	0ff0000f          	fence
    800039a0:	00100793          	li	a5,1
    800039a4:	00002517          	auipc	a0,0x2
    800039a8:	79450513          	addi	a0,a0,1940 # 80006138 <CONSOLE_STATUS+0x128>
    800039ac:	00f4a023          	sw	a5,0(s1)
    800039b0:	00001097          	auipc	ra,0x1
    800039b4:	a48080e7          	jalr	-1464(ra) # 800043f8 <__printf>
    800039b8:	0000006f          	j	800039b8 <system_main+0xd4>

00000000800039bc <cpuid>:
    800039bc:	ff010113          	addi	sp,sp,-16
    800039c0:	00813423          	sd	s0,8(sp)
    800039c4:	01010413          	addi	s0,sp,16
    800039c8:	00020513          	mv	a0,tp
    800039cc:	00813403          	ld	s0,8(sp)
    800039d0:	0005051b          	sext.w	a0,a0
    800039d4:	01010113          	addi	sp,sp,16
    800039d8:	00008067          	ret

00000000800039dc <mycpu>:
    800039dc:	ff010113          	addi	sp,sp,-16
    800039e0:	00813423          	sd	s0,8(sp)
    800039e4:	01010413          	addi	s0,sp,16
    800039e8:	00020793          	mv	a5,tp
    800039ec:	00813403          	ld	s0,8(sp)
    800039f0:	0007879b          	sext.w	a5,a5
    800039f4:	00779793          	slli	a5,a5,0x7
    800039f8:	00004517          	auipc	a0,0x4
    800039fc:	42850513          	addi	a0,a0,1064 # 80007e20 <cpus>
    80003a00:	00f50533          	add	a0,a0,a5
    80003a04:	01010113          	addi	sp,sp,16
    80003a08:	00008067          	ret

0000000080003a0c <userinit>:
    80003a0c:	ff010113          	addi	sp,sp,-16
    80003a10:	00813423          	sd	s0,8(sp)
    80003a14:	01010413          	addi	s0,sp,16
    80003a18:	00813403          	ld	s0,8(sp)
    80003a1c:	01010113          	addi	sp,sp,16
    80003a20:	fffff317          	auipc	t1,0xfffff
    80003a24:	0a830067          	jr	168(t1) # 80002ac8 <main>

0000000080003a28 <either_copyout>:
    80003a28:	ff010113          	addi	sp,sp,-16
    80003a2c:	00813023          	sd	s0,0(sp)
    80003a30:	00113423          	sd	ra,8(sp)
    80003a34:	01010413          	addi	s0,sp,16
    80003a38:	02051663          	bnez	a0,80003a64 <either_copyout+0x3c>
    80003a3c:	00058513          	mv	a0,a1
    80003a40:	00060593          	mv	a1,a2
    80003a44:	0006861b          	sext.w	a2,a3
    80003a48:	00002097          	auipc	ra,0x2
    80003a4c:	c5c080e7          	jalr	-932(ra) # 800056a4 <__memmove>
    80003a50:	00813083          	ld	ra,8(sp)
    80003a54:	00013403          	ld	s0,0(sp)
    80003a58:	00000513          	li	a0,0
    80003a5c:	01010113          	addi	sp,sp,16
    80003a60:	00008067          	ret
    80003a64:	00002517          	auipc	a0,0x2
    80003a68:	71450513          	addi	a0,a0,1812 # 80006178 <CONSOLE_STATUS+0x168>
    80003a6c:	00001097          	auipc	ra,0x1
    80003a70:	930080e7          	jalr	-1744(ra) # 8000439c <panic>

0000000080003a74 <either_copyin>:
    80003a74:	ff010113          	addi	sp,sp,-16
    80003a78:	00813023          	sd	s0,0(sp)
    80003a7c:	00113423          	sd	ra,8(sp)
    80003a80:	01010413          	addi	s0,sp,16
    80003a84:	02059463          	bnez	a1,80003aac <either_copyin+0x38>
    80003a88:	00060593          	mv	a1,a2
    80003a8c:	0006861b          	sext.w	a2,a3
    80003a90:	00002097          	auipc	ra,0x2
    80003a94:	c14080e7          	jalr	-1004(ra) # 800056a4 <__memmove>
    80003a98:	00813083          	ld	ra,8(sp)
    80003a9c:	00013403          	ld	s0,0(sp)
    80003aa0:	00000513          	li	a0,0
    80003aa4:	01010113          	addi	sp,sp,16
    80003aa8:	00008067          	ret
    80003aac:	00002517          	auipc	a0,0x2
    80003ab0:	6f450513          	addi	a0,a0,1780 # 800061a0 <CONSOLE_STATUS+0x190>
    80003ab4:	00001097          	auipc	ra,0x1
    80003ab8:	8e8080e7          	jalr	-1816(ra) # 8000439c <panic>

0000000080003abc <trapinit>:
    80003abc:	ff010113          	addi	sp,sp,-16
    80003ac0:	00813423          	sd	s0,8(sp)
    80003ac4:	01010413          	addi	s0,sp,16
    80003ac8:	00813403          	ld	s0,8(sp)
    80003acc:	00002597          	auipc	a1,0x2
    80003ad0:	6fc58593          	addi	a1,a1,1788 # 800061c8 <CONSOLE_STATUS+0x1b8>
    80003ad4:	00004517          	auipc	a0,0x4
    80003ad8:	3cc50513          	addi	a0,a0,972 # 80007ea0 <tickslock>
    80003adc:	01010113          	addi	sp,sp,16
    80003ae0:	00001317          	auipc	t1,0x1
    80003ae4:	5c830067          	jr	1480(t1) # 800050a8 <initlock>

0000000080003ae8 <trapinithart>:
    80003ae8:	ff010113          	addi	sp,sp,-16
    80003aec:	00813423          	sd	s0,8(sp)
    80003af0:	01010413          	addi	s0,sp,16
    80003af4:	00000797          	auipc	a5,0x0
    80003af8:	2fc78793          	addi	a5,a5,764 # 80003df0 <kernelvec>
    80003afc:	10579073          	csrw	stvec,a5
    80003b00:	00813403          	ld	s0,8(sp)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <usertrap>:
    80003b0c:	ff010113          	addi	sp,sp,-16
    80003b10:	00813423          	sd	s0,8(sp)
    80003b14:	01010413          	addi	s0,sp,16
    80003b18:	00813403          	ld	s0,8(sp)
    80003b1c:	01010113          	addi	sp,sp,16
    80003b20:	00008067          	ret

0000000080003b24 <usertrapret>:
    80003b24:	ff010113          	addi	sp,sp,-16
    80003b28:	00813423          	sd	s0,8(sp)
    80003b2c:	01010413          	addi	s0,sp,16
    80003b30:	00813403          	ld	s0,8(sp)
    80003b34:	01010113          	addi	sp,sp,16
    80003b38:	00008067          	ret

0000000080003b3c <kerneltrap>:
    80003b3c:	fe010113          	addi	sp,sp,-32
    80003b40:	00813823          	sd	s0,16(sp)
    80003b44:	00113c23          	sd	ra,24(sp)
    80003b48:	00913423          	sd	s1,8(sp)
    80003b4c:	02010413          	addi	s0,sp,32
    80003b50:	142025f3          	csrr	a1,scause
    80003b54:	100027f3          	csrr	a5,sstatus
    80003b58:	0027f793          	andi	a5,a5,2
    80003b5c:	10079c63          	bnez	a5,80003c74 <kerneltrap+0x138>
    80003b60:	142027f3          	csrr	a5,scause
    80003b64:	0207ce63          	bltz	a5,80003ba0 <kerneltrap+0x64>
    80003b68:	00002517          	auipc	a0,0x2
    80003b6c:	6a850513          	addi	a0,a0,1704 # 80006210 <CONSOLE_STATUS+0x200>
    80003b70:	00001097          	auipc	ra,0x1
    80003b74:	888080e7          	jalr	-1912(ra) # 800043f8 <__printf>
    80003b78:	141025f3          	csrr	a1,sepc
    80003b7c:	14302673          	csrr	a2,stval
    80003b80:	00002517          	auipc	a0,0x2
    80003b84:	6a050513          	addi	a0,a0,1696 # 80006220 <CONSOLE_STATUS+0x210>
    80003b88:	00001097          	auipc	ra,0x1
    80003b8c:	870080e7          	jalr	-1936(ra) # 800043f8 <__printf>
    80003b90:	00002517          	auipc	a0,0x2
    80003b94:	6a850513          	addi	a0,a0,1704 # 80006238 <CONSOLE_STATUS+0x228>
    80003b98:	00001097          	auipc	ra,0x1
    80003b9c:	804080e7          	jalr	-2044(ra) # 8000439c <panic>
    80003ba0:	0ff7f713          	andi	a4,a5,255
    80003ba4:	00900693          	li	a3,9
    80003ba8:	04d70063          	beq	a4,a3,80003be8 <kerneltrap+0xac>
    80003bac:	fff00713          	li	a4,-1
    80003bb0:	03f71713          	slli	a4,a4,0x3f
    80003bb4:	00170713          	addi	a4,a4,1
    80003bb8:	fae798e3          	bne	a5,a4,80003b68 <kerneltrap+0x2c>
    80003bbc:	00000097          	auipc	ra,0x0
    80003bc0:	e00080e7          	jalr	-512(ra) # 800039bc <cpuid>
    80003bc4:	06050663          	beqz	a0,80003c30 <kerneltrap+0xf4>
    80003bc8:	144027f3          	csrr	a5,sip
    80003bcc:	ffd7f793          	andi	a5,a5,-3
    80003bd0:	14479073          	csrw	sip,a5
    80003bd4:	01813083          	ld	ra,24(sp)
    80003bd8:	01013403          	ld	s0,16(sp)
    80003bdc:	00813483          	ld	s1,8(sp)
    80003be0:	02010113          	addi	sp,sp,32
    80003be4:	00008067          	ret
    80003be8:	00000097          	auipc	ra,0x0
    80003bec:	3cc080e7          	jalr	972(ra) # 80003fb4 <plic_claim>
    80003bf0:	00a00793          	li	a5,10
    80003bf4:	00050493          	mv	s1,a0
    80003bf8:	06f50863          	beq	a0,a5,80003c68 <kerneltrap+0x12c>
    80003bfc:	fc050ce3          	beqz	a0,80003bd4 <kerneltrap+0x98>
    80003c00:	00050593          	mv	a1,a0
    80003c04:	00002517          	auipc	a0,0x2
    80003c08:	5ec50513          	addi	a0,a0,1516 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	7ec080e7          	jalr	2028(ra) # 800043f8 <__printf>
    80003c14:	01013403          	ld	s0,16(sp)
    80003c18:	01813083          	ld	ra,24(sp)
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	00813483          	ld	s1,8(sp)
    80003c24:	02010113          	addi	sp,sp,32
    80003c28:	00000317          	auipc	t1,0x0
    80003c2c:	3c430067          	jr	964(t1) # 80003fec <plic_complete>
    80003c30:	00004517          	auipc	a0,0x4
    80003c34:	27050513          	addi	a0,a0,624 # 80007ea0 <tickslock>
    80003c38:	00001097          	auipc	ra,0x1
    80003c3c:	494080e7          	jalr	1172(ra) # 800050cc <acquire>
    80003c40:	00003717          	auipc	a4,0x3
    80003c44:	12470713          	addi	a4,a4,292 # 80006d64 <ticks>
    80003c48:	00072783          	lw	a5,0(a4)
    80003c4c:	00004517          	auipc	a0,0x4
    80003c50:	25450513          	addi	a0,a0,596 # 80007ea0 <tickslock>
    80003c54:	0017879b          	addiw	a5,a5,1
    80003c58:	00f72023          	sw	a5,0(a4)
    80003c5c:	00001097          	auipc	ra,0x1
    80003c60:	53c080e7          	jalr	1340(ra) # 80005198 <release>
    80003c64:	f65ff06f          	j	80003bc8 <kerneltrap+0x8c>
    80003c68:	00001097          	auipc	ra,0x1
    80003c6c:	098080e7          	jalr	152(ra) # 80004d00 <uartintr>
    80003c70:	fa5ff06f          	j	80003c14 <kerneltrap+0xd8>
    80003c74:	00002517          	auipc	a0,0x2
    80003c78:	55c50513          	addi	a0,a0,1372 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80003c7c:	00000097          	auipc	ra,0x0
    80003c80:	720080e7          	jalr	1824(ra) # 8000439c <panic>

0000000080003c84 <clockintr>:
    80003c84:	fe010113          	addi	sp,sp,-32
    80003c88:	00813823          	sd	s0,16(sp)
    80003c8c:	00913423          	sd	s1,8(sp)
    80003c90:	00113c23          	sd	ra,24(sp)
    80003c94:	02010413          	addi	s0,sp,32
    80003c98:	00004497          	auipc	s1,0x4
    80003c9c:	20848493          	addi	s1,s1,520 # 80007ea0 <tickslock>
    80003ca0:	00048513          	mv	a0,s1
    80003ca4:	00001097          	auipc	ra,0x1
    80003ca8:	428080e7          	jalr	1064(ra) # 800050cc <acquire>
    80003cac:	00003717          	auipc	a4,0x3
    80003cb0:	0b870713          	addi	a4,a4,184 # 80006d64 <ticks>
    80003cb4:	00072783          	lw	a5,0(a4)
    80003cb8:	01013403          	ld	s0,16(sp)
    80003cbc:	01813083          	ld	ra,24(sp)
    80003cc0:	00048513          	mv	a0,s1
    80003cc4:	0017879b          	addiw	a5,a5,1
    80003cc8:	00813483          	ld	s1,8(sp)
    80003ccc:	00f72023          	sw	a5,0(a4)
    80003cd0:	02010113          	addi	sp,sp,32
    80003cd4:	00001317          	auipc	t1,0x1
    80003cd8:	4c430067          	jr	1220(t1) # 80005198 <release>

0000000080003cdc <devintr>:
    80003cdc:	142027f3          	csrr	a5,scause
    80003ce0:	00000513          	li	a0,0
    80003ce4:	0007c463          	bltz	a5,80003cec <devintr+0x10>
    80003ce8:	00008067          	ret
    80003cec:	fe010113          	addi	sp,sp,-32
    80003cf0:	00813823          	sd	s0,16(sp)
    80003cf4:	00113c23          	sd	ra,24(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	02010413          	addi	s0,sp,32
    80003d00:	0ff7f713          	andi	a4,a5,255
    80003d04:	00900693          	li	a3,9
    80003d08:	04d70c63          	beq	a4,a3,80003d60 <devintr+0x84>
    80003d0c:	fff00713          	li	a4,-1
    80003d10:	03f71713          	slli	a4,a4,0x3f
    80003d14:	00170713          	addi	a4,a4,1
    80003d18:	00e78c63          	beq	a5,a4,80003d30 <devintr+0x54>
    80003d1c:	01813083          	ld	ra,24(sp)
    80003d20:	01013403          	ld	s0,16(sp)
    80003d24:	00813483          	ld	s1,8(sp)
    80003d28:	02010113          	addi	sp,sp,32
    80003d2c:	00008067          	ret
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	c8c080e7          	jalr	-884(ra) # 800039bc <cpuid>
    80003d38:	06050663          	beqz	a0,80003da4 <devintr+0xc8>
    80003d3c:	144027f3          	csrr	a5,sip
    80003d40:	ffd7f793          	andi	a5,a5,-3
    80003d44:	14479073          	csrw	sip,a5
    80003d48:	01813083          	ld	ra,24(sp)
    80003d4c:	01013403          	ld	s0,16(sp)
    80003d50:	00813483          	ld	s1,8(sp)
    80003d54:	00200513          	li	a0,2
    80003d58:	02010113          	addi	sp,sp,32
    80003d5c:	00008067          	ret
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	254080e7          	jalr	596(ra) # 80003fb4 <plic_claim>
    80003d68:	00a00793          	li	a5,10
    80003d6c:	00050493          	mv	s1,a0
    80003d70:	06f50663          	beq	a0,a5,80003ddc <devintr+0x100>
    80003d74:	00100513          	li	a0,1
    80003d78:	fa0482e3          	beqz	s1,80003d1c <devintr+0x40>
    80003d7c:	00048593          	mv	a1,s1
    80003d80:	00002517          	auipc	a0,0x2
    80003d84:	47050513          	addi	a0,a0,1136 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003d88:	00000097          	auipc	ra,0x0
    80003d8c:	670080e7          	jalr	1648(ra) # 800043f8 <__printf>
    80003d90:	00048513          	mv	a0,s1
    80003d94:	00000097          	auipc	ra,0x0
    80003d98:	258080e7          	jalr	600(ra) # 80003fec <plic_complete>
    80003d9c:	00100513          	li	a0,1
    80003da0:	f7dff06f          	j	80003d1c <devintr+0x40>
    80003da4:	00004517          	auipc	a0,0x4
    80003da8:	0fc50513          	addi	a0,a0,252 # 80007ea0 <tickslock>
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	320080e7          	jalr	800(ra) # 800050cc <acquire>
    80003db4:	00003717          	auipc	a4,0x3
    80003db8:	fb070713          	addi	a4,a4,-80 # 80006d64 <ticks>
    80003dbc:	00072783          	lw	a5,0(a4)
    80003dc0:	00004517          	auipc	a0,0x4
    80003dc4:	0e050513          	addi	a0,a0,224 # 80007ea0 <tickslock>
    80003dc8:	0017879b          	addiw	a5,a5,1
    80003dcc:	00f72023          	sw	a5,0(a4)
    80003dd0:	00001097          	auipc	ra,0x1
    80003dd4:	3c8080e7          	jalr	968(ra) # 80005198 <release>
    80003dd8:	f65ff06f          	j	80003d3c <devintr+0x60>
    80003ddc:	00001097          	auipc	ra,0x1
    80003de0:	f24080e7          	jalr	-220(ra) # 80004d00 <uartintr>
    80003de4:	fadff06f          	j	80003d90 <devintr+0xb4>
	...

0000000080003df0 <kernelvec>:
    80003df0:	f0010113          	addi	sp,sp,-256
    80003df4:	00113023          	sd	ra,0(sp)
    80003df8:	00213423          	sd	sp,8(sp)
    80003dfc:	00313823          	sd	gp,16(sp)
    80003e00:	00413c23          	sd	tp,24(sp)
    80003e04:	02513023          	sd	t0,32(sp)
    80003e08:	02613423          	sd	t1,40(sp)
    80003e0c:	02713823          	sd	t2,48(sp)
    80003e10:	02813c23          	sd	s0,56(sp)
    80003e14:	04913023          	sd	s1,64(sp)
    80003e18:	04a13423          	sd	a0,72(sp)
    80003e1c:	04b13823          	sd	a1,80(sp)
    80003e20:	04c13c23          	sd	a2,88(sp)
    80003e24:	06d13023          	sd	a3,96(sp)
    80003e28:	06e13423          	sd	a4,104(sp)
    80003e2c:	06f13823          	sd	a5,112(sp)
    80003e30:	07013c23          	sd	a6,120(sp)
    80003e34:	09113023          	sd	a7,128(sp)
    80003e38:	09213423          	sd	s2,136(sp)
    80003e3c:	09313823          	sd	s3,144(sp)
    80003e40:	09413c23          	sd	s4,152(sp)
    80003e44:	0b513023          	sd	s5,160(sp)
    80003e48:	0b613423          	sd	s6,168(sp)
    80003e4c:	0b713823          	sd	s7,176(sp)
    80003e50:	0b813c23          	sd	s8,184(sp)
    80003e54:	0d913023          	sd	s9,192(sp)
    80003e58:	0da13423          	sd	s10,200(sp)
    80003e5c:	0db13823          	sd	s11,208(sp)
    80003e60:	0dc13c23          	sd	t3,216(sp)
    80003e64:	0fd13023          	sd	t4,224(sp)
    80003e68:	0fe13423          	sd	t5,232(sp)
    80003e6c:	0ff13823          	sd	t6,240(sp)
    80003e70:	ccdff0ef          	jal	ra,80003b3c <kerneltrap>
    80003e74:	00013083          	ld	ra,0(sp)
    80003e78:	00813103          	ld	sp,8(sp)
    80003e7c:	01013183          	ld	gp,16(sp)
    80003e80:	02013283          	ld	t0,32(sp)
    80003e84:	02813303          	ld	t1,40(sp)
    80003e88:	03013383          	ld	t2,48(sp)
    80003e8c:	03813403          	ld	s0,56(sp)
    80003e90:	04013483          	ld	s1,64(sp)
    80003e94:	04813503          	ld	a0,72(sp)
    80003e98:	05013583          	ld	a1,80(sp)
    80003e9c:	05813603          	ld	a2,88(sp)
    80003ea0:	06013683          	ld	a3,96(sp)
    80003ea4:	06813703          	ld	a4,104(sp)
    80003ea8:	07013783          	ld	a5,112(sp)
    80003eac:	07813803          	ld	a6,120(sp)
    80003eb0:	08013883          	ld	a7,128(sp)
    80003eb4:	08813903          	ld	s2,136(sp)
    80003eb8:	09013983          	ld	s3,144(sp)
    80003ebc:	09813a03          	ld	s4,152(sp)
    80003ec0:	0a013a83          	ld	s5,160(sp)
    80003ec4:	0a813b03          	ld	s6,168(sp)
    80003ec8:	0b013b83          	ld	s7,176(sp)
    80003ecc:	0b813c03          	ld	s8,184(sp)
    80003ed0:	0c013c83          	ld	s9,192(sp)
    80003ed4:	0c813d03          	ld	s10,200(sp)
    80003ed8:	0d013d83          	ld	s11,208(sp)
    80003edc:	0d813e03          	ld	t3,216(sp)
    80003ee0:	0e013e83          	ld	t4,224(sp)
    80003ee4:	0e813f03          	ld	t5,232(sp)
    80003ee8:	0f013f83          	ld	t6,240(sp)
    80003eec:	10010113          	addi	sp,sp,256
    80003ef0:	10200073          	sret
    80003ef4:	00000013          	nop
    80003ef8:	00000013          	nop
    80003efc:	00000013          	nop

0000000080003f00 <timervec>:
    80003f00:	34051573          	csrrw	a0,mscratch,a0
    80003f04:	00b53023          	sd	a1,0(a0)
    80003f08:	00c53423          	sd	a2,8(a0)
    80003f0c:	00d53823          	sd	a3,16(a0)
    80003f10:	01853583          	ld	a1,24(a0)
    80003f14:	02053603          	ld	a2,32(a0)
    80003f18:	0005b683          	ld	a3,0(a1)
    80003f1c:	00c686b3          	add	a3,a3,a2
    80003f20:	00d5b023          	sd	a3,0(a1)
    80003f24:	00200593          	li	a1,2
    80003f28:	14459073          	csrw	sip,a1
    80003f2c:	01053683          	ld	a3,16(a0)
    80003f30:	00853603          	ld	a2,8(a0)
    80003f34:	00053583          	ld	a1,0(a0)
    80003f38:	34051573          	csrrw	a0,mscratch,a0
    80003f3c:	30200073          	mret

0000000080003f40 <plicinit>:
    80003f40:	ff010113          	addi	sp,sp,-16
    80003f44:	00813423          	sd	s0,8(sp)
    80003f48:	01010413          	addi	s0,sp,16
    80003f4c:	00813403          	ld	s0,8(sp)
    80003f50:	0c0007b7          	lui	a5,0xc000
    80003f54:	00100713          	li	a4,1
    80003f58:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003f5c:	00e7a223          	sw	a4,4(a5)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret

0000000080003f68 <plicinithart>:
    80003f68:	ff010113          	addi	sp,sp,-16
    80003f6c:	00813023          	sd	s0,0(sp)
    80003f70:	00113423          	sd	ra,8(sp)
    80003f74:	01010413          	addi	s0,sp,16
    80003f78:	00000097          	auipc	ra,0x0
    80003f7c:	a44080e7          	jalr	-1468(ra) # 800039bc <cpuid>
    80003f80:	0085171b          	slliw	a4,a0,0x8
    80003f84:	0c0027b7          	lui	a5,0xc002
    80003f88:	00e787b3          	add	a5,a5,a4
    80003f8c:	40200713          	li	a4,1026
    80003f90:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003f94:	00813083          	ld	ra,8(sp)
    80003f98:	00013403          	ld	s0,0(sp)
    80003f9c:	00d5151b          	slliw	a0,a0,0xd
    80003fa0:	0c2017b7          	lui	a5,0xc201
    80003fa4:	00a78533          	add	a0,a5,a0
    80003fa8:	00052023          	sw	zero,0(a0)
    80003fac:	01010113          	addi	sp,sp,16
    80003fb0:	00008067          	ret

0000000080003fb4 <plic_claim>:
    80003fb4:	ff010113          	addi	sp,sp,-16
    80003fb8:	00813023          	sd	s0,0(sp)
    80003fbc:	00113423          	sd	ra,8(sp)
    80003fc0:	01010413          	addi	s0,sp,16
    80003fc4:	00000097          	auipc	ra,0x0
    80003fc8:	9f8080e7          	jalr	-1544(ra) # 800039bc <cpuid>
    80003fcc:	00813083          	ld	ra,8(sp)
    80003fd0:	00013403          	ld	s0,0(sp)
    80003fd4:	00d5151b          	slliw	a0,a0,0xd
    80003fd8:	0c2017b7          	lui	a5,0xc201
    80003fdc:	00a78533          	add	a0,a5,a0
    80003fe0:	00452503          	lw	a0,4(a0)
    80003fe4:	01010113          	addi	sp,sp,16
    80003fe8:	00008067          	ret

0000000080003fec <plic_complete>:
    80003fec:	fe010113          	addi	sp,sp,-32
    80003ff0:	00813823          	sd	s0,16(sp)
    80003ff4:	00913423          	sd	s1,8(sp)
    80003ff8:	00113c23          	sd	ra,24(sp)
    80003ffc:	02010413          	addi	s0,sp,32
    80004000:	00050493          	mv	s1,a0
    80004004:	00000097          	auipc	ra,0x0
    80004008:	9b8080e7          	jalr	-1608(ra) # 800039bc <cpuid>
    8000400c:	01813083          	ld	ra,24(sp)
    80004010:	01013403          	ld	s0,16(sp)
    80004014:	00d5179b          	slliw	a5,a0,0xd
    80004018:	0c201737          	lui	a4,0xc201
    8000401c:	00f707b3          	add	a5,a4,a5
    80004020:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004024:	00813483          	ld	s1,8(sp)
    80004028:	02010113          	addi	sp,sp,32
    8000402c:	00008067          	ret

0000000080004030 <consolewrite>:
    80004030:	fb010113          	addi	sp,sp,-80
    80004034:	04813023          	sd	s0,64(sp)
    80004038:	04113423          	sd	ra,72(sp)
    8000403c:	02913c23          	sd	s1,56(sp)
    80004040:	03213823          	sd	s2,48(sp)
    80004044:	03313423          	sd	s3,40(sp)
    80004048:	03413023          	sd	s4,32(sp)
    8000404c:	01513c23          	sd	s5,24(sp)
    80004050:	05010413          	addi	s0,sp,80
    80004054:	06c05c63          	blez	a2,800040cc <consolewrite+0x9c>
    80004058:	00060993          	mv	s3,a2
    8000405c:	00050a13          	mv	s4,a0
    80004060:	00058493          	mv	s1,a1
    80004064:	00000913          	li	s2,0
    80004068:	fff00a93          	li	s5,-1
    8000406c:	01c0006f          	j	80004088 <consolewrite+0x58>
    80004070:	fbf44503          	lbu	a0,-65(s0)
    80004074:	0019091b          	addiw	s2,s2,1
    80004078:	00148493          	addi	s1,s1,1
    8000407c:	00001097          	auipc	ra,0x1
    80004080:	a9c080e7          	jalr	-1380(ra) # 80004b18 <uartputc>
    80004084:	03298063          	beq	s3,s2,800040a4 <consolewrite+0x74>
    80004088:	00048613          	mv	a2,s1
    8000408c:	00100693          	li	a3,1
    80004090:	000a0593          	mv	a1,s4
    80004094:	fbf40513          	addi	a0,s0,-65
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	9dc080e7          	jalr	-1572(ra) # 80003a74 <either_copyin>
    800040a0:	fd5518e3          	bne	a0,s5,80004070 <consolewrite+0x40>
    800040a4:	04813083          	ld	ra,72(sp)
    800040a8:	04013403          	ld	s0,64(sp)
    800040ac:	03813483          	ld	s1,56(sp)
    800040b0:	02813983          	ld	s3,40(sp)
    800040b4:	02013a03          	ld	s4,32(sp)
    800040b8:	01813a83          	ld	s5,24(sp)
    800040bc:	00090513          	mv	a0,s2
    800040c0:	03013903          	ld	s2,48(sp)
    800040c4:	05010113          	addi	sp,sp,80
    800040c8:	00008067          	ret
    800040cc:	00000913          	li	s2,0
    800040d0:	fd5ff06f          	j	800040a4 <consolewrite+0x74>

00000000800040d4 <consoleread>:
    800040d4:	f9010113          	addi	sp,sp,-112
    800040d8:	06813023          	sd	s0,96(sp)
    800040dc:	04913c23          	sd	s1,88(sp)
    800040e0:	05213823          	sd	s2,80(sp)
    800040e4:	05313423          	sd	s3,72(sp)
    800040e8:	05413023          	sd	s4,64(sp)
    800040ec:	03513c23          	sd	s5,56(sp)
    800040f0:	03613823          	sd	s6,48(sp)
    800040f4:	03713423          	sd	s7,40(sp)
    800040f8:	03813023          	sd	s8,32(sp)
    800040fc:	06113423          	sd	ra,104(sp)
    80004100:	01913c23          	sd	s9,24(sp)
    80004104:	07010413          	addi	s0,sp,112
    80004108:	00060b93          	mv	s7,a2
    8000410c:	00050913          	mv	s2,a0
    80004110:	00058c13          	mv	s8,a1
    80004114:	00060b1b          	sext.w	s6,a2
    80004118:	00004497          	auipc	s1,0x4
    8000411c:	db048493          	addi	s1,s1,-592 # 80007ec8 <cons>
    80004120:	00400993          	li	s3,4
    80004124:	fff00a13          	li	s4,-1
    80004128:	00a00a93          	li	s5,10
    8000412c:	05705e63          	blez	s7,80004188 <consoleread+0xb4>
    80004130:	09c4a703          	lw	a4,156(s1)
    80004134:	0984a783          	lw	a5,152(s1)
    80004138:	0007071b          	sext.w	a4,a4
    8000413c:	08e78463          	beq	a5,a4,800041c4 <consoleread+0xf0>
    80004140:	07f7f713          	andi	a4,a5,127
    80004144:	00e48733          	add	a4,s1,a4
    80004148:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000414c:	0017869b          	addiw	a3,a5,1
    80004150:	08d4ac23          	sw	a3,152(s1)
    80004154:	00070c9b          	sext.w	s9,a4
    80004158:	0b370663          	beq	a4,s3,80004204 <consoleread+0x130>
    8000415c:	00100693          	li	a3,1
    80004160:	f9f40613          	addi	a2,s0,-97
    80004164:	000c0593          	mv	a1,s8
    80004168:	00090513          	mv	a0,s2
    8000416c:	f8e40fa3          	sb	a4,-97(s0)
    80004170:	00000097          	auipc	ra,0x0
    80004174:	8b8080e7          	jalr	-1864(ra) # 80003a28 <either_copyout>
    80004178:	01450863          	beq	a0,s4,80004188 <consoleread+0xb4>
    8000417c:	001c0c13          	addi	s8,s8,1
    80004180:	fffb8b9b          	addiw	s7,s7,-1
    80004184:	fb5c94e3          	bne	s9,s5,8000412c <consoleread+0x58>
    80004188:	000b851b          	sext.w	a0,s7
    8000418c:	06813083          	ld	ra,104(sp)
    80004190:	06013403          	ld	s0,96(sp)
    80004194:	05813483          	ld	s1,88(sp)
    80004198:	05013903          	ld	s2,80(sp)
    8000419c:	04813983          	ld	s3,72(sp)
    800041a0:	04013a03          	ld	s4,64(sp)
    800041a4:	03813a83          	ld	s5,56(sp)
    800041a8:	02813b83          	ld	s7,40(sp)
    800041ac:	02013c03          	ld	s8,32(sp)
    800041b0:	01813c83          	ld	s9,24(sp)
    800041b4:	40ab053b          	subw	a0,s6,a0
    800041b8:	03013b03          	ld	s6,48(sp)
    800041bc:	07010113          	addi	sp,sp,112
    800041c0:	00008067          	ret
    800041c4:	00001097          	auipc	ra,0x1
    800041c8:	1d8080e7          	jalr	472(ra) # 8000539c <push_on>
    800041cc:	0984a703          	lw	a4,152(s1)
    800041d0:	09c4a783          	lw	a5,156(s1)
    800041d4:	0007879b          	sext.w	a5,a5
    800041d8:	fef70ce3          	beq	a4,a5,800041d0 <consoleread+0xfc>
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	234080e7          	jalr	564(ra) # 80005410 <pop_on>
    800041e4:	0984a783          	lw	a5,152(s1)
    800041e8:	07f7f713          	andi	a4,a5,127
    800041ec:	00e48733          	add	a4,s1,a4
    800041f0:	01874703          	lbu	a4,24(a4)
    800041f4:	0017869b          	addiw	a3,a5,1
    800041f8:	08d4ac23          	sw	a3,152(s1)
    800041fc:	00070c9b          	sext.w	s9,a4
    80004200:	f5371ee3          	bne	a4,s3,8000415c <consoleread+0x88>
    80004204:	000b851b          	sext.w	a0,s7
    80004208:	f96bf2e3          	bgeu	s7,s6,8000418c <consoleread+0xb8>
    8000420c:	08f4ac23          	sw	a5,152(s1)
    80004210:	f7dff06f          	j	8000418c <consoleread+0xb8>

0000000080004214 <consputc>:
    80004214:	10000793          	li	a5,256
    80004218:	00f50663          	beq	a0,a5,80004224 <consputc+0x10>
    8000421c:	00001317          	auipc	t1,0x1
    80004220:	9f430067          	jr	-1548(t1) # 80004c10 <uartputc_sync>
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00113423          	sd	ra,8(sp)
    8000422c:	00813023          	sd	s0,0(sp)
    80004230:	01010413          	addi	s0,sp,16
    80004234:	00800513          	li	a0,8
    80004238:	00001097          	auipc	ra,0x1
    8000423c:	9d8080e7          	jalr	-1576(ra) # 80004c10 <uartputc_sync>
    80004240:	02000513          	li	a0,32
    80004244:	00001097          	auipc	ra,0x1
    80004248:	9cc080e7          	jalr	-1588(ra) # 80004c10 <uartputc_sync>
    8000424c:	00013403          	ld	s0,0(sp)
    80004250:	00813083          	ld	ra,8(sp)
    80004254:	00800513          	li	a0,8
    80004258:	01010113          	addi	sp,sp,16
    8000425c:	00001317          	auipc	t1,0x1
    80004260:	9b430067          	jr	-1612(t1) # 80004c10 <uartputc_sync>

0000000080004264 <consoleintr>:
    80004264:	fe010113          	addi	sp,sp,-32
    80004268:	00813823          	sd	s0,16(sp)
    8000426c:	00913423          	sd	s1,8(sp)
    80004270:	01213023          	sd	s2,0(sp)
    80004274:	00113c23          	sd	ra,24(sp)
    80004278:	02010413          	addi	s0,sp,32
    8000427c:	00004917          	auipc	s2,0x4
    80004280:	c4c90913          	addi	s2,s2,-948 # 80007ec8 <cons>
    80004284:	00050493          	mv	s1,a0
    80004288:	00090513          	mv	a0,s2
    8000428c:	00001097          	auipc	ra,0x1
    80004290:	e40080e7          	jalr	-448(ra) # 800050cc <acquire>
    80004294:	02048c63          	beqz	s1,800042cc <consoleintr+0x68>
    80004298:	0a092783          	lw	a5,160(s2)
    8000429c:	09892703          	lw	a4,152(s2)
    800042a0:	07f00693          	li	a3,127
    800042a4:	40e7873b          	subw	a4,a5,a4
    800042a8:	02e6e263          	bltu	a3,a4,800042cc <consoleintr+0x68>
    800042ac:	00d00713          	li	a4,13
    800042b0:	04e48063          	beq	s1,a4,800042f0 <consoleintr+0x8c>
    800042b4:	07f7f713          	andi	a4,a5,127
    800042b8:	00e90733          	add	a4,s2,a4
    800042bc:	0017879b          	addiw	a5,a5,1
    800042c0:	0af92023          	sw	a5,160(s2)
    800042c4:	00970c23          	sb	s1,24(a4)
    800042c8:	08f92e23          	sw	a5,156(s2)
    800042cc:	01013403          	ld	s0,16(sp)
    800042d0:	01813083          	ld	ra,24(sp)
    800042d4:	00813483          	ld	s1,8(sp)
    800042d8:	00013903          	ld	s2,0(sp)
    800042dc:	00004517          	auipc	a0,0x4
    800042e0:	bec50513          	addi	a0,a0,-1044 # 80007ec8 <cons>
    800042e4:	02010113          	addi	sp,sp,32
    800042e8:	00001317          	auipc	t1,0x1
    800042ec:	eb030067          	jr	-336(t1) # 80005198 <release>
    800042f0:	00a00493          	li	s1,10
    800042f4:	fc1ff06f          	j	800042b4 <consoleintr+0x50>

00000000800042f8 <consoleinit>:
    800042f8:	fe010113          	addi	sp,sp,-32
    800042fc:	00113c23          	sd	ra,24(sp)
    80004300:	00813823          	sd	s0,16(sp)
    80004304:	00913423          	sd	s1,8(sp)
    80004308:	02010413          	addi	s0,sp,32
    8000430c:	00004497          	auipc	s1,0x4
    80004310:	bbc48493          	addi	s1,s1,-1092 # 80007ec8 <cons>
    80004314:	00048513          	mv	a0,s1
    80004318:	00002597          	auipc	a1,0x2
    8000431c:	f3058593          	addi	a1,a1,-208 # 80006248 <CONSOLE_STATUS+0x238>
    80004320:	00001097          	auipc	ra,0x1
    80004324:	d88080e7          	jalr	-632(ra) # 800050a8 <initlock>
    80004328:	00000097          	auipc	ra,0x0
    8000432c:	7ac080e7          	jalr	1964(ra) # 80004ad4 <uartinit>
    80004330:	01813083          	ld	ra,24(sp)
    80004334:	01013403          	ld	s0,16(sp)
    80004338:	00000797          	auipc	a5,0x0
    8000433c:	d9c78793          	addi	a5,a5,-612 # 800040d4 <consoleread>
    80004340:	0af4bc23          	sd	a5,184(s1)
    80004344:	00000797          	auipc	a5,0x0
    80004348:	cec78793          	addi	a5,a5,-788 # 80004030 <consolewrite>
    8000434c:	0cf4b023          	sd	a5,192(s1)
    80004350:	00813483          	ld	s1,8(sp)
    80004354:	02010113          	addi	sp,sp,32
    80004358:	00008067          	ret

000000008000435c <console_read>:
    8000435c:	ff010113          	addi	sp,sp,-16
    80004360:	00813423          	sd	s0,8(sp)
    80004364:	01010413          	addi	s0,sp,16
    80004368:	00813403          	ld	s0,8(sp)
    8000436c:	00004317          	auipc	t1,0x4
    80004370:	c1433303          	ld	t1,-1004(t1) # 80007f80 <devsw+0x10>
    80004374:	01010113          	addi	sp,sp,16
    80004378:	00030067          	jr	t1

000000008000437c <console_write>:
    8000437c:	ff010113          	addi	sp,sp,-16
    80004380:	00813423          	sd	s0,8(sp)
    80004384:	01010413          	addi	s0,sp,16
    80004388:	00813403          	ld	s0,8(sp)
    8000438c:	00004317          	auipc	t1,0x4
    80004390:	bfc33303          	ld	t1,-1028(t1) # 80007f88 <devsw+0x18>
    80004394:	01010113          	addi	sp,sp,16
    80004398:	00030067          	jr	t1

000000008000439c <panic>:
    8000439c:	fe010113          	addi	sp,sp,-32
    800043a0:	00113c23          	sd	ra,24(sp)
    800043a4:	00813823          	sd	s0,16(sp)
    800043a8:	00913423          	sd	s1,8(sp)
    800043ac:	02010413          	addi	s0,sp,32
    800043b0:	00050493          	mv	s1,a0
    800043b4:	00002517          	auipc	a0,0x2
    800043b8:	e9c50513          	addi	a0,a0,-356 # 80006250 <CONSOLE_STATUS+0x240>
    800043bc:	00004797          	auipc	a5,0x4
    800043c0:	c607a623          	sw	zero,-916(a5) # 80008028 <pr+0x18>
    800043c4:	00000097          	auipc	ra,0x0
    800043c8:	034080e7          	jalr	52(ra) # 800043f8 <__printf>
    800043cc:	00048513          	mv	a0,s1
    800043d0:	00000097          	auipc	ra,0x0
    800043d4:	028080e7          	jalr	40(ra) # 800043f8 <__printf>
    800043d8:	00002517          	auipc	a0,0x2
    800043dc:	c8050513          	addi	a0,a0,-896 # 80006058 <CONSOLE_STATUS+0x48>
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	018080e7          	jalr	24(ra) # 800043f8 <__printf>
    800043e8:	00100793          	li	a5,1
    800043ec:	00003717          	auipc	a4,0x3
    800043f0:	96f72e23          	sw	a5,-1668(a4) # 80006d68 <panicked>
    800043f4:	0000006f          	j	800043f4 <panic+0x58>

00000000800043f8 <__printf>:
    800043f8:	f3010113          	addi	sp,sp,-208
    800043fc:	08813023          	sd	s0,128(sp)
    80004400:	07313423          	sd	s3,104(sp)
    80004404:	09010413          	addi	s0,sp,144
    80004408:	05813023          	sd	s8,64(sp)
    8000440c:	08113423          	sd	ra,136(sp)
    80004410:	06913c23          	sd	s1,120(sp)
    80004414:	07213823          	sd	s2,112(sp)
    80004418:	07413023          	sd	s4,96(sp)
    8000441c:	05513c23          	sd	s5,88(sp)
    80004420:	05613823          	sd	s6,80(sp)
    80004424:	05713423          	sd	s7,72(sp)
    80004428:	03913c23          	sd	s9,56(sp)
    8000442c:	03a13823          	sd	s10,48(sp)
    80004430:	03b13423          	sd	s11,40(sp)
    80004434:	00004317          	auipc	t1,0x4
    80004438:	bdc30313          	addi	t1,t1,-1060 # 80008010 <pr>
    8000443c:	01832c03          	lw	s8,24(t1)
    80004440:	00b43423          	sd	a1,8(s0)
    80004444:	00c43823          	sd	a2,16(s0)
    80004448:	00d43c23          	sd	a3,24(s0)
    8000444c:	02e43023          	sd	a4,32(s0)
    80004450:	02f43423          	sd	a5,40(s0)
    80004454:	03043823          	sd	a6,48(s0)
    80004458:	03143c23          	sd	a7,56(s0)
    8000445c:	00050993          	mv	s3,a0
    80004460:	4a0c1663          	bnez	s8,8000490c <__printf+0x514>
    80004464:	60098c63          	beqz	s3,80004a7c <__printf+0x684>
    80004468:	0009c503          	lbu	a0,0(s3)
    8000446c:	00840793          	addi	a5,s0,8
    80004470:	f6f43c23          	sd	a5,-136(s0)
    80004474:	00000493          	li	s1,0
    80004478:	22050063          	beqz	a0,80004698 <__printf+0x2a0>
    8000447c:	00002a37          	lui	s4,0x2
    80004480:	00018ab7          	lui	s5,0x18
    80004484:	000f4b37          	lui	s6,0xf4
    80004488:	00989bb7          	lui	s7,0x989
    8000448c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004490:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004494:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004498:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000449c:	00148c9b          	addiw	s9,s1,1
    800044a0:	02500793          	li	a5,37
    800044a4:	01998933          	add	s2,s3,s9
    800044a8:	38f51263          	bne	a0,a5,8000482c <__printf+0x434>
    800044ac:	00094783          	lbu	a5,0(s2)
    800044b0:	00078c9b          	sext.w	s9,a5
    800044b4:	1e078263          	beqz	a5,80004698 <__printf+0x2a0>
    800044b8:	0024849b          	addiw	s1,s1,2
    800044bc:	07000713          	li	a4,112
    800044c0:	00998933          	add	s2,s3,s1
    800044c4:	38e78a63          	beq	a5,a4,80004858 <__printf+0x460>
    800044c8:	20f76863          	bltu	a4,a5,800046d8 <__printf+0x2e0>
    800044cc:	42a78863          	beq	a5,a0,800048fc <__printf+0x504>
    800044d0:	06400713          	li	a4,100
    800044d4:	40e79663          	bne	a5,a4,800048e0 <__printf+0x4e8>
    800044d8:	f7843783          	ld	a5,-136(s0)
    800044dc:	0007a603          	lw	a2,0(a5)
    800044e0:	00878793          	addi	a5,a5,8
    800044e4:	f6f43c23          	sd	a5,-136(s0)
    800044e8:	42064a63          	bltz	a2,8000491c <__printf+0x524>
    800044ec:	00a00713          	li	a4,10
    800044f0:	02e677bb          	remuw	a5,a2,a4
    800044f4:	00002d97          	auipc	s11,0x2
    800044f8:	d84d8d93          	addi	s11,s11,-636 # 80006278 <digits>
    800044fc:	00900593          	li	a1,9
    80004500:	0006051b          	sext.w	a0,a2
    80004504:	00000c93          	li	s9,0
    80004508:	02079793          	slli	a5,a5,0x20
    8000450c:	0207d793          	srli	a5,a5,0x20
    80004510:	00fd87b3          	add	a5,s11,a5
    80004514:	0007c783          	lbu	a5,0(a5)
    80004518:	02e656bb          	divuw	a3,a2,a4
    8000451c:	f8f40023          	sb	a5,-128(s0)
    80004520:	14c5d863          	bge	a1,a2,80004670 <__printf+0x278>
    80004524:	06300593          	li	a1,99
    80004528:	00100c93          	li	s9,1
    8000452c:	02e6f7bb          	remuw	a5,a3,a4
    80004530:	02079793          	slli	a5,a5,0x20
    80004534:	0207d793          	srli	a5,a5,0x20
    80004538:	00fd87b3          	add	a5,s11,a5
    8000453c:	0007c783          	lbu	a5,0(a5)
    80004540:	02e6d73b          	divuw	a4,a3,a4
    80004544:	f8f400a3          	sb	a5,-127(s0)
    80004548:	12a5f463          	bgeu	a1,a0,80004670 <__printf+0x278>
    8000454c:	00a00693          	li	a3,10
    80004550:	00900593          	li	a1,9
    80004554:	02d777bb          	remuw	a5,a4,a3
    80004558:	02079793          	slli	a5,a5,0x20
    8000455c:	0207d793          	srli	a5,a5,0x20
    80004560:	00fd87b3          	add	a5,s11,a5
    80004564:	0007c503          	lbu	a0,0(a5)
    80004568:	02d757bb          	divuw	a5,a4,a3
    8000456c:	f8a40123          	sb	a0,-126(s0)
    80004570:	48e5f263          	bgeu	a1,a4,800049f4 <__printf+0x5fc>
    80004574:	06300513          	li	a0,99
    80004578:	02d7f5bb          	remuw	a1,a5,a3
    8000457c:	02059593          	slli	a1,a1,0x20
    80004580:	0205d593          	srli	a1,a1,0x20
    80004584:	00bd85b3          	add	a1,s11,a1
    80004588:	0005c583          	lbu	a1,0(a1)
    8000458c:	02d7d7bb          	divuw	a5,a5,a3
    80004590:	f8b401a3          	sb	a1,-125(s0)
    80004594:	48e57263          	bgeu	a0,a4,80004a18 <__printf+0x620>
    80004598:	3e700513          	li	a0,999
    8000459c:	02d7f5bb          	remuw	a1,a5,a3
    800045a0:	02059593          	slli	a1,a1,0x20
    800045a4:	0205d593          	srli	a1,a1,0x20
    800045a8:	00bd85b3          	add	a1,s11,a1
    800045ac:	0005c583          	lbu	a1,0(a1)
    800045b0:	02d7d7bb          	divuw	a5,a5,a3
    800045b4:	f8b40223          	sb	a1,-124(s0)
    800045b8:	46e57663          	bgeu	a0,a4,80004a24 <__printf+0x62c>
    800045bc:	02d7f5bb          	remuw	a1,a5,a3
    800045c0:	02059593          	slli	a1,a1,0x20
    800045c4:	0205d593          	srli	a1,a1,0x20
    800045c8:	00bd85b3          	add	a1,s11,a1
    800045cc:	0005c583          	lbu	a1,0(a1)
    800045d0:	02d7d7bb          	divuw	a5,a5,a3
    800045d4:	f8b402a3          	sb	a1,-123(s0)
    800045d8:	46ea7863          	bgeu	s4,a4,80004a48 <__printf+0x650>
    800045dc:	02d7f5bb          	remuw	a1,a5,a3
    800045e0:	02059593          	slli	a1,a1,0x20
    800045e4:	0205d593          	srli	a1,a1,0x20
    800045e8:	00bd85b3          	add	a1,s11,a1
    800045ec:	0005c583          	lbu	a1,0(a1)
    800045f0:	02d7d7bb          	divuw	a5,a5,a3
    800045f4:	f8b40323          	sb	a1,-122(s0)
    800045f8:	3eeaf863          	bgeu	s5,a4,800049e8 <__printf+0x5f0>
    800045fc:	02d7f5bb          	remuw	a1,a5,a3
    80004600:	02059593          	slli	a1,a1,0x20
    80004604:	0205d593          	srli	a1,a1,0x20
    80004608:	00bd85b3          	add	a1,s11,a1
    8000460c:	0005c583          	lbu	a1,0(a1)
    80004610:	02d7d7bb          	divuw	a5,a5,a3
    80004614:	f8b403a3          	sb	a1,-121(s0)
    80004618:	42eb7e63          	bgeu	s6,a4,80004a54 <__printf+0x65c>
    8000461c:	02d7f5bb          	remuw	a1,a5,a3
    80004620:	02059593          	slli	a1,a1,0x20
    80004624:	0205d593          	srli	a1,a1,0x20
    80004628:	00bd85b3          	add	a1,s11,a1
    8000462c:	0005c583          	lbu	a1,0(a1)
    80004630:	02d7d7bb          	divuw	a5,a5,a3
    80004634:	f8b40423          	sb	a1,-120(s0)
    80004638:	42ebfc63          	bgeu	s7,a4,80004a70 <__printf+0x678>
    8000463c:	02079793          	slli	a5,a5,0x20
    80004640:	0207d793          	srli	a5,a5,0x20
    80004644:	00fd8db3          	add	s11,s11,a5
    80004648:	000dc703          	lbu	a4,0(s11)
    8000464c:	00a00793          	li	a5,10
    80004650:	00900c93          	li	s9,9
    80004654:	f8e404a3          	sb	a4,-119(s0)
    80004658:	00065c63          	bgez	a2,80004670 <__printf+0x278>
    8000465c:	f9040713          	addi	a4,s0,-112
    80004660:	00f70733          	add	a4,a4,a5
    80004664:	02d00693          	li	a3,45
    80004668:	fed70823          	sb	a3,-16(a4)
    8000466c:	00078c93          	mv	s9,a5
    80004670:	f8040793          	addi	a5,s0,-128
    80004674:	01978cb3          	add	s9,a5,s9
    80004678:	f7f40d13          	addi	s10,s0,-129
    8000467c:	000cc503          	lbu	a0,0(s9)
    80004680:	fffc8c93          	addi	s9,s9,-1
    80004684:	00000097          	auipc	ra,0x0
    80004688:	b90080e7          	jalr	-1136(ra) # 80004214 <consputc>
    8000468c:	ffac98e3          	bne	s9,s10,8000467c <__printf+0x284>
    80004690:	00094503          	lbu	a0,0(s2)
    80004694:	e00514e3          	bnez	a0,8000449c <__printf+0xa4>
    80004698:	1a0c1663          	bnez	s8,80004844 <__printf+0x44c>
    8000469c:	08813083          	ld	ra,136(sp)
    800046a0:	08013403          	ld	s0,128(sp)
    800046a4:	07813483          	ld	s1,120(sp)
    800046a8:	07013903          	ld	s2,112(sp)
    800046ac:	06813983          	ld	s3,104(sp)
    800046b0:	06013a03          	ld	s4,96(sp)
    800046b4:	05813a83          	ld	s5,88(sp)
    800046b8:	05013b03          	ld	s6,80(sp)
    800046bc:	04813b83          	ld	s7,72(sp)
    800046c0:	04013c03          	ld	s8,64(sp)
    800046c4:	03813c83          	ld	s9,56(sp)
    800046c8:	03013d03          	ld	s10,48(sp)
    800046cc:	02813d83          	ld	s11,40(sp)
    800046d0:	0d010113          	addi	sp,sp,208
    800046d4:	00008067          	ret
    800046d8:	07300713          	li	a4,115
    800046dc:	1ce78a63          	beq	a5,a4,800048b0 <__printf+0x4b8>
    800046e0:	07800713          	li	a4,120
    800046e4:	1ee79e63          	bne	a5,a4,800048e0 <__printf+0x4e8>
    800046e8:	f7843783          	ld	a5,-136(s0)
    800046ec:	0007a703          	lw	a4,0(a5)
    800046f0:	00878793          	addi	a5,a5,8
    800046f4:	f6f43c23          	sd	a5,-136(s0)
    800046f8:	28074263          	bltz	a4,8000497c <__printf+0x584>
    800046fc:	00002d97          	auipc	s11,0x2
    80004700:	b7cd8d93          	addi	s11,s11,-1156 # 80006278 <digits>
    80004704:	00f77793          	andi	a5,a4,15
    80004708:	00fd87b3          	add	a5,s11,a5
    8000470c:	0007c683          	lbu	a3,0(a5)
    80004710:	00f00613          	li	a2,15
    80004714:	0007079b          	sext.w	a5,a4
    80004718:	f8d40023          	sb	a3,-128(s0)
    8000471c:	0047559b          	srliw	a1,a4,0x4
    80004720:	0047569b          	srliw	a3,a4,0x4
    80004724:	00000c93          	li	s9,0
    80004728:	0ee65063          	bge	a2,a4,80004808 <__printf+0x410>
    8000472c:	00f6f693          	andi	a3,a3,15
    80004730:	00dd86b3          	add	a3,s11,a3
    80004734:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004738:	0087d79b          	srliw	a5,a5,0x8
    8000473c:	00100c93          	li	s9,1
    80004740:	f8d400a3          	sb	a3,-127(s0)
    80004744:	0cb67263          	bgeu	a2,a1,80004808 <__printf+0x410>
    80004748:	00f7f693          	andi	a3,a5,15
    8000474c:	00dd86b3          	add	a3,s11,a3
    80004750:	0006c583          	lbu	a1,0(a3)
    80004754:	00f00613          	li	a2,15
    80004758:	0047d69b          	srliw	a3,a5,0x4
    8000475c:	f8b40123          	sb	a1,-126(s0)
    80004760:	0047d593          	srli	a1,a5,0x4
    80004764:	28f67e63          	bgeu	a2,a5,80004a00 <__printf+0x608>
    80004768:	00f6f693          	andi	a3,a3,15
    8000476c:	00dd86b3          	add	a3,s11,a3
    80004770:	0006c503          	lbu	a0,0(a3)
    80004774:	0087d813          	srli	a6,a5,0x8
    80004778:	0087d69b          	srliw	a3,a5,0x8
    8000477c:	f8a401a3          	sb	a0,-125(s0)
    80004780:	28b67663          	bgeu	a2,a1,80004a0c <__printf+0x614>
    80004784:	00f6f693          	andi	a3,a3,15
    80004788:	00dd86b3          	add	a3,s11,a3
    8000478c:	0006c583          	lbu	a1,0(a3)
    80004790:	00c7d513          	srli	a0,a5,0xc
    80004794:	00c7d69b          	srliw	a3,a5,0xc
    80004798:	f8b40223          	sb	a1,-124(s0)
    8000479c:	29067a63          	bgeu	a2,a6,80004a30 <__printf+0x638>
    800047a0:	00f6f693          	andi	a3,a3,15
    800047a4:	00dd86b3          	add	a3,s11,a3
    800047a8:	0006c583          	lbu	a1,0(a3)
    800047ac:	0107d813          	srli	a6,a5,0x10
    800047b0:	0107d69b          	srliw	a3,a5,0x10
    800047b4:	f8b402a3          	sb	a1,-123(s0)
    800047b8:	28a67263          	bgeu	a2,a0,80004a3c <__printf+0x644>
    800047bc:	00f6f693          	andi	a3,a3,15
    800047c0:	00dd86b3          	add	a3,s11,a3
    800047c4:	0006c683          	lbu	a3,0(a3)
    800047c8:	0147d79b          	srliw	a5,a5,0x14
    800047cc:	f8d40323          	sb	a3,-122(s0)
    800047d0:	21067663          	bgeu	a2,a6,800049dc <__printf+0x5e4>
    800047d4:	02079793          	slli	a5,a5,0x20
    800047d8:	0207d793          	srli	a5,a5,0x20
    800047dc:	00fd8db3          	add	s11,s11,a5
    800047e0:	000dc683          	lbu	a3,0(s11)
    800047e4:	00800793          	li	a5,8
    800047e8:	00700c93          	li	s9,7
    800047ec:	f8d403a3          	sb	a3,-121(s0)
    800047f0:	00075c63          	bgez	a4,80004808 <__printf+0x410>
    800047f4:	f9040713          	addi	a4,s0,-112
    800047f8:	00f70733          	add	a4,a4,a5
    800047fc:	02d00693          	li	a3,45
    80004800:	fed70823          	sb	a3,-16(a4)
    80004804:	00078c93          	mv	s9,a5
    80004808:	f8040793          	addi	a5,s0,-128
    8000480c:	01978cb3          	add	s9,a5,s9
    80004810:	f7f40d13          	addi	s10,s0,-129
    80004814:	000cc503          	lbu	a0,0(s9)
    80004818:	fffc8c93          	addi	s9,s9,-1
    8000481c:	00000097          	auipc	ra,0x0
    80004820:	9f8080e7          	jalr	-1544(ra) # 80004214 <consputc>
    80004824:	ff9d18e3          	bne	s10,s9,80004814 <__printf+0x41c>
    80004828:	0100006f          	j	80004838 <__printf+0x440>
    8000482c:	00000097          	auipc	ra,0x0
    80004830:	9e8080e7          	jalr	-1560(ra) # 80004214 <consputc>
    80004834:	000c8493          	mv	s1,s9
    80004838:	00094503          	lbu	a0,0(s2)
    8000483c:	c60510e3          	bnez	a0,8000449c <__printf+0xa4>
    80004840:	e40c0ee3          	beqz	s8,8000469c <__printf+0x2a4>
    80004844:	00003517          	auipc	a0,0x3
    80004848:	7cc50513          	addi	a0,a0,1996 # 80008010 <pr>
    8000484c:	00001097          	auipc	ra,0x1
    80004850:	94c080e7          	jalr	-1716(ra) # 80005198 <release>
    80004854:	e49ff06f          	j	8000469c <__printf+0x2a4>
    80004858:	f7843783          	ld	a5,-136(s0)
    8000485c:	03000513          	li	a0,48
    80004860:	01000d13          	li	s10,16
    80004864:	00878713          	addi	a4,a5,8
    80004868:	0007bc83          	ld	s9,0(a5)
    8000486c:	f6e43c23          	sd	a4,-136(s0)
    80004870:	00000097          	auipc	ra,0x0
    80004874:	9a4080e7          	jalr	-1628(ra) # 80004214 <consputc>
    80004878:	07800513          	li	a0,120
    8000487c:	00000097          	auipc	ra,0x0
    80004880:	998080e7          	jalr	-1640(ra) # 80004214 <consputc>
    80004884:	00002d97          	auipc	s11,0x2
    80004888:	9f4d8d93          	addi	s11,s11,-1548 # 80006278 <digits>
    8000488c:	03ccd793          	srli	a5,s9,0x3c
    80004890:	00fd87b3          	add	a5,s11,a5
    80004894:	0007c503          	lbu	a0,0(a5)
    80004898:	fffd0d1b          	addiw	s10,s10,-1
    8000489c:	004c9c93          	slli	s9,s9,0x4
    800048a0:	00000097          	auipc	ra,0x0
    800048a4:	974080e7          	jalr	-1676(ra) # 80004214 <consputc>
    800048a8:	fe0d12e3          	bnez	s10,8000488c <__printf+0x494>
    800048ac:	f8dff06f          	j	80004838 <__printf+0x440>
    800048b0:	f7843783          	ld	a5,-136(s0)
    800048b4:	0007bc83          	ld	s9,0(a5)
    800048b8:	00878793          	addi	a5,a5,8
    800048bc:	f6f43c23          	sd	a5,-136(s0)
    800048c0:	000c9a63          	bnez	s9,800048d4 <__printf+0x4dc>
    800048c4:	1080006f          	j	800049cc <__printf+0x5d4>
    800048c8:	001c8c93          	addi	s9,s9,1
    800048cc:	00000097          	auipc	ra,0x0
    800048d0:	948080e7          	jalr	-1720(ra) # 80004214 <consputc>
    800048d4:	000cc503          	lbu	a0,0(s9)
    800048d8:	fe0518e3          	bnez	a0,800048c8 <__printf+0x4d0>
    800048dc:	f5dff06f          	j	80004838 <__printf+0x440>
    800048e0:	02500513          	li	a0,37
    800048e4:	00000097          	auipc	ra,0x0
    800048e8:	930080e7          	jalr	-1744(ra) # 80004214 <consputc>
    800048ec:	000c8513          	mv	a0,s9
    800048f0:	00000097          	auipc	ra,0x0
    800048f4:	924080e7          	jalr	-1756(ra) # 80004214 <consputc>
    800048f8:	f41ff06f          	j	80004838 <__printf+0x440>
    800048fc:	02500513          	li	a0,37
    80004900:	00000097          	auipc	ra,0x0
    80004904:	914080e7          	jalr	-1772(ra) # 80004214 <consputc>
    80004908:	f31ff06f          	j	80004838 <__printf+0x440>
    8000490c:	00030513          	mv	a0,t1
    80004910:	00000097          	auipc	ra,0x0
    80004914:	7bc080e7          	jalr	1980(ra) # 800050cc <acquire>
    80004918:	b4dff06f          	j	80004464 <__printf+0x6c>
    8000491c:	40c0053b          	negw	a0,a2
    80004920:	00a00713          	li	a4,10
    80004924:	02e576bb          	remuw	a3,a0,a4
    80004928:	00002d97          	auipc	s11,0x2
    8000492c:	950d8d93          	addi	s11,s11,-1712 # 80006278 <digits>
    80004930:	ff700593          	li	a1,-9
    80004934:	02069693          	slli	a3,a3,0x20
    80004938:	0206d693          	srli	a3,a3,0x20
    8000493c:	00dd86b3          	add	a3,s11,a3
    80004940:	0006c683          	lbu	a3,0(a3)
    80004944:	02e557bb          	divuw	a5,a0,a4
    80004948:	f8d40023          	sb	a3,-128(s0)
    8000494c:	10b65e63          	bge	a2,a1,80004a68 <__printf+0x670>
    80004950:	06300593          	li	a1,99
    80004954:	02e7f6bb          	remuw	a3,a5,a4
    80004958:	02069693          	slli	a3,a3,0x20
    8000495c:	0206d693          	srli	a3,a3,0x20
    80004960:	00dd86b3          	add	a3,s11,a3
    80004964:	0006c683          	lbu	a3,0(a3)
    80004968:	02e7d73b          	divuw	a4,a5,a4
    8000496c:	00200793          	li	a5,2
    80004970:	f8d400a3          	sb	a3,-127(s0)
    80004974:	bca5ece3          	bltu	a1,a0,8000454c <__printf+0x154>
    80004978:	ce5ff06f          	j	8000465c <__printf+0x264>
    8000497c:	40e007bb          	negw	a5,a4
    80004980:	00002d97          	auipc	s11,0x2
    80004984:	8f8d8d93          	addi	s11,s11,-1800 # 80006278 <digits>
    80004988:	00f7f693          	andi	a3,a5,15
    8000498c:	00dd86b3          	add	a3,s11,a3
    80004990:	0006c583          	lbu	a1,0(a3)
    80004994:	ff100613          	li	a2,-15
    80004998:	0047d69b          	srliw	a3,a5,0x4
    8000499c:	f8b40023          	sb	a1,-128(s0)
    800049a0:	0047d59b          	srliw	a1,a5,0x4
    800049a4:	0ac75e63          	bge	a4,a2,80004a60 <__printf+0x668>
    800049a8:	00f6f693          	andi	a3,a3,15
    800049ac:	00dd86b3          	add	a3,s11,a3
    800049b0:	0006c603          	lbu	a2,0(a3)
    800049b4:	00f00693          	li	a3,15
    800049b8:	0087d79b          	srliw	a5,a5,0x8
    800049bc:	f8c400a3          	sb	a2,-127(s0)
    800049c0:	d8b6e4e3          	bltu	a3,a1,80004748 <__printf+0x350>
    800049c4:	00200793          	li	a5,2
    800049c8:	e2dff06f          	j	800047f4 <__printf+0x3fc>
    800049cc:	00002c97          	auipc	s9,0x2
    800049d0:	88cc8c93          	addi	s9,s9,-1908 # 80006258 <CONSOLE_STATUS+0x248>
    800049d4:	02800513          	li	a0,40
    800049d8:	ef1ff06f          	j	800048c8 <__printf+0x4d0>
    800049dc:	00700793          	li	a5,7
    800049e0:	00600c93          	li	s9,6
    800049e4:	e0dff06f          	j	800047f0 <__printf+0x3f8>
    800049e8:	00700793          	li	a5,7
    800049ec:	00600c93          	li	s9,6
    800049f0:	c69ff06f          	j	80004658 <__printf+0x260>
    800049f4:	00300793          	li	a5,3
    800049f8:	00200c93          	li	s9,2
    800049fc:	c5dff06f          	j	80004658 <__printf+0x260>
    80004a00:	00300793          	li	a5,3
    80004a04:	00200c93          	li	s9,2
    80004a08:	de9ff06f          	j	800047f0 <__printf+0x3f8>
    80004a0c:	00400793          	li	a5,4
    80004a10:	00300c93          	li	s9,3
    80004a14:	dddff06f          	j	800047f0 <__printf+0x3f8>
    80004a18:	00400793          	li	a5,4
    80004a1c:	00300c93          	li	s9,3
    80004a20:	c39ff06f          	j	80004658 <__printf+0x260>
    80004a24:	00500793          	li	a5,5
    80004a28:	00400c93          	li	s9,4
    80004a2c:	c2dff06f          	j	80004658 <__printf+0x260>
    80004a30:	00500793          	li	a5,5
    80004a34:	00400c93          	li	s9,4
    80004a38:	db9ff06f          	j	800047f0 <__printf+0x3f8>
    80004a3c:	00600793          	li	a5,6
    80004a40:	00500c93          	li	s9,5
    80004a44:	dadff06f          	j	800047f0 <__printf+0x3f8>
    80004a48:	00600793          	li	a5,6
    80004a4c:	00500c93          	li	s9,5
    80004a50:	c09ff06f          	j	80004658 <__printf+0x260>
    80004a54:	00800793          	li	a5,8
    80004a58:	00700c93          	li	s9,7
    80004a5c:	bfdff06f          	j	80004658 <__printf+0x260>
    80004a60:	00100793          	li	a5,1
    80004a64:	d91ff06f          	j	800047f4 <__printf+0x3fc>
    80004a68:	00100793          	li	a5,1
    80004a6c:	bf1ff06f          	j	8000465c <__printf+0x264>
    80004a70:	00900793          	li	a5,9
    80004a74:	00800c93          	li	s9,8
    80004a78:	be1ff06f          	j	80004658 <__printf+0x260>
    80004a7c:	00001517          	auipc	a0,0x1
    80004a80:	7e450513          	addi	a0,a0,2020 # 80006260 <CONSOLE_STATUS+0x250>
    80004a84:	00000097          	auipc	ra,0x0
    80004a88:	918080e7          	jalr	-1768(ra) # 8000439c <panic>

0000000080004a8c <printfinit>:
    80004a8c:	fe010113          	addi	sp,sp,-32
    80004a90:	00813823          	sd	s0,16(sp)
    80004a94:	00913423          	sd	s1,8(sp)
    80004a98:	00113c23          	sd	ra,24(sp)
    80004a9c:	02010413          	addi	s0,sp,32
    80004aa0:	00003497          	auipc	s1,0x3
    80004aa4:	57048493          	addi	s1,s1,1392 # 80008010 <pr>
    80004aa8:	00048513          	mv	a0,s1
    80004aac:	00001597          	auipc	a1,0x1
    80004ab0:	7c458593          	addi	a1,a1,1988 # 80006270 <CONSOLE_STATUS+0x260>
    80004ab4:	00000097          	auipc	ra,0x0
    80004ab8:	5f4080e7          	jalr	1524(ra) # 800050a8 <initlock>
    80004abc:	01813083          	ld	ra,24(sp)
    80004ac0:	01013403          	ld	s0,16(sp)
    80004ac4:	0004ac23          	sw	zero,24(s1)
    80004ac8:	00813483          	ld	s1,8(sp)
    80004acc:	02010113          	addi	sp,sp,32
    80004ad0:	00008067          	ret

0000000080004ad4 <uartinit>:
    80004ad4:	ff010113          	addi	sp,sp,-16
    80004ad8:	00813423          	sd	s0,8(sp)
    80004adc:	01010413          	addi	s0,sp,16
    80004ae0:	100007b7          	lui	a5,0x10000
    80004ae4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004ae8:	f8000713          	li	a4,-128
    80004aec:	00e781a3          	sb	a4,3(a5)
    80004af0:	00300713          	li	a4,3
    80004af4:	00e78023          	sb	a4,0(a5)
    80004af8:	000780a3          	sb	zero,1(a5)
    80004afc:	00e781a3          	sb	a4,3(a5)
    80004b00:	00700693          	li	a3,7
    80004b04:	00d78123          	sb	a3,2(a5)
    80004b08:	00e780a3          	sb	a4,1(a5)
    80004b0c:	00813403          	ld	s0,8(sp)
    80004b10:	01010113          	addi	sp,sp,16
    80004b14:	00008067          	ret

0000000080004b18 <uartputc>:
    80004b18:	00002797          	auipc	a5,0x2
    80004b1c:	2507a783          	lw	a5,592(a5) # 80006d68 <panicked>
    80004b20:	00078463          	beqz	a5,80004b28 <uartputc+0x10>
    80004b24:	0000006f          	j	80004b24 <uartputc+0xc>
    80004b28:	fd010113          	addi	sp,sp,-48
    80004b2c:	02813023          	sd	s0,32(sp)
    80004b30:	00913c23          	sd	s1,24(sp)
    80004b34:	01213823          	sd	s2,16(sp)
    80004b38:	01313423          	sd	s3,8(sp)
    80004b3c:	02113423          	sd	ra,40(sp)
    80004b40:	03010413          	addi	s0,sp,48
    80004b44:	00002917          	auipc	s2,0x2
    80004b48:	22c90913          	addi	s2,s2,556 # 80006d70 <uart_tx_r>
    80004b4c:	00093783          	ld	a5,0(s2)
    80004b50:	00002497          	auipc	s1,0x2
    80004b54:	22848493          	addi	s1,s1,552 # 80006d78 <uart_tx_w>
    80004b58:	0004b703          	ld	a4,0(s1)
    80004b5c:	02078693          	addi	a3,a5,32
    80004b60:	00050993          	mv	s3,a0
    80004b64:	02e69c63          	bne	a3,a4,80004b9c <uartputc+0x84>
    80004b68:	00001097          	auipc	ra,0x1
    80004b6c:	834080e7          	jalr	-1996(ra) # 8000539c <push_on>
    80004b70:	00093783          	ld	a5,0(s2)
    80004b74:	0004b703          	ld	a4,0(s1)
    80004b78:	02078793          	addi	a5,a5,32
    80004b7c:	00e79463          	bne	a5,a4,80004b84 <uartputc+0x6c>
    80004b80:	0000006f          	j	80004b80 <uartputc+0x68>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	88c080e7          	jalr	-1908(ra) # 80005410 <pop_on>
    80004b8c:	00093783          	ld	a5,0(s2)
    80004b90:	0004b703          	ld	a4,0(s1)
    80004b94:	02078693          	addi	a3,a5,32
    80004b98:	fce688e3          	beq	a3,a4,80004b68 <uartputc+0x50>
    80004b9c:	01f77693          	andi	a3,a4,31
    80004ba0:	00003597          	auipc	a1,0x3
    80004ba4:	49058593          	addi	a1,a1,1168 # 80008030 <uart_tx_buf>
    80004ba8:	00d586b3          	add	a3,a1,a3
    80004bac:	00170713          	addi	a4,a4,1
    80004bb0:	01368023          	sb	s3,0(a3)
    80004bb4:	00e4b023          	sd	a4,0(s1)
    80004bb8:	10000637          	lui	a2,0x10000
    80004bbc:	02f71063          	bne	a4,a5,80004bdc <uartputc+0xc4>
    80004bc0:	0340006f          	j	80004bf4 <uartputc+0xdc>
    80004bc4:	00074703          	lbu	a4,0(a4)
    80004bc8:	00f93023          	sd	a5,0(s2)
    80004bcc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004bd0:	00093783          	ld	a5,0(s2)
    80004bd4:	0004b703          	ld	a4,0(s1)
    80004bd8:	00f70e63          	beq	a4,a5,80004bf4 <uartputc+0xdc>
    80004bdc:	00564683          	lbu	a3,5(a2)
    80004be0:	01f7f713          	andi	a4,a5,31
    80004be4:	00e58733          	add	a4,a1,a4
    80004be8:	0206f693          	andi	a3,a3,32
    80004bec:	00178793          	addi	a5,a5,1
    80004bf0:	fc069ae3          	bnez	a3,80004bc4 <uartputc+0xac>
    80004bf4:	02813083          	ld	ra,40(sp)
    80004bf8:	02013403          	ld	s0,32(sp)
    80004bfc:	01813483          	ld	s1,24(sp)
    80004c00:	01013903          	ld	s2,16(sp)
    80004c04:	00813983          	ld	s3,8(sp)
    80004c08:	03010113          	addi	sp,sp,48
    80004c0c:	00008067          	ret

0000000080004c10 <uartputc_sync>:
    80004c10:	ff010113          	addi	sp,sp,-16
    80004c14:	00813423          	sd	s0,8(sp)
    80004c18:	01010413          	addi	s0,sp,16
    80004c1c:	00002717          	auipc	a4,0x2
    80004c20:	14c72703          	lw	a4,332(a4) # 80006d68 <panicked>
    80004c24:	02071663          	bnez	a4,80004c50 <uartputc_sync+0x40>
    80004c28:	00050793          	mv	a5,a0
    80004c2c:	100006b7          	lui	a3,0x10000
    80004c30:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004c34:	02077713          	andi	a4,a4,32
    80004c38:	fe070ce3          	beqz	a4,80004c30 <uartputc_sync+0x20>
    80004c3c:	0ff7f793          	andi	a5,a5,255
    80004c40:	00f68023          	sb	a5,0(a3)
    80004c44:	00813403          	ld	s0,8(sp)
    80004c48:	01010113          	addi	sp,sp,16
    80004c4c:	00008067          	ret
    80004c50:	0000006f          	j	80004c50 <uartputc_sync+0x40>

0000000080004c54 <uartstart>:
    80004c54:	ff010113          	addi	sp,sp,-16
    80004c58:	00813423          	sd	s0,8(sp)
    80004c5c:	01010413          	addi	s0,sp,16
    80004c60:	00002617          	auipc	a2,0x2
    80004c64:	11060613          	addi	a2,a2,272 # 80006d70 <uart_tx_r>
    80004c68:	00002517          	auipc	a0,0x2
    80004c6c:	11050513          	addi	a0,a0,272 # 80006d78 <uart_tx_w>
    80004c70:	00063783          	ld	a5,0(a2)
    80004c74:	00053703          	ld	a4,0(a0)
    80004c78:	04f70263          	beq	a4,a5,80004cbc <uartstart+0x68>
    80004c7c:	100005b7          	lui	a1,0x10000
    80004c80:	00003817          	auipc	a6,0x3
    80004c84:	3b080813          	addi	a6,a6,944 # 80008030 <uart_tx_buf>
    80004c88:	01c0006f          	j	80004ca4 <uartstart+0x50>
    80004c8c:	0006c703          	lbu	a4,0(a3)
    80004c90:	00f63023          	sd	a5,0(a2)
    80004c94:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004c98:	00063783          	ld	a5,0(a2)
    80004c9c:	00053703          	ld	a4,0(a0)
    80004ca0:	00f70e63          	beq	a4,a5,80004cbc <uartstart+0x68>
    80004ca4:	01f7f713          	andi	a4,a5,31
    80004ca8:	00e806b3          	add	a3,a6,a4
    80004cac:	0055c703          	lbu	a4,5(a1)
    80004cb0:	00178793          	addi	a5,a5,1
    80004cb4:	02077713          	andi	a4,a4,32
    80004cb8:	fc071ae3          	bnez	a4,80004c8c <uartstart+0x38>
    80004cbc:	00813403          	ld	s0,8(sp)
    80004cc0:	01010113          	addi	sp,sp,16
    80004cc4:	00008067          	ret

0000000080004cc8 <uartgetc>:
    80004cc8:	ff010113          	addi	sp,sp,-16
    80004ccc:	00813423          	sd	s0,8(sp)
    80004cd0:	01010413          	addi	s0,sp,16
    80004cd4:	10000737          	lui	a4,0x10000
    80004cd8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004cdc:	0017f793          	andi	a5,a5,1
    80004ce0:	00078c63          	beqz	a5,80004cf8 <uartgetc+0x30>
    80004ce4:	00074503          	lbu	a0,0(a4)
    80004ce8:	0ff57513          	andi	a0,a0,255
    80004cec:	00813403          	ld	s0,8(sp)
    80004cf0:	01010113          	addi	sp,sp,16
    80004cf4:	00008067          	ret
    80004cf8:	fff00513          	li	a0,-1
    80004cfc:	ff1ff06f          	j	80004cec <uartgetc+0x24>

0000000080004d00 <uartintr>:
    80004d00:	100007b7          	lui	a5,0x10000
    80004d04:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004d08:	0017f793          	andi	a5,a5,1
    80004d0c:	0a078463          	beqz	a5,80004db4 <uartintr+0xb4>
    80004d10:	fe010113          	addi	sp,sp,-32
    80004d14:	00813823          	sd	s0,16(sp)
    80004d18:	00913423          	sd	s1,8(sp)
    80004d1c:	00113c23          	sd	ra,24(sp)
    80004d20:	02010413          	addi	s0,sp,32
    80004d24:	100004b7          	lui	s1,0x10000
    80004d28:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004d2c:	0ff57513          	andi	a0,a0,255
    80004d30:	fffff097          	auipc	ra,0xfffff
    80004d34:	534080e7          	jalr	1332(ra) # 80004264 <consoleintr>
    80004d38:	0054c783          	lbu	a5,5(s1)
    80004d3c:	0017f793          	andi	a5,a5,1
    80004d40:	fe0794e3          	bnez	a5,80004d28 <uartintr+0x28>
    80004d44:	00002617          	auipc	a2,0x2
    80004d48:	02c60613          	addi	a2,a2,44 # 80006d70 <uart_tx_r>
    80004d4c:	00002517          	auipc	a0,0x2
    80004d50:	02c50513          	addi	a0,a0,44 # 80006d78 <uart_tx_w>
    80004d54:	00063783          	ld	a5,0(a2)
    80004d58:	00053703          	ld	a4,0(a0)
    80004d5c:	04f70263          	beq	a4,a5,80004da0 <uartintr+0xa0>
    80004d60:	100005b7          	lui	a1,0x10000
    80004d64:	00003817          	auipc	a6,0x3
    80004d68:	2cc80813          	addi	a6,a6,716 # 80008030 <uart_tx_buf>
    80004d6c:	01c0006f          	j	80004d88 <uartintr+0x88>
    80004d70:	0006c703          	lbu	a4,0(a3)
    80004d74:	00f63023          	sd	a5,0(a2)
    80004d78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004d7c:	00063783          	ld	a5,0(a2)
    80004d80:	00053703          	ld	a4,0(a0)
    80004d84:	00f70e63          	beq	a4,a5,80004da0 <uartintr+0xa0>
    80004d88:	01f7f713          	andi	a4,a5,31
    80004d8c:	00e806b3          	add	a3,a6,a4
    80004d90:	0055c703          	lbu	a4,5(a1)
    80004d94:	00178793          	addi	a5,a5,1
    80004d98:	02077713          	andi	a4,a4,32
    80004d9c:	fc071ae3          	bnez	a4,80004d70 <uartintr+0x70>
    80004da0:	01813083          	ld	ra,24(sp)
    80004da4:	01013403          	ld	s0,16(sp)
    80004da8:	00813483          	ld	s1,8(sp)
    80004dac:	02010113          	addi	sp,sp,32
    80004db0:	00008067          	ret
    80004db4:	00002617          	auipc	a2,0x2
    80004db8:	fbc60613          	addi	a2,a2,-68 # 80006d70 <uart_tx_r>
    80004dbc:	00002517          	auipc	a0,0x2
    80004dc0:	fbc50513          	addi	a0,a0,-68 # 80006d78 <uart_tx_w>
    80004dc4:	00063783          	ld	a5,0(a2)
    80004dc8:	00053703          	ld	a4,0(a0)
    80004dcc:	04f70263          	beq	a4,a5,80004e10 <uartintr+0x110>
    80004dd0:	100005b7          	lui	a1,0x10000
    80004dd4:	00003817          	auipc	a6,0x3
    80004dd8:	25c80813          	addi	a6,a6,604 # 80008030 <uart_tx_buf>
    80004ddc:	01c0006f          	j	80004df8 <uartintr+0xf8>
    80004de0:	0006c703          	lbu	a4,0(a3)
    80004de4:	00f63023          	sd	a5,0(a2)
    80004de8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004dec:	00063783          	ld	a5,0(a2)
    80004df0:	00053703          	ld	a4,0(a0)
    80004df4:	02f70063          	beq	a4,a5,80004e14 <uartintr+0x114>
    80004df8:	01f7f713          	andi	a4,a5,31
    80004dfc:	00e806b3          	add	a3,a6,a4
    80004e00:	0055c703          	lbu	a4,5(a1)
    80004e04:	00178793          	addi	a5,a5,1
    80004e08:	02077713          	andi	a4,a4,32
    80004e0c:	fc071ae3          	bnez	a4,80004de0 <uartintr+0xe0>
    80004e10:	00008067          	ret
    80004e14:	00008067          	ret

0000000080004e18 <kinit>:
    80004e18:	fc010113          	addi	sp,sp,-64
    80004e1c:	02913423          	sd	s1,40(sp)
    80004e20:	fffff7b7          	lui	a5,0xfffff
    80004e24:	00004497          	auipc	s1,0x4
    80004e28:	22b48493          	addi	s1,s1,555 # 8000904f <end+0xfff>
    80004e2c:	02813823          	sd	s0,48(sp)
    80004e30:	01313c23          	sd	s3,24(sp)
    80004e34:	00f4f4b3          	and	s1,s1,a5
    80004e38:	02113c23          	sd	ra,56(sp)
    80004e3c:	03213023          	sd	s2,32(sp)
    80004e40:	01413823          	sd	s4,16(sp)
    80004e44:	01513423          	sd	s5,8(sp)
    80004e48:	04010413          	addi	s0,sp,64
    80004e4c:	000017b7          	lui	a5,0x1
    80004e50:	01100993          	li	s3,17
    80004e54:	00f487b3          	add	a5,s1,a5
    80004e58:	01b99993          	slli	s3,s3,0x1b
    80004e5c:	06f9e063          	bltu	s3,a5,80004ebc <kinit+0xa4>
    80004e60:	00003a97          	auipc	s5,0x3
    80004e64:	1f0a8a93          	addi	s5,s5,496 # 80008050 <end>
    80004e68:	0754ec63          	bltu	s1,s5,80004ee0 <kinit+0xc8>
    80004e6c:	0734fa63          	bgeu	s1,s3,80004ee0 <kinit+0xc8>
    80004e70:	00088a37          	lui	s4,0x88
    80004e74:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004e78:	00002917          	auipc	s2,0x2
    80004e7c:	f0890913          	addi	s2,s2,-248 # 80006d80 <kmem>
    80004e80:	00ca1a13          	slli	s4,s4,0xc
    80004e84:	0140006f          	j	80004e98 <kinit+0x80>
    80004e88:	000017b7          	lui	a5,0x1
    80004e8c:	00f484b3          	add	s1,s1,a5
    80004e90:	0554e863          	bltu	s1,s5,80004ee0 <kinit+0xc8>
    80004e94:	0534f663          	bgeu	s1,s3,80004ee0 <kinit+0xc8>
    80004e98:	00001637          	lui	a2,0x1
    80004e9c:	00100593          	li	a1,1
    80004ea0:	00048513          	mv	a0,s1
    80004ea4:	00000097          	auipc	ra,0x0
    80004ea8:	5e4080e7          	jalr	1508(ra) # 80005488 <__memset>
    80004eac:	00093783          	ld	a5,0(s2)
    80004eb0:	00f4b023          	sd	a5,0(s1)
    80004eb4:	00993023          	sd	s1,0(s2)
    80004eb8:	fd4498e3          	bne	s1,s4,80004e88 <kinit+0x70>
    80004ebc:	03813083          	ld	ra,56(sp)
    80004ec0:	03013403          	ld	s0,48(sp)
    80004ec4:	02813483          	ld	s1,40(sp)
    80004ec8:	02013903          	ld	s2,32(sp)
    80004ecc:	01813983          	ld	s3,24(sp)
    80004ed0:	01013a03          	ld	s4,16(sp)
    80004ed4:	00813a83          	ld	s5,8(sp)
    80004ed8:	04010113          	addi	sp,sp,64
    80004edc:	00008067          	ret
    80004ee0:	00001517          	auipc	a0,0x1
    80004ee4:	3b050513          	addi	a0,a0,944 # 80006290 <digits+0x18>
    80004ee8:	fffff097          	auipc	ra,0xfffff
    80004eec:	4b4080e7          	jalr	1204(ra) # 8000439c <panic>

0000000080004ef0 <freerange>:
    80004ef0:	fc010113          	addi	sp,sp,-64
    80004ef4:	000017b7          	lui	a5,0x1
    80004ef8:	02913423          	sd	s1,40(sp)
    80004efc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004f00:	009504b3          	add	s1,a0,s1
    80004f04:	fffff537          	lui	a0,0xfffff
    80004f08:	02813823          	sd	s0,48(sp)
    80004f0c:	02113c23          	sd	ra,56(sp)
    80004f10:	03213023          	sd	s2,32(sp)
    80004f14:	01313c23          	sd	s3,24(sp)
    80004f18:	01413823          	sd	s4,16(sp)
    80004f1c:	01513423          	sd	s5,8(sp)
    80004f20:	01613023          	sd	s6,0(sp)
    80004f24:	04010413          	addi	s0,sp,64
    80004f28:	00a4f4b3          	and	s1,s1,a0
    80004f2c:	00f487b3          	add	a5,s1,a5
    80004f30:	06f5e463          	bltu	a1,a5,80004f98 <freerange+0xa8>
    80004f34:	00003a97          	auipc	s5,0x3
    80004f38:	11ca8a93          	addi	s5,s5,284 # 80008050 <end>
    80004f3c:	0954e263          	bltu	s1,s5,80004fc0 <freerange+0xd0>
    80004f40:	01100993          	li	s3,17
    80004f44:	01b99993          	slli	s3,s3,0x1b
    80004f48:	0734fc63          	bgeu	s1,s3,80004fc0 <freerange+0xd0>
    80004f4c:	00058a13          	mv	s4,a1
    80004f50:	00002917          	auipc	s2,0x2
    80004f54:	e3090913          	addi	s2,s2,-464 # 80006d80 <kmem>
    80004f58:	00002b37          	lui	s6,0x2
    80004f5c:	0140006f          	j	80004f70 <freerange+0x80>
    80004f60:	000017b7          	lui	a5,0x1
    80004f64:	00f484b3          	add	s1,s1,a5
    80004f68:	0554ec63          	bltu	s1,s5,80004fc0 <freerange+0xd0>
    80004f6c:	0534fa63          	bgeu	s1,s3,80004fc0 <freerange+0xd0>
    80004f70:	00001637          	lui	a2,0x1
    80004f74:	00100593          	li	a1,1
    80004f78:	00048513          	mv	a0,s1
    80004f7c:	00000097          	auipc	ra,0x0
    80004f80:	50c080e7          	jalr	1292(ra) # 80005488 <__memset>
    80004f84:	00093703          	ld	a4,0(s2)
    80004f88:	016487b3          	add	a5,s1,s6
    80004f8c:	00e4b023          	sd	a4,0(s1)
    80004f90:	00993023          	sd	s1,0(s2)
    80004f94:	fcfa76e3          	bgeu	s4,a5,80004f60 <freerange+0x70>
    80004f98:	03813083          	ld	ra,56(sp)
    80004f9c:	03013403          	ld	s0,48(sp)
    80004fa0:	02813483          	ld	s1,40(sp)
    80004fa4:	02013903          	ld	s2,32(sp)
    80004fa8:	01813983          	ld	s3,24(sp)
    80004fac:	01013a03          	ld	s4,16(sp)
    80004fb0:	00813a83          	ld	s5,8(sp)
    80004fb4:	00013b03          	ld	s6,0(sp)
    80004fb8:	04010113          	addi	sp,sp,64
    80004fbc:	00008067          	ret
    80004fc0:	00001517          	auipc	a0,0x1
    80004fc4:	2d050513          	addi	a0,a0,720 # 80006290 <digits+0x18>
    80004fc8:	fffff097          	auipc	ra,0xfffff
    80004fcc:	3d4080e7          	jalr	980(ra) # 8000439c <panic>

0000000080004fd0 <kfree>:
    80004fd0:	fe010113          	addi	sp,sp,-32
    80004fd4:	00813823          	sd	s0,16(sp)
    80004fd8:	00113c23          	sd	ra,24(sp)
    80004fdc:	00913423          	sd	s1,8(sp)
    80004fe0:	02010413          	addi	s0,sp,32
    80004fe4:	03451793          	slli	a5,a0,0x34
    80004fe8:	04079c63          	bnez	a5,80005040 <kfree+0x70>
    80004fec:	00003797          	auipc	a5,0x3
    80004ff0:	06478793          	addi	a5,a5,100 # 80008050 <end>
    80004ff4:	00050493          	mv	s1,a0
    80004ff8:	04f56463          	bltu	a0,a5,80005040 <kfree+0x70>
    80004ffc:	01100793          	li	a5,17
    80005000:	01b79793          	slli	a5,a5,0x1b
    80005004:	02f57e63          	bgeu	a0,a5,80005040 <kfree+0x70>
    80005008:	00001637          	lui	a2,0x1
    8000500c:	00100593          	li	a1,1
    80005010:	00000097          	auipc	ra,0x0
    80005014:	478080e7          	jalr	1144(ra) # 80005488 <__memset>
    80005018:	00002797          	auipc	a5,0x2
    8000501c:	d6878793          	addi	a5,a5,-664 # 80006d80 <kmem>
    80005020:	0007b703          	ld	a4,0(a5)
    80005024:	01813083          	ld	ra,24(sp)
    80005028:	01013403          	ld	s0,16(sp)
    8000502c:	00e4b023          	sd	a4,0(s1)
    80005030:	0097b023          	sd	s1,0(a5)
    80005034:	00813483          	ld	s1,8(sp)
    80005038:	02010113          	addi	sp,sp,32
    8000503c:	00008067          	ret
    80005040:	00001517          	auipc	a0,0x1
    80005044:	25050513          	addi	a0,a0,592 # 80006290 <digits+0x18>
    80005048:	fffff097          	auipc	ra,0xfffff
    8000504c:	354080e7          	jalr	852(ra) # 8000439c <panic>

0000000080005050 <kalloc>:
    80005050:	fe010113          	addi	sp,sp,-32
    80005054:	00813823          	sd	s0,16(sp)
    80005058:	00913423          	sd	s1,8(sp)
    8000505c:	00113c23          	sd	ra,24(sp)
    80005060:	02010413          	addi	s0,sp,32
    80005064:	00002797          	auipc	a5,0x2
    80005068:	d1c78793          	addi	a5,a5,-740 # 80006d80 <kmem>
    8000506c:	0007b483          	ld	s1,0(a5)
    80005070:	02048063          	beqz	s1,80005090 <kalloc+0x40>
    80005074:	0004b703          	ld	a4,0(s1)
    80005078:	00001637          	lui	a2,0x1
    8000507c:	00500593          	li	a1,5
    80005080:	00048513          	mv	a0,s1
    80005084:	00e7b023          	sd	a4,0(a5)
    80005088:	00000097          	auipc	ra,0x0
    8000508c:	400080e7          	jalr	1024(ra) # 80005488 <__memset>
    80005090:	01813083          	ld	ra,24(sp)
    80005094:	01013403          	ld	s0,16(sp)
    80005098:	00048513          	mv	a0,s1
    8000509c:	00813483          	ld	s1,8(sp)
    800050a0:	02010113          	addi	sp,sp,32
    800050a4:	00008067          	ret

00000000800050a8 <initlock>:
    800050a8:	ff010113          	addi	sp,sp,-16
    800050ac:	00813423          	sd	s0,8(sp)
    800050b0:	01010413          	addi	s0,sp,16
    800050b4:	00813403          	ld	s0,8(sp)
    800050b8:	00b53423          	sd	a1,8(a0)
    800050bc:	00052023          	sw	zero,0(a0)
    800050c0:	00053823          	sd	zero,16(a0)
    800050c4:	01010113          	addi	sp,sp,16
    800050c8:	00008067          	ret

00000000800050cc <acquire>:
    800050cc:	fe010113          	addi	sp,sp,-32
    800050d0:	00813823          	sd	s0,16(sp)
    800050d4:	00913423          	sd	s1,8(sp)
    800050d8:	00113c23          	sd	ra,24(sp)
    800050dc:	01213023          	sd	s2,0(sp)
    800050e0:	02010413          	addi	s0,sp,32
    800050e4:	00050493          	mv	s1,a0
    800050e8:	10002973          	csrr	s2,sstatus
    800050ec:	100027f3          	csrr	a5,sstatus
    800050f0:	ffd7f793          	andi	a5,a5,-3
    800050f4:	10079073          	csrw	sstatus,a5
    800050f8:	fffff097          	auipc	ra,0xfffff
    800050fc:	8e4080e7          	jalr	-1820(ra) # 800039dc <mycpu>
    80005100:	07852783          	lw	a5,120(a0)
    80005104:	06078e63          	beqz	a5,80005180 <acquire+0xb4>
    80005108:	fffff097          	auipc	ra,0xfffff
    8000510c:	8d4080e7          	jalr	-1836(ra) # 800039dc <mycpu>
    80005110:	07852783          	lw	a5,120(a0)
    80005114:	0004a703          	lw	a4,0(s1)
    80005118:	0017879b          	addiw	a5,a5,1
    8000511c:	06f52c23          	sw	a5,120(a0)
    80005120:	04071063          	bnez	a4,80005160 <acquire+0x94>
    80005124:	00100713          	li	a4,1
    80005128:	00070793          	mv	a5,a4
    8000512c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005130:	0007879b          	sext.w	a5,a5
    80005134:	fe079ae3          	bnez	a5,80005128 <acquire+0x5c>
    80005138:	0ff0000f          	fence
    8000513c:	fffff097          	auipc	ra,0xfffff
    80005140:	8a0080e7          	jalr	-1888(ra) # 800039dc <mycpu>
    80005144:	01813083          	ld	ra,24(sp)
    80005148:	01013403          	ld	s0,16(sp)
    8000514c:	00a4b823          	sd	a0,16(s1)
    80005150:	00013903          	ld	s2,0(sp)
    80005154:	00813483          	ld	s1,8(sp)
    80005158:	02010113          	addi	sp,sp,32
    8000515c:	00008067          	ret
    80005160:	0104b903          	ld	s2,16(s1)
    80005164:	fffff097          	auipc	ra,0xfffff
    80005168:	878080e7          	jalr	-1928(ra) # 800039dc <mycpu>
    8000516c:	faa91ce3          	bne	s2,a0,80005124 <acquire+0x58>
    80005170:	00001517          	auipc	a0,0x1
    80005174:	12850513          	addi	a0,a0,296 # 80006298 <digits+0x20>
    80005178:	fffff097          	auipc	ra,0xfffff
    8000517c:	224080e7          	jalr	548(ra) # 8000439c <panic>
    80005180:	00195913          	srli	s2,s2,0x1
    80005184:	fffff097          	auipc	ra,0xfffff
    80005188:	858080e7          	jalr	-1960(ra) # 800039dc <mycpu>
    8000518c:	00197913          	andi	s2,s2,1
    80005190:	07252e23          	sw	s2,124(a0)
    80005194:	f75ff06f          	j	80005108 <acquire+0x3c>

0000000080005198 <release>:
    80005198:	fe010113          	addi	sp,sp,-32
    8000519c:	00813823          	sd	s0,16(sp)
    800051a0:	00113c23          	sd	ra,24(sp)
    800051a4:	00913423          	sd	s1,8(sp)
    800051a8:	01213023          	sd	s2,0(sp)
    800051ac:	02010413          	addi	s0,sp,32
    800051b0:	00052783          	lw	a5,0(a0)
    800051b4:	00079a63          	bnez	a5,800051c8 <release+0x30>
    800051b8:	00001517          	auipc	a0,0x1
    800051bc:	0e850513          	addi	a0,a0,232 # 800062a0 <digits+0x28>
    800051c0:	fffff097          	auipc	ra,0xfffff
    800051c4:	1dc080e7          	jalr	476(ra) # 8000439c <panic>
    800051c8:	01053903          	ld	s2,16(a0)
    800051cc:	00050493          	mv	s1,a0
    800051d0:	fffff097          	auipc	ra,0xfffff
    800051d4:	80c080e7          	jalr	-2036(ra) # 800039dc <mycpu>
    800051d8:	fea910e3          	bne	s2,a0,800051b8 <release+0x20>
    800051dc:	0004b823          	sd	zero,16(s1)
    800051e0:	0ff0000f          	fence
    800051e4:	0f50000f          	fence	iorw,ow
    800051e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800051ec:	ffffe097          	auipc	ra,0xffffe
    800051f0:	7f0080e7          	jalr	2032(ra) # 800039dc <mycpu>
    800051f4:	100027f3          	csrr	a5,sstatus
    800051f8:	0027f793          	andi	a5,a5,2
    800051fc:	04079a63          	bnez	a5,80005250 <release+0xb8>
    80005200:	07852783          	lw	a5,120(a0)
    80005204:	02f05e63          	blez	a5,80005240 <release+0xa8>
    80005208:	fff7871b          	addiw	a4,a5,-1
    8000520c:	06e52c23          	sw	a4,120(a0)
    80005210:	00071c63          	bnez	a4,80005228 <release+0x90>
    80005214:	07c52783          	lw	a5,124(a0)
    80005218:	00078863          	beqz	a5,80005228 <release+0x90>
    8000521c:	100027f3          	csrr	a5,sstatus
    80005220:	0027e793          	ori	a5,a5,2
    80005224:	10079073          	csrw	sstatus,a5
    80005228:	01813083          	ld	ra,24(sp)
    8000522c:	01013403          	ld	s0,16(sp)
    80005230:	00813483          	ld	s1,8(sp)
    80005234:	00013903          	ld	s2,0(sp)
    80005238:	02010113          	addi	sp,sp,32
    8000523c:	00008067          	ret
    80005240:	00001517          	auipc	a0,0x1
    80005244:	08050513          	addi	a0,a0,128 # 800062c0 <digits+0x48>
    80005248:	fffff097          	auipc	ra,0xfffff
    8000524c:	154080e7          	jalr	340(ra) # 8000439c <panic>
    80005250:	00001517          	auipc	a0,0x1
    80005254:	05850513          	addi	a0,a0,88 # 800062a8 <digits+0x30>
    80005258:	fffff097          	auipc	ra,0xfffff
    8000525c:	144080e7          	jalr	324(ra) # 8000439c <panic>

0000000080005260 <holding>:
    80005260:	00052783          	lw	a5,0(a0)
    80005264:	00079663          	bnez	a5,80005270 <holding+0x10>
    80005268:	00000513          	li	a0,0
    8000526c:	00008067          	ret
    80005270:	fe010113          	addi	sp,sp,-32
    80005274:	00813823          	sd	s0,16(sp)
    80005278:	00913423          	sd	s1,8(sp)
    8000527c:	00113c23          	sd	ra,24(sp)
    80005280:	02010413          	addi	s0,sp,32
    80005284:	01053483          	ld	s1,16(a0)
    80005288:	ffffe097          	auipc	ra,0xffffe
    8000528c:	754080e7          	jalr	1876(ra) # 800039dc <mycpu>
    80005290:	01813083          	ld	ra,24(sp)
    80005294:	01013403          	ld	s0,16(sp)
    80005298:	40a48533          	sub	a0,s1,a0
    8000529c:	00153513          	seqz	a0,a0
    800052a0:	00813483          	ld	s1,8(sp)
    800052a4:	02010113          	addi	sp,sp,32
    800052a8:	00008067          	ret

00000000800052ac <push_off>:
    800052ac:	fe010113          	addi	sp,sp,-32
    800052b0:	00813823          	sd	s0,16(sp)
    800052b4:	00113c23          	sd	ra,24(sp)
    800052b8:	00913423          	sd	s1,8(sp)
    800052bc:	02010413          	addi	s0,sp,32
    800052c0:	100024f3          	csrr	s1,sstatus
    800052c4:	100027f3          	csrr	a5,sstatus
    800052c8:	ffd7f793          	andi	a5,a5,-3
    800052cc:	10079073          	csrw	sstatus,a5
    800052d0:	ffffe097          	auipc	ra,0xffffe
    800052d4:	70c080e7          	jalr	1804(ra) # 800039dc <mycpu>
    800052d8:	07852783          	lw	a5,120(a0)
    800052dc:	02078663          	beqz	a5,80005308 <push_off+0x5c>
    800052e0:	ffffe097          	auipc	ra,0xffffe
    800052e4:	6fc080e7          	jalr	1788(ra) # 800039dc <mycpu>
    800052e8:	07852783          	lw	a5,120(a0)
    800052ec:	01813083          	ld	ra,24(sp)
    800052f0:	01013403          	ld	s0,16(sp)
    800052f4:	0017879b          	addiw	a5,a5,1
    800052f8:	06f52c23          	sw	a5,120(a0)
    800052fc:	00813483          	ld	s1,8(sp)
    80005300:	02010113          	addi	sp,sp,32
    80005304:	00008067          	ret
    80005308:	0014d493          	srli	s1,s1,0x1
    8000530c:	ffffe097          	auipc	ra,0xffffe
    80005310:	6d0080e7          	jalr	1744(ra) # 800039dc <mycpu>
    80005314:	0014f493          	andi	s1,s1,1
    80005318:	06952e23          	sw	s1,124(a0)
    8000531c:	fc5ff06f          	j	800052e0 <push_off+0x34>

0000000080005320 <pop_off>:
    80005320:	ff010113          	addi	sp,sp,-16
    80005324:	00813023          	sd	s0,0(sp)
    80005328:	00113423          	sd	ra,8(sp)
    8000532c:	01010413          	addi	s0,sp,16
    80005330:	ffffe097          	auipc	ra,0xffffe
    80005334:	6ac080e7          	jalr	1708(ra) # 800039dc <mycpu>
    80005338:	100027f3          	csrr	a5,sstatus
    8000533c:	0027f793          	andi	a5,a5,2
    80005340:	04079663          	bnez	a5,8000538c <pop_off+0x6c>
    80005344:	07852783          	lw	a5,120(a0)
    80005348:	02f05a63          	blez	a5,8000537c <pop_off+0x5c>
    8000534c:	fff7871b          	addiw	a4,a5,-1
    80005350:	06e52c23          	sw	a4,120(a0)
    80005354:	00071c63          	bnez	a4,8000536c <pop_off+0x4c>
    80005358:	07c52783          	lw	a5,124(a0)
    8000535c:	00078863          	beqz	a5,8000536c <pop_off+0x4c>
    80005360:	100027f3          	csrr	a5,sstatus
    80005364:	0027e793          	ori	a5,a5,2
    80005368:	10079073          	csrw	sstatus,a5
    8000536c:	00813083          	ld	ra,8(sp)
    80005370:	00013403          	ld	s0,0(sp)
    80005374:	01010113          	addi	sp,sp,16
    80005378:	00008067          	ret
    8000537c:	00001517          	auipc	a0,0x1
    80005380:	f4450513          	addi	a0,a0,-188 # 800062c0 <digits+0x48>
    80005384:	fffff097          	auipc	ra,0xfffff
    80005388:	018080e7          	jalr	24(ra) # 8000439c <panic>
    8000538c:	00001517          	auipc	a0,0x1
    80005390:	f1c50513          	addi	a0,a0,-228 # 800062a8 <digits+0x30>
    80005394:	fffff097          	auipc	ra,0xfffff
    80005398:	008080e7          	jalr	8(ra) # 8000439c <panic>

000000008000539c <push_on>:
    8000539c:	fe010113          	addi	sp,sp,-32
    800053a0:	00813823          	sd	s0,16(sp)
    800053a4:	00113c23          	sd	ra,24(sp)
    800053a8:	00913423          	sd	s1,8(sp)
    800053ac:	02010413          	addi	s0,sp,32
    800053b0:	100024f3          	csrr	s1,sstatus
    800053b4:	100027f3          	csrr	a5,sstatus
    800053b8:	0027e793          	ori	a5,a5,2
    800053bc:	10079073          	csrw	sstatus,a5
    800053c0:	ffffe097          	auipc	ra,0xffffe
    800053c4:	61c080e7          	jalr	1564(ra) # 800039dc <mycpu>
    800053c8:	07852783          	lw	a5,120(a0)
    800053cc:	02078663          	beqz	a5,800053f8 <push_on+0x5c>
    800053d0:	ffffe097          	auipc	ra,0xffffe
    800053d4:	60c080e7          	jalr	1548(ra) # 800039dc <mycpu>
    800053d8:	07852783          	lw	a5,120(a0)
    800053dc:	01813083          	ld	ra,24(sp)
    800053e0:	01013403          	ld	s0,16(sp)
    800053e4:	0017879b          	addiw	a5,a5,1
    800053e8:	06f52c23          	sw	a5,120(a0)
    800053ec:	00813483          	ld	s1,8(sp)
    800053f0:	02010113          	addi	sp,sp,32
    800053f4:	00008067          	ret
    800053f8:	0014d493          	srli	s1,s1,0x1
    800053fc:	ffffe097          	auipc	ra,0xffffe
    80005400:	5e0080e7          	jalr	1504(ra) # 800039dc <mycpu>
    80005404:	0014f493          	andi	s1,s1,1
    80005408:	06952e23          	sw	s1,124(a0)
    8000540c:	fc5ff06f          	j	800053d0 <push_on+0x34>

0000000080005410 <pop_on>:
    80005410:	ff010113          	addi	sp,sp,-16
    80005414:	00813023          	sd	s0,0(sp)
    80005418:	00113423          	sd	ra,8(sp)
    8000541c:	01010413          	addi	s0,sp,16
    80005420:	ffffe097          	auipc	ra,0xffffe
    80005424:	5bc080e7          	jalr	1468(ra) # 800039dc <mycpu>
    80005428:	100027f3          	csrr	a5,sstatus
    8000542c:	0027f793          	andi	a5,a5,2
    80005430:	04078463          	beqz	a5,80005478 <pop_on+0x68>
    80005434:	07852783          	lw	a5,120(a0)
    80005438:	02f05863          	blez	a5,80005468 <pop_on+0x58>
    8000543c:	fff7879b          	addiw	a5,a5,-1
    80005440:	06f52c23          	sw	a5,120(a0)
    80005444:	07853783          	ld	a5,120(a0)
    80005448:	00079863          	bnez	a5,80005458 <pop_on+0x48>
    8000544c:	100027f3          	csrr	a5,sstatus
    80005450:	ffd7f793          	andi	a5,a5,-3
    80005454:	10079073          	csrw	sstatus,a5
    80005458:	00813083          	ld	ra,8(sp)
    8000545c:	00013403          	ld	s0,0(sp)
    80005460:	01010113          	addi	sp,sp,16
    80005464:	00008067          	ret
    80005468:	00001517          	auipc	a0,0x1
    8000546c:	e8050513          	addi	a0,a0,-384 # 800062e8 <digits+0x70>
    80005470:	fffff097          	auipc	ra,0xfffff
    80005474:	f2c080e7          	jalr	-212(ra) # 8000439c <panic>
    80005478:	00001517          	auipc	a0,0x1
    8000547c:	e5050513          	addi	a0,a0,-432 # 800062c8 <digits+0x50>
    80005480:	fffff097          	auipc	ra,0xfffff
    80005484:	f1c080e7          	jalr	-228(ra) # 8000439c <panic>

0000000080005488 <__memset>:
    80005488:	ff010113          	addi	sp,sp,-16
    8000548c:	00813423          	sd	s0,8(sp)
    80005490:	01010413          	addi	s0,sp,16
    80005494:	1a060e63          	beqz	a2,80005650 <__memset+0x1c8>
    80005498:	40a007b3          	neg	a5,a0
    8000549c:	0077f793          	andi	a5,a5,7
    800054a0:	00778693          	addi	a3,a5,7
    800054a4:	00b00813          	li	a6,11
    800054a8:	0ff5f593          	andi	a1,a1,255
    800054ac:	fff6071b          	addiw	a4,a2,-1
    800054b0:	1b06e663          	bltu	a3,a6,8000565c <__memset+0x1d4>
    800054b4:	1cd76463          	bltu	a4,a3,8000567c <__memset+0x1f4>
    800054b8:	1a078e63          	beqz	a5,80005674 <__memset+0x1ec>
    800054bc:	00b50023          	sb	a1,0(a0)
    800054c0:	00100713          	li	a4,1
    800054c4:	1ae78463          	beq	a5,a4,8000566c <__memset+0x1e4>
    800054c8:	00b500a3          	sb	a1,1(a0)
    800054cc:	00200713          	li	a4,2
    800054d0:	1ae78a63          	beq	a5,a4,80005684 <__memset+0x1fc>
    800054d4:	00b50123          	sb	a1,2(a0)
    800054d8:	00300713          	li	a4,3
    800054dc:	18e78463          	beq	a5,a4,80005664 <__memset+0x1dc>
    800054e0:	00b501a3          	sb	a1,3(a0)
    800054e4:	00400713          	li	a4,4
    800054e8:	1ae78263          	beq	a5,a4,8000568c <__memset+0x204>
    800054ec:	00b50223          	sb	a1,4(a0)
    800054f0:	00500713          	li	a4,5
    800054f4:	1ae78063          	beq	a5,a4,80005694 <__memset+0x20c>
    800054f8:	00b502a3          	sb	a1,5(a0)
    800054fc:	00700713          	li	a4,7
    80005500:	18e79e63          	bne	a5,a4,8000569c <__memset+0x214>
    80005504:	00b50323          	sb	a1,6(a0)
    80005508:	00700e93          	li	t4,7
    8000550c:	00859713          	slli	a4,a1,0x8
    80005510:	00e5e733          	or	a4,a1,a4
    80005514:	01059e13          	slli	t3,a1,0x10
    80005518:	01c76e33          	or	t3,a4,t3
    8000551c:	01859313          	slli	t1,a1,0x18
    80005520:	006e6333          	or	t1,t3,t1
    80005524:	02059893          	slli	a7,a1,0x20
    80005528:	40f60e3b          	subw	t3,a2,a5
    8000552c:	011368b3          	or	a7,t1,a7
    80005530:	02859813          	slli	a6,a1,0x28
    80005534:	0108e833          	or	a6,a7,a6
    80005538:	03059693          	slli	a3,a1,0x30
    8000553c:	003e589b          	srliw	a7,t3,0x3
    80005540:	00d866b3          	or	a3,a6,a3
    80005544:	03859713          	slli	a4,a1,0x38
    80005548:	00389813          	slli	a6,a7,0x3
    8000554c:	00f507b3          	add	a5,a0,a5
    80005550:	00e6e733          	or	a4,a3,a4
    80005554:	000e089b          	sext.w	a7,t3
    80005558:	00f806b3          	add	a3,a6,a5
    8000555c:	00e7b023          	sd	a4,0(a5)
    80005560:	00878793          	addi	a5,a5,8
    80005564:	fed79ce3          	bne	a5,a3,8000555c <__memset+0xd4>
    80005568:	ff8e7793          	andi	a5,t3,-8
    8000556c:	0007871b          	sext.w	a4,a5
    80005570:	01d787bb          	addw	a5,a5,t4
    80005574:	0ce88e63          	beq	a7,a4,80005650 <__memset+0x1c8>
    80005578:	00f50733          	add	a4,a0,a5
    8000557c:	00b70023          	sb	a1,0(a4)
    80005580:	0017871b          	addiw	a4,a5,1
    80005584:	0cc77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005588:	00e50733          	add	a4,a0,a4
    8000558c:	00b70023          	sb	a1,0(a4)
    80005590:	0027871b          	addiw	a4,a5,2
    80005594:	0ac77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005598:	00e50733          	add	a4,a0,a4
    8000559c:	00b70023          	sb	a1,0(a4)
    800055a0:	0037871b          	addiw	a4,a5,3
    800055a4:	0ac77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055a8:	00e50733          	add	a4,a0,a4
    800055ac:	00b70023          	sb	a1,0(a4)
    800055b0:	0047871b          	addiw	a4,a5,4
    800055b4:	08c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055b8:	00e50733          	add	a4,a0,a4
    800055bc:	00b70023          	sb	a1,0(a4)
    800055c0:	0057871b          	addiw	a4,a5,5
    800055c4:	08c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055c8:	00e50733          	add	a4,a0,a4
    800055cc:	00b70023          	sb	a1,0(a4)
    800055d0:	0067871b          	addiw	a4,a5,6
    800055d4:	06c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055d8:	00e50733          	add	a4,a0,a4
    800055dc:	00b70023          	sb	a1,0(a4)
    800055e0:	0077871b          	addiw	a4,a5,7
    800055e4:	06c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055e8:	00e50733          	add	a4,a0,a4
    800055ec:	00b70023          	sb	a1,0(a4)
    800055f0:	0087871b          	addiw	a4,a5,8
    800055f4:	04c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    800055f8:	00e50733          	add	a4,a0,a4
    800055fc:	00b70023          	sb	a1,0(a4)
    80005600:	0097871b          	addiw	a4,a5,9
    80005604:	04c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005608:	00e50733          	add	a4,a0,a4
    8000560c:	00b70023          	sb	a1,0(a4)
    80005610:	00a7871b          	addiw	a4,a5,10
    80005614:	02c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005618:	00e50733          	add	a4,a0,a4
    8000561c:	00b70023          	sb	a1,0(a4)
    80005620:	00b7871b          	addiw	a4,a5,11
    80005624:	02c77663          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005628:	00e50733          	add	a4,a0,a4
    8000562c:	00b70023          	sb	a1,0(a4)
    80005630:	00c7871b          	addiw	a4,a5,12
    80005634:	00c77e63          	bgeu	a4,a2,80005650 <__memset+0x1c8>
    80005638:	00e50733          	add	a4,a0,a4
    8000563c:	00b70023          	sb	a1,0(a4)
    80005640:	00d7879b          	addiw	a5,a5,13
    80005644:	00c7f663          	bgeu	a5,a2,80005650 <__memset+0x1c8>
    80005648:	00f507b3          	add	a5,a0,a5
    8000564c:	00b78023          	sb	a1,0(a5)
    80005650:	00813403          	ld	s0,8(sp)
    80005654:	01010113          	addi	sp,sp,16
    80005658:	00008067          	ret
    8000565c:	00b00693          	li	a3,11
    80005660:	e55ff06f          	j	800054b4 <__memset+0x2c>
    80005664:	00300e93          	li	t4,3
    80005668:	ea5ff06f          	j	8000550c <__memset+0x84>
    8000566c:	00100e93          	li	t4,1
    80005670:	e9dff06f          	j	8000550c <__memset+0x84>
    80005674:	00000e93          	li	t4,0
    80005678:	e95ff06f          	j	8000550c <__memset+0x84>
    8000567c:	00000793          	li	a5,0
    80005680:	ef9ff06f          	j	80005578 <__memset+0xf0>
    80005684:	00200e93          	li	t4,2
    80005688:	e85ff06f          	j	8000550c <__memset+0x84>
    8000568c:	00400e93          	li	t4,4
    80005690:	e7dff06f          	j	8000550c <__memset+0x84>
    80005694:	00500e93          	li	t4,5
    80005698:	e75ff06f          	j	8000550c <__memset+0x84>
    8000569c:	00600e93          	li	t4,6
    800056a0:	e6dff06f          	j	8000550c <__memset+0x84>

00000000800056a4 <__memmove>:
    800056a4:	ff010113          	addi	sp,sp,-16
    800056a8:	00813423          	sd	s0,8(sp)
    800056ac:	01010413          	addi	s0,sp,16
    800056b0:	0e060863          	beqz	a2,800057a0 <__memmove+0xfc>
    800056b4:	fff6069b          	addiw	a3,a2,-1
    800056b8:	0006881b          	sext.w	a6,a3
    800056bc:	0ea5e863          	bltu	a1,a0,800057ac <__memmove+0x108>
    800056c0:	00758713          	addi	a4,a1,7
    800056c4:	00a5e7b3          	or	a5,a1,a0
    800056c8:	40a70733          	sub	a4,a4,a0
    800056cc:	0077f793          	andi	a5,a5,7
    800056d0:	00f73713          	sltiu	a4,a4,15
    800056d4:	00174713          	xori	a4,a4,1
    800056d8:	0017b793          	seqz	a5,a5
    800056dc:	00e7f7b3          	and	a5,a5,a4
    800056e0:	10078863          	beqz	a5,800057f0 <__memmove+0x14c>
    800056e4:	00900793          	li	a5,9
    800056e8:	1107f463          	bgeu	a5,a6,800057f0 <__memmove+0x14c>
    800056ec:	0036581b          	srliw	a6,a2,0x3
    800056f0:	fff8081b          	addiw	a6,a6,-1
    800056f4:	02081813          	slli	a6,a6,0x20
    800056f8:	01d85893          	srli	a7,a6,0x1d
    800056fc:	00858813          	addi	a6,a1,8
    80005700:	00058793          	mv	a5,a1
    80005704:	00050713          	mv	a4,a0
    80005708:	01088833          	add	a6,a7,a6
    8000570c:	0007b883          	ld	a7,0(a5)
    80005710:	00878793          	addi	a5,a5,8
    80005714:	00870713          	addi	a4,a4,8
    80005718:	ff173c23          	sd	a7,-8(a4)
    8000571c:	ff0798e3          	bne	a5,a6,8000570c <__memmove+0x68>
    80005720:	ff867713          	andi	a4,a2,-8
    80005724:	02071793          	slli	a5,a4,0x20
    80005728:	0207d793          	srli	a5,a5,0x20
    8000572c:	00f585b3          	add	a1,a1,a5
    80005730:	40e686bb          	subw	a3,a3,a4
    80005734:	00f507b3          	add	a5,a0,a5
    80005738:	06e60463          	beq	a2,a4,800057a0 <__memmove+0xfc>
    8000573c:	0005c703          	lbu	a4,0(a1)
    80005740:	00e78023          	sb	a4,0(a5)
    80005744:	04068e63          	beqz	a3,800057a0 <__memmove+0xfc>
    80005748:	0015c603          	lbu	a2,1(a1)
    8000574c:	00100713          	li	a4,1
    80005750:	00c780a3          	sb	a2,1(a5)
    80005754:	04e68663          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005758:	0025c603          	lbu	a2,2(a1)
    8000575c:	00200713          	li	a4,2
    80005760:	00c78123          	sb	a2,2(a5)
    80005764:	02e68e63          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005768:	0035c603          	lbu	a2,3(a1)
    8000576c:	00300713          	li	a4,3
    80005770:	00c781a3          	sb	a2,3(a5)
    80005774:	02e68663          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005778:	0045c603          	lbu	a2,4(a1)
    8000577c:	00400713          	li	a4,4
    80005780:	00c78223          	sb	a2,4(a5)
    80005784:	00e68e63          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005788:	0055c603          	lbu	a2,5(a1)
    8000578c:	00500713          	li	a4,5
    80005790:	00c782a3          	sb	a2,5(a5)
    80005794:	00e68663          	beq	a3,a4,800057a0 <__memmove+0xfc>
    80005798:	0065c703          	lbu	a4,6(a1)
    8000579c:	00e78323          	sb	a4,6(a5)
    800057a0:	00813403          	ld	s0,8(sp)
    800057a4:	01010113          	addi	sp,sp,16
    800057a8:	00008067          	ret
    800057ac:	02061713          	slli	a4,a2,0x20
    800057b0:	02075713          	srli	a4,a4,0x20
    800057b4:	00e587b3          	add	a5,a1,a4
    800057b8:	f0f574e3          	bgeu	a0,a5,800056c0 <__memmove+0x1c>
    800057bc:	02069613          	slli	a2,a3,0x20
    800057c0:	02065613          	srli	a2,a2,0x20
    800057c4:	fff64613          	not	a2,a2
    800057c8:	00e50733          	add	a4,a0,a4
    800057cc:	00c78633          	add	a2,a5,a2
    800057d0:	fff7c683          	lbu	a3,-1(a5)
    800057d4:	fff78793          	addi	a5,a5,-1
    800057d8:	fff70713          	addi	a4,a4,-1
    800057dc:	00d70023          	sb	a3,0(a4)
    800057e0:	fec798e3          	bne	a5,a2,800057d0 <__memmove+0x12c>
    800057e4:	00813403          	ld	s0,8(sp)
    800057e8:	01010113          	addi	sp,sp,16
    800057ec:	00008067          	ret
    800057f0:	02069713          	slli	a4,a3,0x20
    800057f4:	02075713          	srli	a4,a4,0x20
    800057f8:	00170713          	addi	a4,a4,1
    800057fc:	00e50733          	add	a4,a0,a4
    80005800:	00050793          	mv	a5,a0
    80005804:	0005c683          	lbu	a3,0(a1)
    80005808:	00178793          	addi	a5,a5,1
    8000580c:	00158593          	addi	a1,a1,1
    80005810:	fed78fa3          	sb	a3,-1(a5)
    80005814:	fee798e3          	bne	a5,a4,80005804 <__memmove+0x160>
    80005818:	f89ff06f          	j	800057a0 <__memmove+0xfc>

000000008000581c <__putc>:
    8000581c:	fe010113          	addi	sp,sp,-32
    80005820:	00813823          	sd	s0,16(sp)
    80005824:	00113c23          	sd	ra,24(sp)
    80005828:	02010413          	addi	s0,sp,32
    8000582c:	00050793          	mv	a5,a0
    80005830:	fef40593          	addi	a1,s0,-17
    80005834:	00100613          	li	a2,1
    80005838:	00000513          	li	a0,0
    8000583c:	fef407a3          	sb	a5,-17(s0)
    80005840:	fffff097          	auipc	ra,0xfffff
    80005844:	b3c080e7          	jalr	-1220(ra) # 8000437c <console_write>
    80005848:	01813083          	ld	ra,24(sp)
    8000584c:	01013403          	ld	s0,16(sp)
    80005850:	02010113          	addi	sp,sp,32
    80005854:	00008067          	ret

0000000080005858 <__getc>:
    80005858:	fe010113          	addi	sp,sp,-32
    8000585c:	00813823          	sd	s0,16(sp)
    80005860:	00113c23          	sd	ra,24(sp)
    80005864:	02010413          	addi	s0,sp,32
    80005868:	fe840593          	addi	a1,s0,-24
    8000586c:	00100613          	li	a2,1
    80005870:	00000513          	li	a0,0
    80005874:	fffff097          	auipc	ra,0xfffff
    80005878:	ae8080e7          	jalr	-1304(ra) # 8000435c <console_read>
    8000587c:	fe844503          	lbu	a0,-24(s0)
    80005880:	01813083          	ld	ra,24(sp)
    80005884:	01013403          	ld	s0,16(sp)
    80005888:	02010113          	addi	sp,sp,32
    8000588c:	00008067          	ret

0000000080005890 <console_handler>:
    80005890:	fe010113          	addi	sp,sp,-32
    80005894:	00813823          	sd	s0,16(sp)
    80005898:	00113c23          	sd	ra,24(sp)
    8000589c:	00913423          	sd	s1,8(sp)
    800058a0:	02010413          	addi	s0,sp,32
    800058a4:	14202773          	csrr	a4,scause
    800058a8:	100027f3          	csrr	a5,sstatus
    800058ac:	0027f793          	andi	a5,a5,2
    800058b0:	06079e63          	bnez	a5,8000592c <console_handler+0x9c>
    800058b4:	00074c63          	bltz	a4,800058cc <console_handler+0x3c>
    800058b8:	01813083          	ld	ra,24(sp)
    800058bc:	01013403          	ld	s0,16(sp)
    800058c0:	00813483          	ld	s1,8(sp)
    800058c4:	02010113          	addi	sp,sp,32
    800058c8:	00008067          	ret
    800058cc:	0ff77713          	andi	a4,a4,255
    800058d0:	00900793          	li	a5,9
    800058d4:	fef712e3          	bne	a4,a5,800058b8 <console_handler+0x28>
    800058d8:	ffffe097          	auipc	ra,0xffffe
    800058dc:	6dc080e7          	jalr	1756(ra) # 80003fb4 <plic_claim>
    800058e0:	00a00793          	li	a5,10
    800058e4:	00050493          	mv	s1,a0
    800058e8:	02f50c63          	beq	a0,a5,80005920 <console_handler+0x90>
    800058ec:	fc0506e3          	beqz	a0,800058b8 <console_handler+0x28>
    800058f0:	00050593          	mv	a1,a0
    800058f4:	00001517          	auipc	a0,0x1
    800058f8:	8fc50513          	addi	a0,a0,-1796 # 800061f0 <CONSOLE_STATUS+0x1e0>
    800058fc:	fffff097          	auipc	ra,0xfffff
    80005900:	afc080e7          	jalr	-1284(ra) # 800043f8 <__printf>
    80005904:	01013403          	ld	s0,16(sp)
    80005908:	01813083          	ld	ra,24(sp)
    8000590c:	00048513          	mv	a0,s1
    80005910:	00813483          	ld	s1,8(sp)
    80005914:	02010113          	addi	sp,sp,32
    80005918:	ffffe317          	auipc	t1,0xffffe
    8000591c:	6d430067          	jr	1748(t1) # 80003fec <plic_complete>
    80005920:	fffff097          	auipc	ra,0xfffff
    80005924:	3e0080e7          	jalr	992(ra) # 80004d00 <uartintr>
    80005928:	fddff06f          	j	80005904 <console_handler+0x74>
    8000592c:	00001517          	auipc	a0,0x1
    80005930:	9c450513          	addi	a0,a0,-1596 # 800062f0 <digits+0x78>
    80005934:	fffff097          	auipc	ra,0xfffff
    80005938:	a68080e7          	jalr	-1432(ra) # 8000439c <panic>
	...
