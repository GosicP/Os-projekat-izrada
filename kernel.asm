
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	06813103          	ld	sp,104(sp) # 80007068 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1e9030ef          	jal	ra,80003a04 <start>

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
    800011a4:	5b8000ef          	jal	ra,8000175c <_ZN5RiscV20handleSupervisorTrapEv>

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
    uint64 sysCallNr = 0x16UL;
    //neki stack_space alokacija se pominje????
    __asm__ volatile("mv a4, %0" : : [handle] "r"(handle));
    8000144c:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" : : [arg] "r"(arg));
    80001450:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : [start_routine] "r"(start_routine));
    80001454:	00058613          	mv	a2,a1
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r"(sysCallNr));
    80001458:	01600793          	li	a5,22
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
}
    80001498:	00813403          	ld	s0,8(sp)
    8000149c:	01010113          	addi	sp,sp,16
    800014a0:	00008067          	ret

00000000800014a4 <_Z13createWrapperPP3TCBPFvPvES2_b>:

int createWrapper(
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg, bool started){
    800014a4:	ff010113          	addi	sp,sp,-16
    800014a8:	00813423          	sd	s0,8(sp)
    800014ac:	01010413          	addi	s0,sp,16
    TCB* ret_value_thread;
    uint64 sysCallNr=0x11UL;
    //neki stack_space alokacija se pominje????
    //__asm__ volatile("mv a4, %0" : : [started] "r" (started));
    __asm__ volatile("mv a4, %0" : : [started] "r" (started));
    800014b0:	00068713          	mv	a4,a3
    __asm__ volatile("mv a3, %0" : : [arg] "r" (arg));
    800014b4:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0" : : [start_routine] "r" (start_routine));
    800014b8:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : [handle] "r" (handle));
    800014bc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    800014c0:	01100793          	li	a5,17
    800014c4:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014c8:	00000073          	ecall
    __asm__ volatile("mv %[ret_value_thread], a1" : [ret_value_thread] "=r"(ret_value_thread)); //kaze undefined reference
    800014cc:	00058793          	mv	a5,a1
    return 0;//todo
    800014d0:	00000513          	li	a0,0
    800014d4:	00813403          	ld	s0,8(sp)
    800014d8:	01010113          	addi	sp,sp,16
    800014dc:	00008067          	ret

00000000800014e0 <_Z41__static_initialization_and_destruction_0ii>:

bool Queue::isEmpty() {
    if(queue.listEmpty()==true){
        return true;
    }else{return false;}
}
    800014e0:	ff010113          	addi	sp,sp,-16
    800014e4:	00813423          	sd	s0,8(sp)
    800014e8:	01010413          	addi	s0,sp,16
    800014ec:	00100793          	li	a5,1
    800014f0:	00f50863          	beq	a0,a5,80001500 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800014f4:	00813403          	ld	s0,8(sp)
    800014f8:	01010113          	addi	sp,sp,16
    800014fc:	00008067          	ret
    80001500:	000107b7          	lui	a5,0x10
    80001504:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001508:	fef596e3          	bne	a1,a5,800014f4 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    8000150c:	00006797          	auipc	a5,0x6
    80001510:	be478793          	addi	a5,a5,-1052 # 800070f0 <_ZN5Queue5queueE>
    80001514:	0007b023          	sd	zero,0(a5)
    80001518:	0007b423          	sd	zero,8(a5)
    8000151c:	fd9ff06f          	j	800014f4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001520 <_ZN5Queue3putEP3TCB>:
