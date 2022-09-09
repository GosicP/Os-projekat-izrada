
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	aa013103          	ld	sp,-1376(sp) # 80006aa0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	134030ef          	jal	ra,80003150 <start>

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
    800011a4:	4c4000ef          	jal	ra,80001668 <_ZN5RiscV20handleSupervisorTrapEv>

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

00000000800013ec <_Z41__static_initialization_and_destruction_0ii>:

bool Queue::isEmpty() {
    if(queue.listEmpty()==true){
        return true;
    }else{return false;}
}
    800013ec:	ff010113          	addi	sp,sp,-16
    800013f0:	00813423          	sd	s0,8(sp)
    800013f4:	01010413          	addi	s0,sp,16
    800013f8:	00100793          	li	a5,1
    800013fc:	00f50863          	beq	a0,a5,8000140c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret
    8000140c:	000107b7          	lui	a5,0x10
    80001410:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001414:	fef596e3          	bne	a1,a5,80001400 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    80001418:	00005797          	auipc	a5,0x5
    8000141c:	71878793          	addi	a5,a5,1816 # 80006b30 <_ZN5Queue5queueE>
    80001420:	0007b023          	sd	zero,0(a5)
    80001424:	0007b423          	sd	zero,8(a5)
    80001428:	fd9ff06f          	j	80001400 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000142c <_ZN5Queue3putEP3TCB>:
void Queue::put(TCB *thread) {
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00813423          	sd	s0,8(sp)
    80001434:	01010413          	addi	s0,sp,16

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001438:	00005797          	auipc	a5,0x5
    8000143c:	6807b783          	ld	a5,1664(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001440:	0007b783          	ld	a5,0(a5)
    80001444:	0c078a63          	beqz	a5,80001518 <_ZN5Queue3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80001448:	00005717          	auipc	a4,0x5
    8000144c:	67073703          	ld	a4,1648(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001450:	00073683          	ld	a3,0(a4)
    80001454:	0006b683          	ld	a3,0(a3)
    80001458:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    8000145c:	00073703          	ld	a4,0(a4)
    80001460:	00873603          	ld	a2,8(a4)
    80001464:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001468:	0107b703          	ld	a4,16(a5)
    8000146c:	03f00593          	li	a1,63
    80001470:	02e5f663          	bgeu	a1,a4,8000149c <_ZN5Queue3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001474:	fc070713          	addi	a4,a4,-64
    80001478:	01800593          	li	a1,24
    8000147c:	02e5ec63          	bltu	a1,a4,800014b4 <_ZN5Queue3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001480:	02060263          	beqz	a2,800014a4 <_ZN5Queue3putEP3TCB+0x78>
    80001484:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80001488:	0007b703          	ld	a4,0(a5)
    8000148c:	08070663          	beqz	a4,80001518 <_ZN5Queue3putEP3TCB+0xec>
    80001490:	0087b683          	ld	a3,8(a5)
    80001494:	00d73423          	sd	a3,8(a4)
                return cur;
    80001498:	0800006f          	j	80001518 <_ZN5Queue3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000149c:	00068793          	mv	a5,a3
    800014a0:	fa5ff06f          	j	80001444 <_ZN5Queue3putEP3TCB+0x18>
                else fmem_head = cur->next;
    800014a4:	00005717          	auipc	a4,0x5
    800014a8:	61473703          	ld	a4,1556(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800014ac:	00d73023          	sd	a3,0(a4)
    800014b0:	fd9ff06f          	j	80001488 <_ZN5Queue3putEP3TCB+0x5c>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800014b4:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    800014b8:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800014bc:	0407b023          	sd	zero,64(a5)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800014c0:	0087b683          	ld	a3,8(a5)
    800014c4:	08068063          	beqz	a3,80001544 <_ZN5Queue3putEP3TCB+0x118>
    800014c8:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800014cc:	0007b683          	ld	a3,0(a5)
    800014d0:	00068463          	beqz	a3,800014d8 <_ZN5Queue3putEP3TCB+0xac>
    800014d4:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800014d8:	0087b603          	ld	a2,8(a5)
    800014dc:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800014e0:	0007b683          	ld	a3,0(a5)
    800014e4:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800014e8:	0107b783          	ld	a5,16(a5)
    800014ec:	fc078793          	addi	a5,a5,-64
    800014f0:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800014f4:	0c070693          	addi	a3,a4,192
    800014f8:	00005597          	auipc	a1,0x5
    800014fc:	5c05b583          	ld	a1,1472(a1) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001500:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001504:	00073583          	ld	a1,0(a4)
    80001508:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    8000150c:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001510:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001514:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    80001518:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    8000151c:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001520:	00005717          	auipc	a4,0x5
    80001524:	61873703          	ld	a4,1560(a4) # 80006b38 <_ZN5Queue5queueE+0x8>
    80001528:	02070863          	beqz	a4,80001558 <_ZN5Queue3putEP3TCB+0x12c>
            tail->next=elem;
    8000152c:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001530:	00005717          	auipc	a4,0x5
    80001534:	60f73423          	sd	a5,1544(a4) # 80006b38 <_ZN5Queue5queueE+0x8>
}
    80001538:	00813403          	ld	s0,8(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001544:	0c070693          	addi	a3,a4,192
    80001548:	00005617          	auipc	a2,0x5
    8000154c:	57063603          	ld	a2,1392(a2) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001550:	00d63023          	sd	a3,0(a2)
    80001554:	f79ff06f          	j	800014cc <_ZN5Queue3putEP3TCB+0xa0>
        }else{
            head=tail=elem;
    80001558:	00005717          	auipc	a4,0x5
    8000155c:	5d870713          	addi	a4,a4,1496 # 80006b30 <_ZN5Queue5queueE>
    80001560:	00f73423          	sd	a5,8(a4)
    80001564:	00f73023          	sd	a5,0(a4)
    80001568:	fd1ff06f          	j	80001538 <_ZN5Queue3putEP3TCB+0x10c>

000000008000156c <_ZN5Queue3getEv>:
    {
    8000156c:	fe010113          	addi	sp,sp,-32
    80001570:	00113c23          	sd	ra,24(sp)
    80001574:	00813823          	sd	s0,16(sp)
    80001578:	00913423          	sd	s1,8(sp)
    8000157c:	02010413          	addi	s0,sp,32
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001580:	00005517          	auipc	a0,0x5
    80001584:	5b053503          	ld	a0,1456(a0) # 80006b30 <_ZN5Queue5queueE>
    80001588:	04050263          	beqz	a0,800015cc <_ZN5Queue3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    8000158c:	00853783          	ld	a5,8(a0)
    80001590:	00005717          	auipc	a4,0x5
    80001594:	5af73023          	sd	a5,1440(a4) # 80006b30 <_ZN5Queue5queueE>
        if(!head) {
    80001598:	02078463          	beqz	a5,800015c0 <_ZN5Queue3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    8000159c:	00053483          	ld	s1,0(a0)
        delete elem;
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	7cc080e7          	jalr	1996(ra) # 80002d6c <_ZdlPv>
    }
    800015a8:	00048513          	mv	a0,s1
    800015ac:	01813083          	ld	ra,24(sp)
    800015b0:	01013403          	ld	s0,16(sp)
    800015b4:	00813483          	ld	s1,8(sp)
    800015b8:	02010113          	addi	sp,sp,32
    800015bc:	00008067          	ret
            tail = 0;
    800015c0:	00005797          	auipc	a5,0x5
    800015c4:	5607bc23          	sd	zero,1400(a5) # 80006b38 <_ZN5Queue5queueE+0x8>
    800015c8:	fd5ff06f          	j	8000159c <_ZN5Queue3getEv+0x30>
        if (!head) {return 0;}
    800015cc:	00050493          	mv	s1,a0
        return thread;
    800015d0:	fd9ff06f          	j	800015a8 <_ZN5Queue3getEv+0x3c>

00000000800015d4 <_ZN5Queue7isEmptyEv>:
bool Queue::isEmpty() {
    800015d4:	ff010113          	addi	sp,sp,-16
    800015d8:	00813423          	sd	s0,8(sp)
    800015dc:	01010413          	addi	s0,sp,16
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    800015e0:	00005797          	auipc	a5,0x5
    800015e4:	5507b783          	ld	a5,1360(a5) # 80006b30 <_ZN5Queue5queueE>
    800015e8:	00078e63          	beqz	a5,80001604 <_ZN5Queue7isEmptyEv+0x30>
        return head->data;
    800015ec:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    800015f0:	00078e63          	beqz	a5,8000160c <_ZN5Queue7isEmptyEv+0x38>
    }else{return false;}
    800015f4:	00000513          	li	a0,0
}
    800015f8:	00813403          	ld	s0,8(sp)
    800015fc:	01010113          	addi	sp,sp,16
    80001600:	00008067          	ret
        return true;
    80001604:	00100513          	li	a0,1
    80001608:	ff1ff06f          	j	800015f8 <_ZN5Queue7isEmptyEv+0x24>
    8000160c:	00100513          	li	a0,1
    80001610:	fe9ff06f          	j	800015f8 <_ZN5Queue7isEmptyEv+0x24>

0000000080001614 <_GLOBAL__sub_I__ZN5Queue5queueE>:
}
    80001614:	ff010113          	addi	sp,sp,-16
    80001618:	00113423          	sd	ra,8(sp)
    8000161c:	00813023          	sd	s0,0(sp)
    80001620:	01010413          	addi	s0,sp,16
    80001624:	000105b7          	lui	a1,0x10
    80001628:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000162c:	00100513          	li	a0,1
    80001630:	00000097          	auipc	ra,0x0
    80001634:	dbc080e7          	jalr	-580(ra) # 800013ec <_Z41__static_initialization_and_destruction_0ii>
    80001638:	00813083          	ld	ra,8(sp)
    8000163c:	00013403          	ld	s0,0(sp)
    80001640:	01010113          	addi	sp,sp,16
    80001644:	00008067          	ret

0000000080001648 <_ZN5RiscV10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"


void RiscV::popSppSpie() {
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00813423          	sd	s0,8(sp)
    80001650:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001654:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001658:	10200073          	sret
}
    8000165c:	00813403          	ld	s0,8(sp)
    80001660:	01010113          	addi	sp,sp,16
    80001664:	00008067          	ret

0000000080001668 <_ZN5RiscV20handleSupervisorTrapEv>:

void RiscV::handleSupervisorTrap() {
    80001668:	fb010113          	addi	sp,sp,-80
    8000166c:	04113423          	sd	ra,72(sp)
    80001670:	04813023          	sd	s0,64(sp)
    80001674:	05010413          	addi	s0,sp,80
    volatile uint64 size;
    volatile uint64 handle;
    volatile uint64 start_routine;
    volatile uint64 arg;
    volatile uint64 ptr;
    __asm__ volatile("sd a3, %0" : "=m"(arg));
    80001678:	fcd43823          	sd	a3,-48(s0)
    __asm__ volatile("sd a2, %0" : "=m"(start_routine));
    8000167c:	fcc43c23          	sd	a2,-40(s0)
    __asm__ volatile("sd a1, %0" : "=m"(handle));
    80001680:	feb43023          	sd	a1,-32(s0)
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    80001684:	142027f3          	csrr	a5,scause
    80001688:	faf43823          	sd	a5,-80(s0)
    return scause;
    8000168c:	fb043703          	ld	a4,-80(s0)

}

inline uint64 RiscV::r_sepc(){
    uint64  sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001690:	141027f3          	csrr	a5,sepc
    //__asm__ volatile("sd a1, %0" : "=m"(size));
    //__asm__ volatile("sd a1, %0" : "=m"(ptr));
    uint64 sysCallNr;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    80001694:	00478793          	addi	a5,a5,4
    80001698:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64 sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    8000169c:	100027f3          	csrr	a5,sstatus
    volatile uint64 sstatus = r_sstatus();
    800016a0:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    800016a4:	00050793          	mv	a5,a0
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
    800016a8:	ff870613          	addi	a2,a4,-8
    800016ac:	00100693          	li	a3,1
    800016b0:	02c6f863          	bgeu	a3,a2,800016e0 <_ZN5RiscV20handleSupervisorTrapEv+0x78>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    800016b4:	fff00793          	li	a5,-1
    800016b8:	03f79793          	slli	a5,a5,0x3f
    800016bc:	00178793          	addi	a5,a5,1
    800016c0:	38f70063          	beq	a4,a5,80001a40 <_ZN5RiscV20handleSupervisorTrapEv+0x3d8>
        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    800016c4:	fff00793          	li	a5,-1
    800016c8:	03f79793          	slli	a5,a5,0x3f
    800016cc:	00978793          	addi	a5,a5,9
    800016d0:	18f71063          	bne	a4,a5,80001850 <_ZN5RiscV20handleSupervisorTrapEv+0x1e8>
        //supervisor external interrupt (console)
        console_handler();
    800016d4:	00004097          	auipc	ra,0x4
    800016d8:	bac080e7          	jalr	-1108(ra) # 80005280 <console_handler>
        //print (scause)
        //print sepc
        //print sval

    }
    800016dc:	1740006f          	j	80001850 <_ZN5RiscV20handleSupervisorTrapEv+0x1e8>
        if (sysCallNr == 0x01UL) {
    800016e0:	00100713          	li	a4,1
    800016e4:	04e78e63          	beq	a5,a4,80001740 <_ZN5RiscV20handleSupervisorTrapEv+0xd8>
        } else if (sysCallNr == 0x02UL) {
    800016e8:	00200713          	li	a4,2
    800016ec:	18e78463          	beq	a5,a4,80001874 <_ZN5RiscV20handleSupervisorTrapEv+0x20c>
        }else if(sysCallNr == 0x11UL){
    800016f0:	01100713          	li	a4,17
    800016f4:	2ae78063          	beq	a5,a4,80001994 <_ZN5RiscV20handleSupervisorTrapEv+0x32c>
        }else if(sysCallNr == 0x12UL){
    800016f8:	01200713          	li	a4,18
    800016fc:	2ae78c63          	beq	a5,a4,800019b4 <_ZN5RiscV20handleSupervisorTrapEv+0x34c>
        }else if(sysCallNr == 0x13UL){
    80001700:	01300713          	li	a4,19
    80001704:	2ee78063          	beq	a5,a4,800019e4 <_ZN5RiscV20handleSupervisorTrapEv+0x37c>
        }else if(sysCallNr == 0x21UL){
    80001708:	02100713          	li	a4,33
    8000170c:	2ee78263          	beq	a5,a4,800019f0 <_ZN5RiscV20handleSupervisorTrapEv+0x388>
        }else if(sysCallNr == 0x22UL){
    80001710:	02200713          	li	a4,34
    80001714:	2ee78e63          	beq	a5,a4,80001a10 <_ZN5RiscV20handleSupervisorTrapEv+0x3a8>
        }else if(sysCallNr == 0x23UL){
    80001718:	02300713          	li	a4,35
    8000171c:	30e78663          	beq	a5,a4,80001a28 <_ZN5RiscV20handleSupervisorTrapEv+0x3c0>
        }else if(sysCallNr == 0x24UL){
    80001720:	02400713          	li	a4,36
    80001724:	10e79e63          	bne	a5,a4,80001840 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
            int retval = semaphore::semSignal((sem_t)handle);
    80001728:	fe043503          	ld	a0,-32(s0)
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	8e4080e7          	jalr	-1820(ra) # 80002010 <_ZN9semaphore9semSignalEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001734:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001738:	04b43c23          	sd	a1,88(s0)
    8000173c:	1040006f          	j	80001840 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
    80001740:	00058793          	mv	a5,a1
    80001744:	fef43423          	sd	a5,-24(s0)
            void* pointer=MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks((size_t)size)); //gore imas da pretvoris u bytes to blocks
    80001748:	fe843783          	ld	a5,-24(s0)

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000174c:	05778793          	addi	a5,a5,87
    80001750:	0067d793          	srli	a5,a5,0x6
    80001754:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80001758:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000175c:	00005717          	auipc	a4,0x5
    80001760:	35c73703          	ld	a4,860(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001764:	00073703          	ld	a4,0(a4)
    80001768:	0c070863          	beqz	a4,80001838 <_ZN5RiscV20handleSupervisorTrapEv+0x1d0>
            cur->next=fmem_head->next;
    8000176c:	00005697          	auipc	a3,0x5
    80001770:	34c6b683          	ld	a3,844(a3) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001774:	0006b603          	ld	a2,0(a3)
    80001778:	00063603          	ld	a2,0(a2)
    8000177c:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    80001780:	0006b683          	ld	a3,0(a3)
    80001784:	0086b583          	ld	a1,8(a3)
    80001788:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    8000178c:	01073683          	ld	a3,16(a4)
    80001790:	02f6e663          	bltu	a3,a5,800017bc <_ZN5RiscV20handleSupervisorTrapEv+0x154>
            if (cur->size-size<=sizeof(FreeMem)){
    80001794:	40f686b3          	sub	a3,a3,a5
    80001798:	01800513          	li	a0,24
    8000179c:	02d56c63          	bltu	a0,a3,800017d4 <_ZN5RiscV20handleSupervisorTrapEv+0x16c>
                if (cur->prev) cur->prev->next = cur->next;
    800017a0:	02058263          	beqz	a1,800017c4 <_ZN5RiscV20handleSupervisorTrapEv+0x15c>
    800017a4:	00c5b023          	sd	a2,0(a1)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    800017a8:	00073783          	ld	a5,0(a4)
    800017ac:	08078663          	beqz	a5,80001838 <_ZN5RiscV20handleSupervisorTrapEv+0x1d0>
    800017b0:	00873683          	ld	a3,8(a4)
    800017b4:	00d7b423          	sd	a3,8(a5)
                return cur;
    800017b8:	0800006f          	j	80001838 <_ZN5RiscV20handleSupervisorTrapEv+0x1d0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800017bc:	00060713          	mv	a4,a2
    800017c0:	fa9ff06f          	j	80001768 <_ZN5RiscV20handleSupervisorTrapEv+0x100>
                else fmem_head = cur->next;
    800017c4:	00005797          	auipc	a5,0x5
    800017c8:	2f47b783          	ld	a5,756(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017cc:	00c7b023          	sd	a2,0(a5)
    800017d0:	fd9ff06f          	j	800017a8 <_ZN5RiscV20handleSupervisorTrapEv+0x140>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800017d4:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    800017d8:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    800017dc:	0006b023          	sd	zero,0(a3)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800017e0:	00873603          	ld	a2,8(a4)
    800017e4:	06060e63          	beqz	a2,80001860 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
    800017e8:	00d63023          	sd	a3,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800017ec:	00073603          	ld	a2,0(a4)
    800017f0:	00060463          	beqz	a2,800017f8 <_ZN5RiscV20handleSupervisorTrapEv+0x190>
    800017f4:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    800017f8:	00873603          	ld	a2,8(a4)
    800017fc:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    80001800:	00073583          	ld	a1,0(a4)
    80001804:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    80001808:	01073703          	ld	a4,16(a4)
    8000180c:	40f707b3          	sub	a5,a4,a5
    80001810:	00f6b823          	sd	a5,16(a3)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001814:	0c068713          	addi	a4,a3,192
    80001818:	00005597          	auipc	a1,0x5
    8000181c:	2a05b583          	ld	a1,672(a1) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001820:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    80001824:	0006b583          	ld	a1,0(a3)
    80001828:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    8000182c:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    80001830:	0cf6b823          	sd	a5,208(a3)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001834:	00068713          	mv	a4,a3
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
    80001838:	00070593          	mv	a1,a4
            __asm__ volatile("sd a1, 88(s0)");
    8000183c:	04b43c23          	sd	a1,88(s0)
        w_sstatus(sstatus);
    80001840:	fb843783          	ld	a5,-72(s0)
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 volatile sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    80001844:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001848:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    8000184c:	14179073          	csrw	sepc,a5
    80001850:	04813083          	ld	ra,72(sp)
    80001854:	04013403          	ld	s0,64(sp)
    80001858:	05010113          	addi	sp,sp,80
    8000185c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001860:	0c068613          	addi	a2,a3,192
    80001864:	00005597          	auipc	a1,0x5
    80001868:	2545b583          	ld	a1,596(a1) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000186c:	00c5b023          	sd	a2,0(a1)
    80001870:	f7dff06f          	j	800017ec <_ZN5RiscV20handleSupervisorTrapEv+0x184>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    80001874:	00058793          	mv	a5,a1
    80001878:	fcf43423          	sd	a5,-56(s0)
            int ret=MemoryAllocation::mem_free((void*)ptr);
    8000187c:	fc843703          	ld	a4,-56(s0)
        if(!fmem_head || ptr < (char*)fmem_head)
    80001880:	00005797          	auipc	a5,0x5
    80001884:	2387b783          	ld	a5,568(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001888:	0007b783          	ld	a5,0(a5)
    8000188c:	00078e63          	beqz	a5,800018a8 <_ZN5RiscV20handleSupervisorTrapEv+0x240>
    80001890:	02f76063          	bltu	a4,a5,800018b0 <_ZN5RiscV20handleSupervisorTrapEv+0x248>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001894:	00078693          	mv	a3,a5
    80001898:	0007b783          	ld	a5,0(a5)
    8000189c:	00f70c63          	beq	a4,a5,800018b4 <_ZN5RiscV20handleSupervisorTrapEv+0x24c>
    800018a0:	fee7eae3          	bltu	a5,a4,80001894 <_ZN5RiscV20handleSupervisorTrapEv+0x22c>
    800018a4:	0100006f          	j	800018b4 <_ZN5RiscV20handleSupervisorTrapEv+0x24c>
            cur=nullptr;
    800018a8:	00078693          	mv	a3,a5
    800018ac:	0080006f          	j	800018b4 <_ZN5RiscV20handleSupervisorTrapEv+0x24c>
    800018b0:	00000693          	li	a3,0
                newSeg->next=nullptr;
    800018b4:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    800018b8:	04000793          	li	a5,64
    800018bc:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    800018c0:	00d73423          	sd	a3,8(a4)
                if(cur) {
    800018c4:	06068263          	beqz	a3,80001928 <_ZN5RiscV20handleSupervisorTrapEv+0x2c0>
                    newSeg->next = cur->next;
    800018c8:	0006b783          	ld	a5,0(a3)
    800018cc:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    800018d0:	00073783          	ld	a5,0(a4)
    800018d4:	00078463          	beqz	a5,800018dc <_ZN5RiscV20handleSupervisorTrapEv+0x274>
                    newSeg->next->prev=newSeg;
    800018d8:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    800018dc:	06068063          	beqz	a3,8000193c <_ZN5RiscV20handleSupervisorTrapEv+0x2d4>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800018e0:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    800018e4:	00070c63          	beqz	a4,800018fc <_ZN5RiscV20handleSupervisorTrapEv+0x294>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800018e8:	00073783          	ld	a5,0(a4)
    800018ec:	00078863          	beqz	a5,800018fc <_ZN5RiscV20handleSupervisorTrapEv+0x294>
    800018f0:	01073603          	ld	a2,16(a4)
    800018f4:	00c705b3          	add	a1,a4,a2
    800018f8:	04b78a63          	beq	a5,a1,8000194c <_ZN5RiscV20handleSupervisorTrapEv+0x2e4>
        if (!curr) return;
    800018fc:	00068c63          	beqz	a3,80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x2ac>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001900:	0006b783          	ld	a5,0(a3)
    80001904:	00078863          	beqz	a5,80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x2ac>
    80001908:	0106b603          	ld	a2,16(a3)
    8000190c:	00c685b3          	add	a1,a3,a2
    80001910:	04b78e63          	beq	a5,a1,8000196c <_ZN5RiscV20handleSupervisorTrapEv+0x304>
            if(newSeg==nullptr){
    80001914:	06070c63          	beqz	a4,8000198c <_ZN5RiscV20handleSupervisorTrapEv+0x324>
            }else{return 0;}
    80001918:	00000793          	li	a5,0
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
    8000191c:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
    80001920:	04b43c23          	sd	a1,88(s0)
    80001924:	f1dff06f          	j	80001840 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
                    newSeg->next = fmem_head;
    80001928:	00005797          	auipc	a5,0x5
    8000192c:	1907b783          	ld	a5,400(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001930:	0007b783          	ld	a5,0(a5)
    80001934:	00f73023          	sd	a5,0(a4)
    80001938:	f99ff06f          	j	800018d0 <_ZN5RiscV20handleSupervisorTrapEv+0x268>
                    fmem_head = newSeg;
    8000193c:	00005797          	auipc	a5,0x5
    80001940:	17c7b783          	ld	a5,380(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001944:	00e7b023          	sd	a4,0(a5)
    80001948:	f9dff06f          	j	800018e4 <_ZN5RiscV20handleSupervisorTrapEv+0x27c>
            curr->size += curr->next->size;
    8000194c:	0107b583          	ld	a1,16(a5)
    80001950:	00b60633          	add	a2,a2,a1
    80001954:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    80001958:	0007b783          	ld	a5,0(a5)
    8000195c:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001960:	f8078ee3          	beqz	a5,800018fc <_ZN5RiscV20handleSupervisorTrapEv+0x294>
    80001964:	00e7b423          	sd	a4,8(a5)
    80001968:	f95ff06f          	j	800018fc <_ZN5RiscV20handleSupervisorTrapEv+0x294>
            curr->size += curr->next->size;
    8000196c:	0107b583          	ld	a1,16(a5)
    80001970:	00b60633          	add	a2,a2,a1
    80001974:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    80001978:	0007b783          	ld	a5,0(a5)
    8000197c:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    80001980:	f8078ae3          	beqz	a5,80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x2ac>
    80001984:	00d7b423          	sd	a3,8(a5)
    80001988:	f8dff06f          	j	80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x2ac>
                return -1;
    8000198c:	fff00793          	li	a5,-1
    80001990:	f8dff06f          	j	8000191c <_ZN5RiscV20handleSupervisorTrapEv+0x2b4>
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg);
    80001994:	fd843503          	ld	a0,-40(s0)
    80001998:	fe043583          	ld	a1,-32(s0)
    8000199c:	fd043603          	ld	a2,-48(s0)
    800019a0:	00001097          	auipc	ra,0x1
    800019a4:	de0080e7          	jalr	-544(ra) # 80002780 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    800019a8:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    800019ac:	04b43c23          	sd	a1,88(s0)
    800019b0:	e91ff06f          	j	80001840 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
    static int createThread(Body body, TCB** handle, void* arguments);

    static void thread_dispatch(){dispatch();}

    static int thread_exit(){
        running->setFinished(true);
    800019b4:	00100593          	li	a1,1
    800019b8:	00005797          	auipc	a5,0x5
    800019bc:	1087b783          	ld	a5,264(a5) # 80006ac0 <_GLOBAL_OFFSET_TABLE_+0x30>
    800019c0:	0007b503          	ld	a0,0(a5)
    800019c4:	00001097          	auipc	ra,0x1
    800019c8:	da0080e7          	jalr	-608(ra) # 80002764 <_ZN3TCB11setFinishedEb>
        dispatch();
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	0f8080e7          	jalr	248(ra) # 80002ac4 <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    800019d4:	00000793          	li	a5,0
    800019d8:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    800019dc:	04b43c23          	sd	a1,88(s0)
    800019e0:	e61ff06f          	j	80001840 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
    static void thread_dispatch(){dispatch();}
    800019e4:	00001097          	auipc	ra,0x1
    800019e8:	0e0080e7          	jalr	224(ra) # 80002ac4 <_ZN3TCB8dispatchEv>
    800019ec:	e55ff06f          	j	80001840 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
            int retval = semaphore::semOpen((sem_t*)handle, (unsigned)start_routine);
    800019f0:	fe043503          	ld	a0,-32(s0)
    800019f4:	fd843583          	ld	a1,-40(s0)
    800019f8:	0005859b          	sext.w	a1,a1
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	254080e7          	jalr	596(ra) # 80001c50 <_ZN9semaphore7semOpenEPPS_j>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001a04:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001a08:	04b43c23          	sd	a1,88(s0)
    80001a0c:	e35ff06f          	j	80001840 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
            int retval = semaphore::semClose((sem_t)handle);
    80001a10:	fe043503          	ld	a0,-32(s0)
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	45c080e7          	jalr	1116(ra) # 80001e70 <_ZN9semaphore8semCloseEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001a1c:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001a20:	04b43c23          	sd	a1,88(s0)
    80001a24:	e1dff06f          	j	80001840 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
            int retval = semaphore::semWait((sem_t)handle);
    80001a28:	fe043503          	ld	a0,-32(s0)
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	590080e7          	jalr	1424(ra) # 80001fbc <_ZN9semaphore7semWaitEPS_>
            __asm__ volatile("mv a1, %0": : [retval] "r"(retval) );
    80001a34:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001a38:	04b43c23          	sd	a1,88(s0)
    80001a3c:	e05ff06f          	j	80001840 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001a40:	00200793          	li	a5,2
    80001a44:	1447b073          	csrc	sip,a5
}
    80001a48:	e09ff06f          	j	80001850 <_ZN5RiscV20handleSupervisorTrapEv+0x1e8>

0000000080001a4c <_ZN9semaphore5blockEv>:
//

#include "../h/semaphore.hpp"
#include "../h/tcb.hpp"

void semaphore::block() {
    80001a4c:	fe010113          	addi	sp,sp,-32
    80001a50:	00113c23          	sd	ra,24(sp)
    80001a54:	00813823          	sd	s0,16(sp)
    80001a58:	00913423          	sd	s1,8(sp)
    80001a5c:	01213023          	sd	s2,0(sp)
    80001a60:	02010413          	addi	s0,sp,32
    80001a64:	00050913          	mv	s2,a0
        //setjmp je linija old=running;
        TCB *old = TCB::running;
    80001a68:	00005797          	auipc	a5,0x5
    80001a6c:	0587b783          	ld	a5,88(a5) # 80006ac0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a70:	0007b483          	ld	s1,0(a5)
        old->semBlocked=this;
    80001a74:	02a4b823          	sd	a0,48(s1)
        if (!old->isFinished()) {
    80001a78:	00048513          	mv	a0,s1
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	ccc080e7          	jalr	-820(ra) # 80002748 <_ZNK3TCB10isFinishedEv>
    80001a84:	04050063          	beqz	a0,80001ac4 <_ZN9semaphore5blockEv+0x78>
            blocked->addLast(old);
        }
        TCB::running = Scheduler::get();
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	628080e7          	jalr	1576(ra) # 800020b0 <_ZN9Scheduler3getEv>
    80001a90:	00005797          	auipc	a5,0x5
    80001a94:	0307b783          	ld	a5,48(a5) # 80006ac0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001a98:	00a7b023          	sd	a0,0(a5)


        TCB::contextSwitch(&old->context, &TCB::running->context);//TODO proveri ovaj dispatch da li je dobar, mislim da jeste, ali sada nemam mentalnih kapaciteta
    80001a9c:	01050593          	addi	a1,a0,16
    80001aa0:	01048513          	addi	a0,s1,16
    80001aa4:	fffff097          	auipc	ra,0xfffff
    80001aa8:	78c080e7          	jalr	1932(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
        //marinko kaze da je dobar ovaj block

        //TCB::running->semBlocked=this;
        //this->blocked->put(TCB::running);
        //TCB::dispatch();
}
    80001aac:	01813083          	ld	ra,24(sp)
    80001ab0:	01013403          	ld	s0,16(sp)
    80001ab4:	00813483          	ld	s1,8(sp)
    80001ab8:	00013903          	ld	s2,0(sp)
    80001abc:	02010113          	addi	sp,sp,32
    80001ac0:	00008067          	ret
            blocked->addLast(old);
    80001ac4:	00893583          	ld	a1,8(s2)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001ac8:	00005797          	auipc	a5,0x5
    80001acc:	ff07b783          	ld	a5,-16(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ad0:	0007b783          	ld	a5,0(a5)
    80001ad4:	0c078a63          	beqz	a5,80001ba8 <_ZN9semaphore5blockEv+0x15c>
            cur->next=fmem_head->next;
    80001ad8:	00005717          	auipc	a4,0x5
    80001adc:	fe073703          	ld	a4,-32(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ae0:	00073683          	ld	a3,0(a4)
    80001ae4:	0006b683          	ld	a3,0(a3)
    80001ae8:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001aec:	00073703          	ld	a4,0(a4)
    80001af0:	00873603          	ld	a2,8(a4)
    80001af4:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001af8:	0107b703          	ld	a4,16(a5)
    80001afc:	03f00513          	li	a0,63
    80001b00:	02e57663          	bgeu	a0,a4,80001b2c <_ZN9semaphore5blockEv+0xe0>
            if (cur->size-size<=sizeof(FreeMem)){
    80001b04:	fc070713          	addi	a4,a4,-64
    80001b08:	01800513          	li	a0,24
    80001b0c:	02e56c63          	bltu	a0,a4,80001b44 <_ZN9semaphore5blockEv+0xf8>
                if (cur->prev) cur->prev->next = cur->next;
    80001b10:	02060263          	beqz	a2,80001b34 <_ZN9semaphore5blockEv+0xe8>
    80001b14:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001b18:	0007b703          	ld	a4,0(a5)
    80001b1c:	08070663          	beqz	a4,80001ba8 <_ZN9semaphore5blockEv+0x15c>
    80001b20:	0087b683          	ld	a3,8(a5)
    80001b24:	00d73423          	sd	a3,8(a4)
                return cur;
    80001b28:	0800006f          	j	80001ba8 <_ZN9semaphore5blockEv+0x15c>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001b2c:	00068793          	mv	a5,a3
    80001b30:	fa5ff06f          	j	80001ad4 <_ZN9semaphore5blockEv+0x88>
                else fmem_head = cur->next;
    80001b34:	00005717          	auipc	a4,0x5
    80001b38:	f8473703          	ld	a4,-124(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b3c:	00d73023          	sd	a3,0(a4)
    80001b40:	fd9ff06f          	j	80001b18 <_ZN9semaphore5blockEv+0xcc>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001b44:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001b48:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001b4c:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001b50:	0087b683          	ld	a3,8(a5)
    80001b54:	06068863          	beqz	a3,80001bc4 <_ZN9semaphore5blockEv+0x178>
    80001b58:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001b5c:	0007b683          	ld	a3,0(a5)
    80001b60:	00068463          	beqz	a3,80001b68 <_ZN9semaphore5blockEv+0x11c>
    80001b64:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001b68:	0087b603          	ld	a2,8(a5)
    80001b6c:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001b70:	0007b683          	ld	a3,0(a5)
    80001b74:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001b78:	0107b783          	ld	a5,16(a5)
    80001b7c:	fc078793          	addi	a5,a5,-64
    80001b80:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001b84:	0c070693          	addi	a3,a4,192
    80001b88:	00005517          	auipc	a0,0x5
    80001b8c:	f3053503          	ld	a0,-208(a0) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001b90:	00d53023          	sd	a3,0(a0)
                fmem_head->next=newfrgm->next;
    80001b94:	00073503          	ld	a0,0(a4)
    80001b98:	0ca73023          	sd	a0,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001b9c:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001ba0:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001ba4:	00070793          	mv	a5,a4
        if(!tail) {tail=head;}
    }

    void addLast(T *data){
        Elem *elem = (Elem*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(Elem))); //TODO promeni na ne new alokaciju
        elem->data=data;
    80001ba8:	0097b023          	sd	s1,0(a5)
        elem->next=nullptr;
    80001bac:	0007b423          	sd	zero,8(a5)
        if (tail){
    80001bb0:	0085b703          	ld	a4,8(a1)
    80001bb4:	02070263          	beqz	a4,80001bd8 <_ZN9semaphore5blockEv+0x18c>
            tail->next=elem;
    80001bb8:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80001bbc:	00f5b423          	sd	a5,8(a1)
    80001bc0:	ec9ff06f          	j	80001a88 <_ZN9semaphore5blockEv+0x3c>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001bc4:	0c070693          	addi	a3,a4,192
    80001bc8:	00005617          	auipc	a2,0x5
    80001bcc:	ef063603          	ld	a2,-272(a2) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001bd0:	00d63023          	sd	a3,0(a2)
    80001bd4:	f89ff06f          	j	80001b5c <_ZN9semaphore5blockEv+0x110>
        }else{
            head=tail=elem;
    80001bd8:	00f5b423          	sd	a5,8(a1)
    80001bdc:	00f5b023          	sd	a5,0(a1)
    80001be0:	ea9ff06f          	j	80001a88 <_ZN9semaphore5blockEv+0x3c>

0000000080001be4 <_ZN9semaphore7unblockEv>:

void semaphore::unblock() {
    80001be4:	fe010113          	addi	sp,sp,-32
    80001be8:	00113c23          	sd	ra,24(sp)
    80001bec:	00813823          	sd	s0,16(sp)
    80001bf0:	00913423          	sd	s1,8(sp)
    80001bf4:	02010413          	addi	s0,sp,32
    TCB* t = blocked->removeFirst();
    80001bf8:	00853783          	ld	a5,8(a0)
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001bfc:	0007b503          	ld	a0,0(a5)
    80001c00:	04050463          	beqz	a0,80001c48 <_ZN9semaphore7unblockEv+0x64>
        Elem *elem = head;
        head = head->next;
    80001c04:	00853703          	ld	a4,8(a0)
    80001c08:	00e7b023          	sd	a4,0(a5)
        if(!head) {
    80001c0c:	02070a63          	beqz	a4,80001c40 <_ZN9semaphore7unblockEv+0x5c>
            tail = 0;
        }
        T* ret = elem->data;
    80001c10:	00053483          	ld	s1,0(a0)
        delete elem;
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	158080e7          	jalr	344(ra) # 80002d6c <_ZdlPv>
    t->semBlocked=nullptr;
    80001c1c:	0204b823          	sd	zero,48(s1)
    Scheduler::put(t);
    80001c20:	00048513          	mv	a0,s1
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	4f4080e7          	jalr	1268(ra) # 80002118 <_ZN9Scheduler3putEP3TCB>
}
    80001c2c:	01813083          	ld	ra,24(sp)
    80001c30:	01013403          	ld	s0,16(sp)
    80001c34:	00813483          	ld	s1,8(sp)
    80001c38:	02010113          	addi	sp,sp,32
    80001c3c:	00008067          	ret
            tail = 0;
    80001c40:	0007b423          	sd	zero,8(a5)
    80001c44:	fcdff06f          	j	80001c10 <_ZN9semaphore7unblockEv+0x2c>
        if (!head) {return 0;}
    80001c48:	00050493          	mv	s1,a0
    80001c4c:	fd1ff06f          	j	80001c1c <_ZN9semaphore7unblockEv+0x38>

0000000080001c50 <_ZN9semaphore7semOpenEPPS_j>:

int semaphore::semOpen(semaphore **handle, unsigned init) {
    80001c50:	ff010113          	addi	sp,sp,-16
    80001c54:	00813423          	sd	s0,8(sp)
    80001c58:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001c5c:	00005797          	auipc	a5,0x5
    80001c60:	e5c7b783          	ld	a5,-420(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c64:	0007b783          	ld	a5,0(a5)
    80001c68:	0c078a63          	beqz	a5,80001d3c <_ZN9semaphore7semOpenEPPS_j+0xec>
            cur->next=fmem_head->next;
    80001c6c:	00005717          	auipc	a4,0x5
    80001c70:	e4c73703          	ld	a4,-436(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c74:	00073683          	ld	a3,0(a4)
    80001c78:	0006b683          	ld	a3,0(a3)
    80001c7c:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001c80:	00073703          	ld	a4,0(a4)
    80001c84:	00873603          	ld	a2,8(a4)
    80001c88:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001c8c:	0107b703          	ld	a4,16(a5)
    80001c90:	03f00813          	li	a6,63
    80001c94:	02e87663          	bgeu	a6,a4,80001cc0 <_ZN9semaphore7semOpenEPPS_j+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80001c98:	fc070713          	addi	a4,a4,-64
    80001c9c:	01800813          	li	a6,24
    80001ca0:	02e86c63          	bltu	a6,a4,80001cd8 <_ZN9semaphore7semOpenEPPS_j+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80001ca4:	02060263          	beqz	a2,80001cc8 <_ZN9semaphore7semOpenEPPS_j+0x78>
    80001ca8:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001cac:	0007b703          	ld	a4,0(a5)
    80001cb0:	08070663          	beqz	a4,80001d3c <_ZN9semaphore7semOpenEPPS_j+0xec>
    80001cb4:	0087b683          	ld	a3,8(a5)
    80001cb8:	00d73423          	sd	a3,8(a4)
                return cur;
    80001cbc:	0800006f          	j	80001d3c <_ZN9semaphore7semOpenEPPS_j+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001cc0:	00068793          	mv	a5,a3
    80001cc4:	fa5ff06f          	j	80001c68 <_ZN9semaphore7semOpenEPPS_j+0x18>
                else fmem_head = cur->next;
    80001cc8:	00005717          	auipc	a4,0x5
    80001ccc:	df073703          	ld	a4,-528(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cd0:	00d73023          	sd	a3,0(a4)
    80001cd4:	fd9ff06f          	j	80001cac <_ZN9semaphore7semOpenEPPS_j+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001cd8:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001cdc:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001ce0:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001ce4:	0087b683          	ld	a3,8(a5)
    80001ce8:	0c068463          	beqz	a3,80001db0 <_ZN9semaphore7semOpenEPPS_j+0x160>
    80001cec:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001cf0:	0007b683          	ld	a3,0(a5)
    80001cf4:	00068463          	beqz	a3,80001cfc <_ZN9semaphore7semOpenEPPS_j+0xac>
    80001cf8:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001cfc:	0087b603          	ld	a2,8(a5)
    80001d00:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001d04:	0007b683          	ld	a3,0(a5)
    80001d08:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001d0c:	0107b783          	ld	a5,16(a5)
    80001d10:	fc078793          	addi	a5,a5,-64
    80001d14:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001d18:	0c070693          	addi	a3,a4,192
    80001d1c:	00005817          	auipc	a6,0x5
    80001d20:	d9c83803          	ld	a6,-612(a6) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d24:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80001d28:	00073803          	ld	a6,0(a4)
    80001d2c:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001d30:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001d34:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001d38:	00070793          	mv	a5,a4
    *handle=(semaphore*)MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(semaphore)));
    80001d3c:	00f53023          	sd	a5,0(a0)
    if (*handle==nullptr){
    80001d40:	12078463          	beqz	a5,80001e68 <_ZN9semaphore7semOpenEPPS_j+0x218>
        return -1;
    }
    (*handle)->val=init;
    80001d44:	00b7a023          	sw	a1,0(a5)
    (*handle)->blocked=(LinkedList<TCB>*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(LinkedList<TCB>)));
    80001d48:	00053503          	ld	a0,0(a0)
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001d4c:	00005797          	auipc	a5,0x5
    80001d50:	d6c7b783          	ld	a5,-660(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d54:	0007b783          	ld	a5,0(a5)
    80001d58:	0e078463          	beqz	a5,80001e40 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
            cur->next=fmem_head->next;
    80001d5c:	00005717          	auipc	a4,0x5
    80001d60:	d5c73703          	ld	a4,-676(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001d64:	00073683          	ld	a3,0(a4)
    80001d68:	0006b683          	ld	a3,0(a3)
    80001d6c:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80001d70:	00073703          	ld	a4,0(a4)
    80001d74:	00873603          	ld	a2,8(a4)
    80001d78:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80001d7c:	0107b703          	ld	a4,16(a5)
    80001d80:	03f00593          	li	a1,63
    80001d84:	04e5f063          	bgeu	a1,a4,80001dc4 <_ZN9semaphore7semOpenEPPS_j+0x174>
            if (cur->size-size<=sizeof(FreeMem)){
    80001d88:	fc070713          	addi	a4,a4,-64
    80001d8c:	01800593          	li	a1,24
    80001d90:	04e5e663          	bltu	a1,a4,80001ddc <_ZN9semaphore7semOpenEPPS_j+0x18c>
                if (cur->prev) cur->prev->next = cur->next;
    80001d94:	02060c63          	beqz	a2,80001dcc <_ZN9semaphore7semOpenEPPS_j+0x17c>
    80001d98:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001d9c:	0007b703          	ld	a4,0(a5)
    80001da0:	0a070063          	beqz	a4,80001e40 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
    80001da4:	0087b683          	ld	a3,8(a5)
    80001da8:	00d73423          	sd	a3,8(a4)
                return cur;
    80001dac:	0940006f          	j	80001e40 <_ZN9semaphore7semOpenEPPS_j+0x1f0>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001db0:	0c070693          	addi	a3,a4,192
    80001db4:	00005617          	auipc	a2,0x5
    80001db8:	d0463603          	ld	a2,-764(a2) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001dbc:	00d63023          	sd	a3,0(a2)
    80001dc0:	f31ff06f          	j	80001cf0 <_ZN9semaphore7semOpenEPPS_j+0xa0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001dc4:	00068793          	mv	a5,a3
    80001dc8:	f91ff06f          	j	80001d58 <_ZN9semaphore7semOpenEPPS_j+0x108>
                else fmem_head = cur->next;
    80001dcc:	00005717          	auipc	a4,0x5
    80001dd0:	cec73703          	ld	a4,-788(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001dd4:	00d73023          	sd	a3,0(a4)
    80001dd8:	fc5ff06f          	j	80001d9c <_ZN9semaphore7semOpenEPPS_j+0x14c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001ddc:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    80001de0:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001de4:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80001de8:	0087b683          	ld	a3,8(a5)
    80001dec:	06068463          	beqz	a3,80001e54 <_ZN9semaphore7semOpenEPPS_j+0x204>
    80001df0:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80001df4:	0007b683          	ld	a3,0(a5)
    80001df8:	00068463          	beqz	a3,80001e00 <_ZN9semaphore7semOpenEPPS_j+0x1b0>
    80001dfc:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001e00:	0087b603          	ld	a2,8(a5)
    80001e04:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001e08:	0007b683          	ld	a3,0(a5)
    80001e0c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001e10:	0107b783          	ld	a5,16(a5)
    80001e14:	fc078793          	addi	a5,a5,-64
    80001e18:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001e1c:	0c070693          	addi	a3,a4,192
    80001e20:	00005597          	auipc	a1,0x5
    80001e24:	c985b583          	ld	a1,-872(a1) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e28:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001e2c:	00073583          	ld	a1,0(a4)
    80001e30:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001e34:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001e38:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001e3c:	00070793          	mv	a5,a4
    80001e40:	00f53423          	sd	a5,8(a0)
    return  0;
    80001e44:	00000513          	li	a0,0
}
    80001e48:	00813403          	ld	s0,8(sp)
    80001e4c:	01010113          	addi	sp,sp,16
    80001e50:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001e54:	0c070693          	addi	a3,a4,192
    80001e58:	00005617          	auipc	a2,0x5
    80001e5c:	c6063603          	ld	a2,-928(a2) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e60:	00d63023          	sd	a3,0(a2)
    80001e64:	f91ff06f          	j	80001df4 <_ZN9semaphore7semOpenEPPS_j+0x1a4>
        return -1;
    80001e68:	fff00513          	li	a0,-1
    80001e6c:	fddff06f          	j	80001e48 <_ZN9semaphore7semOpenEPPS_j+0x1f8>

0000000080001e70 <_ZN9semaphore8semCloseEPS_>:

int semaphore::semClose(semaphore *semID) {
    80001e70:	fe010113          	addi	sp,sp,-32
    80001e74:	00113c23          	sd	ra,24(sp)
    80001e78:	00813823          	sd	s0,16(sp)
    80001e7c:	00913423          	sd	s1,8(sp)
    80001e80:	02010413          	addi	s0,sp,32
    80001e84:	00050493          	mv	s1,a0
    while(((semID)->blocked->listEmpty())==false){
    80001e88:	0084b783          	ld	a5,8(s1)
        return ret;
    }

    T* peekFirst(){
        if (!head) {return 0;}
    80001e8c:	0007b783          	ld	a5,0(a5)
    80001e90:	00078e63          	beqz	a5,80001eac <_ZN9semaphore8semCloseEPS_+0x3c>
        return head->data;
    80001e94:	0007b783          	ld	a5,0(a5)
        if(!tail) {return 0;}
        return tail->data;
    }

    bool listEmpty(){
        if(peekFirst()==0){
    80001e98:	00078a63          	beqz	a5,80001eac <_ZN9semaphore8semCloseEPS_+0x3c>
        (semID)->unblock();
    80001e9c:	00048513          	mv	a0,s1
    80001ea0:	00000097          	auipc	ra,0x0
    80001ea4:	d44080e7          	jalr	-700(ra) # 80001be4 <_ZN9semaphore7unblockEv>
    while(((semID)->blocked->listEmpty())==false){
    80001ea8:	fe1ff06f          	j	80001e88 <_ZN9semaphore8semCloseEPS_+0x18>
        if(!fmem_head || ptr < (char*)fmem_head)
    80001eac:	00005797          	auipc	a5,0x5
    80001eb0:	c0c7b783          	ld	a5,-1012(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001eb4:	0007b783          	ld	a5,0(a5)
    80001eb8:	00078e63          	beqz	a5,80001ed4 <_ZN9semaphore8semCloseEPS_+0x64>
    80001ebc:	02f4e063          	bltu	s1,a5,80001edc <_ZN9semaphore8semCloseEPS_+0x6c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001ec0:	00078713          	mv	a4,a5
    80001ec4:	0007b783          	ld	a5,0(a5)
    80001ec8:	00f48c63          	beq	s1,a5,80001ee0 <_ZN9semaphore8semCloseEPS_+0x70>
    80001ecc:	fe97eae3          	bltu	a5,s1,80001ec0 <_ZN9semaphore8semCloseEPS_+0x50>
    80001ed0:	0100006f          	j	80001ee0 <_ZN9semaphore8semCloseEPS_+0x70>
            cur=nullptr;
    80001ed4:	00078713          	mv	a4,a5
    80001ed8:	0080006f          	j	80001ee0 <_ZN9semaphore8semCloseEPS_+0x70>
    80001edc:	00000713          	li	a4,0
                newSeg->next=nullptr;
    80001ee0:	0004b023          	sd	zero,0(s1)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001ee4:	04000793          	li	a5,64
    80001ee8:	00f4b823          	sd	a5,16(s1)
                newSeg->prev=cur;
    80001eec:	00e4b423          	sd	a4,8(s1)
                if(cur) {
    80001ef0:	06070463          	beqz	a4,80001f58 <_ZN9semaphore8semCloseEPS_+0xe8>
                    newSeg->next = cur->next;
    80001ef4:	00073783          	ld	a5,0(a4)
    80001ef8:	00f4b023          	sd	a5,0(s1)
                if(newSeg->next) {
    80001efc:	0004b783          	ld	a5,0(s1)
    80001f00:	00078463          	beqz	a5,80001f08 <_ZN9semaphore8semCloseEPS_+0x98>
                    newSeg->next->prev=newSeg;
    80001f04:	0097b423          	sd	s1,8(a5)
                if (cur) {
    80001f08:	06070263          	beqz	a4,80001f6c <_ZN9semaphore8semCloseEPS_+0xfc>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001f0c:	00973023          	sd	s1,0(a4)
        if (!curr) return;
    80001f10:	00048c63          	beqz	s1,80001f28 <_ZN9semaphore8semCloseEPS_+0xb8>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001f14:	0004b783          	ld	a5,0(s1)
    80001f18:	00078863          	beqz	a5,80001f28 <_ZN9semaphore8semCloseEPS_+0xb8>
    80001f1c:	0104b683          	ld	a3,16(s1)
    80001f20:	00d48633          	add	a2,s1,a3
    80001f24:	04c78c63          	beq	a5,a2,80001f7c <_ZN9semaphore8semCloseEPS_+0x10c>
        if (!curr) return;
    80001f28:	00070c63          	beqz	a4,80001f40 <_ZN9semaphore8semCloseEPS_+0xd0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001f2c:	00073783          	ld	a5,0(a4)
    80001f30:	00078863          	beqz	a5,80001f40 <_ZN9semaphore8semCloseEPS_+0xd0>
    80001f34:	01073683          	ld	a3,16(a4)
    80001f38:	00d70633          	add	a2,a4,a3
    80001f3c:	06c78063          	beq	a5,a2,80001f9c <_ZN9semaphore8semCloseEPS_+0x12c>
        //TODO wait treba da vrati gresku? Kako to?
    }
    MemoryAllocation::mem_free(semID); //TODO mozda moze i samo (*handle)=nullptr
    return 0;
}
    80001f40:	00000513          	li	a0,0
    80001f44:	01813083          	ld	ra,24(sp)
    80001f48:	01013403          	ld	s0,16(sp)
    80001f4c:	00813483          	ld	s1,8(sp)
    80001f50:	02010113          	addi	sp,sp,32
    80001f54:	00008067          	ret
                    newSeg->next = fmem_head;
    80001f58:	00005797          	auipc	a5,0x5
    80001f5c:	b607b783          	ld	a5,-1184(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f60:	0007b783          	ld	a5,0(a5)
    80001f64:	00f4b023          	sd	a5,0(s1)
    80001f68:	f95ff06f          	j	80001efc <_ZN9semaphore8semCloseEPS_+0x8c>
                    fmem_head = newSeg;
    80001f6c:	00005797          	auipc	a5,0x5
    80001f70:	b4c7b783          	ld	a5,-1204(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f74:	0097b023          	sd	s1,0(a5)
    80001f78:	f99ff06f          	j	80001f10 <_ZN9semaphore8semCloseEPS_+0xa0>
            curr->size += curr->next->size;
    80001f7c:	0107b603          	ld	a2,16(a5)
    80001f80:	00c686b3          	add	a3,a3,a2
    80001f84:	00d4b823          	sd	a3,16(s1)
            curr->next = curr->next->next;
    80001f88:	0007b783          	ld	a5,0(a5)
    80001f8c:	00f4b023          	sd	a5,0(s1)
            if (curr->next) curr->next->prev = curr;
    80001f90:	f8078ce3          	beqz	a5,80001f28 <_ZN9semaphore8semCloseEPS_+0xb8>
    80001f94:	0097b423          	sd	s1,8(a5)
    80001f98:	f91ff06f          	j	80001f28 <_ZN9semaphore8semCloseEPS_+0xb8>
            curr->size += curr->next->size;
    80001f9c:	0107b603          	ld	a2,16(a5)
    80001fa0:	00c686b3          	add	a3,a3,a2
    80001fa4:	00d73823          	sd	a3,16(a4)
            curr->next = curr->next->next;
    80001fa8:	0007b783          	ld	a5,0(a5)
    80001fac:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    80001fb0:	f80788e3          	beqz	a5,80001f40 <_ZN9semaphore8semCloseEPS_+0xd0>
    80001fb4:	00e7b423          	sd	a4,8(a5)
    80001fb8:	f89ff06f          	j	80001f40 <_ZN9semaphore8semCloseEPS_+0xd0>

0000000080001fbc <_ZN9semaphore7semWaitEPS_>:

int semaphore::semWait(semaphore *semID) {
    if(semID == nullptr){return -1;}
    80001fbc:	04050663          	beqz	a0,80002008 <_ZN9semaphore7semWaitEPS_+0x4c>
    if((--((semID)->val))<0) { (semID)->block(); }
    80001fc0:	00052783          	lw	a5,0(a0)
    80001fc4:	fff7879b          	addiw	a5,a5,-1
    80001fc8:	00f52023          	sw	a5,0(a0)
    80001fcc:	02079713          	slli	a4,a5,0x20
    80001fd0:	00074663          	bltz	a4,80001fdc <_ZN9semaphore7semWaitEPS_+0x20>
    return 0;
    80001fd4:	00000513          	li	a0,0
}
    80001fd8:	00008067          	ret
int semaphore::semWait(semaphore *semID) {
    80001fdc:	ff010113          	addi	sp,sp,-16
    80001fe0:	00113423          	sd	ra,8(sp)
    80001fe4:	00813023          	sd	s0,0(sp)
    80001fe8:	01010413          	addi	s0,sp,16
    if((--((semID)->val))<0) { (semID)->block(); }
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	a60080e7          	jalr	-1440(ra) # 80001a4c <_ZN9semaphore5blockEv>
    return 0;
    80001ff4:	00000513          	li	a0,0
}
    80001ff8:	00813083          	ld	ra,8(sp)
    80001ffc:	00013403          	ld	s0,0(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret
    if(semID == nullptr){return -1;}
    80002008:	fff00513          	li	a0,-1
    8000200c:	00008067          	ret

0000000080002010 <_ZN9semaphore9semSignalEPS_>:

int semaphore::semSignal(semaphore *semID) {
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    80002010:	00052783          	lw	a5,0(a0)
    80002014:	0017879b          	addiw	a5,a5,1
    80002018:	0007871b          	sext.w	a4,a5
    8000201c:	00f52023          	sw	a5,0(a0)
    80002020:	00e05663          	blez	a4,8000202c <_ZN9semaphore9semSignalEPS_+0x1c>
    return 0;
}
    80002024:	00000513          	li	a0,0
    80002028:	00008067          	ret
int semaphore::semSignal(semaphore *semID) {
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00113423          	sd	ra,8(sp)
    80002034:	00813023          	sd	s0,0(sp)
    80002038:	01010413          	addi	s0,sp,16
    if((++((semID)->val))<=0) { (semID)->unblock(); }
    8000203c:	00000097          	auipc	ra,0x0
    80002040:	ba8080e7          	jalr	-1112(ra) # 80001be4 <_ZN9semaphore7unblockEv>
}
    80002044:	00000513          	li	a0,0
    80002048:	00813083          	ld	ra,8(sp)
    8000204c:	00013403          	ld	s0,0(sp)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00813423          	sd	s0,8(sp)
    80002060:	01010413          	addi	s0,sp,16
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80002064:	00813403          	ld	s0,8(sp)
    80002068:	01010113          	addi	sp,sp,16
    8000206c:	00008067          	ret

0000000080002070 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80002070:	ff010113          	addi	sp,sp,-16
    80002074:	00813423          	sd	s0,8(sp)
    80002078:	01010413          	addi	s0,sp,16
    8000207c:	00100793          	li	a5,1
    80002080:	00f50863          	beq	a0,a5,80002090 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002084:	00813403          	ld	s0,8(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret
    80002090:	000107b7          	lui	a5,0x10
    80002094:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002098:	fef596e3          	bne	a1,a5,80002084 <_Z41__static_initialization_and_destruction_0ii+0x14>
    LinkedList() : head(0), tail(0) {}
    8000209c:	00005797          	auipc	a5,0x5
    800020a0:	aa478793          	addi	a5,a5,-1372 # 80006b40 <_ZN9Scheduler19readyCoroutineQueueE>
    800020a4:	0007b023          	sd	zero,0(a5)
    800020a8:	0007b423          	sd	zero,8(a5)
    800020ac:	fd9ff06f          	j	80002084 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800020b0 <_ZN9Scheduler3getEv>:
{
    800020b0:	fe010113          	addi	sp,sp,-32
    800020b4:	00113c23          	sd	ra,24(sp)
    800020b8:	00813823          	sd	s0,16(sp)
    800020bc:	00913423          	sd	s1,8(sp)
    800020c0:	02010413          	addi	s0,sp,32
        if (!head) {return 0;}
    800020c4:	00005517          	auipc	a0,0x5
    800020c8:	a7c53503          	ld	a0,-1412(a0) # 80006b40 <_ZN9Scheduler19readyCoroutineQueueE>
    800020cc:	04050263          	beqz	a0,80002110 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    800020d0:	00853783          	ld	a5,8(a0)
    800020d4:	00005717          	auipc	a4,0x5
    800020d8:	a6f73623          	sd	a5,-1428(a4) # 80006b40 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    800020dc:	02078463          	beqz	a5,80002104 <_ZN9Scheduler3getEv+0x54>
        T* ret = elem->data;
    800020e0:	00053483          	ld	s1,0(a0)
        delete elem;
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	c88080e7          	jalr	-888(ra) # 80002d6c <_ZdlPv>
}
    800020ec:	00048513          	mv	a0,s1
    800020f0:	01813083          	ld	ra,24(sp)
    800020f4:	01013403          	ld	s0,16(sp)
    800020f8:	00813483          	ld	s1,8(sp)
    800020fc:	02010113          	addi	sp,sp,32
    80002100:	00008067          	ret
            tail = 0;
    80002104:	00005797          	auipc	a5,0x5
    80002108:	a407b223          	sd	zero,-1468(a5) # 80006b48 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000210c:	fd5ff06f          	j	800020e0 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80002110:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80002114:	fd9ff06f          	j	800020ec <_ZN9Scheduler3getEv+0x3c>

0000000080002118 <_ZN9Scheduler3putEP3TCB>:
{
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00813423          	sd	s0,8(sp)
    80002120:	01010413          	addi	s0,sp,16
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002124:	00005797          	auipc	a5,0x5
    80002128:	9947b783          	ld	a5,-1644(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000212c:	0007b783          	ld	a5,0(a5)
    80002130:	0c078a63          	beqz	a5,80002204 <_ZN9Scheduler3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    80002134:	00005717          	auipc	a4,0x5
    80002138:	98473703          	ld	a4,-1660(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000213c:	00073683          	ld	a3,0(a4)
    80002140:	0006b683          	ld	a3,0(a3)
    80002144:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80002148:	00073703          	ld	a4,0(a4)
    8000214c:	00873603          	ld	a2,8(a4)
    80002150:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    80002154:	0107b703          	ld	a4,16(a5)
    80002158:	03f00593          	li	a1,63
    8000215c:	02e5f663          	bgeu	a1,a4,80002188 <_ZN9Scheduler3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80002160:	fc070713          	addi	a4,a4,-64
    80002164:	01800593          	li	a1,24
    80002168:	02e5ec63          	bltu	a1,a4,800021a0 <_ZN9Scheduler3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    8000216c:	02060263          	beqz	a2,80002190 <_ZN9Scheduler3putEP3TCB+0x78>
    80002170:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80002174:	0007b703          	ld	a4,0(a5)
    80002178:	08070663          	beqz	a4,80002204 <_ZN9Scheduler3putEP3TCB+0xec>
    8000217c:	0087b683          	ld	a3,8(a5)
    80002180:	00d73423          	sd	a3,8(a4)
                return cur;
    80002184:	0800006f          	j	80002204 <_ZN9Scheduler3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002188:	00068793          	mv	a5,a3
    8000218c:	fa5ff06f          	j	80002130 <_ZN9Scheduler3putEP3TCB+0x18>
                else fmem_head = cur->next;
    80002190:	00005717          	auipc	a4,0x5
    80002194:	92873703          	ld	a4,-1752(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002198:	00d73023          	sd	a3,0(a4)
    8000219c:	fd9ff06f          	j	80002174 <_ZN9Scheduler3putEP3TCB+0x5c>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800021a0:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    800021a4:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800021a8:	0407b023          	sd	zero,64(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800021ac:	0087b683          	ld	a3,8(a5)
    800021b0:	08068063          	beqz	a3,80002230 <_ZN9Scheduler3putEP3TCB+0x118>
    800021b4:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800021b8:	0007b683          	ld	a3,0(a5)
    800021bc:	00068463          	beqz	a3,800021c4 <_ZN9Scheduler3putEP3TCB+0xac>
    800021c0:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800021c4:	0087b603          	ld	a2,8(a5)
    800021c8:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800021cc:	0007b683          	ld	a3,0(a5)
    800021d0:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800021d4:	0107b783          	ld	a5,16(a5)
    800021d8:	fc078793          	addi	a5,a5,-64
    800021dc:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800021e0:	0c070693          	addi	a3,a4,192
    800021e4:	00005597          	auipc	a1,0x5
    800021e8:	8d45b583          	ld	a1,-1836(a1) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800021ec:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800021f0:	00073583          	ld	a1,0(a4)
    800021f4:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    800021f8:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800021fc:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002200:	00070793          	mv	a5,a4
        elem->data=data;
    80002204:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80002208:	0007b423          	sd	zero,8(a5)
        if (tail){
    8000220c:	00005717          	auipc	a4,0x5
    80002210:	93c73703          	ld	a4,-1732(a4) # 80006b48 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002214:	02070863          	beqz	a4,80002244 <_ZN9Scheduler3putEP3TCB+0x12c>
            tail->next=elem;
    80002218:	00f73423          	sd	a5,8(a4)
            tail=elem;
    8000221c:	00005717          	auipc	a4,0x5
    80002220:	92f73623          	sd	a5,-1748(a4) # 80006b48 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002224:	00813403          	ld	s0,8(sp)
    80002228:	01010113          	addi	sp,sp,16
    8000222c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002230:	0c070693          	addi	a3,a4,192
    80002234:	00005617          	auipc	a2,0x5
    80002238:	88463603          	ld	a2,-1916(a2) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000223c:	00d63023          	sd	a3,0(a2)
    80002240:	f79ff06f          	j	800021b8 <_ZN9Scheduler3putEP3TCB+0xa0>
            head=tail=elem;
    80002244:	00005717          	auipc	a4,0x5
    80002248:	8fc70713          	addi	a4,a4,-1796 # 80006b40 <_ZN9Scheduler19readyCoroutineQueueE>
    8000224c:	00f73423          	sd	a5,8(a4)
    80002250:	00f73023          	sd	a5,0(a4)
    80002254:	fd1ff06f          	j	80002224 <_ZN9Scheduler3putEP3TCB+0x10c>

0000000080002258 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002258:	ff010113          	addi	sp,sp,-16
    8000225c:	00113423          	sd	ra,8(sp)
    80002260:	00813023          	sd	s0,0(sp)
    80002264:	01010413          	addi	s0,sp,16
    80002268:	000105b7          	lui	a1,0x10
    8000226c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002270:	00100513          	li	a0,1
    80002274:	00000097          	auipc	ra,0x0
    80002278:	dfc080e7          	jalr	-516(ra) # 80002070 <_Z41__static_initialization_and_destruction_0ii>
    8000227c:	00813083          	ld	ra,8(sp)
    80002280:	00013403          	ld	s0,0(sp)
    80002284:	01010113          	addi	sp,sp,16
    80002288:	00008067          	ret

000000008000228c <_Z8dummyfunPv>:
        printString("sibiceee i papirr cigaraaa\n");
        sem_signal(agent);
        sem_signal(mutex);
    }
}
void dummyfun(void *){
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00113423          	sd	ra,8(sp)
    80002294:	00813023          	sd	s0,0(sp)
    80002298:	01010413          	addi	s0,sp,16
    int i = sem_wait(dummy);
    8000229c:	00005517          	auipc	a0,0x5
    800022a0:	8b453503          	ld	a0,-1868(a0) # 80006b50 <dummy>
    800022a4:	fffff097          	auipc	ra,0xfffff
    800022a8:	0e8080e7          	jalr	232(ra) # 8000138c <_Z8sem_waitP9semaphore>
    if(i==-1)printString("waitvreacagreskukadjeubijemnem \n");
    800022ac:	fff00793          	li	a5,-1
    800022b0:	02f50263          	beq	a0,a5,800022d4 <_Z8dummyfunPv+0x48>
    printString("kitaljka\n");
    800022b4:	00004517          	auipc	a0,0x4
    800022b8:	d9450513          	addi	a0,a0,-620 # 80006048 <CONSOLE_STATUS+0x38>
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	d48080e7          	jalr	-696(ra) # 80003004 <_Z11printStringPKc>
    800022c4:	00813083          	ld	ra,8(sp)
    800022c8:	00013403          	ld	s0,0(sp)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret
    if(i==-1)printString("waitvreacagreskukadjeubijemnem \n");
    800022d4:	00004517          	auipc	a0,0x4
    800022d8:	d4c50513          	addi	a0,a0,-692 # 80006020 <CONSOLE_STATUS+0x10>
    800022dc:	00001097          	auipc	ra,0x1
    800022e0:	d28080e7          	jalr	-728(ra) # 80003004 <_Z11printStringPKc>
    800022e4:	fd1ff06f          	j	800022b4 <_Z8dummyfunPv+0x28>

00000000800022e8 <_Z7smoker1Pv>:
void smoker1(void *arg){
    800022e8:	fe010113          	addi	sp,sp,-32
    800022ec:	00113c23          	sd	ra,24(sp)
    800022f0:	00813823          	sd	s0,16(sp)
    800022f4:	00913423          	sd	s1,8(sp)
    800022f8:	02010413          	addi	s0,sp,32
        sem_wait(paper);
    800022fc:	00005497          	auipc	s1,0x5
    80002300:	85448493          	addi	s1,s1,-1964 # 80006b50 <dummy>
    80002304:	0084b503          	ld	a0,8(s1)
    80002308:	fffff097          	auipc	ra,0xfffff
    8000230c:	084080e7          	jalr	132(ra) # 8000138c <_Z8sem_waitP9semaphore>
        sem_wait(mutex);
    80002310:	0104b503          	ld	a0,16(s1)
    80002314:	fffff097          	auipc	ra,0xfffff
    80002318:	078080e7          	jalr	120(ra) # 8000138c <_Z8sem_waitP9semaphore>
        printString("duvan i sibice cigaraaa\n");
    8000231c:	00004517          	auipc	a0,0x4
    80002320:	d3c50513          	addi	a0,a0,-708 # 80006058 <CONSOLE_STATUS+0x48>
    80002324:	00001097          	auipc	ra,0x1
    80002328:	ce0080e7          	jalr	-800(ra) # 80003004 <_Z11printStringPKc>
        sem_signal(agent);
    8000232c:	0184b503          	ld	a0,24(s1)
    80002330:	fffff097          	auipc	ra,0xfffff
    80002334:	08c080e7          	jalr	140(ra) # 800013bc <_Z10sem_signalP9semaphore>
        sem_signal(mutex);
    80002338:	0104b503          	ld	a0,16(s1)
    8000233c:	fffff097          	auipc	ra,0xfffff
    80002340:	080080e7          	jalr	128(ra) # 800013bc <_Z10sem_signalP9semaphore>
    while (true){
    80002344:	fb9ff06f          	j	800022fc <_Z7smoker1Pv+0x14>

0000000080002348 <_Z7smoker2Pv>:
void smoker2(void *arg){
    80002348:	fe010113          	addi	sp,sp,-32
    8000234c:	00113c23          	sd	ra,24(sp)
    80002350:	00813823          	sd	s0,16(sp)
    80002354:	00913423          	sd	s1,8(sp)
    80002358:	02010413          	addi	s0,sp,32
        sem_wait(matches);
    8000235c:	00004497          	auipc	s1,0x4
    80002360:	7f448493          	addi	s1,s1,2036 # 80006b50 <dummy>
    80002364:	0204b503          	ld	a0,32(s1)
    80002368:	fffff097          	auipc	ra,0xfffff
    8000236c:	024080e7          	jalr	36(ra) # 8000138c <_Z8sem_waitP9semaphore>
        sem_wait(mutex);
    80002370:	0104b503          	ld	a0,16(s1)
    80002374:	fffff097          	auipc	ra,0xfffff
    80002378:	018080e7          	jalr	24(ra) # 8000138c <_Z8sem_waitP9semaphore>
        printString("duvan i papir cigaraaaaa\n");
    8000237c:	00004517          	auipc	a0,0x4
    80002380:	cfc50513          	addi	a0,a0,-772 # 80006078 <CONSOLE_STATUS+0x68>
    80002384:	00001097          	auipc	ra,0x1
    80002388:	c80080e7          	jalr	-896(ra) # 80003004 <_Z11printStringPKc>
        sem_signal(agent);
    8000238c:	0184b503          	ld	a0,24(s1)
    80002390:	fffff097          	auipc	ra,0xfffff
    80002394:	02c080e7          	jalr	44(ra) # 800013bc <_Z10sem_signalP9semaphore>
        sem_signal(mutex);
    80002398:	0104b503          	ld	a0,16(s1)
    8000239c:	fffff097          	auipc	ra,0xfffff
    800023a0:	020080e7          	jalr	32(ra) # 800013bc <_Z10sem_signalP9semaphore>
    while (true){
    800023a4:	fb9ff06f          	j	8000235c <_Z7smoker2Pv+0x14>

00000000800023a8 <_Z7smoker3Pv>:
void smoker3(void *arg){
    800023a8:	fe010113          	addi	sp,sp,-32
    800023ac:	00113c23          	sd	ra,24(sp)
    800023b0:	00813823          	sd	s0,16(sp)
    800023b4:	00913423          	sd	s1,8(sp)
    800023b8:	02010413          	addi	s0,sp,32
        sem_wait(tabacco);
    800023bc:	00004497          	auipc	s1,0x4
    800023c0:	79448493          	addi	s1,s1,1940 # 80006b50 <dummy>
    800023c4:	0284b503          	ld	a0,40(s1)
    800023c8:	fffff097          	auipc	ra,0xfffff
    800023cc:	fc4080e7          	jalr	-60(ra) # 8000138c <_Z8sem_waitP9semaphore>
        sem_wait(mutex);
    800023d0:	0104b503          	ld	a0,16(s1)
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	fb8080e7          	jalr	-72(ra) # 8000138c <_Z8sem_waitP9semaphore>
        printString("sibiceee i papirr cigaraaa\n");
    800023dc:	00004517          	auipc	a0,0x4
    800023e0:	cbc50513          	addi	a0,a0,-836 # 80006098 <CONSOLE_STATUS+0x88>
    800023e4:	00001097          	auipc	ra,0x1
    800023e8:	c20080e7          	jalr	-992(ra) # 80003004 <_Z11printStringPKc>
        sem_signal(agent);
    800023ec:	0184b503          	ld	a0,24(s1)
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	fcc080e7          	jalr	-52(ra) # 800013bc <_Z10sem_signalP9semaphore>
        sem_signal(mutex);
    800023f8:	0104b503          	ld	a0,16(s1)
    800023fc:	fffff097          	auipc	ra,0xfffff
    80002400:	fc0080e7          	jalr	-64(ra) # 800013bc <_Z10sem_signalP9semaphore>
    while (true){
    80002404:	fb9ff06f          	j	800023bc <_Z7smoker3Pv+0x14>

0000000080002408 <_Z8agentfunPv>:
void agentfun(void *args){
    80002408:	fe010113          	addi	sp,sp,-32
    8000240c:	00113c23          	sd	ra,24(sp)
    80002410:	00813823          	sd	s0,16(sp)
    80002414:	00913423          	sd	s1,8(sp)
    80002418:	01213023          	sd	s2,0(sp)
    8000241c:	02010413          	addi	s0,sp,32
    int i=0;
    80002420:	00000493          	li	s1,0
    80002424:	0940006f          	j	800024b8 <_Z8agentfunPv+0xb0>
                printString("duvan i papir\n");
    80002428:	00004517          	auipc	a0,0x4
    8000242c:	c9050513          	addi	a0,a0,-880 # 800060b8 <CONSOLE_STATUS+0xa8>
    80002430:	00001097          	auipc	ra,0x1
    80002434:	bd4080e7          	jalr	-1068(ra) # 80003004 <_Z11printStringPKc>
                sem_signal(matches);
    80002438:	00004517          	auipc	a0,0x4
    8000243c:	73853503          	ld	a0,1848(a0) # 80006b70 <matches>
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	f7c080e7          	jalr	-132(ra) # 800013bc <_Z10sem_signalP9semaphore>
                break;
    80002448:	09c0006f          	j	800024e4 <_Z8agentfunPv+0xdc>
                printString("duvan i sibice\n");
    8000244c:	00004517          	auipc	a0,0x4
    80002450:	c7c50513          	addi	a0,a0,-900 # 800060c8 <CONSOLE_STATUS+0xb8>
    80002454:	00001097          	auipc	ra,0x1
    80002458:	bb0080e7          	jalr	-1104(ra) # 80003004 <_Z11printStringPKc>
                sem_signal(paper);
    8000245c:	00004517          	auipc	a0,0x4
    80002460:	6fc53503          	ld	a0,1788(a0) # 80006b58 <paper>
    80002464:	fffff097          	auipc	ra,0xfffff
    80002468:	f58080e7          	jalr	-168(ra) # 800013bc <_Z10sem_signalP9semaphore>
                break;
    8000246c:	0780006f          	j	800024e4 <_Z8agentfunPv+0xdc>
                printString("sibice i papir\n");
    80002470:	00004517          	auipc	a0,0x4
    80002474:	c6850513          	addi	a0,a0,-920 # 800060d8 <CONSOLE_STATUS+0xc8>
    80002478:	00001097          	auipc	ra,0x1
    8000247c:	b8c080e7          	jalr	-1140(ra) # 80003004 <_Z11printStringPKc>
                sem_signal(tabacco);
    80002480:	00004517          	auipc	a0,0x4
    80002484:	6f853503          	ld	a0,1784(a0) # 80006b78 <tabacco>
    80002488:	fffff097          	auipc	ra,0xfffff
    8000248c:	f34080e7          	jalr	-204(ra) # 800013bc <_Z10sem_signalP9semaphore>
                break;
    80002490:	0540006f          	j	800024e4 <_Z8agentfunPv+0xdc>
        i++;
    80002494:	0014849b          	addiw	s1,s1,1
        sem_signal(mutex);
    80002498:	00004917          	auipc	s2,0x4
    8000249c:	6b890913          	addi	s2,s2,1720 # 80006b50 <dummy>
    800024a0:	01093503          	ld	a0,16(s2)
    800024a4:	fffff097          	auipc	ra,0xfffff
    800024a8:	f18080e7          	jalr	-232(ra) # 800013bc <_Z10sem_signalP9semaphore>
        sem_wait(agent);
    800024ac:	01893503          	ld	a0,24(s2)
    800024b0:	fffff097          	auipc	ra,0xfffff
    800024b4:	edc080e7          	jalr	-292(ra) # 8000138c <_Z8sem_waitP9semaphore>
        sem_wait(mutex);
    800024b8:	00004517          	auipc	a0,0x4
    800024bc:	6a853503          	ld	a0,1704(a0) # 80006b60 <mutex>
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	ecc080e7          	jalr	-308(ra) # 8000138c <_Z8sem_waitP9semaphore>
        switch (i%3) {
    800024c8:	00300793          	li	a5,3
    800024cc:	02f4e7bb          	remw	a5,s1,a5
    800024d0:	00100713          	li	a4,1
    800024d4:	f6e78ce3          	beq	a5,a4,8000244c <_Z8agentfunPv+0x44>
    800024d8:	00200713          	li	a4,2
    800024dc:	f8e78ae3          	beq	a5,a4,80002470 <_Z8agentfunPv+0x68>
    800024e0:	f40784e3          	beqz	a5,80002428 <_Z8agentfunPv+0x20>
        if(i==50) semaphore::semClose(dummy);
    800024e4:	03200793          	li	a5,50
    800024e8:	faf496e3          	bne	s1,a5,80002494 <_Z8agentfunPv+0x8c>
    800024ec:	00004517          	auipc	a0,0x4
    800024f0:	66453503          	ld	a0,1636(a0) # 80006b50 <dummy>
    800024f4:	00000097          	auipc	ra,0x0
    800024f8:	97c080e7          	jalr	-1668(ra) # 80001e70 <_ZN9semaphore8semCloseEPS_>
    800024fc:	f99ff06f          	j	80002494 <_Z8agentfunPv+0x8c>

0000000080002500 <main>:
int main(){
    80002500:	f9010113          	addi	sp,sp,-112
    80002504:	06113423          	sd	ra,104(sp)
    80002508:	06813023          	sd	s0,96(sp)
    8000250c:	04913c23          	sd	s1,88(sp)
    80002510:	07010413          	addi	s0,sp,112
        if (!instance) {
    80002514:	00004797          	auipc	a5,0x4
    80002518:	59c7b783          	ld	a5,1436(a5) # 80006ab0 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000251c:	0007b783          	ld	a5,0(a5)
    80002520:	18078a63          	beqz	a5,800026b4 <main+0x1b4>
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    80002524:	00004797          	auipc	a5,0x4
    80002528:	5847b783          	ld	a5,1412(a5) # 80006aa8 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    8000252c:	10579073          	csrw	stvec,a5
    thread_create(&main, nullptr, nullptr);
    80002530:	00000613          	li	a2,0
    80002534:	00000593          	li	a1,0
    80002538:	fd840513          	addi	a0,s0,-40
    8000253c:	fffff097          	auipc	ra,0xfffff
    80002540:	d64080e7          	jalr	-668(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = main;
    80002544:	00004797          	auipc	a5,0x4
    80002548:	57c7b783          	ld	a5,1404(a5) # 80006ac0 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000254c:	fd843703          	ld	a4,-40(s0)
    80002550:	00e7b023          	sd	a4,0(a5)
    sem_open(&mutex,1);
    80002554:	00100593          	li	a1,1
    80002558:	00004517          	auipc	a0,0x4
    8000255c:	60850513          	addi	a0,a0,1544 # 80006b60 <mutex>
    80002560:	fffff097          	auipc	ra,0xfffff
    80002564:	dc8080e7          	jalr	-568(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&paper,0);
    80002568:	00000593          	li	a1,0
    8000256c:	00004517          	auipc	a0,0x4
    80002570:	5ec50513          	addi	a0,a0,1516 # 80006b58 <paper>
    80002574:	fffff097          	auipc	ra,0xfffff
    80002578:	db4080e7          	jalr	-588(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&matches, 0);
    8000257c:	00000593          	li	a1,0
    80002580:	00004517          	auipc	a0,0x4
    80002584:	5f050513          	addi	a0,a0,1520 # 80006b70 <matches>
    80002588:	fffff097          	auipc	ra,0xfffff
    8000258c:	da0080e7          	jalr	-608(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&agent,0);
    80002590:	00000593          	li	a1,0
    80002594:	00004517          	auipc	a0,0x4
    80002598:	5d450513          	addi	a0,a0,1492 # 80006b68 <agent>
    8000259c:	fffff097          	auipc	ra,0xfffff
    800025a0:	d8c080e7          	jalr	-628(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    sem_open(&tabacco,0);
    800025a4:	00000593          	li	a1,0
    800025a8:	00004517          	auipc	a0,0x4
    800025ac:	5d050513          	addi	a0,a0,1488 # 80006b78 <tabacco>
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	d78080e7          	jalr	-648(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    thread_t t= nullptr;
    800025b8:	fc043823          	sd	zero,-48(s0)
    thread_t t1= nullptr;
    800025bc:	fc043423          	sd	zero,-56(s0)
    thread_t t2= nullptr;
    800025c0:	fc043023          	sd	zero,-64(s0)
    thread_t t3= nullptr;
    800025c4:	fa043c23          	sd	zero,-72(s0)
    thread_create(&t, agentfun, nullptr);
    800025c8:	00000613          	li	a2,0
    800025cc:	00000597          	auipc	a1,0x0
    800025d0:	e3c58593          	addi	a1,a1,-452 # 80002408 <_Z8agentfunPv>
    800025d4:	fd040513          	addi	a0,s0,-48
    800025d8:	fffff097          	auipc	ra,0xfffff
    800025dc:	cc8080e7          	jalr	-824(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t1, smoker1, nullptr);
    800025e0:	00000613          	li	a2,0
    800025e4:	00000597          	auipc	a1,0x0
    800025e8:	d0458593          	addi	a1,a1,-764 # 800022e8 <_Z7smoker1Pv>
    800025ec:	fc840513          	addi	a0,s0,-56
    800025f0:	fffff097          	auipc	ra,0xfffff
    800025f4:	cb0080e7          	jalr	-848(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t2, smoker2, nullptr);
    800025f8:	00000613          	li	a2,0
    800025fc:	00000597          	auipc	a1,0x0
    80002600:	d4c58593          	addi	a1,a1,-692 # 80002348 <_Z7smoker2Pv>
    80002604:	fc040513          	addi	a0,s0,-64
    80002608:	fffff097          	auipc	ra,0xfffff
    8000260c:	c98080e7          	jalr	-872(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t3, smoker3, nullptr);
    80002610:	00000613          	li	a2,0
    80002614:	00000597          	auipc	a1,0x0
    80002618:	d9458593          	addi	a1,a1,-620 # 800023a8 <_Z7smoker3Pv>
    8000261c:	fb840513          	addi	a0,s0,-72
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	c80080e7          	jalr	-896(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    sem_open(&dummy,-1);
    80002628:	fff00593          	li	a1,-1
    8000262c:	00004517          	auipc	a0,0x4
    80002630:	52450513          	addi	a0,a0,1316 # 80006b50 <dummy>
    80002634:	fffff097          	auipc	ra,0xfffff
    80002638:	cf4080e7          	jalr	-780(ra) # 80001328 <_Z8sem_openPP9semaphorej>
    thread_t tt= nullptr;
    8000263c:	fa043823          	sd	zero,-80(s0)
    thread_t t11= nullptr;
    80002640:	fa043423          	sd	zero,-88(s0)
    thread_t t21= nullptr;
    80002644:	fa043023          	sd	zero,-96(s0)
    thread_t t31= nullptr;
    80002648:	f8043c23          	sd	zero,-104(s0)
    thread_create(&tt, dummyfun, nullptr);
    8000264c:	00000613          	li	a2,0
    80002650:	00000597          	auipc	a1,0x0
    80002654:	c3c58593          	addi	a1,a1,-964 # 8000228c <_Z8dummyfunPv>
    80002658:	fb040513          	addi	a0,s0,-80
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	c44080e7          	jalr	-956(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t11, dummyfun, nullptr);
    80002664:	00000613          	li	a2,0
    80002668:	00000597          	auipc	a1,0x0
    8000266c:	c2458593          	addi	a1,a1,-988 # 8000228c <_Z8dummyfunPv>
    80002670:	fa840513          	addi	a0,s0,-88
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	c2c080e7          	jalr	-980(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t21, dummyfun, nullptr);
    8000267c:	00000613          	li	a2,0
    80002680:	00000597          	auipc	a1,0x0
    80002684:	c0c58593          	addi	a1,a1,-1012 # 8000228c <_Z8dummyfunPv>
    80002688:	fa040513          	addi	a0,s0,-96
    8000268c:	fffff097          	auipc	ra,0xfffff
    80002690:	c14080e7          	jalr	-1004(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&t31, dummyfun, nullptr);
    80002694:	00000613          	li	a2,0
    80002698:	00000597          	auipc	a1,0x0
    8000269c:	bf458593          	addi	a1,a1,-1036 # 8000228c <_Z8dummyfunPv>
    800026a0:	f9840513          	addi	a0,s0,-104
    800026a4:	fffff097          	auipc	ra,0xfffff
    800026a8:	bfc080e7          	jalr	-1028(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < 30; ++i) {
    800026ac:	00000493          	li	s1,0
    800026b0:	04c0006f          	j	800026fc <main+0x1fc>
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    800026b4:	00004797          	auipc	a5,0x4
    800026b8:	3e47b783          	ld	a5,996(a5) # 80006a98 <_GLOBAL_OFFSET_TABLE_+0x8>
    800026bc:	0007b783          	ld	a5,0(a5)
    800026c0:	00004697          	auipc	a3,0x4
    800026c4:	3f86b683          	ld	a3,1016(a3) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026c8:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    800026cc:	00004717          	auipc	a4,0x4
    800026d0:	3fc73703          	ld	a4,1020(a4) # 80006ac8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800026d4:	00073703          	ld	a4,0(a4)
    800026d8:	40f70733          	sub	a4,a4,a5
    800026dc:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    800026e0:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    800026e4:	0006b783          	ld	a5,0(a3)
    800026e8:	0007b423          	sd	zero,8(a5)
            return instance;
    800026ec:	e39ff06f          	j	80002524 <main+0x24>
        thread_dispatch();
    800026f0:	fffff097          	auipc	ra,0xfffff
    800026f4:	c14080e7          	jalr	-1004(ra) # 80001304 <_Z15thread_dispatchv>
    for (int i = 0; i < 30; ++i) {
    800026f8:	0014849b          	addiw	s1,s1,1
    800026fc:	01d00793          	li	a5,29
    80002700:	fe97d8e3          	bge	a5,s1,800026f0 <main+0x1f0>
    if(sem_wait(dummy)==-1) printString("ubien semafor\n");
    80002704:	00004517          	auipc	a0,0x4
    80002708:	44c53503          	ld	a0,1100(a0) # 80006b50 <dummy>
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	c80080e7          	jalr	-896(ra) # 8000138c <_Z8sem_waitP9semaphore>
    80002714:	fff00793          	li	a5,-1
    80002718:	00f50e63          	beq	a0,a5,80002734 <main+0x234>
}
    8000271c:	00000513          	li	a0,0
    80002720:	06813083          	ld	ra,104(sp)
    80002724:	06013403          	ld	s0,96(sp)
    80002728:	05813483          	ld	s1,88(sp)
    8000272c:	07010113          	addi	sp,sp,112
    80002730:	00008067          	ret
    if(sem_wait(dummy)==-1) printString("ubien semafor\n");
    80002734:	00004517          	auipc	a0,0x4
    80002738:	9b450513          	addi	a0,a0,-1612 # 800060e8 <CONSOLE_STATUS+0xd8>
    8000273c:	00001097          	auipc	ra,0x1
    80002740:	8c8080e7          	jalr	-1848(ra) # 80003004 <_Z11printStringPKc>
    80002744:	fd9ff06f          	j	8000271c <main+0x21c>

0000000080002748 <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00813423          	sd	s0,8(sp)
    80002750:	01010413          	addi	s0,sp,16
    return finished;
}
    80002754:	02054503          	lbu	a0,32(a0)
    80002758:	00813403          	ld	s0,8(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret

0000000080002764 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80002764:	ff010113          	addi	sp,sp,-16
    80002768:	00813423          	sd	s0,8(sp)
    8000276c:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    80002770:	02b50023          	sb	a1,32(a0)
}
    80002774:	00813403          	ld	s0,8(sp)
    80002778:	01010113          	addi	sp,sp,16
    8000277c:	00008067          	ret

0000000080002780 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments) {
    80002780:	fe010113          	addi	sp,sp,-32
    80002784:	00113c23          	sd	ra,24(sp)
    80002788:	00813823          	sd	s0,16(sp)
    8000278c:	00913423          	sd	s1,8(sp)
    80002790:	02010413          	addi	s0,sp,32
    80002794:	00058493          	mv	s1,a1
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002798:	00004797          	auipc	a5,0x4
    8000279c:	3207b783          	ld	a5,800(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027a0:	0007b783          	ld	a5,0(a5)
    800027a4:	0c078a63          	beqz	a5,80002878 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
            cur->next=fmem_head->next;
    800027a8:	00004717          	auipc	a4,0x4
    800027ac:	31073703          	ld	a4,784(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027b0:	00073683          	ld	a3,0(a4)
    800027b4:	0006b683          	ld	a3,0(a3)
    800027b8:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    800027bc:	00073703          	ld	a4,0(a4)
    800027c0:	00873583          	ld	a1,8(a4)
    800027c4:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    800027c8:	0107b703          	ld	a4,16(a5)
    800027cc:	07f00813          	li	a6,127
    800027d0:	02e87663          	bgeu	a6,a4,800027fc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    800027d4:	f8070713          	addi	a4,a4,-128
    800027d8:	01800813          	li	a6,24
    800027dc:	02e86c63          	bltu	a6,a4,80002814 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    800027e0:	02058263          	beqz	a1,80002804 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x84>
    800027e4:	00d5b023          	sd	a3,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    800027e8:	0007b703          	ld	a4,0(a5)
    800027ec:	08070663          	beqz	a4,80002878 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
    800027f0:	0087b683          	ld	a3,8(a5)
    800027f4:	00d73423          	sd	a3,8(a4)
                return cur;
    800027f8:	0800006f          	j	80002878 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800027fc:	00068793          	mv	a5,a3
    80002800:	fa5ff06f          	j	800027a4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24>
                else fmem_head = cur->next;
    80002804:	00004717          	auipc	a4,0x4
    80002808:	2b473703          	ld	a4,692(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000280c:	00d73023          	sd	a3,0(a4)
    80002810:	fd9ff06f          	j	800027e8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002814:	08078713          	addi	a4,a5,128
                newfrgm->prev=nullptr;
    80002818:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    8000281c:	0807b023          	sd	zero,128(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002820:	0087b683          	ld	a3,8(a5)
    80002824:	0c068c63          	beqz	a3,800028fc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x17c>
    80002828:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    8000282c:	0007b683          	ld	a3,0(a5)
    80002830:	00068463          	beqz	a3,80002838 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xb8>
    80002834:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002838:	0087b583          	ld	a1,8(a5)
    8000283c:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    80002840:	0007b683          	ld	a3,0(a5)
    80002844:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002848:	0107b783          	ld	a5,16(a5)
    8000284c:	f8078793          	addi	a5,a5,-128
    80002850:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002854:	0c070693          	addi	a3,a4,192
    80002858:	00004817          	auipc	a6,0x4
    8000285c:	26083803          	ld	a6,608(a6) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002860:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80002864:	00073803          	ld	a6,0(a4)
    80002868:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    8000286c:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    80002870:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002874:	00070793          	mv	a5,a4
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    80002878:	00f4b023          	sd	a5,0(s1)
    (*handle)->body=body;
    8000287c:	00a7b023          	sd	a0,0(a5)
    (*handle)->arguments=arguments;
    80002880:	0004b783          	ld	a5,0(s1)
    80002884:	02c7b423          	sd	a2,40(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    80002888:	12050663          	beqz	a0,800029b4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x234>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000288c:	00004797          	auipc	a5,0x4
    80002890:	22c7b783          	ld	a5,556(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002894:	0007b783          	ld	a5,0(a5)
    80002898:	12078063          	beqz	a5,800029b8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
            cur->next=fmem_head->next;
    8000289c:	00004717          	auipc	a4,0x4
    800028a0:	21c73703          	ld	a4,540(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800028a4:	00073683          	ld	a3,0(a4)
    800028a8:	0006b603          	ld	a2,0(a3)
    800028ac:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    800028b0:	00073703          	ld	a4,0(a4)
    800028b4:	00873583          	ld	a1,8(a4)
    800028b8:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    800028bc:	0107b703          	ld	a4,16(a5)
    800028c0:	000016b7          	lui	a3,0x1
    800028c4:	03f68693          	addi	a3,a3,63 # 103f <_entry-0x7fffefc1>
    800028c8:	04e6f463          	bgeu	a3,a4,80002910 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x190>
            if (cur->size-size<=sizeof(FreeMem)){
    800028cc:	fffff6b7          	lui	a3,0xfffff
    800028d0:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff71d0>
    800028d4:	00d70733          	add	a4,a4,a3
    800028d8:	01800693          	li	a3,24
    800028dc:	04e6e663          	bltu	a3,a4,80002928 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1a8>
                if (cur->prev) cur->prev->next = cur->next;
    800028e0:	02058c63          	beqz	a1,80002918 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x198>
    800028e4:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    800028e8:	0007b703          	ld	a4,0(a5)
    800028ec:	0c070663          	beqz	a4,800029b8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
    800028f0:	0087b683          	ld	a3,8(a5)
    800028f4:	00d73423          	sd	a3,8(a4)
                return cur;
    800028f8:	0c00006f          	j	800029b8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800028fc:	0c070693          	addi	a3,a4,192
    80002900:	00004597          	auipc	a1,0x4
    80002904:	1b85b583          	ld	a1,440(a1) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002908:	00d5b023          	sd	a3,0(a1)
    8000290c:	f21ff06f          	j	8000282c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xac>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002910:	00060793          	mv	a5,a2
    80002914:	f85ff06f          	j	80002898 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x118>
                else fmem_head = cur->next;
    80002918:	00004717          	auipc	a4,0x4
    8000291c:	1a073703          	ld	a4,416(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002920:	00c73023          	sd	a2,0(a4)
    80002924:	fc5ff06f          	j	800028e8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x168>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002928:	00001737          	lui	a4,0x1
    8000292c:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    80002930:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    80002934:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002938:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    8000293c:	0087b683          	ld	a3,8(a5)
    80002940:	06068063          	beqz	a3,800029a0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x220>
    80002944:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002948:	0007b683          	ld	a3,0(a5)
    8000294c:	00068463          	beqz	a3,80002954 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1d4>
    80002950:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002954:	0087b603          	ld	a2,8(a5)
    80002958:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    8000295c:	0007b683          	ld	a3,0(a5)
    80002960:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002964:	0107b783          	ld	a5,16(a5)
    80002968:	fffff6b7          	lui	a3,0xfffff
    8000296c:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff71d0>
    80002970:	00d787b3          	add	a5,a5,a3
    80002974:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002978:	0c070693          	addi	a3,a4,192
    8000297c:	00004597          	auipc	a1,0x4
    80002980:	13c5b583          	ld	a1,316(a1) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002984:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002988:	00073583          	ld	a1,0(a4)
    8000298c:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002990:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002994:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002998:	00070793          	mv	a5,a4
    8000299c:	01c0006f          	j	800029b8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800029a0:	0c070693          	addi	a3,a4,192
    800029a4:	00004617          	auipc	a2,0x4
    800029a8:	11463603          	ld	a2,276(a2) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800029ac:	00d63023          	sd	a3,0(a2)
    800029b0:	f99ff06f          	j	80002948 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1c8>
    800029b4:	00000793          	li	a5,0
    800029b8:	0004b703          	ld	a4,0(s1)
    800029bc:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    800029c0:	06050663          	beqz	a0,80002a2c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2ac>
    800029c4:	00000717          	auipc	a4,0x0
    800029c8:	0a470713          	addi	a4,a4,164 # 80002a68 <_ZN3TCB13threadWrapperEv>
    800029cc:	0004b783          	ld	a5,0(s1)
    800029d0:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    800029d4:	0004b703          	ld	a4,0(s1)
    800029d8:	00873783          	ld	a5,8(a4)
    800029dc:	04078c63          	beqz	a5,80002a34 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2b4>
    800029e0:	000086b7          	lui	a3,0x8
    800029e4:	00d787b3          	add	a5,a5,a3
    800029e8:	00f73c23          	sd	a5,24(a4)
    (*handle)->finished=false;
    800029ec:	0004b783          	ld	a5,0(s1)
    800029f0:	02078023          	sb	zero,32(a5)
    (*handle)->semBlocked=nullptr;
    800029f4:	0004b783          	ld	a5,0(s1)
    800029f8:	0207b823          	sd	zero,48(a5)
    if (body != nullptr) { Scheduler::put(*handle); }
    800029fc:	00050863          	beqz	a0,80002a0c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x28c>
    80002a00:	0004b503          	ld	a0,0(s1)
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	714080e7          	jalr	1812(ra) # 80002118 <_ZN9Scheduler3putEP3TCB>
    if(*handle==nullptr){
    80002a0c:	0004b783          	ld	a5,0(s1)
    80002a10:	02078663          	beqz	a5,80002a3c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2bc>
        return -1;
    }else{return 0;}
    80002a14:	00000513          	li	a0,0
}
    80002a18:	01813083          	ld	ra,24(sp)
    80002a1c:	01013403          	ld	s0,16(sp)
    80002a20:	00813483          	ld	s1,8(sp)
    80002a24:	02010113          	addi	sp,sp,32
    80002a28:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80002a2c:	00000713          	li	a4,0
    80002a30:	f9dff06f          	j	800029cc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24c>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80002a34:	00000793          	li	a5,0
    80002a38:	fb1ff06f          	j	800029e8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x268>
        return -1;
    80002a3c:	fff00513          	li	a0,-1
    80002a40:	fd9ff06f          	j	80002a18 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x298>

0000000080002a44 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80002a44:	ff010113          	addi	sp,sp,-16
    80002a48:	00813423          	sd	s0,8(sp)
    80002a4c:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80002a50:	01300793          	li	a5,19
    80002a54:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80002a58:	00000073          	ecall

};
    80002a5c:	00813403          	ld	s0,8(sp)
    80002a60:	01010113          	addi	sp,sp,16
    80002a64:	00008067          	ret

0000000080002a68 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80002a68:	fe010113          	addi	sp,sp,-32
    80002a6c:	00113c23          	sd	ra,24(sp)
    80002a70:	00813823          	sd	s0,16(sp)
    80002a74:	00913423          	sd	s1,8(sp)
    80002a78:	02010413          	addi	s0,sp,32
    //RiscV::popSppSpie();
    __asm__ volatile ("csrw sepc, ra");
    80002a7c:	14109073          	csrw	sepc,ra
    //__asm__ volatile ("sret");
    running->body(running->arguments);
    80002a80:	00004497          	auipc	s1,0x4
    80002a84:	10048493          	addi	s1,s1,256 # 80006b80 <_ZN3TCB7runningE>
    80002a88:	0004b783          	ld	a5,0(s1)
    80002a8c:	0007b703          	ld	a4,0(a5)
    80002a90:	0287b503          	ld	a0,40(a5)
    80002a94:	000700e7          	jalr	a4
    running->setFinished(true);
    80002a98:	00100593          	li	a1,1
    80002a9c:	0004b503          	ld	a0,0(s1)
    80002aa0:	00000097          	auipc	ra,0x0
    80002aa4:	cc4080e7          	jalr	-828(ra) # 80002764 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80002aa8:	00000097          	auipc	ra,0x0
    80002aac:	f9c080e7          	jalr	-100(ra) # 80002a44 <_ZN3TCB5yieldEv>
}
    80002ab0:	01813083          	ld	ra,24(sp)
    80002ab4:	01013403          	ld	s0,16(sp)
    80002ab8:	00813483          	ld	s1,8(sp)
    80002abc:	02010113          	addi	sp,sp,32
    80002ac0:	00008067          	ret

0000000080002ac4 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	00813823          	sd	s0,16(sp)
    80002ad0:	00913423          	sd	s1,8(sp)
    80002ad4:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002ad8:	00004497          	auipc	s1,0x4
    80002adc:	0a84b483          	ld	s1,168(s1) # 80006b80 <_ZN3TCB7runningE>
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80002ae0:	0304b783          	ld	a5,48(s1)
    80002ae4:	02078c63          	beqz	a5,80002b1c <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	5c8080e7          	jalr	1480(ra) # 800020b0 <_ZN9Scheduler3getEv>
    80002af0:	00004797          	auipc	a5,0x4
    80002af4:	08a7b823          	sd	a0,144(a5) # 80006b80 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002af8:	01050593          	addi	a1,a0,16
    80002afc:	01048513          	addi	a0,s1,16
    80002b00:	ffffe097          	auipc	ra,0xffffe
    80002b04:	730080e7          	jalr	1840(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002b08:	01813083          	ld	ra,24(sp)
    80002b0c:	01013403          	ld	s0,16(sp)
    80002b10:	00813483          	ld	s1,8(sp)
    80002b14:	02010113          	addi	sp,sp,32
    80002b18:	00008067          	ret
    if (old->semBlocked==nullptr && !old->isFinished()) {
    80002b1c:	00048513          	mv	a0,s1
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	c28080e7          	jalr	-984(ra) # 80002748 <_ZNK3TCB10isFinishedEv>
    80002b28:	fc0510e3          	bnez	a0,80002ae8 <_ZN3TCB8dispatchEv+0x24>
        Scheduler::put(old);
    80002b2c:	00048513          	mv	a0,s1
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	5e8080e7          	jalr	1512(ra) # 80002118 <_ZN9Scheduler3putEP3TCB>
    80002b38:	fb1ff06f          	j	80002ae8 <_ZN3TCB8dispatchEv+0x24>

0000000080002b3c <_Znwm>:
#include "../h/MemoryAllocation.hpp"
#include "../h/syscall_c.hpp"

//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    80002b3c:	ff010113          	addi	sp,sp,-16
    80002b40:	00813423          	sd	s0,8(sp)
    80002b44:	01010413          	addi	s0,sp,16

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002b48:	05750793          	addi	a5,a0,87
    80002b4c:	0067d793          	srli	a5,a5,0x6
    80002b50:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80002b54:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002b58:	00004717          	auipc	a4,0x4
    80002b5c:	f6073703          	ld	a4,-160(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b60:	00073503          	ld	a0,0(a4)
    80002b64:	0c050863          	beqz	a0,80002c34 <_Znwm+0xf8>
            cur->next=fmem_head->next;
    80002b68:	00004717          	auipc	a4,0x4
    80002b6c:	f5073703          	ld	a4,-176(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b70:	00073683          	ld	a3,0(a4)
    80002b74:	0006b683          	ld	a3,0(a3) # 8000 <_entry-0x7fff8000>
    80002b78:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80002b7c:	00073703          	ld	a4,0(a4)
    80002b80:	00873603          	ld	a2,8(a4)
    80002b84:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80002b88:	01053703          	ld	a4,16(a0)
    80002b8c:	02f76663          	bltu	a4,a5,80002bb8 <_Znwm+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002b90:	40f70733          	sub	a4,a4,a5
    80002b94:	01800593          	li	a1,24
    80002b98:	02e5ec63          	bltu	a1,a4,80002bd0 <_Znwm+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002b9c:	02060263          	beqz	a2,80002bc0 <_Znwm+0x84>
    80002ba0:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80002ba4:	00053783          	ld	a5,0(a0)
    80002ba8:	08078663          	beqz	a5,80002c34 <_Znwm+0xf8>
    80002bac:	00853703          	ld	a4,8(a0)
    80002bb0:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002bb4:	0800006f          	j	80002c34 <_Znwm+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002bb8:	00068513          	mv	a0,a3
    80002bbc:	fa9ff06f          	j	80002b64 <_Znwm+0x28>
                else fmem_head = cur->next;
    80002bc0:	00004797          	auipc	a5,0x4
    80002bc4:	ef87b783          	ld	a5,-264(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002bc8:	00d7b023          	sd	a3,0(a5)
    80002bcc:	fd9ff06f          	j	80002ba4 <_Znwm+0x68>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002bd0:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80002bd4:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002bd8:	00073023          	sd	zero,0(a4)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002bdc:	00853683          	ld	a3,8(a0)
    80002be0:	06068063          	beqz	a3,80002c40 <_Znwm+0x104>
    80002be4:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002be8:	00053683          	ld	a3,0(a0)
    80002bec:	00068463          	beqz	a3,80002bf4 <_Znwm+0xb8>
    80002bf0:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002bf4:	00853603          	ld	a2,8(a0)
    80002bf8:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002bfc:	00053683          	ld	a3,0(a0)
    80002c00:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002c04:	01053683          	ld	a3,16(a0)
    80002c08:	40f687b3          	sub	a5,a3,a5
    80002c0c:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002c10:	0c070693          	addi	a3,a4,192
    80002c14:	00004597          	auipc	a1,0x4
    80002c18:	ea45b583          	ld	a1,-348(a1) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c1c:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002c20:	00073583          	ld	a1,0(a4)
    80002c24:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002c28:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002c2c:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80002c30:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}
    80002c34:	00813403          	ld	s0,8(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002c40:	0c070693          	addi	a3,a4,192
    80002c44:	00004617          	auipc	a2,0x4
    80002c48:	e7463603          	ld	a2,-396(a2) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c4c:	00d63023          	sd	a3,0(a2)
    80002c50:	f99ff06f          	j	80002be8 <_Znwm+0xac>

0000000080002c54 <_Znam>:

void *operator new[](uint64 n){
    80002c54:	ff010113          	addi	sp,sp,-16
    80002c58:	00813423          	sd	s0,8(sp)
    80002c5c:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002c60:	05750793          	addi	a5,a0,87
    80002c64:	0067d793          	srli	a5,a5,0x6
    80002c68:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80002c6c:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002c70:	00004717          	auipc	a4,0x4
    80002c74:	e4873703          	ld	a4,-440(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c78:	00073503          	ld	a0,0(a4)
    80002c7c:	0c050863          	beqz	a0,80002d4c <_Znam+0xf8>
            cur->next=fmem_head->next;
    80002c80:	00004717          	auipc	a4,0x4
    80002c84:	e3873703          	ld	a4,-456(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002c88:	00073683          	ld	a3,0(a4)
    80002c8c:	0006b683          	ld	a3,0(a3)
    80002c90:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80002c94:	00073703          	ld	a4,0(a4)
    80002c98:	00873603          	ld	a2,8(a4)
    80002c9c:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80002ca0:	01053703          	ld	a4,16(a0)
    80002ca4:	02f76663          	bltu	a4,a5,80002cd0 <_Znam+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002ca8:	40f70733          	sub	a4,a4,a5
    80002cac:	01800593          	li	a1,24
    80002cb0:	02e5ec63          	bltu	a1,a4,80002ce8 <_Znam+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002cb4:	02060263          	beqz	a2,80002cd8 <_Znam+0x84>
    80002cb8:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80002cbc:	00053783          	ld	a5,0(a0)
    80002cc0:	08078663          	beqz	a5,80002d4c <_Znam+0xf8>
    80002cc4:	00853703          	ld	a4,8(a0)
    80002cc8:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002ccc:	0800006f          	j	80002d4c <_Znam+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002cd0:	00068513          	mv	a0,a3
    80002cd4:	fa9ff06f          	j	80002c7c <_Znam+0x28>
                else fmem_head = cur->next;
    80002cd8:	00004797          	auipc	a5,0x4
    80002cdc:	de07b783          	ld	a5,-544(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ce0:	00d7b023          	sd	a3,0(a5)
    80002ce4:	fd9ff06f          	j	80002cbc <_Znam+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002ce8:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80002cec:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002cf0:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    80002cf4:	00853683          	ld	a3,8(a0)
    80002cf8:	06068063          	beqz	a3,80002d58 <_Znam+0x104>
    80002cfc:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002d00:	00053683          	ld	a3,0(a0)
    80002d04:	00068463          	beqz	a3,80002d0c <_Znam+0xb8>
    80002d08:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002d0c:	00853603          	ld	a2,8(a0)
    80002d10:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002d14:	00053683          	ld	a3,0(a0)
    80002d18:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002d1c:	01053683          	ld	a3,16(a0)
    80002d20:	40f687b3          	sub	a5,a3,a5
    80002d24:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002d28:	0c070693          	addi	a3,a4,192
    80002d2c:	00004597          	auipc	a1,0x4
    80002d30:	d8c5b583          	ld	a1,-628(a1) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d34:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002d38:	00073583          	ld	a1,0(a4)
    80002d3c:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002d40:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002d44:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002d48:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
}
    80002d4c:	00813403          	ld	s0,8(sp)
    80002d50:	01010113          	addi	sp,sp,16
    80002d54:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002d58:	0c070693          	addi	a3,a4,192
    80002d5c:	00004617          	auipc	a2,0x4
    80002d60:	d5c63603          	ld	a2,-676(a2) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d64:	00d63023          	sd	a3,0(a2)
    80002d68:	f99ff06f          	j	80002d00 <_Znam+0xac>

0000000080002d6c <_ZdlPv>:

void operator delete(void *p) noexcept {
    80002d6c:	ff010113          	addi	sp,sp,-16
    80002d70:	00813423          	sd	s0,8(sp)
    80002d74:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002d78:	00004797          	auipc	a5,0x4
    80002d7c:	d407b783          	ld	a5,-704(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d80:	0007b703          	ld	a4,0(a5)
    80002d84:	00070e63          	beqz	a4,80002da0 <_ZdlPv+0x34>
    80002d88:	02e56063          	bltu	a0,a4,80002da8 <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002d8c:	00070793          	mv	a5,a4
    80002d90:	00073703          	ld	a4,0(a4)
    80002d94:	00e50c63          	beq	a0,a4,80002dac <_ZdlPv+0x40>
    80002d98:	fea76ae3          	bltu	a4,a0,80002d8c <_ZdlPv+0x20>
    80002d9c:	0100006f          	j	80002dac <_ZdlPv+0x40>
            cur=nullptr;
    80002da0:	00070793          	mv	a5,a4
    80002da4:	0080006f          	j	80002dac <_ZdlPv+0x40>
    80002da8:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80002dac:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002db0:	04000713          	li	a4,64
    80002db4:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002db8:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80002dbc:	04078e63          	beqz	a5,80002e18 <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    80002dc0:	0007b703          	ld	a4,0(a5)
    80002dc4:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002dc8:	00053703          	ld	a4,0(a0)
    80002dcc:	00070463          	beqz	a4,80002dd4 <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    80002dd0:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80002dd4:	04078c63          	beqz	a5,80002e2c <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002dd8:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002ddc:	00050c63          	beqz	a0,80002df4 <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002de0:	00053703          	ld	a4,0(a0)
    80002de4:	00070863          	beqz	a4,80002df4 <_ZdlPv+0x88>
    80002de8:	01053683          	ld	a3,16(a0)
    80002dec:	00d50633          	add	a2,a0,a3
    80002df0:	04c70663          	beq	a4,a2,80002e3c <_ZdlPv+0xd0>
        if (!curr) return;
    80002df4:	00078c63          	beqz	a5,80002e0c <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002df8:	0007b703          	ld	a4,0(a5)
    80002dfc:	00070863          	beqz	a4,80002e0c <_ZdlPv+0xa0>
    80002e00:	0107b683          	ld	a3,16(a5)
    80002e04:	00d78633          	add	a2,a5,a3
    80002e08:	04c70a63          	beq	a4,a2,80002e5c <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    80002e0c:	00813403          	ld	s0,8(sp)
    80002e10:	01010113          	addi	sp,sp,16
    80002e14:	00008067          	ret
                    newSeg->next = fmem_head;
    80002e18:	00004717          	auipc	a4,0x4
    80002e1c:	ca073703          	ld	a4,-864(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e20:	00073703          	ld	a4,0(a4)
    80002e24:	00e53023          	sd	a4,0(a0)
    80002e28:	fa1ff06f          	j	80002dc8 <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    80002e2c:	00004717          	auipc	a4,0x4
    80002e30:	c8c73703          	ld	a4,-884(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e34:	00a73023          	sd	a0,0(a4)
    80002e38:	fa5ff06f          	j	80002ddc <_ZdlPv+0x70>
            curr->size += curr->next->size;
    80002e3c:	01073603          	ld	a2,16(a4)
    80002e40:	00c686b3          	add	a3,a3,a2
    80002e44:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80002e48:	00073703          	ld	a4,0(a4)
    80002e4c:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80002e50:	fa0702e3          	beqz	a4,80002df4 <_ZdlPv+0x88>
    80002e54:	00a73423          	sd	a0,8(a4)
    80002e58:	f9dff06f          	j	80002df4 <_ZdlPv+0x88>
            curr->size += curr->next->size;
    80002e5c:	01073603          	ld	a2,16(a4)
    80002e60:	00c686b3          	add	a3,a3,a2
    80002e64:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002e68:	00073703          	ld	a4,0(a4)
    80002e6c:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80002e70:	f8070ee3          	beqz	a4,80002e0c <_ZdlPv+0xa0>
    80002e74:	00f73423          	sd	a5,8(a4)
    80002e78:	f95ff06f          	j	80002e0c <_ZdlPv+0xa0>

0000000080002e7c <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    80002e7c:	ff010113          	addi	sp,sp,-16
    80002e80:	00813423          	sd	s0,8(sp)
    80002e84:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002e88:	00004797          	auipc	a5,0x4
    80002e8c:	c307b783          	ld	a5,-976(a5) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e90:	0007b703          	ld	a4,0(a5)
    80002e94:	00070e63          	beqz	a4,80002eb0 <_ZdaPv+0x34>
    80002e98:	02e56063          	bltu	a0,a4,80002eb8 <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002e9c:	00070793          	mv	a5,a4
    80002ea0:	00073703          	ld	a4,0(a4)
    80002ea4:	00e50c63          	beq	a0,a4,80002ebc <_ZdaPv+0x40>
    80002ea8:	fea76ae3          	bltu	a4,a0,80002e9c <_ZdaPv+0x20>
    80002eac:	0100006f          	j	80002ebc <_ZdaPv+0x40>
            cur=nullptr;
    80002eb0:	00070793          	mv	a5,a4
    80002eb4:	0080006f          	j	80002ebc <_ZdaPv+0x40>
    80002eb8:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80002ebc:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002ec0:	04000713          	li	a4,64
    80002ec4:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002ec8:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80002ecc:	04078e63          	beqz	a5,80002f28 <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    80002ed0:	0007b703          	ld	a4,0(a5)
    80002ed4:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002ed8:	00053703          	ld	a4,0(a0)
    80002edc:	00070463          	beqz	a4,80002ee4 <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    80002ee0:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80002ee4:	04078c63          	beqz	a5,80002f3c <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002ee8:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002eec:	00050c63          	beqz	a0,80002f04 <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002ef0:	00053703          	ld	a4,0(a0)
    80002ef4:	00070863          	beqz	a4,80002f04 <_ZdaPv+0x88>
    80002ef8:	01053683          	ld	a3,16(a0)
    80002efc:	00d50633          	add	a2,a0,a3
    80002f00:	04c70663          	beq	a4,a2,80002f4c <_ZdaPv+0xd0>
        if (!curr) return;
    80002f04:	00078c63          	beqz	a5,80002f1c <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002f08:	0007b703          	ld	a4,0(a5)
    80002f0c:	00070863          	beqz	a4,80002f1c <_ZdaPv+0xa0>
    80002f10:	0107b683          	ld	a3,16(a5)
    80002f14:	00d78633          	add	a2,a5,a3
    80002f18:	04c70a63          	beq	a4,a2,80002f6c <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
    80002f1c:	00813403          	ld	s0,8(sp)
    80002f20:	01010113          	addi	sp,sp,16
    80002f24:	00008067          	ret
                    newSeg->next = fmem_head;
    80002f28:	00004717          	auipc	a4,0x4
    80002f2c:	b9073703          	ld	a4,-1136(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f30:	00073703          	ld	a4,0(a4)
    80002f34:	00e53023          	sd	a4,0(a0)
    80002f38:	fa1ff06f          	j	80002ed8 <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    80002f3c:	00004717          	auipc	a4,0x4
    80002f40:	b7c73703          	ld	a4,-1156(a4) # 80006ab8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f44:	00a73023          	sd	a0,0(a4)
    80002f48:	fa5ff06f          	j	80002eec <_ZdaPv+0x70>
            curr->size += curr->next->size;
    80002f4c:	01073603          	ld	a2,16(a4)
    80002f50:	00c686b3          	add	a3,a3,a2
    80002f54:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80002f58:	00073703          	ld	a4,0(a4)
    80002f5c:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80002f60:	fa0702e3          	beqz	a4,80002f04 <_ZdaPv+0x88>
    80002f64:	00a73423          	sd	a0,8(a4)
    80002f68:	f9dff06f          	j	80002f04 <_ZdaPv+0x88>
            curr->size += curr->next->size;
    80002f6c:	01073603          	ld	a2,16(a4)
    80002f70:	00c686b3          	add	a3,a3,a2
    80002f74:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002f78:	00073703          	ld	a4,0(a4)
    80002f7c:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80002f80:	f8070ee3          	beqz	a4,80002f1c <_ZdaPv+0xa0>
    80002f84:	00f73423          	sd	a5,8(a4)
    80002f88:	f95ff06f          	j	80002f1c <_ZdaPv+0xa0>

0000000080002f8c <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
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
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002fb8:	00004797          	auipc	a5,0x4
    80002fbc:	ae07b783          	ld	a5,-1312(a5) # 80006a98 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002fc0:	0007b783          	ld	a5,0(a5)
    80002fc4:	00004717          	auipc	a4,0x4
    80002fc8:	bcf73623          	sd	a5,-1076(a4) # 80006b90 <_ZN16MemoryAllocation9fmem_headE>
    80002fcc:	fd5ff06f          	j	80002fa0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002fd0 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    80002fd0:	ff010113          	addi	sp,sp,-16
    80002fd4:	00113423          	sd	ra,8(sp)
    80002fd8:	00813023          	sd	s0,0(sp)
    80002fdc:	01010413          	addi	s0,sp,16
    80002fe0:	000105b7          	lui	a1,0x10
    80002fe4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002fe8:	00100513          	li	a0,1
    80002fec:	00000097          	auipc	ra,0x0
    80002ff0:	fa0080e7          	jalr	-96(ra) # 80002f8c <_Z41__static_initialization_and_destruction_0ii>
    80002ff4:	00813083          	ld	ra,8(sp)
    80002ff8:	00013403          	ld	s0,0(sp)
    80002ffc:	01010113          	addi	sp,sp,16
    80003000:	00008067          	ret

0000000080003004 <_Z11printStringPKc>:

#include "../h/Print.hpp"
#include "../lib/console.h"
#include "../h/RiscV.hpp"
//promenjeni print string i integer na vezbama 2, 1:10:00 tu negde, da bi se onemogucili prekidi u samoj niti
void printString(char const *string){
    80003004:	fe010113          	addi	sp,sp,-32
    80003008:	00113c23          	sd	ra,24(sp)
    8000300c:	00813823          	sd	s0,16(sp)
    80003010:	00913423          	sd	s1,8(sp)
    80003014:	01213023          	sd	s2,0(sp)
    80003018:	02010413          	addi	s0,sp,32
    8000301c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80003020:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80003024:	00200793          	li	a5,2
    80003028:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = RiscV::r_sstatus();
    RiscV::mc_sstatus(RiscV::SSTATUS_SIE);
    while(*string!='\0'){
    8000302c:	0004c503          	lbu	a0,0(s1)
    80003030:	00050a63          	beqz	a0,80003044 <_Z11printStringPKc+0x40>
        __putc(*string);
    80003034:	00002097          	auipc	ra,0x2
    80003038:	1d8080e7          	jalr	472(ra) # 8000520c <__putc>
        string++;
    8000303c:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80003040:	fedff06f          	j	8000302c <_Z11printStringPKc+0x28>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80003044:	0009091b          	sext.w	s2,s2
    80003048:	00297913          	andi	s2,s2,2
    8000304c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    80003050:	10092073          	csrs	sstatus,s2
}
    80003054:	01813083          	ld	ra,24(sp)
    80003058:	01013403          	ld	s0,16(sp)
    8000305c:	00813483          	ld	s1,8(sp)
    80003060:	00013903          	ld	s2,0(sp)
    80003064:	02010113          	addi	sp,sp,32
    80003068:	00008067          	ret

000000008000306c <_Z12printIntegeri>:

void printInteger(int integer){
    8000306c:	fd010113          	addi	sp,sp,-48
    80003070:	02113423          	sd	ra,40(sp)
    80003074:	02813023          	sd	s0,32(sp)
    80003078:	00913c23          	sd	s1,24(sp)
    8000307c:	01213823          	sd	s2,16(sp)
    80003080:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80003084:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80003088:	00200793          	li	a5,2
    8000308c:	1007b073          	csrc	sstatus,a5
    char buf[16];
    int i, neg;
    uint x;

    neg=0;
    if(integer<0){
    80003090:	08054663          	bltz	a0,8000311c <_Z12printIntegeri+0xb0>
        neg=1;
        x=-integer;
    }else{
        x=integer;
    80003094:	0005051b          	sext.w	a0,a0
    neg=0;
    80003098:	00000593          	li	a1,0
    }

    i=0;
    8000309c:	00000493          	li	s1,0
    do {
        buf[i++] = digits [x%10];
    800030a0:	00a00693          	li	a3,10
    800030a4:	02d577bb          	remuw	a5,a0,a3
    800030a8:	00048613          	mv	a2,s1
    800030ac:	0014849b          	addiw	s1,s1,1
    800030b0:	02079713          	slli	a4,a5,0x20
    800030b4:	02075713          	srli	a4,a4,0x20
    800030b8:	00003797          	auipc	a5,0x3
    800030bc:	04078793          	addi	a5,a5,64 # 800060f8 <_ZZ12printIntegeriE6digits>
    800030c0:	00e787b3          	add	a5,a5,a4
    800030c4:	0007c703          	lbu	a4,0(a5)
    800030c8:	fe040793          	addi	a5,s0,-32
    800030cc:	00c787b3          	add	a5,a5,a2
    800030d0:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    800030d4:	0005071b          	sext.w	a4,a0
    800030d8:	02d5553b          	divuw	a0,a0,a3
    800030dc:	00900793          	li	a5,9
    800030e0:	fce7e0e3          	bltu	a5,a4,800030a0 <_Z12printIntegeri+0x34>
    if(neg) buf[i++] = '-';
    800030e4:	00058c63          	beqz	a1,800030fc <_Z12printIntegeri+0x90>
    800030e8:	fe040793          	addi	a5,s0,-32
    800030ec:	009784b3          	add	s1,a5,s1
    800030f0:	02d00793          	li	a5,45
    800030f4:	fef48823          	sb	a5,-16(s1)
    800030f8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0){
    800030fc:	fff4849b          	addiw	s1,s1,-1
    80003100:	0204c463          	bltz	s1,80003128 <_Z12printIntegeri+0xbc>
        __putc(buf[i]);
    80003104:	fe040793          	addi	a5,s0,-32
    80003108:	009787b3          	add	a5,a5,s1
    8000310c:	ff07c503          	lbu	a0,-16(a5)
    80003110:	00002097          	auipc	ra,0x2
    80003114:	0fc080e7          	jalr	252(ra) # 8000520c <__putc>
    80003118:	fe5ff06f          	j	800030fc <_Z12printIntegeri+0x90>
        x=-integer;
    8000311c:	40a0053b          	negw	a0,a0
        neg=1;
    80003120:	00100593          	li	a1,1
    80003124:	f79ff06f          	j	8000309c <_Z12printIntegeri+0x30>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80003128:	0009091b          	sext.w	s2,s2
    8000312c:	00297913          	andi	s2,s2,2
    80003130:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    80003134:	10092073          	csrs	sstatus,s2
}
    80003138:	02813083          	ld	ra,40(sp)
    8000313c:	02013403          	ld	s0,32(sp)
    80003140:	01813483          	ld	s1,24(sp)
    80003144:	01013903          	ld	s2,16(sp)
    80003148:	03010113          	addi	sp,sp,48
    8000314c:	00008067          	ret

0000000080003150 <start>:
    80003150:	ff010113          	addi	sp,sp,-16
    80003154:	00813423          	sd	s0,8(sp)
    80003158:	01010413          	addi	s0,sp,16
    8000315c:	300027f3          	csrr	a5,mstatus
    80003160:	ffffe737          	lui	a4,0xffffe
    80003164:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff6a0f>
    80003168:	00e7f7b3          	and	a5,a5,a4
    8000316c:	00001737          	lui	a4,0x1
    80003170:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003174:	00e7e7b3          	or	a5,a5,a4
    80003178:	30079073          	csrw	mstatus,a5
    8000317c:	00000797          	auipc	a5,0x0
    80003180:	16078793          	addi	a5,a5,352 # 800032dc <system_main>
    80003184:	34179073          	csrw	mepc,a5
    80003188:	00000793          	li	a5,0
    8000318c:	18079073          	csrw	satp,a5
    80003190:	000107b7          	lui	a5,0x10
    80003194:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003198:	30279073          	csrw	medeleg,a5
    8000319c:	30379073          	csrw	mideleg,a5
    800031a0:	104027f3          	csrr	a5,sie
    800031a4:	2227e793          	ori	a5,a5,546
    800031a8:	10479073          	csrw	sie,a5
    800031ac:	fff00793          	li	a5,-1
    800031b0:	00a7d793          	srli	a5,a5,0xa
    800031b4:	3b079073          	csrw	pmpaddr0,a5
    800031b8:	00f00793          	li	a5,15
    800031bc:	3a079073          	csrw	pmpcfg0,a5
    800031c0:	f14027f3          	csrr	a5,mhartid
    800031c4:	0200c737          	lui	a4,0x200c
    800031c8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800031cc:	0007869b          	sext.w	a3,a5
    800031d0:	00269713          	slli	a4,a3,0x2
    800031d4:	000f4637          	lui	a2,0xf4
    800031d8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800031dc:	00d70733          	add	a4,a4,a3
    800031e0:	0037979b          	slliw	a5,a5,0x3
    800031e4:	020046b7          	lui	a3,0x2004
    800031e8:	00d787b3          	add	a5,a5,a3
    800031ec:	00c585b3          	add	a1,a1,a2
    800031f0:	00371693          	slli	a3,a4,0x3
    800031f4:	00004717          	auipc	a4,0x4
    800031f8:	9ac70713          	addi	a4,a4,-1620 # 80006ba0 <timer_scratch>
    800031fc:	00b7b023          	sd	a1,0(a5)
    80003200:	00d70733          	add	a4,a4,a3
    80003204:	00f73c23          	sd	a5,24(a4)
    80003208:	02c73023          	sd	a2,32(a4)
    8000320c:	34071073          	csrw	mscratch,a4
    80003210:	00000797          	auipc	a5,0x0
    80003214:	6e078793          	addi	a5,a5,1760 # 800038f0 <timervec>
    80003218:	30579073          	csrw	mtvec,a5
    8000321c:	300027f3          	csrr	a5,mstatus
    80003220:	0087e793          	ori	a5,a5,8
    80003224:	30079073          	csrw	mstatus,a5
    80003228:	304027f3          	csrr	a5,mie
    8000322c:	0807e793          	ori	a5,a5,128
    80003230:	30479073          	csrw	mie,a5
    80003234:	f14027f3          	csrr	a5,mhartid
    80003238:	0007879b          	sext.w	a5,a5
    8000323c:	00078213          	mv	tp,a5
    80003240:	30200073          	mret
    80003244:	00813403          	ld	s0,8(sp)
    80003248:	01010113          	addi	sp,sp,16
    8000324c:	00008067          	ret

0000000080003250 <timerinit>:
    80003250:	ff010113          	addi	sp,sp,-16
    80003254:	00813423          	sd	s0,8(sp)
    80003258:	01010413          	addi	s0,sp,16
    8000325c:	f14027f3          	csrr	a5,mhartid
    80003260:	0200c737          	lui	a4,0x200c
    80003264:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003268:	0007869b          	sext.w	a3,a5
    8000326c:	00269713          	slli	a4,a3,0x2
    80003270:	000f4637          	lui	a2,0xf4
    80003274:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003278:	00d70733          	add	a4,a4,a3
    8000327c:	0037979b          	slliw	a5,a5,0x3
    80003280:	020046b7          	lui	a3,0x2004
    80003284:	00d787b3          	add	a5,a5,a3
    80003288:	00c585b3          	add	a1,a1,a2
    8000328c:	00371693          	slli	a3,a4,0x3
    80003290:	00004717          	auipc	a4,0x4
    80003294:	91070713          	addi	a4,a4,-1776 # 80006ba0 <timer_scratch>
    80003298:	00b7b023          	sd	a1,0(a5)
    8000329c:	00d70733          	add	a4,a4,a3
    800032a0:	00f73c23          	sd	a5,24(a4)
    800032a4:	02c73023          	sd	a2,32(a4)
    800032a8:	34071073          	csrw	mscratch,a4
    800032ac:	00000797          	auipc	a5,0x0
    800032b0:	64478793          	addi	a5,a5,1604 # 800038f0 <timervec>
    800032b4:	30579073          	csrw	mtvec,a5
    800032b8:	300027f3          	csrr	a5,mstatus
    800032bc:	0087e793          	ori	a5,a5,8
    800032c0:	30079073          	csrw	mstatus,a5
    800032c4:	304027f3          	csrr	a5,mie
    800032c8:	0807e793          	ori	a5,a5,128
    800032cc:	30479073          	csrw	mie,a5
    800032d0:	00813403          	ld	s0,8(sp)
    800032d4:	01010113          	addi	sp,sp,16
    800032d8:	00008067          	ret

00000000800032dc <system_main>:
    800032dc:	fe010113          	addi	sp,sp,-32
    800032e0:	00813823          	sd	s0,16(sp)
    800032e4:	00913423          	sd	s1,8(sp)
    800032e8:	00113c23          	sd	ra,24(sp)
    800032ec:	02010413          	addi	s0,sp,32
    800032f0:	00000097          	auipc	ra,0x0
    800032f4:	0c4080e7          	jalr	196(ra) # 800033b4 <cpuid>
    800032f8:	00004497          	auipc	s1,0x4
    800032fc:	80848493          	addi	s1,s1,-2040 # 80006b00 <started>
    80003300:	02050263          	beqz	a0,80003324 <system_main+0x48>
    80003304:	0004a783          	lw	a5,0(s1)
    80003308:	0007879b          	sext.w	a5,a5
    8000330c:	fe078ce3          	beqz	a5,80003304 <system_main+0x28>
    80003310:	0ff0000f          	fence
    80003314:	00003517          	auipc	a0,0x3
    80003318:	e2450513          	addi	a0,a0,-476 # 80006138 <_ZZ12printIntegeriE6digits+0x40>
    8000331c:	00001097          	auipc	ra,0x1
    80003320:	a70080e7          	jalr	-1424(ra) # 80003d8c <panic>
    80003324:	00001097          	auipc	ra,0x1
    80003328:	9c4080e7          	jalr	-1596(ra) # 80003ce8 <consoleinit>
    8000332c:	00001097          	auipc	ra,0x1
    80003330:	150080e7          	jalr	336(ra) # 8000447c <printfinit>
    80003334:	00003517          	auipc	a0,0x3
    80003338:	d5c50513          	addi	a0,a0,-676 # 80006090 <CONSOLE_STATUS+0x80>
    8000333c:	00001097          	auipc	ra,0x1
    80003340:	aac080e7          	jalr	-1364(ra) # 80003de8 <__printf>
    80003344:	00003517          	auipc	a0,0x3
    80003348:	dc450513          	addi	a0,a0,-572 # 80006108 <_ZZ12printIntegeriE6digits+0x10>
    8000334c:	00001097          	auipc	ra,0x1
    80003350:	a9c080e7          	jalr	-1380(ra) # 80003de8 <__printf>
    80003354:	00003517          	auipc	a0,0x3
    80003358:	d3c50513          	addi	a0,a0,-708 # 80006090 <CONSOLE_STATUS+0x80>
    8000335c:	00001097          	auipc	ra,0x1
    80003360:	a8c080e7          	jalr	-1396(ra) # 80003de8 <__printf>
    80003364:	00001097          	auipc	ra,0x1
    80003368:	4a4080e7          	jalr	1188(ra) # 80004808 <kinit>
    8000336c:	00000097          	auipc	ra,0x0
    80003370:	148080e7          	jalr	328(ra) # 800034b4 <trapinit>
    80003374:	00000097          	auipc	ra,0x0
    80003378:	16c080e7          	jalr	364(ra) # 800034e0 <trapinithart>
    8000337c:	00000097          	auipc	ra,0x0
    80003380:	5b4080e7          	jalr	1460(ra) # 80003930 <plicinit>
    80003384:	00000097          	auipc	ra,0x0
    80003388:	5d4080e7          	jalr	1492(ra) # 80003958 <plicinithart>
    8000338c:	00000097          	auipc	ra,0x0
    80003390:	078080e7          	jalr	120(ra) # 80003404 <userinit>
    80003394:	0ff0000f          	fence
    80003398:	00100793          	li	a5,1
    8000339c:	00003517          	auipc	a0,0x3
    800033a0:	d8450513          	addi	a0,a0,-636 # 80006120 <_ZZ12printIntegeriE6digits+0x28>
    800033a4:	00f4a023          	sw	a5,0(s1)
    800033a8:	00001097          	auipc	ra,0x1
    800033ac:	a40080e7          	jalr	-1472(ra) # 80003de8 <__printf>
    800033b0:	0000006f          	j	800033b0 <system_main+0xd4>

00000000800033b4 <cpuid>:
    800033b4:	ff010113          	addi	sp,sp,-16
    800033b8:	00813423          	sd	s0,8(sp)
    800033bc:	01010413          	addi	s0,sp,16
    800033c0:	00020513          	mv	a0,tp
    800033c4:	00813403          	ld	s0,8(sp)
    800033c8:	0005051b          	sext.w	a0,a0
    800033cc:	01010113          	addi	sp,sp,16
    800033d0:	00008067          	ret

00000000800033d4 <mycpu>:
    800033d4:	ff010113          	addi	sp,sp,-16
    800033d8:	00813423          	sd	s0,8(sp)
    800033dc:	01010413          	addi	s0,sp,16
    800033e0:	00020793          	mv	a5,tp
    800033e4:	00813403          	ld	s0,8(sp)
    800033e8:	0007879b          	sext.w	a5,a5
    800033ec:	00779793          	slli	a5,a5,0x7
    800033f0:	00004517          	auipc	a0,0x4
    800033f4:	7e050513          	addi	a0,a0,2016 # 80007bd0 <cpus>
    800033f8:	00f50533          	add	a0,a0,a5
    800033fc:	01010113          	addi	sp,sp,16
    80003400:	00008067          	ret

0000000080003404 <userinit>:
    80003404:	ff010113          	addi	sp,sp,-16
    80003408:	00813423          	sd	s0,8(sp)
    8000340c:	01010413          	addi	s0,sp,16
    80003410:	00813403          	ld	s0,8(sp)
    80003414:	01010113          	addi	sp,sp,16
    80003418:	fffff317          	auipc	t1,0xfffff
    8000341c:	0e830067          	jr	232(t1) # 80002500 <main>

0000000080003420 <either_copyout>:
    80003420:	ff010113          	addi	sp,sp,-16
    80003424:	00813023          	sd	s0,0(sp)
    80003428:	00113423          	sd	ra,8(sp)
    8000342c:	01010413          	addi	s0,sp,16
    80003430:	02051663          	bnez	a0,8000345c <either_copyout+0x3c>
    80003434:	00058513          	mv	a0,a1
    80003438:	00060593          	mv	a1,a2
    8000343c:	0006861b          	sext.w	a2,a3
    80003440:	00002097          	auipc	ra,0x2
    80003444:	c54080e7          	jalr	-940(ra) # 80005094 <__memmove>
    80003448:	00813083          	ld	ra,8(sp)
    8000344c:	00013403          	ld	s0,0(sp)
    80003450:	00000513          	li	a0,0
    80003454:	01010113          	addi	sp,sp,16
    80003458:	00008067          	ret
    8000345c:	00003517          	auipc	a0,0x3
    80003460:	d0450513          	addi	a0,a0,-764 # 80006160 <_ZZ12printIntegeriE6digits+0x68>
    80003464:	00001097          	auipc	ra,0x1
    80003468:	928080e7          	jalr	-1752(ra) # 80003d8c <panic>

000000008000346c <either_copyin>:
    8000346c:	ff010113          	addi	sp,sp,-16
    80003470:	00813023          	sd	s0,0(sp)
    80003474:	00113423          	sd	ra,8(sp)
    80003478:	01010413          	addi	s0,sp,16
    8000347c:	02059463          	bnez	a1,800034a4 <either_copyin+0x38>
    80003480:	00060593          	mv	a1,a2
    80003484:	0006861b          	sext.w	a2,a3
    80003488:	00002097          	auipc	ra,0x2
    8000348c:	c0c080e7          	jalr	-1012(ra) # 80005094 <__memmove>
    80003490:	00813083          	ld	ra,8(sp)
    80003494:	00013403          	ld	s0,0(sp)
    80003498:	00000513          	li	a0,0
    8000349c:	01010113          	addi	sp,sp,16
    800034a0:	00008067          	ret
    800034a4:	00003517          	auipc	a0,0x3
    800034a8:	ce450513          	addi	a0,a0,-796 # 80006188 <_ZZ12printIntegeriE6digits+0x90>
    800034ac:	00001097          	auipc	ra,0x1
    800034b0:	8e0080e7          	jalr	-1824(ra) # 80003d8c <panic>

00000000800034b4 <trapinit>:
    800034b4:	ff010113          	addi	sp,sp,-16
    800034b8:	00813423          	sd	s0,8(sp)
    800034bc:	01010413          	addi	s0,sp,16
    800034c0:	00813403          	ld	s0,8(sp)
    800034c4:	00003597          	auipc	a1,0x3
    800034c8:	cec58593          	addi	a1,a1,-788 # 800061b0 <_ZZ12printIntegeriE6digits+0xb8>
    800034cc:	00004517          	auipc	a0,0x4
    800034d0:	78450513          	addi	a0,a0,1924 # 80007c50 <tickslock>
    800034d4:	01010113          	addi	sp,sp,16
    800034d8:	00001317          	auipc	t1,0x1
    800034dc:	5c030067          	jr	1472(t1) # 80004a98 <initlock>

00000000800034e0 <trapinithart>:
    800034e0:	ff010113          	addi	sp,sp,-16
    800034e4:	00813423          	sd	s0,8(sp)
    800034e8:	01010413          	addi	s0,sp,16
    800034ec:	00000797          	auipc	a5,0x0
    800034f0:	2f478793          	addi	a5,a5,756 # 800037e0 <kernelvec>
    800034f4:	10579073          	csrw	stvec,a5
    800034f8:	00813403          	ld	s0,8(sp)
    800034fc:	01010113          	addi	sp,sp,16
    80003500:	00008067          	ret

0000000080003504 <usertrap>:
    80003504:	ff010113          	addi	sp,sp,-16
    80003508:	00813423          	sd	s0,8(sp)
    8000350c:	01010413          	addi	s0,sp,16
    80003510:	00813403          	ld	s0,8(sp)
    80003514:	01010113          	addi	sp,sp,16
    80003518:	00008067          	ret

000000008000351c <usertrapret>:
    8000351c:	ff010113          	addi	sp,sp,-16
    80003520:	00813423          	sd	s0,8(sp)
    80003524:	01010413          	addi	s0,sp,16
    80003528:	00813403          	ld	s0,8(sp)
    8000352c:	01010113          	addi	sp,sp,16
    80003530:	00008067          	ret

0000000080003534 <kerneltrap>:
    80003534:	fe010113          	addi	sp,sp,-32
    80003538:	00813823          	sd	s0,16(sp)
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	00913423          	sd	s1,8(sp)
    80003544:	02010413          	addi	s0,sp,32
    80003548:	142025f3          	csrr	a1,scause
    8000354c:	100027f3          	csrr	a5,sstatus
    80003550:	0027f793          	andi	a5,a5,2
    80003554:	10079c63          	bnez	a5,8000366c <kerneltrap+0x138>
    80003558:	142027f3          	csrr	a5,scause
    8000355c:	0207ce63          	bltz	a5,80003598 <kerneltrap+0x64>
    80003560:	00003517          	auipc	a0,0x3
    80003564:	c9850513          	addi	a0,a0,-872 # 800061f8 <_ZZ12printIntegeriE6digits+0x100>
    80003568:	00001097          	auipc	ra,0x1
    8000356c:	880080e7          	jalr	-1920(ra) # 80003de8 <__printf>
    80003570:	141025f3          	csrr	a1,sepc
    80003574:	14302673          	csrr	a2,stval
    80003578:	00003517          	auipc	a0,0x3
    8000357c:	c9050513          	addi	a0,a0,-880 # 80006208 <_ZZ12printIntegeriE6digits+0x110>
    80003580:	00001097          	auipc	ra,0x1
    80003584:	868080e7          	jalr	-1944(ra) # 80003de8 <__printf>
    80003588:	00003517          	auipc	a0,0x3
    8000358c:	c9850513          	addi	a0,a0,-872 # 80006220 <_ZZ12printIntegeriE6digits+0x128>
    80003590:	00000097          	auipc	ra,0x0
    80003594:	7fc080e7          	jalr	2044(ra) # 80003d8c <panic>
    80003598:	0ff7f713          	andi	a4,a5,255
    8000359c:	00900693          	li	a3,9
    800035a0:	04d70063          	beq	a4,a3,800035e0 <kerneltrap+0xac>
    800035a4:	fff00713          	li	a4,-1
    800035a8:	03f71713          	slli	a4,a4,0x3f
    800035ac:	00170713          	addi	a4,a4,1
    800035b0:	fae798e3          	bne	a5,a4,80003560 <kerneltrap+0x2c>
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	e00080e7          	jalr	-512(ra) # 800033b4 <cpuid>
    800035bc:	06050663          	beqz	a0,80003628 <kerneltrap+0xf4>
    800035c0:	144027f3          	csrr	a5,sip
    800035c4:	ffd7f793          	andi	a5,a5,-3
    800035c8:	14479073          	csrw	sip,a5
    800035cc:	01813083          	ld	ra,24(sp)
    800035d0:	01013403          	ld	s0,16(sp)
    800035d4:	00813483          	ld	s1,8(sp)
    800035d8:	02010113          	addi	sp,sp,32
    800035dc:	00008067          	ret
    800035e0:	00000097          	auipc	ra,0x0
    800035e4:	3c4080e7          	jalr	964(ra) # 800039a4 <plic_claim>
    800035e8:	00a00793          	li	a5,10
    800035ec:	00050493          	mv	s1,a0
    800035f0:	06f50863          	beq	a0,a5,80003660 <kerneltrap+0x12c>
    800035f4:	fc050ce3          	beqz	a0,800035cc <kerneltrap+0x98>
    800035f8:	00050593          	mv	a1,a0
    800035fc:	00003517          	auipc	a0,0x3
    80003600:	bdc50513          	addi	a0,a0,-1060 # 800061d8 <_ZZ12printIntegeriE6digits+0xe0>
    80003604:	00000097          	auipc	ra,0x0
    80003608:	7e4080e7          	jalr	2020(ra) # 80003de8 <__printf>
    8000360c:	01013403          	ld	s0,16(sp)
    80003610:	01813083          	ld	ra,24(sp)
    80003614:	00048513          	mv	a0,s1
    80003618:	00813483          	ld	s1,8(sp)
    8000361c:	02010113          	addi	sp,sp,32
    80003620:	00000317          	auipc	t1,0x0
    80003624:	3bc30067          	jr	956(t1) # 800039dc <plic_complete>
    80003628:	00004517          	auipc	a0,0x4
    8000362c:	62850513          	addi	a0,a0,1576 # 80007c50 <tickslock>
    80003630:	00001097          	auipc	ra,0x1
    80003634:	48c080e7          	jalr	1164(ra) # 80004abc <acquire>
    80003638:	00003717          	auipc	a4,0x3
    8000363c:	4cc70713          	addi	a4,a4,1228 # 80006b04 <ticks>
    80003640:	00072783          	lw	a5,0(a4)
    80003644:	00004517          	auipc	a0,0x4
    80003648:	60c50513          	addi	a0,a0,1548 # 80007c50 <tickslock>
    8000364c:	0017879b          	addiw	a5,a5,1
    80003650:	00f72023          	sw	a5,0(a4)
    80003654:	00001097          	auipc	ra,0x1
    80003658:	534080e7          	jalr	1332(ra) # 80004b88 <release>
    8000365c:	f65ff06f          	j	800035c0 <kerneltrap+0x8c>
    80003660:	00001097          	auipc	ra,0x1
    80003664:	090080e7          	jalr	144(ra) # 800046f0 <uartintr>
    80003668:	fa5ff06f          	j	8000360c <kerneltrap+0xd8>
    8000366c:	00003517          	auipc	a0,0x3
    80003670:	b4c50513          	addi	a0,a0,-1204 # 800061b8 <_ZZ12printIntegeriE6digits+0xc0>
    80003674:	00000097          	auipc	ra,0x0
    80003678:	718080e7          	jalr	1816(ra) # 80003d8c <panic>

000000008000367c <clockintr>:
    8000367c:	fe010113          	addi	sp,sp,-32
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	00113c23          	sd	ra,24(sp)
    8000368c:	02010413          	addi	s0,sp,32
    80003690:	00004497          	auipc	s1,0x4
    80003694:	5c048493          	addi	s1,s1,1472 # 80007c50 <tickslock>
    80003698:	00048513          	mv	a0,s1
    8000369c:	00001097          	auipc	ra,0x1
    800036a0:	420080e7          	jalr	1056(ra) # 80004abc <acquire>
    800036a4:	00003717          	auipc	a4,0x3
    800036a8:	46070713          	addi	a4,a4,1120 # 80006b04 <ticks>
    800036ac:	00072783          	lw	a5,0(a4)
    800036b0:	01013403          	ld	s0,16(sp)
    800036b4:	01813083          	ld	ra,24(sp)
    800036b8:	00048513          	mv	a0,s1
    800036bc:	0017879b          	addiw	a5,a5,1
    800036c0:	00813483          	ld	s1,8(sp)
    800036c4:	00f72023          	sw	a5,0(a4)
    800036c8:	02010113          	addi	sp,sp,32
    800036cc:	00001317          	auipc	t1,0x1
    800036d0:	4bc30067          	jr	1212(t1) # 80004b88 <release>

00000000800036d4 <devintr>:
    800036d4:	142027f3          	csrr	a5,scause
    800036d8:	00000513          	li	a0,0
    800036dc:	0007c463          	bltz	a5,800036e4 <devintr+0x10>
    800036e0:	00008067          	ret
    800036e4:	fe010113          	addi	sp,sp,-32
    800036e8:	00813823          	sd	s0,16(sp)
    800036ec:	00113c23          	sd	ra,24(sp)
    800036f0:	00913423          	sd	s1,8(sp)
    800036f4:	02010413          	addi	s0,sp,32
    800036f8:	0ff7f713          	andi	a4,a5,255
    800036fc:	00900693          	li	a3,9
    80003700:	04d70c63          	beq	a4,a3,80003758 <devintr+0x84>
    80003704:	fff00713          	li	a4,-1
    80003708:	03f71713          	slli	a4,a4,0x3f
    8000370c:	00170713          	addi	a4,a4,1
    80003710:	00e78c63          	beq	a5,a4,80003728 <devintr+0x54>
    80003714:	01813083          	ld	ra,24(sp)
    80003718:	01013403          	ld	s0,16(sp)
    8000371c:	00813483          	ld	s1,8(sp)
    80003720:	02010113          	addi	sp,sp,32
    80003724:	00008067          	ret
    80003728:	00000097          	auipc	ra,0x0
    8000372c:	c8c080e7          	jalr	-884(ra) # 800033b4 <cpuid>
    80003730:	06050663          	beqz	a0,8000379c <devintr+0xc8>
    80003734:	144027f3          	csrr	a5,sip
    80003738:	ffd7f793          	andi	a5,a5,-3
    8000373c:	14479073          	csrw	sip,a5
    80003740:	01813083          	ld	ra,24(sp)
    80003744:	01013403          	ld	s0,16(sp)
    80003748:	00813483          	ld	s1,8(sp)
    8000374c:	00200513          	li	a0,2
    80003750:	02010113          	addi	sp,sp,32
    80003754:	00008067          	ret
    80003758:	00000097          	auipc	ra,0x0
    8000375c:	24c080e7          	jalr	588(ra) # 800039a4 <plic_claim>
    80003760:	00a00793          	li	a5,10
    80003764:	00050493          	mv	s1,a0
    80003768:	06f50663          	beq	a0,a5,800037d4 <devintr+0x100>
    8000376c:	00100513          	li	a0,1
    80003770:	fa0482e3          	beqz	s1,80003714 <devintr+0x40>
    80003774:	00048593          	mv	a1,s1
    80003778:	00003517          	auipc	a0,0x3
    8000377c:	a6050513          	addi	a0,a0,-1440 # 800061d8 <_ZZ12printIntegeriE6digits+0xe0>
    80003780:	00000097          	auipc	ra,0x0
    80003784:	668080e7          	jalr	1640(ra) # 80003de8 <__printf>
    80003788:	00048513          	mv	a0,s1
    8000378c:	00000097          	auipc	ra,0x0
    80003790:	250080e7          	jalr	592(ra) # 800039dc <plic_complete>
    80003794:	00100513          	li	a0,1
    80003798:	f7dff06f          	j	80003714 <devintr+0x40>
    8000379c:	00004517          	auipc	a0,0x4
    800037a0:	4b450513          	addi	a0,a0,1204 # 80007c50 <tickslock>
    800037a4:	00001097          	auipc	ra,0x1
    800037a8:	318080e7          	jalr	792(ra) # 80004abc <acquire>
    800037ac:	00003717          	auipc	a4,0x3
    800037b0:	35870713          	addi	a4,a4,856 # 80006b04 <ticks>
    800037b4:	00072783          	lw	a5,0(a4)
    800037b8:	00004517          	auipc	a0,0x4
    800037bc:	49850513          	addi	a0,a0,1176 # 80007c50 <tickslock>
    800037c0:	0017879b          	addiw	a5,a5,1
    800037c4:	00f72023          	sw	a5,0(a4)
    800037c8:	00001097          	auipc	ra,0x1
    800037cc:	3c0080e7          	jalr	960(ra) # 80004b88 <release>
    800037d0:	f65ff06f          	j	80003734 <devintr+0x60>
    800037d4:	00001097          	auipc	ra,0x1
    800037d8:	f1c080e7          	jalr	-228(ra) # 800046f0 <uartintr>
    800037dc:	fadff06f          	j	80003788 <devintr+0xb4>

00000000800037e0 <kernelvec>:
    800037e0:	f0010113          	addi	sp,sp,-256
    800037e4:	00113023          	sd	ra,0(sp)
    800037e8:	00213423          	sd	sp,8(sp)
    800037ec:	00313823          	sd	gp,16(sp)
    800037f0:	00413c23          	sd	tp,24(sp)
    800037f4:	02513023          	sd	t0,32(sp)
    800037f8:	02613423          	sd	t1,40(sp)
    800037fc:	02713823          	sd	t2,48(sp)
    80003800:	02813c23          	sd	s0,56(sp)
    80003804:	04913023          	sd	s1,64(sp)
    80003808:	04a13423          	sd	a0,72(sp)
    8000380c:	04b13823          	sd	a1,80(sp)
    80003810:	04c13c23          	sd	a2,88(sp)
    80003814:	06d13023          	sd	a3,96(sp)
    80003818:	06e13423          	sd	a4,104(sp)
    8000381c:	06f13823          	sd	a5,112(sp)
    80003820:	07013c23          	sd	a6,120(sp)
    80003824:	09113023          	sd	a7,128(sp)
    80003828:	09213423          	sd	s2,136(sp)
    8000382c:	09313823          	sd	s3,144(sp)
    80003830:	09413c23          	sd	s4,152(sp)
    80003834:	0b513023          	sd	s5,160(sp)
    80003838:	0b613423          	sd	s6,168(sp)
    8000383c:	0b713823          	sd	s7,176(sp)
    80003840:	0b813c23          	sd	s8,184(sp)
    80003844:	0d913023          	sd	s9,192(sp)
    80003848:	0da13423          	sd	s10,200(sp)
    8000384c:	0db13823          	sd	s11,208(sp)
    80003850:	0dc13c23          	sd	t3,216(sp)
    80003854:	0fd13023          	sd	t4,224(sp)
    80003858:	0fe13423          	sd	t5,232(sp)
    8000385c:	0ff13823          	sd	t6,240(sp)
    80003860:	cd5ff0ef          	jal	ra,80003534 <kerneltrap>
    80003864:	00013083          	ld	ra,0(sp)
    80003868:	00813103          	ld	sp,8(sp)
    8000386c:	01013183          	ld	gp,16(sp)
    80003870:	02013283          	ld	t0,32(sp)
    80003874:	02813303          	ld	t1,40(sp)
    80003878:	03013383          	ld	t2,48(sp)
    8000387c:	03813403          	ld	s0,56(sp)
    80003880:	04013483          	ld	s1,64(sp)
    80003884:	04813503          	ld	a0,72(sp)
    80003888:	05013583          	ld	a1,80(sp)
    8000388c:	05813603          	ld	a2,88(sp)
    80003890:	06013683          	ld	a3,96(sp)
    80003894:	06813703          	ld	a4,104(sp)
    80003898:	07013783          	ld	a5,112(sp)
    8000389c:	07813803          	ld	a6,120(sp)
    800038a0:	08013883          	ld	a7,128(sp)
    800038a4:	08813903          	ld	s2,136(sp)
    800038a8:	09013983          	ld	s3,144(sp)
    800038ac:	09813a03          	ld	s4,152(sp)
    800038b0:	0a013a83          	ld	s5,160(sp)
    800038b4:	0a813b03          	ld	s6,168(sp)
    800038b8:	0b013b83          	ld	s7,176(sp)
    800038bc:	0b813c03          	ld	s8,184(sp)
    800038c0:	0c013c83          	ld	s9,192(sp)
    800038c4:	0c813d03          	ld	s10,200(sp)
    800038c8:	0d013d83          	ld	s11,208(sp)
    800038cc:	0d813e03          	ld	t3,216(sp)
    800038d0:	0e013e83          	ld	t4,224(sp)
    800038d4:	0e813f03          	ld	t5,232(sp)
    800038d8:	0f013f83          	ld	t6,240(sp)
    800038dc:	10010113          	addi	sp,sp,256
    800038e0:	10200073          	sret
    800038e4:	00000013          	nop
    800038e8:	00000013          	nop
    800038ec:	00000013          	nop

00000000800038f0 <timervec>:
    800038f0:	34051573          	csrrw	a0,mscratch,a0
    800038f4:	00b53023          	sd	a1,0(a0)
    800038f8:	00c53423          	sd	a2,8(a0)
    800038fc:	00d53823          	sd	a3,16(a0)
    80003900:	01853583          	ld	a1,24(a0)
    80003904:	02053603          	ld	a2,32(a0)
    80003908:	0005b683          	ld	a3,0(a1)
    8000390c:	00c686b3          	add	a3,a3,a2
    80003910:	00d5b023          	sd	a3,0(a1)
    80003914:	00200593          	li	a1,2
    80003918:	14459073          	csrw	sip,a1
    8000391c:	01053683          	ld	a3,16(a0)
    80003920:	00853603          	ld	a2,8(a0)
    80003924:	00053583          	ld	a1,0(a0)
    80003928:	34051573          	csrrw	a0,mscratch,a0
    8000392c:	30200073          	mret

0000000080003930 <plicinit>:
    80003930:	ff010113          	addi	sp,sp,-16
    80003934:	00813423          	sd	s0,8(sp)
    80003938:	01010413          	addi	s0,sp,16
    8000393c:	00813403          	ld	s0,8(sp)
    80003940:	0c0007b7          	lui	a5,0xc000
    80003944:	00100713          	li	a4,1
    80003948:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000394c:	00e7a223          	sw	a4,4(a5)
    80003950:	01010113          	addi	sp,sp,16
    80003954:	00008067          	ret

0000000080003958 <plicinithart>:
    80003958:	ff010113          	addi	sp,sp,-16
    8000395c:	00813023          	sd	s0,0(sp)
    80003960:	00113423          	sd	ra,8(sp)
    80003964:	01010413          	addi	s0,sp,16
    80003968:	00000097          	auipc	ra,0x0
    8000396c:	a4c080e7          	jalr	-1460(ra) # 800033b4 <cpuid>
    80003970:	0085171b          	slliw	a4,a0,0x8
    80003974:	0c0027b7          	lui	a5,0xc002
    80003978:	00e787b3          	add	a5,a5,a4
    8000397c:	40200713          	li	a4,1026
    80003980:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003984:	00813083          	ld	ra,8(sp)
    80003988:	00013403          	ld	s0,0(sp)
    8000398c:	00d5151b          	slliw	a0,a0,0xd
    80003990:	0c2017b7          	lui	a5,0xc201
    80003994:	00a78533          	add	a0,a5,a0
    80003998:	00052023          	sw	zero,0(a0)
    8000399c:	01010113          	addi	sp,sp,16
    800039a0:	00008067          	ret

00000000800039a4 <plic_claim>:
    800039a4:	ff010113          	addi	sp,sp,-16
    800039a8:	00813023          	sd	s0,0(sp)
    800039ac:	00113423          	sd	ra,8(sp)
    800039b0:	01010413          	addi	s0,sp,16
    800039b4:	00000097          	auipc	ra,0x0
    800039b8:	a00080e7          	jalr	-1536(ra) # 800033b4 <cpuid>
    800039bc:	00813083          	ld	ra,8(sp)
    800039c0:	00013403          	ld	s0,0(sp)
    800039c4:	00d5151b          	slliw	a0,a0,0xd
    800039c8:	0c2017b7          	lui	a5,0xc201
    800039cc:	00a78533          	add	a0,a5,a0
    800039d0:	00452503          	lw	a0,4(a0)
    800039d4:	01010113          	addi	sp,sp,16
    800039d8:	00008067          	ret

00000000800039dc <plic_complete>:
    800039dc:	fe010113          	addi	sp,sp,-32
    800039e0:	00813823          	sd	s0,16(sp)
    800039e4:	00913423          	sd	s1,8(sp)
    800039e8:	00113c23          	sd	ra,24(sp)
    800039ec:	02010413          	addi	s0,sp,32
    800039f0:	00050493          	mv	s1,a0
    800039f4:	00000097          	auipc	ra,0x0
    800039f8:	9c0080e7          	jalr	-1600(ra) # 800033b4 <cpuid>
    800039fc:	01813083          	ld	ra,24(sp)
    80003a00:	01013403          	ld	s0,16(sp)
    80003a04:	00d5179b          	slliw	a5,a0,0xd
    80003a08:	0c201737          	lui	a4,0xc201
    80003a0c:	00f707b3          	add	a5,a4,a5
    80003a10:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003a14:	00813483          	ld	s1,8(sp)
    80003a18:	02010113          	addi	sp,sp,32
    80003a1c:	00008067          	ret

0000000080003a20 <consolewrite>:
    80003a20:	fb010113          	addi	sp,sp,-80
    80003a24:	04813023          	sd	s0,64(sp)
    80003a28:	04113423          	sd	ra,72(sp)
    80003a2c:	02913c23          	sd	s1,56(sp)
    80003a30:	03213823          	sd	s2,48(sp)
    80003a34:	03313423          	sd	s3,40(sp)
    80003a38:	03413023          	sd	s4,32(sp)
    80003a3c:	01513c23          	sd	s5,24(sp)
    80003a40:	05010413          	addi	s0,sp,80
    80003a44:	06c05c63          	blez	a2,80003abc <consolewrite+0x9c>
    80003a48:	00060993          	mv	s3,a2
    80003a4c:	00050a13          	mv	s4,a0
    80003a50:	00058493          	mv	s1,a1
    80003a54:	00000913          	li	s2,0
    80003a58:	fff00a93          	li	s5,-1
    80003a5c:	01c0006f          	j	80003a78 <consolewrite+0x58>
    80003a60:	fbf44503          	lbu	a0,-65(s0)
    80003a64:	0019091b          	addiw	s2,s2,1
    80003a68:	00148493          	addi	s1,s1,1
    80003a6c:	00001097          	auipc	ra,0x1
    80003a70:	a9c080e7          	jalr	-1380(ra) # 80004508 <uartputc>
    80003a74:	03298063          	beq	s3,s2,80003a94 <consolewrite+0x74>
    80003a78:	00048613          	mv	a2,s1
    80003a7c:	00100693          	li	a3,1
    80003a80:	000a0593          	mv	a1,s4
    80003a84:	fbf40513          	addi	a0,s0,-65
    80003a88:	00000097          	auipc	ra,0x0
    80003a8c:	9e4080e7          	jalr	-1564(ra) # 8000346c <either_copyin>
    80003a90:	fd5518e3          	bne	a0,s5,80003a60 <consolewrite+0x40>
    80003a94:	04813083          	ld	ra,72(sp)
    80003a98:	04013403          	ld	s0,64(sp)
    80003a9c:	03813483          	ld	s1,56(sp)
    80003aa0:	02813983          	ld	s3,40(sp)
    80003aa4:	02013a03          	ld	s4,32(sp)
    80003aa8:	01813a83          	ld	s5,24(sp)
    80003aac:	00090513          	mv	a0,s2
    80003ab0:	03013903          	ld	s2,48(sp)
    80003ab4:	05010113          	addi	sp,sp,80
    80003ab8:	00008067          	ret
    80003abc:	00000913          	li	s2,0
    80003ac0:	fd5ff06f          	j	80003a94 <consolewrite+0x74>

0000000080003ac4 <consoleread>:
    80003ac4:	f9010113          	addi	sp,sp,-112
    80003ac8:	06813023          	sd	s0,96(sp)
    80003acc:	04913c23          	sd	s1,88(sp)
    80003ad0:	05213823          	sd	s2,80(sp)
    80003ad4:	05313423          	sd	s3,72(sp)
    80003ad8:	05413023          	sd	s4,64(sp)
    80003adc:	03513c23          	sd	s5,56(sp)
    80003ae0:	03613823          	sd	s6,48(sp)
    80003ae4:	03713423          	sd	s7,40(sp)
    80003ae8:	03813023          	sd	s8,32(sp)
    80003aec:	06113423          	sd	ra,104(sp)
    80003af0:	01913c23          	sd	s9,24(sp)
    80003af4:	07010413          	addi	s0,sp,112
    80003af8:	00060b93          	mv	s7,a2
    80003afc:	00050913          	mv	s2,a0
    80003b00:	00058c13          	mv	s8,a1
    80003b04:	00060b1b          	sext.w	s6,a2
    80003b08:	00004497          	auipc	s1,0x4
    80003b0c:	16048493          	addi	s1,s1,352 # 80007c68 <cons>
    80003b10:	00400993          	li	s3,4
    80003b14:	fff00a13          	li	s4,-1
    80003b18:	00a00a93          	li	s5,10
    80003b1c:	05705e63          	blez	s7,80003b78 <consoleread+0xb4>
    80003b20:	09c4a703          	lw	a4,156(s1)
    80003b24:	0984a783          	lw	a5,152(s1)
    80003b28:	0007071b          	sext.w	a4,a4
    80003b2c:	08e78463          	beq	a5,a4,80003bb4 <consoleread+0xf0>
    80003b30:	07f7f713          	andi	a4,a5,127
    80003b34:	00e48733          	add	a4,s1,a4
    80003b38:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003b3c:	0017869b          	addiw	a3,a5,1
    80003b40:	08d4ac23          	sw	a3,152(s1)
    80003b44:	00070c9b          	sext.w	s9,a4
    80003b48:	0b370663          	beq	a4,s3,80003bf4 <consoleread+0x130>
    80003b4c:	00100693          	li	a3,1
    80003b50:	f9f40613          	addi	a2,s0,-97
    80003b54:	000c0593          	mv	a1,s8
    80003b58:	00090513          	mv	a0,s2
    80003b5c:	f8e40fa3          	sb	a4,-97(s0)
    80003b60:	00000097          	auipc	ra,0x0
    80003b64:	8c0080e7          	jalr	-1856(ra) # 80003420 <either_copyout>
    80003b68:	01450863          	beq	a0,s4,80003b78 <consoleread+0xb4>
    80003b6c:	001c0c13          	addi	s8,s8,1
    80003b70:	fffb8b9b          	addiw	s7,s7,-1
    80003b74:	fb5c94e3          	bne	s9,s5,80003b1c <consoleread+0x58>
    80003b78:	000b851b          	sext.w	a0,s7
    80003b7c:	06813083          	ld	ra,104(sp)
    80003b80:	06013403          	ld	s0,96(sp)
    80003b84:	05813483          	ld	s1,88(sp)
    80003b88:	05013903          	ld	s2,80(sp)
    80003b8c:	04813983          	ld	s3,72(sp)
    80003b90:	04013a03          	ld	s4,64(sp)
    80003b94:	03813a83          	ld	s5,56(sp)
    80003b98:	02813b83          	ld	s7,40(sp)
    80003b9c:	02013c03          	ld	s8,32(sp)
    80003ba0:	01813c83          	ld	s9,24(sp)
    80003ba4:	40ab053b          	subw	a0,s6,a0
    80003ba8:	03013b03          	ld	s6,48(sp)
    80003bac:	07010113          	addi	sp,sp,112
    80003bb0:	00008067          	ret
    80003bb4:	00001097          	auipc	ra,0x1
    80003bb8:	1d8080e7          	jalr	472(ra) # 80004d8c <push_on>
    80003bbc:	0984a703          	lw	a4,152(s1)
    80003bc0:	09c4a783          	lw	a5,156(s1)
    80003bc4:	0007879b          	sext.w	a5,a5
    80003bc8:	fef70ce3          	beq	a4,a5,80003bc0 <consoleread+0xfc>
    80003bcc:	00001097          	auipc	ra,0x1
    80003bd0:	234080e7          	jalr	564(ra) # 80004e00 <pop_on>
    80003bd4:	0984a783          	lw	a5,152(s1)
    80003bd8:	07f7f713          	andi	a4,a5,127
    80003bdc:	00e48733          	add	a4,s1,a4
    80003be0:	01874703          	lbu	a4,24(a4)
    80003be4:	0017869b          	addiw	a3,a5,1
    80003be8:	08d4ac23          	sw	a3,152(s1)
    80003bec:	00070c9b          	sext.w	s9,a4
    80003bf0:	f5371ee3          	bne	a4,s3,80003b4c <consoleread+0x88>
    80003bf4:	000b851b          	sext.w	a0,s7
    80003bf8:	f96bf2e3          	bgeu	s7,s6,80003b7c <consoleread+0xb8>
    80003bfc:	08f4ac23          	sw	a5,152(s1)
    80003c00:	f7dff06f          	j	80003b7c <consoleread+0xb8>

0000000080003c04 <consputc>:
    80003c04:	10000793          	li	a5,256
    80003c08:	00f50663          	beq	a0,a5,80003c14 <consputc+0x10>
    80003c0c:	00001317          	auipc	t1,0x1
    80003c10:	9f430067          	jr	-1548(t1) # 80004600 <uartputc_sync>
    80003c14:	ff010113          	addi	sp,sp,-16
    80003c18:	00113423          	sd	ra,8(sp)
    80003c1c:	00813023          	sd	s0,0(sp)
    80003c20:	01010413          	addi	s0,sp,16
    80003c24:	00800513          	li	a0,8
    80003c28:	00001097          	auipc	ra,0x1
    80003c2c:	9d8080e7          	jalr	-1576(ra) # 80004600 <uartputc_sync>
    80003c30:	02000513          	li	a0,32
    80003c34:	00001097          	auipc	ra,0x1
    80003c38:	9cc080e7          	jalr	-1588(ra) # 80004600 <uartputc_sync>
    80003c3c:	00013403          	ld	s0,0(sp)
    80003c40:	00813083          	ld	ra,8(sp)
    80003c44:	00800513          	li	a0,8
    80003c48:	01010113          	addi	sp,sp,16
    80003c4c:	00001317          	auipc	t1,0x1
    80003c50:	9b430067          	jr	-1612(t1) # 80004600 <uartputc_sync>

0000000080003c54 <consoleintr>:
    80003c54:	fe010113          	addi	sp,sp,-32
    80003c58:	00813823          	sd	s0,16(sp)
    80003c5c:	00913423          	sd	s1,8(sp)
    80003c60:	01213023          	sd	s2,0(sp)
    80003c64:	00113c23          	sd	ra,24(sp)
    80003c68:	02010413          	addi	s0,sp,32
    80003c6c:	00004917          	auipc	s2,0x4
    80003c70:	ffc90913          	addi	s2,s2,-4 # 80007c68 <cons>
    80003c74:	00050493          	mv	s1,a0
    80003c78:	00090513          	mv	a0,s2
    80003c7c:	00001097          	auipc	ra,0x1
    80003c80:	e40080e7          	jalr	-448(ra) # 80004abc <acquire>
    80003c84:	02048c63          	beqz	s1,80003cbc <consoleintr+0x68>
    80003c88:	0a092783          	lw	a5,160(s2)
    80003c8c:	09892703          	lw	a4,152(s2)
    80003c90:	07f00693          	li	a3,127
    80003c94:	40e7873b          	subw	a4,a5,a4
    80003c98:	02e6e263          	bltu	a3,a4,80003cbc <consoleintr+0x68>
    80003c9c:	00d00713          	li	a4,13
    80003ca0:	04e48063          	beq	s1,a4,80003ce0 <consoleintr+0x8c>
    80003ca4:	07f7f713          	andi	a4,a5,127
    80003ca8:	00e90733          	add	a4,s2,a4
    80003cac:	0017879b          	addiw	a5,a5,1
    80003cb0:	0af92023          	sw	a5,160(s2)
    80003cb4:	00970c23          	sb	s1,24(a4)
    80003cb8:	08f92e23          	sw	a5,156(s2)
    80003cbc:	01013403          	ld	s0,16(sp)
    80003cc0:	01813083          	ld	ra,24(sp)
    80003cc4:	00813483          	ld	s1,8(sp)
    80003cc8:	00013903          	ld	s2,0(sp)
    80003ccc:	00004517          	auipc	a0,0x4
    80003cd0:	f9c50513          	addi	a0,a0,-100 # 80007c68 <cons>
    80003cd4:	02010113          	addi	sp,sp,32
    80003cd8:	00001317          	auipc	t1,0x1
    80003cdc:	eb030067          	jr	-336(t1) # 80004b88 <release>
    80003ce0:	00a00493          	li	s1,10
    80003ce4:	fc1ff06f          	j	80003ca4 <consoleintr+0x50>

0000000080003ce8 <consoleinit>:
    80003ce8:	fe010113          	addi	sp,sp,-32
    80003cec:	00113c23          	sd	ra,24(sp)
    80003cf0:	00813823          	sd	s0,16(sp)
    80003cf4:	00913423          	sd	s1,8(sp)
    80003cf8:	02010413          	addi	s0,sp,32
    80003cfc:	00004497          	auipc	s1,0x4
    80003d00:	f6c48493          	addi	s1,s1,-148 # 80007c68 <cons>
    80003d04:	00048513          	mv	a0,s1
    80003d08:	00002597          	auipc	a1,0x2
    80003d0c:	52858593          	addi	a1,a1,1320 # 80006230 <_ZZ12printIntegeriE6digits+0x138>
    80003d10:	00001097          	auipc	ra,0x1
    80003d14:	d88080e7          	jalr	-632(ra) # 80004a98 <initlock>
    80003d18:	00000097          	auipc	ra,0x0
    80003d1c:	7ac080e7          	jalr	1964(ra) # 800044c4 <uartinit>
    80003d20:	01813083          	ld	ra,24(sp)
    80003d24:	01013403          	ld	s0,16(sp)
    80003d28:	00000797          	auipc	a5,0x0
    80003d2c:	d9c78793          	addi	a5,a5,-612 # 80003ac4 <consoleread>
    80003d30:	0af4bc23          	sd	a5,184(s1)
    80003d34:	00000797          	auipc	a5,0x0
    80003d38:	cec78793          	addi	a5,a5,-788 # 80003a20 <consolewrite>
    80003d3c:	0cf4b023          	sd	a5,192(s1)
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	02010113          	addi	sp,sp,32
    80003d48:	00008067          	ret

0000000080003d4c <console_read>:
    80003d4c:	ff010113          	addi	sp,sp,-16
    80003d50:	00813423          	sd	s0,8(sp)
    80003d54:	01010413          	addi	s0,sp,16
    80003d58:	00813403          	ld	s0,8(sp)
    80003d5c:	00004317          	auipc	t1,0x4
    80003d60:	fc433303          	ld	t1,-60(t1) # 80007d20 <devsw+0x10>
    80003d64:	01010113          	addi	sp,sp,16
    80003d68:	00030067          	jr	t1

0000000080003d6c <console_write>:
    80003d6c:	ff010113          	addi	sp,sp,-16
    80003d70:	00813423          	sd	s0,8(sp)
    80003d74:	01010413          	addi	s0,sp,16
    80003d78:	00813403          	ld	s0,8(sp)
    80003d7c:	00004317          	auipc	t1,0x4
    80003d80:	fac33303          	ld	t1,-84(t1) # 80007d28 <devsw+0x18>
    80003d84:	01010113          	addi	sp,sp,16
    80003d88:	00030067          	jr	t1

0000000080003d8c <panic>:
    80003d8c:	fe010113          	addi	sp,sp,-32
    80003d90:	00113c23          	sd	ra,24(sp)
    80003d94:	00813823          	sd	s0,16(sp)
    80003d98:	00913423          	sd	s1,8(sp)
    80003d9c:	02010413          	addi	s0,sp,32
    80003da0:	00050493          	mv	s1,a0
    80003da4:	00002517          	auipc	a0,0x2
    80003da8:	49450513          	addi	a0,a0,1172 # 80006238 <_ZZ12printIntegeriE6digits+0x140>
    80003dac:	00004797          	auipc	a5,0x4
    80003db0:	0007ae23          	sw	zero,28(a5) # 80007dc8 <pr+0x18>
    80003db4:	00000097          	auipc	ra,0x0
    80003db8:	034080e7          	jalr	52(ra) # 80003de8 <__printf>
    80003dbc:	00048513          	mv	a0,s1
    80003dc0:	00000097          	auipc	ra,0x0
    80003dc4:	028080e7          	jalr	40(ra) # 80003de8 <__printf>
    80003dc8:	00002517          	auipc	a0,0x2
    80003dcc:	2c850513          	addi	a0,a0,712 # 80006090 <CONSOLE_STATUS+0x80>
    80003dd0:	00000097          	auipc	ra,0x0
    80003dd4:	018080e7          	jalr	24(ra) # 80003de8 <__printf>
    80003dd8:	00100793          	li	a5,1
    80003ddc:	00003717          	auipc	a4,0x3
    80003de0:	d2f72623          	sw	a5,-724(a4) # 80006b08 <panicked>
    80003de4:	0000006f          	j	80003de4 <panic+0x58>

0000000080003de8 <__printf>:
    80003de8:	f3010113          	addi	sp,sp,-208
    80003dec:	08813023          	sd	s0,128(sp)
    80003df0:	07313423          	sd	s3,104(sp)
    80003df4:	09010413          	addi	s0,sp,144
    80003df8:	05813023          	sd	s8,64(sp)
    80003dfc:	08113423          	sd	ra,136(sp)
    80003e00:	06913c23          	sd	s1,120(sp)
    80003e04:	07213823          	sd	s2,112(sp)
    80003e08:	07413023          	sd	s4,96(sp)
    80003e0c:	05513c23          	sd	s5,88(sp)
    80003e10:	05613823          	sd	s6,80(sp)
    80003e14:	05713423          	sd	s7,72(sp)
    80003e18:	03913c23          	sd	s9,56(sp)
    80003e1c:	03a13823          	sd	s10,48(sp)
    80003e20:	03b13423          	sd	s11,40(sp)
    80003e24:	00004317          	auipc	t1,0x4
    80003e28:	f8c30313          	addi	t1,t1,-116 # 80007db0 <pr>
    80003e2c:	01832c03          	lw	s8,24(t1)
    80003e30:	00b43423          	sd	a1,8(s0)
    80003e34:	00c43823          	sd	a2,16(s0)
    80003e38:	00d43c23          	sd	a3,24(s0)
    80003e3c:	02e43023          	sd	a4,32(s0)
    80003e40:	02f43423          	sd	a5,40(s0)
    80003e44:	03043823          	sd	a6,48(s0)
    80003e48:	03143c23          	sd	a7,56(s0)
    80003e4c:	00050993          	mv	s3,a0
    80003e50:	4a0c1663          	bnez	s8,800042fc <__printf+0x514>
    80003e54:	60098c63          	beqz	s3,8000446c <__printf+0x684>
    80003e58:	0009c503          	lbu	a0,0(s3)
    80003e5c:	00840793          	addi	a5,s0,8
    80003e60:	f6f43c23          	sd	a5,-136(s0)
    80003e64:	00000493          	li	s1,0
    80003e68:	22050063          	beqz	a0,80004088 <__printf+0x2a0>
    80003e6c:	00002a37          	lui	s4,0x2
    80003e70:	00018ab7          	lui	s5,0x18
    80003e74:	000f4b37          	lui	s6,0xf4
    80003e78:	00989bb7          	lui	s7,0x989
    80003e7c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003e80:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003e84:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003e88:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003e8c:	00148c9b          	addiw	s9,s1,1
    80003e90:	02500793          	li	a5,37
    80003e94:	01998933          	add	s2,s3,s9
    80003e98:	38f51263          	bne	a0,a5,8000421c <__printf+0x434>
    80003e9c:	00094783          	lbu	a5,0(s2)
    80003ea0:	00078c9b          	sext.w	s9,a5
    80003ea4:	1e078263          	beqz	a5,80004088 <__printf+0x2a0>
    80003ea8:	0024849b          	addiw	s1,s1,2
    80003eac:	07000713          	li	a4,112
    80003eb0:	00998933          	add	s2,s3,s1
    80003eb4:	38e78a63          	beq	a5,a4,80004248 <__printf+0x460>
    80003eb8:	20f76863          	bltu	a4,a5,800040c8 <__printf+0x2e0>
    80003ebc:	42a78863          	beq	a5,a0,800042ec <__printf+0x504>
    80003ec0:	06400713          	li	a4,100
    80003ec4:	40e79663          	bne	a5,a4,800042d0 <__printf+0x4e8>
    80003ec8:	f7843783          	ld	a5,-136(s0)
    80003ecc:	0007a603          	lw	a2,0(a5)
    80003ed0:	00878793          	addi	a5,a5,8
    80003ed4:	f6f43c23          	sd	a5,-136(s0)
    80003ed8:	42064a63          	bltz	a2,8000430c <__printf+0x524>
    80003edc:	00a00713          	li	a4,10
    80003ee0:	02e677bb          	remuw	a5,a2,a4
    80003ee4:	00002d97          	auipc	s11,0x2
    80003ee8:	37cd8d93          	addi	s11,s11,892 # 80006260 <digits>
    80003eec:	00900593          	li	a1,9
    80003ef0:	0006051b          	sext.w	a0,a2
    80003ef4:	00000c93          	li	s9,0
    80003ef8:	02079793          	slli	a5,a5,0x20
    80003efc:	0207d793          	srli	a5,a5,0x20
    80003f00:	00fd87b3          	add	a5,s11,a5
    80003f04:	0007c783          	lbu	a5,0(a5)
    80003f08:	02e656bb          	divuw	a3,a2,a4
    80003f0c:	f8f40023          	sb	a5,-128(s0)
    80003f10:	14c5d863          	bge	a1,a2,80004060 <__printf+0x278>
    80003f14:	06300593          	li	a1,99
    80003f18:	00100c93          	li	s9,1
    80003f1c:	02e6f7bb          	remuw	a5,a3,a4
    80003f20:	02079793          	slli	a5,a5,0x20
    80003f24:	0207d793          	srli	a5,a5,0x20
    80003f28:	00fd87b3          	add	a5,s11,a5
    80003f2c:	0007c783          	lbu	a5,0(a5)
    80003f30:	02e6d73b          	divuw	a4,a3,a4
    80003f34:	f8f400a3          	sb	a5,-127(s0)
    80003f38:	12a5f463          	bgeu	a1,a0,80004060 <__printf+0x278>
    80003f3c:	00a00693          	li	a3,10
    80003f40:	00900593          	li	a1,9
    80003f44:	02d777bb          	remuw	a5,a4,a3
    80003f48:	02079793          	slli	a5,a5,0x20
    80003f4c:	0207d793          	srli	a5,a5,0x20
    80003f50:	00fd87b3          	add	a5,s11,a5
    80003f54:	0007c503          	lbu	a0,0(a5)
    80003f58:	02d757bb          	divuw	a5,a4,a3
    80003f5c:	f8a40123          	sb	a0,-126(s0)
    80003f60:	48e5f263          	bgeu	a1,a4,800043e4 <__printf+0x5fc>
    80003f64:	06300513          	li	a0,99
    80003f68:	02d7f5bb          	remuw	a1,a5,a3
    80003f6c:	02059593          	slli	a1,a1,0x20
    80003f70:	0205d593          	srli	a1,a1,0x20
    80003f74:	00bd85b3          	add	a1,s11,a1
    80003f78:	0005c583          	lbu	a1,0(a1)
    80003f7c:	02d7d7bb          	divuw	a5,a5,a3
    80003f80:	f8b401a3          	sb	a1,-125(s0)
    80003f84:	48e57263          	bgeu	a0,a4,80004408 <__printf+0x620>
    80003f88:	3e700513          	li	a0,999
    80003f8c:	02d7f5bb          	remuw	a1,a5,a3
    80003f90:	02059593          	slli	a1,a1,0x20
    80003f94:	0205d593          	srli	a1,a1,0x20
    80003f98:	00bd85b3          	add	a1,s11,a1
    80003f9c:	0005c583          	lbu	a1,0(a1)
    80003fa0:	02d7d7bb          	divuw	a5,a5,a3
    80003fa4:	f8b40223          	sb	a1,-124(s0)
    80003fa8:	46e57663          	bgeu	a0,a4,80004414 <__printf+0x62c>
    80003fac:	02d7f5bb          	remuw	a1,a5,a3
    80003fb0:	02059593          	slli	a1,a1,0x20
    80003fb4:	0205d593          	srli	a1,a1,0x20
    80003fb8:	00bd85b3          	add	a1,s11,a1
    80003fbc:	0005c583          	lbu	a1,0(a1)
    80003fc0:	02d7d7bb          	divuw	a5,a5,a3
    80003fc4:	f8b402a3          	sb	a1,-123(s0)
    80003fc8:	46ea7863          	bgeu	s4,a4,80004438 <__printf+0x650>
    80003fcc:	02d7f5bb          	remuw	a1,a5,a3
    80003fd0:	02059593          	slli	a1,a1,0x20
    80003fd4:	0205d593          	srli	a1,a1,0x20
    80003fd8:	00bd85b3          	add	a1,s11,a1
    80003fdc:	0005c583          	lbu	a1,0(a1)
    80003fe0:	02d7d7bb          	divuw	a5,a5,a3
    80003fe4:	f8b40323          	sb	a1,-122(s0)
    80003fe8:	3eeaf863          	bgeu	s5,a4,800043d8 <__printf+0x5f0>
    80003fec:	02d7f5bb          	remuw	a1,a5,a3
    80003ff0:	02059593          	slli	a1,a1,0x20
    80003ff4:	0205d593          	srli	a1,a1,0x20
    80003ff8:	00bd85b3          	add	a1,s11,a1
    80003ffc:	0005c583          	lbu	a1,0(a1)
    80004000:	02d7d7bb          	divuw	a5,a5,a3
    80004004:	f8b403a3          	sb	a1,-121(s0)
    80004008:	42eb7e63          	bgeu	s6,a4,80004444 <__printf+0x65c>
    8000400c:	02d7f5bb          	remuw	a1,a5,a3
    80004010:	02059593          	slli	a1,a1,0x20
    80004014:	0205d593          	srli	a1,a1,0x20
    80004018:	00bd85b3          	add	a1,s11,a1
    8000401c:	0005c583          	lbu	a1,0(a1)
    80004020:	02d7d7bb          	divuw	a5,a5,a3
    80004024:	f8b40423          	sb	a1,-120(s0)
    80004028:	42ebfc63          	bgeu	s7,a4,80004460 <__printf+0x678>
    8000402c:	02079793          	slli	a5,a5,0x20
    80004030:	0207d793          	srli	a5,a5,0x20
    80004034:	00fd8db3          	add	s11,s11,a5
    80004038:	000dc703          	lbu	a4,0(s11)
    8000403c:	00a00793          	li	a5,10
    80004040:	00900c93          	li	s9,9
    80004044:	f8e404a3          	sb	a4,-119(s0)
    80004048:	00065c63          	bgez	a2,80004060 <__printf+0x278>
    8000404c:	f9040713          	addi	a4,s0,-112
    80004050:	00f70733          	add	a4,a4,a5
    80004054:	02d00693          	li	a3,45
    80004058:	fed70823          	sb	a3,-16(a4)
    8000405c:	00078c93          	mv	s9,a5
    80004060:	f8040793          	addi	a5,s0,-128
    80004064:	01978cb3          	add	s9,a5,s9
    80004068:	f7f40d13          	addi	s10,s0,-129
    8000406c:	000cc503          	lbu	a0,0(s9)
    80004070:	fffc8c93          	addi	s9,s9,-1
    80004074:	00000097          	auipc	ra,0x0
    80004078:	b90080e7          	jalr	-1136(ra) # 80003c04 <consputc>
    8000407c:	ffac98e3          	bne	s9,s10,8000406c <__printf+0x284>
    80004080:	00094503          	lbu	a0,0(s2)
    80004084:	e00514e3          	bnez	a0,80003e8c <__printf+0xa4>
    80004088:	1a0c1663          	bnez	s8,80004234 <__printf+0x44c>
    8000408c:	08813083          	ld	ra,136(sp)
    80004090:	08013403          	ld	s0,128(sp)
    80004094:	07813483          	ld	s1,120(sp)
    80004098:	07013903          	ld	s2,112(sp)
    8000409c:	06813983          	ld	s3,104(sp)
    800040a0:	06013a03          	ld	s4,96(sp)
    800040a4:	05813a83          	ld	s5,88(sp)
    800040a8:	05013b03          	ld	s6,80(sp)
    800040ac:	04813b83          	ld	s7,72(sp)
    800040b0:	04013c03          	ld	s8,64(sp)
    800040b4:	03813c83          	ld	s9,56(sp)
    800040b8:	03013d03          	ld	s10,48(sp)
    800040bc:	02813d83          	ld	s11,40(sp)
    800040c0:	0d010113          	addi	sp,sp,208
    800040c4:	00008067          	ret
    800040c8:	07300713          	li	a4,115
    800040cc:	1ce78a63          	beq	a5,a4,800042a0 <__printf+0x4b8>
    800040d0:	07800713          	li	a4,120
    800040d4:	1ee79e63          	bne	a5,a4,800042d0 <__printf+0x4e8>
    800040d8:	f7843783          	ld	a5,-136(s0)
    800040dc:	0007a703          	lw	a4,0(a5)
    800040e0:	00878793          	addi	a5,a5,8
    800040e4:	f6f43c23          	sd	a5,-136(s0)
    800040e8:	28074263          	bltz	a4,8000436c <__printf+0x584>
    800040ec:	00002d97          	auipc	s11,0x2
    800040f0:	174d8d93          	addi	s11,s11,372 # 80006260 <digits>
    800040f4:	00f77793          	andi	a5,a4,15
    800040f8:	00fd87b3          	add	a5,s11,a5
    800040fc:	0007c683          	lbu	a3,0(a5)
    80004100:	00f00613          	li	a2,15
    80004104:	0007079b          	sext.w	a5,a4
    80004108:	f8d40023          	sb	a3,-128(s0)
    8000410c:	0047559b          	srliw	a1,a4,0x4
    80004110:	0047569b          	srliw	a3,a4,0x4
    80004114:	00000c93          	li	s9,0
    80004118:	0ee65063          	bge	a2,a4,800041f8 <__printf+0x410>
    8000411c:	00f6f693          	andi	a3,a3,15
    80004120:	00dd86b3          	add	a3,s11,a3
    80004124:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004128:	0087d79b          	srliw	a5,a5,0x8
    8000412c:	00100c93          	li	s9,1
    80004130:	f8d400a3          	sb	a3,-127(s0)
    80004134:	0cb67263          	bgeu	a2,a1,800041f8 <__printf+0x410>
    80004138:	00f7f693          	andi	a3,a5,15
    8000413c:	00dd86b3          	add	a3,s11,a3
    80004140:	0006c583          	lbu	a1,0(a3)
    80004144:	00f00613          	li	a2,15
    80004148:	0047d69b          	srliw	a3,a5,0x4
    8000414c:	f8b40123          	sb	a1,-126(s0)
    80004150:	0047d593          	srli	a1,a5,0x4
    80004154:	28f67e63          	bgeu	a2,a5,800043f0 <__printf+0x608>
    80004158:	00f6f693          	andi	a3,a3,15
    8000415c:	00dd86b3          	add	a3,s11,a3
    80004160:	0006c503          	lbu	a0,0(a3)
    80004164:	0087d813          	srli	a6,a5,0x8
    80004168:	0087d69b          	srliw	a3,a5,0x8
    8000416c:	f8a401a3          	sb	a0,-125(s0)
    80004170:	28b67663          	bgeu	a2,a1,800043fc <__printf+0x614>
    80004174:	00f6f693          	andi	a3,a3,15
    80004178:	00dd86b3          	add	a3,s11,a3
    8000417c:	0006c583          	lbu	a1,0(a3)
    80004180:	00c7d513          	srli	a0,a5,0xc
    80004184:	00c7d69b          	srliw	a3,a5,0xc
    80004188:	f8b40223          	sb	a1,-124(s0)
    8000418c:	29067a63          	bgeu	a2,a6,80004420 <__printf+0x638>
    80004190:	00f6f693          	andi	a3,a3,15
    80004194:	00dd86b3          	add	a3,s11,a3
    80004198:	0006c583          	lbu	a1,0(a3)
    8000419c:	0107d813          	srli	a6,a5,0x10
    800041a0:	0107d69b          	srliw	a3,a5,0x10
    800041a4:	f8b402a3          	sb	a1,-123(s0)
    800041a8:	28a67263          	bgeu	a2,a0,8000442c <__printf+0x644>
    800041ac:	00f6f693          	andi	a3,a3,15
    800041b0:	00dd86b3          	add	a3,s11,a3
    800041b4:	0006c683          	lbu	a3,0(a3)
    800041b8:	0147d79b          	srliw	a5,a5,0x14
    800041bc:	f8d40323          	sb	a3,-122(s0)
    800041c0:	21067663          	bgeu	a2,a6,800043cc <__printf+0x5e4>
    800041c4:	02079793          	slli	a5,a5,0x20
    800041c8:	0207d793          	srli	a5,a5,0x20
    800041cc:	00fd8db3          	add	s11,s11,a5
    800041d0:	000dc683          	lbu	a3,0(s11)
    800041d4:	00800793          	li	a5,8
    800041d8:	00700c93          	li	s9,7
    800041dc:	f8d403a3          	sb	a3,-121(s0)
    800041e0:	00075c63          	bgez	a4,800041f8 <__printf+0x410>
    800041e4:	f9040713          	addi	a4,s0,-112
    800041e8:	00f70733          	add	a4,a4,a5
    800041ec:	02d00693          	li	a3,45
    800041f0:	fed70823          	sb	a3,-16(a4)
    800041f4:	00078c93          	mv	s9,a5
    800041f8:	f8040793          	addi	a5,s0,-128
    800041fc:	01978cb3          	add	s9,a5,s9
    80004200:	f7f40d13          	addi	s10,s0,-129
    80004204:	000cc503          	lbu	a0,0(s9)
    80004208:	fffc8c93          	addi	s9,s9,-1
    8000420c:	00000097          	auipc	ra,0x0
    80004210:	9f8080e7          	jalr	-1544(ra) # 80003c04 <consputc>
    80004214:	ff9d18e3          	bne	s10,s9,80004204 <__printf+0x41c>
    80004218:	0100006f          	j	80004228 <__printf+0x440>
    8000421c:	00000097          	auipc	ra,0x0
    80004220:	9e8080e7          	jalr	-1560(ra) # 80003c04 <consputc>
    80004224:	000c8493          	mv	s1,s9
    80004228:	00094503          	lbu	a0,0(s2)
    8000422c:	c60510e3          	bnez	a0,80003e8c <__printf+0xa4>
    80004230:	e40c0ee3          	beqz	s8,8000408c <__printf+0x2a4>
    80004234:	00004517          	auipc	a0,0x4
    80004238:	b7c50513          	addi	a0,a0,-1156 # 80007db0 <pr>
    8000423c:	00001097          	auipc	ra,0x1
    80004240:	94c080e7          	jalr	-1716(ra) # 80004b88 <release>
    80004244:	e49ff06f          	j	8000408c <__printf+0x2a4>
    80004248:	f7843783          	ld	a5,-136(s0)
    8000424c:	03000513          	li	a0,48
    80004250:	01000d13          	li	s10,16
    80004254:	00878713          	addi	a4,a5,8
    80004258:	0007bc83          	ld	s9,0(a5)
    8000425c:	f6e43c23          	sd	a4,-136(s0)
    80004260:	00000097          	auipc	ra,0x0
    80004264:	9a4080e7          	jalr	-1628(ra) # 80003c04 <consputc>
    80004268:	07800513          	li	a0,120
    8000426c:	00000097          	auipc	ra,0x0
    80004270:	998080e7          	jalr	-1640(ra) # 80003c04 <consputc>
    80004274:	00002d97          	auipc	s11,0x2
    80004278:	fecd8d93          	addi	s11,s11,-20 # 80006260 <digits>
    8000427c:	03ccd793          	srli	a5,s9,0x3c
    80004280:	00fd87b3          	add	a5,s11,a5
    80004284:	0007c503          	lbu	a0,0(a5)
    80004288:	fffd0d1b          	addiw	s10,s10,-1
    8000428c:	004c9c93          	slli	s9,s9,0x4
    80004290:	00000097          	auipc	ra,0x0
    80004294:	974080e7          	jalr	-1676(ra) # 80003c04 <consputc>
    80004298:	fe0d12e3          	bnez	s10,8000427c <__printf+0x494>
    8000429c:	f8dff06f          	j	80004228 <__printf+0x440>
    800042a0:	f7843783          	ld	a5,-136(s0)
    800042a4:	0007bc83          	ld	s9,0(a5)
    800042a8:	00878793          	addi	a5,a5,8
    800042ac:	f6f43c23          	sd	a5,-136(s0)
    800042b0:	000c9a63          	bnez	s9,800042c4 <__printf+0x4dc>
    800042b4:	1080006f          	j	800043bc <__printf+0x5d4>
    800042b8:	001c8c93          	addi	s9,s9,1
    800042bc:	00000097          	auipc	ra,0x0
    800042c0:	948080e7          	jalr	-1720(ra) # 80003c04 <consputc>
    800042c4:	000cc503          	lbu	a0,0(s9)
    800042c8:	fe0518e3          	bnez	a0,800042b8 <__printf+0x4d0>
    800042cc:	f5dff06f          	j	80004228 <__printf+0x440>
    800042d0:	02500513          	li	a0,37
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	930080e7          	jalr	-1744(ra) # 80003c04 <consputc>
    800042dc:	000c8513          	mv	a0,s9
    800042e0:	00000097          	auipc	ra,0x0
    800042e4:	924080e7          	jalr	-1756(ra) # 80003c04 <consputc>
    800042e8:	f41ff06f          	j	80004228 <__printf+0x440>
    800042ec:	02500513          	li	a0,37
    800042f0:	00000097          	auipc	ra,0x0
    800042f4:	914080e7          	jalr	-1772(ra) # 80003c04 <consputc>
    800042f8:	f31ff06f          	j	80004228 <__printf+0x440>
    800042fc:	00030513          	mv	a0,t1
    80004300:	00000097          	auipc	ra,0x0
    80004304:	7bc080e7          	jalr	1980(ra) # 80004abc <acquire>
    80004308:	b4dff06f          	j	80003e54 <__printf+0x6c>
    8000430c:	40c0053b          	negw	a0,a2
    80004310:	00a00713          	li	a4,10
    80004314:	02e576bb          	remuw	a3,a0,a4
    80004318:	00002d97          	auipc	s11,0x2
    8000431c:	f48d8d93          	addi	s11,s11,-184 # 80006260 <digits>
    80004320:	ff700593          	li	a1,-9
    80004324:	02069693          	slli	a3,a3,0x20
    80004328:	0206d693          	srli	a3,a3,0x20
    8000432c:	00dd86b3          	add	a3,s11,a3
    80004330:	0006c683          	lbu	a3,0(a3)
    80004334:	02e557bb          	divuw	a5,a0,a4
    80004338:	f8d40023          	sb	a3,-128(s0)
    8000433c:	10b65e63          	bge	a2,a1,80004458 <__printf+0x670>
    80004340:	06300593          	li	a1,99
    80004344:	02e7f6bb          	remuw	a3,a5,a4
    80004348:	02069693          	slli	a3,a3,0x20
    8000434c:	0206d693          	srli	a3,a3,0x20
    80004350:	00dd86b3          	add	a3,s11,a3
    80004354:	0006c683          	lbu	a3,0(a3)
    80004358:	02e7d73b          	divuw	a4,a5,a4
    8000435c:	00200793          	li	a5,2
    80004360:	f8d400a3          	sb	a3,-127(s0)
    80004364:	bca5ece3          	bltu	a1,a0,80003f3c <__printf+0x154>
    80004368:	ce5ff06f          	j	8000404c <__printf+0x264>
    8000436c:	40e007bb          	negw	a5,a4
    80004370:	00002d97          	auipc	s11,0x2
    80004374:	ef0d8d93          	addi	s11,s11,-272 # 80006260 <digits>
    80004378:	00f7f693          	andi	a3,a5,15
    8000437c:	00dd86b3          	add	a3,s11,a3
    80004380:	0006c583          	lbu	a1,0(a3)
    80004384:	ff100613          	li	a2,-15
    80004388:	0047d69b          	srliw	a3,a5,0x4
    8000438c:	f8b40023          	sb	a1,-128(s0)
    80004390:	0047d59b          	srliw	a1,a5,0x4
    80004394:	0ac75e63          	bge	a4,a2,80004450 <__printf+0x668>
    80004398:	00f6f693          	andi	a3,a3,15
    8000439c:	00dd86b3          	add	a3,s11,a3
    800043a0:	0006c603          	lbu	a2,0(a3)
    800043a4:	00f00693          	li	a3,15
    800043a8:	0087d79b          	srliw	a5,a5,0x8
    800043ac:	f8c400a3          	sb	a2,-127(s0)
    800043b0:	d8b6e4e3          	bltu	a3,a1,80004138 <__printf+0x350>
    800043b4:	00200793          	li	a5,2
    800043b8:	e2dff06f          	j	800041e4 <__printf+0x3fc>
    800043bc:	00002c97          	auipc	s9,0x2
    800043c0:	e84c8c93          	addi	s9,s9,-380 # 80006240 <_ZZ12printIntegeriE6digits+0x148>
    800043c4:	02800513          	li	a0,40
    800043c8:	ef1ff06f          	j	800042b8 <__printf+0x4d0>
    800043cc:	00700793          	li	a5,7
    800043d0:	00600c93          	li	s9,6
    800043d4:	e0dff06f          	j	800041e0 <__printf+0x3f8>
    800043d8:	00700793          	li	a5,7
    800043dc:	00600c93          	li	s9,6
    800043e0:	c69ff06f          	j	80004048 <__printf+0x260>
    800043e4:	00300793          	li	a5,3
    800043e8:	00200c93          	li	s9,2
    800043ec:	c5dff06f          	j	80004048 <__printf+0x260>
    800043f0:	00300793          	li	a5,3
    800043f4:	00200c93          	li	s9,2
    800043f8:	de9ff06f          	j	800041e0 <__printf+0x3f8>
    800043fc:	00400793          	li	a5,4
    80004400:	00300c93          	li	s9,3
    80004404:	dddff06f          	j	800041e0 <__printf+0x3f8>
    80004408:	00400793          	li	a5,4
    8000440c:	00300c93          	li	s9,3
    80004410:	c39ff06f          	j	80004048 <__printf+0x260>
    80004414:	00500793          	li	a5,5
    80004418:	00400c93          	li	s9,4
    8000441c:	c2dff06f          	j	80004048 <__printf+0x260>
    80004420:	00500793          	li	a5,5
    80004424:	00400c93          	li	s9,4
    80004428:	db9ff06f          	j	800041e0 <__printf+0x3f8>
    8000442c:	00600793          	li	a5,6
    80004430:	00500c93          	li	s9,5
    80004434:	dadff06f          	j	800041e0 <__printf+0x3f8>
    80004438:	00600793          	li	a5,6
    8000443c:	00500c93          	li	s9,5
    80004440:	c09ff06f          	j	80004048 <__printf+0x260>
    80004444:	00800793          	li	a5,8
    80004448:	00700c93          	li	s9,7
    8000444c:	bfdff06f          	j	80004048 <__printf+0x260>
    80004450:	00100793          	li	a5,1
    80004454:	d91ff06f          	j	800041e4 <__printf+0x3fc>
    80004458:	00100793          	li	a5,1
    8000445c:	bf1ff06f          	j	8000404c <__printf+0x264>
    80004460:	00900793          	li	a5,9
    80004464:	00800c93          	li	s9,8
    80004468:	be1ff06f          	j	80004048 <__printf+0x260>
    8000446c:	00002517          	auipc	a0,0x2
    80004470:	ddc50513          	addi	a0,a0,-548 # 80006248 <_ZZ12printIntegeriE6digits+0x150>
    80004474:	00000097          	auipc	ra,0x0
    80004478:	918080e7          	jalr	-1768(ra) # 80003d8c <panic>

000000008000447c <printfinit>:
    8000447c:	fe010113          	addi	sp,sp,-32
    80004480:	00813823          	sd	s0,16(sp)
    80004484:	00913423          	sd	s1,8(sp)
    80004488:	00113c23          	sd	ra,24(sp)
    8000448c:	02010413          	addi	s0,sp,32
    80004490:	00004497          	auipc	s1,0x4
    80004494:	92048493          	addi	s1,s1,-1760 # 80007db0 <pr>
    80004498:	00048513          	mv	a0,s1
    8000449c:	00002597          	auipc	a1,0x2
    800044a0:	dbc58593          	addi	a1,a1,-580 # 80006258 <_ZZ12printIntegeriE6digits+0x160>
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	5f4080e7          	jalr	1524(ra) # 80004a98 <initlock>
    800044ac:	01813083          	ld	ra,24(sp)
    800044b0:	01013403          	ld	s0,16(sp)
    800044b4:	0004ac23          	sw	zero,24(s1)
    800044b8:	00813483          	ld	s1,8(sp)
    800044bc:	02010113          	addi	sp,sp,32
    800044c0:	00008067          	ret

00000000800044c4 <uartinit>:
    800044c4:	ff010113          	addi	sp,sp,-16
    800044c8:	00813423          	sd	s0,8(sp)
    800044cc:	01010413          	addi	s0,sp,16
    800044d0:	100007b7          	lui	a5,0x10000
    800044d4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800044d8:	f8000713          	li	a4,-128
    800044dc:	00e781a3          	sb	a4,3(a5)
    800044e0:	00300713          	li	a4,3
    800044e4:	00e78023          	sb	a4,0(a5)
    800044e8:	000780a3          	sb	zero,1(a5)
    800044ec:	00e781a3          	sb	a4,3(a5)
    800044f0:	00700693          	li	a3,7
    800044f4:	00d78123          	sb	a3,2(a5)
    800044f8:	00e780a3          	sb	a4,1(a5)
    800044fc:	00813403          	ld	s0,8(sp)
    80004500:	01010113          	addi	sp,sp,16
    80004504:	00008067          	ret

0000000080004508 <uartputc>:
    80004508:	00002797          	auipc	a5,0x2
    8000450c:	6007a783          	lw	a5,1536(a5) # 80006b08 <panicked>
    80004510:	00078463          	beqz	a5,80004518 <uartputc+0x10>
    80004514:	0000006f          	j	80004514 <uartputc+0xc>
    80004518:	fd010113          	addi	sp,sp,-48
    8000451c:	02813023          	sd	s0,32(sp)
    80004520:	00913c23          	sd	s1,24(sp)
    80004524:	01213823          	sd	s2,16(sp)
    80004528:	01313423          	sd	s3,8(sp)
    8000452c:	02113423          	sd	ra,40(sp)
    80004530:	03010413          	addi	s0,sp,48
    80004534:	00002917          	auipc	s2,0x2
    80004538:	5dc90913          	addi	s2,s2,1500 # 80006b10 <uart_tx_r>
    8000453c:	00093783          	ld	a5,0(s2)
    80004540:	00002497          	auipc	s1,0x2
    80004544:	5d848493          	addi	s1,s1,1496 # 80006b18 <uart_tx_w>
    80004548:	0004b703          	ld	a4,0(s1)
    8000454c:	02078693          	addi	a3,a5,32
    80004550:	00050993          	mv	s3,a0
    80004554:	02e69c63          	bne	a3,a4,8000458c <uartputc+0x84>
    80004558:	00001097          	auipc	ra,0x1
    8000455c:	834080e7          	jalr	-1996(ra) # 80004d8c <push_on>
    80004560:	00093783          	ld	a5,0(s2)
    80004564:	0004b703          	ld	a4,0(s1)
    80004568:	02078793          	addi	a5,a5,32
    8000456c:	00e79463          	bne	a5,a4,80004574 <uartputc+0x6c>
    80004570:	0000006f          	j	80004570 <uartputc+0x68>
    80004574:	00001097          	auipc	ra,0x1
    80004578:	88c080e7          	jalr	-1908(ra) # 80004e00 <pop_on>
    8000457c:	00093783          	ld	a5,0(s2)
    80004580:	0004b703          	ld	a4,0(s1)
    80004584:	02078693          	addi	a3,a5,32
    80004588:	fce688e3          	beq	a3,a4,80004558 <uartputc+0x50>
    8000458c:	01f77693          	andi	a3,a4,31
    80004590:	00004597          	auipc	a1,0x4
    80004594:	84058593          	addi	a1,a1,-1984 # 80007dd0 <uart_tx_buf>
    80004598:	00d586b3          	add	a3,a1,a3
    8000459c:	00170713          	addi	a4,a4,1
    800045a0:	01368023          	sb	s3,0(a3)
    800045a4:	00e4b023          	sd	a4,0(s1)
    800045a8:	10000637          	lui	a2,0x10000
    800045ac:	02f71063          	bne	a4,a5,800045cc <uartputc+0xc4>
    800045b0:	0340006f          	j	800045e4 <uartputc+0xdc>
    800045b4:	00074703          	lbu	a4,0(a4)
    800045b8:	00f93023          	sd	a5,0(s2)
    800045bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800045c0:	00093783          	ld	a5,0(s2)
    800045c4:	0004b703          	ld	a4,0(s1)
    800045c8:	00f70e63          	beq	a4,a5,800045e4 <uartputc+0xdc>
    800045cc:	00564683          	lbu	a3,5(a2)
    800045d0:	01f7f713          	andi	a4,a5,31
    800045d4:	00e58733          	add	a4,a1,a4
    800045d8:	0206f693          	andi	a3,a3,32
    800045dc:	00178793          	addi	a5,a5,1
    800045e0:	fc069ae3          	bnez	a3,800045b4 <uartputc+0xac>
    800045e4:	02813083          	ld	ra,40(sp)
    800045e8:	02013403          	ld	s0,32(sp)
    800045ec:	01813483          	ld	s1,24(sp)
    800045f0:	01013903          	ld	s2,16(sp)
    800045f4:	00813983          	ld	s3,8(sp)
    800045f8:	03010113          	addi	sp,sp,48
    800045fc:	00008067          	ret

0000000080004600 <uartputc_sync>:
    80004600:	ff010113          	addi	sp,sp,-16
    80004604:	00813423          	sd	s0,8(sp)
    80004608:	01010413          	addi	s0,sp,16
    8000460c:	00002717          	auipc	a4,0x2
    80004610:	4fc72703          	lw	a4,1276(a4) # 80006b08 <panicked>
    80004614:	02071663          	bnez	a4,80004640 <uartputc_sync+0x40>
    80004618:	00050793          	mv	a5,a0
    8000461c:	100006b7          	lui	a3,0x10000
    80004620:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004624:	02077713          	andi	a4,a4,32
    80004628:	fe070ce3          	beqz	a4,80004620 <uartputc_sync+0x20>
    8000462c:	0ff7f793          	andi	a5,a5,255
    80004630:	00f68023          	sb	a5,0(a3)
    80004634:	00813403          	ld	s0,8(sp)
    80004638:	01010113          	addi	sp,sp,16
    8000463c:	00008067          	ret
    80004640:	0000006f          	j	80004640 <uartputc_sync+0x40>

0000000080004644 <uartstart>:
    80004644:	ff010113          	addi	sp,sp,-16
    80004648:	00813423          	sd	s0,8(sp)
    8000464c:	01010413          	addi	s0,sp,16
    80004650:	00002617          	auipc	a2,0x2
    80004654:	4c060613          	addi	a2,a2,1216 # 80006b10 <uart_tx_r>
    80004658:	00002517          	auipc	a0,0x2
    8000465c:	4c050513          	addi	a0,a0,1216 # 80006b18 <uart_tx_w>
    80004660:	00063783          	ld	a5,0(a2)
    80004664:	00053703          	ld	a4,0(a0)
    80004668:	04f70263          	beq	a4,a5,800046ac <uartstart+0x68>
    8000466c:	100005b7          	lui	a1,0x10000
    80004670:	00003817          	auipc	a6,0x3
    80004674:	76080813          	addi	a6,a6,1888 # 80007dd0 <uart_tx_buf>
    80004678:	01c0006f          	j	80004694 <uartstart+0x50>
    8000467c:	0006c703          	lbu	a4,0(a3)
    80004680:	00f63023          	sd	a5,0(a2)
    80004684:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004688:	00063783          	ld	a5,0(a2)
    8000468c:	00053703          	ld	a4,0(a0)
    80004690:	00f70e63          	beq	a4,a5,800046ac <uartstart+0x68>
    80004694:	01f7f713          	andi	a4,a5,31
    80004698:	00e806b3          	add	a3,a6,a4
    8000469c:	0055c703          	lbu	a4,5(a1)
    800046a0:	00178793          	addi	a5,a5,1
    800046a4:	02077713          	andi	a4,a4,32
    800046a8:	fc071ae3          	bnez	a4,8000467c <uartstart+0x38>
    800046ac:	00813403          	ld	s0,8(sp)
    800046b0:	01010113          	addi	sp,sp,16
    800046b4:	00008067          	ret

00000000800046b8 <uartgetc>:
    800046b8:	ff010113          	addi	sp,sp,-16
    800046bc:	00813423          	sd	s0,8(sp)
    800046c0:	01010413          	addi	s0,sp,16
    800046c4:	10000737          	lui	a4,0x10000
    800046c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800046cc:	0017f793          	andi	a5,a5,1
    800046d0:	00078c63          	beqz	a5,800046e8 <uartgetc+0x30>
    800046d4:	00074503          	lbu	a0,0(a4)
    800046d8:	0ff57513          	andi	a0,a0,255
    800046dc:	00813403          	ld	s0,8(sp)
    800046e0:	01010113          	addi	sp,sp,16
    800046e4:	00008067          	ret
    800046e8:	fff00513          	li	a0,-1
    800046ec:	ff1ff06f          	j	800046dc <uartgetc+0x24>

00000000800046f0 <uartintr>:
    800046f0:	100007b7          	lui	a5,0x10000
    800046f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800046f8:	0017f793          	andi	a5,a5,1
    800046fc:	0a078463          	beqz	a5,800047a4 <uartintr+0xb4>
    80004700:	fe010113          	addi	sp,sp,-32
    80004704:	00813823          	sd	s0,16(sp)
    80004708:	00913423          	sd	s1,8(sp)
    8000470c:	00113c23          	sd	ra,24(sp)
    80004710:	02010413          	addi	s0,sp,32
    80004714:	100004b7          	lui	s1,0x10000
    80004718:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000471c:	0ff57513          	andi	a0,a0,255
    80004720:	fffff097          	auipc	ra,0xfffff
    80004724:	534080e7          	jalr	1332(ra) # 80003c54 <consoleintr>
    80004728:	0054c783          	lbu	a5,5(s1)
    8000472c:	0017f793          	andi	a5,a5,1
    80004730:	fe0794e3          	bnez	a5,80004718 <uartintr+0x28>
    80004734:	00002617          	auipc	a2,0x2
    80004738:	3dc60613          	addi	a2,a2,988 # 80006b10 <uart_tx_r>
    8000473c:	00002517          	auipc	a0,0x2
    80004740:	3dc50513          	addi	a0,a0,988 # 80006b18 <uart_tx_w>
    80004744:	00063783          	ld	a5,0(a2)
    80004748:	00053703          	ld	a4,0(a0)
    8000474c:	04f70263          	beq	a4,a5,80004790 <uartintr+0xa0>
    80004750:	100005b7          	lui	a1,0x10000
    80004754:	00003817          	auipc	a6,0x3
    80004758:	67c80813          	addi	a6,a6,1660 # 80007dd0 <uart_tx_buf>
    8000475c:	01c0006f          	j	80004778 <uartintr+0x88>
    80004760:	0006c703          	lbu	a4,0(a3)
    80004764:	00f63023          	sd	a5,0(a2)
    80004768:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000476c:	00063783          	ld	a5,0(a2)
    80004770:	00053703          	ld	a4,0(a0)
    80004774:	00f70e63          	beq	a4,a5,80004790 <uartintr+0xa0>
    80004778:	01f7f713          	andi	a4,a5,31
    8000477c:	00e806b3          	add	a3,a6,a4
    80004780:	0055c703          	lbu	a4,5(a1)
    80004784:	00178793          	addi	a5,a5,1
    80004788:	02077713          	andi	a4,a4,32
    8000478c:	fc071ae3          	bnez	a4,80004760 <uartintr+0x70>
    80004790:	01813083          	ld	ra,24(sp)
    80004794:	01013403          	ld	s0,16(sp)
    80004798:	00813483          	ld	s1,8(sp)
    8000479c:	02010113          	addi	sp,sp,32
    800047a0:	00008067          	ret
    800047a4:	00002617          	auipc	a2,0x2
    800047a8:	36c60613          	addi	a2,a2,876 # 80006b10 <uart_tx_r>
    800047ac:	00002517          	auipc	a0,0x2
    800047b0:	36c50513          	addi	a0,a0,876 # 80006b18 <uart_tx_w>
    800047b4:	00063783          	ld	a5,0(a2)
    800047b8:	00053703          	ld	a4,0(a0)
    800047bc:	04f70263          	beq	a4,a5,80004800 <uartintr+0x110>
    800047c0:	100005b7          	lui	a1,0x10000
    800047c4:	00003817          	auipc	a6,0x3
    800047c8:	60c80813          	addi	a6,a6,1548 # 80007dd0 <uart_tx_buf>
    800047cc:	01c0006f          	j	800047e8 <uartintr+0xf8>
    800047d0:	0006c703          	lbu	a4,0(a3)
    800047d4:	00f63023          	sd	a5,0(a2)
    800047d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800047dc:	00063783          	ld	a5,0(a2)
    800047e0:	00053703          	ld	a4,0(a0)
    800047e4:	02f70063          	beq	a4,a5,80004804 <uartintr+0x114>
    800047e8:	01f7f713          	andi	a4,a5,31
    800047ec:	00e806b3          	add	a3,a6,a4
    800047f0:	0055c703          	lbu	a4,5(a1)
    800047f4:	00178793          	addi	a5,a5,1
    800047f8:	02077713          	andi	a4,a4,32
    800047fc:	fc071ae3          	bnez	a4,800047d0 <uartintr+0xe0>
    80004800:	00008067          	ret
    80004804:	00008067          	ret

0000000080004808 <kinit>:
    80004808:	fc010113          	addi	sp,sp,-64
    8000480c:	02913423          	sd	s1,40(sp)
    80004810:	fffff7b7          	lui	a5,0xfffff
    80004814:	00004497          	auipc	s1,0x4
    80004818:	5db48493          	addi	s1,s1,1499 # 80008def <end+0xfff>
    8000481c:	02813823          	sd	s0,48(sp)
    80004820:	01313c23          	sd	s3,24(sp)
    80004824:	00f4f4b3          	and	s1,s1,a5
    80004828:	02113c23          	sd	ra,56(sp)
    8000482c:	03213023          	sd	s2,32(sp)
    80004830:	01413823          	sd	s4,16(sp)
    80004834:	01513423          	sd	s5,8(sp)
    80004838:	04010413          	addi	s0,sp,64
    8000483c:	000017b7          	lui	a5,0x1
    80004840:	01100993          	li	s3,17
    80004844:	00f487b3          	add	a5,s1,a5
    80004848:	01b99993          	slli	s3,s3,0x1b
    8000484c:	06f9e063          	bltu	s3,a5,800048ac <kinit+0xa4>
    80004850:	00003a97          	auipc	s5,0x3
    80004854:	5a0a8a93          	addi	s5,s5,1440 # 80007df0 <end>
    80004858:	0754ec63          	bltu	s1,s5,800048d0 <kinit+0xc8>
    8000485c:	0734fa63          	bgeu	s1,s3,800048d0 <kinit+0xc8>
    80004860:	00088a37          	lui	s4,0x88
    80004864:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004868:	00002917          	auipc	s2,0x2
    8000486c:	2b890913          	addi	s2,s2,696 # 80006b20 <kmem>
    80004870:	00ca1a13          	slli	s4,s4,0xc
    80004874:	0140006f          	j	80004888 <kinit+0x80>
    80004878:	000017b7          	lui	a5,0x1
    8000487c:	00f484b3          	add	s1,s1,a5
    80004880:	0554e863          	bltu	s1,s5,800048d0 <kinit+0xc8>
    80004884:	0534f663          	bgeu	s1,s3,800048d0 <kinit+0xc8>
    80004888:	00001637          	lui	a2,0x1
    8000488c:	00100593          	li	a1,1
    80004890:	00048513          	mv	a0,s1
    80004894:	00000097          	auipc	ra,0x0
    80004898:	5e4080e7          	jalr	1508(ra) # 80004e78 <__memset>
    8000489c:	00093783          	ld	a5,0(s2)
    800048a0:	00f4b023          	sd	a5,0(s1)
    800048a4:	00993023          	sd	s1,0(s2)
    800048a8:	fd4498e3          	bne	s1,s4,80004878 <kinit+0x70>
    800048ac:	03813083          	ld	ra,56(sp)
    800048b0:	03013403          	ld	s0,48(sp)
    800048b4:	02813483          	ld	s1,40(sp)
    800048b8:	02013903          	ld	s2,32(sp)
    800048bc:	01813983          	ld	s3,24(sp)
    800048c0:	01013a03          	ld	s4,16(sp)
    800048c4:	00813a83          	ld	s5,8(sp)
    800048c8:	04010113          	addi	sp,sp,64
    800048cc:	00008067          	ret
    800048d0:	00002517          	auipc	a0,0x2
    800048d4:	9a850513          	addi	a0,a0,-1624 # 80006278 <digits+0x18>
    800048d8:	fffff097          	auipc	ra,0xfffff
    800048dc:	4b4080e7          	jalr	1204(ra) # 80003d8c <panic>

00000000800048e0 <freerange>:
    800048e0:	fc010113          	addi	sp,sp,-64
    800048e4:	000017b7          	lui	a5,0x1
    800048e8:	02913423          	sd	s1,40(sp)
    800048ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800048f0:	009504b3          	add	s1,a0,s1
    800048f4:	fffff537          	lui	a0,0xfffff
    800048f8:	02813823          	sd	s0,48(sp)
    800048fc:	02113c23          	sd	ra,56(sp)
    80004900:	03213023          	sd	s2,32(sp)
    80004904:	01313c23          	sd	s3,24(sp)
    80004908:	01413823          	sd	s4,16(sp)
    8000490c:	01513423          	sd	s5,8(sp)
    80004910:	01613023          	sd	s6,0(sp)
    80004914:	04010413          	addi	s0,sp,64
    80004918:	00a4f4b3          	and	s1,s1,a0
    8000491c:	00f487b3          	add	a5,s1,a5
    80004920:	06f5e463          	bltu	a1,a5,80004988 <freerange+0xa8>
    80004924:	00003a97          	auipc	s5,0x3
    80004928:	4cca8a93          	addi	s5,s5,1228 # 80007df0 <end>
    8000492c:	0954e263          	bltu	s1,s5,800049b0 <freerange+0xd0>
    80004930:	01100993          	li	s3,17
    80004934:	01b99993          	slli	s3,s3,0x1b
    80004938:	0734fc63          	bgeu	s1,s3,800049b0 <freerange+0xd0>
    8000493c:	00058a13          	mv	s4,a1
    80004940:	00002917          	auipc	s2,0x2
    80004944:	1e090913          	addi	s2,s2,480 # 80006b20 <kmem>
    80004948:	00002b37          	lui	s6,0x2
    8000494c:	0140006f          	j	80004960 <freerange+0x80>
    80004950:	000017b7          	lui	a5,0x1
    80004954:	00f484b3          	add	s1,s1,a5
    80004958:	0554ec63          	bltu	s1,s5,800049b0 <freerange+0xd0>
    8000495c:	0534fa63          	bgeu	s1,s3,800049b0 <freerange+0xd0>
    80004960:	00001637          	lui	a2,0x1
    80004964:	00100593          	li	a1,1
    80004968:	00048513          	mv	a0,s1
    8000496c:	00000097          	auipc	ra,0x0
    80004970:	50c080e7          	jalr	1292(ra) # 80004e78 <__memset>
    80004974:	00093703          	ld	a4,0(s2)
    80004978:	016487b3          	add	a5,s1,s6
    8000497c:	00e4b023          	sd	a4,0(s1)
    80004980:	00993023          	sd	s1,0(s2)
    80004984:	fcfa76e3          	bgeu	s4,a5,80004950 <freerange+0x70>
    80004988:	03813083          	ld	ra,56(sp)
    8000498c:	03013403          	ld	s0,48(sp)
    80004990:	02813483          	ld	s1,40(sp)
    80004994:	02013903          	ld	s2,32(sp)
    80004998:	01813983          	ld	s3,24(sp)
    8000499c:	01013a03          	ld	s4,16(sp)
    800049a0:	00813a83          	ld	s5,8(sp)
    800049a4:	00013b03          	ld	s6,0(sp)
    800049a8:	04010113          	addi	sp,sp,64
    800049ac:	00008067          	ret
    800049b0:	00002517          	auipc	a0,0x2
    800049b4:	8c850513          	addi	a0,a0,-1848 # 80006278 <digits+0x18>
    800049b8:	fffff097          	auipc	ra,0xfffff
    800049bc:	3d4080e7          	jalr	980(ra) # 80003d8c <panic>

00000000800049c0 <kfree>:
    800049c0:	fe010113          	addi	sp,sp,-32
    800049c4:	00813823          	sd	s0,16(sp)
    800049c8:	00113c23          	sd	ra,24(sp)
    800049cc:	00913423          	sd	s1,8(sp)
    800049d0:	02010413          	addi	s0,sp,32
    800049d4:	03451793          	slli	a5,a0,0x34
    800049d8:	04079c63          	bnez	a5,80004a30 <kfree+0x70>
    800049dc:	00003797          	auipc	a5,0x3
    800049e0:	41478793          	addi	a5,a5,1044 # 80007df0 <end>
    800049e4:	00050493          	mv	s1,a0
    800049e8:	04f56463          	bltu	a0,a5,80004a30 <kfree+0x70>
    800049ec:	01100793          	li	a5,17
    800049f0:	01b79793          	slli	a5,a5,0x1b
    800049f4:	02f57e63          	bgeu	a0,a5,80004a30 <kfree+0x70>
    800049f8:	00001637          	lui	a2,0x1
    800049fc:	00100593          	li	a1,1
    80004a00:	00000097          	auipc	ra,0x0
    80004a04:	478080e7          	jalr	1144(ra) # 80004e78 <__memset>
    80004a08:	00002797          	auipc	a5,0x2
    80004a0c:	11878793          	addi	a5,a5,280 # 80006b20 <kmem>
    80004a10:	0007b703          	ld	a4,0(a5)
    80004a14:	01813083          	ld	ra,24(sp)
    80004a18:	01013403          	ld	s0,16(sp)
    80004a1c:	00e4b023          	sd	a4,0(s1)
    80004a20:	0097b023          	sd	s1,0(a5)
    80004a24:	00813483          	ld	s1,8(sp)
    80004a28:	02010113          	addi	sp,sp,32
    80004a2c:	00008067          	ret
    80004a30:	00002517          	auipc	a0,0x2
    80004a34:	84850513          	addi	a0,a0,-1976 # 80006278 <digits+0x18>
    80004a38:	fffff097          	auipc	ra,0xfffff
    80004a3c:	354080e7          	jalr	852(ra) # 80003d8c <panic>

0000000080004a40 <kalloc>:
    80004a40:	fe010113          	addi	sp,sp,-32
    80004a44:	00813823          	sd	s0,16(sp)
    80004a48:	00913423          	sd	s1,8(sp)
    80004a4c:	00113c23          	sd	ra,24(sp)
    80004a50:	02010413          	addi	s0,sp,32
    80004a54:	00002797          	auipc	a5,0x2
    80004a58:	0cc78793          	addi	a5,a5,204 # 80006b20 <kmem>
    80004a5c:	0007b483          	ld	s1,0(a5)
    80004a60:	02048063          	beqz	s1,80004a80 <kalloc+0x40>
    80004a64:	0004b703          	ld	a4,0(s1)
    80004a68:	00001637          	lui	a2,0x1
    80004a6c:	00500593          	li	a1,5
    80004a70:	00048513          	mv	a0,s1
    80004a74:	00e7b023          	sd	a4,0(a5)
    80004a78:	00000097          	auipc	ra,0x0
    80004a7c:	400080e7          	jalr	1024(ra) # 80004e78 <__memset>
    80004a80:	01813083          	ld	ra,24(sp)
    80004a84:	01013403          	ld	s0,16(sp)
    80004a88:	00048513          	mv	a0,s1
    80004a8c:	00813483          	ld	s1,8(sp)
    80004a90:	02010113          	addi	sp,sp,32
    80004a94:	00008067          	ret

0000000080004a98 <initlock>:
    80004a98:	ff010113          	addi	sp,sp,-16
    80004a9c:	00813423          	sd	s0,8(sp)
    80004aa0:	01010413          	addi	s0,sp,16
    80004aa4:	00813403          	ld	s0,8(sp)
    80004aa8:	00b53423          	sd	a1,8(a0)
    80004aac:	00052023          	sw	zero,0(a0)
    80004ab0:	00053823          	sd	zero,16(a0)
    80004ab4:	01010113          	addi	sp,sp,16
    80004ab8:	00008067          	ret

0000000080004abc <acquire>:
    80004abc:	fe010113          	addi	sp,sp,-32
    80004ac0:	00813823          	sd	s0,16(sp)
    80004ac4:	00913423          	sd	s1,8(sp)
    80004ac8:	00113c23          	sd	ra,24(sp)
    80004acc:	01213023          	sd	s2,0(sp)
    80004ad0:	02010413          	addi	s0,sp,32
    80004ad4:	00050493          	mv	s1,a0
    80004ad8:	10002973          	csrr	s2,sstatus
    80004adc:	100027f3          	csrr	a5,sstatus
    80004ae0:	ffd7f793          	andi	a5,a5,-3
    80004ae4:	10079073          	csrw	sstatus,a5
    80004ae8:	fffff097          	auipc	ra,0xfffff
    80004aec:	8ec080e7          	jalr	-1812(ra) # 800033d4 <mycpu>
    80004af0:	07852783          	lw	a5,120(a0)
    80004af4:	06078e63          	beqz	a5,80004b70 <acquire+0xb4>
    80004af8:	fffff097          	auipc	ra,0xfffff
    80004afc:	8dc080e7          	jalr	-1828(ra) # 800033d4 <mycpu>
    80004b00:	07852783          	lw	a5,120(a0)
    80004b04:	0004a703          	lw	a4,0(s1)
    80004b08:	0017879b          	addiw	a5,a5,1
    80004b0c:	06f52c23          	sw	a5,120(a0)
    80004b10:	04071063          	bnez	a4,80004b50 <acquire+0x94>
    80004b14:	00100713          	li	a4,1
    80004b18:	00070793          	mv	a5,a4
    80004b1c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004b20:	0007879b          	sext.w	a5,a5
    80004b24:	fe079ae3          	bnez	a5,80004b18 <acquire+0x5c>
    80004b28:	0ff0000f          	fence
    80004b2c:	fffff097          	auipc	ra,0xfffff
    80004b30:	8a8080e7          	jalr	-1880(ra) # 800033d4 <mycpu>
    80004b34:	01813083          	ld	ra,24(sp)
    80004b38:	01013403          	ld	s0,16(sp)
    80004b3c:	00a4b823          	sd	a0,16(s1)
    80004b40:	00013903          	ld	s2,0(sp)
    80004b44:	00813483          	ld	s1,8(sp)
    80004b48:	02010113          	addi	sp,sp,32
    80004b4c:	00008067          	ret
    80004b50:	0104b903          	ld	s2,16(s1)
    80004b54:	fffff097          	auipc	ra,0xfffff
    80004b58:	880080e7          	jalr	-1920(ra) # 800033d4 <mycpu>
    80004b5c:	faa91ce3          	bne	s2,a0,80004b14 <acquire+0x58>
    80004b60:	00001517          	auipc	a0,0x1
    80004b64:	72050513          	addi	a0,a0,1824 # 80006280 <digits+0x20>
    80004b68:	fffff097          	auipc	ra,0xfffff
    80004b6c:	224080e7          	jalr	548(ra) # 80003d8c <panic>
    80004b70:	00195913          	srli	s2,s2,0x1
    80004b74:	fffff097          	auipc	ra,0xfffff
    80004b78:	860080e7          	jalr	-1952(ra) # 800033d4 <mycpu>
    80004b7c:	00197913          	andi	s2,s2,1
    80004b80:	07252e23          	sw	s2,124(a0)
    80004b84:	f75ff06f          	j	80004af8 <acquire+0x3c>

0000000080004b88 <release>:
    80004b88:	fe010113          	addi	sp,sp,-32
    80004b8c:	00813823          	sd	s0,16(sp)
    80004b90:	00113c23          	sd	ra,24(sp)
    80004b94:	00913423          	sd	s1,8(sp)
    80004b98:	01213023          	sd	s2,0(sp)
    80004b9c:	02010413          	addi	s0,sp,32
    80004ba0:	00052783          	lw	a5,0(a0)
    80004ba4:	00079a63          	bnez	a5,80004bb8 <release+0x30>
    80004ba8:	00001517          	auipc	a0,0x1
    80004bac:	6e050513          	addi	a0,a0,1760 # 80006288 <digits+0x28>
    80004bb0:	fffff097          	auipc	ra,0xfffff
    80004bb4:	1dc080e7          	jalr	476(ra) # 80003d8c <panic>
    80004bb8:	01053903          	ld	s2,16(a0)
    80004bbc:	00050493          	mv	s1,a0
    80004bc0:	fffff097          	auipc	ra,0xfffff
    80004bc4:	814080e7          	jalr	-2028(ra) # 800033d4 <mycpu>
    80004bc8:	fea910e3          	bne	s2,a0,80004ba8 <release+0x20>
    80004bcc:	0004b823          	sd	zero,16(s1)
    80004bd0:	0ff0000f          	fence
    80004bd4:	0f50000f          	fence	iorw,ow
    80004bd8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004bdc:	ffffe097          	auipc	ra,0xffffe
    80004be0:	7f8080e7          	jalr	2040(ra) # 800033d4 <mycpu>
    80004be4:	100027f3          	csrr	a5,sstatus
    80004be8:	0027f793          	andi	a5,a5,2
    80004bec:	04079a63          	bnez	a5,80004c40 <release+0xb8>
    80004bf0:	07852783          	lw	a5,120(a0)
    80004bf4:	02f05e63          	blez	a5,80004c30 <release+0xa8>
    80004bf8:	fff7871b          	addiw	a4,a5,-1
    80004bfc:	06e52c23          	sw	a4,120(a0)
    80004c00:	00071c63          	bnez	a4,80004c18 <release+0x90>
    80004c04:	07c52783          	lw	a5,124(a0)
    80004c08:	00078863          	beqz	a5,80004c18 <release+0x90>
    80004c0c:	100027f3          	csrr	a5,sstatus
    80004c10:	0027e793          	ori	a5,a5,2
    80004c14:	10079073          	csrw	sstatus,a5
    80004c18:	01813083          	ld	ra,24(sp)
    80004c1c:	01013403          	ld	s0,16(sp)
    80004c20:	00813483          	ld	s1,8(sp)
    80004c24:	00013903          	ld	s2,0(sp)
    80004c28:	02010113          	addi	sp,sp,32
    80004c2c:	00008067          	ret
    80004c30:	00001517          	auipc	a0,0x1
    80004c34:	67850513          	addi	a0,a0,1656 # 800062a8 <digits+0x48>
    80004c38:	fffff097          	auipc	ra,0xfffff
    80004c3c:	154080e7          	jalr	340(ra) # 80003d8c <panic>
    80004c40:	00001517          	auipc	a0,0x1
    80004c44:	65050513          	addi	a0,a0,1616 # 80006290 <digits+0x30>
    80004c48:	fffff097          	auipc	ra,0xfffff
    80004c4c:	144080e7          	jalr	324(ra) # 80003d8c <panic>

0000000080004c50 <holding>:
    80004c50:	00052783          	lw	a5,0(a0)
    80004c54:	00079663          	bnez	a5,80004c60 <holding+0x10>
    80004c58:	00000513          	li	a0,0
    80004c5c:	00008067          	ret
    80004c60:	fe010113          	addi	sp,sp,-32
    80004c64:	00813823          	sd	s0,16(sp)
    80004c68:	00913423          	sd	s1,8(sp)
    80004c6c:	00113c23          	sd	ra,24(sp)
    80004c70:	02010413          	addi	s0,sp,32
    80004c74:	01053483          	ld	s1,16(a0)
    80004c78:	ffffe097          	auipc	ra,0xffffe
    80004c7c:	75c080e7          	jalr	1884(ra) # 800033d4 <mycpu>
    80004c80:	01813083          	ld	ra,24(sp)
    80004c84:	01013403          	ld	s0,16(sp)
    80004c88:	40a48533          	sub	a0,s1,a0
    80004c8c:	00153513          	seqz	a0,a0
    80004c90:	00813483          	ld	s1,8(sp)
    80004c94:	02010113          	addi	sp,sp,32
    80004c98:	00008067          	ret

0000000080004c9c <push_off>:
    80004c9c:	fe010113          	addi	sp,sp,-32
    80004ca0:	00813823          	sd	s0,16(sp)
    80004ca4:	00113c23          	sd	ra,24(sp)
    80004ca8:	00913423          	sd	s1,8(sp)
    80004cac:	02010413          	addi	s0,sp,32
    80004cb0:	100024f3          	csrr	s1,sstatus
    80004cb4:	100027f3          	csrr	a5,sstatus
    80004cb8:	ffd7f793          	andi	a5,a5,-3
    80004cbc:	10079073          	csrw	sstatus,a5
    80004cc0:	ffffe097          	auipc	ra,0xffffe
    80004cc4:	714080e7          	jalr	1812(ra) # 800033d4 <mycpu>
    80004cc8:	07852783          	lw	a5,120(a0)
    80004ccc:	02078663          	beqz	a5,80004cf8 <push_off+0x5c>
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	704080e7          	jalr	1796(ra) # 800033d4 <mycpu>
    80004cd8:	07852783          	lw	a5,120(a0)
    80004cdc:	01813083          	ld	ra,24(sp)
    80004ce0:	01013403          	ld	s0,16(sp)
    80004ce4:	0017879b          	addiw	a5,a5,1
    80004ce8:	06f52c23          	sw	a5,120(a0)
    80004cec:	00813483          	ld	s1,8(sp)
    80004cf0:	02010113          	addi	sp,sp,32
    80004cf4:	00008067          	ret
    80004cf8:	0014d493          	srli	s1,s1,0x1
    80004cfc:	ffffe097          	auipc	ra,0xffffe
    80004d00:	6d8080e7          	jalr	1752(ra) # 800033d4 <mycpu>
    80004d04:	0014f493          	andi	s1,s1,1
    80004d08:	06952e23          	sw	s1,124(a0)
    80004d0c:	fc5ff06f          	j	80004cd0 <push_off+0x34>

0000000080004d10 <pop_off>:
    80004d10:	ff010113          	addi	sp,sp,-16
    80004d14:	00813023          	sd	s0,0(sp)
    80004d18:	00113423          	sd	ra,8(sp)
    80004d1c:	01010413          	addi	s0,sp,16
    80004d20:	ffffe097          	auipc	ra,0xffffe
    80004d24:	6b4080e7          	jalr	1716(ra) # 800033d4 <mycpu>
    80004d28:	100027f3          	csrr	a5,sstatus
    80004d2c:	0027f793          	andi	a5,a5,2
    80004d30:	04079663          	bnez	a5,80004d7c <pop_off+0x6c>
    80004d34:	07852783          	lw	a5,120(a0)
    80004d38:	02f05a63          	blez	a5,80004d6c <pop_off+0x5c>
    80004d3c:	fff7871b          	addiw	a4,a5,-1
    80004d40:	06e52c23          	sw	a4,120(a0)
    80004d44:	00071c63          	bnez	a4,80004d5c <pop_off+0x4c>
    80004d48:	07c52783          	lw	a5,124(a0)
    80004d4c:	00078863          	beqz	a5,80004d5c <pop_off+0x4c>
    80004d50:	100027f3          	csrr	a5,sstatus
    80004d54:	0027e793          	ori	a5,a5,2
    80004d58:	10079073          	csrw	sstatus,a5
    80004d5c:	00813083          	ld	ra,8(sp)
    80004d60:	00013403          	ld	s0,0(sp)
    80004d64:	01010113          	addi	sp,sp,16
    80004d68:	00008067          	ret
    80004d6c:	00001517          	auipc	a0,0x1
    80004d70:	53c50513          	addi	a0,a0,1340 # 800062a8 <digits+0x48>
    80004d74:	fffff097          	auipc	ra,0xfffff
    80004d78:	018080e7          	jalr	24(ra) # 80003d8c <panic>
    80004d7c:	00001517          	auipc	a0,0x1
    80004d80:	51450513          	addi	a0,a0,1300 # 80006290 <digits+0x30>
    80004d84:	fffff097          	auipc	ra,0xfffff
    80004d88:	008080e7          	jalr	8(ra) # 80003d8c <panic>

0000000080004d8c <push_on>:
    80004d8c:	fe010113          	addi	sp,sp,-32
    80004d90:	00813823          	sd	s0,16(sp)
    80004d94:	00113c23          	sd	ra,24(sp)
    80004d98:	00913423          	sd	s1,8(sp)
    80004d9c:	02010413          	addi	s0,sp,32
    80004da0:	100024f3          	csrr	s1,sstatus
    80004da4:	100027f3          	csrr	a5,sstatus
    80004da8:	0027e793          	ori	a5,a5,2
    80004dac:	10079073          	csrw	sstatus,a5
    80004db0:	ffffe097          	auipc	ra,0xffffe
    80004db4:	624080e7          	jalr	1572(ra) # 800033d4 <mycpu>
    80004db8:	07852783          	lw	a5,120(a0)
    80004dbc:	02078663          	beqz	a5,80004de8 <push_on+0x5c>
    80004dc0:	ffffe097          	auipc	ra,0xffffe
    80004dc4:	614080e7          	jalr	1556(ra) # 800033d4 <mycpu>
    80004dc8:	07852783          	lw	a5,120(a0)
    80004dcc:	01813083          	ld	ra,24(sp)
    80004dd0:	01013403          	ld	s0,16(sp)
    80004dd4:	0017879b          	addiw	a5,a5,1
    80004dd8:	06f52c23          	sw	a5,120(a0)
    80004ddc:	00813483          	ld	s1,8(sp)
    80004de0:	02010113          	addi	sp,sp,32
    80004de4:	00008067          	ret
    80004de8:	0014d493          	srli	s1,s1,0x1
    80004dec:	ffffe097          	auipc	ra,0xffffe
    80004df0:	5e8080e7          	jalr	1512(ra) # 800033d4 <mycpu>
    80004df4:	0014f493          	andi	s1,s1,1
    80004df8:	06952e23          	sw	s1,124(a0)
    80004dfc:	fc5ff06f          	j	80004dc0 <push_on+0x34>

0000000080004e00 <pop_on>:
    80004e00:	ff010113          	addi	sp,sp,-16
    80004e04:	00813023          	sd	s0,0(sp)
    80004e08:	00113423          	sd	ra,8(sp)
    80004e0c:	01010413          	addi	s0,sp,16
    80004e10:	ffffe097          	auipc	ra,0xffffe
    80004e14:	5c4080e7          	jalr	1476(ra) # 800033d4 <mycpu>
    80004e18:	100027f3          	csrr	a5,sstatus
    80004e1c:	0027f793          	andi	a5,a5,2
    80004e20:	04078463          	beqz	a5,80004e68 <pop_on+0x68>
    80004e24:	07852783          	lw	a5,120(a0)
    80004e28:	02f05863          	blez	a5,80004e58 <pop_on+0x58>
    80004e2c:	fff7879b          	addiw	a5,a5,-1
    80004e30:	06f52c23          	sw	a5,120(a0)
    80004e34:	07853783          	ld	a5,120(a0)
    80004e38:	00079863          	bnez	a5,80004e48 <pop_on+0x48>
    80004e3c:	100027f3          	csrr	a5,sstatus
    80004e40:	ffd7f793          	andi	a5,a5,-3
    80004e44:	10079073          	csrw	sstatus,a5
    80004e48:	00813083          	ld	ra,8(sp)
    80004e4c:	00013403          	ld	s0,0(sp)
    80004e50:	01010113          	addi	sp,sp,16
    80004e54:	00008067          	ret
    80004e58:	00001517          	auipc	a0,0x1
    80004e5c:	47850513          	addi	a0,a0,1144 # 800062d0 <digits+0x70>
    80004e60:	fffff097          	auipc	ra,0xfffff
    80004e64:	f2c080e7          	jalr	-212(ra) # 80003d8c <panic>
    80004e68:	00001517          	auipc	a0,0x1
    80004e6c:	44850513          	addi	a0,a0,1096 # 800062b0 <digits+0x50>
    80004e70:	fffff097          	auipc	ra,0xfffff
    80004e74:	f1c080e7          	jalr	-228(ra) # 80003d8c <panic>

0000000080004e78 <__memset>:
    80004e78:	ff010113          	addi	sp,sp,-16
    80004e7c:	00813423          	sd	s0,8(sp)
    80004e80:	01010413          	addi	s0,sp,16
    80004e84:	1a060e63          	beqz	a2,80005040 <__memset+0x1c8>
    80004e88:	40a007b3          	neg	a5,a0
    80004e8c:	0077f793          	andi	a5,a5,7
    80004e90:	00778693          	addi	a3,a5,7
    80004e94:	00b00813          	li	a6,11
    80004e98:	0ff5f593          	andi	a1,a1,255
    80004e9c:	fff6071b          	addiw	a4,a2,-1
    80004ea0:	1b06e663          	bltu	a3,a6,8000504c <__memset+0x1d4>
    80004ea4:	1cd76463          	bltu	a4,a3,8000506c <__memset+0x1f4>
    80004ea8:	1a078e63          	beqz	a5,80005064 <__memset+0x1ec>
    80004eac:	00b50023          	sb	a1,0(a0)
    80004eb0:	00100713          	li	a4,1
    80004eb4:	1ae78463          	beq	a5,a4,8000505c <__memset+0x1e4>
    80004eb8:	00b500a3          	sb	a1,1(a0)
    80004ebc:	00200713          	li	a4,2
    80004ec0:	1ae78a63          	beq	a5,a4,80005074 <__memset+0x1fc>
    80004ec4:	00b50123          	sb	a1,2(a0)
    80004ec8:	00300713          	li	a4,3
    80004ecc:	18e78463          	beq	a5,a4,80005054 <__memset+0x1dc>
    80004ed0:	00b501a3          	sb	a1,3(a0)
    80004ed4:	00400713          	li	a4,4
    80004ed8:	1ae78263          	beq	a5,a4,8000507c <__memset+0x204>
    80004edc:	00b50223          	sb	a1,4(a0)
    80004ee0:	00500713          	li	a4,5
    80004ee4:	1ae78063          	beq	a5,a4,80005084 <__memset+0x20c>
    80004ee8:	00b502a3          	sb	a1,5(a0)
    80004eec:	00700713          	li	a4,7
    80004ef0:	18e79e63          	bne	a5,a4,8000508c <__memset+0x214>
    80004ef4:	00b50323          	sb	a1,6(a0)
    80004ef8:	00700e93          	li	t4,7
    80004efc:	00859713          	slli	a4,a1,0x8
    80004f00:	00e5e733          	or	a4,a1,a4
    80004f04:	01059e13          	slli	t3,a1,0x10
    80004f08:	01c76e33          	or	t3,a4,t3
    80004f0c:	01859313          	slli	t1,a1,0x18
    80004f10:	006e6333          	or	t1,t3,t1
    80004f14:	02059893          	slli	a7,a1,0x20
    80004f18:	40f60e3b          	subw	t3,a2,a5
    80004f1c:	011368b3          	or	a7,t1,a7
    80004f20:	02859813          	slli	a6,a1,0x28
    80004f24:	0108e833          	or	a6,a7,a6
    80004f28:	03059693          	slli	a3,a1,0x30
    80004f2c:	003e589b          	srliw	a7,t3,0x3
    80004f30:	00d866b3          	or	a3,a6,a3
    80004f34:	03859713          	slli	a4,a1,0x38
    80004f38:	00389813          	slli	a6,a7,0x3
    80004f3c:	00f507b3          	add	a5,a0,a5
    80004f40:	00e6e733          	or	a4,a3,a4
    80004f44:	000e089b          	sext.w	a7,t3
    80004f48:	00f806b3          	add	a3,a6,a5
    80004f4c:	00e7b023          	sd	a4,0(a5)
    80004f50:	00878793          	addi	a5,a5,8
    80004f54:	fed79ce3          	bne	a5,a3,80004f4c <__memset+0xd4>
    80004f58:	ff8e7793          	andi	a5,t3,-8
    80004f5c:	0007871b          	sext.w	a4,a5
    80004f60:	01d787bb          	addw	a5,a5,t4
    80004f64:	0ce88e63          	beq	a7,a4,80005040 <__memset+0x1c8>
    80004f68:	00f50733          	add	a4,a0,a5
    80004f6c:	00b70023          	sb	a1,0(a4)
    80004f70:	0017871b          	addiw	a4,a5,1
    80004f74:	0cc77663          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80004f78:	00e50733          	add	a4,a0,a4
    80004f7c:	00b70023          	sb	a1,0(a4)
    80004f80:	0027871b          	addiw	a4,a5,2
    80004f84:	0ac77e63          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80004f88:	00e50733          	add	a4,a0,a4
    80004f8c:	00b70023          	sb	a1,0(a4)
    80004f90:	0037871b          	addiw	a4,a5,3
    80004f94:	0ac77663          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80004f98:	00e50733          	add	a4,a0,a4
    80004f9c:	00b70023          	sb	a1,0(a4)
    80004fa0:	0047871b          	addiw	a4,a5,4
    80004fa4:	08c77e63          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80004fa8:	00e50733          	add	a4,a0,a4
    80004fac:	00b70023          	sb	a1,0(a4)
    80004fb0:	0057871b          	addiw	a4,a5,5
    80004fb4:	08c77663          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80004fb8:	00e50733          	add	a4,a0,a4
    80004fbc:	00b70023          	sb	a1,0(a4)
    80004fc0:	0067871b          	addiw	a4,a5,6
    80004fc4:	06c77e63          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80004fc8:	00e50733          	add	a4,a0,a4
    80004fcc:	00b70023          	sb	a1,0(a4)
    80004fd0:	0077871b          	addiw	a4,a5,7
    80004fd4:	06c77663          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80004fd8:	00e50733          	add	a4,a0,a4
    80004fdc:	00b70023          	sb	a1,0(a4)
    80004fe0:	0087871b          	addiw	a4,a5,8
    80004fe4:	04c77e63          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80004fe8:	00e50733          	add	a4,a0,a4
    80004fec:	00b70023          	sb	a1,0(a4)
    80004ff0:	0097871b          	addiw	a4,a5,9
    80004ff4:	04c77663          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80004ff8:	00e50733          	add	a4,a0,a4
    80004ffc:	00b70023          	sb	a1,0(a4)
    80005000:	00a7871b          	addiw	a4,a5,10
    80005004:	02c77e63          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80005008:	00e50733          	add	a4,a0,a4
    8000500c:	00b70023          	sb	a1,0(a4)
    80005010:	00b7871b          	addiw	a4,a5,11
    80005014:	02c77663          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80005018:	00e50733          	add	a4,a0,a4
    8000501c:	00b70023          	sb	a1,0(a4)
    80005020:	00c7871b          	addiw	a4,a5,12
    80005024:	00c77e63          	bgeu	a4,a2,80005040 <__memset+0x1c8>
    80005028:	00e50733          	add	a4,a0,a4
    8000502c:	00b70023          	sb	a1,0(a4)
    80005030:	00d7879b          	addiw	a5,a5,13
    80005034:	00c7f663          	bgeu	a5,a2,80005040 <__memset+0x1c8>
    80005038:	00f507b3          	add	a5,a0,a5
    8000503c:	00b78023          	sb	a1,0(a5)
    80005040:	00813403          	ld	s0,8(sp)
    80005044:	01010113          	addi	sp,sp,16
    80005048:	00008067          	ret
    8000504c:	00b00693          	li	a3,11
    80005050:	e55ff06f          	j	80004ea4 <__memset+0x2c>
    80005054:	00300e93          	li	t4,3
    80005058:	ea5ff06f          	j	80004efc <__memset+0x84>
    8000505c:	00100e93          	li	t4,1
    80005060:	e9dff06f          	j	80004efc <__memset+0x84>
    80005064:	00000e93          	li	t4,0
    80005068:	e95ff06f          	j	80004efc <__memset+0x84>
    8000506c:	00000793          	li	a5,0
    80005070:	ef9ff06f          	j	80004f68 <__memset+0xf0>
    80005074:	00200e93          	li	t4,2
    80005078:	e85ff06f          	j	80004efc <__memset+0x84>
    8000507c:	00400e93          	li	t4,4
    80005080:	e7dff06f          	j	80004efc <__memset+0x84>
    80005084:	00500e93          	li	t4,5
    80005088:	e75ff06f          	j	80004efc <__memset+0x84>
    8000508c:	00600e93          	li	t4,6
    80005090:	e6dff06f          	j	80004efc <__memset+0x84>

0000000080005094 <__memmove>:
    80005094:	ff010113          	addi	sp,sp,-16
    80005098:	00813423          	sd	s0,8(sp)
    8000509c:	01010413          	addi	s0,sp,16
    800050a0:	0e060863          	beqz	a2,80005190 <__memmove+0xfc>
    800050a4:	fff6069b          	addiw	a3,a2,-1
    800050a8:	0006881b          	sext.w	a6,a3
    800050ac:	0ea5e863          	bltu	a1,a0,8000519c <__memmove+0x108>
    800050b0:	00758713          	addi	a4,a1,7
    800050b4:	00a5e7b3          	or	a5,a1,a0
    800050b8:	40a70733          	sub	a4,a4,a0
    800050bc:	0077f793          	andi	a5,a5,7
    800050c0:	00f73713          	sltiu	a4,a4,15
    800050c4:	00174713          	xori	a4,a4,1
    800050c8:	0017b793          	seqz	a5,a5
    800050cc:	00e7f7b3          	and	a5,a5,a4
    800050d0:	10078863          	beqz	a5,800051e0 <__memmove+0x14c>
    800050d4:	00900793          	li	a5,9
    800050d8:	1107f463          	bgeu	a5,a6,800051e0 <__memmove+0x14c>
    800050dc:	0036581b          	srliw	a6,a2,0x3
    800050e0:	fff8081b          	addiw	a6,a6,-1
    800050e4:	02081813          	slli	a6,a6,0x20
    800050e8:	01d85893          	srli	a7,a6,0x1d
    800050ec:	00858813          	addi	a6,a1,8
    800050f0:	00058793          	mv	a5,a1
    800050f4:	00050713          	mv	a4,a0
    800050f8:	01088833          	add	a6,a7,a6
    800050fc:	0007b883          	ld	a7,0(a5)
    80005100:	00878793          	addi	a5,a5,8
    80005104:	00870713          	addi	a4,a4,8
    80005108:	ff173c23          	sd	a7,-8(a4)
    8000510c:	ff0798e3          	bne	a5,a6,800050fc <__memmove+0x68>
    80005110:	ff867713          	andi	a4,a2,-8
    80005114:	02071793          	slli	a5,a4,0x20
    80005118:	0207d793          	srli	a5,a5,0x20
    8000511c:	00f585b3          	add	a1,a1,a5
    80005120:	40e686bb          	subw	a3,a3,a4
    80005124:	00f507b3          	add	a5,a0,a5
    80005128:	06e60463          	beq	a2,a4,80005190 <__memmove+0xfc>
    8000512c:	0005c703          	lbu	a4,0(a1)
    80005130:	00e78023          	sb	a4,0(a5)
    80005134:	04068e63          	beqz	a3,80005190 <__memmove+0xfc>
    80005138:	0015c603          	lbu	a2,1(a1)
    8000513c:	00100713          	li	a4,1
    80005140:	00c780a3          	sb	a2,1(a5)
    80005144:	04e68663          	beq	a3,a4,80005190 <__memmove+0xfc>
    80005148:	0025c603          	lbu	a2,2(a1)
    8000514c:	00200713          	li	a4,2
    80005150:	00c78123          	sb	a2,2(a5)
    80005154:	02e68e63          	beq	a3,a4,80005190 <__memmove+0xfc>
    80005158:	0035c603          	lbu	a2,3(a1)
    8000515c:	00300713          	li	a4,3
    80005160:	00c781a3          	sb	a2,3(a5)
    80005164:	02e68663          	beq	a3,a4,80005190 <__memmove+0xfc>
    80005168:	0045c603          	lbu	a2,4(a1)
    8000516c:	00400713          	li	a4,4
    80005170:	00c78223          	sb	a2,4(a5)
    80005174:	00e68e63          	beq	a3,a4,80005190 <__memmove+0xfc>
    80005178:	0055c603          	lbu	a2,5(a1)
    8000517c:	00500713          	li	a4,5
    80005180:	00c782a3          	sb	a2,5(a5)
    80005184:	00e68663          	beq	a3,a4,80005190 <__memmove+0xfc>
    80005188:	0065c703          	lbu	a4,6(a1)
    8000518c:	00e78323          	sb	a4,6(a5)
    80005190:	00813403          	ld	s0,8(sp)
    80005194:	01010113          	addi	sp,sp,16
    80005198:	00008067          	ret
    8000519c:	02061713          	slli	a4,a2,0x20
    800051a0:	02075713          	srli	a4,a4,0x20
    800051a4:	00e587b3          	add	a5,a1,a4
    800051a8:	f0f574e3          	bgeu	a0,a5,800050b0 <__memmove+0x1c>
    800051ac:	02069613          	slli	a2,a3,0x20
    800051b0:	02065613          	srli	a2,a2,0x20
    800051b4:	fff64613          	not	a2,a2
    800051b8:	00e50733          	add	a4,a0,a4
    800051bc:	00c78633          	add	a2,a5,a2
    800051c0:	fff7c683          	lbu	a3,-1(a5)
    800051c4:	fff78793          	addi	a5,a5,-1
    800051c8:	fff70713          	addi	a4,a4,-1
    800051cc:	00d70023          	sb	a3,0(a4)
    800051d0:	fec798e3          	bne	a5,a2,800051c0 <__memmove+0x12c>
    800051d4:	00813403          	ld	s0,8(sp)
    800051d8:	01010113          	addi	sp,sp,16
    800051dc:	00008067          	ret
    800051e0:	02069713          	slli	a4,a3,0x20
    800051e4:	02075713          	srli	a4,a4,0x20
    800051e8:	00170713          	addi	a4,a4,1
    800051ec:	00e50733          	add	a4,a0,a4
    800051f0:	00050793          	mv	a5,a0
    800051f4:	0005c683          	lbu	a3,0(a1)
    800051f8:	00178793          	addi	a5,a5,1
    800051fc:	00158593          	addi	a1,a1,1
    80005200:	fed78fa3          	sb	a3,-1(a5)
    80005204:	fee798e3          	bne	a5,a4,800051f4 <__memmove+0x160>
    80005208:	f89ff06f          	j	80005190 <__memmove+0xfc>

000000008000520c <__putc>:
    8000520c:	fe010113          	addi	sp,sp,-32
    80005210:	00813823          	sd	s0,16(sp)
    80005214:	00113c23          	sd	ra,24(sp)
    80005218:	02010413          	addi	s0,sp,32
    8000521c:	00050793          	mv	a5,a0
    80005220:	fef40593          	addi	a1,s0,-17
    80005224:	00100613          	li	a2,1
    80005228:	00000513          	li	a0,0
    8000522c:	fef407a3          	sb	a5,-17(s0)
    80005230:	fffff097          	auipc	ra,0xfffff
    80005234:	b3c080e7          	jalr	-1220(ra) # 80003d6c <console_write>
    80005238:	01813083          	ld	ra,24(sp)
    8000523c:	01013403          	ld	s0,16(sp)
    80005240:	02010113          	addi	sp,sp,32
    80005244:	00008067          	ret

0000000080005248 <__getc>:
    80005248:	fe010113          	addi	sp,sp,-32
    8000524c:	00813823          	sd	s0,16(sp)
    80005250:	00113c23          	sd	ra,24(sp)
    80005254:	02010413          	addi	s0,sp,32
    80005258:	fe840593          	addi	a1,s0,-24
    8000525c:	00100613          	li	a2,1
    80005260:	00000513          	li	a0,0
    80005264:	fffff097          	auipc	ra,0xfffff
    80005268:	ae8080e7          	jalr	-1304(ra) # 80003d4c <console_read>
    8000526c:	fe844503          	lbu	a0,-24(s0)
    80005270:	01813083          	ld	ra,24(sp)
    80005274:	01013403          	ld	s0,16(sp)
    80005278:	02010113          	addi	sp,sp,32
    8000527c:	00008067          	ret

0000000080005280 <console_handler>:
    80005280:	fe010113          	addi	sp,sp,-32
    80005284:	00813823          	sd	s0,16(sp)
    80005288:	00113c23          	sd	ra,24(sp)
    8000528c:	00913423          	sd	s1,8(sp)
    80005290:	02010413          	addi	s0,sp,32
    80005294:	14202773          	csrr	a4,scause
    80005298:	100027f3          	csrr	a5,sstatus
    8000529c:	0027f793          	andi	a5,a5,2
    800052a0:	06079e63          	bnez	a5,8000531c <console_handler+0x9c>
    800052a4:	00074c63          	bltz	a4,800052bc <console_handler+0x3c>
    800052a8:	01813083          	ld	ra,24(sp)
    800052ac:	01013403          	ld	s0,16(sp)
    800052b0:	00813483          	ld	s1,8(sp)
    800052b4:	02010113          	addi	sp,sp,32
    800052b8:	00008067          	ret
    800052bc:	0ff77713          	andi	a4,a4,255
    800052c0:	00900793          	li	a5,9
    800052c4:	fef712e3          	bne	a4,a5,800052a8 <console_handler+0x28>
    800052c8:	ffffe097          	auipc	ra,0xffffe
    800052cc:	6dc080e7          	jalr	1756(ra) # 800039a4 <plic_claim>
    800052d0:	00a00793          	li	a5,10
    800052d4:	00050493          	mv	s1,a0
    800052d8:	02f50c63          	beq	a0,a5,80005310 <console_handler+0x90>
    800052dc:	fc0506e3          	beqz	a0,800052a8 <console_handler+0x28>
    800052e0:	00050593          	mv	a1,a0
    800052e4:	00001517          	auipc	a0,0x1
    800052e8:	ef450513          	addi	a0,a0,-268 # 800061d8 <_ZZ12printIntegeriE6digits+0xe0>
    800052ec:	fffff097          	auipc	ra,0xfffff
    800052f0:	afc080e7          	jalr	-1284(ra) # 80003de8 <__printf>
    800052f4:	01013403          	ld	s0,16(sp)
    800052f8:	01813083          	ld	ra,24(sp)
    800052fc:	00048513          	mv	a0,s1
    80005300:	00813483          	ld	s1,8(sp)
    80005304:	02010113          	addi	sp,sp,32
    80005308:	ffffe317          	auipc	t1,0xffffe
    8000530c:	6d430067          	jr	1748(t1) # 800039dc <plic_complete>
    80005310:	fffff097          	auipc	ra,0xfffff
    80005314:	3e0080e7          	jalr	992(ra) # 800046f0 <uartintr>
    80005318:	fddff06f          	j	800052f4 <console_handler+0x74>
    8000531c:	00001517          	auipc	a0,0x1
    80005320:	fbc50513          	addi	a0,a0,-68 # 800062d8 <digits+0x78>
    80005324:	fffff097          	auipc	ra,0xfffff
    80005328:	a68080e7          	jalr	-1432(ra) # 80003d8c <panic>
	...