void Queue::put(TCB *thread) {
    80001520:	ff010113          	addi	sp,sp,-16
    80001524:	00813423          	sd	s0,8(sp)
    80001528:	01010413          	addi	s0,sp,16

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000152c:	00006797          	auipc	a5,0x6
    80001530:	b547b783          	ld	a5,-1196(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001534:	0007b783          	ld	a5,0(a5)
    80001538:	0c078a63          	beqz	a5,8000160c <_ZN5Queue3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    8000153c:	00006717          	auipc	a4,0x6
    80001540:	b4473703          	ld	a4,-1212(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001544:	00073683          	ld	a3,0(a4)
    80001548:	0006b683          	ld	a3,0(a3)
    8000154c:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001550:	00073703          	ld	a4,0(a4)
    80001554:	00873603          	ld	a2,8(a4)
    80001558:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    8000155c:	0107b703          	ld	a4,16(a5)
    80001560:	03f00593          	li	a1,63
    80001564:	02e5f663          	bgeu	a1,a4,80001590 <_ZN5Queue3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001568:	fc070713          	addi	a4,a4,-64
    8000156c:	01800593          	li	a1,24
    80001570:	02e5ec63          	bltu	a1,a4,800015a8 <_ZN5Queue3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001574:	02060263          	beqz	a2,80001598 <_ZN5Queue3putEP3TCB+0x78>
    80001578:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    8000157c:	0007b703          	ld	a4,0(a5)
    80001580:	08070663          	beqz	a4,8000160c <_ZN5Queue3putEP3TCB+0xec>
    80001584:	0087b683          	ld	a3,8(a5)
    80001588:	00d73423          	sd	a3,8(a4)
                return cur;
    8000158c:	0800006f          	j	8000160c <_ZN5Queue3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001590:	00068793          	mv	a5,a3
    80001594:	fa5ff06f          	j	80001538 <_ZN5Queue3putEP3TCB+0x18>
                else fmem_head = cur->next;
    80001598:	00006717          	auipc	a4,0x6
    8000159c:	ae873703          	ld	a4,-1304(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015a0:	00d73023          	sd	a3,0(a4)
    800015a4:	fd9ff06f          	j	8000157c <_ZN5Queue3putEP3TCB+0x5c>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800015a8:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    800015ac:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800015b0:	0407b023          	sd	zero,64(a5)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800015b4:	0087b683          	ld	a3,8(a5)
    800015b8:	08068063          	beqz	a3,80001638 <_ZN5Queue3putEP3TCB+0x118>
    800015bc:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800015c0:	0007b683          	ld	a3,0(a5)
    800015c4:	00068463          	beqz	a3,800015cc <_ZN5Queue3putEP3TCB+0xac>
    800015c8:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800015cc:	0087b603          	ld	a2,8(a5)
    800015d0:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800015d4:	0007b683          	ld	a3,0(a5)
    800015d8:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800015dc:	0107b783          	ld	a5,16(a5)
    800015e0:	fc078793          	addi	a5,a5,-64
    800015e4:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800015e8:	0c070693          	addi	a3,a4,192
    800015ec:	00006597          	auipc	a1,0x6
    800015f0:	a945b583          	ld	a1,-1388(a1) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015f4:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800015f8:	00073583          	ld	a1,0(a4)
    800015fc:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001600:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001604:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001608:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    8000160c:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80001610:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001614:	00006717          	auipc	a4,0x6
    80001618:	ae473703          	ld	a4,-1308(a4) # 800070f8 <_ZN5Queue5queueE+0x8>
    8000161c:	02070863          	beqz	a4,8000164c <_ZN5Queue3putEP3TCB+0x12c>
            tail->next=elem;
    80001620:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001624:	00006717          	auipc	a4,0x6
    80001628:	acf73a23          	sd	a5,-1324(a4) # 800070f8 <_ZN5Queue5queueE+0x8>
}
    8000162c:	00813403          	ld	s0,8(sp)
    80001630:	01010113          	addi	sp,sp,16
    80001634:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001638:	0c070693          	addi	a3,a4,192
    8000163c:	00006617          	auipc	a2,0x6
    80001640:	a4463603          	ld	a2,-1468(a2) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001644:	00d63023          	sd	a3,0(a2)
    80001648:	f79ff06f          	j	800015c0 <_ZN5Queue3putEP3TCB+0xa0>
        }else{
            head=tail=elem;
    8000164c:	00006717          	auipc	a4,0x6
    80001650:	aa470713          	addi	a4,a4,-1372 # 800070f0 <_ZN5Queue5queueE>
    80001654:	00f73423          	sd	a5,8(a4)
    80001658:	00f73023          	sd	a5,0(a4)
    8000165c:	fd1ff06f          	j	8000162c <_ZN5Queue3putEP3TCB+0x10c>

0000000080001660 <_ZN5Queue3getEv>:
    {
    80001660:	fe010113          	addi	sp,sp,-32
    80001664:	00113c23          	sd	ra,24(sp)
    80001668:	00813823          	sd	s0,16(sp)
    8000166c:	00913423          	sd	s1,8(sp)
    80001670:	02010413          	addi	s0,sp,32
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001674:	00006517          	auipc	a0,0x6
    80001678:	a7c53503          	ld	a0,-1412(a0) # 800070f0 <_ZN5Queue5queueE>
    8000167c:	04050263          	beqz	a0,800016c0 <_ZN5Queue3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    80001680:	00853783          	ld	a5,8(a0)
    80001684:	00006717          	auipc	a4,0x6
    80001688:	a6f73623          	sd	a5,-1428(a4) # 800070f0 <_ZN5Queue5queueE>
        if(!head) {
    8000168c:	02078463          	beqz	a5,800016b4 <_ZN5Queue3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    80001690:	00053483          	ld	s1,0(a0)
        delete elem;
    80001694:	00002097          	auipc	ra,0x2
    80001698:	cd8080e7          	jalr	-808(ra) # 8000336c <_ZdlPv>
    }
    8000169c:	00048513          	mv	a0,s1
    800016a0:	01813083          	ld	ra,24(sp)
    800016a4:	01013403          	ld	s0,16(sp)
    800016a8:	00813483          	ld	s1,8(sp)
    800016ac:	02010113          	addi	sp,sp,32
    800016b0:	00008067          	ret
            tail = 0;
    800016b4:	00006797          	auipc	a5,0x6
    800016b8:	a407b223          	sd	zero,-1468(a5) # 800070f8 <_ZN5Queue5queueE+0x8>
    800016bc:	fd5ff06f          	j	80001690 <_ZN5Queue3getEv+0x30>
        if (!head) {return 0;}
    800016c0:	00050493          	mv	s1,a0
        return thread;
    800016c4:	fd9ff06f          	j	8000169c <_ZN5Queue3getEv+0x3c>

00000000800016c8 <_ZN5Queue7isEmptyEv>:
bool Queue::isEmpty() {
    800016c8:	ff010113          	addi	sp,sp,-16
    800016cc:	00813423          	sd	s0,8(sp)
    800016d0:	01010413          	addi	s0,sp,16
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    800016d4:	00006797          	auipc	a5,0x6
    800016d8:	a1c7b783          	ld	a5,-1508(a5) # 800070f0 <_ZN5Queue5queueE>
    800016dc:	00078e63          	beqz	a5,800016f8 <_ZN5Queue7isEmptyEv+0x30>
        return head->data;
    800016e0:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    800016e4:	00078e63          	beqz	a5,80001700 <_ZN5Queue7isEmptyEv+0x38>
    }else{return false;}
    800016e8:	00000513          	li	a0,0
}
    800016ec:	00813403          	ld	s0,8(sp)
    800016f0:	01010113          	addi	sp,sp,16
    800016f4:	00008067          	ret
        return true;
    800016f8:	00100513          	li	a0,1
    800016fc:	ff1ff06f          	j	800016ec <_ZN5Queue7isEmptyEv+0x24>
    80001700:	00100513          	li	a0,1
    80001704:	fe9ff06f          	j	800016ec <_ZN5Queue7isEmptyEv+0x24>

0000000080001708 <_GLOBAL__sub_I__ZN5Queue5queueE>:
}
    80001708:	ff010113          	addi	sp,sp,-16
    8000170c:	00113423          	sd	ra,8(sp)
    80001710:	00813023          	sd	s0,0(sp)
    80001714:	01010413          	addi	s0,sp,16
    80001718:	000105b7          	lui	a1,0x10
    8000171c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001720:	00100513          	li	a0,1
    80001724:	00000097          	auipc	ra,0x0
    80001728:	dbc080e7          	jalr	-580(ra) # 800014e0 <_Z41__static_initialization_and_destruction_0ii>
    8000172c:	00813083          	ld	ra,8(sp)
    80001730:	00013403          	ld	s0,0(sp)
    80001734:	01010113          	addi	sp,sp,16
    80001738:	00008067          	ret

000000008000173c <_ZN5RiscV10popSppSpieEv>:
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"


void RiscV::popSppSpie() {
    8000173c:	ff010113          	addi	sp,sp,-16
    80001740:	00813423          	sd	s0,8(sp)
    80001744:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001748:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000174c:	10200073          	sret
}
    80001750:	00813403          	ld	s0,8(sp)
    80001754:	01010113          	addi	sp,sp,16
    80001758:	00008067          	ret

000000008000175c <_ZN5RiscV20handleSupervisorTrapEv>:

void RiscV::handleSupervisorTrap() {
    8000175c:	fa010113          	addi	sp,sp,-96
    80001760:	04113c23          	sd	ra,88(sp)
    80001764:	04813823          	sd	s0,80(sp)
    80001768:	06010413          	addi	s0,sp,96
    volatile uint64 size;
    volatile uint64 handle;
    volatile uint64 start_routine;
    volatile uint64 arg;
    volatile uint64 ptr;
    __asm__ volatile("sd a4, %0" : "=m"(a4));
    8000176c:	fee43423          	sd	a4,-24(s0)
    __asm__ volatile("sd a3, %0" : "=m"(arg));
    80001770:	fcd43423          	sd	a3,-56(s0)
    __asm__ volatile("sd a2, %0" : "=m"(start_routine));
    80001774:	fcc43823          	sd	a2,-48(s0)
    __asm__ volatile("sd a1, %0" : "=m"(handle));
    80001778:	fcb43c23          	sd	a1,-40(s0)
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    8000177c:	142027f3          	csrr	a5,scause
    80001780:	faf43423          	sd	a5,-88(s0)
    return scause;
    80001784:	fa843703          	ld	a4,-88(s0)

}

inline uint64 RiscV::r_sepc(){
    uint64  sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001788:	141027f3          	csrr	a5,sepc
    //__asm__ volatile("sd a1, %0" : "=m"(size));
    //__asm__ volatile("sd a1, %0" : "=m"(ptr));
    uint64 sysCallNr;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    8000178c:	00478793          	addi	a5,a5,4
    80001790:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64 sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80001794:	100027f3          	csrr	a5,sstatus
    volatile uint64 sstatus = r_sstatus();
    80001798:	faf43823          	sd	a5,-80(s0)
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    8000179c:	00050793          	mv	a5,a0
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
    800017a0:	ff870613          	addi	a2,a4,-8
    800017a4:	00100693          	li	a3,1
    800017a8:	02c6f863          	bgeu	a3,a2,800017d8 <_ZN5RiscV20handleSupervisorTrapEv+0x7c>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    800017ac:	fff00793          	li	a5,-1
    800017b0:	03f79793          	slli	a5,a5,0x3f
    800017b4:	00178793          	addi	a5,a5,1
    800017b8:	42f70463          	beq	a4,a5,80001be0 <_ZN5RiscV20handleSupervisorTrapEv+0x484>
//             TCB::dispatch();
//             w_sstatus(sstatus);
//             w_sepc(sepc);
//         }
        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    800017bc:	fff00793          	li	a5,-1
    800017c0:	03f79793          	slli	a5,a5,0x3f
    800017c4:	00978793          	addi	a5,a5,9
    800017c8:	2ef71e63          	bne	a4,a5,80001ac4 <_ZN5RiscV20handleSupervisorTrapEv+0x368>
        //supervisor external interrupt (console)
        console_handler();
    800017cc:	00004097          	auipc	ra,0x4
    800017d0:	374080e7          	jalr	884(ra) # 80005b40 <console_handler>
        //print (scause)
        //print sepc
        //print sval

    }
    800017d4:	2f00006f          	j	80001ac4 <_ZN5RiscV20handleSupervisorTrapEv+0x368>
        if (sysCallNr == 0x01UL) {
    800017d8:	00100713          	li	a4,1
    800017dc:	06e78c63          	beq	a5,a4,80001854 <_ZN5RiscV20handleSupervisorTrapEv+0xf8>
        } else if (sysCallNr == 0x02UL) {
    800017e0:	00200713          	li	a4,2
    800017e4:	18e78463          	beq	a5,a4,8000196c <_ZN5RiscV20handleSupervisorTrapEv+0x210>
        }else if(sysCallNr == 0x11UL){
    800017e8:	01100713          	li	a4,17
    800017ec:	2ae78063          	beq	a5,a4,80001a8c <_ZN5RiscV20handleSupervisorTrapEv+0x330>
        }else if(sysCallNr == 0x12UL){
    800017f0:	01200713          	li	a4,18
    800017f4:	2ee78e63          	beq	a5,a4,80001af0 <_ZN5RiscV20handleSupervisorTrapEv+0x394>
        }else if(sysCallNr == 0x13UL){
    800017f8:	01300713          	li	a4,19
    800017fc:	32e78263          	beq	a5,a4,80001b20 <_ZN5RiscV20handleSupervisorTrapEv+0x3c4>
        }else if(sysCallNr==0x16UL){
    80001800:	01600713          	li	a4,22
    80001804:	32e78463          	beq	a5,a4,80001b2c <_ZN5RiscV20handleSupervisorTrapEv+0x3d0>
        }else if(sysCallNr==0x15UL){
    80001808:	01500713          	li	a4,21
    8000180c:	34e78263          	beq	a5,a4,80001b50 <_ZN5RiscV20handleSupervisorTrapEv+0x3f4>
        }else if(sysCallNr == 0x21UL){
    80001810:	02100713          	li	a4,33
    80001814:	34e78863          	beq	a5,a4,80001b64 <_ZN5RiscV20handleSupervisorTrapEv+0x408>
        }else if(sysCallNr == 0x22UL){
    80001818:	02200713          	li	a4,34
    8000181c:	36e78463          	beq	a5,a4,80001b84 <_ZN5RiscV20handleSupervisorTrapEv+0x428>
        }else if(sysCallNr == 0x23UL){
    80001820:	02300713          	li	a4,35
    80001824:	36e78c63          	beq	a5,a4,80001b9c <_ZN5RiscV20handleSupervisorTrapEv+0x440>
        }else if(sysCallNr == 0x24UL){
    80001828:	02400713          	li	a4,36
    8000182c:	38e78463          	beq	a5,a4,80001bb4 <_ZN5RiscV20handleSupervisorTrapEv+0x458>
       }else if(sysCallNr==0x41UL){
    80001830:	04100713          	li	a4,65
    80001834:	38e78c63          	beq	a5,a4,80001bcc <_ZN5RiscV20handleSupervisorTrapEv+0x470>
        }else if(sysCallNr==0x42UL){
    80001838:	04200713          	li	a4,66
    8000183c:	26e79c63          	bne	a5,a4,80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
            __putc((char)handle);
    80001840:	fd843503          	ld	a0,-40(s0)
    80001844:	0ff57513          	andi	a0,a0,255
    80001848:	00004097          	auipc	ra,0x4
    8000184c:	284080e7          	jalr	644(ra) # 80005acc <__putc>
    80001850:	2640006f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
    80001854:	00058793          	mv	a5,a1
    80001858:	fef43023          	sd	a5,-32(s0)
            void* pointer=MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks((size_t)size)); //gore imas da pretvoris u bytes to blocks
    8000185c:	fe043783          	ld	a5,-32(s0)

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001860:	05778793          	addi	a5,a5,87
    80001864:	0067d793          	srli	a5,a5,0x6
    80001868:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    8000186c:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001870:	00006717          	auipc	a4,0x6
    80001874:	81073703          	ld	a4,-2032(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001878:	00073703          	ld	a4,0(a4)
    8000187c:	0c070863          	beqz	a4,8000194c <_ZN5RiscV20handleSupervisorTrapEv+0x1f0>
            cur->next=fmem_head->next;
    80001880:	00006697          	auipc	a3,0x6
    80001884:	8006b683          	ld	a3,-2048(a3) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001888:	0006b603          	ld	a2,0(a3)
    8000188c:	00063603          	ld	a2,0(a2)
    80001890:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    80001894:	0006b683          	ld	a3,0(a3)
    80001898:	0086b583          	ld	a1,8(a3)
    8000189c:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    800018a0:	01073683          	ld	a3,16(a4)
    800018a4:	02f6e663          	bltu	a3,a5,800018d0 <_ZN5RiscV20handleSupervisorTrapEv+0x174>
            if (cur->size-size<=sizeof(FreeMem)){
    800018a8:	40f686b3          	sub	a3,a3,a5
    800018ac:	01800513          	li	a0,24
    800018b0:	02d56c63          	bltu	a0,a3,800018e8 <_ZN5RiscV20handleSupervisorTrapEv+0x18c>
                if (cur->prev) cur->prev->next = cur->next;
    800018b4:	02058263          	beqz	a1,800018d8 <_ZN5RiscV20handleSupervisorTrapEv+0x17c>
    800018b8:	00c5b023          	sd	a2,0(a1)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    800018bc:	00073783          	ld	a5,0(a4)
    800018c0:	08078663          	beqz	a5,8000194c <_ZN5RiscV20handleSupervisorTrapEv+0x1f0>
    800018c4:	00873683          	ld	a3,8(a4)
    800018c8:	00d7b423          	sd	a3,8(a5)
                return cur;
    800018cc:	0800006f          	j	8000194c <_ZN5RiscV20handleSupervisorTrapEv+0x1f0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800018d0:	00060713          	mv	a4,a2
    800018d4:	fa9ff06f          	j	8000187c <_ZN5RiscV20handleSupervisorTrapEv+0x120>
                else fmem_head = cur->next;
    800018d8:	00005797          	auipc	a5,0x5
    800018dc:	7a87b783          	ld	a5,1960(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018e0:	00c7b023          	sd	a2,0(a5)
    800018e4:	fd9ff06f          	j	800018bc <_ZN5RiscV20handleSupervisorTrapEv+0x160>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800018e8:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    800018ec:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    800018f0:	0006b023          	sd	zero,0(a3)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800018f4:	00873603          	ld	a2,8(a4)
    800018f8:	06060063          	beqz	a2,80001958 <_ZN5RiscV20handleSupervisorTrapEv+0x1fc>
    800018fc:	00d63023          	sd	a3,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001900:	00073603          	ld	a2,0(a4)
    80001904:	00060463          	beqz	a2,8000190c <_ZN5RiscV20handleSupervisorTrapEv+0x1b0>
    80001908:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    8000190c:	00873603          	ld	a2,8(a4)
    80001910:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    80001914:	00073583          	ld	a1,0(a4)
    80001918:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    8000191c:	01073703          	ld	a4,16(a4)
    80001920:	40f707b3          	sub	a5,a4,a5
    80001924:	00f6b823          	sd	a5,16(a3)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001928:	0c068713          	addi	a4,a3,192
    8000192c:	00005597          	auipc	a1,0x5
    80001930:	7545b583          	ld	a1,1876(a1) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001934:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    80001938:	0006b583          	ld	a1,0(a3)
    8000193c:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    80001940:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    80001944:	0cf6b823          	sd	a5,208(a3)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001948:	00068713          	mv	a4,a3
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
    8000194c:	00070593          	mv	a1,a4
            __asm__ volatile("sd a1, 88(s0)");
    80001950:	04b43c23          	sd	a1,88(s0)
    80001954:	1600006f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001958:	0c068613          	addi	a2,a3,192
    8000195c:	00005597          	auipc	a1,0x5
    80001960:	7245b583          	ld	a1,1828(a1) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001964:	00c5b023          	sd	a2,0(a1)
    80001968:	f99ff06f          	j	80001900 <_ZN5RiscV20handleSupervisorTrapEv+0x1a4>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    8000196c:	00058793          	mv	a5,a1
    80001970:	fcf43023          	sd	a5,-64(s0)
            int ret=MemoryAllocation::mem_free((void*)ptr);
    80001974:	fc043703          	ld	a4,-64(s0)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001978:	00005797          	auipc	a5,0x5
    8000197c:	7087b783          	ld	a5,1800(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001980:	0007b783          	ld	a5,0(a5)
    80001984:	00078e63          	beqz	a5,800019a0 <_ZN5RiscV20handleSupervisorTrapEv+0x244>
    80001988:	02f76063          	bltu	a4,a5,800019a8 <_ZN5RiscV20handleSupervisorTrapEv+0x24c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    8000198c:	00078693          	mv	a3,a5
    80001990:	0007b783          	ld	a5,0(a5)
    80001994:	00f70c63          	beq	a4,a5,800019ac <_ZN5RiscV20handleSupervisorTrapEv+0x250>
    80001998:	fee7eae3          	bltu	a5,a4,8000198c <_ZN5RiscV20handleSupervisorTrapEv+0x230>
    8000199c:	0100006f          	j	800019ac <_ZN5RiscV20handleSupervisorTrapEv+0x250>
            cur=nullptr;
    800019a0:	00078693          	mv	a3,a5
    800019a4:	0080006f          	j	800019ac <_ZN5RiscV20handleSupervisorTrapEv+0x250>
    800019a8:	00000693          	li	a3,0
                newSeg->next=nullptr;
    800019ac:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    800019b0:	04000793          	li	a5,64
    800019b4:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    800019b8:	00d73423          	sd	a3,8(a4)
                if(cur) {
    800019bc:	06068263          	beqz	a3,80001a20 <_ZN5RiscV20handleSupervisorTrapEv+0x2c4>
                    newSeg->next = cur->next;
    800019c0:	0006b783          	ld	a5,0(a3)
    800019c4:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    800019c8:	00073783          	ld	a5,0(a4)
    800019cc:	00078463          	beqz	a5,800019d4 <_ZN5RiscV20handleSupervisorTrapEv+0x278>
                    newSeg->next->prev=newSeg;
    800019d0:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    800019d4:	06068063          	beqz	a3,80001a34 <_ZN5RiscV20handleSupervisorTrapEv+0x2d8>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800019d8:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    800019dc:	00070c63          	beqz	a4,800019f4 <_ZN5RiscV20handleSupervisorTrapEv+0x298>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800019e0:	00073783          	ld	a5,0(a4)
    800019e4:	00078863          	beqz	a5,800019f4 <_ZN5RiscV20handleSupervisorTrapEv+0x298>
    800019e8:	01073603          	ld	a2,16(a4)
    800019ec:	00c705b3          	add	a1,a4,a2
    800019f0:	04b78a63          	beq	a5,a1,80001a44 <_ZN5RiscV20handleSupervisorTrapEv+0x2e8>
        if (!curr) return;
    800019f4:	00068c63          	beqz	a3,80001a0c <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800019f8:	0006b783          	ld	a5,0(a3)
    800019fc:	00078863          	beqz	a5,80001a0c <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
    80001a00:	0106b603          	ld	a2,16(a3)
    80001a04:	00c685b3          	add	a1,a3,a2
    80001a08:	04b78e63          	beq	a5,a1,80001a64 <_ZN5RiscV20handleSupervisorTrapEv+0x308>
            if(newSeg==nullptr){
    80001a0c:	06070c63          	beqz	a4,80001a84 <_ZN5RiscV20handleSupervisorTrapEv+0x328>
            }else{return 0;}
    80001a10:	00000793          	li	a5,0
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
    80001a14:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
    80001a18:	04b43c23          	sd	a1,88(s0)
    80001a1c:	0980006f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
                    newSeg->next = fmem_head;
    80001a20:	00005797          	auipc	a5,0x5
    80001a24:	6607b783          	ld	a5,1632(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a28:	0007b783          	ld	a5,0(a5)
    80001a2c:	00f73023          	sd	a5,0(a4)
    80001a30:	f99ff06f          	j	800019c8 <_ZN5RiscV20handleSupervisorTrapEv+0x26c>
                    fmem_head = newSeg;
    80001a34:	00005797          	auipc	a5,0x5
    80001a38:	64c7b783          	ld	a5,1612(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a3c:	00e7b023          	sd	a4,0(a5)
    80001a40:	f9dff06f          	j	800019dc <_ZN5RiscV20handleSupervisorTrapEv+0x280>
            curr->size += curr->next->size;
    80001a44:	0107b583          	ld	a1,16(a5)
    80001a48:	00b60633          	add	a2,a2,a1
    80001a4c:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    80001a50:	0007b783          	ld	a5,0(a5)
    80001a54:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001a58:	f8078ee3          	beqz	a5,800019f4 <_ZN5RiscV20handleSupervisorTrapEv+0x298>
    80001a5c:	00e7b423          	sd	a4,8(a5)
    80001a60:	f95ff06f          	j	800019f4 <_ZN5RiscV20handleSupervisorTrapEv+0x298>
            curr->size += curr->next->size;
    80001a64:	0107b583          	ld	a1,16(a5)
    80001a68:	00b60633          	add	a2,a2,a1
    80001a6c:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    80001a70:	0007b783          	ld	a5,0(a5)
    80001a74:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    80001a78:	f8078ae3          	beqz	a5,80001a0c <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
    80001a7c:	00d7b423          	sd	a3,8(a5)
    80001a80:	f8dff06f          	j	80001a0c <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
                return -1;
    80001a84:	fff00793          	li	a5,-1
    80001a88:	f8dff06f          	j	80001a14 <_ZN5RiscV20handleSupervisorTrapEv+0x2b8>
            if((bool)a4==false){
    80001a8c:	fe843783          	ld	a5,-24(s0)
    80001a90:	04079263          	bnez	a5,80001ad4 <_ZN5RiscV20handleSupervisorTrapEv+0x378>
                ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg, false);
    80001a94:	fd043503          	ld	a0,-48(s0)
    80001a98:	fd843583          	ld	a1,-40(s0)
    80001a9c:	fc843603          	ld	a2,-56(s0)
    80001aa0:	00000693          	li	a3,0
    80001aa4:	00001097          	auipc	ra,0x1
    80001aa8:	2fc080e7          	jalr	764(ra) # 80002da0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001aac:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001ab0:	04b43c23          	sd	a1,88(s0)
        w_sstatus(sstatus);
    80001ab4:	fb043783          	ld	a5,-80(s0)
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 volatile sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    80001ab8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001abc:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    80001ac0:	14179073          	csrw	sepc,a5
    80001ac4:	05813083          	ld	ra,88(sp)
    80001ac8:	05013403          	ld	s0,80(sp)
    80001acc:	06010113          	addi	sp,sp,96
    80001ad0:	00008067          	ret
                ret_val = TCB::createThread((TCB::Body) start_routine, (thread_t *) handle, (void *) arg, true);
    80001ad4:	fd043503          	ld	a0,-48(s0)
    80001ad8:	fd843583          	ld	a1,-40(s0)
    80001adc:	fc843603          	ld	a2,-56(s0)
    80001ae0:	00100693          	li	a3,1
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	2bc080e7          	jalr	700(ra) # 80002da0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>
    80001aec:	fc1ff06f          	j	80001aac <_ZN5RiscV20handleSupervisorTrapEv+0x350>
    static int createThread(Body body, TCB** handle, void* arguments, bool started);

    static void thread_dispatch(){dispatch();}

    static int thread_exit(){
        running->setFinished(true);
    80001af0:	00100593          	li	a1,1
    80001af4:	00005797          	auipc	a5,0x5
    80001af8:	5947b783          	ld	a5,1428(a5) # 80007088 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001afc:	0007b503          	ld	a0,0(a5)
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	284080e7          	jalr	644(ra) # 80002d84 <_ZN3TCB11setFinishedEb>
        dispatch();
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	5fc080e7          	jalr	1532(ra) # 80003104 <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    80001b10:	00000793          	li	a5,0
    80001b14:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    80001b18:	04b43c23          	sd	a1,88(s0)
    80001b1c:	f99ff06f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
    static void thread_dispatch(){dispatch();}
    80001b20:	00001097          	auipc	ra,0x1
    80001b24:	5e4080e7          	jalr	1508(ra) # 80003104 <_ZN3TCB8dispatchEv>
    80001b28:	f8dff06f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
            int ret_val=TCB::createThread((TCB::Body)a4, (thread_t*) handle, (void*)arg, false);
    80001b2c:	fe843503          	ld	a0,-24(s0)
    80001b30:	fd843583          	ld	a1,-40(s0)
    80001b34:	fc843603          	ld	a2,-56(s0)
    80001b38:	00000693          	li	a3,0
    80001b3c:	00001097          	auipc	ra,0x1
    80001b40:	264080e7          	jalr	612(ra) # 80002da0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001b44:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b48:	04b43c23          	sd	a1,88(s0)
    80001b4c:	f69ff06f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
            TCB::startThread((thread_t*)handle, (TCB::Body)start_routine);
    80001b50:	fd843503          	ld	a0,-40(s0)
    80001b54:	fd043583          	ld	a1,-48(s0)
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	624080e7          	jalr	1572(ra) # 8000317c <_ZN3TCB11startThreadEPPS_PFvPvE>
    80001b60:	f55ff06f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
            int retval = semaphore::semOpen((sem_t*)handle, (unsigned)start_routine);
    80001b64:	fd843503          	ld	a0,-40(s0)
    80001b68:	fd043583          	ld	a1,-48(s0)
    80001b6c:	0005859b          	sext.w	a1,a1
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	280080e7          	jalr	640(ra) # 80001df0 <_ZN9semaphore7semOpenEPPS_j>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b78:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b7c:	04b43c23          	sd	a1,88(s0)
    80001b80:	f35ff06f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
            int retval = semaphore::semClose((sem_t)handle);
    80001b84:	fd843503          	ld	a0,-40(s0)
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	488080e7          	jalr	1160(ra) # 80002010 <_ZN9semaphore8semCloseEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001b90:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001b94:	04b43c23          	sd	a1,88(s0)
    80001b98:	f1dff06f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
            int retval = semaphore::semWait((sem_t)handle);
    80001b9c:	fd843503          	ld	a0,-40(s0)
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	5bc080e7          	jalr	1468(ra) # 8000215c <_ZN9semaphore7semWaitEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001ba8:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001bac:	04b43c23          	sd	a1,88(s0)
    80001bb0:	f05ff06f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
            int retval = semaphore::semSignal((sem_t)handle);
    80001bb4:	fd843503          	ld	a0,-40(s0)
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	5f8080e7          	jalr	1528(ra) # 800021b0 <_ZN9semaphore9semSignalEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001bc0:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001bc4:	04b43c23          	sd	a1,88(s0)
    80001bc8:	eedff06f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
            char retval = __getc();
    80001bcc:	00004097          	auipc	ra,0x4
    80001bd0:	f3c080e7          	jalr	-196(ra) # 80005b08 <__getc>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001bd4:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001bd8:	04b43c23          	sd	a1,88(s0)
    80001bdc:	ed9ff06f          	j	80001ab4 <_ZN5RiscV20handleSupervisorTrapEv+0x358>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001be0:	00200793          	li	a5,2
    80001be4:	1447b073          	csrc	sip,a5
}
    80001be8:	eddff06f          	j	80001ac4 <_ZN5RiscV20handleSupervisorTrapEv+0x368>

0000000080001bec <_ZN9semaphore5blockEv>:
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"

void semaphore::block() {
    80001bec:	fe010113          	addi	sp,sp,-32
    80001bf0:	00113c23          	sd	ra,24(sp)
    80001bf4:	00813823          	sd	s0,16(sp)
    80001bf8:	00913423          	sd	s1,8(sp)
    80001bfc:	01213023          	sd	s2,0(sp)
    80001c00:	02010413          	addi	s0,sp,32
    80001c04:	00050913          	mv	s2,a0
        //setjmp je linija old=running;
        TCB *old = TCB::running;
    80001c08:	00005797          	auipc	a5,0x5
    80001c0c:	4807b783          	ld	a5,1152(a5) # 80007088 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c10:	0007b483          	ld	s1,0(a5)
        old->semBlocked=this;
    80001c14:	02a4b823          	sd	a0,48(s1)
        if (!old->isFinished()) {
    80001c18:	00048513          	mv	a0,s1
    80001c1c:	00001097          	auipc	ra,0x1
    80001c20:	14c080e7          	jalr	332(ra) # 80002d68 <_ZNK3TCB10isFinishedEv>
    80001c24:	04050063          	beqz	a0,80001c64 <_ZN9semaphore5blockEv+0x78>
            blocked->addLast(old);
        }
        TCB::running = Scheduler::get();
    80001c28:	00001097          	auipc	ra,0x1
    80001c2c:	ebc080e7          	jalr	-324(ra) # 80002ae4 <_ZN9Scheduler3getEv>
    80001c30:	00005797          	auipc	a5,0x5
    80001c34:	4587b783          	ld	a5,1112(a5) # 80007088 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c38:	00a7b023          	sd	a0,0(a5)


        TCB::contextSwitch(&old->context, &TCB::running->context);//TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
    80001c3c:	01050593          	addi	a1,a0,16
    80001c40:	01048513          	addi	a0,s1,16
    80001c44:	fffff097          	auipc	ra,0xfffff
    80001c48:	5ec080e7          	jalr	1516(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
        //marinko kaze da je dobar ovaj block

        //TCB::running->semBlocked=this;
        //this->blocked->put(TCB::running);
        //TCB::dispatch();
}
    80001c4c:	01813083          	ld	ra,24(sp)
    80001c50:	01013403          	ld	s0,16(sp)
    80001c54:	00813483          	ld	s1,8(sp)
    80001c58:	00013903          	ld	s2,0(sp)
    80001c5c:	02010113          	addi	sp,sp,32
    80001c60:	00008067          	ret
            blocked->addLast(old);
    80001c64:	00893583          	ld	a1,8(s2)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001c68:	00005797          	auipc	a5,0x5
    80001c6c:	4187b783          	ld	a5,1048(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c70:	0007b783          	ld	a5,0(a5)
    80001c74:	0c078a63          	beqz	a5,80001d48 <_ZN9semaphore5blockEv+0x15c>
            cur->next=fmem_head->next;
    80001c78:	00005717          	auipc	a4,0x5
    80001c7c:	40873703          	ld	a4,1032(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c80:	00073683          	ld	a3,0(a4)
    80001c84:	0006b683          	ld	a3,0(a3)
    80001c88:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001c8c:	00073703          	ld	a4,0(a4)
    80001c90:	00873603          	ld	a2,8(a4)
    80001c94:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001c98:	0107b703          	ld	a4,16(a5)
    80001c9c:	03f00513          	li	a0,63
    80001ca0:	02e57663          	bgeu	a0,a4,80001ccc <_ZN9semaphore5blockEv+0xe0>
            if (cur->size-size<=sizeof(FreeMem)){
    80001ca4:	fc070713          	addi	a4,a4,-64
    80001ca8:	01800513          	li	a0,24
    80001cac:	02e56c63          	bltu	a0,a4,80001ce4 <_ZN9semaphore5blockEv+0xf8>
                if (cur->prev) cur->prev->next = cur->next;
    80001cb0:	02060263          	beqz	a2,80001cd4 <_ZN9semaphore5blockEv+0xe8>
    80001cb4:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001cb8:	0007b703          	ld	a4,0(a5)
    80001cbc:	08070663          	beqz	a4,80001d48 <_ZN9semaphore5blockEv+0x15c>
    80001cc0:	0087b683          	ld	a3,8(a5)
    80001cc4:	00d73423          	sd	a3,8(a4)
                return cur;
    80001cc8:	0800006f          	j	80001d48 <_ZN9semaphore5blockEv+0x15c>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001ccc:	00068793          	mv	a5,a3
    80001cd0:	fa5ff06f          	j	80001c74 <_ZN9semaphore5blockEv+0x88>
                else fmem_head = cur->next;
    80001cd4:	00005717          	auipc	a4,0x5
    80001cd8:	3ac73703          	ld	a4,940(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cdc:	00d73023          	sd	a3,0(a4)
    80001ce0:	fd9ff06f          	j	80001cb8 <_ZN9semaphore5blockEv+0xcc>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001ce4:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001ce8:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001cec:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001cf0:	0087b683          	ld	a3,8(a5)
    80001cf4:	06068863          	beqz	a3,80001d64 <_ZN9semaphore5blockEv+0x178>
    80001cf8:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001cfc:	0007b683          	ld	a3,0(a5)
    80001d00:	00068463          	beqz	a3,80001d08 <_ZN9semaphore5blockEv+0x11c>
    80001d04:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001d08:	0087b603          	ld	a2,8(a5)
    80001d0c:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001d10:	0007b683          	ld	a3,0(a5)
    80001d14:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001d18:	0107b783          	ld	a5,16(a5)
    80001d1c:	fc078793          	addi	a5,a5,-64
    80001d20:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001d24:	0c070693          	addi	a3,a4,192
    80001d28:	00005517          	auipc	a0,0x5
    80001d2c:	35853503          	ld	a0,856(a0) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d30:	00d53023          	sd	a3,0(a0)
                fmem_head->next=newfrgm->next;
    80001d34:	00073503          	ld	a0,0(a4)
    80001d38:	0ca73023          	sd	a0,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001d3c:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001d40:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001d44:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    80001d48:	0097b023          	sd	s1,0(a5)
        elem->next=nullptr;
    80001d4c:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001d50:	0085b703          	ld	a4,8(a1)
    80001d54:	02070263          	beqz	a4,80001d78 <_ZN9semaphore5blockEv+0x18c>
            tail->next=elem;
    80001d58:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001d5c:	00f5b423          	sd	a5,8(a1)
    80001d60:	ec9ff06f          	j	80001c28 <_ZN9semaphore5blockEv+0x3c>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001d64:	0c070693          	addi	a3,a4,192
    80001d68:	00005617          	auipc	a2,0x5
    80001d6c:	31863603          	ld	a2,792(a2) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d70:	00d63023          	sd	a3,0(a2)
    80001d74:	f89ff06f          	j	80001cfc <_ZN9semaphore5blockEv+0x110>
        }else{
            head=tail=elem;
    80001d78:	00f5b423          	sd	a5,8(a1)
    80001d7c:	00f5b023          	sd	a5,0(a1)
    80001d80:	ea9ff06f          	j	80001c28 <_ZN9semaphore5blockEv+0x3c>

0000000080001d84 <_ZN9semaphore7unblockEv>:

void semaphore::unblock() {
    80001d84:	fe010113          	addi	sp,sp,-32
    80001d88:	00113c23          	sd	ra,24(sp)
    80001d8c:	00813823          	sd	s0,16(sp)
    80001d90:	00913423          	sd	s1,8(sp)
    80001d94:	02010413          	addi	s0,sp,32
    TCB* t = blocked->removeFirst();
    80001d98:	00853783          	ld	a5,8(a0)
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001d9c:	0007b503          	ld	a0,0(a5)
    80001da0:	04050463          	beqz	a0,80001de8 <_ZN9semaphore7unblockEv+0x64>
        Elem *elem = head;
        head = head->next;
    80001da4:	00853703          	ld	a4,8(a0)
    80001da8:	00e7b023          	sd	a4,0(a5)
        if(!head) {
    80001dac:	02070a63          	beqz	a4,80001de0 <_ZN9semaphore7unblockEv+0x5c>
            tail = 0;
        }
        T* ret = elem->data;
    80001db0:	00053483          	ld	s1,0(a0)
        delete elem;
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	5b8080e7          	jalr	1464(ra) # 8000336c <_ZdlPv>
    t->semBlocked=nullptr;
    80001dbc:	0204b823          	sd	zero,48(s1)
    Scheduler::put(t);
    80001dc0:	00048513          	mv	a0,s1
    80001dc4:	00001097          	auipc	ra,0x1
    80001dc8:	d88080e7          	jalr	-632(ra) # 80002b4c <_ZN9Scheduler3putEP3TCB>
}
    80001dcc:	01813083          	ld	ra,24(sp)
    80001dd0:	01013403          	ld	s0,16(sp)
    80001dd4:	00813483          	ld	s1,8(sp)
    80001dd8:	02010113          	addi	sp,sp,32
    80001ddc:	00008067          	ret
            tail = 0;
    80001de0:	0007b423          	sd	zero,8(a5)
    80001de4:	fcdff06f          	j	80001db0 <_ZN9semaphore7unblockEv+0x2c>
        if (!head) {return 0;}
    80001de8:	00050493          	mv	s1,a0
    80001dec:	fd1ff06f          	j	80001dbc <_ZN9semaphore7unblockEv+0x38>

0000000080001df0 <_ZN9semaphore7semOpenEPPS_j>:

int semaphore::semOpen(semaphore **handle, unsigned init) {
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00813423          	sd	s0,8(sp)
    80001df8:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001dfc:	00005797          	auipc	a5,0x5
    80001e00:	2847b783          	ld	a5,644(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e04:	0007b783          	ld	a5,0(a5)
    80001e08:	0c078a63          	beqz	a5,80001edc <_ZN9semaphore7semOpenEPPS_j+0xec>
            cur->next=fmem_head->next;
    80001e0c:	00005717          	auipc	a4,0x5
    80001e10:	27473703          	ld	a4,628(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e14:	00073683          	ld	a3,0(a4)
    80001e18:	0006b683          	ld	a3,0(a3)
    80001e1c:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001e20:	00073703          	ld	a4,0(a4)
    80001e24:	00873603          	ld	a2,8(a4)
    80001e28:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001e2c:	0107b703          	ld	a4,16(a5)
    80001e30:	03f00813          	li	a6,63
    80001e34:	02e87663          	bgeu	a6,a4,80001e60 <_ZN9semaphore7semOpenEPPS_j+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001e38:	fc070713          	addi	a4,a4,-64
    80001e3c:	01800813          	li	a6,24
    80001e40:	02e86c63          	bltu	a6,a4,80001e78 <_ZN9semaphore7semOpenEPPS_j+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001e44:	02060263          	beqz	a2,80001e68 <_ZN9semaphore7semOpenEPPS_j+0x78>
    80001e48:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001e4c:	0007b703          	ld	a4,0(a5)
    80001e50:	08070663          	beqz	a4,80001edc <_ZN9semaphore7semOpenEPPS_j+0xec>
    80001e54:	0087b683          	ld	a3,8(a5)
    80001e58:	00d73423          	sd	a3,8(a4)
                return cur;
    80001e5c:	0800006f          	j	80001edc <_ZN9semaphore7semOpenEPPS_j+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001e60:	00068793          	mv	a5,a3
    80001e64:	fa5ff06f          	j	80001e08 <_ZN9semaphore7semOpenEPPS_j+0x18>
                else fmem_head = cur->next;
    80001e68:	00005717          	auipc	a4,0x5
    80001e6c:	21873703          	ld	a4,536(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e70:	00d73023          	sd	a3,0(a4)
    80001e74:	fd9ff06f          	j	80001e4c <_ZN9semaphore7semOpenEPPS_j+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001e78:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001e7c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001e80:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001e84:	0087b683          	ld	a3,8(a5)
    80001e88:	0c068463          	beqz	a3,80001f50 <_ZN9semaphore7semOpenEPPS_j+0x160>
    80001e8c:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001e90:	0007b683          	ld	a3,0(a5)
    80001e94:	00068463          	beqz	a3,80001e9c <_ZN9semaphore7semOpenEPPS_j+0xac>
    80001e98:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001e9c:	0087b603          	ld	a2,8(a5)
    80001ea0:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001ea4:	0007b683          	ld	a3,0(a5)
    80001ea8:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001eac:	0107b783          	ld	a5,16(a5)
    80001eb0:	fc078793          	addi	a5,a5,-64
    80001eb4:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001eb8:	0c070693          	addi	a3,a4,192
    80001ebc:	00005817          	auipc	a6,0x5
    80001ec0:	1c483803          	ld	a6,452(a6) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ec4:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80001ec8:	00073803          	ld	a6,0(a4)
    80001ecc:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001ed0:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001ed4:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001ed8:	00070793          	mv	a5,a4
    *handle=(semaphore*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(semaphore)));
    80001edc:	00f53023          	sd	a5,0(a0)
    if (*handle==nullptr){
    80001ee0:	12078463          	beqz	a5,80002008 <_ZN9semaphore7semOpenEPPS_j+0x218>
        return -1;
    }
    (*handle)->val=init;
    80001ee4:	00b7a023          	sw	a1,0(a5)
    (*handle)->blocked=(LinkedList<TCB>*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(LinkedList<TCB>)));
    80001ee8:	00053503          	ld	a0,0(a0)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001eec:	00005797          	auipc	a5,0x5
    80001ef0:	1947b783          	ld	a5,404(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ef4:	0007b783          	ld	a5,0(a5)
    80001ef8:	0e078463          	beqz	a5,80001fe0 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
            cur->next=fmem_head->next;
    80001efc:	00005717          	auipc	a4,0x5
    80001f00:	18473703          	ld	a4,388(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f04:	00073683          	ld	a3,0(a4)
    80001f08:	0006b683          	ld	a3,0(a3)
    80001f0c:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001f10:	00073703          	ld	a4,0(a4)
    80001f14:	00873603          	ld	a2,8(a4)
    80001f18:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001f1c:	0107b703          	ld	a4,16(a5)
    80001f20:	03f00593          	li	a1,63
    80001f24:	04e5f063          	bgeu	a1,a4,80001f64 <_ZN9semaphore7semOpenEPPS_j+0x174>
            if (cur->size-size<=sizeof(FreeMem)){
    80001f28:	fc070713          	addi	a4,a4,-64
    80001f2c:	01800593          	li	a1,24
    80001f30:	04e5e663          	bltu	a1,a4,80001f7c <_ZN9semaphore7semOpenEPPS_j+0x18c>
                if (cur->prev) cur->prev->next = cur->next;
    80001f34:	02060c63          	beqz	a2,80001f6c <_ZN9semaphore7semOpenEPPS_j+0x17c>
    80001f38:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001f3c:	0007b703          	ld	a4,0(a5)
    80001f40:	0a070063          	beqz	a4,80001fe0 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
    80001f44:	0087b683          	ld	a3,8(a5)
    80001f48:	00d73423          	sd	a3,8(a4)
                return cur;
    80001f4c:	0940006f          	j	80001fe0 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001f50:	0c070693          	addi	a3,a4,192
    80001f54:	00005617          	auipc	a2,0x5
    80001f58:	12c63603          	ld	a2,300(a2) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f5c:	00d63023          	sd	a3,0(a2)
    80001f60:	f31ff06f          	j	80001e90 <_ZN9semaphore7semOpenEPPS_j+0xa0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001f64:	00068793          	mv	a5,a3
    80001f68:	f91ff06f          	j	80001ef8 <_ZN9semaphore7semOpenEPPS_j+0x108>
                else fmem_head = cur->next;
    80001f6c:	00005717          	auipc	a4,0x5
    80001f70:	11473703          	ld	a4,276(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f74:	00d73023          	sd	a3,0(a4)
    80001f78:	fc5ff06f          	j	80001f3c <_ZN9semaphore7semOpenEPPS_j+0x14c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001f7c:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001f80:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001f84:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001f88:	0087b683          	ld	a3,8(a5)
    80001f8c:	06068463          	beqz	a3,80001ff4 <_ZN9semaphore7semOpenEPPS_j+0x204>
    80001f90:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001f94:	0007b683          	ld	a3,0(a5)
    80001f98:	00068463          	beqz	a3,80001fa0 <_ZN9semaphore7semOpenEPPS_j+0x1b0>
    80001f9c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001fa0:	0087b603          	ld	a2,8(a5)
    80001fa4:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001fa8:	0007b683          	ld	a3,0(a5)
    80001fac:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001fb0:	0107b783          	ld	a5,16(a5)
    80001fb4:	fc078793          	addi	a5,a5,-64
    80001fb8:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001fbc:	0c070693          	addi	a3,a4,192
    80001fc0:	00005597          	auipc	a1,0x5
    80001fc4:	0c05b583          	ld	a1,192(a1) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fc8:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001fcc:	00073583          	ld	a1,0(a4)
    80001fd0:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001fd4:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001fd8:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001fdc:	00070793          	mv	a5,a4
    80001fe0:	00f53423          	sd	a5,8(a0)
    return  0;
    80001fe4:	00000513          	li	a0,0
}
    80001fe8:	00813403          	ld	s0,8(sp)
    80001fec:	01010113          	addi	sp,sp,16
    80001ff0:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001ff4:	0c070693          	addi	a3,a4,192
    80001ff8:	00005617          	auipc	a2,0x5
    80001ffc:	08863603          	ld	a2,136(a2) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002000:	00d63023          	sd	a3,0(a2)
    80002004:	f91ff06f          	j	80001f94 <_ZN9semaphore7semOpenEPPS_j+0x1a4>
        return -1;
    80002008:	fff00513          	li	a0,-1
    8000200c:	fddff06f          	j	80001fe8 <_ZN9semaphore7semOpenEPPS_j+0x1f8>

0000000080002010 <_ZN9semaphore8semCloseEPS_>:

int semaphore::semClose(semaphore *semID) {
    80002010:	fe010113          	addi	sp,sp,-32
    80002014:	00113c23          	sd	ra,24(sp)
    80002018:	00813823          	sd	s0,16(sp)
    8000201c:	00913423          	sd	s1,8(sp)
    80002020:	02010413          	addi	s0,sp,32
    80002024:	00050493          	mv	s1,a0
    while(((semID)->blocked->listEmpty())==false){
    80002028:	0084b783          	ld	a5,8(s1)
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    8000202c:	0007b783          	ld	a5,0(a5)
    80002030:	00078e63          	beqz	a5,8000204c <_ZN9semaphore8semCloseEPS_+0x3c>
        return head->data;
    80002034:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    80002038:	00078a63          	beqz	a5,8000204c <_ZN9semaphore8semCloseEPS_+0x3c>
        (semID)->unblock();
    8000203c:	00048513          	mv	a0,s1
    80002040:	00000097          	auipc	ra,0x0
    80002044:	d44080e7          	jalr	-700(ra) # 80001d84 <_ZN9semaphore7unblockEv>
    while(((semID)->blocked->listEmpty())==false){
    80002048:	fe1ff06f          	j	80002028 <_ZN9semaphore8semCloseEPS_+0x18>
        if(!fmem_head || ptr < (char*)fmem_head)
    8000204c:	00005797          	auipc	a5,0x5
    80002050:	0347b783          	ld	a5,52(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002054:	0007b783          	ld	a5,0(a5)
    80002058:	00078e63          	beqz	a5,80002074 <_ZN9semaphore8semCloseEPS_+0x64>
    8000205c:	02f4e063          	bltu	s1,a5,8000207c <_ZN9semaphore8semCloseEPS_+0x6c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002060:	00078713          	mv	a4,a5
    80002064:	0007b783          	ld	a5,0(a5)
    80002068:	00f48c63          	beq	s1,a5,80002080 <_ZN9semaphore8semCloseEPS_+0x70>
    8000206c:	fe97eae3          	bltu	a5,s1,80002060 <_ZN9semaphore8semCloseEPS_+0x50>
    80002070:	0100006f          	j	80002080 <_ZN9semaphore8semCloseEPS_+0x70>
            cur=nullptr;
    80002074:	00078713          	mv	a4,a5
    80002078:	0080006f          	j	80002080 <_ZN9semaphore8semCloseEPS_+0x70>
    8000207c:	00000713          	li	a4,0
                newSeg->next=nullptr;
    80002080:	0004b023          	sd	zero,0(s1)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002084:	04000793          	li	a5,64
    80002088:	00f4b823          	sd	a5,16(s1)
                newSeg->prev=cur;
    8000208c:	00e4b423          	sd	a4,8(s1)
                if(cur) {
    80002090:	06070463          	beqz	a4,800020f8 <_ZN9semaphore8semCloseEPS_+0xe8>
                    newSeg->next = cur->next;
    80002094:	00073783          	ld	a5,0(a4)
    80002098:	00f4b023          	sd	a5,0(s1)
                if(newSeg->next) {
    8000209c:	0004b783          	ld	a5,0(s1)
    800020a0:	00078463          	beqz	a5,800020a8 <_ZN9semaphore8semCloseEPS_+0x98>
                    newSeg->next->prev=newSeg;
    800020a4:	0097b423          	sd	s1,8(a5)
                if (cur) {
    800020a8:	06070263          	beqz	a4,8000210c <_ZN9semaphore8semCloseEPS_+0xfc>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800020ac:	00973023          	sd	s1,0(a4)
        if (!curr) return;
    800020b0:	00048c63          	beqz	s1,800020c8 <_ZN9semaphore8semCloseEPS_+0xb8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800020b4:	0004b783          	ld	a5,0(s1)
    800020b8:	00078863          	beqz	a5,800020c8 <_ZN9semaphore8semCloseEPS_+0xb8>
    800020bc:	0104b683          	ld	a3,16(s1)
    800020c0:	00d48633          	add	a2,s1,a3
    800020c4:	04c78c63          	beq	a5,a2,8000211c <_ZN9semaphore8semCloseEPS_+0x10c>
        if (!curr) return;
    800020c8:	00070c63          	beqz	a4,800020e0 <_ZN9semaphore8semCloseEPS_+0xd0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800020cc:	00073783          	ld	a5,0(a4)
    800020d0:	00078863          	beqz	a5,800020e0 <_ZN9semaphore8semCloseEPS_+0xd0>
    800020d4:	01073683          	ld	a3,16(a4)
    800020d8:	00d70633          	add	a2,a4,a3
    800020dc:	06c78063          	beq	a5,a2,8000213c <_ZN9semaphore8semCloseEPS_+0x12c>
        //TODO wait treba da vrati gresku? Kako to?
    }
    MemoryAllocation::mem_free(semID); //TODO mozda moze i samo (*handle)=nullptr
    return 0;
}
    800020e0:	00000513          	li	a0,0
    800020e4:	01813083          	ld	ra,24(sp)
    800020e8:	01013403          	ld	s0,16(sp)
    800020ec:	00813483          	ld	s1,8(sp)
    800020f0:	02010113          	addi	sp,sp,32
    800020f4:	00008067          	ret
                    newSeg->next = fmem_head;
    800020f8:	00005797          	auipc	a5,0x5
    800020fc:	f887b783          	ld	a5,-120(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002100:	0007b783          	ld	a5,0(a5)
    80002104:	00f4b023          	sd	a5,0(s1)
    80002108:	f95ff06f          	j	8000209c <_ZN9semaphore8semCloseEPS_+0x8c>
                    fmem_head = newSeg;
    8000210c:	00005797          	auipc	a5,0x5
    80002110:	f747b783          	ld	a5,-140(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002114:	0097b023          	sd	s1,0(a5)
    80002118:	f99ff06f          	j	800020b0 <_ZN9semaphore8semCloseEPS_+0xa0>
            curr->size += curr->next->size;
    8000211c:	0107b603          	ld	a2,16(a5)
    80002120:	00c686b3          	add	a3,a3,a2
    80002124:	00d4b823          	sd	a3,16(s1)
            curr->next = curr->next->next;
    80002128:	0007b783          	ld	a5,0(a5)
    8000212c:	00f4b023          	sd	a5,0(s1)
            if (curr->next) curr->next->prev = curr;
    80002130:	f8078ce3          	beqz	a5,800020c8 <_ZN9semaphore8semCloseEPS_+0xb8>
    80002134:	0097b423          	sd	s1,8(a5)
    80002138:	f91ff06f          	j	800020c8 <_ZN9semaphore8semCloseEPS_+0xb8>
            curr->size += curr->next->size;
    8000213c:	0107b603          	ld	a2,16(a5)
    80002140:	00c686b3          	add	a3,a3,a2
    80002144:	00d73823          	sd	a3,16(a4)
            curr->next = curr->next->next;
    80002148:	0007b783          	ld	a5,0(a5)
    8000214c:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80002150:	f80788e3          	beqz	a5,800020e0 <_ZN9semaphore8semCloseEPS_+0xd0>
    80002154:	00e7b423          	sd	a4,8(a5)
    80002158:	f89ff06f          	j	800020e0 <_ZN9semaphore8semCloseEPS_+0xd0>

000000008000215c <_ZN9semaphore7semWaitEPS_>:

int semaphore::semWait(semaphore *semID) {
    if(semID == nullptr){return -1;}
    8000215c:	04050663          	beqz	a0,800021a8 <_ZN9semaphore7semWaitEPS_+0x4c>
    if((--((semID)->val))<0) { (semID)->block(); }
    80002160:	00052783          	lw	a5,0(a0)
    80002164:	fff7879b          	addiw	a5,a5,-1
    80002168:	00f52023          	sw	a5,0(a0)
    8000216c:	02079713          	slli	a4,a5,0x20
    80002170:	00074663          	bltz	a4,8000217c <_ZN9semaphore7semWaitEPS_+0x20>
    return 0;
    80002174:	00000513          	li	a0,0
}
    80002178:	00008067          	ret
int semaphore::semWait(semaphore *semID) {
    8000217c:	ff010113          	addi	sp,sp,-16
    80002180:	00113423          	sd	ra,8(sp)
    80002184:	00813023          	sd	s0,0(sp)
    80002188:	01010413          	addi	s0,sp,16
    if((--((semID)->val))<0) { (semID)->block(); }
    8000218c:	00000097          	auipc	ra,0x0
    80002190:	a60080e7          	jalr	-1440(ra) # 80001bec <_ZN9semaphore5blockEv>
    return 0;
    80002194:	00000513          	li	a0,0
}
    80002198:	00813083          	ld	ra,8(sp)
    8000219c:	00013403          	ld	s0,0(sp)
    800021a0:	01010113          	addi	sp,sp,16
    800021a4:	00008067          	ret
    if(semID == nullptr){return -1;}
    800021a8:	fff00513          	li	a0,-1
    800021ac:	00008067          	ret

00000000800021b0 <_ZN9semaphore9semSignalEPS_>:

int semaphore::semSignal(semaphore *semID) {
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    800021b0:	00052783          	lw	a5,0(a0)
    800021b4:	0017879b          	addiw	a5,a5,1
    800021b8:	0007871b          	sext.w	a4,a5
    800021bc:	00f52023          	sw	a5,0(a0)
    800021c0:	00e05663          	blez	a4,800021cc <_ZN9semaphore9semSignalEPS_+0x1c>
    return 0;
}
    800021c4:	00000513          	li	a0,0
    800021c8:	00008067          	ret
int semaphore::semSignal(semaphore *semID) {
    800021cc:	ff010113          	addi	sp,sp,-16
    800021d0:	00113423          	sd	ra,8(sp)
    800021d4:	00813023          	sd	s0,0(sp)
    800021d8:	01010413          	addi	s0,sp,16
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    800021dc:	00000097          	auipc	ra,0x0
    800021e0:	ba8080e7          	jalr	-1112(ra) # 80001d84 <_ZN9semaphore7unblockEv>
}
    800021e4:	00000513          	li	a0,0
    800021e8:	00813083          	ld	ra,8(sp)
    800021ec:	00013403          	ld	s0,0(sp)
    800021f0:	01010113          	addi	sp,sp,16
    800021f4:	00008067          	ret

00000000800021f8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800021f8:	fe010113          	addi	sp,sp,-32
    800021fc:	00113c23          	sd	ra,24(sp)
    80002200:	00813823          	sd	s0,16(sp)
    80002204:	00913423          	sd	s1,8(sp)
    80002208:	02010413          	addi	s0,sp,32
    8000220c:	00050493          	mv	s1,a0
    LOCK();
    80002210:	00100613          	li	a2,1
    80002214:	00000593          	li	a1,0
    80002218:	00005517          	auipc	a0,0x5
    8000221c:	ee850513          	addi	a0,a0,-280 # 80007100 <lockPrint>
    80002220:	fffff097          	auipc	ra,0xfffff
    80002224:	ed8080e7          	jalr	-296(ra) # 800010f8 <copy_and_swap>
    80002228:	fe0514e3          	bnez	a0,80002210 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000222c:	0004c503          	lbu	a0,0(s1)
    80002230:	00050a63          	beqz	a0,80002244 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002234:	fffff097          	auipc	ra,0xfffff
    80002238:	1e4080e7          	jalr	484(ra) # 80001418 <_Z4putcc>
        string++;
    8000223c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002240:	fedff06f          	j	8000222c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002244:	00000613          	li	a2,0
    80002248:	00100593          	li	a1,1
    8000224c:	00005517          	auipc	a0,0x5
    80002250:	eb450513          	addi	a0,a0,-332 # 80007100 <lockPrint>
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	ea4080e7          	jalr	-348(ra) # 800010f8 <copy_and_swap>
    8000225c:	fe0514e3          	bnez	a0,80002244 <_Z11printStringPKc+0x4c>
}
    80002260:	01813083          	ld	ra,24(sp)
    80002264:	01013403          	ld	s0,16(sp)
    80002268:	00813483          	ld	s1,8(sp)
    8000226c:	02010113          	addi	sp,sp,32
    80002270:	00008067          	ret

0000000080002274 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002274:	fd010113          	addi	sp,sp,-48
    80002278:	02113423          	sd	ra,40(sp)
    8000227c:	02813023          	sd	s0,32(sp)
    80002280:	00913c23          	sd	s1,24(sp)
    80002284:	01213823          	sd	s2,16(sp)
    80002288:	01313423          	sd	s3,8(sp)
    8000228c:	01413023          	sd	s4,0(sp)
    80002290:	03010413          	addi	s0,sp,48
    80002294:	00050993          	mv	s3,a0
    80002298:	00058a13          	mv	s4,a1
    LOCK();
    8000229c:	00100613          	li	a2,1
    800022a0:	00000593          	li	a1,0
    800022a4:	00005517          	auipc	a0,0x5
    800022a8:	e5c50513          	addi	a0,a0,-420 # 80007100 <lockPrint>
    800022ac:	fffff097          	auipc	ra,0xfffff
    800022b0:	e4c080e7          	jalr	-436(ra) # 800010f8 <copy_and_swap>
    800022b4:	fe0514e3          	bnez	a0,8000229c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800022b8:	00000913          	li	s2,0
    800022bc:	00090493          	mv	s1,s2
    800022c0:	0019091b          	addiw	s2,s2,1
    800022c4:	03495a63          	bge	s2,s4,800022f8 <_Z9getStringPci+0x84>
        cc = getc();
    800022c8:	fffff097          	auipc	ra,0xfffff
    800022cc:	124080e7          	jalr	292(ra) # 800013ec <_Z4getcv>
        if(cc < 1)
    800022d0:	02050463          	beqz	a0,800022f8 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800022d4:	009984b3          	add	s1,s3,s1
    800022d8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800022dc:	00a00793          	li	a5,10
    800022e0:	00f50a63          	beq	a0,a5,800022f4 <_Z9getStringPci+0x80>
    800022e4:	00d00793          	li	a5,13
    800022e8:	fcf51ae3          	bne	a0,a5,800022bc <_Z9getStringPci+0x48>
        buf[i++] = c;
    800022ec:	00090493          	mv	s1,s2
    800022f0:	0080006f          	j	800022f8 <_Z9getStringPci+0x84>
    800022f4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800022f8:	009984b3          	add	s1,s3,s1
    800022fc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002300:	00000613          	li	a2,0
    80002304:	00100593          	li	a1,1
    80002308:	00005517          	auipc	a0,0x5
    8000230c:	df850513          	addi	a0,a0,-520 # 80007100 <lockPrint>
    80002310:	fffff097          	auipc	ra,0xfffff
    80002314:	de8080e7          	jalr	-536(ra) # 800010f8 <copy_and_swap>
    80002318:	fe0514e3          	bnez	a0,80002300 <_Z9getStringPci+0x8c>
    return buf;
}
    8000231c:	00098513          	mv	a0,s3
    80002320:	02813083          	ld	ra,40(sp)
    80002324:	02013403          	ld	s0,32(sp)
    80002328:	01813483          	ld	s1,24(sp)
    8000232c:	01013903          	ld	s2,16(sp)
    80002330:	00813983          	ld	s3,8(sp)
    80002334:	00013a03          	ld	s4,0(sp)
    80002338:	03010113          	addi	sp,sp,48
    8000233c:	00008067          	ret

0000000080002340 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002340:	ff010113          	addi	sp,sp,-16
    80002344:	00813423          	sd	s0,8(sp)
    80002348:	01010413          	addi	s0,sp,16
    8000234c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002350:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002354:	0006c603          	lbu	a2,0(a3)
    80002358:	fd06071b          	addiw	a4,a2,-48
    8000235c:	0ff77713          	andi	a4,a4,255
    80002360:	00900793          	li	a5,9
    80002364:	02e7e063          	bltu	a5,a4,80002384 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002368:	0025179b          	slliw	a5,a0,0x2
    8000236c:	00a787bb          	addw	a5,a5,a0
    80002370:	0017979b          	slliw	a5,a5,0x1
    80002374:	00168693          	addi	a3,a3,1
    80002378:	00c787bb          	addw	a5,a5,a2
    8000237c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002380:	fd5ff06f          	j	80002354 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002384:	00813403          	ld	s0,8(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret

0000000080002390 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002390:	fc010113          	addi	sp,sp,-64
    80002394:	02113c23          	sd	ra,56(sp)
    80002398:	02813823          	sd	s0,48(sp)
    8000239c:	02913423          	sd	s1,40(sp)
    800023a0:	03213023          	sd	s2,32(sp)
    800023a4:	01313c23          	sd	s3,24(sp)
    800023a8:	04010413          	addi	s0,sp,64
    800023ac:	00050493          	mv	s1,a0
    800023b0:	00058913          	mv	s2,a1
    800023b4:	00060993          	mv	s3,a2
    LOCK();
    800023b8:	00100613          	li	a2,1
    800023bc:	00000593          	li	a1,0
    800023c0:	00005517          	auipc	a0,0x5
    800023c4:	d4050513          	addi	a0,a0,-704 # 80007100 <lockPrint>
    800023c8:	fffff097          	auipc	ra,0xfffff
    800023cc:	d30080e7          	jalr	-720(ra) # 800010f8 <copy_and_swap>
    800023d0:	fe0514e3          	bnez	a0,800023b8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800023d4:	00098463          	beqz	s3,800023dc <_Z8printIntiii+0x4c>
    800023d8:	0804c463          	bltz	s1,80002460 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800023dc:	0004851b          	sext.w	a0,s1
    neg = 0;
    800023e0:	00000593          	li	a1,0
    }

    i = 0;
    800023e4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800023e8:	0009079b          	sext.w	a5,s2
    800023ec:	0325773b          	remuw	a4,a0,s2
    800023f0:	00048613          	mv	a2,s1
    800023f4:	0014849b          	addiw	s1,s1,1
    800023f8:	02071693          	slli	a3,a4,0x20
    800023fc:	0206d693          	srli	a3,a3,0x20
    80002400:	00005717          	auipc	a4,0x5
    80002404:	bf070713          	addi	a4,a4,-1040 # 80006ff0 <digits>
    80002408:	00d70733          	add	a4,a4,a3
    8000240c:	00074683          	lbu	a3,0(a4)
    80002410:	fd040713          	addi	a4,s0,-48
    80002414:	00c70733          	add	a4,a4,a2
    80002418:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000241c:	0005071b          	sext.w	a4,a0
    80002420:	0325553b          	divuw	a0,a0,s2
    80002424:	fcf772e3          	bgeu	a4,a5,800023e8 <_Z8printIntiii+0x58>
    if(neg)
    80002428:	00058c63          	beqz	a1,80002440 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000242c:	fd040793          	addi	a5,s0,-48
    80002430:	009784b3          	add	s1,a5,s1
    80002434:	02d00793          	li	a5,45
    80002438:	fef48823          	sb	a5,-16(s1)
    8000243c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002440:	fff4849b          	addiw	s1,s1,-1
    80002444:	0204c463          	bltz	s1,8000246c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002448:	fd040793          	addi	a5,s0,-48
    8000244c:	009787b3          	add	a5,a5,s1
    80002450:	ff07c503          	lbu	a0,-16(a5)
    80002454:	fffff097          	auipc	ra,0xfffff
    80002458:	fc4080e7          	jalr	-60(ra) # 80001418 <_Z4putcc>
    8000245c:	fe5ff06f          	j	80002440 <_Z8printIntiii+0xb0>
        x = -xx;
    80002460:	4090053b          	negw	a0,s1
        neg = 1;
    80002464:	00100593          	li	a1,1
        x = -xx;
    80002468:	f7dff06f          	j	800023e4 <_Z8printIntiii+0x54>

    UNLOCK();
    8000246c:	00000613          	li	a2,0
    80002470:	00100593          	li	a1,1
    80002474:	00005517          	auipc	a0,0x5
    80002478:	c8c50513          	addi	a0,a0,-884 # 80007100 <lockPrint>
    8000247c:	fffff097          	auipc	ra,0xfffff
    80002480:	c7c080e7          	jalr	-900(ra) # 800010f8 <copy_and_swap>
    80002484:	fe0514e3          	bnez	a0,8000246c <_Z8printIntiii+0xdc>
    80002488:	03813083          	ld	ra,56(sp)
    8000248c:	03013403          	ld	s0,48(sp)
    80002490:	02813483          	ld	s1,40(sp)
    80002494:	02013903          	ld	s2,32(sp)
    80002498:	01813983          	ld	s3,24(sp)
    8000249c:	04010113          	addi	sp,sp,64
    800024a0:	00008067          	ret

00000000800024a4 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    800024a4:	fe010113          	addi	sp,sp,-32
    800024a8:	00113c23          	sd	ra,24(sp)
    800024ac:	00813823          	sd	s0,16(sp)
    800024b0:	00913423          	sd	s1,8(sp)
    800024b4:	01213023          	sd	s2,0(sp)
    800024b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800024bc:	00000913          	li	s2,0
    800024c0:	0380006f          	j	800024f8 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	e40080e7          	jalr	-448(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800024cc:	00148493          	addi	s1,s1,1
    800024d0:	000027b7          	lui	a5,0x2
    800024d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800024d8:	0097ee63          	bltu	a5,s1,800024f4 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800024dc:	00000713          	li	a4,0
    800024e0:	000077b7          	lui	a5,0x7
    800024e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800024e8:	fce7eee3          	bltu	a5,a4,800024c4 <_Z11workerBodyAPv+0x20>
    800024ec:	00170713          	addi	a4,a4,1
    800024f0:	ff1ff06f          	j	800024e0 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800024f4:	00190913          	addi	s2,s2,1
    800024f8:	00900793          	li	a5,9
    800024fc:	0527e063          	bltu	a5,s2,8000253c <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002500:	00004517          	auipc	a0,0x4
    80002504:	b2050513          	addi	a0,a0,-1248 # 80006020 <CONSOLE_STATUS+0x10>
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	cf0080e7          	jalr	-784(ra) # 800021f8 <_Z11printStringPKc>
    80002510:	00000613          	li	a2,0
    80002514:	00a00593          	li	a1,10
    80002518:	0009051b          	sext.w	a0,s2
    8000251c:	00000097          	auipc	ra,0x0
    80002520:	e74080e7          	jalr	-396(ra) # 80002390 <_Z8printIntiii>
    80002524:	00004517          	auipc	a0,0x4
    80002528:	d1c50513          	addi	a0,a0,-740 # 80006240 <CONSOLE_STATUS+0x230>
    8000252c:	00000097          	auipc	ra,0x0
    80002530:	ccc080e7          	jalr	-820(ra) # 800021f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002534:	00000493          	li	s1,0
    80002538:	f99ff06f          	j	800024d0 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000253c:	00004517          	auipc	a0,0x4
    80002540:	aec50513          	addi	a0,a0,-1300 # 80006028 <CONSOLE_STATUS+0x18>
    80002544:	00000097          	auipc	ra,0x0
    80002548:	cb4080e7          	jalr	-844(ra) # 800021f8 <_Z11printStringPKc>
    finishedA = true;
    8000254c:	00100793          	li	a5,1
    80002550:	00005717          	auipc	a4,0x5
    80002554:	baf70c23          	sb	a5,-1096(a4) # 80007108 <finishedA>
}
    80002558:	01813083          	ld	ra,24(sp)
    8000255c:	01013403          	ld	s0,16(sp)
    80002560:	00813483          	ld	s1,8(sp)
    80002564:	00013903          	ld	s2,0(sp)
    80002568:	02010113          	addi	sp,sp,32
    8000256c:	00008067          	ret

0000000080002570 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80002570:	fe010113          	addi	sp,sp,-32
    80002574:	00113c23          	sd	ra,24(sp)
    80002578:	00813823          	sd	s0,16(sp)
    8000257c:	00913423          	sd	s1,8(sp)
    80002580:	01213023          	sd	s2,0(sp)
    80002584:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002588:	00000913          	li	s2,0
    8000258c:	0380006f          	j	800025c4 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002590:	fffff097          	auipc	ra,0xfffff
    80002594:	d74080e7          	jalr	-652(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002598:	00148493          	addi	s1,s1,1
    8000259c:	000027b7          	lui	a5,0x2
    800025a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800025a4:	0097ee63          	bltu	a5,s1,800025c0 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800025a8:	00000713          	li	a4,0
    800025ac:	000077b7          	lui	a5,0x7
    800025b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800025b4:	fce7eee3          	bltu	a5,a4,80002590 <_Z11workerBodyBPv+0x20>
    800025b8:	00170713          	addi	a4,a4,1
    800025bc:	ff1ff06f          	j	800025ac <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800025c0:	00190913          	addi	s2,s2,1
    800025c4:	00f00793          	li	a5,15
    800025c8:	0527e063          	bltu	a5,s2,80002608 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800025cc:	00004517          	auipc	a0,0x4
    800025d0:	a6c50513          	addi	a0,a0,-1428 # 80006038 <CONSOLE_STATUS+0x28>
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	c24080e7          	jalr	-988(ra) # 800021f8 <_Z11printStringPKc>
    800025dc:	00000613          	li	a2,0
    800025e0:	00a00593          	li	a1,10
    800025e4:	0009051b          	sext.w	a0,s2
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	da8080e7          	jalr	-600(ra) # 80002390 <_Z8printIntiii>
    800025f0:	00004517          	auipc	a0,0x4
    800025f4:	c5050513          	addi	a0,a0,-944 # 80006240 <CONSOLE_STATUS+0x230>
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	c00080e7          	jalr	-1024(ra) # 800021f8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002600:	00000493          	li	s1,0
    80002604:	f99ff06f          	j	8000259c <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002608:	00004517          	auipc	a0,0x4
    8000260c:	a3850513          	addi	a0,a0,-1480 # 80006040 <CONSOLE_STATUS+0x30>
    80002610:	00000097          	auipc	ra,0x0
    80002614:	be8080e7          	jalr	-1048(ra) # 800021f8 <_Z11printStringPKc>
    finishedB = true;
    80002618:	00100793          	li	a5,1
    8000261c:	00005717          	auipc	a4,0x5
    80002620:	aef706a3          	sb	a5,-1299(a4) # 80007109 <finishedB>
    thread_dispatch();
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	ce0080e7          	jalr	-800(ra) # 80001304 <_Z15thread_dispatchv>
}
    8000262c:	01813083          	ld	ra,24(sp)
    80002630:	01013403          	ld	s0,16(sp)
    80002634:	00813483          	ld	s1,8(sp)
    80002638:	00013903          	ld	s2,0(sp)
    8000263c:	02010113          	addi	sp,sp,32
    80002640:	00008067          	ret

0000000080002644 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80002644:	fe010113          	addi	sp,sp,-32
    80002648:	00113c23          	sd	ra,24(sp)
    8000264c:	00813823          	sd	s0,16(sp)
    80002650:	00913423          	sd	s1,8(sp)
    80002654:	01213023          	sd	s2,0(sp)
    80002658:	02010413          	addi	s0,sp,32
    8000265c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002660:	00100793          	li	a5,1
    80002664:	02a7f863          	bgeu	a5,a0,80002694 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002668:	00a00793          	li	a5,10
    8000266c:	02f577b3          	remu	a5,a0,a5
    80002670:	02078e63          	beqz	a5,800026ac <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002674:	fff48513          	addi	a0,s1,-1
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	fcc080e7          	jalr	-52(ra) # 80002644 <_Z9fibonaccim>
    80002680:	00050913          	mv	s2,a0
    80002684:	ffe48513          	addi	a0,s1,-2
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	fbc080e7          	jalr	-68(ra) # 80002644 <_Z9fibonaccim>
    80002690:	00a90533          	add	a0,s2,a0
}
    80002694:	01813083          	ld	ra,24(sp)
    80002698:	01013403          	ld	s0,16(sp)
    8000269c:	00813483          	ld	s1,8(sp)
    800026a0:	00013903          	ld	s2,0(sp)
    800026a4:	02010113          	addi	sp,sp,32
    800026a8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800026ac:	fffff097          	auipc	ra,0xfffff
    800026b0:	c58080e7          	jalr	-936(ra) # 80001304 <_Z15thread_dispatchv>
    800026b4:	fc1ff06f          	j	80002674 <_Z9fibonaccim+0x30>

00000000800026b8 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800026b8:	fe010113          	addi	sp,sp,-32
    800026bc:	00113c23          	sd	ra,24(sp)
    800026c0:	00813823          	sd	s0,16(sp)
    800026c4:	00913423          	sd	s1,8(sp)
    800026c8:	01213023          	sd	s2,0(sp)
    800026cc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800026d0:	00000493          	li	s1,0
    800026d4:	0400006f          	j	80002714 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800026d8:	00004517          	auipc	a0,0x4
    800026dc:	97850513          	addi	a0,a0,-1672 # 80006050 <CONSOLE_STATUS+0x40>
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	b18080e7          	jalr	-1256(ra) # 800021f8 <_Z11printStringPKc>
    800026e8:	00000613          	li	a2,0
    800026ec:	00a00593          	li	a1,10
    800026f0:	00048513          	mv	a0,s1
    800026f4:	00000097          	auipc	ra,0x0
    800026f8:	c9c080e7          	jalr	-868(ra) # 80002390 <_Z8printIntiii>
    800026fc:	00004517          	auipc	a0,0x4
    80002700:	b4450513          	addi	a0,a0,-1212 # 80006240 <CONSOLE_STATUS+0x230>
    80002704:	00000097          	auipc	ra,0x0
    80002708:	af4080e7          	jalr	-1292(ra) # 800021f8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000270c:	0014849b          	addiw	s1,s1,1
    80002710:	0ff4f493          	andi	s1,s1,255
    80002714:	00200793          	li	a5,2
    80002718:	fc97f0e3          	bgeu	a5,s1,800026d8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    8000271c:	00004517          	auipc	a0,0x4
    80002720:	93c50513          	addi	a0,a0,-1732 # 80006058 <CONSOLE_STATUS+0x48>
    80002724:	00000097          	auipc	ra,0x0
    80002728:	ad4080e7          	jalr	-1324(ra) # 800021f8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000272c:	00700313          	li	t1,7
    thread_dispatch();
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	bd4080e7          	jalr	-1068(ra) # 80001304 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002738:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000273c:	00004517          	auipc	a0,0x4
    80002740:	92c50513          	addi	a0,a0,-1748 # 80006068 <CONSOLE_STATUS+0x58>
    80002744:	00000097          	auipc	ra,0x0
    80002748:	ab4080e7          	jalr	-1356(ra) # 800021f8 <_Z11printStringPKc>
    8000274c:	00000613          	li	a2,0
    80002750:	00a00593          	li	a1,10
    80002754:	0009051b          	sext.w	a0,s2
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	c38080e7          	jalr	-968(ra) # 80002390 <_Z8printIntiii>
    80002760:	00004517          	auipc	a0,0x4
    80002764:	ae050513          	addi	a0,a0,-1312 # 80006240 <CONSOLE_STATUS+0x230>
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	a90080e7          	jalr	-1392(ra) # 800021f8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002770:	00c00513          	li	a0,12
    80002774:	00000097          	auipc	ra,0x0
    80002778:	ed0080e7          	jalr	-304(ra) # 80002644 <_Z9fibonaccim>
    8000277c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002780:	00004517          	auipc	a0,0x4
    80002784:	8f050513          	addi	a0,a0,-1808 # 80006070 <CONSOLE_STATUS+0x60>
    80002788:	00000097          	auipc	ra,0x0
    8000278c:	a70080e7          	jalr	-1424(ra) # 800021f8 <_Z11printStringPKc>
    80002790:	00000613          	li	a2,0
    80002794:	00a00593          	li	a1,10
    80002798:	0009051b          	sext.w	a0,s2
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	bf4080e7          	jalr	-1036(ra) # 80002390 <_Z8printIntiii>
    800027a4:	00004517          	auipc	a0,0x4
    800027a8:	a9c50513          	addi	a0,a0,-1380 # 80006240 <CONSOLE_STATUS+0x230>
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	a4c080e7          	jalr	-1460(ra) # 800021f8 <_Z11printStringPKc>
    800027b4:	0400006f          	j	800027f4 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800027b8:	00004517          	auipc	a0,0x4
    800027bc:	89850513          	addi	a0,a0,-1896 # 80006050 <CONSOLE_STATUS+0x40>
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	a38080e7          	jalr	-1480(ra) # 800021f8 <_Z11printStringPKc>
    800027c8:	00000613          	li	a2,0
    800027cc:	00a00593          	li	a1,10
    800027d0:	00048513          	mv	a0,s1
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	bbc080e7          	jalr	-1092(ra) # 80002390 <_Z8printIntiii>
    800027dc:	00004517          	auipc	a0,0x4
    800027e0:	a6450513          	addi	a0,a0,-1436 # 80006240 <CONSOLE_STATUS+0x230>
    800027e4:	00000097          	auipc	ra,0x0
    800027e8:	a14080e7          	jalr	-1516(ra) # 800021f8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800027ec:	0014849b          	addiw	s1,s1,1
    800027f0:	0ff4f493          	andi	s1,s1,255
    800027f4:	00500793          	li	a5,5
    800027f8:	fc97f0e3          	bgeu	a5,s1,800027b8 <_Z11workerBodyCPv+0x100>
    }

    printString("A finished!\n");
    800027fc:	00004517          	auipc	a0,0x4
    80002800:	82c50513          	addi	a0,a0,-2004 # 80006028 <CONSOLE_STATUS+0x18>
    80002804:	00000097          	auipc	ra,0x0
    80002808:	9f4080e7          	jalr	-1548(ra) # 800021f8 <_Z11printStringPKc>
    finishedC = true;
    8000280c:	00100793          	li	a5,1
    80002810:	00005717          	auipc	a4,0x5
    80002814:	8ef70d23          	sb	a5,-1798(a4) # 8000710a <finishedC>
    thread_dispatch();
    80002818:	fffff097          	auipc	ra,0xfffff
    8000281c:	aec080e7          	jalr	-1300(ra) # 80001304 <_Z15thread_dispatchv>
}
    80002820:	01813083          	ld	ra,24(sp)
    80002824:	01013403          	ld	s0,16(sp)
    80002828:	00813483          	ld	s1,8(sp)
    8000282c:	00013903          	ld	s2,0(sp)
    80002830:	02010113          	addi	sp,sp,32
    80002834:	00008067          	ret

0000000080002838 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80002838:	fe010113          	addi	sp,sp,-32
    8000283c:	00113c23          	sd	ra,24(sp)
    80002840:	00813823          	sd	s0,16(sp)
    80002844:	00913423          	sd	s1,8(sp)
    80002848:	01213023          	sd	s2,0(sp)
    8000284c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002850:	00a00493          	li	s1,10
    80002854:	0400006f          	j	80002894 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002858:	00004517          	auipc	a0,0x4
    8000285c:	82850513          	addi	a0,a0,-2008 # 80006080 <CONSOLE_STATUS+0x70>
    80002860:	00000097          	auipc	ra,0x0
    80002864:	998080e7          	jalr	-1640(ra) # 800021f8 <_Z11printStringPKc>
    80002868:	00000613          	li	a2,0
    8000286c:	00a00593          	li	a1,10
    80002870:	00048513          	mv	a0,s1
    80002874:	00000097          	auipc	ra,0x0
    80002878:	b1c080e7          	jalr	-1252(ra) # 80002390 <_Z8printIntiii>
    8000287c:	00004517          	auipc	a0,0x4
    80002880:	9c450513          	addi	a0,a0,-1596 # 80006240 <CONSOLE_STATUS+0x230>
    80002884:	00000097          	auipc	ra,0x0
    80002888:	974080e7          	jalr	-1676(ra) # 800021f8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000288c:	0014849b          	addiw	s1,s1,1
    80002890:	0ff4f493          	andi	s1,s1,255
    80002894:	00c00793          	li	a5,12
    80002898:	fc97f0e3          	bgeu	a5,s1,80002858 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000289c:	00003517          	auipc	a0,0x3
    800028a0:	7ec50513          	addi	a0,a0,2028 # 80006088 <CONSOLE_STATUS+0x78>
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	954080e7          	jalr	-1708(ra) # 800021f8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800028ac:	00500313          	li	t1,5
    thread_dispatch();
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	a54080e7          	jalr	-1452(ra) # 80001304 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800028b8:	01000513          	li	a0,16
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	d88080e7          	jalr	-632(ra) # 80002644 <_Z9fibonaccim>
    800028c4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800028c8:	00003517          	auipc	a0,0x3
    800028cc:	7d050513          	addi	a0,a0,2000 # 80006098 <CONSOLE_STATUS+0x88>
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	928080e7          	jalr	-1752(ra) # 800021f8 <_Z11printStringPKc>
    800028d8:	00000613          	li	a2,0
    800028dc:	00a00593          	li	a1,10
    800028e0:	0009051b          	sext.w	a0,s2
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	aac080e7          	jalr	-1364(ra) # 80002390 <_Z8printIntiii>
    800028ec:	00004517          	auipc	a0,0x4
    800028f0:	95450513          	addi	a0,a0,-1708 # 80006240 <CONSOLE_STATUS+0x230>
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	904080e7          	jalr	-1788(ra) # 800021f8 <_Z11printStringPKc>
    800028fc:	0400006f          	j	8000293c <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002900:	00003517          	auipc	a0,0x3
    80002904:	78050513          	addi	a0,a0,1920 # 80006080 <CONSOLE_STATUS+0x70>
    80002908:	00000097          	auipc	ra,0x0
    8000290c:	8f0080e7          	jalr	-1808(ra) # 800021f8 <_Z11printStringPKc>
    80002910:	00000613          	li	a2,0
    80002914:	00a00593          	li	a1,10
    80002918:	00048513          	mv	a0,s1
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	a74080e7          	jalr	-1420(ra) # 80002390 <_Z8printIntiii>
    80002924:	00004517          	auipc	a0,0x4
    80002928:	91c50513          	addi	a0,a0,-1764 # 80006240 <CONSOLE_STATUS+0x230>
    8000292c:	00000097          	auipc	ra,0x0
    80002930:	8cc080e7          	jalr	-1844(ra) # 800021f8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002934:	0014849b          	addiw	s1,s1,1
    80002938:	0ff4f493          	andi	s1,s1,255
    8000293c:	00f00793          	li	a5,15
    80002940:	fc97f0e3          	bgeu	a5,s1,80002900 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80002944:	00003517          	auipc	a0,0x3
    80002948:	76450513          	addi	a0,a0,1892 # 800060a8 <CONSOLE_STATUS+0x98>
    8000294c:	00000097          	auipc	ra,0x0
    80002950:	8ac080e7          	jalr	-1876(ra) # 800021f8 <_Z11printStringPKc>
    finishedD = true;
    80002954:	00100793          	li	a5,1
    80002958:	00004717          	auipc	a4,0x4
    8000295c:	7af709a3          	sb	a5,1971(a4) # 8000710b <finishedD>
    thread_dispatch();
    80002960:	fffff097          	auipc	ra,0xfffff
    80002964:	9a4080e7          	jalr	-1628(ra) # 80001304 <_Z15thread_dispatchv>
}
    80002968:	01813083          	ld	ra,24(sp)
    8000296c:	01013403          	ld	s0,16(sp)
    80002970:	00813483          	ld	s1,8(sp)
    80002974:	00013903          	ld	s2,0(sp)
    80002978:	02010113          	addi	sp,sp,32
    8000297c:	00008067          	ret

0000000080002980 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80002980:	fd010113          	addi	sp,sp,-48
    80002984:	02113423          	sd	ra,40(sp)
    80002988:	02813023          	sd	s0,32(sp)
    8000298c:	03010413          	addi	s0,sp,48
    thread_t threads[4];

    //thread_create( &threads[0], nullptr, nullptr);
    //TCB::running=threads[0];

    thread_create(&threads[0], workerBodyA, nullptr);
    80002990:	00000613          	li	a2,0
    80002994:	00000597          	auipc	a1,0x0
    80002998:	b1058593          	addi	a1,a1,-1264 # 800024a4 <_Z11workerBodyAPv>
    8000299c:	fd040513          	addi	a0,s0,-48
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	900080e7          	jalr	-1792(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800029a8:	00003517          	auipc	a0,0x3
    800029ac:	71050513          	addi	a0,a0,1808 # 800060b8 <CONSOLE_STATUS+0xa8>
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	848080e7          	jalr	-1976(ra) # 800021f8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800029b8:	00000613          	li	a2,0
    800029bc:	00000597          	auipc	a1,0x0
    800029c0:	bb458593          	addi	a1,a1,-1100 # 80002570 <_Z11workerBodyBPv>
    800029c4:	fd840513          	addi	a0,s0,-40
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	8d8080e7          	jalr	-1832(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800029d0:	00003517          	auipc	a0,0x3
    800029d4:	70050513          	addi	a0,a0,1792 # 800060d0 <CONSOLE_STATUS+0xc0>
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	820080e7          	jalr	-2016(ra) # 800021f8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800029e0:	00000613          	li	a2,0
    800029e4:	00000597          	auipc	a1,0x0
    800029e8:	cd458593          	addi	a1,a1,-812 # 800026b8 <_Z11workerBodyCPv>
    800029ec:	fe040513          	addi	a0,s0,-32
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	8b0080e7          	jalr	-1872(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800029f8:	00003517          	auipc	a0,0x3
    800029fc:	6f050513          	addi	a0,a0,1776 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	7f8080e7          	jalr	2040(ra) # 800021f8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80002a08:	00000613          	li	a2,0
    80002a0c:	00000597          	auipc	a1,0x0
    80002a10:	e2c58593          	addi	a1,a1,-468 # 80002838 <_Z11workerBodyDPv>
    80002a14:	fe840513          	addi	a0,s0,-24
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	888080e7          	jalr	-1912(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80002a20:	00003517          	auipc	a0,0x3
    80002a24:	6e050513          	addi	a0,a0,1760 # 80006100 <CONSOLE_STATUS+0xf0>
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	7d0080e7          	jalr	2000(ra) # 800021f8 <_Z11printStringPKc>
    80002a30:	00c0006f          	j	80002a3c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch(); //kada udje u threadDispatch, on se vrati u prekidnu rutinu iz nekog razloga
    80002a34:	fffff097          	auipc	ra,0xfffff
    80002a38:	8d0080e7          	jalr	-1840(ra) # 80001304 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002a3c:	00004797          	auipc	a5,0x4
    80002a40:	6cc7c783          	lbu	a5,1740(a5) # 80007108 <finishedA>
    80002a44:	fe0788e3          	beqz	a5,80002a34 <_Z18Threads_C_API_testv+0xb4>
    80002a48:	00004797          	auipc	a5,0x4
    80002a4c:	6c17c783          	lbu	a5,1729(a5) # 80007109 <finishedB>
    80002a50:	fe0782e3          	beqz	a5,80002a34 <_Z18Threads_C_API_testv+0xb4>
    80002a54:	00004797          	auipc	a5,0x4
    80002a58:	6b67c783          	lbu	a5,1718(a5) # 8000710a <finishedC>
    80002a5c:	fc078ce3          	beqz	a5,80002a34 <_Z18Threads_C_API_testv+0xb4>
    80002a60:	00004797          	auipc	a5,0x4
    80002a64:	6ab7c783          	lbu	a5,1707(a5) # 8000710b <finishedD>
    80002a68:	fc0786e3          	beqz	a5,80002a34 <_Z18Threads_C_API_testv+0xb4>
        //TCB::yield();
    }

}
    80002a6c:	02813083          	ld	ra,40(sp)
    80002a70:	02013403          	ld	s0,32(sp)
    80002a74:	03010113          	addi	sp,sp,48
    80002a78:	00008067          	ret

0000000080002a7c <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80002a7c:	ff010113          	addi	sp,sp,-16
    80002a80:	00113423          	sd	ra,8(sp)
    80002a84:	00813023          	sd	s0,0(sp)
    80002a88:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80002a8c:	00000097          	auipc	ra,0x0
    80002a90:	ef4080e7          	jalr	-268(ra) # 80002980 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80002a94:	00813083          	ld	ra,8(sp)
    80002a98:	00013403          	ld	s0,0(sp)
    80002a9c:	01010113          	addi	sp,sp,16
    80002aa0:	00008067          	ret

0000000080002aa4 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00813423          	sd	s0,8(sp)
    80002aac:	01010413          	addi	s0,sp,16
    80002ab0:	00100793          	li	a5,1
    80002ab4:	00f50863          	beq	a0,a5,80002ac4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002ab8:	00813403          	ld	s0,8(sp)
    80002abc:	01010113          	addi	sp,sp,16
    80002ac0:	00008067          	ret
    80002ac4:	000107b7          	lui	a5,0x10
    80002ac8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002acc:	fef596e3          	bne	a1,a5,80002ab8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    LinkedList() : head(0), tail(0) {}
    80002ad0:	00004797          	auipc	a5,0x4
    80002ad4:	64078793          	addi	a5,a5,1600 # 80007110 <_ZN9Scheduler19readyCoroutineQueueE>
    80002ad8:	0007b023          	sd	zero,0(a5)
    80002adc:	0007b423          	sd	zero,8(a5)
    80002ae0:	fd9ff06f          	j	80002ab8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002ae4 <_ZN9Scheduler3getEv>:
{
    80002ae4:	fe010113          	addi	sp,sp,-32
    80002ae8:	00113c23          	sd	ra,24(sp)
    80002aec:	00813823          	sd	s0,16(sp)
    80002af0:	00913423          	sd	s1,8(sp)
    80002af4:	02010413          	addi	s0,sp,32
        if (!head) {return 0;}
    80002af8:	00004517          	auipc	a0,0x4
    80002afc:	61853503          	ld	a0,1560(a0) # 80007110 <_ZN9Scheduler19readyCoroutineQueueE>
    80002b00:	04050263          	beqz	a0,80002b44 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002b04:	00853783          	ld	a5,8(a0)
    80002b08:	00004717          	auipc	a4,0x4
    80002b0c:	60f73423          	sd	a5,1544(a4) # 80007110 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80002b10:	02078463          	beqz	a5,80002b38 <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    80002b14:	00053483          	ld	s1,0(a0)
        delete elem;
    80002b18:	00001097          	auipc	ra,0x1
    80002b1c:	854080e7          	jalr	-1964(ra) # 8000336c <_ZdlPv>
}
    80002b20:	00048513          	mv	a0,s1
    80002b24:	01813083          	ld	ra,24(sp)
    80002b28:	01013403          	ld	s0,16(sp)
    80002b2c:	00813483          	ld	s1,8(sp)
    80002b30:	02010113          	addi	sp,sp,32
    80002b34:	00008067          	ret
            tail = 0;
    80002b38:	00004797          	auipc	a5,0x4
    80002b3c:	5e07b023          	sd	zero,1504(a5) # 80007118 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002b40:	fd5ff06f          	j	80002b14 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80002b44:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002b48:	fd9ff06f          	j	80002b20 <_ZN9Scheduler3getEv+0x3c>

0000000080002b4c <_ZN9Scheduler3putEP3TCB>:
{
    80002b4c:	ff010113          	addi	sp,sp,-16
    80002b50:	00813423          	sd	s0,8(sp)
    80002b54:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002b58:	00004797          	auipc	a5,0x4
    80002b5c:	5287b783          	ld	a5,1320(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b60:	0007b783          	ld	a5,0(a5)
    80002b64:	0c078a63          	beqz	a5,80002c38 <_ZN9Scheduler3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80002b68:	00004717          	auipc	a4,0x4
    80002b6c:	51873703          	ld	a4,1304(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b70:	00073683          	ld	a3,0(a4)
    80002b74:	0006b683          	ld	a3,0(a3)
    80002b78:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80002b7c:	00073703          	ld	a4,0(a4)
    80002b80:	00873603          	ld	a2,8(a4)
    80002b84:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80002b88:	0107b703          	ld	a4,16(a5)
    80002b8c:	03f00593          	li	a1,63
    80002b90:	02e5f663          	bgeu	a1,a4,80002bbc <_ZN9Scheduler3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80002b94:	fc070713          	addi	a4,a4,-64
    80002b98:	01800593          	li	a1,24
    80002b9c:	02e5ec63          	bltu	a1,a4,80002bd4 <_ZN9Scheduler3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80002ba0:	02060263          	beqz	a2,80002bc4 <_ZN9Scheduler3putEP3TCB+0x78>
    80002ba4:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80002ba8:	0007b703          	ld	a4,0(a5)
    80002bac:	08070663          	beqz	a4,80002c38 <_ZN9Scheduler3putEP3TCB+0xec>
    80002bb0:	0087b683          	ld	a3,8(a5)
    80002bb4:	00d73423          	sd	a3,8(a4)
                return cur;
    80002bb8:	0800006f          	j	80002c38 <_ZN9Scheduler3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002bbc:	00068793          	mv	a5,a3
    80002bc0:	fa5ff06f          	j	80002b64 <_ZN9Scheduler3putEP3TCB+0x18>
                else fmem_head = cur->next;
    80002bc4:	00004717          	auipc	a4,0x4
    80002bc8:	4bc73703          	ld	a4,1212(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002bcc:	00d73023          	sd	a3,0(a4)
    80002bd0:	fd9ff06f          	j	80002ba8 <_ZN9Scheduler3putEP3TCB+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002bd4:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80002bd8:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002bdc:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002be0:	0087b683          	ld	a3,8(a5)
    80002be4:	08068063          	beqz	a3,80002c64 <_ZN9Scheduler3putEP3TCB+0x118>
    80002be8:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002bec:	0007b683          	ld	a3,0(a5)
    80002bf0:	00068463          	beqz	a3,80002bf8 <_ZN9Scheduler3putEP3TCB+0xac>
    80002bf4:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002bf8:	0087b603          	ld	a2,8(a5)
    80002bfc:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002c00:	0007b683          	ld	a3,0(a5)
    80002c04:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002c08:	0107b783          	ld	a5,16(a5)
    80002c0c:	fc078793          	addi	a5,a5,-64
    80002c10:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002c14:	0c070693          	addi	a3,a4,192
    80002c18:	00004597          	auipc	a1,0x4
    80002c1c:	4685b583          	ld	a1,1128(a1) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c20:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002c24:	00073583          	ld	a1,0(a4)
    80002c28:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002c2c:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002c30:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002c34:	00070793          	mv	a5,a4
        elem->data=data;
    80002c38:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80002c3c:	0007b423          	sd	zero,8(a5)
        if (tail){
    80002c40:	00004717          	auipc	a4,0x4
    80002c44:	4d873703          	ld	a4,1240(a4) # 80007118 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002c48:	02070863          	beqz	a4,80002c78 <_ZN9Scheduler3putEP3TCB+0x12c>
            tail->next=elem;
    80002c4c:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80002c50:	00004717          	auipc	a4,0x4
    80002c54:	4cf73423          	sd	a5,1224(a4) # 80007118 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002c58:	00813403          	ld	s0,8(sp)
    80002c5c:	01010113          	addi	sp,sp,16
    80002c60:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002c64:	0c070693          	addi	a3,a4,192
    80002c68:	00004617          	auipc	a2,0x4
    80002c6c:	41863603          	ld	a2,1048(a2) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c70:	00d63023          	sd	a3,0(a2)
    80002c74:	f79ff06f          	j	80002bec <_ZN9Scheduler3putEP3TCB+0xa0>
            head=tail=elem;
    80002c78:	00004717          	auipc	a4,0x4
    80002c7c:	49870713          	addi	a4,a4,1176 # 80007110 <_ZN9Scheduler19readyCoroutineQueueE>
    80002c80:	00f73423          	sd	a5,8(a4)
    80002c84:	00f73023          	sd	a5,0(a4)
    80002c88:	fd1ff06f          	j	80002c58 <_ZN9Scheduler3putEP3TCB+0x10c>

0000000080002c8c <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002c8c:	ff010113          	addi	sp,sp,-16
    80002c90:	00113423          	sd	ra,8(sp)
    80002c94:	00813023          	sd	s0,0(sp)
    80002c98:	01010413          	addi	s0,sp,16
    80002c9c:	000105b7          	lui	a1,0x10
    80002ca0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002ca4:	00100513          	li	a0,1
    80002ca8:	00000097          	auipc	ra,0x0
    80002cac:	dfc080e7          	jalr	-516(ra) # 80002aa4 <_Z41__static_initialization_and_destruction_0ii>
    80002cb0:	00813083          	ld	ra,8(sp)
    80002cb4:	00013403          	ld	s0,0(sp)
    80002cb8:	01010113          	addi	sp,sp,16
    80002cbc:	00008067          	ret

0000000080002cc0 <main>:
//void smoker1(void* arg);
//void smoker2(void* arg);
//void smoker3(void* arg);
//void dummyfun(void* arg);

int main(){
    80002cc0:	fe010113          	addi	sp,sp,-32
    80002cc4:	00113c23          	sd	ra,24(sp)
    80002cc8:	00813823          	sd	s0,16(sp)
    80002ccc:	02010413          	addi	s0,sp,32
        if (!instance) {
    80002cd0:	00004797          	auipc	a5,0x4
    80002cd4:	3a87b783          	ld	a5,936(a5) # 80007078 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002cd8:	0007b783          	ld	a5,0(a5)
    80002cdc:	04078863          	beqz	a5,80002d2c <main+0x6c>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    80002ce0:	00004797          	auipc	a5,0x4
    80002ce4:	3907b783          	ld	a5,912(a5) # 80007070 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    80002ce8:	10579073          	csrw	stvec,a5
    //__asm__ volatile ("csrs sstatus, 0x2"); //todo nesto treba sa ovim spoljasnjim prekidima da se radi
    //RiscV::ms_sstatus(RiscV::SSTATUS_SIE);
    thread_t main;
    thread_create(&main, nullptr, nullptr);
    80002cec:	00000613          	li	a2,0
    80002cf0:	00000593          	li	a1,0
    80002cf4:	fe840513          	addi	a0,s0,-24
    80002cf8:	ffffe097          	auipc	ra,0xffffe
    80002cfc:	5a8080e7          	jalr	1448(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    80002d00:	00004797          	auipc	a5,0x4
    80002d04:	3887b783          	ld	a5,904(a5) # 80007088 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002d08:	fe843703          	ld	a4,-24(s0)
    80002d0c:	00e7b023          	sd	a4,0(a5)
//    thread_create(&t31, dummyfun, nullptr);
//    for (int i = 0; i < 30; ++i) {
//        thread_dispatch();
//    }
//    if(sem_wait(dummy)==-1) printString("ubien semafor\n");
    userMain();
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	d6c080e7          	jalr	-660(ra) # 80002a7c <_Z8userMainv>
//    char x=getc();
//    putc(x);

    return 0;
}
    80002d18:	00000513          	li	a0,0
    80002d1c:	01813083          	ld	ra,24(sp)
    80002d20:	01013403          	ld	s0,16(sp)
    80002d24:	02010113          	addi	sp,sp,32
    80002d28:	00008067          	ret
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80002d2c:	00004797          	auipc	a5,0x4
    80002d30:	3347b783          	ld	a5,820(a5) # 80007060 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002d34:	0007b783          	ld	a5,0(a5)
    80002d38:	00004697          	auipc	a3,0x4
    80002d3c:	3486b683          	ld	a3,840(a3) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d40:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80002d44:	00004717          	auipc	a4,0x4
    80002d48:	34c73703          	ld	a4,844(a4) # 80007090 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002d4c:	00073703          	ld	a4,0(a4)
    80002d50:	40f70733          	sub	a4,a4,a5
    80002d54:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    80002d58:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80002d5c:	0006b783          	ld	a5,0(a3)
    80002d60:	0007b423          	sd	zero,8(a5)
            return instance;
    80002d64:	f7dff06f          	j	80002ce0 <main+0x20>

0000000080002d68 <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    80002d68:	ff010113          	addi	sp,sp,-16
    80002d6c:	00813423          	sd	s0,8(sp)
    80002d70:	01010413          	addi	s0,sp,16
    return finished;
}
    80002d74:	02054503          	lbu	a0,32(a0)
    80002d78:	00813403          	ld	s0,8(sp)
    80002d7c:	01010113          	addi	sp,sp,16
    80002d80:	00008067          	ret

0000000080002d84 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80002d84:	ff010113          	addi	sp,sp,-16
    80002d88:	00813423          	sd	s0,8(sp)
    80002d8c:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    80002d90:	02b50023          	sb	a1,32(a0)
}
    80002d94:	00813403          	ld	s0,8(sp)
    80002d98:	01010113          	addi	sp,sp,16
    80002d9c:	00008067          	ret

0000000080002da0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments, bool started) {
    80002da0:	fe010113          	addi	sp,sp,-32
    80002da4:	00113c23          	sd	ra,24(sp)
    80002da8:	00813823          	sd	s0,16(sp)
    80002dac:	00913423          	sd	s1,8(sp)
    80002db0:	02010413          	addi	s0,sp,32
    80002db4:	00058493          	mv	s1,a1
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002db8:	00004797          	auipc	a5,0x4
    80002dbc:	2c87b783          	ld	a5,712(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002dc0:	0007b783          	ld	a5,0(a5)
    80002dc4:	0c078a63          	beqz	a5,80002e98 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
            cur->next=fmem_head->next;
    80002dc8:	00004717          	auipc	a4,0x4
    80002dcc:	2b873703          	ld	a4,696(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002dd0:	00073583          	ld	a1,0(a4)
    80002dd4:	0005b583          	ld	a1,0(a1)
    80002dd8:	00b7b023          	sd	a1,0(a5)
            cur->prev=fmem_head->prev;
    80002ddc:	00073703          	ld	a4,0(a4)
    80002de0:	00873803          	ld	a6,8(a4)
    80002de4:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    80002de8:	0107b703          	ld	a4,16(a5)
    80002dec:	07f00893          	li	a7,127
    80002df0:	02e8f663          	bgeu	a7,a4,80002e1c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002df4:	f8070713          	addi	a4,a4,-128
    80002df8:	01800893          	li	a7,24
    80002dfc:	02e8ec63          	bltu	a7,a4,80002e34 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002e00:	02080263          	beqz	a6,80002e24 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x84>
    80002e04:	00b83023          	sd	a1,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    80002e08:	0007b703          	ld	a4,0(a5)
    80002e0c:	08070663          	beqz	a4,80002e98 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
    80002e10:	0087b583          	ld	a1,8(a5)
    80002e14:	00b73423          	sd	a1,8(a4)
                return cur;
    80002e18:	0800006f          	j	80002e98 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002e1c:	00058793          	mv	a5,a1
    80002e20:	fa5ff06f          	j	80002dc4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x24>
                else fmem_head = cur->next;
    80002e24:	00004717          	auipc	a4,0x4
    80002e28:	25c73703          	ld	a4,604(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e2c:	00b73023          	sd	a1,0(a4)
    80002e30:	fd9ff06f          	j	80002e08 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002e34:	08078713          	addi	a4,a5,128
                newfrgm->prev=nullptr;
    80002e38:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002e3c:	0807b023          	sd	zero,128(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002e40:	0087b583          	ld	a1,8(a5)
    80002e44:	0c058c63          	beqz	a1,80002f1c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x17c>
    80002e48:	00e5b023          	sd	a4,0(a1)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002e4c:	0007b583          	ld	a1,0(a5)
    80002e50:	00058463          	beqz	a1,80002e58 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xb8>
    80002e54:	00e5b423          	sd	a4,8(a1)
                newfrgm->prev = cur->prev;
    80002e58:	0087b803          	ld	a6,8(a5)
    80002e5c:	01073423          	sd	a6,8(a4)
                newfrgm->next = cur->next;
    80002e60:	0007b583          	ld	a1,0(a5)
    80002e64:	00b73023          	sd	a1,0(a4)
                newfrgm->size = cur->size-size;
    80002e68:	0107b783          	ld	a5,16(a5)
    80002e6c:	f8078793          	addi	a5,a5,-128
    80002e70:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002e74:	0c070593          	addi	a1,a4,192
    80002e78:	00004897          	auipc	a7,0x4
    80002e7c:	2088b883          	ld	a7,520(a7) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e80:	00b8b023          	sd	a1,0(a7)
                fmem_head->next=newfrgm->next;
    80002e84:	00073883          	ld	a7,0(a4)
    80002e88:	0d173023          	sd	a7,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002e8c:	0d073423          	sd	a6,200(a4)
                fmem_head->size=newfrgm->size;
    80002e90:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002e94:	00070793          	mv	a5,a4
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    80002e98:	00f4b023          	sd	a5,0(s1)
    (*handle)->body=body;
    80002e9c:	00a7b023          	sd	a0,0(a5)
    (*handle)->arguments=arguments;
    80002ea0:	0004b783          	ld	a5,0(s1)
    80002ea4:	02c7b423          	sd	a2,40(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    80002ea8:	12050663          	beqz	a0,80002fd4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x234>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002eac:	00004797          	auipc	a5,0x4
    80002eb0:	1d47b783          	ld	a5,468(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002eb4:	0007b783          	ld	a5,0(a5)
    80002eb8:	12078063          	beqz	a5,80002fd8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
            cur->next=fmem_head->next;
    80002ebc:	00004717          	auipc	a4,0x4
    80002ec0:	1c473703          	ld	a4,452(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ec4:	00073603          	ld	a2,0(a4)
    80002ec8:	00063583          	ld	a1,0(a2)
    80002ecc:	00b7b023          	sd	a1,0(a5)
            cur->prev=fmem_head->prev;
    80002ed0:	00073703          	ld	a4,0(a4)
    80002ed4:	00873803          	ld	a6,8(a4)
    80002ed8:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    80002edc:	0107b703          	ld	a4,16(a5)
    80002ee0:	00001637          	lui	a2,0x1
    80002ee4:	03f60613          	addi	a2,a2,63 # 103f <_entry-0x7fffefc1>
    80002ee8:	04e67463          	bgeu	a2,a4,80002f30 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x190>
            if (cur->size-size<=sizeof(FreeMem)){
    80002eec:	fffff637          	lui	a2,0xfffff
    80002ef0:	fc060613          	addi	a2,a2,-64 # ffffffffffffefc0 <end+0xffffffff7fff6c20>
    80002ef4:	00c70733          	add	a4,a4,a2
    80002ef8:	01800613          	li	a2,24
    80002efc:	04e66663          	bltu	a2,a4,80002f48 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1a8>
                if (cur->prev) cur->prev->next = cur->next;
    80002f00:	02080c63          	beqz	a6,80002f38 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x198>
    80002f04:	00b83023          	sd	a1,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    80002f08:	0007b703          	ld	a4,0(a5)
    80002f0c:	0c070663          	beqz	a4,80002fd8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
    80002f10:	0087b603          	ld	a2,8(a5)
    80002f14:	00c73423          	sd	a2,8(a4)
                return cur;
    80002f18:	0c00006f          	j	80002fd8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002f1c:	0c070593          	addi	a1,a4,192
    80002f20:	00004817          	auipc	a6,0x4
    80002f24:	16083803          	ld	a6,352(a6) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f28:	00b83023          	sd	a1,0(a6)
    80002f2c:	f21ff06f          	j	80002e4c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0xac>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002f30:	00058793          	mv	a5,a1
    80002f34:	f85ff06f          	j	80002eb8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x118>
                else fmem_head = cur->next;
    80002f38:	00004717          	auipc	a4,0x4
    80002f3c:	14873703          	ld	a4,328(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f40:	00b73023          	sd	a1,0(a4)
    80002f44:	fc5ff06f          	j	80002f08 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x168>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002f48:	00001737          	lui	a4,0x1
    80002f4c:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    80002f50:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    80002f54:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002f58:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002f5c:	0087b603          	ld	a2,8(a5)
    80002f60:	06060063          	beqz	a2,80002fc0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x220>
    80002f64:	00e63023          	sd	a4,0(a2)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002f68:	0007b603          	ld	a2,0(a5)
    80002f6c:	00060463          	beqz	a2,80002f74 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1d4>
    80002f70:	00e63423          	sd	a4,8(a2)
                newfrgm->prev = cur->prev;
    80002f74:	0087b583          	ld	a1,8(a5)
    80002f78:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    80002f7c:	0007b603          	ld	a2,0(a5)
    80002f80:	00c73023          	sd	a2,0(a4)
                newfrgm->size = cur->size-size;
    80002f84:	0107b783          	ld	a5,16(a5)
    80002f88:	fffff637          	lui	a2,0xfffff
    80002f8c:	fc060613          	addi	a2,a2,-64 # ffffffffffffefc0 <end+0xffffffff7fff6c20>
    80002f90:	00c787b3          	add	a5,a5,a2
    80002f94:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002f98:	0c070613          	addi	a2,a4,192
    80002f9c:	00004817          	auipc	a6,0x4
    80002fa0:	0e483803          	ld	a6,228(a6) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002fa4:	00c83023          	sd	a2,0(a6)
                fmem_head->next=newfrgm->next;
    80002fa8:	00073803          	ld	a6,0(a4)
    80002fac:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002fb0:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    80002fb4:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002fb8:	00070793          	mv	a5,a4
    80002fbc:	01c0006f          	j	80002fd8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002fc0:	0c070613          	addi	a2,a4,192
    80002fc4:	00004597          	auipc	a1,0x4
    80002fc8:	0bc5b583          	ld	a1,188(a1) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002fcc:	00c5b023          	sd	a2,0(a1)
    80002fd0:	f99ff06f          	j	80002f68 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x1c8>
    80002fd4:	00000793          	li	a5,0
    80002fd8:	0004b703          	ld	a4,0(s1)
    80002fdc:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80002fe0:	08050063          	beqz	a0,80003060 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2c0>
    80002fe4:	00000717          	auipc	a4,0x0
    80002fe8:	0c470713          	addi	a4,a4,196 # 800030a8 <_ZN3TCB13threadWrapperEv>
    80002fec:	0004b783          	ld	a5,0(s1)
    80002ff0:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80002ff4:	0004b703          	ld	a4,0(s1)
    80002ff8:	00873783          	ld	a5,8(a4)
    80002ffc:	06078663          	beqz	a5,80003068 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2c8>
    80003000:	00008637          	lui	a2,0x8
    80003004:	00c787b3          	add	a5,a5,a2
    80003008:	00f73c23          	sd	a5,24(a4)
    (*handle)->finished=false;
    8000300c:	0004b783          	ld	a5,0(s1)
    80003010:	02078023          	sb	zero,32(a5)
    (*handle)->semBlocked=nullptr;
    80003014:	0004b783          	ld	a5,0(s1)
    80003018:	0207b823          	sd	zero,48(a5)
    (*handle)->timeSlice=TIME_SLICE;
    8000301c:	0004b783          	ld	a5,0(s1)
    80003020:	00200713          	li	a4,2
    80003024:	02e7bc23          	sd	a4,56(a5)
    (*handle)->threadStarted=started;
    80003028:	0004b783          	ld	a5,0(s1)
    8000302c:	04d78023          	sb	a3,64(a5)
    if (body != nullptr && (*handle)->isStarted()==true) { Scheduler::put(*handle); }
    80003030:	00050863          	beqz	a0,80003040 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2a0>
    80003034:	0004b503          	ld	a0,0(s1)
    void setStarted(TCB** handle){
        (*handle)->threadStarted=true;
    }

    bool isStarted() {
        return threadStarted;
    80003038:	04054783          	lbu	a5,64(a0)
    8000303c:	02079a63          	bnez	a5,80003070 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2d0>
    if(*handle==nullptr){
    80003040:	0004b783          	ld	a5,0(s1)
    80003044:	02078c63          	beqz	a5,8000307c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2dc>
        return -1;
    }else{return 0;}
    80003048:	00000513          	li	a0,0
}
    8000304c:	01813083          	ld	ra,24(sp)
    80003050:	01013403          	ld	s0,16(sp)
    80003054:	00813483          	ld	s1,8(sp)
    80003058:	02010113          	addi	sp,sp,32
    8000305c:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80003060:	00000713          	li	a4,0
    80003064:	f89ff06f          	j	80002fec <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x24c>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80003068:	00000793          	li	a5,0
    8000306c:	f9dff06f          	j	80003008 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x268>
    if (body != nullptr && (*handle)->isStarted()==true) { Scheduler::put(*handle); }
    80003070:	00000097          	auipc	ra,0x0
    80003074:	adc080e7          	jalr	-1316(ra) # 80002b4c <_ZN9Scheduler3putEP3TCB>
    80003078:	fc9ff06f          	j	80003040 <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2a0>
        return -1;
    8000307c:	fff00513          	li	a0,-1
    80003080:	fcdff06f          	j	8000304c <_ZN3TCB12createThreadEPFvPvEPPS_S0_b+0x2ac>

0000000080003084 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80003084:	ff010113          	addi	sp,sp,-16
    80003088:	00813423          	sd	s0,8(sp)
    8000308c:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80003090:	01300793          	li	a5,19
    80003094:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80003098:	00000073          	ecall

};
    8000309c:	00813403          	ld	s0,8(sp)
    800030a0:	01010113          	addi	sp,sp,16
    800030a4:	00008067          	ret

00000000800030a8 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    800030a8:	fe010113          	addi	sp,sp,-32
    800030ac:	00113c23          	sd	ra,24(sp)
    800030b0:	00813823          	sd	s0,16(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	02010413          	addi	s0,sp,32
    //RiscV::popSppSpie();
    __asm__ volatile ("csrw sepc, ra");
    800030bc:	14109073          	csrw	sepc,ra
    //__asm__ volatile ("sret");
    running->body(running->arguments);
    800030c0:	00004497          	auipc	s1,0x4
    800030c4:	06048493          	addi	s1,s1,96 # 80007120 <_ZN3TCB7runningE>
    800030c8:	0004b783          	ld	a5,0(s1)
    800030cc:	0007b703          	ld	a4,0(a5)
    800030d0:	0287b503          	ld	a0,40(a5)
    800030d4:	000700e7          	jalr	a4
    running->setFinished(true);
    800030d8:	00100593          	li	a1,1
    800030dc:	0004b503          	ld	a0,0(s1)
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	ca4080e7          	jalr	-860(ra) # 80002d84 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    800030e8:	00000097          	auipc	ra,0x0
    800030ec:	f9c080e7          	jalr	-100(ra) # 80003084 <_ZN3TCB5yieldEv>
}
    800030f0:	01813083          	ld	ra,24(sp)
    800030f4:	01013403          	ld	s0,16(sp)
    800030f8:	00813483          	ld	s1,8(sp)
    800030fc:	02010113          	addi	sp,sp,32
    80003100:	00008067          	ret

0000000080003104 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80003104:	fe010113          	addi	sp,sp,-32
    80003108:	00113c23          	sd	ra,24(sp)
    8000310c:	00813823          	sd	s0,16(sp)
    80003110:	00913423          	sd	s1,8(sp)
    80003114:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80003118:	00004497          	auipc	s1,0x4
    8000311c:	0084b483          	ld	s1,8(s1) # 80007120 <_ZN3TCB7runningE>
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80003120:	0304b783          	ld	a5,48(s1)
    80003124:	02078c63          	beqz	a5,8000315c <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	9bc080e7          	jalr	-1604(ra) # 80002ae4 <_ZN9Scheduler3getEv>
    80003130:	00004797          	auipc	a5,0x4
    80003134:	fea7b823          	sd	a0,-16(a5) # 80007120 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80003138:	01050593          	addi	a1,a0,16
    8000313c:	01048513          	addi	a0,s1,16
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	0f0080e7          	jalr	240(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80003148:	01813083          	ld	ra,24(sp)
    8000314c:	01013403          	ld	s0,16(sp)
    80003150:	00813483          	ld	s1,8(sp)
    80003154:	02010113          	addi	sp,sp,32
    80003158:	00008067          	ret
    if (old->semBlocked==nullptr && !old->isFinished()) {
    8000315c:	00048513          	mv	a0,s1
    80003160:	00000097          	auipc	ra,0x0
    80003164:	c08080e7          	jalr	-1016(ra) # 80002d68 <_ZNK3TCB10isFinishedEv>
    80003168:	fc0510e3          	bnez	a0,80003128 <_ZN3TCB8dispatchEv+0x24>
        Scheduler::put(old);
    8000316c:	00048513          	mv	a0,s1
    80003170:	00000097          	auipc	ra,0x0
    80003174:	9dc080e7          	jalr	-1572(ra) # 80002b4c <_ZN9Scheduler3putEP3TCB>
    80003178:	fb1ff06f          	j	80003128 <_ZN3TCB8dispatchEv+0x24>

000000008000317c <_ZN3TCB11startThreadEPPS_PFvPvE>:

void TCB::startThread(TCB **handle, TCB::Body body) {
    8000317c:	ff010113          	addi	sp,sp,-16
    80003180:	00113423          	sd	ra,8(sp)
    80003184:	00813023          	sd	s0,0(sp)
    80003188:	01010413          	addi	s0,sp,16
    (*handle)->body=body;
    8000318c:	00053783          	ld	a5,0(a0)
    80003190:	00b7b023          	sd	a1,0(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    80003194:	10058c63          	beqz	a1,800032ac <_ZN3TCB11startThreadEPPS_PFvPvE+0x130>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003198:	00004797          	auipc	a5,0x4
    8000319c:	ee87b783          	ld	a5,-280(a5) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    800031a0:	0007b783          	ld	a5,0(a5)
    800031a4:	10078663          	beqz	a5,800032b0 <_ZN3TCB11startThreadEPPS_PFvPvE+0x134>
            cur->next=fmem_head->next;
    800031a8:	00004717          	auipc	a4,0x4
    800031ac:	ed873703          	ld	a4,-296(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    800031b0:	00073683          	ld	a3,0(a4)
    800031b4:	0006b603          	ld	a2,0(a3)
    800031b8:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    800031bc:	00073703          	ld	a4,0(a4)
    800031c0:	00873803          	ld	a6,8(a4)
    800031c4:	0107b423          	sd	a6,8(a5)
            if (cur->size<size) continue;
    800031c8:	0107b703          	ld	a4,16(a5)
    800031cc:	000016b7          	lui	a3,0x1
    800031d0:	03f68693          	addi	a3,a3,63 # 103f <_entry-0x7fffefc1>
    800031d4:	02e6fa63          	bgeu	a3,a4,80003208 <_ZN3TCB11startThreadEPPS_PFvPvE+0x8c>
            if (cur->size-size<=sizeof(FreeMem)){
    800031d8:	fffff6b7          	lui	a3,0xfffff
    800031dc:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff6c20>
    800031e0:	00d70733          	add	a4,a4,a3
    800031e4:	01800693          	li	a3,24
    800031e8:	02e6ec63          	bltu	a3,a4,80003220 <_ZN3TCB11startThreadEPPS_PFvPvE+0xa4>
                if (cur->prev) cur->prev->next = cur->next;
    800031ec:	02080263          	beqz	a6,80003210 <_ZN3TCB11startThreadEPPS_PFvPvE+0x94>
    800031f0:	00c83023          	sd	a2,0(a6)
                if (cur->next) cur->next->prev = cur->prev;
    800031f4:	0007b703          	ld	a4,0(a5)
    800031f8:	0a070c63          	beqz	a4,800032b0 <_ZN3TCB11startThreadEPPS_PFvPvE+0x134>
    800031fc:	0087b683          	ld	a3,8(a5)
    80003200:	00d73423          	sd	a3,8(a4)
                return cur;
    80003204:	0ac0006f          	j	800032b0 <_ZN3TCB11startThreadEPPS_PFvPvE+0x134>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80003208:	00060793          	mv	a5,a2
    8000320c:	f99ff06f          	j	800031a4 <_ZN3TCB11startThreadEPPS_PFvPvE+0x28>
                else fmem_head = cur->next;
    80003210:	00004717          	auipc	a4,0x4
    80003214:	e7073703          	ld	a4,-400(a4) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    80003218:	00c73023          	sd	a2,0(a4)
    8000321c:	fd9ff06f          	j	800031f4 <_ZN3TCB11startThreadEPPS_PFvPvE+0x78>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80003220:	00001737          	lui	a4,0x1
    80003224:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    80003228:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    8000322c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80003230:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80003234:	0087b683          	ld	a3,8(a5)
    80003238:	06068063          	beqz	a3,80003298 <_ZN3TCB11startThreadEPPS_PFvPvE+0x11c>
    8000323c:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80003240:	0007b683          	ld	a3,0(a5)
    80003244:	00068463          	beqz	a3,8000324c <_ZN3TCB11startThreadEPPS_PFvPvE+0xd0>
    80003248:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    8000324c:	0087b603          	ld	a2,8(a5)
    80003250:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80003254:	0007b683          	ld	a3,0(a5)
    80003258:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    8000325c:	0107b783          	ld	a5,16(a5)
    80003260:	fffff6b7          	lui	a3,0xfffff
    80003264:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff6c20>
    80003268:	00d787b3          	add	a5,a5,a3
    8000326c:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80003270:	0c070693          	addi	a3,a4,192
    80003274:	00004817          	auipc	a6,0x4
    80003278:	e0c83803          	ld	a6,-500(a6) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000327c:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80003280:	00073803          	ld	a6,0(a4)
    80003284:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80003288:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    8000328c:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80003290:	00070793          	mv	a5,a4
    80003294:	01c0006f          	j	800032b0 <_ZN3TCB11startThreadEPPS_PFvPvE+0x134>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80003298:	0c070693          	addi	a3,a4,192
    8000329c:	00004617          	auipc	a2,0x4
    800032a0:	de463603          	ld	a2,-540(a2) # 80007080 <_GLOBAL_OFFSET_TABLE_+0x28>
    800032a4:	00d63023          	sd	a3,0(a2)
    800032a8:	f99ff06f          	j	80003240 <_ZN3TCB11startThreadEPPS_PFvPvE+0xc4>
    800032ac:	00000793          	li	a5,0
    800032b0:	00053703          	ld	a4,0(a0)
    800032b4:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    800032b8:	04058a63          	beqz	a1,8000330c <_ZN3TCB11startThreadEPPS_PFvPvE+0x190>
    800032bc:	00000717          	auipc	a4,0x0
    800032c0:	dec70713          	addi	a4,a4,-532 # 800030a8 <_ZN3TCB13threadWrapperEv>
    800032c4:	00053783          	ld	a5,0(a0)
    800032c8:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    800032cc:	00053703          	ld	a4,0(a0)
    800032d0:	00873783          	ld	a5,8(a4)
    800032d4:	04078063          	beqz	a5,80003314 <_ZN3TCB11startThreadEPPS_PFvPvE+0x198>
    800032d8:	000086b7          	lui	a3,0x8
    800032dc:	00d787b3          	add	a5,a5,a3
    800032e0:	00f73c23          	sd	a5,24(a4)
    (*handle)->threadStarted=true;
    800032e4:	00053783          	ld	a5,0(a0)
    800032e8:	00100713          	li	a4,1
    800032ec:	04e78023          	sb	a4,64(a5)
    //printString("setuje started\n");
    Scheduler::put(*handle); //vidi nekako da startuje handle nad kojim pozivas, mada mislim da ce poziv izgledati handle->start
    800032f0:	00053503          	ld	a0,0(a0)
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	858080e7          	jalr	-1960(ra) # 80002b4c <_ZN9Scheduler3putEP3TCB>
}
    800032fc:	00813083          	ld	ra,8(sp)
    80003300:	00013403          	ld	s0,0(sp)
    80003304:	01010113          	addi	sp,sp,16
    80003308:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    8000330c:	00000713          	li	a4,0
    80003310:	fb5ff06f          	j	800032c4 <_ZN3TCB11startThreadEPPS_PFvPvE+0x148>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80003314:	00000793          	li	a5,0
    80003318:	fc9ff06f          	j	800032e0 <_ZN3TCB11startThreadEPPS_PFvPvE+0x164>

000000008000331c <_Znwm>:
#include "../lib/mem.h"


//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    8000331c:	ff010113          	addi	sp,sp,-16
    80003320:	00113423          	sd	ra,8(sp)
    80003324:	00813023          	sd	s0,0(sp)
    80003328:	01010413          	addi	s0,sp,16
    //return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
    return mem_alloc(n);
    8000332c:	ffffe097          	auipc	ra,0xffffe
    80003330:	f18080e7          	jalr	-232(ra) # 80001244 <_Z9mem_allocm>
}
    80003334:	00813083          	ld	ra,8(sp)
    80003338:	00013403          	ld	s0,0(sp)
    8000333c:	01010113          	addi	sp,sp,16
    80003340:	00008067          	ret

0000000080003344 <_Znam>:

void *operator new[](uint64 n){
    80003344:	ff010113          	addi	sp,sp,-16
    80003348:	00113423          	sd	ra,8(sp)
    8000334c:	00813023          	sd	s0,0(sp)
    80003350:	01010413          	addi	s0,sp,16
    //return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
    return mem_alloc(n);
    80003354:	ffffe097          	auipc	ra,0xffffe
    80003358:	ef0080e7          	jalr	-272(ra) # 80001244 <_Z9mem_allocm>
}
    8000335c:	00813083          	ld	ra,8(sp)
    80003360:	00013403          	ld	s0,0(sp)
    80003364:	01010113          	addi	sp,sp,16
    80003368:	00008067          	ret

000000008000336c <_ZdlPv>:

void operator delete(void *p) noexcept {
    8000336c:	ff010113          	addi	sp,sp,-16
    80003370:	00113423          	sd	ra,8(sp)
    80003374:	00813023          	sd	s0,0(sp)
    80003378:	01010413          	addi	s0,sp,16
    //MemoryAllocation::mem_free(p);
    //__mem_free(p);
    mem_free(p);
    8000337c:	ffffe097          	auipc	ra,0xffffe
    80003380:	ef4080e7          	jalr	-268(ra) # 80001270 <_Z8mem_freePv>
}
    80003384:	00813083          	ld	ra,8(sp)
    80003388:	00013403          	ld	s0,0(sp)
    8000338c:	01010113          	addi	sp,sp,16
    80003390:	00008067          	ret

0000000080003394 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    80003394:	ff010113          	addi	sp,sp,-16
    80003398:	00113423          	sd	ra,8(sp)
    8000339c:	00813023          	sd	s0,0(sp)
    800033a0:	01010413          	addi	s0,sp,16
    //MemoryAllocation::mem_free(p);
    //__mem_free(p);
    mem_free(p);
    800033a4:	ffffe097          	auipc	ra,0xffffe
    800033a8:	ecc080e7          	jalr	-308(ra) # 80001270 <_Z8mem_freePv>
}
    800033ac:	00813083          	ld	ra,8(sp)
    800033b0:	00013403          	ld	s0,0(sp)
    800033b4:	01010113          	addi	sp,sp,16
    800033b8:	00008067          	ret

00000000800033bc <_ZN6Thread13threadWrapperEPv>:
    thread_start(&myHandle, threadWrapper); //todo vrati na cast (thread_t*) ako ne bude radilo
    //printString("izadje iz starta");
    return 0;
}

void Thread::threadWrapper(void *arg) {
    800033bc:	ff010113          	addi	sp,sp,-16
    800033c0:	00113423          	sd	ra,8(sp)
    800033c4:	00813023          	sd	s0,0(sp)
    800033c8:	01010413          	addi	s0,sp,16
    ((Thread*)arg)->run();
    800033cc:	00053783          	ld	a5,0(a0)
    800033d0:	0107b783          	ld	a5,16(a5)
    800033d4:	000780e7          	jalr	a5
}
    800033d8:	00813083          	ld	ra,8(sp)
    800033dc:	00013403          	ld	s0,0(sp)
    800033e0:	01010113          	addi	sp,sp,16
    800033e4:	00008067          	ret

00000000800033e8 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800033e8:	ff010113          	addi	sp,sp,-16
    800033ec:	00113423          	sd	ra,8(sp)
    800033f0:	00813023          	sd	s0,0(sp)
    800033f4:	01010413          	addi	s0,sp,16
    800033f8:	00004797          	auipc	a5,0x4
    800033fc:	c2878793          	addi	a5,a5,-984 # 80007020 <_ZTV6Thread+0x10>
    80003400:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);//mozda cak i sizeof(Thread)
    80003404:	00853503          	ld	a0,8(a0)
    80003408:	ffffe097          	auipc	ra,0xffffe
    8000340c:	e68080e7          	jalr	-408(ra) # 80001270 <_Z8mem_freePv>
}
    80003410:	00813083          	ld	ra,8(sp)
    80003414:	00013403          	ld	s0,0(sp)
    80003418:	01010113          	addi	sp,sp,16
    8000341c:	00008067          	ret

0000000080003420 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80003420:	ff010113          	addi	sp,sp,-16
    80003424:	00113423          	sd	ra,8(sp)
    80003428:	00813023          	sd	s0,0(sp)
    8000342c:	01010413          	addi	s0,sp,16
    80003430:	00004797          	auipc	a5,0x4
    80003434:	c1878793          	addi	a5,a5,-1000 # 80007048 <_ZTV9Semaphore+0x10>
    80003438:	00f53023          	sd	a5,0(a0)
    mem_free(myHandle);
    8000343c:	00853503          	ld	a0,8(a0)
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	e30080e7          	jalr	-464(ra) # 80001270 <_Z8mem_freePv>
}
    80003448:	00813083          	ld	ra,8(sp)
    8000344c:	00013403          	ld	s0,0(sp)
    80003450:	01010113          	addi	sp,sp,16
    80003454:	00008067          	ret

0000000080003458 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80003458:	fe010113          	addi	sp,sp,-32
    8000345c:	00113c23          	sd	ra,24(sp)
    80003460:	00813823          	sd	s0,16(sp)
    80003464:	00913423          	sd	s1,8(sp)
    80003468:	02010413          	addi	s0,sp,32
    8000346c:	00050493          	mv	s1,a0
}
    80003470:	00000097          	auipc	ra,0x0
    80003474:	f78080e7          	jalr	-136(ra) # 800033e8 <_ZN6ThreadD1Ev>
    80003478:	00048513          	mv	a0,s1
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	ef0080e7          	jalr	-272(ra) # 8000336c <_ZdlPv>
    80003484:	01813083          	ld	ra,24(sp)
    80003488:	01013403          	ld	s0,16(sp)
    8000348c:	00813483          	ld	s1,8(sp)
    80003490:	02010113          	addi	sp,sp,32
    80003494:	00008067          	ret

0000000080003498 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003498:	fe010113          	addi	sp,sp,-32
    8000349c:	00113c23          	sd	ra,24(sp)
    800034a0:	00813823          	sd	s0,16(sp)
    800034a4:	00913423          	sd	s1,8(sp)
    800034a8:	02010413          	addi	s0,sp,32
    800034ac:	00050493          	mv	s1,a0
}
    800034b0:	00000097          	auipc	ra,0x0
    800034b4:	f70080e7          	jalr	-144(ra) # 80003420 <_ZN9SemaphoreD1Ev>
    800034b8:	00048513          	mv	a0,s1
    800034bc:	00000097          	auipc	ra,0x0
    800034c0:	eb0080e7          	jalr	-336(ra) # 8000336c <_ZdlPv>
    800034c4:	01813083          	ld	ra,24(sp)
    800034c8:	01013403          	ld	s0,16(sp)
    800034cc:	00813483          	ld	s1,8(sp)
    800034d0:	02010113          	addi	sp,sp,32
    800034d4:	00008067          	ret

00000000800034d8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr){ //todo nekako treba da inicijalizujes myHandle, nullptr mi sumnjiv
    800034d8:	ff010113          	addi	sp,sp,-16
    800034dc:	00113423          	sd	ra,8(sp)
    800034e0:	00813023          	sd	s0,0(sp)
    800034e4:	01010413          	addi	s0,sp,16
    800034e8:	00004797          	auipc	a5,0x4
    800034ec:	b3878793          	addi	a5,a5,-1224 # 80007020 <_ZTV6Thread+0x10>
    800034f0:	00f53023          	sd	a5,0(a0)
    800034f4:	00053423          	sd	zero,8(a0)
    thread_create_cpp_api(&myHandle, body, arg);
    800034f8:	00850513          	addi	a0,a0,8
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	f44080e7          	jalr	-188(ra) # 80001440 <_Z21thread_create_cpp_apiPP3TCBPFvPvES2_>
}
    80003504:	00813083          	ld	ra,8(sp)
    80003508:	00013403          	ld	s0,0(sp)
    8000350c:	01010113          	addi	sp,sp,16
    80003510:	00008067          	ret

0000000080003514 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003514:	ff010113          	addi	sp,sp,-16
    80003518:	00113423          	sd	ra,8(sp)
    8000351c:	00813023          	sd	s0,0(sp)
    80003520:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003524:	ffffe097          	auipc	ra,0xffffe
    80003528:	de0080e7          	jalr	-544(ra) # 80001304 <_Z15thread_dispatchv>
}
    8000352c:	00813083          	ld	ra,8(sp)
    80003530:	00013403          	ld	s0,0(sp)
    80003534:	01010113          	addi	sp,sp,16
    80003538:	00008067          	ret

000000008000353c <_ZN6Thread5startEv>:
int Thread::start() {
    8000353c:	ff010113          	addi	sp,sp,-16
    80003540:	00113423          	sd	ra,8(sp)
    80003544:	00813023          	sd	s0,0(sp)
    80003548:	01010413          	addi	s0,sp,16
    thread_start(&myHandle, threadWrapper); //todo vrati na cast (thread_t*) ako ne bude radilo
    8000354c:	00000597          	auipc	a1,0x0
    80003550:	e7058593          	addi	a1,a1,-400 # 800033bc <_ZN6Thread13threadWrapperEPv>
    80003554:	00850513          	addi	a0,a0,8
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	f20080e7          	jalr	-224(ra) # 80001478 <_Z12thread_startPP3TCBPFvPvE>
}
    80003560:	00000513          	li	a0,0
    80003564:	00813083          	ld	ra,8(sp)
    80003568:	00013403          	ld	s0,0(sp)
    8000356c:	01010113          	addi	sp,sp,16
    80003570:	00008067          	ret

0000000080003574 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80003574:	ff010113          	addi	sp,sp,-16
    80003578:	00113423          	sd	ra,8(sp)
    8000357c:	00813023          	sd	s0,0(sp)
    80003580:	01010413          	addi	s0,sp,16
    80003584:	00004797          	auipc	a5,0x4
    80003588:	ac478793          	addi	a5,a5,-1340 # 80007048 <_ZTV9Semaphore+0x10>
    8000358c:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80003590:	00850513          	addi	a0,a0,8
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	d94080e7          	jalr	-620(ra) # 80001328 <_Z8sem_openPP9semaphorej>
}
    8000359c:	00813083          	ld	ra,8(sp)
    800035a0:	00013403          	ld	s0,0(sp)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret

00000000800035ac <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800035ac:	ff010113          	addi	sp,sp,-16
    800035b0:	00113423          	sd	ra,8(sp)
    800035b4:	00813023          	sd	s0,0(sp)
    800035b8:	01010413          	addi	s0,sp,16
    int ret = sem_wait(myHandle);
    800035bc:	00853503          	ld	a0,8(a0)
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	dcc080e7          	jalr	-564(ra) # 8000138c <_Z8sem_waitP9semaphore>
    return ret;
}
    800035c8:	00813083          	ld	ra,8(sp)
    800035cc:	00013403          	ld	s0,0(sp)
    800035d0:	01010113          	addi	sp,sp,16
    800035d4:	00008067          	ret

00000000800035d8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800035d8:	ff010113          	addi	sp,sp,-16
    800035dc:	00113423          	sd	ra,8(sp)
    800035e0:	00813023          	sd	s0,0(sp)
    800035e4:	01010413          	addi	s0,sp,16
    int ret=sem_signal(myHandle);
    800035e8:	00853503          	ld	a0,8(a0)
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	dd0080e7          	jalr	-560(ra) # 800013bc <_Z10sem_signalP9semaphore>
    return ret;
}
    800035f4:	00813083          	ld	ra,8(sp)
    800035f8:	00013403          	ld	s0,0(sp)
    800035fc:	01010113          	addi	sp,sp,16
    80003600:	00008067          	ret

0000000080003604 <_ZN7Console4getcEv>:

char Console::getc() {
    80003604:	ff010113          	addi	sp,sp,-16
    80003608:	00113423          	sd	ra,8(sp)
    8000360c:	00813023          	sd	s0,0(sp)
    80003610:	01010413          	addi	s0,sp,16
    char c=::getc();
    80003614:	ffffe097          	auipc	ra,0xffffe
    80003618:	dd8080e7          	jalr	-552(ra) # 800013ec <_Z4getcv>
    return c;
}
    8000361c:	00813083          	ld	ra,8(sp)
    80003620:	00013403          	ld	s0,0(sp)
    80003624:	01010113          	addi	sp,sp,16
    80003628:	00008067          	ret

000000008000362c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    8000362c:	ff010113          	addi	sp,sp,-16
    80003630:	00113423          	sd	ra,8(sp)
    80003634:	00813023          	sd	s0,0(sp)
    80003638:	01010413          	addi	s0,sp,16
    ::putc(c);
    8000363c:	ffffe097          	auipc	ra,0xffffe
    80003640:	ddc080e7          	jalr	-548(ra) # 80001418 <_Z4putcc>
}
    80003644:	00813083          	ld	ra,8(sp)
    80003648:	00013403          	ld	s0,0(sp)
    8000364c:	01010113          	addi	sp,sp,16
    80003650:	00008067          	ret

0000000080003654 <_ZN6Thread3runEv>:
        //Thread(threadWrapper(this), this); //todo mozda treba & ispred threadWrapper
        //thread_create_cpp_api(&myHandle, threadWrapper, this);
        createWrapper(&myHandle, threadWrapper, this, false); //OVO RADI, ZNACI ILI NE RADI START ILI NESTO SJEBE U PREKIDNO
        //THREAD_CREATE RADI BEZ PROBLEMA, STAVLJAO FALSE ILI TRUE MODIFIKATOR, ZNACI I DA SVE OSTALO RADI, DRUGI THREAD CREATE NE RADI, ZATO MORAM DA PROVALIM KAKO DA ISKORISTIM THREAD_CREATE
    };
    virtual void run () {} //on ovde zabaguje potpuno
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00813423          	sd	s0,8(sp)
    8000365c:	01010413          	addi	s0,sp,16
    80003660:	00813403          	ld	s0,8(sp)
    80003664:	01010113          	addi	sp,sp,16
    80003668:	00008067          	ret

000000008000366c <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    8000366c:	ff010113          	addi	sp,sp,-16
    80003670:	00813423          	sd	s0,8(sp)
    80003674:	01010413          	addi	s0,sp,16
    80003678:	00100793          	li	a5,1
    8000367c:	00f50863          	beq	a0,a5,8000368c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003680:	00813403          	ld	s0,8(sp)
    80003684:	01010113          	addi	sp,sp,16
    80003688:	00008067          	ret
    8000368c:	000107b7          	lui	a5,0x10
    80003690:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003694:	fef596e3          	bne	a1,a5,80003680 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80003698:	00004797          	auipc	a5,0x4
    8000369c:	9c87b783          	ld	a5,-1592(a5) # 80007060 <_GLOBAL_OFFSET_TABLE_+0x8>
    800036a0:	0007b783          	ld	a5,0(a5)
    800036a4:	00004717          	auipc	a4,0x4
    800036a8:	a8f73623          	sd	a5,-1396(a4) # 80007130 <_ZN16MemoryAllocation9fmem_headE>
    800036ac:	fd5ff06f          	j	80003680 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800036b0 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    800036b0:	ff010113          	addi	sp,sp,-16
    800036b4:	00113423          	sd	ra,8(sp)
    800036b8:	00813023          	sd	s0,0(sp)
    800036bc:	01010413          	addi	s0,sp,16
    800036c0:	000105b7          	lui	a1,0x10
    800036c4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800036c8:	00100513          	li	a0,1
    800036cc:	00000097          	auipc	ra,0x0
    800036d0:	fa0080e7          	jalr	-96(ra) # 8000366c <_Z41__static_initialization_and_destruction_0ii>
    800036d4:	00813083          	ld	ra,8(sp)
    800036d8:	00013403          	ld	s0,0(sp)
    800036dc:	01010113          	addi	sp,sp,16
    800036e0:	00008067          	ret

00000000800036e4 <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"
//TODO PROMENI SVE BUFFER PUTC I GETC
Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800036e4:	fe010113          	addi	sp,sp,-32
    800036e8:	00113c23          	sd	ra,24(sp)
    800036ec:	00813823          	sd	s0,16(sp)
    800036f0:	00913423          	sd	s1,8(sp)
    800036f4:	01213023          	sd	s2,0(sp)
    800036f8:	02010413          	addi	s0,sp,32
    800036fc:	00050493          	mv	s1,a0
    80003700:	00058913          	mv	s2,a1
    80003704:	0015879b          	addiw	a5,a1,1
    80003708:	0007851b          	sext.w	a0,a5
    8000370c:	00f4a023          	sw	a5,0(s1)
    80003710:	0004a823          	sw	zero,16(s1)
    80003714:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003718:	00251513          	slli	a0,a0,0x2
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	b28080e7          	jalr	-1240(ra) # 80001244 <_Z9mem_allocm>
    80003724:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003728:	00000593          	li	a1,0
    8000372c:	02048513          	addi	a0,s1,32
    80003730:	ffffe097          	auipc	ra,0xffffe
    80003734:	bf8080e7          	jalr	-1032(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&spaceAvailable, _cap);
    80003738:	00090593          	mv	a1,s2
    8000373c:	01848513          	addi	a0,s1,24
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	be8080e7          	jalr	-1048(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexHead, 1);
    80003748:	00100593          	li	a1,1
    8000374c:	02848513          	addi	a0,s1,40
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	bd8080e7          	jalr	-1064(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&mutexTail, 1);
    80003758:	00100593          	li	a1,1
    8000375c:	03048513          	addi	a0,s1,48
    80003760:	ffffe097          	auipc	ra,0xffffe
    80003764:	bc8080e7          	jalr	-1080(ra) # 80001328 <_Z8sem_openPP9semaphorej>
}
    80003768:	01813083          	ld	ra,24(sp)
    8000376c:	01013403          	ld	s0,16(sp)
    80003770:	00813483          	ld	s1,8(sp)
    80003774:	00013903          	ld	s2,0(sp)
    80003778:	02010113          	addi	sp,sp,32
    8000377c:	00008067          	ret

0000000080003780 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003780:	fe010113          	addi	sp,sp,-32
    80003784:	00113c23          	sd	ra,24(sp)
    80003788:	00813823          	sd	s0,16(sp)
    8000378c:	00913423          	sd	s1,8(sp)
    80003790:	01213023          	sd	s2,0(sp)
    80003794:	02010413          	addi	s0,sp,32
    80003798:	00050493          	mv	s1,a0
    8000379c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800037a0:	01853503          	ld	a0,24(a0)
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	be8080e7          	jalr	-1048(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexTail);
    800037ac:	0304b503          	ld	a0,48(s1)
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	bdc080e7          	jalr	-1060(ra) # 8000138c <_Z8sem_waitP9semaphore>
    buffer[tail] = val;
    800037b8:	0084b783          	ld	a5,8(s1)
    800037bc:	0144a703          	lw	a4,20(s1)
    800037c0:	00271713          	slli	a4,a4,0x2
    800037c4:	00e787b3          	add	a5,a5,a4
    800037c8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800037cc:	0144a783          	lw	a5,20(s1)
    800037d0:	0017879b          	addiw	a5,a5,1
    800037d4:	0004a703          	lw	a4,0(s1)
    800037d8:	02e7e7bb          	remw	a5,a5,a4
    800037dc:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800037e0:	0304b503          	ld	a0,48(s1)
    800037e4:	ffffe097          	auipc	ra,0xffffe
    800037e8:	bd8080e7          	jalr	-1064(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(itemAvailable);
    800037ec:	0204b503          	ld	a0,32(s1)
    800037f0:	ffffe097          	auipc	ra,0xffffe
    800037f4:	bcc080e7          	jalr	-1076(ra) # 800013bc <_Z10sem_signalP9semaphore>

}
    800037f8:	01813083          	ld	ra,24(sp)
    800037fc:	01013403          	ld	s0,16(sp)
    80003800:	00813483          	ld	s1,8(sp)
    80003804:	00013903          	ld	s2,0(sp)
    80003808:	02010113          	addi	sp,sp,32
    8000380c:	00008067          	ret

0000000080003810 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003810:	fe010113          	addi	sp,sp,-32
    80003814:	00113c23          	sd	ra,24(sp)
    80003818:	00813823          	sd	s0,16(sp)
    8000381c:	00913423          	sd	s1,8(sp)
    80003820:	01213023          	sd	s2,0(sp)
    80003824:	02010413          	addi	s0,sp,32
    80003828:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    8000382c:	02053503          	ld	a0,32(a0)
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	b5c080e7          	jalr	-1188(ra) # 8000138c <_Z8sem_waitP9semaphore>

    sem_wait(mutexHead);
    80003838:	0284b503          	ld	a0,40(s1)
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	b50080e7          	jalr	-1200(ra) # 8000138c <_Z8sem_waitP9semaphore>

    int ret = buffer[head];
    80003844:	0084b703          	ld	a4,8(s1)
    80003848:	0104a783          	lw	a5,16(s1)
    8000384c:	00279693          	slli	a3,a5,0x2
    80003850:	00d70733          	add	a4,a4,a3
    80003854:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003858:	0017879b          	addiw	a5,a5,1
    8000385c:	0004a703          	lw	a4,0(s1)
    80003860:	02e7e7bb          	remw	a5,a5,a4
    80003864:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003868:	0284b503          	ld	a0,40(s1)
    8000386c:	ffffe097          	auipc	ra,0xffffe
    80003870:	b50080e7          	jalr	-1200(ra) # 800013bc <_Z10sem_signalP9semaphore>

    sem_signal(spaceAvailable);
    80003874:	0184b503          	ld	a0,24(s1)
    80003878:	ffffe097          	auipc	ra,0xffffe
    8000387c:	b44080e7          	jalr	-1212(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    80003880:	00090513          	mv	a0,s2
    80003884:	01813083          	ld	ra,24(sp)
    80003888:	01013403          	ld	s0,16(sp)
    8000388c:	00813483          	ld	s1,8(sp)
    80003890:	00013903          	ld	s2,0(sp)
    80003894:	02010113          	addi	sp,sp,32
    80003898:	00008067          	ret

000000008000389c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000389c:	fe010113          	addi	sp,sp,-32
    800038a0:	00113c23          	sd	ra,24(sp)
    800038a4:	00813823          	sd	s0,16(sp)
    800038a8:	00913423          	sd	s1,8(sp)
    800038ac:	01213023          	sd	s2,0(sp)
    800038b0:	02010413          	addi	s0,sp,32
    800038b4:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800038b8:	02853503          	ld	a0,40(a0)
    800038bc:	ffffe097          	auipc	ra,0xffffe
    800038c0:	ad0080e7          	jalr	-1328(ra) # 8000138c <_Z8sem_waitP9semaphore>
    sem_wait(mutexTail);
    800038c4:	0304b503          	ld	a0,48(s1)
    800038c8:	ffffe097          	auipc	ra,0xffffe
    800038cc:	ac4080e7          	jalr	-1340(ra) # 8000138c <_Z8sem_waitP9semaphore>

    if (tail >= head) {
    800038d0:	0144a783          	lw	a5,20(s1)
    800038d4:	0104a903          	lw	s2,16(s1)
    800038d8:	0327ce63          	blt	a5,s2,80003914 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800038dc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800038e0:	0304b503          	ld	a0,48(s1)
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	ad8080e7          	jalr	-1320(ra) # 800013bc <_Z10sem_signalP9semaphore>
    sem_signal(mutexHead);
    800038ec:	0284b503          	ld	a0,40(s1)
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	acc080e7          	jalr	-1332(ra) # 800013bc <_Z10sem_signalP9semaphore>

    return ret;
}
    800038f8:	00090513          	mv	a0,s2
    800038fc:	01813083          	ld	ra,24(sp)
    80003900:	01013403          	ld	s0,16(sp)
    80003904:	00813483          	ld	s1,8(sp)
    80003908:	00013903          	ld	s2,0(sp)
    8000390c:	02010113          	addi	sp,sp,32
    80003910:	00008067          	ret
        ret = cap - head + tail;
    80003914:	0004a703          	lw	a4,0(s1)
    80003918:	4127093b          	subw	s2,a4,s2
    8000391c:	00f9093b          	addw	s2,s2,a5
    80003920:	fc1ff06f          	j	800038e0 <_ZN6Buffer6getCntEv+0x44>

0000000080003924 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003924:	fe010113          	addi	sp,sp,-32
    80003928:	00113c23          	sd	ra,24(sp)
    8000392c:	00813823          	sd	s0,16(sp)
    80003930:	00913423          	sd	s1,8(sp)
    80003934:	02010413          	addi	s0,sp,32
    80003938:	00050493          	mv	s1,a0
    putc('\n');
    8000393c:	00a00513          	li	a0,10
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	ad8080e7          	jalr	-1320(ra) # 80001418 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003948:	00002517          	auipc	a0,0x2
    8000394c:	7d050513          	addi	a0,a0,2000 # 80006118 <CONSOLE_STATUS+0x108>
    80003950:	fffff097          	auipc	ra,0xfffff
    80003954:	8a8080e7          	jalr	-1880(ra) # 800021f8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003958:	00048513          	mv	a0,s1
    8000395c:	00000097          	auipc	ra,0x0
    80003960:	f40080e7          	jalr	-192(ra) # 8000389c <_ZN6Buffer6getCntEv>
    80003964:	02a05c63          	blez	a0,8000399c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003968:	0084b783          	ld	a5,8(s1)
    8000396c:	0104a703          	lw	a4,16(s1)
    80003970:	00271713          	slli	a4,a4,0x2
    80003974:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003978:	0007c503          	lbu	a0,0(a5)
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	a9c080e7          	jalr	-1380(ra) # 80001418 <_Z4putcc>
        head = (head + 1) % cap;
    80003984:	0104a783          	lw	a5,16(s1)
    80003988:	0017879b          	addiw	a5,a5,1
    8000398c:	0004a703          	lw	a4,0(s1)
    80003990:	02e7e7bb          	remw	a5,a5,a4
    80003994:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003998:	fc1ff06f          	j	80003958 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000399c:	02100513          	li	a0,33
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	a78080e7          	jalr	-1416(ra) # 80001418 <_Z4putcc>
    putc('\n');
    800039a8:	00a00513          	li	a0,10
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	a6c080e7          	jalr	-1428(ra) # 80001418 <_Z4putcc>
    mem_free(buffer);
    800039b4:	0084b503          	ld	a0,8(s1)
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	8b8080e7          	jalr	-1864(ra) # 80001270 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800039c0:	0204b503          	ld	a0,32(s1)
    800039c4:	ffffe097          	auipc	ra,0xffffe
    800039c8:	998080e7          	jalr	-1640(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(spaceAvailable);
    800039cc:	0184b503          	ld	a0,24(s1)
    800039d0:	ffffe097          	auipc	ra,0xffffe
    800039d4:	98c080e7          	jalr	-1652(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexTail);
    800039d8:	0304b503          	ld	a0,48(s1)
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	980080e7          	jalr	-1664(ra) # 8000135c <_Z9sem_closeP9semaphore>
    sem_close(mutexHead);
    800039e4:	0284b503          	ld	a0,40(s1)
    800039e8:	ffffe097          	auipc	ra,0xffffe
    800039ec:	974080e7          	jalr	-1676(ra) # 8000135c <_Z9sem_closeP9semaphore>
}
    800039f0:	01813083          	ld	ra,24(sp)
    800039f4:	01013403          	ld	s0,16(sp)
    800039f8:	00813483          	ld	s1,8(sp)
    800039fc:	02010113          	addi	sp,sp,32
    80003a00:	00008067          	ret

0000000080003a04 <start>:
    80003a04:	ff010113          	addi	sp,sp,-16
    80003a08:	00813423          	sd	s0,8(sp)
    80003a0c:	01010413          	addi	s0,sp,16
    80003a10:	300027f3          	csrr	a5,mstatus
    80003a14:	ffffe737          	lui	a4,0xffffe
    80003a18:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff645f>
    80003a1c:	00e7f7b3          	and	a5,a5,a4
    80003a20:	00001737          	lui	a4,0x1
    80003a24:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003a28:	00e7e7b3          	or	a5,a5,a4
    80003a2c:	30079073          	csrw	mstatus,a5
    80003a30:	00000797          	auipc	a5,0x0
    80003a34:	16078793          	addi	a5,a5,352 # 80003b90 <system_main>
    80003a38:	34179073          	csrw	mepc,a5
    80003a3c:	00000793          	li	a5,0
    80003a40:	18079073          	csrw	satp,a5
    80003a44:	000107b7          	lui	a5,0x10
    80003a48:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003a4c:	30279073          	csrw	medeleg,a5
    80003a50:	30379073          	csrw	mideleg,a5
    80003a54:	104027f3          	csrr	a5,sie
    80003a58:	2227e793          	ori	a5,a5,546
    80003a5c:	10479073          	csrw	sie,a5
    80003a60:	fff00793          	li	a5,-1
    80003a64:	00a7d793          	srli	a5,a5,0xa
    80003a68:	3b079073          	csrw	pmpaddr0,a5
    80003a6c:	00f00793          	li	a5,15
    80003a70:	3a079073          	csrw	pmpcfg0,a5
    80003a74:	f14027f3          	csrr	a5,mhartid
    80003a78:	0200c737          	lui	a4,0x200c
    80003a7c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003a80:	0007869b          	sext.w	a3,a5
    80003a84:	00269713          	slli	a4,a3,0x2
    80003a88:	000f4637          	lui	a2,0xf4
    80003a8c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003a90:	00d70733          	add	a4,a4,a3
    80003a94:	0037979b          	slliw	a5,a5,0x3
    80003a98:	020046b7          	lui	a3,0x2004
    80003a9c:	00d787b3          	add	a5,a5,a3
    80003aa0:	00c585b3          	add	a1,a1,a2
    80003aa4:	00371693          	slli	a3,a4,0x3
    80003aa8:	00003717          	auipc	a4,0x3
    80003aac:	69870713          	addi	a4,a4,1688 # 80007140 <timer_scratch>
    80003ab0:	00b7b023          	sd	a1,0(a5)
    80003ab4:	00d70733          	add	a4,a4,a3
    80003ab8:	00f73c23          	sd	a5,24(a4)
    80003abc:	02c73023          	sd	a2,32(a4)
    80003ac0:	34071073          	csrw	mscratch,a4
    80003ac4:	00000797          	auipc	a5,0x0
    80003ac8:	6ec78793          	addi	a5,a5,1772 # 800041b0 <timervec>
    80003acc:	30579073          	csrw	mtvec,a5
    80003ad0:	300027f3          	csrr	a5,mstatus
    80003ad4:	0087e793          	ori	a5,a5,8
    80003ad8:	30079073          	csrw	mstatus,a5
    80003adc:	304027f3          	csrr	a5,mie
    80003ae0:	0807e793          	ori	a5,a5,128
    80003ae4:	30479073          	csrw	mie,a5
    80003ae8:	f14027f3          	csrr	a5,mhartid
    80003aec:	0007879b          	sext.w	a5,a5
    80003af0:	00078213          	mv	tp,a5
    80003af4:	30200073          	mret
    80003af8:	00813403          	ld	s0,8(sp)
    80003afc:	01010113          	addi	sp,sp,16
    80003b00:	00008067          	ret

0000000080003b04 <timerinit>:
    80003b04:	ff010113          	addi	sp,sp,-16
    80003b08:	00813423          	sd	s0,8(sp)
    80003b0c:	01010413          	addi	s0,sp,16
    80003b10:	f14027f3          	csrr	a5,mhartid
    80003b14:	0200c737          	lui	a4,0x200c
    80003b18:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b1c:	0007869b          	sext.w	a3,a5
    80003b20:	00269713          	slli	a4,a3,0x2
    80003b24:	000f4637          	lui	a2,0xf4
    80003b28:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b2c:	00d70733          	add	a4,a4,a3
    80003b30:	0037979b          	slliw	a5,a5,0x3
    80003b34:	020046b7          	lui	a3,0x2004
    80003b38:	00d787b3          	add	a5,a5,a3
    80003b3c:	00c585b3          	add	a1,a1,a2
    80003b40:	00371693          	slli	a3,a4,0x3
    80003b44:	00003717          	auipc	a4,0x3
    80003b48:	5fc70713          	addi	a4,a4,1532 # 80007140 <timer_scratch>
    80003b4c:	00b7b023          	sd	a1,0(a5)
    80003b50:	00d70733          	add	a4,a4,a3
    80003b54:	00f73c23          	sd	a5,24(a4)
    80003b58:	02c73023          	sd	a2,32(a4)
    80003b5c:	34071073          	csrw	mscratch,a4
    80003b60:	00000797          	auipc	a5,0x0
    80003b64:	65078793          	addi	a5,a5,1616 # 800041b0 <timervec>
    80003b68:	30579073          	csrw	mtvec,a5
    80003b6c:	300027f3          	csrr	a5,mstatus
    80003b70:	0087e793          	ori	a5,a5,8
    80003b74:	30079073          	csrw	mstatus,a5
    80003b78:	304027f3          	csrr	a5,mie
    80003b7c:	0807e793          	ori	a5,a5,128
    80003b80:	30479073          	csrw	mie,a5
    80003b84:	00813403          	ld	s0,8(sp)
    80003b88:	01010113          	addi	sp,sp,16
    80003b8c:	00008067          	ret

0000000080003b90 <system_main>:
    80003b90:	fe010113          	addi	sp,sp,-32
    80003b94:	00813823          	sd	s0,16(sp)
    80003b98:	00913423          	sd	s1,8(sp)
    80003b9c:	00113c23          	sd	ra,24(sp)
    80003ba0:	02010413          	addi	s0,sp,32
    80003ba4:	00000097          	auipc	ra,0x0
    80003ba8:	0c4080e7          	jalr	196(ra) # 80003c68 <cpuid>
    80003bac:	00003497          	auipc	s1,0x3
    80003bb0:	51448493          	addi	s1,s1,1300 # 800070c0 <started>
    80003bb4:	02050263          	beqz	a0,80003bd8 <system_main+0x48>
    80003bb8:	0004a783          	lw	a5,0(s1)
    80003bbc:	0007879b          	sext.w	a5,a5
    80003bc0:	fe078ce3          	beqz	a5,80003bb8 <system_main+0x28>
    80003bc4:	0ff0000f          	fence
    80003bc8:	00002517          	auipc	a0,0x2
    80003bcc:	59850513          	addi	a0,a0,1432 # 80006160 <CONSOLE_STATUS+0x150>
    80003bd0:	00001097          	auipc	ra,0x1
    80003bd4:	a7c080e7          	jalr	-1412(ra) # 8000464c <panic>
    80003bd8:	00001097          	auipc	ra,0x1
    80003bdc:	9d0080e7          	jalr	-1584(ra) # 800045a8 <consoleinit>
    80003be0:	00001097          	auipc	ra,0x1
    80003be4:	15c080e7          	jalr	348(ra) # 80004d3c <printfinit>
    80003be8:	00002517          	auipc	a0,0x2
    80003bec:	65850513          	addi	a0,a0,1624 # 80006240 <CONSOLE_STATUS+0x230>
    80003bf0:	00001097          	auipc	ra,0x1
    80003bf4:	ab8080e7          	jalr	-1352(ra) # 800046a8 <__printf>
    80003bf8:	00002517          	auipc	a0,0x2
    80003bfc:	53850513          	addi	a0,a0,1336 # 80006130 <CONSOLE_STATUS+0x120>
    80003c00:	00001097          	auipc	ra,0x1
    80003c04:	aa8080e7          	jalr	-1368(ra) # 800046a8 <__printf>
    80003c08:	00002517          	auipc	a0,0x2
    80003c0c:	63850513          	addi	a0,a0,1592 # 80006240 <CONSOLE_STATUS+0x230>
    80003c10:	00001097          	auipc	ra,0x1
    80003c14:	a98080e7          	jalr	-1384(ra) # 800046a8 <__printf>
    80003c18:	00001097          	auipc	ra,0x1
    80003c1c:	4b0080e7          	jalr	1200(ra) # 800050c8 <kinit>
    80003c20:	00000097          	auipc	ra,0x0
    80003c24:	148080e7          	jalr	328(ra) # 80003d68 <trapinit>
    80003c28:	00000097          	auipc	ra,0x0
    80003c2c:	16c080e7          	jalr	364(ra) # 80003d94 <trapinithart>
    80003c30:	00000097          	auipc	ra,0x0
    80003c34:	5c0080e7          	jalr	1472(ra) # 800041f0 <plicinit>
    80003c38:	00000097          	auipc	ra,0x0
    80003c3c:	5e0080e7          	jalr	1504(ra) # 80004218 <plicinithart>
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	078080e7          	jalr	120(ra) # 80003cb8 <userinit>
    80003c48:	0ff0000f          	fence
    80003c4c:	00100793          	li	a5,1
    80003c50:	00002517          	auipc	a0,0x2
    80003c54:	4f850513          	addi	a0,a0,1272 # 80006148 <CONSOLE_STATUS+0x138>
    80003c58:	00f4a023          	sw	a5,0(s1)
    80003c5c:	00001097          	auipc	ra,0x1
    80003c60:	a4c080e7          	jalr	-1460(ra) # 800046a8 <__printf>
    80003c64:	0000006f          	j	80003c64 <system_main+0xd4>

0000000080003c68 <cpuid>:
    80003c68:	ff010113          	addi	sp,sp,-16
    80003c6c:	00813423          	sd	s0,8(sp)
    80003c70:	01010413          	addi	s0,sp,16
    80003c74:	00020513          	mv	a0,tp
    80003c78:	00813403          	ld	s0,8(sp)
    80003c7c:	0005051b          	sext.w	a0,a0
    80003c80:	01010113          	addi	sp,sp,16
    80003c84:	00008067          	ret

0000000080003c88 <mycpu>:
    80003c88:	ff010113          	addi	sp,sp,-16
    80003c8c:	00813423          	sd	s0,8(sp)
    80003c90:	01010413          	addi	s0,sp,16
    80003c94:	00020793          	mv	a5,tp
    80003c98:	00813403          	ld	s0,8(sp)
    80003c9c:	0007879b          	sext.w	a5,a5
    80003ca0:	00779793          	slli	a5,a5,0x7
    80003ca4:	00004517          	auipc	a0,0x4
    80003ca8:	4cc50513          	addi	a0,a0,1228 # 80008170 <cpus>
    80003cac:	00f50533          	add	a0,a0,a5
    80003cb0:	01010113          	addi	sp,sp,16
    80003cb4:	00008067          	ret

0000000080003cb8 <userinit>:
    80003cb8:	ff010113          	addi	sp,sp,-16
    80003cbc:	00813423          	sd	s0,8(sp)
    80003cc0:	01010413          	addi	s0,sp,16
    80003cc4:	00813403          	ld	s0,8(sp)
    80003cc8:	01010113          	addi	sp,sp,16
    80003ccc:	fffff317          	auipc	t1,0xfffff
    80003cd0:	ff430067          	jr	-12(t1) # 80002cc0 <main>

0000000080003cd4 <either_copyout>:
    80003cd4:	ff010113          	addi	sp,sp,-16
    80003cd8:	00813023          	sd	s0,0(sp)
    80003cdc:	00113423          	sd	ra,8(sp)
    80003ce0:	01010413          	addi	s0,sp,16
    80003ce4:	02051663          	bnez	a0,80003d10 <either_copyout+0x3c>
    80003ce8:	00058513          	mv	a0,a1
    80003cec:	00060593          	mv	a1,a2
    80003cf0:	0006861b          	sext.w	a2,a3
    80003cf4:	00002097          	auipc	ra,0x2
    80003cf8:	c60080e7          	jalr	-928(ra) # 80005954 <__memmove>
    80003cfc:	00813083          	ld	ra,8(sp)
    80003d00:	00013403          	ld	s0,0(sp)
    80003d04:	00000513          	li	a0,0
    80003d08:	01010113          	addi	sp,sp,16
    80003d0c:	00008067          	ret
    80003d10:	00002517          	auipc	a0,0x2
    80003d14:	47850513          	addi	a0,a0,1144 # 80006188 <CONSOLE_STATUS+0x178>
    80003d18:	00001097          	auipc	ra,0x1
    80003d1c:	934080e7          	jalr	-1740(ra) # 8000464c <panic>

0000000080003d20 <either_copyin>:
    80003d20:	ff010113          	addi	sp,sp,-16
    80003d24:	00813023          	sd	s0,0(sp)
    80003d28:	00113423          	sd	ra,8(sp)
    80003d2c:	01010413          	addi	s0,sp,16
    80003d30:	02059463          	bnez	a1,80003d58 <either_copyin+0x38>
    80003d34:	00060593          	mv	a1,a2
    80003d38:	0006861b          	sext.w	a2,a3
    80003d3c:	00002097          	auipc	ra,0x2
    80003d40:	c18080e7          	jalr	-1000(ra) # 80005954 <__memmove>
    80003d44:	00813083          	ld	ra,8(sp)
    80003d48:	00013403          	ld	s0,0(sp)
    80003d4c:	00000513          	li	a0,0
    80003d50:	01010113          	addi	sp,sp,16
    80003d54:	00008067          	ret
    80003d58:	00002517          	auipc	a0,0x2
    80003d5c:	45850513          	addi	a0,a0,1112 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80003d60:	00001097          	auipc	ra,0x1
    80003d64:	8ec080e7          	jalr	-1812(ra) # 8000464c <panic>

0000000080003d68 <trapinit>:
    80003d68:	ff010113          	addi	sp,sp,-16
    80003d6c:	00813423          	sd	s0,8(sp)
    80003d70:	01010413          	addi	s0,sp,16
    80003d74:	00813403          	ld	s0,8(sp)
    80003d78:	00002597          	auipc	a1,0x2
    80003d7c:	46058593          	addi	a1,a1,1120 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80003d80:	00004517          	auipc	a0,0x4
    80003d84:	47050513          	addi	a0,a0,1136 # 800081f0 <tickslock>
    80003d88:	01010113          	addi	sp,sp,16
    80003d8c:	00001317          	auipc	t1,0x1
    80003d90:	5cc30067          	jr	1484(t1) # 80005358 <initlock>

0000000080003d94 <trapinithart>:
    80003d94:	ff010113          	addi	sp,sp,-16
    80003d98:	00813423          	sd	s0,8(sp)
    80003d9c:	01010413          	addi	s0,sp,16
    80003da0:	00000797          	auipc	a5,0x0
    80003da4:	30078793          	addi	a5,a5,768 # 800040a0 <kernelvec>
    80003da8:	10579073          	csrw	stvec,a5
    80003dac:	00813403          	ld	s0,8(sp)
    80003db0:	01010113          	addi	sp,sp,16
    80003db4:	00008067          	ret

0000000080003db8 <usertrap>:
    80003db8:	ff010113          	addi	sp,sp,-16
    80003dbc:	00813423          	sd	s0,8(sp)
    80003dc0:	01010413          	addi	s0,sp,16
    80003dc4:	00813403          	ld	s0,8(sp)
    80003dc8:	01010113          	addi	sp,sp,16
    80003dcc:	00008067          	ret

0000000080003dd0 <usertrapret>:
    80003dd0:	ff010113          	addi	sp,sp,-16
    80003dd4:	00813423          	sd	s0,8(sp)
    80003dd8:	01010413          	addi	s0,sp,16
    80003ddc:	00813403          	ld	s0,8(sp)
    80003de0:	01010113          	addi	sp,sp,16
    80003de4:	00008067          	ret

0000000080003de8 <kerneltrap>:
    80003de8:	fe010113          	addi	sp,sp,-32
    80003dec:	00813823          	sd	s0,16(sp)
    80003df0:	00113c23          	sd	ra,24(sp)
    80003df4:	00913423          	sd	s1,8(sp)
    80003df8:	02010413          	addi	s0,sp,32
    80003dfc:	142025f3          	csrr	a1,scause
    80003e00:	100027f3          	csrr	a5,sstatus
    80003e04:	0027f793          	andi	a5,a5,2
    80003e08:	10079c63          	bnez	a5,80003f20 <kerneltrap+0x138>
    80003e0c:	142027f3          	csrr	a5,scause
    80003e10:	0207ce63          	bltz	a5,80003e4c <kerneltrap+0x64>
    80003e14:	00002517          	auipc	a0,0x2
    80003e18:	40c50513          	addi	a0,a0,1036 # 80006220 <CONSOLE_STATUS+0x210>
    80003e1c:	00001097          	auipc	ra,0x1
    80003e20:	88c080e7          	jalr	-1908(ra) # 800046a8 <__printf>
    80003e24:	141025f3          	csrr	a1,sepc
    80003e28:	14302673          	csrr	a2,stval
    80003e2c:	00002517          	auipc	a0,0x2
    80003e30:	40450513          	addi	a0,a0,1028 # 80006230 <CONSOLE_STATUS+0x220>
    80003e34:	00001097          	auipc	ra,0x1
    80003e38:	874080e7          	jalr	-1932(ra) # 800046a8 <__printf>
    80003e3c:	00002517          	auipc	a0,0x2
    80003e40:	40c50513          	addi	a0,a0,1036 # 80006248 <CONSOLE_STATUS+0x238>
    80003e44:	00001097          	auipc	ra,0x1
    80003e48:	808080e7          	jalr	-2040(ra) # 8000464c <panic>
    80003e4c:	0ff7f713          	andi	a4,a5,255
    80003e50:	00900693          	li	a3,9
    80003e54:	04d70063          	beq	a4,a3,80003e94 <kerneltrap+0xac>
    80003e58:	fff00713          	li	a4,-1
    80003e5c:	03f71713          	slli	a4,a4,0x3f
    80003e60:	00170713          	addi	a4,a4,1
    80003e64:	fae798e3          	bne	a5,a4,80003e14 <kerneltrap+0x2c>
    80003e68:	00000097          	auipc	ra,0x0
    80003e6c:	e00080e7          	jalr	-512(ra) # 80003c68 <cpuid>
    80003e70:	06050663          	beqz	a0,80003edc <kerneltrap+0xf4>
    80003e74:	144027f3          	csrr	a5,sip
    80003e78:	ffd7f793          	andi	a5,a5,-3
    80003e7c:	14479073          	csrw	sip,a5
    80003e80:	01813083          	ld	ra,24(sp)
    80003e84:	01013403          	ld	s0,16(sp)
    80003e88:	00813483          	ld	s1,8(sp)
    80003e8c:	02010113          	addi	sp,sp,32
    80003e90:	00008067          	ret
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	3d0080e7          	jalr	976(ra) # 80004264 <plic_claim>
    80003e9c:	00a00793          	li	a5,10
    80003ea0:	00050493          	mv	s1,a0
    80003ea4:	06f50863          	beq	a0,a5,80003f14 <kerneltrap+0x12c>
    80003ea8:	fc050ce3          	beqz	a0,80003e80 <kerneltrap+0x98>
    80003eac:	00050593          	mv	a1,a0
    80003eb0:	00002517          	auipc	a0,0x2
    80003eb4:	35050513          	addi	a0,a0,848 # 80006200 <CONSOLE_STATUS+0x1f0>
    80003eb8:	00000097          	auipc	ra,0x0
    80003ebc:	7f0080e7          	jalr	2032(ra) # 800046a8 <__printf>
    80003ec0:	01013403          	ld	s0,16(sp)
    80003ec4:	01813083          	ld	ra,24(sp)
    80003ec8:	00048513          	mv	a0,s1
    80003ecc:	00813483          	ld	s1,8(sp)
    80003ed0:	02010113          	addi	sp,sp,32
    80003ed4:	00000317          	auipc	t1,0x0
    80003ed8:	3c830067          	jr	968(t1) # 8000429c <plic_complete>
    80003edc:	00004517          	auipc	a0,0x4
    80003ee0:	31450513          	addi	a0,a0,788 # 800081f0 <tickslock>
    80003ee4:	00001097          	auipc	ra,0x1
    80003ee8:	498080e7          	jalr	1176(ra) # 8000537c <acquire>
    80003eec:	00003717          	auipc	a4,0x3
    80003ef0:	1d870713          	addi	a4,a4,472 # 800070c4 <ticks>
    80003ef4:	00072783          	lw	a5,0(a4)
    80003ef8:	00004517          	auipc	a0,0x4
    80003efc:	2f850513          	addi	a0,a0,760 # 800081f0 <tickslock>
    80003f00:	0017879b          	addiw	a5,a5,1
    80003f04:	00f72023          	sw	a5,0(a4)
    80003f08:	00001097          	auipc	ra,0x1
    80003f0c:	540080e7          	jalr	1344(ra) # 80005448 <release>
    80003f10:	f65ff06f          	j	80003e74 <kerneltrap+0x8c>
    80003f14:	00001097          	auipc	ra,0x1
    80003f18:	09c080e7          	jalr	156(ra) # 80004fb0 <uartintr>
    80003f1c:	fa5ff06f          	j	80003ec0 <kerneltrap+0xd8>
    80003f20:	00002517          	auipc	a0,0x2
    80003f24:	2c050513          	addi	a0,a0,704 # 800061e0 <CONSOLE_STATUS+0x1d0>
    80003f28:	00000097          	auipc	ra,0x0
    80003f2c:	724080e7          	jalr	1828(ra) # 8000464c <panic>

0000000080003f30 <clockintr>:
    80003f30:	fe010113          	addi	sp,sp,-32
    80003f34:	00813823          	sd	s0,16(sp)
    80003f38:	00913423          	sd	s1,8(sp)
    80003f3c:	00113c23          	sd	ra,24(sp)
    80003f40:	02010413          	addi	s0,sp,32
    80003f44:	00004497          	auipc	s1,0x4
    80003f48:	2ac48493          	addi	s1,s1,684 # 800081f0 <tickslock>
    80003f4c:	00048513          	mv	a0,s1
    80003f50:	00001097          	auipc	ra,0x1
    80003f54:	42c080e7          	jalr	1068(ra) # 8000537c <acquire>
    80003f58:	00003717          	auipc	a4,0x3
    80003f5c:	16c70713          	addi	a4,a4,364 # 800070c4 <ticks>
    80003f60:	00072783          	lw	a5,0(a4)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	01813083          	ld	ra,24(sp)
    80003f6c:	00048513          	mv	a0,s1
    80003f70:	0017879b          	addiw	a5,a5,1
    80003f74:	00813483          	ld	s1,8(sp)
    80003f78:	00f72023          	sw	a5,0(a4)
    80003f7c:	02010113          	addi	sp,sp,32
    80003f80:	00001317          	auipc	t1,0x1
    80003f84:	4c830067          	jr	1224(t1) # 80005448 <release>

0000000080003f88 <devintr>:
    80003f88:	142027f3          	csrr	a5,scause
    80003f8c:	00000513          	li	a0,0
    80003f90:	0007c463          	bltz	a5,80003f98 <devintr+0x10>
    80003f94:	00008067          	ret
    80003f98:	fe010113          	addi	sp,sp,-32
    80003f9c:	00813823          	sd	s0,16(sp)
    80003fa0:	00113c23          	sd	ra,24(sp)
    80003fa4:	00913423          	sd	s1,8(sp)
    80003fa8:	02010413          	addi	s0,sp,32
    80003fac:	0ff7f713          	andi	a4,a5,255
    80003fb0:	00900693          	li	a3,9
    80003fb4:	04d70c63          	beq	a4,a3,8000400c <devintr+0x84>
    80003fb8:	fff00713          	li	a4,-1
    80003fbc:	03f71713          	slli	a4,a4,0x3f
    80003fc0:	00170713          	addi	a4,a4,1
    80003fc4:	00e78c63          	beq	a5,a4,80003fdc <devintr+0x54>
    80003fc8:	01813083          	ld	ra,24(sp)
    80003fcc:	01013403          	ld	s0,16(sp)
    80003fd0:	00813483          	ld	s1,8(sp)
    80003fd4:	02010113          	addi	sp,sp,32
    80003fd8:	00008067          	ret
    80003fdc:	00000097          	auipc	ra,0x0
    80003fe0:	c8c080e7          	jalr	-884(ra) # 80003c68 <cpuid>
    80003fe4:	06050663          	beqz	a0,80004050 <devintr+0xc8>
    80003fe8:	144027f3          	csrr	a5,sip
    80003fec:	ffd7f793          	andi	a5,a5,-3
    80003ff0:	14479073          	csrw	sip,a5
    80003ff4:	01813083          	ld	ra,24(sp)
    80003ff8:	01013403          	ld	s0,16(sp)
    80003ffc:	00813483          	ld	s1,8(sp)
    80004000:	00200513          	li	a0,2
    80004004:	02010113          	addi	sp,sp,32
    80004008:	00008067          	ret
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	258080e7          	jalr	600(ra) # 80004264 <plic_claim>
    80004014:	00a00793          	li	a5,10
    80004018:	00050493          	mv	s1,a0
    8000401c:	06f50663          	beq	a0,a5,80004088 <devintr+0x100>
    80004020:	00100513          	li	a0,1
    80004024:	fa0482e3          	beqz	s1,80003fc8 <devintr+0x40>
    80004028:	00048593          	mv	a1,s1
    8000402c:	00002517          	auipc	a0,0x2
    80004030:	1d450513          	addi	a0,a0,468 # 80006200 <CONSOLE_STATUS+0x1f0>
    80004034:	00000097          	auipc	ra,0x0
    80004038:	674080e7          	jalr	1652(ra) # 800046a8 <__printf>
    8000403c:	00048513          	mv	a0,s1
    80004040:	00000097          	auipc	ra,0x0
    80004044:	25c080e7          	jalr	604(ra) # 8000429c <plic_complete>
    80004048:	00100513          	li	a0,1
    8000404c:	f7dff06f          	j	80003fc8 <devintr+0x40>
    80004050:	00004517          	auipc	a0,0x4
    80004054:	1a050513          	addi	a0,a0,416 # 800081f0 <tickslock>
    80004058:	00001097          	auipc	ra,0x1
    8000405c:	324080e7          	jalr	804(ra) # 8000537c <acquire>
    80004060:	00003717          	auipc	a4,0x3
    80004064:	06470713          	addi	a4,a4,100 # 800070c4 <ticks>
    80004068:	00072783          	lw	a5,0(a4)
    8000406c:	00004517          	auipc	a0,0x4
    80004070:	18450513          	addi	a0,a0,388 # 800081f0 <tickslock>
    80004074:	0017879b          	addiw	a5,a5,1
    80004078:	00f72023          	sw	a5,0(a4)
    8000407c:	00001097          	auipc	ra,0x1
    80004080:	3cc080e7          	jalr	972(ra) # 80005448 <release>
    80004084:	f65ff06f          	j	80003fe8 <devintr+0x60>
    80004088:	00001097          	auipc	ra,0x1
    8000408c:	f28080e7          	jalr	-216(ra) # 80004fb0 <uartintr>
    80004090:	fadff06f          	j	8000403c <devintr+0xb4>
	...

00000000800040a0 <kernelvec>:
    800040a0:	f0010113          	addi	sp,sp,-256
    800040a4:	00113023          	sd	ra,0(sp)
    800040a8:	00213423          	sd	sp,8(sp)
    800040ac:	00313823          	sd	gp,16(sp)
    800040b0:	00413c23          	sd	tp,24(sp)
    800040b4:	02513023          	sd	t0,32(sp)
    800040b8:	02613423          	sd	t1,40(sp)
    800040bc:	02713823          	sd	t2,48(sp)
    800040c0:	02813c23          	sd	s0,56(sp)
    800040c4:	04913023          	sd	s1,64(sp)
    800040c8:	04a13423          	sd	a0,72(sp)
    800040cc:	04b13823          	sd	a1,80(sp)
    800040d0:	04c13c23          	sd	a2,88(sp)
    800040d4:	06d13023          	sd	a3,96(sp)
    800040d8:	06e13423          	sd	a4,104(sp)
    800040dc:	06f13823          	sd	a5,112(sp)
    800040e0:	07013c23          	sd	a6,120(sp)
    800040e4:	09113023          	sd	a7,128(sp)
    800040e8:	09213423          	sd	s2,136(sp)
    800040ec:	09313823          	sd	s3,144(sp)
    800040f0:	09413c23          	sd	s4,152(sp)
    800040f4:	0b513023          	sd	s5,160(sp)
    800040f8:	0b613423          	sd	s6,168(sp)
    800040fc:	0b713823          	sd	s7,176(sp)
    80004100:	0b813c23          	sd	s8,184(sp)
    80004104:	0d913023          	sd	s9,192(sp)
    80004108:	0da13423          	sd	s10,200(sp)
    8000410c:	0db13823          	sd	s11,208(sp)
    80004110:	0dc13c23          	sd	t3,216(sp)
    80004114:	0fd13023          	sd	t4,224(sp)
    80004118:	0fe13423          	sd	t5,232(sp)
    8000411c:	0ff13823          	sd	t6,240(sp)
    80004120:	cc9ff0ef          	jal	ra,80003de8 <kerneltrap>
    80004124:	00013083          	ld	ra,0(sp)
    80004128:	00813103          	ld	sp,8(sp)
    8000412c:	01013183          	ld	gp,16(sp)
    80004130:	02013283          	ld	t0,32(sp)
    80004134:	02813303          	ld	t1,40(sp)
    80004138:	03013383          	ld	t2,48(sp)
    8000413c:	03813403          	ld	s0,56(sp)
    80004140:	04013483          	ld	s1,64(sp)
    80004144:	04813503          	ld	a0,72(sp)
    80004148:	05013583          	ld	a1,80(sp)
    8000414c:	05813603          	ld	a2,88(sp)
    80004150:	06013683          	ld	a3,96(sp)
    80004154:	06813703          	ld	a4,104(sp)
    80004158:	07013783          	ld	a5,112(sp)
    8000415c:	07813803          	ld	a6,120(sp)
    80004160:	08013883          	ld	a7,128(sp)
    80004164:	08813903          	ld	s2,136(sp)
    80004168:	09013983          	ld	s3,144(sp)
    8000416c:	09813a03          	ld	s4,152(sp)
    80004170:	0a013a83          	ld	s5,160(sp)
    80004174:	0a813b03          	ld	s6,168(sp)
    80004178:	0b013b83          	ld	s7,176(sp)
    8000417c:	0b813c03          	ld	s8,184(sp)
    80004180:	0c013c83          	ld	s9,192(sp)
    80004184:	0c813d03          	ld	s10,200(sp)
    80004188:	0d013d83          	ld	s11,208(sp)
    8000418c:	0d813e03          	ld	t3,216(sp)
    80004190:	0e013e83          	ld	t4,224(sp)
    80004194:	0e813f03          	ld	t5,232(sp)
    80004198:	0f013f83          	ld	t6,240(sp)
    8000419c:	10010113          	addi	sp,sp,256
    800041a0:	10200073          	sret
    800041a4:	00000013          	nop
    800041a8:	00000013          	nop
    800041ac:	00000013          	nop

00000000800041b0 <timervec>:
    800041b0:	34051573          	csrrw	a0,mscratch,a0
    800041b4:	00b53023          	sd	a1,0(a0)
    800041b8:	00c53423          	sd	a2,8(a0)
    800041bc:	00d53823          	sd	a3,16(a0)
    800041c0:	01853583          	ld	a1,24(a0)
    800041c4:	02053603          	ld	a2,32(a0)
    800041c8:	0005b683          	ld	a3,0(a1)
    800041cc:	00c686b3          	add	a3,a3,a2
    800041d0:	00d5b023          	sd	a3,0(a1)
    800041d4:	00200593          	li	a1,2
    800041d8:	14459073          	csrw	sip,a1
    800041dc:	01053683          	ld	a3,16(a0)
    800041e0:	00853603          	ld	a2,8(a0)
    800041e4:	00053583          	ld	a1,0(a0)
    800041e8:	34051573          	csrrw	a0,mscratch,a0
    800041ec:	30200073          	mret

00000000800041f0 <plicinit>:
    800041f0:	ff010113          	addi	sp,sp,-16
    800041f4:	00813423          	sd	s0,8(sp)
    800041f8:	01010413          	addi	s0,sp,16
    800041fc:	00813403          	ld	s0,8(sp)
    80004200:	0c0007b7          	lui	a5,0xc000
    80004204:	00100713          	li	a4,1
    80004208:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000420c:	00e7a223          	sw	a4,4(a5)
    80004210:	01010113          	addi	sp,sp,16
    80004214:	00008067          	ret

0000000080004218 <plicinithart>:
    80004218:	ff010113          	addi	sp,sp,-16
    8000421c:	00813023          	sd	s0,0(sp)
    80004220:	00113423          	sd	ra,8(sp)
    80004224:	01010413          	addi	s0,sp,16
    80004228:	00000097          	auipc	ra,0x0
    8000422c:	a40080e7          	jalr	-1472(ra) # 80003c68 <cpuid>
    80004230:	0085171b          	slliw	a4,a0,0x8
    80004234:	0c0027b7          	lui	a5,0xc002
    80004238:	00e787b3          	add	a5,a5,a4
    8000423c:	40200713          	li	a4,1026
    80004240:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004244:	00813083          	ld	ra,8(sp)
    80004248:	00013403          	ld	s0,0(sp)
    8000424c:	00d5151b          	slliw	a0,a0,0xd
    80004250:	0c2017b7          	lui	a5,0xc201
    80004254:	00a78533          	add	a0,a5,a0
    80004258:	00052023          	sw	zero,0(a0)
    8000425c:	01010113          	addi	sp,sp,16
    80004260:	00008067          	ret

0000000080004264 <plic_claim>:
    80004264:	ff010113          	addi	sp,sp,-16
    80004268:	00813023          	sd	s0,0(sp)
    8000426c:	00113423          	sd	ra,8(sp)
    80004270:	01010413          	addi	s0,sp,16
    80004274:	00000097          	auipc	ra,0x0
    80004278:	9f4080e7          	jalr	-1548(ra) # 80003c68 <cpuid>
    8000427c:	00813083          	ld	ra,8(sp)
    80004280:	00013403          	ld	s0,0(sp)
    80004284:	00d5151b          	slliw	a0,a0,0xd
    80004288:	0c2017b7          	lui	a5,0xc201
    8000428c:	00a78533          	add	a0,a5,a0
    80004290:	00452503          	lw	a0,4(a0)
    80004294:	01010113          	addi	sp,sp,16
    80004298:	00008067          	ret

000000008000429c <plic_complete>:
    8000429c:	fe010113          	addi	sp,sp,-32
    800042a0:	00813823          	sd	s0,16(sp)
    800042a4:	00913423          	sd	s1,8(sp)
    800042a8:	00113c23          	sd	ra,24(sp)
    800042ac:	02010413          	addi	s0,sp,32
    800042b0:	00050493          	mv	s1,a0
    800042b4:	00000097          	auipc	ra,0x0
    800042b8:	9b4080e7          	jalr	-1612(ra) # 80003c68 <cpuid>
    800042bc:	01813083          	ld	ra,24(sp)
    800042c0:	01013403          	ld	s0,16(sp)
    800042c4:	00d5179b          	slliw	a5,a0,0xd
    800042c8:	0c201737          	lui	a4,0xc201
    800042cc:	00f707b3          	add	a5,a4,a5
    800042d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800042d4:	00813483          	ld	s1,8(sp)
    800042d8:	02010113          	addi	sp,sp,32
    800042dc:	00008067          	ret

00000000800042e0 <consolewrite>:
    800042e0:	fb010113          	addi	sp,sp,-80
    800042e4:	04813023          	sd	s0,64(sp)
    800042e8:	04113423          	sd	ra,72(sp)
    800042ec:	02913c23          	sd	s1,56(sp)
    800042f0:	03213823          	sd	s2,48(sp)
    800042f4:	03313423          	sd	s3,40(sp)
    800042f8:	03413023          	sd	s4,32(sp)
    800042fc:	01513c23          	sd	s5,24(sp)
    80004300:	05010413          	addi	s0,sp,80
    80004304:	06c05c63          	blez	a2,8000437c <consolewrite+0x9c>
    80004308:	00060993          	mv	s3,a2
    8000430c:	00050a13          	mv	s4,a0
    80004310:	00058493          	mv	s1,a1
    80004314:	00000913          	li	s2,0
    80004318:	fff00a93          	li	s5,-1
    8000431c:	01c0006f          	j	80004338 <consolewrite+0x58>
    80004320:	fbf44503          	lbu	a0,-65(s0)
    80004324:	0019091b          	addiw	s2,s2,1
    80004328:	00148493          	addi	s1,s1,1
    8000432c:	00001097          	auipc	ra,0x1
    80004330:	a9c080e7          	jalr	-1380(ra) # 80004dc8 <uartputc>
    80004334:	03298063          	beq	s3,s2,80004354 <consolewrite+0x74>
    80004338:	00048613          	mv	a2,s1
    8000433c:	00100693          	li	a3,1
    80004340:	000a0593          	mv	a1,s4
    80004344:	fbf40513          	addi	a0,s0,-65
    80004348:	00000097          	auipc	ra,0x0
    8000434c:	9d8080e7          	jalr	-1576(ra) # 80003d20 <either_copyin>
    80004350:	fd5518e3          	bne	a0,s5,80004320 <consolewrite+0x40>
    80004354:	04813083          	ld	ra,72(sp)
    80004358:	04013403          	ld	s0,64(sp)
    8000435c:	03813483          	ld	s1,56(sp)
    80004360:	02813983          	ld	s3,40(sp)
    80004364:	02013a03          	ld	s4,32(sp)
    80004368:	01813a83          	ld	s5,24(sp)
    8000436c:	00090513          	mv	a0,s2
    80004370:	03013903          	ld	s2,48(sp)
    80004374:	05010113          	addi	sp,sp,80
    80004378:	00008067          	ret
    8000437c:	00000913          	li	s2,0
    80004380:	fd5ff06f          	j	80004354 <consolewrite+0x74>

0000000080004384 <consoleread>:
    80004384:	f9010113          	addi	sp,sp,-112
    80004388:	06813023          	sd	s0,96(sp)
    8000438c:	04913c23          	sd	s1,88(sp)
    80004390:	05213823          	sd	s2,80(sp)
    80004394:	05313423          	sd	s3,72(sp)
    80004398:	05413023          	sd	s4,64(sp)
    8000439c:	03513c23          	sd	s5,56(sp)
    800043a0:	03613823          	sd	s6,48(sp)
    800043a4:	03713423          	sd	s7,40(sp)
    800043a8:	03813023          	sd	s8,32(sp)
    800043ac:	06113423          	sd	ra,104(sp)
    800043b0:	01913c23          	sd	s9,24(sp)
    800043b4:	07010413          	addi	s0,sp,112
    800043b8:	00060b93          	mv	s7,a2
    800043bc:	00050913          	mv	s2,a0
    800043c0:	00058c13          	mv	s8,a1
    800043c4:	00060b1b          	sext.w	s6,a2
    800043c8:	00004497          	auipc	s1,0x4
    800043cc:	e5048493          	addi	s1,s1,-432 # 80008218 <cons>
    800043d0:	00400993          	li	s3,4
    800043d4:	fff00a13          	li	s4,-1
    800043d8:	00a00a93          	li	s5,10
    800043dc:	05705e63          	blez	s7,80004438 <consoleread+0xb4>
    800043e0:	09c4a703          	lw	a4,156(s1)
    800043e4:	0984a783          	lw	a5,152(s1)
    800043e8:	0007071b          	sext.w	a4,a4
    800043ec:	08e78463          	beq	a5,a4,80004474 <consoleread+0xf0>
    800043f0:	07f7f713          	andi	a4,a5,127
    800043f4:	00e48733          	add	a4,s1,a4
    800043f8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800043fc:	0017869b          	addiw	a3,a5,1
    80004400:	08d4ac23          	sw	a3,152(s1)
    80004404:	00070c9b          	sext.w	s9,a4
    80004408:	0b370663          	beq	a4,s3,800044b4 <consoleread+0x130>
    8000440c:	00100693          	li	a3,1
    80004410:	f9f40613          	addi	a2,s0,-97
    80004414:	000c0593          	mv	a1,s8
    80004418:	00090513          	mv	a0,s2
    8000441c:	f8e40fa3          	sb	a4,-97(s0)
    80004420:	00000097          	auipc	ra,0x0
    80004424:	8b4080e7          	jalr	-1868(ra) # 80003cd4 <either_copyout>
    80004428:	01450863          	beq	a0,s4,80004438 <consoleread+0xb4>
    8000442c:	001c0c13          	addi	s8,s8,1
    80004430:	fffb8b9b          	addiw	s7,s7,-1
    80004434:	fb5c94e3          	bne	s9,s5,800043dc <consoleread+0x58>
    80004438:	000b851b          	sext.w	a0,s7
    8000443c:	06813083          	ld	ra,104(sp)
    80004440:	06013403          	ld	s0,96(sp)
    80004444:	05813483          	ld	s1,88(sp)
    80004448:	05013903          	ld	s2,80(sp)
    8000444c:	04813983          	ld	s3,72(sp)
    80004450:	04013a03          	ld	s4,64(sp)
    80004454:	03813a83          	ld	s5,56(sp)
    80004458:	02813b83          	ld	s7,40(sp)
    8000445c:	02013c03          	ld	s8,32(sp)
    80004460:	01813c83          	ld	s9,24(sp)
    80004464:	40ab053b          	subw	a0,s6,a0
    80004468:	03013b03          	ld	s6,48(sp)
    8000446c:	07010113          	addi	sp,sp,112
    80004470:	00008067          	ret
    80004474:	00001097          	auipc	ra,0x1
    80004478:	1d8080e7          	jalr	472(ra) # 8000564c <push_on>
    8000447c:	0984a703          	lw	a4,152(s1)
    80004480:	09c4a783          	lw	a5,156(s1)
    80004484:	0007879b          	sext.w	a5,a5
    80004488:	fef70ce3          	beq	a4,a5,80004480 <consoleread+0xfc>
    8000448c:	00001097          	auipc	ra,0x1
    80004490:	234080e7          	jalr	564(ra) # 800056c0 <pop_on>
    80004494:	0984a783          	lw	a5,152(s1)
    80004498:	07f7f713          	andi	a4,a5,127
    8000449c:	00e48733          	add	a4,s1,a4
    800044a0:	01874703          	lbu	a4,24(a4)
    800044a4:	0017869b          	addiw	a3,a5,1
    800044a8:	08d4ac23          	sw	a3,152(s1)
    800044ac:	00070c9b          	sext.w	s9,a4
    800044b0:	f5371ee3          	bne	a4,s3,8000440c <consoleread+0x88>
    800044b4:	000b851b          	sext.w	a0,s7
    800044b8:	f96bf2e3          	bgeu	s7,s6,8000443c <consoleread+0xb8>
    800044bc:	08f4ac23          	sw	a5,152(s1)
    800044c0:	f7dff06f          	j	8000443c <consoleread+0xb8>

00000000800044c4 <consputc>:
    800044c4:	10000793          	li	a5,256
    800044c8:	00f50663          	beq	a0,a5,800044d4 <consputc+0x10>
    800044cc:	00001317          	auipc	t1,0x1
    800044d0:	9f430067          	jr	-1548(t1) # 80004ec0 <uartputc_sync>
    800044d4:	ff010113          	addi	sp,sp,-16
    800044d8:	00113423          	sd	ra,8(sp)
    800044dc:	00813023          	sd	s0,0(sp)
    800044e0:	01010413          	addi	s0,sp,16
    800044e4:	00800513          	li	a0,8
    800044e8:	00001097          	auipc	ra,0x1
    800044ec:	9d8080e7          	jalr	-1576(ra) # 80004ec0 <uartputc_sync>
    800044f0:	02000513          	li	a0,32
    800044f4:	00001097          	auipc	ra,0x1
    800044f8:	9cc080e7          	jalr	-1588(ra) # 80004ec0 <uartputc_sync>
    800044fc:	00013403          	ld	s0,0(sp)
    80004500:	00813083          	ld	ra,8(sp)
    80004504:	00800513          	li	a0,8
    80004508:	01010113          	addi	sp,sp,16
    8000450c:	00001317          	auipc	t1,0x1
    80004510:	9b430067          	jr	-1612(t1) # 80004ec0 <uartputc_sync>

0000000080004514 <consoleintr>:
    80004514:	fe010113          	addi	sp,sp,-32
    80004518:	00813823          	sd	s0,16(sp)
    8000451c:	00913423          	sd	s1,8(sp)
    80004520:	01213023          	sd	s2,0(sp)
    80004524:	00113c23          	sd	ra,24(sp)
    80004528:	02010413          	addi	s0,sp,32
    8000452c:	00004917          	auipc	s2,0x4
    80004530:	cec90913          	addi	s2,s2,-788 # 80008218 <cons>
    80004534:	00050493          	mv	s1,a0
    80004538:	00090513          	mv	a0,s2
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	e40080e7          	jalr	-448(ra) # 8000537c <acquire>
    80004544:	02048c63          	beqz	s1,8000457c <consoleintr+0x68>
    80004548:	0a092783          	lw	a5,160(s2)
    8000454c:	09892703          	lw	a4,152(s2)
    80004550:	07f00693          	li	a3,127
    80004554:	40e7873b          	subw	a4,a5,a4
    80004558:	02e6e263          	bltu	a3,a4,8000457c <consoleintr+0x68>
    8000455c:	00d00713          	li	a4,13
    80004560:	04e48063          	beq	s1,a4,800045a0 <consoleintr+0x8c>
    80004564:	07f7f713          	andi	a4,a5,127
    80004568:	00e90733          	add	a4,s2,a4
    8000456c:	0017879b          	addiw	a5,a5,1
    80004570:	0af92023          	sw	a5,160(s2)
    80004574:	00970c23          	sb	s1,24(a4)
    80004578:	08f92e23          	sw	a5,156(s2)
    8000457c:	01013403          	ld	s0,16(sp)
    80004580:	01813083          	ld	ra,24(sp)
    80004584:	00813483          	ld	s1,8(sp)
    80004588:	00013903          	ld	s2,0(sp)
    8000458c:	00004517          	auipc	a0,0x4
    80004590:	c8c50513          	addi	a0,a0,-884 # 80008218 <cons>
    80004594:	02010113          	addi	sp,sp,32
    80004598:	00001317          	auipc	t1,0x1
    8000459c:	eb030067          	jr	-336(t1) # 80005448 <release>
    800045a0:	00a00493          	li	s1,10
    800045a4:	fc1ff06f          	j	80004564 <consoleintr+0x50>

00000000800045a8 <consoleinit>:
    800045a8:	fe010113          	addi	sp,sp,-32
    800045ac:	00113c23          	sd	ra,24(sp)
    800045b0:	00813823          	sd	s0,16(sp)
    800045b4:	00913423          	sd	s1,8(sp)
    800045b8:	02010413          	addi	s0,sp,32
    800045bc:	00004497          	auipc	s1,0x4
    800045c0:	c5c48493          	addi	s1,s1,-932 # 80008218 <cons>
    800045c4:	00048513          	mv	a0,s1
    800045c8:	00002597          	auipc	a1,0x2
    800045cc:	c9058593          	addi	a1,a1,-880 # 80006258 <CONSOLE_STATUS+0x248>
    800045d0:	00001097          	auipc	ra,0x1
    800045d4:	d88080e7          	jalr	-632(ra) # 80005358 <initlock>
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	7ac080e7          	jalr	1964(ra) # 80004d84 <uartinit>
    800045e0:	01813083          	ld	ra,24(sp)
    800045e4:	01013403          	ld	s0,16(sp)
    800045e8:	00000797          	auipc	a5,0x0
    800045ec:	d9c78793          	addi	a5,a5,-612 # 80004384 <consoleread>
    800045f0:	0af4bc23          	sd	a5,184(s1)
    800045f4:	00000797          	auipc	a5,0x0
    800045f8:	cec78793          	addi	a5,a5,-788 # 800042e0 <consolewrite>
    800045fc:	0cf4b023          	sd	a5,192(s1)
    80004600:	00813483          	ld	s1,8(sp)
    80004604:	02010113          	addi	sp,sp,32
    80004608:	00008067          	ret

000000008000460c <console_read>:
    8000460c:	ff010113          	addi	sp,sp,-16
    80004610:	00813423          	sd	s0,8(sp)
    80004614:	01010413          	addi	s0,sp,16
    80004618:	00813403          	ld	s0,8(sp)
    8000461c:	00004317          	auipc	t1,0x4
    80004620:	cb433303          	ld	t1,-844(t1) # 800082d0 <devsw+0x10>
    80004624:	01010113          	addi	sp,sp,16
    80004628:	00030067          	jr	t1

000000008000462c <console_write>:
    8000462c:	ff010113          	addi	sp,sp,-16
    80004630:	00813423          	sd	s0,8(sp)
    80004634:	01010413          	addi	s0,sp,16
    80004638:	00813403          	ld	s0,8(sp)
    8000463c:	00004317          	auipc	t1,0x4
    80004640:	c9c33303          	ld	t1,-868(t1) # 800082d8 <devsw+0x18>
    80004644:	01010113          	addi	sp,sp,16
    80004648:	00030067          	jr	t1

000000008000464c <panic>:
    8000464c:	fe010113          	addi	sp,sp,-32
    80004650:	00113c23          	sd	ra,24(sp)
    80004654:	00813823          	sd	s0,16(sp)
    80004658:	00913423          	sd	s1,8(sp)
    8000465c:	02010413          	addi	s0,sp,32
    80004660:	00050493          	mv	s1,a0
    80004664:	00002517          	auipc	a0,0x2
    80004668:	bfc50513          	addi	a0,a0,-1028 # 80006260 <CONSOLE_STATUS+0x250>
    8000466c:	00004797          	auipc	a5,0x4
    80004670:	d007a623          	sw	zero,-756(a5) # 80008378 <pr+0x18>
    80004674:	00000097          	auipc	ra,0x0
    80004678:	034080e7          	jalr	52(ra) # 800046a8 <__printf>
    8000467c:	00048513          	mv	a0,s1
    80004680:	00000097          	auipc	ra,0x0
    80004684:	028080e7          	jalr	40(ra) # 800046a8 <__printf>
    80004688:	00002517          	auipc	a0,0x2
    8000468c:	bb850513          	addi	a0,a0,-1096 # 80006240 <CONSOLE_STATUS+0x230>
    80004690:	00000097          	auipc	ra,0x0
    80004694:	018080e7          	jalr	24(ra) # 800046a8 <__printf>
    80004698:	00100793          	li	a5,1
    8000469c:	00003717          	auipc	a4,0x3
    800046a0:	a2f72623          	sw	a5,-1492(a4) # 800070c8 <panicked>
    800046a4:	0000006f          	j	800046a4 <panic+0x58>

00000000800046a8 <__printf>:
    800046a8:	f3010113          	addi	sp,sp,-208
    800046ac:	08813023          	sd	s0,128(sp)
    800046b0:	07313423          	sd	s3,104(sp)
    800046b4:	09010413          	addi	s0,sp,144
    800046b8:	05813023          	sd	s8,64(sp)
    800046bc:	08113423          	sd	ra,136(sp)
    800046c0:	06913c23          	sd	s1,120(sp)
    800046c4:	07213823          	sd	s2,112(sp)
    800046c8:	07413023          	sd	s4,96(sp)
    800046cc:	05513c23          	sd	s5,88(sp)
    800046d0:	05613823          	sd	s6,80(sp)
    800046d4:	05713423          	sd	s7,72(sp)
    800046d8:	03913c23          	sd	s9,56(sp)
    800046dc:	03a13823          	sd	s10,48(sp)
    800046e0:	03b13423          	sd	s11,40(sp)
    800046e4:	00004317          	auipc	t1,0x4
    800046e8:	c7c30313          	addi	t1,t1,-900 # 80008360 <pr>
    800046ec:	01832c03          	lw	s8,24(t1)
    800046f0:	00b43423          	sd	a1,8(s0)
    800046f4:	00c43823          	sd	a2,16(s0)
    800046f8:	00d43c23          	sd	a3,24(s0)
    800046fc:	02e43023          	sd	a4,32(s0)
    80004700:	02f43423          	sd	a5,40(s0)
    80004704:	03043823          	sd	a6,48(s0)
    80004708:	03143c23          	sd	a7,56(s0)
    8000470c:	00050993          	mv	s3,a0
    80004710:	4a0c1663          	bnez	s8,80004bbc <__printf+0x514>
    80004714:	60098c63          	beqz	s3,80004d2c <__printf+0x684>
    80004718:	0009c503          	lbu	a0,0(s3)
    8000471c:	00840793          	addi	a5,s0,8
    80004720:	f6f43c23          	sd	a5,-136(s0)
    80004724:	00000493          	li	s1,0
    80004728:	22050063          	beqz	a0,80004948 <__printf+0x2a0>
    8000472c:	00002a37          	lui	s4,0x2
    80004730:	00018ab7          	lui	s5,0x18
    80004734:	000f4b37          	lui	s6,0xf4
    80004738:	00989bb7          	lui	s7,0x989
    8000473c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004740:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004744:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004748:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000474c:	00148c9b          	addiw	s9,s1,1
    80004750:	02500793          	li	a5,37
    80004754:	01998933          	add	s2,s3,s9
    80004758:	38f51263          	bne	a0,a5,80004adc <__printf+0x434>
    8000475c:	00094783          	lbu	a5,0(s2)
    80004760:	00078c9b          	sext.w	s9,a5
    80004764:	1e078263          	beqz	a5,80004948 <__printf+0x2a0>
    80004768:	0024849b          	addiw	s1,s1,2
    8000476c:	07000713          	li	a4,112
    80004770:	00998933          	add	s2,s3,s1
    80004774:	38e78a63          	beq	a5,a4,80004b08 <__printf+0x460>
    80004778:	20f76863          	bltu	a4,a5,80004988 <__printf+0x2e0>
    8000477c:	42a78863          	beq	a5,a0,80004bac <__printf+0x504>
    80004780:	06400713          	li	a4,100
    80004784:	40e79663          	bne	a5,a4,80004b90 <__printf+0x4e8>
    80004788:	f7843783          	ld	a5,-136(s0)
    8000478c:	0007a603          	lw	a2,0(a5)
    80004790:	00878793          	addi	a5,a5,8
    80004794:	f6f43c23          	sd	a5,-136(s0)
    80004798:	42064a63          	bltz	a2,80004bcc <__printf+0x524>
    8000479c:	00a00713          	li	a4,10
    800047a0:	02e677bb          	remuw	a5,a2,a4
    800047a4:	00002d97          	auipc	s11,0x2
    800047a8:	ae4d8d93          	addi	s11,s11,-1308 # 80006288 <digits>
    800047ac:	00900593          	li	a1,9
    800047b0:	0006051b          	sext.w	a0,a2
    800047b4:	00000c93          	li	s9,0
    800047b8:	02079793          	slli	a5,a5,0x20
    800047bc:	0207d793          	srli	a5,a5,0x20
    800047c0:	00fd87b3          	add	a5,s11,a5
    800047c4:	0007c783          	lbu	a5,0(a5)
    800047c8:	02e656bb          	divuw	a3,a2,a4
    800047cc:	f8f40023          	sb	a5,-128(s0)
    800047d0:	14c5d863          	bge	a1,a2,80004920 <__printf+0x278>
    800047d4:	06300593          	li	a1,99
    800047d8:	00100c93          	li	s9,1
    800047dc:	02e6f7bb          	remuw	a5,a3,a4
    800047e0:	02079793          	slli	a5,a5,0x20
    800047e4:	0207d793          	srli	a5,a5,0x20
    800047e8:	00fd87b3          	add	a5,s11,a5
    800047ec:	0007c783          	lbu	a5,0(a5)
    800047f0:	02e6d73b          	divuw	a4,a3,a4
    800047f4:	f8f400a3          	sb	a5,-127(s0)
    800047f8:	12a5f463          	bgeu	a1,a0,80004920 <__printf+0x278>
    800047fc:	00a00693          	li	a3,10
    80004800:	00900593          	li	a1,9
    80004804:	02d777bb          	remuw	a5,a4,a3
    80004808:	02079793          	slli	a5,a5,0x20
    8000480c:	0207d793          	srli	a5,a5,0x20
    80004810:	00fd87b3          	add	a5,s11,a5
    80004814:	0007c503          	lbu	a0,0(a5)
    80004818:	02d757bb          	divuw	a5,a4,a3
    8000481c:	f8a40123          	sb	a0,-126(s0)
    80004820:	48e5f263          	bgeu	a1,a4,80004ca4 <__printf+0x5fc>
    80004824:	06300513          	li	a0,99
    80004828:	02d7f5bb          	remuw	a1,a5,a3
    8000482c:	02059593          	slli	a1,a1,0x20
    80004830:	0205d593          	srli	a1,a1,0x20
    80004834:	00bd85b3          	add	a1,s11,a1
    80004838:	0005c583          	lbu	a1,0(a1)
    8000483c:	02d7d7bb          	divuw	a5,a5,a3
    80004840:	f8b401a3          	sb	a1,-125(s0)
    80004844:	48e57263          	bgeu	a0,a4,80004cc8 <__printf+0x620>
    80004848:	3e700513          	li	a0,999
    8000484c:	02d7f5bb          	remuw	a1,a5,a3
    80004850:	02059593          	slli	a1,a1,0x20
    80004854:	0205d593          	srli	a1,a1,0x20
    80004858:	00bd85b3          	add	a1,s11,a1
    8000485c:	0005c583          	lbu	a1,0(a1)
    80004860:	02d7d7bb          	divuw	a5,a5,a3
    80004864:	f8b40223          	sb	a1,-124(s0)
    80004868:	46e57663          	bgeu	a0,a4,80004cd4 <__printf+0x62c>
    8000486c:	02d7f5bb          	remuw	a1,a5,a3
    80004870:	02059593          	slli	a1,a1,0x20
    80004874:	0205d593          	srli	a1,a1,0x20
    80004878:	00bd85b3          	add	a1,s11,a1
    8000487c:	0005c583          	lbu	a1,0(a1)
    80004880:	02d7d7bb          	divuw	a5,a5,a3
    80004884:	f8b402a3          	sb	a1,-123(s0)
    80004888:	46ea7863          	bgeu	s4,a4,80004cf8 <__printf+0x650>
    8000488c:	02d7f5bb          	remuw	a1,a5,a3
    80004890:	02059593          	slli	a1,a1,0x20
    80004894:	0205d593          	srli	a1,a1,0x20
    80004898:	00bd85b3          	add	a1,s11,a1
    8000489c:	0005c583          	lbu	a1,0(a1)
    800048a0:	02d7d7bb          	divuw	a5,a5,a3
    800048a4:	f8b40323          	sb	a1,-122(s0)
    800048a8:	3eeaf863          	bgeu	s5,a4,80004c98 <__printf+0x5f0>
    800048ac:	02d7f5bb          	remuw	a1,a5,a3
    800048b0:	02059593          	slli	a1,a1,0x20
    800048b4:	0205d593          	srli	a1,a1,0x20
    800048b8:	00bd85b3          	add	a1,s11,a1
    800048bc:	0005c583          	lbu	a1,0(a1)
    800048c0:	02d7d7bb          	divuw	a5,a5,a3
    800048c4:	f8b403a3          	sb	a1,-121(s0)
    800048c8:	42eb7e63          	bgeu	s6,a4,80004d04 <__printf+0x65c>
    800048cc:	02d7f5bb          	remuw	a1,a5,a3
    800048d0:	02059593          	slli	a1,a1,0x20
    800048d4:	0205d593          	srli	a1,a1,0x20
    800048d8:	00bd85b3          	add	a1,s11,a1
    800048dc:	0005c583          	lbu	a1,0(a1)
    800048e0:	02d7d7bb          	divuw	a5,a5,a3
    800048e4:	f8b40423          	sb	a1,-120(s0)
    800048e8:	42ebfc63          	bgeu	s7,a4,80004d20 <__printf+0x678>
    800048ec:	02079793          	slli	a5,a5,0x20
    800048f0:	0207d793          	srli	a5,a5,0x20
    800048f4:	00fd8db3          	add	s11,s11,a5
    800048f8:	000dc703          	lbu	a4,0(s11)
    800048fc:	00a00793          	li	a5,10
    80004900:	00900c93          	li	s9,9
    80004904:	f8e404a3          	sb	a4,-119(s0)
    80004908:	00065c63          	bgez	a2,80004920 <__printf+0x278>
    8000490c:	f9040713          	addi	a4,s0,-112
    80004910:	00f70733          	add	a4,a4,a5
    80004914:	02d00693          	li	a3,45
    80004918:	fed70823          	sb	a3,-16(a4)
    8000491c:	00078c93          	mv	s9,a5
    80004920:	f8040793          	addi	a5,s0,-128
    80004924:	01978cb3          	add	s9,a5,s9
    80004928:	f7f40d13          	addi	s10,s0,-129
    8000492c:	000cc503          	lbu	a0,0(s9)
    80004930:	fffc8c93          	addi	s9,s9,-1
    80004934:	00000097          	auipc	ra,0x0
    80004938:	b90080e7          	jalr	-1136(ra) # 800044c4 <consputc>
    8000493c:	ffac98e3          	bne	s9,s10,8000492c <__printf+0x284>
    80004940:	00094503          	lbu	a0,0(s2)
    80004944:	e00514e3          	bnez	a0,8000474c <__printf+0xa4>
    80004948:	1a0c1663          	bnez	s8,80004af4 <__printf+0x44c>
    8000494c:	08813083          	ld	ra,136(sp)
    80004950:	08013403          	ld	s0,128(sp)
    80004954:	07813483          	ld	s1,120(sp)
    80004958:	07013903          	ld	s2,112(sp)
    8000495c:	06813983          	ld	s3,104(sp)
    80004960:	06013a03          	ld	s4,96(sp)
    80004964:	05813a83          	ld	s5,88(sp)
    80004968:	05013b03          	ld	s6,80(sp)
    8000496c:	04813b83          	ld	s7,72(sp)
    80004970:	04013c03          	ld	s8,64(sp)
    80004974:	03813c83          	ld	s9,56(sp)
    80004978:	03013d03          	ld	s10,48(sp)
    8000497c:	02813d83          	ld	s11,40(sp)
    80004980:	0d010113          	addi	sp,sp,208
    80004984:	00008067          	ret
    80004988:	07300713          	li	a4,115
    8000498c:	1ce78a63          	beq	a5,a4,80004b60 <__printf+0x4b8>
    80004990:	07800713          	li	a4,120
    80004994:	1ee79e63          	bne	a5,a4,80004b90 <__printf+0x4e8>
    80004998:	f7843783          	ld	a5,-136(s0)
    8000499c:	0007a703          	lw	a4,0(a5)
    800049a0:	00878793          	addi	a5,a5,8
    800049a4:	f6f43c23          	sd	a5,-136(s0)
    800049a8:	28074263          	bltz	a4,80004c2c <__printf+0x584>
    800049ac:	00002d97          	auipc	s11,0x2
    800049b0:	8dcd8d93          	addi	s11,s11,-1828 # 80006288 <digits>
    800049b4:	00f77793          	andi	a5,a4,15
    800049b8:	00fd87b3          	add	a5,s11,a5
    800049bc:	0007c683          	lbu	a3,0(a5)
    800049c0:	00f00613          	li	a2,15
    800049c4:	0007079b          	sext.w	a5,a4
    800049c8:	f8d40023          	sb	a3,-128(s0)
    800049cc:	0047559b          	srliw	a1,a4,0x4
    800049d0:	0047569b          	srliw	a3,a4,0x4
    800049d4:	00000c93          	li	s9,0
    800049d8:	0ee65063          	bge	a2,a4,80004ab8 <__printf+0x410>
    800049dc:	00f6f693          	andi	a3,a3,15
    800049e0:	00dd86b3          	add	a3,s11,a3
    800049e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800049e8:	0087d79b          	srliw	a5,a5,0x8
    800049ec:	00100c93          	li	s9,1
    800049f0:	f8d400a3          	sb	a3,-127(s0)
    800049f4:	0cb67263          	bgeu	a2,a1,80004ab8 <__printf+0x410>
    800049f8:	00f7f693          	andi	a3,a5,15
    800049fc:	00dd86b3          	add	a3,s11,a3
    80004a00:	0006c583          	lbu	a1,0(a3)
    80004a04:	00f00613          	li	a2,15
    80004a08:	0047d69b          	srliw	a3,a5,0x4
    80004a0c:	f8b40123          	sb	a1,-126(s0)
    80004a10:	0047d593          	srli	a1,a5,0x4
    80004a14:	28f67e63          	bgeu	a2,a5,80004cb0 <__printf+0x608>
    80004a18:	00f6f693          	andi	a3,a3,15
    80004a1c:	00dd86b3          	add	a3,s11,a3
    80004a20:	0006c503          	lbu	a0,0(a3)
    80004a24:	0087d813          	srli	a6,a5,0x8
    80004a28:	0087d69b          	srliw	a3,a5,0x8
    80004a2c:	f8a401a3          	sb	a0,-125(s0)
    80004a30:	28b67663          	bgeu	a2,a1,80004cbc <__printf+0x614>
    80004a34:	00f6f693          	andi	a3,a3,15
    80004a38:	00dd86b3          	add	a3,s11,a3
    80004a3c:	0006c583          	lbu	a1,0(a3)
    80004a40:	00c7d513          	srli	a0,a5,0xc
    80004a44:	00c7d69b          	srliw	a3,a5,0xc
    80004a48:	f8b40223          	sb	a1,-124(s0)
    80004a4c:	29067a63          	bgeu	a2,a6,80004ce0 <__printf+0x638>
    80004a50:	00f6f693          	andi	a3,a3,15
    80004a54:	00dd86b3          	add	a3,s11,a3
    80004a58:	0006c583          	lbu	a1,0(a3)
    80004a5c:	0107d813          	srli	a6,a5,0x10
    80004a60:	0107d69b          	srliw	a3,a5,0x10
    80004a64:	f8b402a3          	sb	a1,-123(s0)
    80004a68:	28a67263          	bgeu	a2,a0,80004cec <__printf+0x644>
    80004a6c:	00f6f693          	andi	a3,a3,15
    80004a70:	00dd86b3          	add	a3,s11,a3
    80004a74:	0006c683          	lbu	a3,0(a3)
    80004a78:	0147d79b          	srliw	a5,a5,0x14
    80004a7c:	f8d40323          	sb	a3,-122(s0)
    80004a80:	21067663          	bgeu	a2,a6,80004c8c <__printf+0x5e4>
    80004a84:	02079793          	slli	a5,a5,0x20
    80004a88:	0207d793          	srli	a5,a5,0x20
    80004a8c:	00fd8db3          	add	s11,s11,a5
    80004a90:	000dc683          	lbu	a3,0(s11)
    80004a94:	00800793          	li	a5,8
    80004a98:	00700c93          	li	s9,7
    80004a9c:	f8d403a3          	sb	a3,-121(s0)
    80004aa0:	00075c63          	bgez	a4,80004ab8 <__printf+0x410>
    80004aa4:	f9040713          	addi	a4,s0,-112
    80004aa8:	00f70733          	add	a4,a4,a5
    80004aac:	02d00693          	li	a3,45
    80004ab0:	fed70823          	sb	a3,-16(a4)
    80004ab4:	00078c93          	mv	s9,a5
    80004ab8:	f8040793          	addi	a5,s0,-128
    80004abc:	01978cb3          	add	s9,a5,s9
    80004ac0:	f7f40d13          	addi	s10,s0,-129
    80004ac4:	000cc503          	lbu	a0,0(s9)
    80004ac8:	fffc8c93          	addi	s9,s9,-1
    80004acc:	00000097          	auipc	ra,0x0
    80004ad0:	9f8080e7          	jalr	-1544(ra) # 800044c4 <consputc>
    80004ad4:	ff9d18e3          	bne	s10,s9,80004ac4 <__printf+0x41c>
    80004ad8:	0100006f          	j	80004ae8 <__printf+0x440>
    80004adc:	00000097          	auipc	ra,0x0
    80004ae0:	9e8080e7          	jalr	-1560(ra) # 800044c4 <consputc>
    80004ae4:	000c8493          	mv	s1,s9
    80004ae8:	00094503          	lbu	a0,0(s2)
    80004aec:	c60510e3          	bnez	a0,8000474c <__printf+0xa4>
    80004af0:	e40c0ee3          	beqz	s8,8000494c <__printf+0x2a4>
    80004af4:	00004517          	auipc	a0,0x4
    80004af8:	86c50513          	addi	a0,a0,-1940 # 80008360 <pr>
    80004afc:	00001097          	auipc	ra,0x1
    80004b00:	94c080e7          	jalr	-1716(ra) # 80005448 <release>
    80004b04:	e49ff06f          	j	8000494c <__printf+0x2a4>
    80004b08:	f7843783          	ld	a5,-136(s0)
    80004b0c:	03000513          	li	a0,48
    80004b10:	01000d13          	li	s10,16
    80004b14:	00878713          	addi	a4,a5,8
    80004b18:	0007bc83          	ld	s9,0(a5)
    80004b1c:	f6e43c23          	sd	a4,-136(s0)
    80004b20:	00000097          	auipc	ra,0x0
    80004b24:	9a4080e7          	jalr	-1628(ra) # 800044c4 <consputc>
    80004b28:	07800513          	li	a0,120
    80004b2c:	00000097          	auipc	ra,0x0
    80004b30:	998080e7          	jalr	-1640(ra) # 800044c4 <consputc>
    80004b34:	00001d97          	auipc	s11,0x1
    80004b38:	754d8d93          	addi	s11,s11,1876 # 80006288 <digits>
    80004b3c:	03ccd793          	srli	a5,s9,0x3c
    80004b40:	00fd87b3          	add	a5,s11,a5
    80004b44:	0007c503          	lbu	a0,0(a5)
    80004b48:	fffd0d1b          	addiw	s10,s10,-1
    80004b4c:	004c9c93          	slli	s9,s9,0x4
    80004b50:	00000097          	auipc	ra,0x0
    80004b54:	974080e7          	jalr	-1676(ra) # 800044c4 <consputc>
    80004b58:	fe0d12e3          	bnez	s10,80004b3c <__printf+0x494>
    80004b5c:	f8dff06f          	j	80004ae8 <__printf+0x440>
    80004b60:	f7843783          	ld	a5,-136(s0)
    80004b64:	0007bc83          	ld	s9,0(a5)
    80004b68:	00878793          	addi	a5,a5,8
    80004b6c:	f6f43c23          	sd	a5,-136(s0)
    80004b70:	000c9a63          	bnez	s9,80004b84 <__printf+0x4dc>
    80004b74:	1080006f          	j	80004c7c <__printf+0x5d4>
    80004b78:	001c8c93          	addi	s9,s9,1
    80004b7c:	00000097          	auipc	ra,0x0
    80004b80:	948080e7          	jalr	-1720(ra) # 800044c4 <consputc>
    80004b84:	000cc503          	lbu	a0,0(s9)
    80004b88:	fe0518e3          	bnez	a0,80004b78 <__printf+0x4d0>
    80004b8c:	f5dff06f          	j	80004ae8 <__printf+0x440>
    80004b90:	02500513          	li	a0,37
    80004b94:	00000097          	auipc	ra,0x0
    80004b98:	930080e7          	jalr	-1744(ra) # 800044c4 <consputc>
    80004b9c:	000c8513          	mv	a0,s9
    80004ba0:	00000097          	auipc	ra,0x0
    80004ba4:	924080e7          	jalr	-1756(ra) # 800044c4 <consputc>
    80004ba8:	f41ff06f          	j	80004ae8 <__printf+0x440>
    80004bac:	02500513          	li	a0,37
    80004bb0:	00000097          	auipc	ra,0x0
    80004bb4:	914080e7          	jalr	-1772(ra) # 800044c4 <consputc>
    80004bb8:	f31ff06f          	j	80004ae8 <__printf+0x440>
    80004bbc:	00030513          	mv	a0,t1
    80004bc0:	00000097          	auipc	ra,0x0
    80004bc4:	7bc080e7          	jalr	1980(ra) # 8000537c <acquire>
    80004bc8:	b4dff06f          	j	80004714 <__printf+0x6c>
    80004bcc:	40c0053b          	negw	a0,a2
    80004bd0:	00a00713          	li	a4,10
    80004bd4:	02e576bb          	remuw	a3,a0,a4
    80004bd8:	00001d97          	auipc	s11,0x1
    80004bdc:	6b0d8d93          	addi	s11,s11,1712 # 80006288 <digits>
    80004be0:	ff700593          	li	a1,-9
    80004be4:	02069693          	slli	a3,a3,0x20
    80004be8:	0206d693          	srli	a3,a3,0x20
    80004bec:	00dd86b3          	add	a3,s11,a3
    80004bf0:	0006c683          	lbu	a3,0(a3)
    80004bf4:	02e557bb          	divuw	a5,a0,a4
    80004bf8:	f8d40023          	sb	a3,-128(s0)
    80004bfc:	10b65e63          	bge	a2,a1,80004d18 <__printf+0x670>
    80004c00:	06300593          	li	a1,99
    80004c04:	02e7f6bb          	remuw	a3,a5,a4
    80004c08:	02069693          	slli	a3,a3,0x20
    80004c0c:	0206d693          	srli	a3,a3,0x20
    80004c10:	00dd86b3          	add	a3,s11,a3
    80004c14:	0006c683          	lbu	a3,0(a3)
    80004c18:	02e7d73b          	divuw	a4,a5,a4
    80004c1c:	00200793          	li	a5,2
    80004c20:	f8d400a3          	sb	a3,-127(s0)
    80004c24:	bca5ece3          	bltu	a1,a0,800047fc <__printf+0x154>
    80004c28:	ce5ff06f          	j	8000490c <__printf+0x264>
    80004c2c:	40e007bb          	negw	a5,a4
    80004c30:	00001d97          	auipc	s11,0x1
    80004c34:	658d8d93          	addi	s11,s11,1624 # 80006288 <digits>
    80004c38:	00f7f693          	andi	a3,a5,15
    80004c3c:	00dd86b3          	add	a3,s11,a3
    80004c40:	0006c583          	lbu	a1,0(a3)
    80004c44:	ff100613          	li	a2,-15
    80004c48:	0047d69b          	srliw	a3,a5,0x4
    80004c4c:	f8b40023          	sb	a1,-128(s0)
    80004c50:	0047d59b          	srliw	a1,a5,0x4
    80004c54:	0ac75e63          	bge	a4,a2,80004d10 <__printf+0x668>
    80004c58:	00f6f693          	andi	a3,a3,15
    80004c5c:	00dd86b3          	add	a3,s11,a3
    80004c60:	0006c603          	lbu	a2,0(a3)
    80004c64:	00f00693          	li	a3,15
    80004c68:	0087d79b          	srliw	a5,a5,0x8
    80004c6c:	f8c400a3          	sb	a2,-127(s0)
    80004c70:	d8b6e4e3          	bltu	a3,a1,800049f8 <__printf+0x350>
    80004c74:	00200793          	li	a5,2
    80004c78:	e2dff06f          	j	80004aa4 <__printf+0x3fc>
    80004c7c:	00001c97          	auipc	s9,0x1
    80004c80:	5ecc8c93          	addi	s9,s9,1516 # 80006268 <CONSOLE_STATUS+0x258>
    80004c84:	02800513          	li	a0,40
    80004c88:	ef1ff06f          	j	80004b78 <__printf+0x4d0>
    80004c8c:	00700793          	li	a5,7
    80004c90:	00600c93          	li	s9,6
    80004c94:	e0dff06f          	j	80004aa0 <__printf+0x3f8>
    80004c98:	00700793          	li	a5,7
    80004c9c:	00600c93          	li	s9,6
    80004ca0:	c69ff06f          	j	80004908 <__printf+0x260>
    80004ca4:	00300793          	li	a5,3
    80004ca8:	00200c93          	li	s9,2
    80004cac:	c5dff06f          	j	80004908 <__printf+0x260>
    80004cb0:	00300793          	li	a5,3
    80004cb4:	00200c93          	li	s9,2
    80004cb8:	de9ff06f          	j	80004aa0 <__printf+0x3f8>
    80004cbc:	00400793          	li	a5,4
    80004cc0:	00300c93          	li	s9,3
    80004cc4:	dddff06f          	j	80004aa0 <__printf+0x3f8>
    80004cc8:	00400793          	li	a5,4
    80004ccc:	00300c93          	li	s9,3
    80004cd0:	c39ff06f          	j	80004908 <__printf+0x260>
    80004cd4:	00500793          	li	a5,5
    80004cd8:	00400c93          	li	s9,4
    80004cdc:	c2dff06f          	j	80004908 <__printf+0x260>
    80004ce0:	00500793          	li	a5,5
    80004ce4:	00400c93          	li	s9,4
    80004ce8:	db9ff06f          	j	80004aa0 <__printf+0x3f8>
    80004cec:	00600793          	li	a5,6
    80004cf0:	00500c93          	li	s9,5
    80004cf4:	dadff06f          	j	80004aa0 <__printf+0x3f8>
    80004cf8:	00600793          	li	a5,6
    80004cfc:	00500c93          	li	s9,5
    80004d00:	c09ff06f          	j	80004908 <__printf+0x260>
    80004d04:	00800793          	li	a5,8
    80004d08:	00700c93          	li	s9,7
    80004d0c:	bfdff06f          	j	80004908 <__printf+0x260>
    80004d10:	00100793          	li	a5,1
    80004d14:	d91ff06f          	j	80004aa4 <__printf+0x3fc>
    80004d18:	00100793          	li	a5,1
    80004d1c:	bf1ff06f          	j	8000490c <__printf+0x264>
    80004d20:	00900793          	li	a5,9
    80004d24:	00800c93          	li	s9,8
    80004d28:	be1ff06f          	j	80004908 <__printf+0x260>
    80004d2c:	00001517          	auipc	a0,0x1
    80004d30:	54450513          	addi	a0,a0,1348 # 80006270 <CONSOLE_STATUS+0x260>
    80004d34:	00000097          	auipc	ra,0x0
    80004d38:	918080e7          	jalr	-1768(ra) # 8000464c <panic>

0000000080004d3c <printfinit>:
    80004d3c:	fe010113          	addi	sp,sp,-32
    80004d40:	00813823          	sd	s0,16(sp)
    80004d44:	00913423          	sd	s1,8(sp)
    80004d48:	00113c23          	sd	ra,24(sp)
    80004d4c:	02010413          	addi	s0,sp,32
    80004d50:	00003497          	auipc	s1,0x3
    80004d54:	61048493          	addi	s1,s1,1552 # 80008360 <pr>
    80004d58:	00048513          	mv	a0,s1
    80004d5c:	00001597          	auipc	a1,0x1
    80004d60:	52458593          	addi	a1,a1,1316 # 80006280 <CONSOLE_STATUS+0x270>
    80004d64:	00000097          	auipc	ra,0x0
    80004d68:	5f4080e7          	jalr	1524(ra) # 80005358 <initlock>
    80004d6c:	01813083          	ld	ra,24(sp)
    80004d70:	01013403          	ld	s0,16(sp)
    80004d74:	0004ac23          	sw	zero,24(s1)
    80004d78:	00813483          	ld	s1,8(sp)
    80004d7c:	02010113          	addi	sp,sp,32
    80004d80:	00008067          	ret

0000000080004d84 <uartinit>:
    80004d84:	ff010113          	addi	sp,sp,-16
    80004d88:	00813423          	sd	s0,8(sp)
    80004d8c:	01010413          	addi	s0,sp,16
    80004d90:	100007b7          	lui	a5,0x10000
    80004d94:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004d98:	f8000713          	li	a4,-128
    80004d9c:	00e781a3          	sb	a4,3(a5)
    80004da0:	00300713          	li	a4,3
    80004da4:	00e78023          	sb	a4,0(a5)
    80004da8:	000780a3          	sb	zero,1(a5)
    80004dac:	00e781a3          	sb	a4,3(a5)
    80004db0:	00700693          	li	a3,7
    80004db4:	00d78123          	sb	a3,2(a5)
    80004db8:	00e780a3          	sb	a4,1(a5)
    80004dbc:	00813403          	ld	s0,8(sp)
    80004dc0:	01010113          	addi	sp,sp,16
    80004dc4:	00008067          	ret

0000000080004dc8 <uartputc>:
    80004dc8:	00002797          	auipc	a5,0x2
    80004dcc:	3007a783          	lw	a5,768(a5) # 800070c8 <panicked>
    80004dd0:	00078463          	beqz	a5,80004dd8 <uartputc+0x10>
    80004dd4:	0000006f          	j	80004dd4 <uartputc+0xc>
    80004dd8:	fd010113          	addi	sp,sp,-48
    80004ddc:	02813023          	sd	s0,32(sp)
    80004de0:	00913c23          	sd	s1,24(sp)
    80004de4:	01213823          	sd	s2,16(sp)
    80004de8:	01313423          	sd	s3,8(sp)
    80004dec:	02113423          	sd	ra,40(sp)
    80004df0:	03010413          	addi	s0,sp,48
    80004df4:	00002917          	auipc	s2,0x2
    80004df8:	2dc90913          	addi	s2,s2,732 # 800070d0 <uart_tx_r>
    80004dfc:	00093783          	ld	a5,0(s2)
    80004e00:	00002497          	auipc	s1,0x2
    80004e04:	2d848493          	addi	s1,s1,728 # 800070d8 <uart_tx_w>
    80004e08:	0004b703          	ld	a4,0(s1)
    80004e0c:	02078693          	addi	a3,a5,32
    80004e10:	00050993          	mv	s3,a0
    80004e14:	02e69c63          	bne	a3,a4,80004e4c <uartputc+0x84>
    80004e18:	00001097          	auipc	ra,0x1
    80004e1c:	834080e7          	jalr	-1996(ra) # 8000564c <push_on>
    80004e20:	00093783          	ld	a5,0(s2)
    80004e24:	0004b703          	ld	a4,0(s1)
    80004e28:	02078793          	addi	a5,a5,32
    80004e2c:	00e79463          	bne	a5,a4,80004e34 <uartputc+0x6c>
    80004e30:	0000006f          	j	80004e30 <uartputc+0x68>
    80004e34:	00001097          	auipc	ra,0x1
    80004e38:	88c080e7          	jalr	-1908(ra) # 800056c0 <pop_on>
    80004e3c:	00093783          	ld	a5,0(s2)
    80004e40:	0004b703          	ld	a4,0(s1)
    80004e44:	02078693          	addi	a3,a5,32
    80004e48:	fce688e3          	beq	a3,a4,80004e18 <uartputc+0x50>
    80004e4c:	01f77693          	andi	a3,a4,31
    80004e50:	00003597          	auipc	a1,0x3
    80004e54:	53058593          	addi	a1,a1,1328 # 80008380 <uart_tx_buf>
    80004e58:	00d586b3          	add	a3,a1,a3
    80004e5c:	00170713          	addi	a4,a4,1
    80004e60:	01368023          	sb	s3,0(a3)
    80004e64:	00e4b023          	sd	a4,0(s1)
    80004e68:	10000637          	lui	a2,0x10000
    80004e6c:	02f71063          	bne	a4,a5,80004e8c <uartputc+0xc4>
    80004e70:	0340006f          	j	80004ea4 <uartputc+0xdc>
    80004e74:	00074703          	lbu	a4,0(a4)
    80004e78:	00f93023          	sd	a5,0(s2)
    80004e7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004e80:	00093783          	ld	a5,0(s2)
    80004e84:	0004b703          	ld	a4,0(s1)
    80004e88:	00f70e63          	beq	a4,a5,80004ea4 <uartputc+0xdc>
    80004e8c:	00564683          	lbu	a3,5(a2)
    80004e90:	01f7f713          	andi	a4,a5,31
    80004e94:	00e58733          	add	a4,a1,a4
    80004e98:	0206f693          	andi	a3,a3,32
    80004e9c:	00178793          	addi	a5,a5,1
    80004ea0:	fc069ae3          	bnez	a3,80004e74 <uartputc+0xac>
    80004ea4:	02813083          	ld	ra,40(sp)
    80004ea8:	02013403          	ld	s0,32(sp)
    80004eac:	01813483          	ld	s1,24(sp)
    80004eb0:	01013903          	ld	s2,16(sp)
    80004eb4:	00813983          	ld	s3,8(sp)
    80004eb8:	03010113          	addi	sp,sp,48
    80004ebc:	00008067          	ret

0000000080004ec0 <uartputc_sync>:
    80004ec0:	ff010113          	addi	sp,sp,-16
    80004ec4:	00813423          	sd	s0,8(sp)
    80004ec8:	01010413          	addi	s0,sp,16
    80004ecc:	00002717          	auipc	a4,0x2
    80004ed0:	1fc72703          	lw	a4,508(a4) # 800070c8 <panicked>
    80004ed4:	02071663          	bnez	a4,80004f00 <uartputc_sync+0x40>
    80004ed8:	00050793          	mv	a5,a0
    80004edc:	100006b7          	lui	a3,0x10000
    80004ee0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004ee4:	02077713          	andi	a4,a4,32
    80004ee8:	fe070ce3          	beqz	a4,80004ee0 <uartputc_sync+0x20>
    80004eec:	0ff7f793          	andi	a5,a5,255
    80004ef0:	00f68023          	sb	a5,0(a3)
    80004ef4:	00813403          	ld	s0,8(sp)
    80004ef8:	01010113          	addi	sp,sp,16
    80004efc:	00008067          	ret
    80004f00:	0000006f          	j	80004f00 <uartputc_sync+0x40>

0000000080004f04 <uartstart>:
    80004f04:	ff010113          	addi	sp,sp,-16
    80004f08:	00813423          	sd	s0,8(sp)
    80004f0c:	01010413          	addi	s0,sp,16
    80004f10:	00002617          	auipc	a2,0x2
    80004f14:	1c060613          	addi	a2,a2,448 # 800070d0 <uart_tx_r>
    80004f18:	00002517          	auipc	a0,0x2
    80004f1c:	1c050513          	addi	a0,a0,448 # 800070d8 <uart_tx_w>
    80004f20:	00063783          	ld	a5,0(a2)
    80004f24:	00053703          	ld	a4,0(a0)
    80004f28:	04f70263          	beq	a4,a5,80004f6c <uartstart+0x68>
    80004f2c:	100005b7          	lui	a1,0x10000
    80004f30:	00003817          	auipc	a6,0x3
    80004f34:	45080813          	addi	a6,a6,1104 # 80008380 <uart_tx_buf>
    80004f38:	01c0006f          	j	80004f54 <uartstart+0x50>
    80004f3c:	0006c703          	lbu	a4,0(a3)
    80004f40:	00f63023          	sd	a5,0(a2)
    80004f44:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f48:	00063783          	ld	a5,0(a2)
    80004f4c:	00053703          	ld	a4,0(a0)
    80004f50:	00f70e63          	beq	a4,a5,80004f6c <uartstart+0x68>
    80004f54:	01f7f713          	andi	a4,a5,31
    80004f58:	00e806b3          	add	a3,a6,a4
    80004f5c:	0055c703          	lbu	a4,5(a1)
    80004f60:	00178793          	addi	a5,a5,1
    80004f64:	02077713          	andi	a4,a4,32
    80004f68:	fc071ae3          	bnez	a4,80004f3c <uartstart+0x38>
    80004f6c:	00813403          	ld	s0,8(sp)
    80004f70:	01010113          	addi	sp,sp,16
    80004f74:	00008067          	ret

0000000080004f78 <uartgetc>:
    80004f78:	ff010113          	addi	sp,sp,-16
    80004f7c:	00813423          	sd	s0,8(sp)
    80004f80:	01010413          	addi	s0,sp,16
    80004f84:	10000737          	lui	a4,0x10000
    80004f88:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004f8c:	0017f793          	andi	a5,a5,1
    80004f90:	00078c63          	beqz	a5,80004fa8 <uartgetc+0x30>
    80004f94:	00074503          	lbu	a0,0(a4)
    80004f98:	0ff57513          	andi	a0,a0,255
    80004f9c:	00813403          	ld	s0,8(sp)
    80004fa0:	01010113          	addi	sp,sp,16
    80004fa4:	00008067          	ret
    80004fa8:	fff00513          	li	a0,-1
    80004fac:	ff1ff06f          	j	80004f9c <uartgetc+0x24>

0000000080004fb0 <uartintr>:
    80004fb0:	100007b7          	lui	a5,0x10000
    80004fb4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004fb8:	0017f793          	andi	a5,a5,1
    80004fbc:	0a078463          	beqz	a5,80005064 <uartintr+0xb4>
    80004fc0:	fe010113          	addi	sp,sp,-32
    80004fc4:	00813823          	sd	s0,16(sp)
    80004fc8:	00913423          	sd	s1,8(sp)
    80004fcc:	00113c23          	sd	ra,24(sp)
    80004fd0:	02010413          	addi	s0,sp,32
    80004fd4:	100004b7          	lui	s1,0x10000
    80004fd8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004fdc:	0ff57513          	andi	a0,a0,255
    80004fe0:	fffff097          	auipc	ra,0xfffff
    80004fe4:	534080e7          	jalr	1332(ra) # 80004514 <consoleintr>
    80004fe8:	0054c783          	lbu	a5,5(s1)
    80004fec:	0017f793          	andi	a5,a5,1
    80004ff0:	fe0794e3          	bnez	a5,80004fd8 <uartintr+0x28>
    80004ff4:	00002617          	auipc	a2,0x2
    80004ff8:	0dc60613          	addi	a2,a2,220 # 800070d0 <uart_tx_r>
    80004ffc:	00002517          	auipc	a0,0x2
    80005000:	0dc50513          	addi	a0,a0,220 # 800070d8 <uart_tx_w>
    80005004:	00063783          	ld	a5,0(a2)
    80005008:	00053703          	ld	a4,0(a0)
    8000500c:	04f70263          	beq	a4,a5,80005050 <uartintr+0xa0>
    80005010:	100005b7          	lui	a1,0x10000
    80005014:	00003817          	auipc	a6,0x3
    80005018:	36c80813          	addi	a6,a6,876 # 80008380 <uart_tx_buf>
    8000501c:	01c0006f          	j	80005038 <uartintr+0x88>
    80005020:	0006c703          	lbu	a4,0(a3)
    80005024:	00f63023          	sd	a5,0(a2)
    80005028:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000502c:	00063783          	ld	a5,0(a2)
    80005030:	00053703          	ld	a4,0(a0)
    80005034:	00f70e63          	beq	a4,a5,80005050 <uartintr+0xa0>
    80005038:	01f7f713          	andi	a4,a5,31
    8000503c:	00e806b3          	add	a3,a6,a4
    80005040:	0055c703          	lbu	a4,5(a1)
    80005044:	00178793          	addi	a5,a5,1
    80005048:	02077713          	andi	a4,a4,32
    8000504c:	fc071ae3          	bnez	a4,80005020 <uartintr+0x70>
    80005050:	01813083          	ld	ra,24(sp)
    80005054:	01013403          	ld	s0,16(sp)
    80005058:	00813483          	ld	s1,8(sp)
    8000505c:	02010113          	addi	sp,sp,32
    80005060:	00008067          	ret
    80005064:	00002617          	auipc	a2,0x2
    80005068:	06c60613          	addi	a2,a2,108 # 800070d0 <uart_tx_r>
    8000506c:	00002517          	auipc	a0,0x2
    80005070:	06c50513          	addi	a0,a0,108 # 800070d8 <uart_tx_w>
    80005074:	00063783          	ld	a5,0(a2)
    80005078:	00053703          	ld	a4,0(a0)
    8000507c:	04f70263          	beq	a4,a5,800050c0 <uartintr+0x110>
    80005080:	100005b7          	lui	a1,0x10000
    80005084:	00003817          	auipc	a6,0x3
    80005088:	2fc80813          	addi	a6,a6,764 # 80008380 <uart_tx_buf>
    8000508c:	01c0006f          	j	800050a8 <uartintr+0xf8>
    80005090:	0006c703          	lbu	a4,0(a3)
    80005094:	00f63023          	sd	a5,0(a2)
    80005098:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000509c:	00063783          	ld	a5,0(a2)
    800050a0:	00053703          	ld	a4,0(a0)
    800050a4:	02f70063          	beq	a4,a5,800050c4 <uartintr+0x114>
    800050a8:	01f7f713          	andi	a4,a5,31
    800050ac:	00e806b3          	add	a3,a6,a4
    800050b0:	0055c703          	lbu	a4,5(a1)
    800050b4:	00178793          	addi	a5,a5,1
    800050b8:	02077713          	andi	a4,a4,32
    800050bc:	fc071ae3          	bnez	a4,80005090 <uartintr+0xe0>
    800050c0:	00008067          	ret
    800050c4:	00008067          	ret

00000000800050c8 <kinit>:
    800050c8:	fc010113          	addi	sp,sp,-64
    800050cc:	02913423          	sd	s1,40(sp)
    800050d0:	fffff7b7          	lui	a5,0xfffff
    800050d4:	00004497          	auipc	s1,0x4
    800050d8:	2cb48493          	addi	s1,s1,715 # 8000939f <end+0xfff>
    800050dc:	02813823          	sd	s0,48(sp)
    800050e0:	01313c23          	sd	s3,24(sp)
    800050e4:	00f4f4b3          	and	s1,s1,a5
    800050e8:	02113c23          	sd	ra,56(sp)
    800050ec:	03213023          	sd	s2,32(sp)
    800050f0:	01413823          	sd	s4,16(sp)
    800050f4:	01513423          	sd	s5,8(sp)
    800050f8:	04010413          	addi	s0,sp,64
    800050fc:	000017b7          	lui	a5,0x1
    80005100:	01100993          	li	s3,17
    80005104:	00f487b3          	add	a5,s1,a5
    80005108:	01b99993          	slli	s3,s3,0x1b
    8000510c:	06f9e063          	bltu	s3,a5,8000516c <kinit+0xa4>
    80005110:	00003a97          	auipc	s5,0x3
    80005114:	290a8a93          	addi	s5,s5,656 # 800083a0 <end>
    80005118:	0754ec63          	bltu	s1,s5,80005190 <kinit+0xc8>
    8000511c:	0734fa63          	bgeu	s1,s3,80005190 <kinit+0xc8>
    80005120:	00088a37          	lui	s4,0x88
    80005124:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005128:	00002917          	auipc	s2,0x2
    8000512c:	fb890913          	addi	s2,s2,-72 # 800070e0 <kmem>
    80005130:	00ca1a13          	slli	s4,s4,0xc
    80005134:	0140006f          	j	80005148 <kinit+0x80>
    80005138:	000017b7          	lui	a5,0x1
    8000513c:	00f484b3          	add	s1,s1,a5
    80005140:	0554e863          	bltu	s1,s5,80005190 <kinit+0xc8>
    80005144:	0534f663          	bgeu	s1,s3,80005190 <kinit+0xc8>
    80005148:	00001637          	lui	a2,0x1
    8000514c:	00100593          	li	a1,1
    80005150:	00048513          	mv	a0,s1
    80005154:	00000097          	auipc	ra,0x0
    80005158:	5e4080e7          	jalr	1508(ra) # 80005738 <__memset>
    8000515c:	00093783          	ld	a5,0(s2)
    80005160:	00f4b023          	sd	a5,0(s1)
    80005164:	00993023          	sd	s1,0(s2)
    80005168:	fd4498e3          	bne	s1,s4,80005138 <kinit+0x70>
    8000516c:	03813083          	ld	ra,56(sp)
    80005170:	03013403          	ld	s0,48(sp)
    80005174:	02813483          	ld	s1,40(sp)
    80005178:	02013903          	ld	s2,32(sp)
    8000517c:	01813983          	ld	s3,24(sp)
    80005180:	01013a03          	ld	s4,16(sp)
    80005184:	00813a83          	ld	s5,8(sp)
    80005188:	04010113          	addi	sp,sp,64
    8000518c:	00008067          	ret
    80005190:	00001517          	auipc	a0,0x1
    80005194:	11050513          	addi	a0,a0,272 # 800062a0 <digits+0x18>
    80005198:	fffff097          	auipc	ra,0xfffff
    8000519c:	4b4080e7          	jalr	1204(ra) # 8000464c <panic>

00000000800051a0 <freerange>:
    800051a0:	fc010113          	addi	sp,sp,-64
    800051a4:	000017b7          	lui	a5,0x1
    800051a8:	02913423          	sd	s1,40(sp)
    800051ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800051b0:	009504b3          	add	s1,a0,s1
    800051b4:	fffff537          	lui	a0,0xfffff
    800051b8:	02813823          	sd	s0,48(sp)
    800051bc:	02113c23          	sd	ra,56(sp)
    800051c0:	03213023          	sd	s2,32(sp)
    800051c4:	01313c23          	sd	s3,24(sp)
    800051c8:	01413823          	sd	s4,16(sp)
    800051cc:	01513423          	sd	s5,8(sp)
    800051d0:	01613023          	sd	s6,0(sp)
    800051d4:	04010413          	addi	s0,sp,64
    800051d8:	00a4f4b3          	and	s1,s1,a0
    800051dc:	00f487b3          	add	a5,s1,a5
    800051e0:	06f5e463          	bltu	a1,a5,80005248 <freerange+0xa8>
    800051e4:	00003a97          	auipc	s5,0x3
    800051e8:	1bca8a93          	addi	s5,s5,444 # 800083a0 <end>
    800051ec:	0954e263          	bltu	s1,s5,80005270 <freerange+0xd0>
    800051f0:	01100993          	li	s3,17
    800051f4:	01b99993          	slli	s3,s3,0x1b
    800051f8:	0734fc63          	bgeu	s1,s3,80005270 <freerange+0xd0>
    800051fc:	00058a13          	mv	s4,a1
    80005200:	00002917          	auipc	s2,0x2
    80005204:	ee090913          	addi	s2,s2,-288 # 800070e0 <kmem>
    80005208:	00002b37          	lui	s6,0x2
    8000520c:	0140006f          	j	80005220 <freerange+0x80>
    80005210:	000017b7          	lui	a5,0x1
    80005214:	00f484b3          	add	s1,s1,a5
    80005218:	0554ec63          	bltu	s1,s5,80005270 <freerange+0xd0>
    8000521c:	0534fa63          	bgeu	s1,s3,80005270 <freerange+0xd0>
    80005220:	00001637          	lui	a2,0x1
    80005224:	00100593          	li	a1,1
    80005228:	00048513          	mv	a0,s1
    8000522c:	00000097          	auipc	ra,0x0
    80005230:	50c080e7          	jalr	1292(ra) # 80005738 <__memset>
    80005234:	00093703          	ld	a4,0(s2)
    80005238:	016487b3          	add	a5,s1,s6
    8000523c:	00e4b023          	sd	a4,0(s1)
    80005240:	00993023          	sd	s1,0(s2)
    80005244:	fcfa76e3          	bgeu	s4,a5,80005210 <freerange+0x70>
    80005248:	03813083          	ld	ra,56(sp)
    8000524c:	03013403          	ld	s0,48(sp)
    80005250:	02813483          	ld	s1,40(sp)
    80005254:	02013903          	ld	s2,32(sp)
    80005258:	01813983          	ld	s3,24(sp)
    8000525c:	01013a03          	ld	s4,16(sp)
    80005260:	00813a83          	ld	s5,8(sp)
    80005264:	00013b03          	ld	s6,0(sp)
    80005268:	04010113          	addi	sp,sp,64
    8000526c:	00008067          	ret
    80005270:	00001517          	auipc	a0,0x1
    80005274:	03050513          	addi	a0,a0,48 # 800062a0 <digits+0x18>
    80005278:	fffff097          	auipc	ra,0xfffff
    8000527c:	3d4080e7          	jalr	980(ra) # 8000464c <panic>

0000000080005280 <kfree>:
    80005280:	fe010113          	addi	sp,sp,-32
    80005284:	00813823          	sd	s0,16(sp)
    80005288:	00113c23          	sd	ra,24(sp)
    8000528c:	00913423          	sd	s1,8(sp)
    80005290:	02010413          	addi	s0,sp,32
    80005294:	03451793          	slli	a5,a0,0x34
    80005298:	04079c63          	bnez	a5,800052f0 <kfree+0x70>
    8000529c:	00003797          	auipc	a5,0x3
    800052a0:	10478793          	addi	a5,a5,260 # 800083a0 <end>
    800052a4:	00050493          	mv	s1,a0
    800052a8:	04f56463          	bltu	a0,a5,800052f0 <kfree+0x70>
    800052ac:	01100793          	li	a5,17
    800052b0:	01b79793          	slli	a5,a5,0x1b
    800052b4:	02f57e63          	bgeu	a0,a5,800052f0 <kfree+0x70>
    800052b8:	00001637          	lui	a2,0x1
    800052bc:	00100593          	li	a1,1
    800052c0:	00000097          	auipc	ra,0x0
    800052c4:	478080e7          	jalr	1144(ra) # 80005738 <__memset>
    800052c8:	00002797          	auipc	a5,0x2
    800052cc:	e1878793          	addi	a5,a5,-488 # 800070e0 <kmem>
    800052d0:	0007b703          	ld	a4,0(a5)
    800052d4:	01813083          	ld	ra,24(sp)
    800052d8:	01013403          	ld	s0,16(sp)
    800052dc:	00e4b023          	sd	a4,0(s1)
    800052e0:	0097b023          	sd	s1,0(a5)
    800052e4:	00813483          	ld	s1,8(sp)
    800052e8:	02010113          	addi	sp,sp,32
    800052ec:	00008067          	ret
    800052f0:	00001517          	auipc	a0,0x1
    800052f4:	fb050513          	addi	a0,a0,-80 # 800062a0 <digits+0x18>
    800052f8:	fffff097          	auipc	ra,0xfffff
    800052fc:	354080e7          	jalr	852(ra) # 8000464c <panic>

0000000080005300 <kalloc>:
    80005300:	fe010113          	addi	sp,sp,-32
    80005304:	00813823          	sd	s0,16(sp)
    80005308:	00913423          	sd	s1,8(sp)
    8000530c:	00113c23          	sd	ra,24(sp)
    80005310:	02010413          	addi	s0,sp,32
    80005314:	00002797          	auipc	a5,0x2
    80005318:	dcc78793          	addi	a5,a5,-564 # 800070e0 <kmem>
    8000531c:	0007b483          	ld	s1,0(a5)
    80005320:	02048063          	beqz	s1,80005340 <kalloc+0x40>
    80005324:	0004b703          	ld	a4,0(s1)
    80005328:	00001637          	lui	a2,0x1
    8000532c:	00500593          	li	a1,5
    80005330:	00048513          	mv	a0,s1
    80005334:	00e7b023          	sd	a4,0(a5)
    80005338:	00000097          	auipc	ra,0x0
    8000533c:	400080e7          	jalr	1024(ra) # 80005738 <__memset>
    80005340:	01813083          	ld	ra,24(sp)
    80005344:	01013403          	ld	s0,16(sp)
    80005348:	00048513          	mv	a0,s1
    8000534c:	00813483          	ld	s1,8(sp)
    80005350:	02010113          	addi	sp,sp,32
    80005354:	00008067          	ret

0000000080005358 <initlock>:
    80005358:	ff010113          	addi	sp,sp,-16
    8000535c:	00813423          	sd	s0,8(sp)
    80005360:	01010413          	addi	s0,sp,16
    80005364:	00813403          	ld	s0,8(sp)
    80005368:	00b53423          	sd	a1,8(a0)
    8000536c:	00052023          	sw	zero,0(a0)
    80005370:	00053823          	sd	zero,16(a0)
    80005374:	01010113          	addi	sp,sp,16
    80005378:	00008067          	ret

000000008000537c <acquire>:
    8000537c:	fe010113          	addi	sp,sp,-32
    80005380:	00813823          	sd	s0,16(sp)
    80005384:	00913423          	sd	s1,8(sp)
    80005388:	00113c23          	sd	ra,24(sp)
    8000538c:	01213023          	sd	s2,0(sp)
    80005390:	02010413          	addi	s0,sp,32
    80005394:	00050493          	mv	s1,a0
    80005398:	10002973          	csrr	s2,sstatus
    8000539c:	100027f3          	csrr	a5,sstatus
    800053a0:	ffd7f793          	andi	a5,a5,-3
    800053a4:	10079073          	csrw	sstatus,a5
    800053a8:	fffff097          	auipc	ra,0xfffff
    800053ac:	8e0080e7          	jalr	-1824(ra) # 80003c88 <mycpu>
    800053b0:	07852783          	lw	a5,120(a0)
    800053b4:	06078e63          	beqz	a5,80005430 <acquire+0xb4>
    800053b8:	fffff097          	auipc	ra,0xfffff
    800053bc:	8d0080e7          	jalr	-1840(ra) # 80003c88 <mycpu>
    800053c0:	07852783          	lw	a5,120(a0)
    800053c4:	0004a703          	lw	a4,0(s1)
    800053c8:	0017879b          	addiw	a5,a5,1
    800053cc:	06f52c23          	sw	a5,120(a0)
    800053d0:	04071063          	bnez	a4,80005410 <acquire+0x94>
    800053d4:	00100713          	li	a4,1
    800053d8:	00070793          	mv	a5,a4
    800053dc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800053e0:	0007879b          	sext.w	a5,a5
    800053e4:	fe079ae3          	bnez	a5,800053d8 <acquire+0x5c>
    800053e8:	0ff0000f          	fence
    800053ec:	fffff097          	auipc	ra,0xfffff
    800053f0:	89c080e7          	jalr	-1892(ra) # 80003c88 <mycpu>
    800053f4:	01813083          	ld	ra,24(sp)
    800053f8:	01013403          	ld	s0,16(sp)
    800053fc:	00a4b823          	sd	a0,16(s1)
    80005400:	00013903          	ld	s2,0(sp)
    80005404:	00813483          	ld	s1,8(sp)
    80005408:	02010113          	addi	sp,sp,32
    8000540c:	00008067          	ret
    80005410:	0104b903          	ld	s2,16(s1)
    80005414:	fffff097          	auipc	ra,0xfffff
    80005418:	874080e7          	jalr	-1932(ra) # 80003c88 <mycpu>
    8000541c:	faa91ce3          	bne	s2,a0,800053d4 <acquire+0x58>
    80005420:	00001517          	auipc	a0,0x1
    80005424:	e8850513          	addi	a0,a0,-376 # 800062a8 <digits+0x20>
    80005428:	fffff097          	auipc	ra,0xfffff
    8000542c:	224080e7          	jalr	548(ra) # 8000464c <panic>
    80005430:	00195913          	srli	s2,s2,0x1
    80005434:	fffff097          	auipc	ra,0xfffff
    80005438:	854080e7          	jalr	-1964(ra) # 80003c88 <mycpu>
    8000543c:	00197913          	andi	s2,s2,1
    80005440:	07252e23          	sw	s2,124(a0)
    80005444:	f75ff06f          	j	800053b8 <acquire+0x3c>

0000000080005448 <release>:
    80005448:	fe010113          	addi	sp,sp,-32
    8000544c:	00813823          	sd	s0,16(sp)
    80005450:	00113c23          	sd	ra,24(sp)
    80005454:	00913423          	sd	s1,8(sp)
    80005458:	01213023          	sd	s2,0(sp)
    8000545c:	02010413          	addi	s0,sp,32
    80005460:	00052783          	lw	a5,0(a0)
    80005464:	00079a63          	bnez	a5,80005478 <release+0x30>
    80005468:	00001517          	auipc	a0,0x1
    8000546c:	e4850513          	addi	a0,a0,-440 # 800062b0 <digits+0x28>
    80005470:	fffff097          	auipc	ra,0xfffff
    80005474:	1dc080e7          	jalr	476(ra) # 8000464c <panic>
    80005478:	01053903          	ld	s2,16(a0)
    8000547c:	00050493          	mv	s1,a0
    80005480:	fffff097          	auipc	ra,0xfffff
    80005484:	808080e7          	jalr	-2040(ra) # 80003c88 <mycpu>
    80005488:	fea910e3          	bne	s2,a0,80005468 <release+0x20>
    8000548c:	0004b823          	sd	zero,16(s1)
    80005490:	0ff0000f          	fence
    80005494:	0f50000f          	fence	iorw,ow
    80005498:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000549c:	ffffe097          	auipc	ra,0xffffe
    800054a0:	7ec080e7          	jalr	2028(ra) # 80003c88 <mycpu>
    800054a4:	100027f3          	csrr	a5,sstatus
    800054a8:	0027f793          	andi	a5,a5,2
    800054ac:	04079a63          	bnez	a5,80005500 <release+0xb8>
    800054b0:	07852783          	lw	a5,120(a0)
    800054b4:	02f05e63          	blez	a5,800054f0 <release+0xa8>
    800054b8:	fff7871b          	addiw	a4,a5,-1
    800054bc:	06e52c23          	sw	a4,120(a0)
    800054c0:	00071c63          	bnez	a4,800054d8 <release+0x90>
    800054c4:	07c52783          	lw	a5,124(a0)
    800054c8:	00078863          	beqz	a5,800054d8 <release+0x90>
    800054cc:	100027f3          	csrr	a5,sstatus
    800054d0:	0027e793          	ori	a5,a5,2
    800054d4:	10079073          	csrw	sstatus,a5
    800054d8:	01813083          	ld	ra,24(sp)
    800054dc:	01013403          	ld	s0,16(sp)
    800054e0:	00813483          	ld	s1,8(sp)
    800054e4:	00013903          	ld	s2,0(sp)
    800054e8:	02010113          	addi	sp,sp,32
    800054ec:	00008067          	ret
    800054f0:	00001517          	auipc	a0,0x1
    800054f4:	de050513          	addi	a0,a0,-544 # 800062d0 <digits+0x48>
    800054f8:	fffff097          	auipc	ra,0xfffff
    800054fc:	154080e7          	jalr	340(ra) # 8000464c <panic>
    80005500:	00001517          	auipc	a0,0x1
    80005504:	db850513          	addi	a0,a0,-584 # 800062b8 <digits+0x30>
    80005508:	fffff097          	auipc	ra,0xfffff
    8000550c:	144080e7          	jalr	324(ra) # 8000464c <panic>

0000000080005510 <holding>:
    80005510:	00052783          	lw	a5,0(a0)
    80005514:	00079663          	bnez	a5,80005520 <holding+0x10>
    80005518:	00000513          	li	a0,0
    8000551c:	00008067          	ret
    80005520:	fe010113          	addi	sp,sp,-32
    80005524:	00813823          	sd	s0,16(sp)
    80005528:	00913423          	sd	s1,8(sp)
    8000552c:	00113c23          	sd	ra,24(sp)
    80005530:	02010413          	addi	s0,sp,32
    80005534:	01053483          	ld	s1,16(a0)
    80005538:	ffffe097          	auipc	ra,0xffffe
    8000553c:	750080e7          	jalr	1872(ra) # 80003c88 <mycpu>
    80005540:	01813083          	ld	ra,24(sp)
    80005544:	01013403          	ld	s0,16(sp)
    80005548:	40a48533          	sub	a0,s1,a0
    8000554c:	00153513          	seqz	a0,a0
    80005550:	00813483          	ld	s1,8(sp)
    80005554:	02010113          	addi	sp,sp,32
    80005558:	00008067          	ret

000000008000555c <push_off>:
    8000555c:	fe010113          	addi	sp,sp,-32
    80005560:	00813823          	sd	s0,16(sp)
    80005564:	00113c23          	sd	ra,24(sp)
    80005568:	00913423          	sd	s1,8(sp)
    8000556c:	02010413          	addi	s0,sp,32
    80005570:	100024f3          	csrr	s1,sstatus
    80005574:	100027f3          	csrr	a5,sstatus
    80005578:	ffd7f793          	andi	a5,a5,-3
    8000557c:	10079073          	csrw	sstatus,a5
    80005580:	ffffe097          	auipc	ra,0xffffe
    80005584:	708080e7          	jalr	1800(ra) # 80003c88 <mycpu>
    80005588:	07852783          	lw	a5,120(a0)
    8000558c:	02078663          	beqz	a5,800055b8 <push_off+0x5c>
    80005590:	ffffe097          	auipc	ra,0xffffe
    80005594:	6f8080e7          	jalr	1784(ra) # 80003c88 <mycpu>
    80005598:	07852783          	lw	a5,120(a0)
    8000559c:	01813083          	ld	ra,24(sp)
    800055a0:	01013403          	ld	s0,16(sp)
    800055a4:	0017879b          	addiw	a5,a5,1
    800055a8:	06f52c23          	sw	a5,120(a0)
    800055ac:	00813483          	ld	s1,8(sp)
    800055b0:	02010113          	addi	sp,sp,32
    800055b4:	00008067          	ret
    800055b8:	0014d493          	srli	s1,s1,0x1
    800055bc:	ffffe097          	auipc	ra,0xffffe
    800055c0:	6cc080e7          	jalr	1740(ra) # 80003c88 <mycpu>
    800055c4:	0014f493          	andi	s1,s1,1
    800055c8:	06952e23          	sw	s1,124(a0)
    800055cc:	fc5ff06f          	j	80005590 <push_off+0x34>

00000000800055d0 <pop_off>:
    800055d0:	ff010113          	addi	sp,sp,-16
    800055d4:	00813023          	sd	s0,0(sp)
    800055d8:	00113423          	sd	ra,8(sp)
    800055dc:	01010413          	addi	s0,sp,16
    800055e0:	ffffe097          	auipc	ra,0xffffe
    800055e4:	6a8080e7          	jalr	1704(ra) # 80003c88 <mycpu>
    800055e8:	100027f3          	csrr	a5,sstatus
    800055ec:	0027f793          	andi	a5,a5,2
    800055f0:	04079663          	bnez	a5,8000563c <pop_off+0x6c>
    800055f4:	07852783          	lw	a5,120(a0)
    800055f8:	02f05a63          	blez	a5,8000562c <pop_off+0x5c>
    800055fc:	fff7871b          	addiw	a4,a5,-1
    80005600:	06e52c23          	sw	a4,120(a0)
    80005604:	00071c63          	bnez	a4,8000561c <pop_off+0x4c>
    80005608:	07c52783          	lw	a5,124(a0)
    8000560c:	00078863          	beqz	a5,8000561c <pop_off+0x4c>
    80005610:	100027f3          	csrr	a5,sstatus
    80005614:	0027e793          	ori	a5,a5,2
    80005618:	10079073          	csrw	sstatus,a5
    8000561c:	00813083          	ld	ra,8(sp)
    80005620:	00013403          	ld	s0,0(sp)
    80005624:	01010113          	addi	sp,sp,16
    80005628:	00008067          	ret
    8000562c:	00001517          	auipc	a0,0x1
    80005630:	ca450513          	addi	a0,a0,-860 # 800062d0 <digits+0x48>
    80005634:	fffff097          	auipc	ra,0xfffff
    80005638:	018080e7          	jalr	24(ra) # 8000464c <panic>
    8000563c:	00001517          	auipc	a0,0x1
    80005640:	c7c50513          	addi	a0,a0,-900 # 800062b8 <digits+0x30>
    80005644:	fffff097          	auipc	ra,0xfffff
    80005648:	008080e7          	jalr	8(ra) # 8000464c <panic>

000000008000564c <push_on>:
    8000564c:	fe010113          	addi	sp,sp,-32
    80005650:	00813823          	sd	s0,16(sp)
    80005654:	00113c23          	sd	ra,24(sp)
    80005658:	00913423          	sd	s1,8(sp)
    8000565c:	02010413          	addi	s0,sp,32
    80005660:	100024f3          	csrr	s1,sstatus
    80005664:	100027f3          	csrr	a5,sstatus
    80005668:	0027e793          	ori	a5,a5,2
    8000566c:	10079073          	csrw	sstatus,a5
    80005670:	ffffe097          	auipc	ra,0xffffe
    80005674:	618080e7          	jalr	1560(ra) # 80003c88 <mycpu>
    80005678:	07852783          	lw	a5,120(a0)
    8000567c:	02078663          	beqz	a5,800056a8 <push_on+0x5c>
    80005680:	ffffe097          	auipc	ra,0xffffe
    80005684:	608080e7          	jalr	1544(ra) # 80003c88 <mycpu>
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
    800056b0:	5dc080e7          	jalr	1500(ra) # 80003c88 <mycpu>
    800056b4:	0014f493          	andi	s1,s1,1
    800056b8:	06952e23          	sw	s1,124(a0)
    800056bc:	fc5ff06f          	j	80005680 <push_on+0x34>

00000000800056c0 <pop_on>:
    800056c0:	ff010113          	addi	sp,sp,-16
    800056c4:	00813023          	sd	s0,0(sp)
    800056c8:	00113423          	sd	ra,8(sp)
    800056cc:	01010413          	addi	s0,sp,16
    800056d0:	ffffe097          	auipc	ra,0xffffe
    800056d4:	5b8080e7          	jalr	1464(ra) # 80003c88 <mycpu>
    800056d8:	100027f3          	csrr	a5,sstatus
    800056dc:	0027f793          	andi	a5,a5,2
    800056e0:	04078463          	beqz	a5,80005728 <pop_on+0x68>
    800056e4:	07852783          	lw	a5,120(a0)
    800056e8:	02f05863          	blez	a5,80005718 <pop_on+0x58>
    800056ec:	fff7879b          	addiw	a5,a5,-1
    800056f0:	06f52c23          	sw	a5,120(a0)
    800056f4:	07853783          	ld	a5,120(a0)
    800056f8:	00079863          	bnez	a5,80005708 <pop_on+0x48>
    800056fc:	100027f3          	csrr	a5,sstatus
    80005700:	ffd7f793          	andi	a5,a5,-3
    80005704:	10079073          	csrw	sstatus,a5
    80005708:	00813083          	ld	ra,8(sp)
    8000570c:	00013403          	ld	s0,0(sp)
    80005710:	01010113          	addi	sp,sp,16
    80005714:	00008067          	ret
    80005718:	00001517          	auipc	a0,0x1
    8000571c:	be050513          	addi	a0,a0,-1056 # 800062f8 <digits+0x70>
    80005720:	fffff097          	auipc	ra,0xfffff
    80005724:	f2c080e7          	jalr	-212(ra) # 8000464c <panic>
    80005728:	00001517          	auipc	a0,0x1
    8000572c:	bb050513          	addi	a0,a0,-1104 # 800062d8 <digits+0x50>
    80005730:	fffff097          	auipc	ra,0xfffff
    80005734:	f1c080e7          	jalr	-228(ra) # 8000464c <panic>

0000000080005738 <__memset>:
    80005738:	ff010113          	addi	sp,sp,-16
    8000573c:	00813423          	sd	s0,8(sp)
    80005740:	01010413          	addi	s0,sp,16
    80005744:	1a060e63          	beqz	a2,80005900 <__memset+0x1c8>
    80005748:	40a007b3          	neg	a5,a0
    8000574c:	0077f793          	andi	a5,a5,7
    80005750:	00778693          	addi	a3,a5,7
    80005754:	00b00813          	li	a6,11
    80005758:	0ff5f593          	andi	a1,a1,255
    8000575c:	fff6071b          	addiw	a4,a2,-1
    80005760:	1b06e663          	bltu	a3,a6,8000590c <__memset+0x1d4>
    80005764:	1cd76463          	bltu	a4,a3,8000592c <__memset+0x1f4>
    80005768:	1a078e63          	beqz	a5,80005924 <__memset+0x1ec>
    8000576c:	00b50023          	sb	a1,0(a0)
    80005770:	00100713          	li	a4,1
    80005774:	1ae78463          	beq	a5,a4,8000591c <__memset+0x1e4>
    80005778:	00b500a3          	sb	a1,1(a0)
    8000577c:	00200713          	li	a4,2
    80005780:	1ae78a63          	beq	a5,a4,80005934 <__memset+0x1fc>
    80005784:	00b50123          	sb	a1,2(a0)
    80005788:	00300713          	li	a4,3
    8000578c:	18e78463          	beq	a5,a4,80005914 <__memset+0x1dc>
    80005790:	00b501a3          	sb	a1,3(a0)
    80005794:	00400713          	li	a4,4
    80005798:	1ae78263          	beq	a5,a4,8000593c <__memset+0x204>
    8000579c:	00b50223          	sb	a1,4(a0)
    800057a0:	00500713          	li	a4,5
    800057a4:	1ae78063          	beq	a5,a4,80005944 <__memset+0x20c>
    800057a8:	00b502a3          	sb	a1,5(a0)
    800057ac:	00700713          	li	a4,7
    800057b0:	18e79e63          	bne	a5,a4,8000594c <__memset+0x214>
    800057b4:	00b50323          	sb	a1,6(a0)
    800057b8:	00700e93          	li	t4,7
    800057bc:	00859713          	slli	a4,a1,0x8
    800057c0:	00e5e733          	or	a4,a1,a4
    800057c4:	01059e13          	slli	t3,a1,0x10
    800057c8:	01c76e33          	or	t3,a4,t3
    800057cc:	01859313          	slli	t1,a1,0x18
    800057d0:	006e6333          	or	t1,t3,t1
    800057d4:	02059893          	slli	a7,a1,0x20
    800057d8:	40f60e3b          	subw	t3,a2,a5
    800057dc:	011368b3          	or	a7,t1,a7
    800057e0:	02859813          	slli	a6,a1,0x28
    800057e4:	0108e833          	or	a6,a7,a6
    800057e8:	03059693          	slli	a3,a1,0x30
    800057ec:	003e589b          	srliw	a7,t3,0x3
    800057f0:	00d866b3          	or	a3,a6,a3
    800057f4:	03859713          	slli	a4,a1,0x38
    800057f8:	00389813          	slli	a6,a7,0x3
    800057fc:	00f507b3          	add	a5,a0,a5
    80005800:	00e6e733          	or	a4,a3,a4
    80005804:	000e089b          	sext.w	a7,t3
    80005808:	00f806b3          	add	a3,a6,a5
    8000580c:	00e7b023          	sd	a4,0(a5)
    80005810:	00878793          	addi	a5,a5,8
    80005814:	fed79ce3          	bne	a5,a3,8000580c <__memset+0xd4>
    80005818:	ff8e7793          	andi	a5,t3,-8
    8000581c:	0007871b          	sext.w	a4,a5
    80005820:	01d787bb          	addw	a5,a5,t4
    80005824:	0ce88e63          	beq	a7,a4,80005900 <__memset+0x1c8>
    80005828:	00f50733          	add	a4,a0,a5
    8000582c:	00b70023          	sb	a1,0(a4)
    80005830:	0017871b          	addiw	a4,a5,1
    80005834:	0cc77663          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    80005838:	00e50733          	add	a4,a0,a4
    8000583c:	00b70023          	sb	a1,0(a4)
    80005840:	0027871b          	addiw	a4,a5,2
    80005844:	0ac77e63          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    80005848:	00e50733          	add	a4,a0,a4
    8000584c:	00b70023          	sb	a1,0(a4)
    80005850:	0037871b          	addiw	a4,a5,3
    80005854:	0ac77663          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    80005858:	00e50733          	add	a4,a0,a4
    8000585c:	00b70023          	sb	a1,0(a4)
    80005860:	0047871b          	addiw	a4,a5,4
    80005864:	08c77e63          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    80005868:	00e50733          	add	a4,a0,a4
    8000586c:	00b70023          	sb	a1,0(a4)
    80005870:	0057871b          	addiw	a4,a5,5
    80005874:	08c77663          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    80005878:	00e50733          	add	a4,a0,a4
    8000587c:	00b70023          	sb	a1,0(a4)
    80005880:	0067871b          	addiw	a4,a5,6
    80005884:	06c77e63          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    80005888:	00e50733          	add	a4,a0,a4
    8000588c:	00b70023          	sb	a1,0(a4)
    80005890:	0077871b          	addiw	a4,a5,7
    80005894:	06c77663          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    80005898:	00e50733          	add	a4,a0,a4
    8000589c:	00b70023          	sb	a1,0(a4)
    800058a0:	0087871b          	addiw	a4,a5,8
    800058a4:	04c77e63          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    800058a8:	00e50733          	add	a4,a0,a4
    800058ac:	00b70023          	sb	a1,0(a4)
    800058b0:	0097871b          	addiw	a4,a5,9
    800058b4:	04c77663          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    800058b8:	00e50733          	add	a4,a0,a4
    800058bc:	00b70023          	sb	a1,0(a4)
    800058c0:	00a7871b          	addiw	a4,a5,10
    800058c4:	02c77e63          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    800058c8:	00e50733          	add	a4,a0,a4
    800058cc:	00b70023          	sb	a1,0(a4)
    800058d0:	00b7871b          	addiw	a4,a5,11
    800058d4:	02c77663          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    800058d8:	00e50733          	add	a4,a0,a4
    800058dc:	00b70023          	sb	a1,0(a4)
    800058e0:	00c7871b          	addiw	a4,a5,12
    800058e4:	00c77e63          	bgeu	a4,a2,80005900 <__memset+0x1c8>
    800058e8:	00e50733          	add	a4,a0,a4
    800058ec:	00b70023          	sb	a1,0(a4)
    800058f0:	00d7879b          	addiw	a5,a5,13
    800058f4:	00c7f663          	bgeu	a5,a2,80005900 <__memset+0x1c8>
    800058f8:	00f507b3          	add	a5,a0,a5
    800058fc:	00b78023          	sb	a1,0(a5)
    80005900:	00813403          	ld	s0,8(sp)
    80005904:	01010113          	addi	sp,sp,16
    80005908:	00008067          	ret
    8000590c:	00b00693          	li	a3,11
    80005910:	e55ff06f          	j	80005764 <__memset+0x2c>
    80005914:	00300e93          	li	t4,3
    80005918:	ea5ff06f          	j	800057bc <__memset+0x84>
    8000591c:	00100e93          	li	t4,1
    80005920:	e9dff06f          	j	800057bc <__memset+0x84>
    80005924:	00000e93          	li	t4,0
    80005928:	e95ff06f          	j	800057bc <__memset+0x84>
    8000592c:	00000793          	li	a5,0
    80005930:	ef9ff06f          	j	80005828 <__memset+0xf0>
    80005934:	00200e93          	li	t4,2
    80005938:	e85ff06f          	j	800057bc <__memset+0x84>
    8000593c:	00400e93          	li	t4,4
    80005940:	e7dff06f          	j	800057bc <__memset+0x84>
    80005944:	00500e93          	li	t4,5
    80005948:	e75ff06f          	j	800057bc <__memset+0x84>
    8000594c:	00600e93          	li	t4,6
    80005950:	e6dff06f          	j	800057bc <__memset+0x84>

0000000080005954 <__memmove>:
    80005954:	ff010113          	addi	sp,sp,-16
    80005958:	00813423          	sd	s0,8(sp)
    8000595c:	01010413          	addi	s0,sp,16
    80005960:	0e060863          	beqz	a2,80005a50 <__memmove+0xfc>
    80005964:	fff6069b          	addiw	a3,a2,-1
    80005968:	0006881b          	sext.w	a6,a3
    8000596c:	0ea5e863          	bltu	a1,a0,80005a5c <__memmove+0x108>
    80005970:	00758713          	addi	a4,a1,7
    80005974:	00a5e7b3          	or	a5,a1,a0
    80005978:	40a70733          	sub	a4,a4,a0
    8000597c:	0077f793          	andi	a5,a5,7
    80005980:	00f73713          	sltiu	a4,a4,15
    80005984:	00174713          	xori	a4,a4,1
    80005988:	0017b793          	seqz	a5,a5
    8000598c:	00e7f7b3          	and	a5,a5,a4
    80005990:	10078863          	beqz	a5,80005aa0 <__memmove+0x14c>
    80005994:	00900793          	li	a5,9
    80005998:	1107f463          	bgeu	a5,a6,80005aa0 <__memmove+0x14c>
    8000599c:	0036581b          	srliw	a6,a2,0x3
    800059a0:	fff8081b          	addiw	a6,a6,-1
    800059a4:	02081813          	slli	a6,a6,0x20
    800059a8:	01d85893          	srli	a7,a6,0x1d
    800059ac:	00858813          	addi	a6,a1,8
    800059b0:	00058793          	mv	a5,a1
    800059b4:	00050713          	mv	a4,a0
    800059b8:	01088833          	add	a6,a7,a6
    800059bc:	0007b883          	ld	a7,0(a5)
    800059c0:	00878793          	addi	a5,a5,8
    800059c4:	00870713          	addi	a4,a4,8
    800059c8:	ff173c23          	sd	a7,-8(a4)
    800059cc:	ff0798e3          	bne	a5,a6,800059bc <__memmove+0x68>
    800059d0:	ff867713          	andi	a4,a2,-8
    800059d4:	02071793          	slli	a5,a4,0x20
    800059d8:	0207d793          	srli	a5,a5,0x20
    800059dc:	00f585b3          	add	a1,a1,a5
    800059e0:	40e686bb          	subw	a3,a3,a4
    800059e4:	00f507b3          	add	a5,a0,a5
    800059e8:	06e60463          	beq	a2,a4,80005a50 <__memmove+0xfc>
    800059ec:	0005c703          	lbu	a4,0(a1)
    800059f0:	00e78023          	sb	a4,0(a5)
    800059f4:	04068e63          	beqz	a3,80005a50 <__memmove+0xfc>
    800059f8:	0015c603          	lbu	a2,1(a1)
    800059fc:	00100713          	li	a4,1
    80005a00:	00c780a3          	sb	a2,1(a5)
    80005a04:	04e68663          	beq	a3,a4,80005a50 <__memmove+0xfc>
    80005a08:	0025c603          	lbu	a2,2(a1)
    80005a0c:	00200713          	li	a4,2
    80005a10:	00c78123          	sb	a2,2(a5)
    80005a14:	02e68e63          	beq	a3,a4,80005a50 <__memmove+0xfc>
    80005a18:	0035c603          	lbu	a2,3(a1)
    80005a1c:	00300713          	li	a4,3
    80005a20:	00c781a3          	sb	a2,3(a5)
    80005a24:	02e68663          	beq	a3,a4,80005a50 <__memmove+0xfc>
    80005a28:	0045c603          	lbu	a2,4(a1)
    80005a2c:	00400713          	li	a4,4
    80005a30:	00c78223          	sb	a2,4(a5)
    80005a34:	00e68e63          	beq	a3,a4,80005a50 <__memmove+0xfc>
    80005a38:	0055c603          	lbu	a2,5(a1)
    80005a3c:	00500713          	li	a4,5
    80005a40:	00c782a3          	sb	a2,5(a5)
    80005a44:	00e68663          	beq	a3,a4,80005a50 <__memmove+0xfc>
    80005a48:	0065c703          	lbu	a4,6(a1)
    80005a4c:	00e78323          	sb	a4,6(a5)
    80005a50:	00813403          	ld	s0,8(sp)
    80005a54:	01010113          	addi	sp,sp,16
    80005a58:	00008067          	ret
    80005a5c:	02061713          	slli	a4,a2,0x20
    80005a60:	02075713          	srli	a4,a4,0x20
    80005a64:	00e587b3          	add	a5,a1,a4
    80005a68:	f0f574e3          	bgeu	a0,a5,80005970 <__memmove+0x1c>
    80005a6c:	02069613          	slli	a2,a3,0x20
    80005a70:	02065613          	srli	a2,a2,0x20
    80005a74:	fff64613          	not	a2,a2
    80005a78:	00e50733          	add	a4,a0,a4
    80005a7c:	00c78633          	add	a2,a5,a2
    80005a80:	fff7c683          	lbu	a3,-1(a5)
    80005a84:	fff78793          	addi	a5,a5,-1
    80005a88:	fff70713          	addi	a4,a4,-1
    80005a8c:	00d70023          	sb	a3,0(a4)
    80005a90:	fec798e3          	bne	a5,a2,80005a80 <__memmove+0x12c>
    80005a94:	00813403          	ld	s0,8(sp)
    80005a98:	01010113          	addi	sp,sp,16
    80005a9c:	00008067          	ret
    80005aa0:	02069713          	slli	a4,a3,0x20
    80005aa4:	02075713          	srli	a4,a4,0x20
    80005aa8:	00170713          	addi	a4,a4,1
    80005aac:	00e50733          	add	a4,a0,a4
    80005ab0:	00050793          	mv	a5,a0
    80005ab4:	0005c683          	lbu	a3,0(a1)
    80005ab8:	00178793          	addi	a5,a5,1
    80005abc:	00158593          	addi	a1,a1,1
    80005ac0:	fed78fa3          	sb	a3,-1(a5)
    80005ac4:	fee798e3          	bne	a5,a4,80005ab4 <__memmove+0x160>
    80005ac8:	f89ff06f          	j	80005a50 <__memmove+0xfc>

0000000080005acc <__putc>:
    80005acc:	fe010113          	addi	sp,sp,-32
    80005ad0:	00813823          	sd	s0,16(sp)
    80005ad4:	00113c23          	sd	ra,24(sp)
    80005ad8:	02010413          	addi	s0,sp,32
    80005adc:	00050793          	mv	a5,a0
    80005ae0:	fef40593          	addi	a1,s0,-17
    80005ae4:	00100613          	li	a2,1
    80005ae8:	00000513          	li	a0,0
    80005aec:	fef407a3          	sb	a5,-17(s0)
    80005af0:	fffff097          	auipc	ra,0xfffff
    80005af4:	b3c080e7          	jalr	-1220(ra) # 8000462c <console_write>
    80005af8:	01813083          	ld	ra,24(sp)
    80005afc:	01013403          	ld	s0,16(sp)
    80005b00:	02010113          	addi	sp,sp,32
    80005b04:	00008067          	ret

0000000080005b08 <__getc>:
    80005b08:	fe010113          	addi	sp,sp,-32
    80005b0c:	00813823          	sd	s0,16(sp)
    80005b10:	00113c23          	sd	ra,24(sp)
    80005b14:	02010413          	addi	s0,sp,32
    80005b18:	fe840593          	addi	a1,s0,-24
    80005b1c:	00100613          	li	a2,1
    80005b20:	00000513          	li	a0,0
    80005b24:	fffff097          	auipc	ra,0xfffff
    80005b28:	ae8080e7          	jalr	-1304(ra) # 8000460c <console_read>
    80005b2c:	fe844503          	lbu	a0,-24(s0)
    80005b30:	01813083          	ld	ra,24(sp)
    80005b34:	01013403          	ld	s0,16(sp)
    80005b38:	02010113          	addi	sp,sp,32
    80005b3c:	00008067          	ret

0000000080005b40 <console_handler>:
    80005b40:	fe010113          	addi	sp,sp,-32
    80005b44:	00813823          	sd	s0,16(sp)
    80005b48:	00113c23          	sd	ra,24(sp)
    80005b4c:	00913423          	sd	s1,8(sp)
    80005b50:	02010413          	addi	s0,sp,32
    80005b54:	14202773          	csrr	a4,scause
    80005b58:	100027f3          	csrr	a5,sstatus
    80005b5c:	0027f793          	andi	a5,a5,2
    80005b60:	06079e63          	bnez	a5,80005bdc <console_handler+0x9c>
    80005b64:	00074c63          	bltz	a4,80005b7c <console_handler+0x3c>
    80005b68:	01813083          	ld	ra,24(sp)
    80005b6c:	01013403          	ld	s0,16(sp)
    80005b70:	00813483          	ld	s1,8(sp)
    80005b74:	02010113          	addi	sp,sp,32
    80005b78:	00008067          	ret
    80005b7c:	0ff77713          	andi	a4,a4,255
    80005b80:	00900793          	li	a5,9
    80005b84:	fef712e3          	bne	a4,a5,80005b68 <console_handler+0x28>
    80005b88:	ffffe097          	auipc	ra,0xffffe
    80005b8c:	6dc080e7          	jalr	1756(ra) # 80004264 <plic_claim>
    80005b90:	00a00793          	li	a5,10
    80005b94:	00050493          	mv	s1,a0
    80005b98:	02f50c63          	beq	a0,a5,80005bd0 <console_handler+0x90>
    80005b9c:	fc0506e3          	beqz	a0,80005b68 <console_handler+0x28>
    80005ba0:	00050593          	mv	a1,a0
    80005ba4:	00000517          	auipc	a0,0x0
    80005ba8:	65c50513          	addi	a0,a0,1628 # 80006200 <CONSOLE_STATUS+0x1f0>
    80005bac:	fffff097          	auipc	ra,0xfffff
    80005bb0:	afc080e7          	jalr	-1284(ra) # 800046a8 <__printf>
    80005bb4:	01013403          	ld	s0,16(sp)
    80005bb8:	01813083          	ld	ra,24(sp)
    80005bbc:	00048513          	mv	a0,s1
    80005bc0:	00813483          	ld	s1,8(sp)
    80005bc4:	02010113          	addi	sp,sp,32
    80005bc8:	ffffe317          	auipc	t1,0xffffe
    80005bcc:	6d430067          	jr	1748(t1) # 8000429c <plic_complete>
    80005bd0:	fffff097          	auipc	ra,0xfffff
    80005bd4:	3e0080e7          	jalr	992(ra) # 80004fb0 <uartintr>
    80005bd8:	fddff06f          	j	80005bb4 <console_handler+0x74>
    80005bdc:	00000517          	auipc	a0,0x0
    80005be0:	72450513          	addi	a0,a0,1828 # 80006300 <digits+0x78>
    80005be4:	fffff097          	auipc	ra,0xfffff
    80005be8:	a68080e7          	jalr	-1432(ra) # 8000464c <panic>
	...
