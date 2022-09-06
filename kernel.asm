
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	93813103          	ld	sp,-1736(sp) # 80005938 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2b9020ef          	jal	ra,80002ad4 <start>

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
    800011a4:	1a4000ef          	jal	ra,80001348 <_ZN5RiscV20handleSupervisorTrapEv>

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
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
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

0000000080001328 <_ZN5RiscV10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/MemoryAllocation.hpp"
#include "../h/tcb.hpp"


void RiscV::popSppSpie() {
    80001328:	ff010113          	addi	sp,sp,-16
    8000132c:	00813423          	sd	s0,8(sp)
    80001330:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001334:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001338:	10200073          	sret
}
    8000133c:	00813403          	ld	s0,8(sp)
    80001340:	01010113          	addi	sp,sp,16
    80001344:	00008067          	ret

0000000080001348 <_ZN5RiscV20handleSupervisorTrapEv>:

void RiscV::handleSupervisorTrap() {
    80001348:	fb010113          	addi	sp,sp,-80
    8000134c:	04113423          	sd	ra,72(sp)
    80001350:	04813023          	sd	s0,64(sp)
    80001354:	05010413          	addi	s0,sp,80
    volatile uint64 size;
    volatile uint64 handle;
    volatile uint64 start_routine;
    volatile uint64 arg;
    volatile uint64 ptr;
    __asm__ volatile("sd a3, %0" : "=m"(arg));
    80001358:	fcd43823          	sd	a3,-48(s0)
    __asm__ volatile("sd a2, %0" : "=m"(start_routine));
    8000135c:	fcc43c23          	sd	a2,-40(s0)
    __asm__ volatile("sd a1, %0" : "=m"(handle));
    80001360:	feb43023          	sd	a1,-32(s0)
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    80001364:	142027f3          	csrr	a5,scause
    80001368:	faf43823          	sd	a5,-80(s0)
    return scause;
    8000136c:	fb043703          	ld	a4,-80(s0)

}

inline uint64 RiscV::r_sepc(){
    uint64  sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001370:	141027f3          	csrr	a5,sepc
    //__asm__ volatile("sd a1, %0" : "=m"(size));
    //__asm__ volatile("sd a1, %0" : "=m"(ptr));
    uint64 sysCallNr;
    int ret_value_thr_exit;
    uint64 scause = r_scause();
    volatile uint64 sepc = r_sepc() + 4;
    80001374:	00478793          	addi	a5,a5,4
    80001378:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64  sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    8000137c:	100027f3          	csrr	a5,sstatus
    volatile uint64 sstatus = r_sstatus();
    80001380:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    80001384:	00050793          	mv	a5,a0
    if (scause == 0x000000000000009UL || scause == 0x000000000000008UL){
    80001388:	ff870613          	addi	a2,a4,-8
    8000138c:	00100693          	li	a3,1
    80001390:	02c6f863          	bgeu	a3,a2,800013c0 <_ZN5RiscV20handleSupervisorTrapEv+0x78>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80001394:	fff00793          	li	a5,-1
    80001398:	03f79793          	slli	a5,a5,0x3f
    8000139c:	00178793          	addi	a5,a5,1
    800013a0:	2ef70e63          	beq	a4,a5,8000169c <_ZN5RiscV20handleSupervisorTrapEv+0x354>
        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    800013a4:	fff00793          	li	a5,-1
    800013a8:	03f79793          	slli	a5,a5,0x3f
    800013ac:	00978793          	addi	a5,a5,9
    800013b0:	04f71463          	bne	a4,a5,800013f8 <_ZN5RiscV20handleSupervisorTrapEv+0xb0>
        //supervisor external interrupt (console)
        console_handler();
    800013b4:	00004097          	auipc	ra,0x4
    800013b8:	85c080e7          	jalr	-1956(ra) # 80004c10 <console_handler>
        //print (scause)
        //print sepc
        //print sval

    }
    800013bc:	03c0006f          	j	800013f8 <_ZN5RiscV20handleSupervisorTrapEv+0xb0>
        if (sysCallNr == 0x01UL) {
    800013c0:	00100713          	li	a4,1
    800013c4:	04e78263          	beq	a5,a4,80001408 <_ZN5RiscV20handleSupervisorTrapEv+0xc0>
        } else if (sysCallNr == 0x02UL) {
    800013c8:	00200713          	li	a4,2
    800013cc:	14e78a63          	beq	a5,a4,80001520 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
        }else if(sysCallNr == 0x11UL){
    800013d0:	01100713          	li	a4,17
    800013d4:	26e78663          	beq	a5,a4,80001640 <_ZN5RiscV20handleSupervisorTrapEv+0x2f8>
        }else if(sysCallNr == 0x12UL){
    800013d8:	01200713          	li	a4,18
    800013dc:	28e78263          	beq	a5,a4,80001660 <_ZN5RiscV20handleSupervisorTrapEv+0x318>
        }else if(sysCallNr == 0x13UL){
    800013e0:	01300713          	li	a4,19
    800013e4:	2ae78663          	beq	a5,a4,80001690 <_ZN5RiscV20handleSupervisorTrapEv+0x348>
        w_sstatus(sstatus);
    800013e8:	fb843783          	ld	a5,-72(s0)
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 volatile sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    800013ec:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800013f0:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    800013f4:	14179073          	csrw	sepc,a5
    800013f8:	04813083          	ld	ra,72(sp)
    800013fc:	04013403          	ld	s0,64(sp)
    80001400:	05010113          	addi	sp,sp,80
    80001404:	00008067          	ret
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
    80001408:	00058793          	mv	a5,a1
    8000140c:	fef43423          	sd	a5,-24(s0)
            void* pointer=MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks((size_t)size)); //gore imas da pretvoris u bytes to blocks
    80001410:	fe843783          	ld	a5,-24(s0)

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001414:	05778793          	addi	a5,a5,87
    80001418:	0067d793          	srli	a5,a5,0x6
    8000141c:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80001420:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001424:	00004717          	auipc	a4,0x4
    80001428:	52c73703          	ld	a4,1324(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000142c:	00073703          	ld	a4,0(a4)
    80001430:	0c070863          	beqz	a4,80001500 <_ZN5RiscV20handleSupervisorTrapEv+0x1b8>
            cur->next=fmem_head->next;
    80001434:	00004697          	auipc	a3,0x4
    80001438:	51c6b683          	ld	a3,1308(a3) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000143c:	0006b603          	ld	a2,0(a3)
    80001440:	00063603          	ld	a2,0(a2)
    80001444:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    80001448:	0006b683          	ld	a3,0(a3)
    8000144c:	0086b583          	ld	a1,8(a3)
    80001450:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    80001454:	01073683          	ld	a3,16(a4)
    80001458:	02f6e663          	bltu	a3,a5,80001484 <_ZN5RiscV20handleSupervisorTrapEv+0x13c>
            if (cur->size-size<=sizeof(FreeMem)){
    8000145c:	40f686b3          	sub	a3,a3,a5
    80001460:	01800513          	li	a0,24
    80001464:	02d56c63          	bltu	a0,a3,8000149c <_ZN5RiscV20handleSupervisorTrapEv+0x154>
                if (cur->prev) cur->prev->next = cur->next;
    80001468:	02058263          	beqz	a1,8000148c <_ZN5RiscV20handleSupervisorTrapEv+0x144>
    8000146c:	00c5b023          	sd	a2,0(a1)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80001470:	00073783          	ld	a5,0(a4)
    80001474:	08078663          	beqz	a5,80001500 <_ZN5RiscV20handleSupervisorTrapEv+0x1b8>
    80001478:	00873683          	ld	a3,8(a4)
    8000147c:	00d7b423          	sd	a3,8(a5)
                return cur;
    80001480:	0800006f          	j	80001500 <_ZN5RiscV20handleSupervisorTrapEv+0x1b8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001484:	00060713          	mv	a4,a2
    80001488:	fa9ff06f          	j	80001430 <_ZN5RiscV20handleSupervisorTrapEv+0xe8>
                else fmem_head = cur->next;
    8000148c:	00004797          	auipc	a5,0x4
    80001490:	4c47b783          	ld	a5,1220(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001494:	00c7b023          	sd	a2,0(a5)
    80001498:	fd9ff06f          	j	80001470 <_ZN5RiscV20handleSupervisorTrapEv+0x128>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    8000149c:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    800014a0:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    800014a4:	0006b023          	sd	zero,0(a3)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800014a8:	00873603          	ld	a2,8(a4)
    800014ac:	06060063          	beqz	a2,8000150c <_ZN5RiscV20handleSupervisorTrapEv+0x1c4>
    800014b0:	00d63023          	sd	a3,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800014b4:	00073603          	ld	a2,0(a4)
    800014b8:	00060463          	beqz	a2,800014c0 <_ZN5RiscV20handleSupervisorTrapEv+0x178>
    800014bc:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    800014c0:	00873603          	ld	a2,8(a4)
    800014c4:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    800014c8:	00073583          	ld	a1,0(a4)
    800014cc:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    800014d0:	01073703          	ld	a4,16(a4)
    800014d4:	40f707b3          	sub	a5,a4,a5
    800014d8:	00f6b823          	sd	a5,16(a3)
                fmem_head =newfrgm+sizeof(fmem_head);
    800014dc:	0c068713          	addi	a4,a3,192
    800014e0:	00004597          	auipc	a1,0x4
    800014e4:	4705b583          	ld	a1,1136(a1) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800014e8:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    800014ec:	0006b583          	ld	a1,0(a3)
    800014f0:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    800014f4:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    800014f8:	0cf6b823          	sd	a5,208(a3)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    800014fc:	00068713          	mv	a4,a3
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
    80001500:	00070593          	mv	a1,a4
            __asm__ volatile("sd a1, 88(s0)");
    80001504:	04b43c23          	sd	a1,88(s0)
    80001508:	ee1ff06f          	j	800013e8 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    8000150c:	0c068613          	addi	a2,a3,192
    80001510:	00004597          	auipc	a1,0x4
    80001514:	4405b583          	ld	a1,1088(a1) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001518:	00c5b023          	sd	a2,0(a1)
    8000151c:	f99ff06f          	j	800014b4 <_ZN5RiscV20handleSupervisorTrapEv+0x16c>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    80001520:	00058793          	mv	a5,a1
    80001524:	fcf43423          	sd	a5,-56(s0)
            int ret=MemoryAllocation::mem_free((void*)ptr);
    80001528:	fc843703          	ld	a4,-56(s0)
        if(!fmem_head || ptr < (char*)fmem_head)
    8000152c:	00004797          	auipc	a5,0x4
    80001530:	4247b783          	ld	a5,1060(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001534:	0007b783          	ld	a5,0(a5)
    80001538:	00078e63          	beqz	a5,80001554 <_ZN5RiscV20handleSupervisorTrapEv+0x20c>
    8000153c:	02f76063          	bltu	a4,a5,8000155c <_ZN5RiscV20handleSupervisorTrapEv+0x214>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001540:	00078693          	mv	a3,a5
    80001544:	0007b783          	ld	a5,0(a5)
    80001548:	00f70c63          	beq	a4,a5,80001560 <_ZN5RiscV20handleSupervisorTrapEv+0x218>
    8000154c:	fee7eae3          	bltu	a5,a4,80001540 <_ZN5RiscV20handleSupervisorTrapEv+0x1f8>
    80001550:	0100006f          	j	80001560 <_ZN5RiscV20handleSupervisorTrapEv+0x218>
            cur=nullptr;
    80001554:	00078693          	mv	a3,a5
    80001558:	0080006f          	j	80001560 <_ZN5RiscV20handleSupervisorTrapEv+0x218>
    8000155c:	00000693          	li	a3,0
                newSeg->next=nullptr;
    80001560:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001564:	04000793          	li	a5,64
    80001568:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    8000156c:	00d73423          	sd	a3,8(a4)
                if(cur) {
    80001570:	06068263          	beqz	a3,800015d4 <_ZN5RiscV20handleSupervisorTrapEv+0x28c>
                    newSeg->next = cur->next;
    80001574:	0006b783          	ld	a5,0(a3)
    80001578:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    8000157c:	00073783          	ld	a5,0(a4)
    80001580:	00078463          	beqz	a5,80001588 <_ZN5RiscV20handleSupervisorTrapEv+0x240>
                    newSeg->next->prev=newSeg;
    80001584:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    80001588:	06068063          	beqz	a3,800015e8 <_ZN5RiscV20handleSupervisorTrapEv+0x2a0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    8000158c:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    80001590:	00070c63          	beqz	a4,800015a8 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001594:	00073783          	ld	a5,0(a4)
    80001598:	00078863          	beqz	a5,800015a8 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
    8000159c:	01073603          	ld	a2,16(a4)
    800015a0:	00c705b3          	add	a1,a4,a2
    800015a4:	04b78a63          	beq	a5,a1,800015f8 <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
        if (!curr) return;
    800015a8:	00068c63          	beqz	a3,800015c0 <_ZN5RiscV20handleSupervisorTrapEv+0x278>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800015ac:	0006b783          	ld	a5,0(a3)
    800015b0:	00078863          	beqz	a5,800015c0 <_ZN5RiscV20handleSupervisorTrapEv+0x278>
    800015b4:	0106b603          	ld	a2,16(a3)
    800015b8:	00c685b3          	add	a1,a3,a2
    800015bc:	04b78e63          	beq	a5,a1,80001618 <_ZN5RiscV20handleSupervisorTrapEv+0x2d0>
            if(newSeg==nullptr){
    800015c0:	06070c63          	beqz	a4,80001638 <_ZN5RiscV20handleSupervisorTrapEv+0x2f0>
            }else{return 0;}
    800015c4:	00000793          	li	a5,0
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
    800015c8:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)"); //zasto je ovde bas 88
    800015cc:	04b43c23          	sd	a1,88(s0)
    800015d0:	e19ff06f          	j	800013e8 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
                    newSeg->next = fmem_head;
    800015d4:	00004797          	auipc	a5,0x4
    800015d8:	37c7b783          	ld	a5,892(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015dc:	0007b783          	ld	a5,0(a5)
    800015e0:	00f73023          	sd	a5,0(a4)
    800015e4:	f99ff06f          	j	8000157c <_ZN5RiscV20handleSupervisorTrapEv+0x234>
                    fmem_head = newSeg;
    800015e8:	00004797          	auipc	a5,0x4
    800015ec:	3687b783          	ld	a5,872(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800015f0:	00e7b023          	sd	a4,0(a5)
    800015f4:	f9dff06f          	j	80001590 <_ZN5RiscV20handleSupervisorTrapEv+0x248>
            curr->size += curr->next->size;
    800015f8:	0107b583          	ld	a1,16(a5)
    800015fc:	00b60633          	add	a2,a2,a1
    80001600:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    80001604:	0007b783          	ld	a5,0(a5)
    80001608:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    8000160c:	f8078ee3          	beqz	a5,800015a8 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
    80001610:	00e7b423          	sd	a4,8(a5)
    80001614:	f95ff06f          	j	800015a8 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
            curr->size += curr->next->size;
    80001618:	0107b583          	ld	a1,16(a5)
    8000161c:	00b60633          	add	a2,a2,a1
    80001620:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    80001624:	0007b783          	ld	a5,0(a5)
    80001628:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    8000162c:	f8078ae3          	beqz	a5,800015c0 <_ZN5RiscV20handleSupervisorTrapEv+0x278>
    80001630:	00d7b423          	sd	a3,8(a5)
    80001634:	f8dff06f          	j	800015c0 <_ZN5RiscV20handleSupervisorTrapEv+0x278>
                return -1;
    80001638:	fff00793          	li	a5,-1
    8000163c:	f8dff06f          	j	800015c8 <_ZN5RiscV20handleSupervisorTrapEv+0x280>
            int ret_val=TCB::createThread((TCB::Body)start_routine, (thread_t*) handle, (void*)arg);
    80001640:	fd843503          	ld	a0,-40(s0)
    80001644:	fe043583          	ld	a1,-32(s0)
    80001648:	fd043603          	ld	a2,-48(s0)
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	bf4080e7          	jalr	-1036(ra) # 80002240 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>
            __asm__ volatile("mv a1, %0": : [ret_val] "r"(ret_val));
    80001654:	00050593          	mv	a1,a0
            __asm__ volatile("sd a1, 88(s0)");
    80001658:	04b43c23          	sd	a1,88(s0)
    8000165c:	d8dff06f          	j	800013e8 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
    static int createThread(Body body, TCB** handle, void* arguments);

    static void thread_dispatch(){dispatch();}

    static int thread_exit(){
        running->setFinished(true);
    80001660:	00100593          	li	a1,1
    80001664:	00004797          	auipc	a5,0x4
    80001668:	2f47b783          	ld	a5,756(a5) # 80005958 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000166c:	0007b503          	ld	a0,0(a5)
    80001670:	00001097          	auipc	ra,0x1
    80001674:	bb4080e7          	jalr	-1100(ra) # 80002224 <_ZN3TCB11setFinishedEb>
        dispatch();
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	f24080e7          	jalr	-220(ra) # 8000259c <_ZN3TCB8dispatchEv>
            __asm__ volatile("mv a1, %0": : [ret_value_thr_exit] "r"(ret_value_thr_exit) );
    80001680:	00000793          	li	a5,0
    80001684:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    80001688:	04b43c23          	sd	a1,88(s0)
    8000168c:	d5dff06f          	j	800013e8 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
    static void thread_dispatch(){dispatch();}
    80001690:	00001097          	auipc	ra,0x1
    80001694:	f0c080e7          	jalr	-244(ra) # 8000259c <_ZN3TCB8dispatchEv>
    80001698:	d51ff06f          	j	800013e8 <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000169c:	00200793          	li	a5,2
    800016a0:	1447b073          	csrc	sip,a5
}
    800016a4:	d55ff06f          	j	800013f8 <_ZN5RiscV20handleSupervisorTrapEv+0xb0>

00000000800016a8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800016a8:	fe010113          	addi	sp,sp,-32
    800016ac:	00113c23          	sd	ra,24(sp)
    800016b0:	00813823          	sd	s0,16(sp)
    800016b4:	00913423          	sd	s1,8(sp)
    800016b8:	02010413          	addi	s0,sp,32
    800016bc:	00050493          	mv	s1,a0
    LOCK();
    800016c0:	00100613          	li	a2,1
    800016c4:	00000593          	li	a1,0
    800016c8:	00004517          	auipc	a0,0x4
    800016cc:	2f850513          	addi	a0,a0,760 # 800059c0 <lockPrint>
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	a28080e7          	jalr	-1496(ra) # 800010f8 <copy_and_swap>
    800016d8:	fe0514e3          	bnez	a0,800016c0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800016dc:	0004c503          	lbu	a0,0(s1)
    800016e0:	00050a63          	beqz	a0,800016f4 <_Z11printStringPKc+0x4c>
    {
        __putc(*string);
    800016e4:	00003097          	auipc	ra,0x3
    800016e8:	4b8080e7          	jalr	1208(ra) # 80004b9c <__putc>
        string++;
    800016ec:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800016f0:	fedff06f          	j	800016dc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800016f4:	00000613          	li	a2,0
    800016f8:	00100593          	li	a1,1
    800016fc:	00004517          	auipc	a0,0x4
    80001700:	2c450513          	addi	a0,a0,708 # 800059c0 <lockPrint>
    80001704:	00000097          	auipc	ra,0x0
    80001708:	9f4080e7          	jalr	-1548(ra) # 800010f8 <copy_and_swap>
    8000170c:	fe0514e3          	bnez	a0,800016f4 <_Z11printStringPKc+0x4c>
}
    80001710:	01813083          	ld	ra,24(sp)
    80001714:	01013403          	ld	s0,16(sp)
    80001718:	00813483          	ld	s1,8(sp)
    8000171c:	02010113          	addi	sp,sp,32
    80001720:	00008067          	ret

0000000080001724 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001724:	fd010113          	addi	sp,sp,-48
    80001728:	02113423          	sd	ra,40(sp)
    8000172c:	02813023          	sd	s0,32(sp)
    80001730:	00913c23          	sd	s1,24(sp)
    80001734:	01213823          	sd	s2,16(sp)
    80001738:	01313423          	sd	s3,8(sp)
    8000173c:	01413023          	sd	s4,0(sp)
    80001740:	03010413          	addi	s0,sp,48
    80001744:	00050993          	mv	s3,a0
    80001748:	00058a13          	mv	s4,a1
    LOCK();
    8000174c:	00100613          	li	a2,1
    80001750:	00000593          	li	a1,0
    80001754:	00004517          	auipc	a0,0x4
    80001758:	26c50513          	addi	a0,a0,620 # 800059c0 <lockPrint>
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	99c080e7          	jalr	-1636(ra) # 800010f8 <copy_and_swap>
    80001764:	fe0514e3          	bnez	a0,8000174c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001768:	00000913          	li	s2,0
    8000176c:	00090493          	mv	s1,s2
    80001770:	0019091b          	addiw	s2,s2,1
    80001774:	03495a63          	bge	s2,s4,800017a8 <_Z9getStringPci+0x84>
        cc = __getc();
    80001778:	00003097          	auipc	ra,0x3
    8000177c:	460080e7          	jalr	1120(ra) # 80004bd8 <__getc>
        if(cc < 1)
    80001780:	02050463          	beqz	a0,800017a8 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80001784:	009984b3          	add	s1,s3,s1
    80001788:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000178c:	00a00793          	li	a5,10
    80001790:	00f50a63          	beq	a0,a5,800017a4 <_Z9getStringPci+0x80>
    80001794:	00d00793          	li	a5,13
    80001798:	fcf51ae3          	bne	a0,a5,8000176c <_Z9getStringPci+0x48>
        buf[i++] = c;
    8000179c:	00090493          	mv	s1,s2
    800017a0:	0080006f          	j	800017a8 <_Z9getStringPci+0x84>
    800017a4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800017a8:	009984b3          	add	s1,s3,s1
    800017ac:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800017b0:	00000613          	li	a2,0
    800017b4:	00100593          	li	a1,1
    800017b8:	00004517          	auipc	a0,0x4
    800017bc:	20850513          	addi	a0,a0,520 # 800059c0 <lockPrint>
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	938080e7          	jalr	-1736(ra) # 800010f8 <copy_and_swap>
    800017c8:	fe0514e3          	bnez	a0,800017b0 <_Z9getStringPci+0x8c>
    return buf;
}
    800017cc:	00098513          	mv	a0,s3
    800017d0:	02813083          	ld	ra,40(sp)
    800017d4:	02013403          	ld	s0,32(sp)
    800017d8:	01813483          	ld	s1,24(sp)
    800017dc:	01013903          	ld	s2,16(sp)
    800017e0:	00813983          	ld	s3,8(sp)
    800017e4:	00013a03          	ld	s4,0(sp)
    800017e8:	03010113          	addi	sp,sp,48
    800017ec:	00008067          	ret

00000000800017f0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800017f0:	ff010113          	addi	sp,sp,-16
    800017f4:	00813423          	sd	s0,8(sp)
    800017f8:	01010413          	addi	s0,sp,16
    800017fc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80001800:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80001804:	0006c603          	lbu	a2,0(a3)
    80001808:	fd06071b          	addiw	a4,a2,-48
    8000180c:	0ff77713          	andi	a4,a4,255
    80001810:	00900793          	li	a5,9
    80001814:	02e7e063          	bltu	a5,a4,80001834 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001818:	0025179b          	slliw	a5,a0,0x2
    8000181c:	00a787bb          	addw	a5,a5,a0
    80001820:	0017979b          	slliw	a5,a5,0x1
    80001824:	00168693          	addi	a3,a3,1
    80001828:	00c787bb          	addw	a5,a5,a2
    8000182c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80001830:	fd5ff06f          	j	80001804 <_Z11stringToIntPKc+0x14>
    return n;
}
    80001834:	00813403          	ld	s0,8(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80001840:	fc010113          	addi	sp,sp,-64
    80001844:	02113c23          	sd	ra,56(sp)
    80001848:	02813823          	sd	s0,48(sp)
    8000184c:	02913423          	sd	s1,40(sp)
    80001850:	03213023          	sd	s2,32(sp)
    80001854:	01313c23          	sd	s3,24(sp)
    80001858:	04010413          	addi	s0,sp,64
    8000185c:	00050493          	mv	s1,a0
    80001860:	00058913          	mv	s2,a1
    80001864:	00060993          	mv	s3,a2
    LOCK();
    80001868:	00100613          	li	a2,1
    8000186c:	00000593          	li	a1,0
    80001870:	00004517          	auipc	a0,0x4
    80001874:	15050513          	addi	a0,a0,336 # 800059c0 <lockPrint>
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	880080e7          	jalr	-1920(ra) # 800010f8 <copy_and_swap>
    80001880:	fe0514e3          	bnez	a0,80001868 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001884:	00098463          	beqz	s3,8000188c <_Z8printIntiii+0x4c>
    80001888:	0804c463          	bltz	s1,80001910 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000188c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80001890:	00000593          	li	a1,0
    }

    i = 0;
    80001894:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001898:	0009079b          	sext.w	a5,s2
    8000189c:	0325773b          	remuw	a4,a0,s2
    800018a0:	00048613          	mv	a2,s1
    800018a4:	0014849b          	addiw	s1,s1,1
    800018a8:	02071693          	slli	a3,a4,0x20
    800018ac:	0206d693          	srli	a3,a3,0x20
    800018b0:	00004717          	auipc	a4,0x4
    800018b4:	06070713          	addi	a4,a4,96 # 80005910 <digits>
    800018b8:	00d70733          	add	a4,a4,a3
    800018bc:	00074683          	lbu	a3,0(a4)
    800018c0:	fd040713          	addi	a4,s0,-48
    800018c4:	00c70733          	add	a4,a4,a2
    800018c8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800018cc:	0005071b          	sext.w	a4,a0
    800018d0:	0325553b          	divuw	a0,a0,s2
    800018d4:	fcf772e3          	bgeu	a4,a5,80001898 <_Z8printIntiii+0x58>
    if(neg)
    800018d8:	00058c63          	beqz	a1,800018f0 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800018dc:	fd040793          	addi	a5,s0,-48
    800018e0:	009784b3          	add	s1,a5,s1
    800018e4:	02d00793          	li	a5,45
    800018e8:	fef48823          	sb	a5,-16(s1)
    800018ec:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800018f0:	fff4849b          	addiw	s1,s1,-1
    800018f4:	0204c463          	bltz	s1,8000191c <_Z8printIntiii+0xdc>
        __putc(buf[i]);
    800018f8:	fd040793          	addi	a5,s0,-48
    800018fc:	009787b3          	add	a5,a5,s1
    80001900:	ff07c503          	lbu	a0,-16(a5)
    80001904:	00003097          	auipc	ra,0x3
    80001908:	298080e7          	jalr	664(ra) # 80004b9c <__putc>
    8000190c:	fe5ff06f          	j	800018f0 <_Z8printIntiii+0xb0>
        x = -xx;
    80001910:	4090053b          	negw	a0,s1
        neg = 1;
    80001914:	00100593          	li	a1,1
        x = -xx;
    80001918:	f7dff06f          	j	80001894 <_Z8printIntiii+0x54>

    UNLOCK();
    8000191c:	00000613          	li	a2,0
    80001920:	00100593          	li	a1,1
    80001924:	00004517          	auipc	a0,0x4
    80001928:	09c50513          	addi	a0,a0,156 # 800059c0 <lockPrint>
    8000192c:	fffff097          	auipc	ra,0xfffff
    80001930:	7cc080e7          	jalr	1996(ra) # 800010f8 <copy_and_swap>
    80001934:	fe0514e3          	bnez	a0,8000191c <_Z8printIntiii+0xdc>
    80001938:	03813083          	ld	ra,56(sp)
    8000193c:	03013403          	ld	s0,48(sp)
    80001940:	02813483          	ld	s1,40(sp)
    80001944:	02013903          	ld	s2,32(sp)
    80001948:	01813983          	ld	s3,24(sp)
    8000194c:	04010113          	addi	sp,sp,64
    80001950:	00008067          	ret

0000000080001954 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80001954:	fe010113          	addi	sp,sp,-32
    80001958:	00113c23          	sd	ra,24(sp)
    8000195c:	00813823          	sd	s0,16(sp)
    80001960:	00913423          	sd	s1,8(sp)
    80001964:	01213023          	sd	s2,0(sp)
    80001968:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000196c:	00000913          	li	s2,0
    80001970:	0380006f          	j	800019a8 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001974:	00000097          	auipc	ra,0x0
    80001978:	990080e7          	jalr	-1648(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000197c:	00148493          	addi	s1,s1,1
    80001980:	000027b7          	lui	a5,0x2
    80001984:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001988:	0097ee63          	bltu	a5,s1,800019a4 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000198c:	00000713          	li	a4,0
    80001990:	000077b7          	lui	a5,0x7
    80001994:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001998:	fce7eee3          	bltu	a5,a4,80001974 <_Z11workerBodyAPv+0x20>
    8000199c:	00170713          	addi	a4,a4,1
    800019a0:	ff1ff06f          	j	80001990 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800019a4:	00190913          	addi	s2,s2,1
    800019a8:	00900793          	li	a5,9
    800019ac:	0527e063          	bltu	a5,s2,800019ec <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800019b0:	00003517          	auipc	a0,0x3
    800019b4:	67050513          	addi	a0,a0,1648 # 80005020 <CONSOLE_STATUS+0x10>
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	cf0080e7          	jalr	-784(ra) # 800016a8 <_Z11printStringPKc>
    800019c0:	00000613          	li	a2,0
    800019c4:	00a00593          	li	a1,10
    800019c8:	0009051b          	sext.w	a0,s2
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	e74080e7          	jalr	-396(ra) # 80001840 <_Z8printIntiii>
    800019d4:	00004517          	auipc	a0,0x4
    800019d8:	85450513          	addi	a0,a0,-1964 # 80005228 <CONSOLE_STATUS+0x218>
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	ccc080e7          	jalr	-820(ra) # 800016a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800019e4:	00000493          	li	s1,0
    800019e8:	f99ff06f          	j	80001980 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800019ec:	00003517          	auipc	a0,0x3
    800019f0:	63c50513          	addi	a0,a0,1596 # 80005028 <CONSOLE_STATUS+0x18>
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	cb4080e7          	jalr	-844(ra) # 800016a8 <_Z11printStringPKc>
    finishedA = true;
    800019fc:	00100793          	li	a5,1
    80001a00:	00004717          	auipc	a4,0x4
    80001a04:	fcf70423          	sb	a5,-56(a4) # 800059c8 <finishedA>
}
    80001a08:	01813083          	ld	ra,24(sp)
    80001a0c:	01013403          	ld	s0,16(sp)
    80001a10:	00813483          	ld	s1,8(sp)
    80001a14:	00013903          	ld	s2,0(sp)
    80001a18:	02010113          	addi	sp,sp,32
    80001a1c:	00008067          	ret

0000000080001a20 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80001a20:	fe010113          	addi	sp,sp,-32
    80001a24:	00113c23          	sd	ra,24(sp)
    80001a28:	00813823          	sd	s0,16(sp)
    80001a2c:	00913423          	sd	s1,8(sp)
    80001a30:	01213023          	sd	s2,0(sp)
    80001a34:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001a38:	00000913          	li	s2,0
    80001a3c:	0380006f          	j	80001a74 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001a40:	00000097          	auipc	ra,0x0
    80001a44:	8c4080e7          	jalr	-1852(ra) # 80001304 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001a48:	00148493          	addi	s1,s1,1
    80001a4c:	000027b7          	lui	a5,0x2
    80001a50:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001a54:	0097ee63          	bltu	a5,s1,80001a70 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001a58:	00000713          	li	a4,0
    80001a5c:	000077b7          	lui	a5,0x7
    80001a60:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001a64:	fce7eee3          	bltu	a5,a4,80001a40 <_Z11workerBodyBPv+0x20>
    80001a68:	00170713          	addi	a4,a4,1
    80001a6c:	ff1ff06f          	j	80001a5c <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001a70:	00190913          	addi	s2,s2,1
    80001a74:	00f00793          	li	a5,15
    80001a78:	0527e063          	bltu	a5,s2,80001ab8 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80001a7c:	00003517          	auipc	a0,0x3
    80001a80:	5bc50513          	addi	a0,a0,1468 # 80005038 <CONSOLE_STATUS+0x28>
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	c24080e7          	jalr	-988(ra) # 800016a8 <_Z11printStringPKc>
    80001a8c:	00000613          	li	a2,0
    80001a90:	00a00593          	li	a1,10
    80001a94:	0009051b          	sext.w	a0,s2
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	da8080e7          	jalr	-600(ra) # 80001840 <_Z8printIntiii>
    80001aa0:	00003517          	auipc	a0,0x3
    80001aa4:	78850513          	addi	a0,a0,1928 # 80005228 <CONSOLE_STATUS+0x218>
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	c00080e7          	jalr	-1024(ra) # 800016a8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001ab0:	00000493          	li	s1,0
    80001ab4:	f99ff06f          	j	80001a4c <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80001ab8:	00003517          	auipc	a0,0x3
    80001abc:	58850513          	addi	a0,a0,1416 # 80005040 <CONSOLE_STATUS+0x30>
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	be8080e7          	jalr	-1048(ra) # 800016a8 <_Z11printStringPKc>
    finishedB = true;
    80001ac8:	00100793          	li	a5,1
    80001acc:	00004717          	auipc	a4,0x4
    80001ad0:	eef70ea3          	sb	a5,-259(a4) # 800059c9 <finishedB>
    thread_dispatch();
    80001ad4:	00000097          	auipc	ra,0x0
    80001ad8:	830080e7          	jalr	-2000(ra) # 80001304 <_Z15thread_dispatchv>
}
    80001adc:	01813083          	ld	ra,24(sp)
    80001ae0:	01013403          	ld	s0,16(sp)
    80001ae4:	00813483          	ld	s1,8(sp)
    80001ae8:	00013903          	ld	s2,0(sp)
    80001aec:	02010113          	addi	sp,sp,32
    80001af0:	00008067          	ret

0000000080001af4 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80001af4:	fe010113          	addi	sp,sp,-32
    80001af8:	00113c23          	sd	ra,24(sp)
    80001afc:	00813823          	sd	s0,16(sp)
    80001b00:	00913423          	sd	s1,8(sp)
    80001b04:	01213023          	sd	s2,0(sp)
    80001b08:	02010413          	addi	s0,sp,32
    80001b0c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001b10:	00100793          	li	a5,1
    80001b14:	02a7f863          	bgeu	a5,a0,80001b44 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001b18:	00a00793          	li	a5,10
    80001b1c:	02f577b3          	remu	a5,a0,a5
    80001b20:	02078e63          	beqz	a5,80001b5c <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001b24:	fff48513          	addi	a0,s1,-1
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	fcc080e7          	jalr	-52(ra) # 80001af4 <_Z9fibonaccim>
    80001b30:	00050913          	mv	s2,a0
    80001b34:	ffe48513          	addi	a0,s1,-2
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	fbc080e7          	jalr	-68(ra) # 80001af4 <_Z9fibonaccim>
    80001b40:	00a90533          	add	a0,s2,a0
}
    80001b44:	01813083          	ld	ra,24(sp)
    80001b48:	01013403          	ld	s0,16(sp)
    80001b4c:	00813483          	ld	s1,8(sp)
    80001b50:	00013903          	ld	s2,0(sp)
    80001b54:	02010113          	addi	sp,sp,32
    80001b58:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001b5c:	fffff097          	auipc	ra,0xfffff
    80001b60:	7a8080e7          	jalr	1960(ra) # 80001304 <_Z15thread_dispatchv>
    80001b64:	fc1ff06f          	j	80001b24 <_Z9fibonaccim+0x30>

0000000080001b68 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80001b68:	fe010113          	addi	sp,sp,-32
    80001b6c:	00113c23          	sd	ra,24(sp)
    80001b70:	00813823          	sd	s0,16(sp)
    80001b74:	00913423          	sd	s1,8(sp)
    80001b78:	01213023          	sd	s2,0(sp)
    80001b7c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001b80:	00000493          	li	s1,0
    80001b84:	0400006f          	j	80001bc4 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80001b88:	00003517          	auipc	a0,0x3
    80001b8c:	4c850513          	addi	a0,a0,1224 # 80005050 <CONSOLE_STATUS+0x40>
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	b18080e7          	jalr	-1256(ra) # 800016a8 <_Z11printStringPKc>
    80001b98:	00000613          	li	a2,0
    80001b9c:	00a00593          	li	a1,10
    80001ba0:	00048513          	mv	a0,s1
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	c9c080e7          	jalr	-868(ra) # 80001840 <_Z8printIntiii>
    80001bac:	00003517          	auipc	a0,0x3
    80001bb0:	67c50513          	addi	a0,a0,1660 # 80005228 <CONSOLE_STATUS+0x218>
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	af4080e7          	jalr	-1292(ra) # 800016a8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001bbc:	0014849b          	addiw	s1,s1,1
    80001bc0:	0ff4f493          	andi	s1,s1,255
    80001bc4:	00200793          	li	a5,2
    80001bc8:	fc97f0e3          	bgeu	a5,s1,80001b88 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80001bcc:	00003517          	auipc	a0,0x3
    80001bd0:	48c50513          	addi	a0,a0,1164 # 80005058 <CONSOLE_STATUS+0x48>
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	ad4080e7          	jalr	-1324(ra) # 800016a8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001bdc:	00700313          	li	t1,7
    thread_dispatch();
    80001be0:	fffff097          	auipc	ra,0xfffff
    80001be4:	724080e7          	jalr	1828(ra) # 80001304 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001be8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80001bec:	00003517          	auipc	a0,0x3
    80001bf0:	47c50513          	addi	a0,a0,1148 # 80005068 <CONSOLE_STATUS+0x58>
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	ab4080e7          	jalr	-1356(ra) # 800016a8 <_Z11printStringPKc>
    80001bfc:	00000613          	li	a2,0
    80001c00:	00a00593          	li	a1,10
    80001c04:	0009051b          	sext.w	a0,s2
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	c38080e7          	jalr	-968(ra) # 80001840 <_Z8printIntiii>
    80001c10:	00003517          	auipc	a0,0x3
    80001c14:	61850513          	addi	a0,a0,1560 # 80005228 <CONSOLE_STATUS+0x218>
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	a90080e7          	jalr	-1392(ra) # 800016a8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001c20:	00c00513          	li	a0,12
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	ed0080e7          	jalr	-304(ra) # 80001af4 <_Z9fibonaccim>
    80001c2c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80001c30:	00003517          	auipc	a0,0x3
    80001c34:	44050513          	addi	a0,a0,1088 # 80005070 <CONSOLE_STATUS+0x60>
    80001c38:	00000097          	auipc	ra,0x0
    80001c3c:	a70080e7          	jalr	-1424(ra) # 800016a8 <_Z11printStringPKc>
    80001c40:	00000613          	li	a2,0
    80001c44:	00a00593          	li	a1,10
    80001c48:	0009051b          	sext.w	a0,s2
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	bf4080e7          	jalr	-1036(ra) # 80001840 <_Z8printIntiii>
    80001c54:	00003517          	auipc	a0,0x3
    80001c58:	5d450513          	addi	a0,a0,1492 # 80005228 <CONSOLE_STATUS+0x218>
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	a4c080e7          	jalr	-1460(ra) # 800016a8 <_Z11printStringPKc>
    80001c64:	0400006f          	j	80001ca4 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80001c68:	00003517          	auipc	a0,0x3
    80001c6c:	3e850513          	addi	a0,a0,1000 # 80005050 <CONSOLE_STATUS+0x40>
    80001c70:	00000097          	auipc	ra,0x0
    80001c74:	a38080e7          	jalr	-1480(ra) # 800016a8 <_Z11printStringPKc>
    80001c78:	00000613          	li	a2,0
    80001c7c:	00a00593          	li	a1,10
    80001c80:	00048513          	mv	a0,s1
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	bbc080e7          	jalr	-1092(ra) # 80001840 <_Z8printIntiii>
    80001c8c:	00003517          	auipc	a0,0x3
    80001c90:	59c50513          	addi	a0,a0,1436 # 80005228 <CONSOLE_STATUS+0x218>
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	a14080e7          	jalr	-1516(ra) # 800016a8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001c9c:	0014849b          	addiw	s1,s1,1
    80001ca0:	0ff4f493          	andi	s1,s1,255
    80001ca4:	00500793          	li	a5,5
    80001ca8:	fc97f0e3          	bgeu	a5,s1,80001c68 <_Z11workerBodyCPv+0x100>
    }

    printString("A finished!\n");
    80001cac:	00003517          	auipc	a0,0x3
    80001cb0:	37c50513          	addi	a0,a0,892 # 80005028 <CONSOLE_STATUS+0x18>
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	9f4080e7          	jalr	-1548(ra) # 800016a8 <_Z11printStringPKc>
    finishedC = true;
    80001cbc:	00100793          	li	a5,1
    80001cc0:	00004717          	auipc	a4,0x4
    80001cc4:	d0f70523          	sb	a5,-758(a4) # 800059ca <finishedC>
    thread_dispatch();
    80001cc8:	fffff097          	auipc	ra,0xfffff
    80001ccc:	63c080e7          	jalr	1596(ra) # 80001304 <_Z15thread_dispatchv>
}
    80001cd0:	01813083          	ld	ra,24(sp)
    80001cd4:	01013403          	ld	s0,16(sp)
    80001cd8:	00813483          	ld	s1,8(sp)
    80001cdc:	00013903          	ld	s2,0(sp)
    80001ce0:	02010113          	addi	sp,sp,32
    80001ce4:	00008067          	ret

0000000080001ce8 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80001ce8:	fe010113          	addi	sp,sp,-32
    80001cec:	00113c23          	sd	ra,24(sp)
    80001cf0:	00813823          	sd	s0,16(sp)
    80001cf4:	00913423          	sd	s1,8(sp)
    80001cf8:	01213023          	sd	s2,0(sp)
    80001cfc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001d00:	00a00493          	li	s1,10
    80001d04:	0400006f          	j	80001d44 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001d08:	00003517          	auipc	a0,0x3
    80001d0c:	37850513          	addi	a0,a0,888 # 80005080 <CONSOLE_STATUS+0x70>
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	998080e7          	jalr	-1640(ra) # 800016a8 <_Z11printStringPKc>
    80001d18:	00000613          	li	a2,0
    80001d1c:	00a00593          	li	a1,10
    80001d20:	00048513          	mv	a0,s1
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	b1c080e7          	jalr	-1252(ra) # 80001840 <_Z8printIntiii>
    80001d2c:	00003517          	auipc	a0,0x3
    80001d30:	4fc50513          	addi	a0,a0,1276 # 80005228 <CONSOLE_STATUS+0x218>
    80001d34:	00000097          	auipc	ra,0x0
    80001d38:	974080e7          	jalr	-1676(ra) # 800016a8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001d3c:	0014849b          	addiw	s1,s1,1
    80001d40:	0ff4f493          	andi	s1,s1,255
    80001d44:	00c00793          	li	a5,12
    80001d48:	fc97f0e3          	bgeu	a5,s1,80001d08 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80001d4c:	00003517          	auipc	a0,0x3
    80001d50:	33c50513          	addi	a0,a0,828 # 80005088 <CONSOLE_STATUS+0x78>
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	954080e7          	jalr	-1708(ra) # 800016a8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001d5c:	00500313          	li	t1,5
    thread_dispatch();
    80001d60:	fffff097          	auipc	ra,0xfffff
    80001d64:	5a4080e7          	jalr	1444(ra) # 80001304 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001d68:	01000513          	li	a0,16
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	d88080e7          	jalr	-632(ra) # 80001af4 <_Z9fibonaccim>
    80001d74:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80001d78:	00003517          	auipc	a0,0x3
    80001d7c:	32050513          	addi	a0,a0,800 # 80005098 <CONSOLE_STATUS+0x88>
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	928080e7          	jalr	-1752(ra) # 800016a8 <_Z11printStringPKc>
    80001d88:	00000613          	li	a2,0
    80001d8c:	00a00593          	li	a1,10
    80001d90:	0009051b          	sext.w	a0,s2
    80001d94:	00000097          	auipc	ra,0x0
    80001d98:	aac080e7          	jalr	-1364(ra) # 80001840 <_Z8printIntiii>
    80001d9c:	00003517          	auipc	a0,0x3
    80001da0:	48c50513          	addi	a0,a0,1164 # 80005228 <CONSOLE_STATUS+0x218>
    80001da4:	00000097          	auipc	ra,0x0
    80001da8:	904080e7          	jalr	-1788(ra) # 800016a8 <_Z11printStringPKc>
    80001dac:	0400006f          	j	80001dec <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001db0:	00003517          	auipc	a0,0x3
    80001db4:	2d050513          	addi	a0,a0,720 # 80005080 <CONSOLE_STATUS+0x70>
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	8f0080e7          	jalr	-1808(ra) # 800016a8 <_Z11printStringPKc>
    80001dc0:	00000613          	li	a2,0
    80001dc4:	00a00593          	li	a1,10
    80001dc8:	00048513          	mv	a0,s1
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	a74080e7          	jalr	-1420(ra) # 80001840 <_Z8printIntiii>
    80001dd4:	00003517          	auipc	a0,0x3
    80001dd8:	45450513          	addi	a0,a0,1108 # 80005228 <CONSOLE_STATUS+0x218>
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	8cc080e7          	jalr	-1844(ra) # 800016a8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001de4:	0014849b          	addiw	s1,s1,1
    80001de8:	0ff4f493          	andi	s1,s1,255
    80001dec:	00f00793          	li	a5,15
    80001df0:	fc97f0e3          	bgeu	a5,s1,80001db0 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80001df4:	00003517          	auipc	a0,0x3
    80001df8:	2b450513          	addi	a0,a0,692 # 800050a8 <CONSOLE_STATUS+0x98>
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	8ac080e7          	jalr	-1876(ra) # 800016a8 <_Z11printStringPKc>
    finishedD = true;
    80001e04:	00100793          	li	a5,1
    80001e08:	00004717          	auipc	a4,0x4
    80001e0c:	bcf701a3          	sb	a5,-1085(a4) # 800059cb <finishedD>
    thread_dispatch();
    80001e10:	fffff097          	auipc	ra,0xfffff
    80001e14:	4f4080e7          	jalr	1268(ra) # 80001304 <_Z15thread_dispatchv>
}
    80001e18:	01813083          	ld	ra,24(sp)
    80001e1c:	01013403          	ld	s0,16(sp)
    80001e20:	00813483          	ld	s1,8(sp)
    80001e24:	00013903          	ld	s2,0(sp)
    80001e28:	02010113          	addi	sp,sp,32
    80001e2c:	00008067          	ret

0000000080001e30 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80001e30:	fc010113          	addi	sp,sp,-64
    80001e34:	02113c23          	sd	ra,56(sp)
    80001e38:	02813823          	sd	s0,48(sp)
    80001e3c:	04010413          	addi	s0,sp,64
    thread_t threads[5];

    thread_create( &threads[0], nullptr, nullptr);
    80001e40:	00000613          	li	a2,0
    80001e44:	00000593          	li	a1,0
    80001e48:	fc840513          	addi	a0,s0,-56
    80001e4c:	fffff097          	auipc	ra,0xfffff
    80001e50:	454080e7          	jalr	1108(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    //TCB::running=threads[0];

    thread_create(&threads[1], workerBodyA, nullptr);
    80001e54:	00000613          	li	a2,0
    80001e58:	00000597          	auipc	a1,0x0
    80001e5c:	afc58593          	addi	a1,a1,-1284 # 80001954 <_Z11workerBodyAPv>
    80001e60:	fd040513          	addi	a0,s0,-48
    80001e64:	fffff097          	auipc	ra,0xfffff
    80001e68:	43c080e7          	jalr	1084(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80001e6c:	00003517          	auipc	a0,0x3
    80001e70:	24c50513          	addi	a0,a0,588 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	834080e7          	jalr	-1996(ra) # 800016a8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyB, nullptr);
    80001e7c:	00000613          	li	a2,0
    80001e80:	00000597          	auipc	a1,0x0
    80001e84:	ba058593          	addi	a1,a1,-1120 # 80001a20 <_Z11workerBodyBPv>
    80001e88:	fd840513          	addi	a0,s0,-40
    80001e8c:	fffff097          	auipc	ra,0xfffff
    80001e90:	414080e7          	jalr	1044(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80001e94:	00003517          	auipc	a0,0x3
    80001e98:	23c50513          	addi	a0,a0,572 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	80c080e7          	jalr	-2036(ra) # 800016a8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyC, nullptr);
    80001ea4:	00000613          	li	a2,0
    80001ea8:	00000597          	auipc	a1,0x0
    80001eac:	cc058593          	addi	a1,a1,-832 # 80001b68 <_Z11workerBodyCPv>
    80001eb0:	fe040513          	addi	a0,s0,-32
    80001eb4:	fffff097          	auipc	ra,0xfffff
    80001eb8:	3ec080e7          	jalr	1004(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001ebc:	00003517          	auipc	a0,0x3
    80001ec0:	22c50513          	addi	a0,a0,556 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001ec4:	fffff097          	auipc	ra,0xfffff
    80001ec8:	7e4080e7          	jalr	2020(ra) # 800016a8 <_Z11printStringPKc>

    thread_create(&threads[4], workerBodyD, nullptr);
    80001ecc:	00000613          	li	a2,0
    80001ed0:	00000597          	auipc	a1,0x0
    80001ed4:	e1858593          	addi	a1,a1,-488 # 80001ce8 <_Z11workerBodyDPv>
    80001ed8:	fe840513          	addi	a0,s0,-24
    80001edc:	fffff097          	auipc	ra,0xfffff
    80001ee0:	3c4080e7          	jalr	964(ra) # 800012a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001ee4:	00003517          	auipc	a0,0x3
    80001ee8:	21c50513          	addi	a0,a0,540 # 80005100 <CONSOLE_STATUS+0xf0>
    80001eec:	fffff097          	auipc	ra,0xfffff
    80001ef0:	7bc080e7          	jalr	1980(ra) # 800016a8 <_Z11printStringPKc>
    80001ef4:	00c0006f          	j	80001f00 <_Z18Threads_C_API_testv+0xd0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch(); //kada udje u threadDispatch, on se vrati u prekidnu rutinu iz nekog razloga
    80001ef8:	fffff097          	auipc	ra,0xfffff
    80001efc:	40c080e7          	jalr	1036(ra) # 80001304 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001f00:	00004797          	auipc	a5,0x4
    80001f04:	ac87c783          	lbu	a5,-1336(a5) # 800059c8 <finishedA>
    80001f08:	fe0788e3          	beqz	a5,80001ef8 <_Z18Threads_C_API_testv+0xc8>
    80001f0c:	00004797          	auipc	a5,0x4
    80001f10:	abd7c783          	lbu	a5,-1347(a5) # 800059c9 <finishedB>
    80001f14:	fe0782e3          	beqz	a5,80001ef8 <_Z18Threads_C_API_testv+0xc8>
    80001f18:	00004797          	auipc	a5,0x4
    80001f1c:	ab27c783          	lbu	a5,-1358(a5) # 800059ca <finishedC>
    80001f20:	fc078ce3          	beqz	a5,80001ef8 <_Z18Threads_C_API_testv+0xc8>
    80001f24:	00004797          	auipc	a5,0x4
    80001f28:	aa77c783          	lbu	a5,-1369(a5) # 800059cb <finishedD>
    80001f2c:	fc0786e3          	beqz	a5,80001ef8 <_Z18Threads_C_API_testv+0xc8>
        //TCB::yield();
    }

}
    80001f30:	03813083          	ld	ra,56(sp)
    80001f34:	03013403          	ld	s0,48(sp)
    80001f38:	04010113          	addi	sp,sp,64
    80001f3c:	00008067          	ret

0000000080001f40 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00113423          	sd	ra,8(sp)
    80001f48:	00813023          	sd	s0,0(sp)
    80001f4c:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	ee0080e7          	jalr	-288(ra) # 80001e30 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001f58:	00813083          	ld	ra,8(sp)
    80001f5c:	00013403          	ld	s0,0(sp)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret

0000000080001f68 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80001f68:	ff010113          	addi	sp,sp,-16
    80001f6c:	00813423          	sd	s0,8(sp)
    80001f70:	01010413          	addi	s0,sp,16
    80001f74:	00100793          	li	a5,1
    80001f78:	00f50863          	beq	a0,a5,80001f88 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001f7c:	00813403          	ld	s0,8(sp)
    80001f80:	01010113          	addi	sp,sp,16
    80001f84:	00008067          	ret
    80001f88:	000107b7          	lui	a5,0x10
    80001f8c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001f90:	fef596e3          	bne	a1,a5,80001f7c <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    80001f94:	00004797          	auipc	a5,0x4
    80001f98:	a3c78793          	addi	a5,a5,-1476 # 800059d0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001f9c:	0007b023          	sd	zero,0(a5)
    80001fa0:	0007b423          	sd	zero,8(a5)
    80001fa4:	fd9ff06f          	j	80001f7c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001fa8 <_ZN9Scheduler3getEv>:
{
    80001fa8:	fe010113          	addi	sp,sp,-32
    80001fac:	00113c23          	sd	ra,24(sp)
    80001fb0:	00813823          	sd	s0,16(sp)
    80001fb4:	00913423          	sd	s1,8(sp)
    80001fb8:	02010413          	addi	s0,sp,32
            head=tail=elem;
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001fbc:	00004517          	auipc	a0,0x4
    80001fc0:	a1453503          	ld	a0,-1516(a0) # 800059d0 <_ZN9Scheduler19readyCoroutineQueueE>
    80001fc4:	04050263          	beqz	a0,80002008 <_ZN9Scheduler3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    80001fc8:	00853783          	ld	a5,8(a0)
    80001fcc:	00004717          	auipc	a4,0x4
    80001fd0:	a0f73223          	sd	a5,-1532(a4) # 800059d0 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80001fd4:	02078463          	beqz	a5,80001ffc <_ZN9Scheduler3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    80001fd8:	00053483          	ld	s1,0(a0)
        delete elem;
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	860080e7          	jalr	-1952(ra) # 8000283c <_ZdlPv>
}
    80001fe4:	00048513          	mv	a0,s1
    80001fe8:	01813083          	ld	ra,24(sp)
    80001fec:	01013403          	ld	s0,16(sp)
    80001ff0:	00813483          	ld	s1,8(sp)
    80001ff4:	02010113          	addi	sp,sp,32
    80001ff8:	00008067          	ret
            tail = 0;
    80001ffc:	00004797          	auipc	a5,0x4
    80002000:	9c07be23          	sd	zero,-1572(a5) # 800059d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80002004:	fd5ff06f          	j	80001fd8 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80002008:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    8000200c:	fd9ff06f          	j	80001fe4 <_ZN9Scheduler3getEv+0x3c>

0000000080002010 <_ZN9Scheduler3putEP3TCB>:
{
    80002010:	ff010113          	addi	sp,sp,-16
    80002014:	00813423          	sd	s0,8(sp)
    80002018:	01010413          	addi	s0,sp,16

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000201c:	00004797          	auipc	a5,0x4
    80002020:	9347b783          	ld	a5,-1740(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002024:	0007b783          	ld	a5,0(a5)
    80002028:	0c078a63          	beqz	a5,800020fc <_ZN9Scheduler3putEP3TCB+0xec>
            cur->next=fmem_head->next;
    8000202c:	00004717          	auipc	a4,0x4
    80002030:	92473703          	ld	a4,-1756(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002034:	00073683          	ld	a3,0(a4)
    80002038:	0006b683          	ld	a3,0(a3)
    8000203c:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    80002040:	00073703          	ld	a4,0(a4)
    80002044:	00873603          	ld	a2,8(a4)
    80002048:	00c7b423          	sd	a2,8(a5)
            if (cur->size<size) continue;
    8000204c:	0107b703          	ld	a4,16(a5)
    80002050:	03f00593          	li	a1,63
    80002054:	02e5f663          	bgeu	a1,a4,80002080 <_ZN9Scheduler3putEP3TCB+0x70>
            if (cur->size-size<=sizeof(FreeMem)){
    80002058:	fc070713          	addi	a4,a4,-64
    8000205c:	01800593          	li	a1,24
    80002060:	02e5ec63          	bltu	a1,a4,80002098 <_ZN9Scheduler3putEP3TCB+0x88>
                if (cur->prev) cur->prev->next = cur->next;
    80002064:	02060263          	beqz	a2,80002088 <_ZN9Scheduler3putEP3TCB+0x78>
    80002068:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    8000206c:	0007b703          	ld	a4,0(a5)
    80002070:	08070663          	beqz	a4,800020fc <_ZN9Scheduler3putEP3TCB+0xec>
    80002074:	0087b683          	ld	a3,8(a5)
    80002078:	00d73423          	sd	a3,8(a4)
                return cur;
    8000207c:	0800006f          	j	800020fc <_ZN9Scheduler3putEP3TCB+0xec>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002080:	00068793          	mv	a5,a3
    80002084:	fa5ff06f          	j	80002028 <_ZN9Scheduler3putEP3TCB+0x18>
                else fmem_head = cur->next;
    80002088:	00004717          	auipc	a4,0x4
    8000208c:	8c873703          	ld	a4,-1848(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002090:	00d73023          	sd	a3,0(a4)
    80002094:	fd9ff06f          	j	8000206c <_ZN9Scheduler3putEP3TCB+0x5c>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002098:	04078713          	addi	a4,a5,64
                newfrgm->prev=nullptr;
    8000209c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800020a0:	0407b023          	sd	zero,64(a5)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800020a4:	0087b683          	ld	a3,8(a5)
    800020a8:	08068063          	beqz	a3,80002128 <_ZN9Scheduler3putEP3TCB+0x118>
    800020ac:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800020b0:	0007b683          	ld	a3,0(a5)
    800020b4:	00068463          	beqz	a3,800020bc <_ZN9Scheduler3putEP3TCB+0xac>
    800020b8:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800020bc:	0087b603          	ld	a2,8(a5)
    800020c0:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800020c4:	0007b683          	ld	a3,0(a5)
    800020c8:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800020cc:	0107b783          	ld	a5,16(a5)
    800020d0:	fc078793          	addi	a5,a5,-64
    800020d4:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800020d8:	0c070693          	addi	a3,a4,192
    800020dc:	00004597          	auipc	a1,0x4
    800020e0:	8745b583          	ld	a1,-1932(a1) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020e4:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800020e8:	00073583          	ld	a1,0(a4)
    800020ec:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    800020f0:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800020f4:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    800020f8:	00070793          	mv	a5,a4
        elem->data=data;
    800020fc:	00a7b023          	sd	a0,0(a5)
        elem->next=nullptr;
    80002100:	0007b423          	sd	zero,8(a5)
        if (tail){
    80002104:	00004717          	auipc	a4,0x4
    80002108:	8d473703          	ld	a4,-1836(a4) # 800059d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000210c:	02070863          	beqz	a4,8000213c <_ZN9Scheduler3putEP3TCB+0x12c>
            tail->next=elem;
    80002110:	00f73423          	sd	a5,8(a4)
            tail=elem;
    80002114:	00004717          	auipc	a4,0x4
    80002118:	8cf73223          	sd	a5,-1852(a4) # 800059d8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    8000211c:	00813403          	ld	s0,8(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002128:	0c070693          	addi	a3,a4,192
    8000212c:	00004617          	auipc	a2,0x4
    80002130:	82463603          	ld	a2,-2012(a2) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002134:	00d63023          	sd	a3,0(a2)
    80002138:	f79ff06f          	j	800020b0 <_ZN9Scheduler3putEP3TCB+0xa0>
            head=tail=elem;
    8000213c:	00004717          	auipc	a4,0x4
    80002140:	89470713          	addi	a4,a4,-1900 # 800059d0 <_ZN9Scheduler19readyCoroutineQueueE>
    80002144:	00f73423          	sd	a5,8(a4)
    80002148:	00f73023          	sd	a5,0(a4)
    8000214c:	fd1ff06f          	j	8000211c <_ZN9Scheduler3putEP3TCB+0x10c>

0000000080002150 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80002150:	ff010113          	addi	sp,sp,-16
    80002154:	00113423          	sd	ra,8(sp)
    80002158:	00813023          	sd	s0,0(sp)
    8000215c:	01010413          	addi	s0,sp,16
    80002160:	000105b7          	lui	a1,0x10
    80002164:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002168:	00100513          	li	a0,1
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	dfc080e7          	jalr	-516(ra) # 80001f68 <_Z41__static_initialization_and_destruction_0ii>
    80002174:	00813083          	ld	ra,8(sp)
    80002178:	00013403          	ld	s0,0(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <main>:
#include "../h/RiscV.hpp"
#include "../h/syscall_c.hpp"
//#include "../src/userMain.cpp"
//#include "../test/Threads_C_API_test.hpp"
extern void userMain();
int main(){
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00113423          	sd	ra,8(sp)
    8000218c:	00813023          	sd	s0,0(sp)
    80002190:	01010413          	addi	s0,sp,16
        if (!instance) {
    80002194:	00003797          	auipc	a5,0x3
    80002198:	7b47b783          	ld	a5,1972(a5) # 80005948 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000219c:	0007b783          	ld	a5,0(a5)
    800021a0:	02078663          	beqz	a5,800021cc <main+0x48>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    800021a4:	00003797          	auipc	a5,0x3
    800021a8:	79c7b783          	ld	a5,1948(a5) # 80005940 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    800021ac:	10579073          	csrw	stvec,a5
     for (auto &coroutine : threads){
         delete coroutine;
     }
    printString("finished\n");*/

    userMain();
    800021b0:	00000097          	auipc	ra,0x0
    800021b4:	d90080e7          	jalr	-624(ra) # 80001f40 <_Z8userMainv>
    return 0;
    800021b8:	00000513          	li	a0,0
    800021bc:	00813083          	ld	ra,8(sp)
    800021c0:	00013403          	ld	s0,0(sp)
    800021c4:	01010113          	addi	sp,sp,16
    800021c8:	00008067          	ret
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    800021cc:	00003797          	auipc	a5,0x3
    800021d0:	7647b783          	ld	a5,1892(a5) # 80005930 <_GLOBAL_OFFSET_TABLE_+0x8>
    800021d4:	0007b783          	ld	a5,0(a5)
    800021d8:	00003697          	auipc	a3,0x3
    800021dc:	7786b683          	ld	a3,1912(a3) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800021e0:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    800021e4:	00003717          	auipc	a4,0x3
    800021e8:	77c73703          	ld	a4,1916(a4) # 80005960 <_GLOBAL_OFFSET_TABLE_+0x38>
    800021ec:	00073703          	ld	a4,0(a4)
    800021f0:	40f70733          	sub	a4,a4,a5
    800021f4:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    800021f8:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    800021fc:	0006b783          	ld	a5,0(a3)
    80002200:	0007b423          	sd	zero,8(a5)
            return instance;
    80002204:	fa1ff06f          	j	800021a4 <main+0x20>

0000000080002208 <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    80002208:	ff010113          	addi	sp,sp,-16
    8000220c:	00813423          	sd	s0,8(sp)
    80002210:	01010413          	addi	s0,sp,16
    return finished;
}
    80002214:	02054503          	lbu	a0,32(a0)
    80002218:	00813403          	ld	s0,8(sp)
    8000221c:	01010113          	addi	sp,sp,16
    80002220:	00008067          	ret

0000000080002224 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80002224:	ff010113          	addi	sp,sp,-16
    80002228:	00813423          	sd	s0,8(sp)
    8000222c:	01010413          	addi	s0,sp,16
    TCB::finished=finished;
    80002230:	02b50023          	sb	a1,32(a0)
}
    80002234:	00813403          	ld	s0,8(sp)
    80002238:	01010113          	addi	sp,sp,16
    8000223c:	00008067          	ret

0000000080002240 <_ZN3TCB12createThreadEPFvPvEPPS_S0_>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

int TCB::createThread(TCB::Body body, TCB** handle , void* arguments) {
    80002240:	fe010113          	addi	sp,sp,-32
    80002244:	00113c23          	sd	ra,24(sp)
    80002248:	00813823          	sd	s0,16(sp)
    8000224c:	00913423          	sd	s1,8(sp)
    80002250:	02010413          	addi	s0,sp,32
    80002254:	00058493          	mv	s1,a1
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002258:	00003797          	auipc	a5,0x3
    8000225c:	6f87b783          	ld	a5,1784(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002260:	0007b783          	ld	a5,0(a5)
    80002264:	0c078a63          	beqz	a5,80002338 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
            cur->next=fmem_head->next;
    80002268:	00003717          	auipc	a4,0x3
    8000226c:	6e873703          	ld	a4,1768(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002270:	00073683          	ld	a3,0(a4)
    80002274:	0006b683          	ld	a3,0(a3)
    80002278:	00d7b023          	sd	a3,0(a5)
            cur->prev=fmem_head->prev;
    8000227c:	00073703          	ld	a4,0(a4)
    80002280:	00873583          	ld	a1,8(a4)
    80002284:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    80002288:	0107b703          	ld	a4,16(a5)
    8000228c:	07f00813          	li	a6,127
    80002290:	02e87663          	bgeu	a6,a4,800022bc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002294:	f8070713          	addi	a4,a4,-128
    80002298:	01800813          	li	a6,24
    8000229c:	02e86c63          	bltu	a6,a4,800022d4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    800022a0:	02058263          	beqz	a1,800022c4 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x84>
    800022a4:	00d5b023          	sd	a3,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    800022a8:	0007b703          	ld	a4,0(a5)
    800022ac:	08070663          	beqz	a4,80002338 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
    800022b0:	0087b683          	ld	a3,8(a5)
    800022b4:	00d73423          	sd	a3,8(a4)
                return cur;
    800022b8:	0800006f          	j	80002338 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800022bc:	00068793          	mv	a5,a3
    800022c0:	fa5ff06f          	j	80002264 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24>
                else fmem_head = cur->next;
    800022c4:	00003717          	auipc	a4,0x3
    800022c8:	68c73703          	ld	a4,1676(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022cc:	00d73023          	sd	a3,0(a4)
    800022d0:	fd9ff06f          	j	800022a8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800022d4:	08078713          	addi	a4,a5,128
                newfrgm->prev=nullptr;
    800022d8:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800022dc:	0807b023          	sd	zero,128(a5)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800022e0:	0087b683          	ld	a3,8(a5)
    800022e4:	0c068c63          	beqz	a3,800023bc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x17c>
    800022e8:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800022ec:	0007b683          	ld	a3,0(a5)
    800022f0:	00068463          	beqz	a3,800022f8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xb8>
    800022f4:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800022f8:	0087b583          	ld	a1,8(a5)
    800022fc:	00b73423          	sd	a1,8(a4)
                newfrgm->next = cur->next;
    80002300:	0007b683          	ld	a3,0(a5)
    80002304:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002308:	0107b783          	ld	a5,16(a5)
    8000230c:	f8078793          	addi	a5,a5,-128
    80002310:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002314:	0c070693          	addi	a3,a4,192
    80002318:	00003817          	auipc	a6,0x3
    8000231c:	63883803          	ld	a6,1592(a6) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002320:	00d83023          	sd	a3,0(a6)
                fmem_head->next=newfrgm->next;
    80002324:	00073803          	ld	a6,0(a4)
    80002328:	0d073023          	sd	a6,192(a4)
                fmem_head->prev=newfrgm->prev;
    8000232c:	0cb73423          	sd	a1,200(a4)
                fmem_head->size=newfrgm->size;
    80002330:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002334:	00070793          	mv	a5,a4
    //*handle = new TCB(body, TIME_SLICE, arguments);
    *handle = (TCB*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(sizeof(TCB)));
    80002338:	00f4b023          	sd	a5,0(s1)
    (*handle)->body=body;
    8000233c:	00a7b023          	sd	a0,0(a5)
    (*handle)->arguments=arguments;
    80002340:	0004b783          	ld	a5,0(s1)
    80002344:	02c7b423          	sd	a2,40(a5)
    (*handle)->stack = body ? (uint64*) MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(DEFAULT_STACK_SIZE)) : nullptr;
    80002348:	12050663          	beqz	a0,80002474 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x234>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000234c:	00003797          	auipc	a5,0x3
    80002350:	6047b783          	ld	a5,1540(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002354:	0007b783          	ld	a5,0(a5)
    80002358:	12078063          	beqz	a5,80002478 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
            cur->next=fmem_head->next;
    8000235c:	00003717          	auipc	a4,0x3
    80002360:	5f473703          	ld	a4,1524(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002364:	00073683          	ld	a3,0(a4)
    80002368:	0006b603          	ld	a2,0(a3)
    8000236c:	00c7b023          	sd	a2,0(a5)
            cur->prev=fmem_head->prev;
    80002370:	00073703          	ld	a4,0(a4)
    80002374:	00873583          	ld	a1,8(a4)
    80002378:	00b7b423          	sd	a1,8(a5)
            if (cur->size<size) continue;
    8000237c:	0107b703          	ld	a4,16(a5)
    80002380:	000016b7          	lui	a3,0x1
    80002384:	03f68693          	addi	a3,a3,63 # 103f <_entry-0x7fffefc1>
    80002388:	04e6f463          	bgeu	a3,a4,800023d0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x190>
            if (cur->size-size<=sizeof(FreeMem)){
    8000238c:	fffff6b7          	lui	a3,0xfffff
    80002390:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff8370>
    80002394:	00d70733          	add	a4,a4,a3
    80002398:	01800693          	li	a3,24
    8000239c:	04e6e663          	bltu	a3,a4,800023e8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1a8>
                if (cur->prev) cur->prev->next = cur->next;
    800023a0:	02058c63          	beqz	a1,800023d8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x198>
    800023a4:	00c5b023          	sd	a2,0(a1)
                if (cur->next) cur->next->prev = cur->prev;
    800023a8:	0007b703          	ld	a4,0(a5)
    800023ac:	0c070663          	beqz	a4,80002478 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
    800023b0:	0087b683          	ld	a3,8(a5)
    800023b4:	00d73423          	sd	a3,8(a4)
                return cur;
    800023b8:	0c00006f          	j	80002478 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800023bc:	0c070693          	addi	a3,a4,192
    800023c0:	00003597          	auipc	a1,0x3
    800023c4:	5905b583          	ld	a1,1424(a1) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023c8:	00d5b023          	sd	a3,0(a1)
    800023cc:	f21ff06f          	j	800022ec <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0xac>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800023d0:	00060793          	mv	a5,a2
    800023d4:	f85ff06f          	j	80002358 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x118>
                else fmem_head = cur->next;
    800023d8:	00003717          	auipc	a4,0x3
    800023dc:	57873703          	ld	a4,1400(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023e0:	00c73023          	sd	a2,0(a4)
    800023e4:	fc5ff06f          	j	800023a8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x168>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800023e8:	00001737          	lui	a4,0x1
    800023ec:	04070713          	addi	a4,a4,64 # 1040 <_entry-0x7fffefc0>
    800023f0:	00e78733          	add	a4,a5,a4
                newfrgm->prev=nullptr;
    800023f4:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800023f8:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800023fc:	0087b683          	ld	a3,8(a5)
    80002400:	06068063          	beqz	a3,80002460 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x220>
    80002404:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    80002408:	0007b683          	ld	a3,0(a5)
    8000240c:	00068463          	beqz	a3,80002414 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1d4>
    80002410:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002414:	0087b603          	ld	a2,8(a5)
    80002418:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    8000241c:	0007b683          	ld	a3,0(a5)
    80002420:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002424:	0107b783          	ld	a5,16(a5)
    80002428:	fffff6b7          	lui	a3,0xfffff
    8000242c:	fc068693          	addi	a3,a3,-64 # ffffffffffffefc0 <end+0xffffffff7fff8370>
    80002430:	00d787b3          	add	a5,a5,a3
    80002434:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002438:	0c070693          	addi	a3,a4,192
    8000243c:	00003597          	auipc	a1,0x3
    80002440:	5145b583          	ld	a1,1300(a1) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002444:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002448:	00073583          	ld	a1,0(a4)
    8000244c:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002450:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002454:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002458:	00070793          	mv	a5,a4
    8000245c:	01c0006f          	j	80002478 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x238>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002460:	0c070693          	addi	a3,a4,192
    80002464:	00003617          	auipc	a2,0x3
    80002468:	4ec63603          	ld	a2,1260(a2) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000246c:	00d63023          	sd	a3,0(a2)
    80002470:	f99ff06f          	j	80002408 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x1c8>
    80002474:	00000793          	li	a5,0
    80002478:	0004b703          	ld	a4,0(s1)
    8000247c:	00f73423          	sd	a5,8(a4)
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    80002480:	06050863          	beqz	a0,800024f0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2b0>
    80002484:	00000717          	auipc	a4,0x0
    80002488:	0b870713          	addi	a4,a4,184 # 8000253c <_ZN3TCB13threadWrapperEv>
    8000248c:	0004b783          	ld	a5,0(s1)
    80002490:	00e7b823          	sd	a4,16(a5)
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    80002494:	0004b703          	ld	a4,0(s1)
    80002498:	00873783          	ld	a5,8(a4)
    8000249c:	04078e63          	beqz	a5,800024f8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2b8>
    800024a0:	000086b7          	lui	a3,0x8
    800024a4:	00d787b3          	add	a5,a5,a3
    800024a8:	00f73c23          	sd	a5,24(a4)
    (*handle)->finished=false;
    800024ac:	0004b783          	ld	a5,0(s1)
    800024b0:	02078023          	sb	zero,32(a5)
    if(running==nullptr) {
    800024b4:	00003797          	auipc	a5,0x3
    800024b8:	52c7b783          	ld	a5,1324(a5) # 800059e0 <_ZN3TCB7runningE>
    800024bc:	04078263          	beqz	a5,80002500 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2c0>
        (*handle)->running = *handle;
    }
    if (body != nullptr) { Scheduler::put(*handle); }
    800024c0:	00050863          	beqz	a0,800024d0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x290>
    800024c4:	0004b503          	ld	a0,0(s1)
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	b48080e7          	jalr	-1208(ra) # 80002010 <_ZN9Scheduler3putEP3TCB>
    if(*handle==nullptr){
    800024d0:	0004b783          	ld	a5,0(s1)
    800024d4:	02078e63          	beqz	a5,80002510 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x2d0>
        return -1;
    }else{return 0;}
    800024d8:	00000513          	li	a0,0
}
    800024dc:	01813083          	ld	ra,24(sp)
    800024e0:	01013403          	ld	s0,16(sp)
    800024e4:	00813483          	ld	s1,8(sp)
    800024e8:	02010113          	addi	sp,sp,32
    800024ec:	00008067          	ret
    (*handle)->context.ra = body ? (uint64)&threadWrapper : 0;
    800024f0:	00000713          	li	a4,0
    800024f4:	f99ff06f          	j	8000248c <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x24c>
    (*handle)->context.sp = (*handle)->stack ? (uint64) &(*handle)->stack[DEFAULT_STACK_SIZE] : 0;
    800024f8:	00000793          	li	a5,0
    800024fc:	fadff06f          	j	800024a8 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x268>
        (*handle)->running = *handle;
    80002500:	0004b783          	ld	a5,0(s1)
    80002504:	00003717          	auipc	a4,0x3
    80002508:	4cf73e23          	sd	a5,1244(a4) # 800059e0 <_ZN3TCB7runningE>
    8000250c:	fb5ff06f          	j	800024c0 <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x280>
        return -1;
    80002510:	fff00513          	li	a0,-1
    80002514:	fc9ff06f          	j	800024dc <_ZN3TCB12createThreadEPFvPvEPPS_S0_+0x29c>

0000000080002518 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80002518:	ff010113          	addi	sp,sp,-16
    8000251c:	00813423          	sd	s0,8(sp)
    80002520:	01010413          	addi	s0,sp,16
    uint64 sysCallNr=0x13UL;
    __asm__ volatile("mv a0, %0" : : [sysCallNr] "r" (sysCallNr));
    80002524:	01300793          	li	a5,19
    80002528:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    8000252c:	00000073          	ecall

};
    80002530:	00813403          	ld	s0,8(sp)
    80002534:	01010113          	addi	sp,sp,16
    80002538:	00008067          	ret

000000008000253c <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    8000253c:	fe010113          	addi	sp,sp,-32
    80002540:	00113c23          	sd	ra,24(sp)
    80002544:	00813823          	sd	s0,16(sp)
    80002548:	00913423          	sd	s1,8(sp)
    8000254c:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    80002550:	fffff097          	auipc	ra,0xfffff
    80002554:	dd8080e7          	jalr	-552(ra) # 80001328 <_ZN5RiscV10popSppSpieEv>
    running->body(running->arguments);
    80002558:	00003497          	auipc	s1,0x3
    8000255c:	48848493          	addi	s1,s1,1160 # 800059e0 <_ZN3TCB7runningE>
    80002560:	0004b783          	ld	a5,0(s1)
    80002564:	0007b703          	ld	a4,0(a5)
    80002568:	0287b503          	ld	a0,40(a5)
    8000256c:	000700e7          	jalr	a4
    running->setFinished(true);
    80002570:	00100593          	li	a1,1
    80002574:	0004b503          	ld	a0,0(s1)
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	cac080e7          	jalr	-852(ra) # 80002224 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80002580:	00000097          	auipc	ra,0x0
    80002584:	f98080e7          	jalr	-104(ra) # 80002518 <_ZN3TCB5yieldEv>
}
    80002588:	01813083          	ld	ra,24(sp)
    8000258c:	01013403          	ld	s0,16(sp)
    80002590:	00813483          	ld	s1,8(sp)
    80002594:	02010113          	addi	sp,sp,32
    80002598:	00008067          	ret

000000008000259c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    8000259c:	fe010113          	addi	sp,sp,-32
    800025a0:	00113c23          	sd	ra,24(sp)
    800025a4:	00813823          	sd	s0,16(sp)
    800025a8:	00913423          	sd	s1,8(sp)
    800025ac:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800025b0:	00003497          	auipc	s1,0x3
    800025b4:	4304b483          	ld	s1,1072(s1) # 800059e0 <_ZN3TCB7runningE>
    if (!old->isFinished()) {
    800025b8:	00048513          	mv	a0,s1
    800025bc:	00000097          	auipc	ra,0x0
    800025c0:	c4c080e7          	jalr	-948(ra) # 80002208 <_ZNK3TCB10isFinishedEv>
    800025c4:	02050c63          	beqz	a0,800025fc <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	9e0080e7          	jalr	-1568(ra) # 80001fa8 <_ZN9Scheduler3getEv>
    800025d0:	00003797          	auipc	a5,0x3
    800025d4:	40a7b823          	sd	a0,1040(a5) # 800059e0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800025d8:	01050593          	addi	a1,a0,16
    800025dc:	01048513          	addi	a0,s1,16
    800025e0:	fffff097          	auipc	ra,0xfffff
    800025e4:	c50080e7          	jalr	-944(ra) # 80001230 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800025e8:	01813083          	ld	ra,24(sp)
    800025ec:	01013403          	ld	s0,16(sp)
    800025f0:	00813483          	ld	s1,8(sp)
    800025f4:	02010113          	addi	sp,sp,32
    800025f8:	00008067          	ret
        Scheduler::put(old);
    800025fc:	00048513          	mv	a0,s1
    80002600:	00000097          	auipc	ra,0x0
    80002604:	a10080e7          	jalr	-1520(ra) # 80002010 <_ZN9Scheduler3putEP3TCB>
    80002608:	fc1ff06f          	j	800025c8 <_ZN3TCB8dispatchEv+0x2c>

000000008000260c <_Znwm>:
#include "../h/MemoryAllocation.hpp"
#include "../h/syscall_c.hpp"

//SVUDA SAM OBRISAO MEMORYALLOCATOR:: JER PRAVIM IZ SISTEMSKIH POZIVA

void *operator new(uint64 n){//promenjeno uint64 u size_t
    8000260c:	ff010113          	addi	sp,sp,-16
    80002610:	00813423          	sd	s0,8(sp)
    80002614:	01010413          	addi	s0,sp,16

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002618:	05750793          	addi	a5,a0,87
    8000261c:	0067d793          	srli	a5,a5,0x6
    80002620:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80002624:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002628:	00003717          	auipc	a4,0x3
    8000262c:	32873703          	ld	a4,808(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002630:	00073503          	ld	a0,0(a4)
    80002634:	0c050863          	beqz	a0,80002704 <_Znwm+0xf8>
            cur->next=fmem_head->next;
    80002638:	00003717          	auipc	a4,0x3
    8000263c:	31873703          	ld	a4,792(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002640:	00073683          	ld	a3,0(a4)
    80002644:	0006b683          	ld	a3,0(a3) # 8000 <_entry-0x7fff8000>
    80002648:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    8000264c:	00073703          	ld	a4,0(a4)
    80002650:	00873603          	ld	a2,8(a4)
    80002654:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80002658:	01053703          	ld	a4,16(a0)
    8000265c:	02f76663          	bltu	a4,a5,80002688 <_Znwm+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002660:	40f70733          	sub	a4,a4,a5
    80002664:	01800593          	li	a1,24
    80002668:	02e5ec63          	bltu	a1,a4,800026a0 <_Znwm+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    8000266c:	02060263          	beqz	a2,80002690 <_Znwm+0x84>
    80002670:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80002674:	00053783          	ld	a5,0(a0)
    80002678:	08078663          	beqz	a5,80002704 <_Znwm+0xf8>
    8000267c:	00853703          	ld	a4,8(a0)
    80002680:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002684:	0800006f          	j	80002704 <_Znwm+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002688:	00068513          	mv	a0,a3
    8000268c:	fa9ff06f          	j	80002634 <_Znwm+0x28>
                else fmem_head = cur->next;
    80002690:	00003797          	auipc	a5,0x3
    80002694:	2c07b783          	ld	a5,704(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002698:	00d7b023          	sd	a3,0(a5)
    8000269c:	fd9ff06f          	j	80002674 <_Znwm+0x68>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800026a0:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    800026a4:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800026a8:	00073023          	sd	zero,0(a4)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800026ac:	00853683          	ld	a3,8(a0)
    800026b0:	06068063          	beqz	a3,80002710 <_Znwm+0x104>
    800026b4:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800026b8:	00053683          	ld	a3,0(a0)
    800026bc:	00068463          	beqz	a3,800026c4 <_Znwm+0xb8>
    800026c0:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800026c4:	00853603          	ld	a2,8(a0)
    800026c8:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800026cc:	00053683          	ld	a3,0(a0)
    800026d0:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800026d4:	01053683          	ld	a3,16(a0)
    800026d8:	40f687b3          	sub	a5,a3,a5
    800026dc:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800026e0:	0c070693          	addi	a3,a4,192
    800026e4:	00003597          	auipc	a1,0x3
    800026e8:	26c5b583          	ld	a1,620(a1) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026ec:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800026f0:	00073583          	ld	a1,0(a4)
    800026f4:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    800026f8:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800026fc:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80002700:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}
    80002704:	00813403          	ld	s0,8(sp)
    80002708:	01010113          	addi	sp,sp,16
    8000270c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002710:	0c070693          	addi	a3,a4,192
    80002714:	00003617          	auipc	a2,0x3
    80002718:	23c63603          	ld	a2,572(a2) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000271c:	00d63023          	sd	a3,0(a2)
    80002720:	f99ff06f          	j	800026b8 <_Znwm+0xac>

0000000080002724 <_Znam>:

void *operator new[](uint64 n){
    80002724:	ff010113          	addi	sp,sp,-16
    80002728:	00813423          	sd	s0,8(sp)
    8000272c:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002730:	05750793          	addi	a5,a0,87
    80002734:	0067d793          	srli	a5,a5,0x6
    80002738:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    8000273c:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002740:	00003717          	auipc	a4,0x3
    80002744:	21073703          	ld	a4,528(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002748:	00073503          	ld	a0,0(a4)
    8000274c:	0c050863          	beqz	a0,8000281c <_Znam+0xf8>
            cur->next=fmem_head->next;
    80002750:	00003717          	auipc	a4,0x3
    80002754:	20073703          	ld	a4,512(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002758:	00073683          	ld	a3,0(a4)
    8000275c:	0006b683          	ld	a3,0(a3)
    80002760:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80002764:	00073703          	ld	a4,0(a4)
    80002768:	00873603          	ld	a2,8(a4)
    8000276c:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80002770:	01053703          	ld	a4,16(a0)
    80002774:	02f76663          	bltu	a4,a5,800027a0 <_Znam+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002778:	40f70733          	sub	a4,a4,a5
    8000277c:	01800593          	li	a1,24
    80002780:	02e5ec63          	bltu	a1,a4,800027b8 <_Znam+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002784:	02060263          	beqz	a2,800027a8 <_Znam+0x84>
    80002788:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    8000278c:	00053783          	ld	a5,0(a0)
    80002790:	08078663          	beqz	a5,8000281c <_Znam+0xf8>
    80002794:	00853703          	ld	a4,8(a0)
    80002798:	00e7b423          	sd	a4,8(a5)
                return cur;
    8000279c:	0800006f          	j	8000281c <_Znam+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800027a0:	00068513          	mv	a0,a3
    800027a4:	fa9ff06f          	j	8000274c <_Znam+0x28>
                else fmem_head = cur->next;
    800027a8:	00003797          	auipc	a5,0x3
    800027ac:	1a87b783          	ld	a5,424(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800027b0:	00d7b023          	sd	a3,0(a5)
    800027b4:	fd9ff06f          	j	8000278c <_Znam+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800027b8:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    800027bc:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    800027c0:	00073023          	sd	zero,0(a4)
                if (cur && cur->prev) cur->prev->next = newfrgm;
    800027c4:	00853683          	ld	a3,8(a0)
    800027c8:	06068063          	beqz	a3,80002828 <_Znam+0x104>
    800027cc:	00e6b023          	sd	a4,0(a3)
                if (cur && cur->next) cur->next->prev = newfrgm;
    800027d0:	00053683          	ld	a3,0(a0)
    800027d4:	00068463          	beqz	a3,800027dc <_Znam+0xb8>
    800027d8:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800027dc:	00853603          	ld	a2,8(a0)
    800027e0:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800027e4:	00053683          	ld	a3,0(a0)
    800027e8:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800027ec:	01053683          	ld	a3,16(a0)
    800027f0:	40f687b3          	sub	a5,a3,a5
    800027f4:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800027f8:	0c070693          	addi	a3,a4,192
    800027fc:	00003597          	auipc	a1,0x3
    80002800:	1545b583          	ld	a1,340(a1) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002804:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002808:	00073583          	ld	a1,0(a4)
    8000280c:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002810:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002814:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002818:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
}
    8000281c:	00813403          	ld	s0,8(sp)
    80002820:	01010113          	addi	sp,sp,16
    80002824:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002828:	0c070693          	addi	a3,a4,192
    8000282c:	00003617          	auipc	a2,0x3
    80002830:	12463603          	ld	a2,292(a2) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002834:	00d63023          	sd	a3,0(a2)
    80002838:	f99ff06f          	j	800027d0 <_Znam+0xac>

000000008000283c <_ZdlPv>:

void operator delete(void *p) noexcept {
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00813423          	sd	s0,8(sp)
    80002844:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002848:	00003797          	auipc	a5,0x3
    8000284c:	1087b783          	ld	a5,264(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002850:	0007b703          	ld	a4,0(a5)
    80002854:	00070e63          	beqz	a4,80002870 <_ZdlPv+0x34>
    80002858:	02e56063          	bltu	a0,a4,80002878 <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    8000285c:	00070793          	mv	a5,a4
    80002860:	00073703          	ld	a4,0(a4)
    80002864:	00e50c63          	beq	a0,a4,8000287c <_ZdlPv+0x40>
    80002868:	fea76ae3          	bltu	a4,a0,8000285c <_ZdlPv+0x20>
    8000286c:	0100006f          	j	8000287c <_ZdlPv+0x40>
            cur=nullptr;
    80002870:	00070793          	mv	a5,a4
    80002874:	0080006f          	j	8000287c <_ZdlPv+0x40>
    80002878:	00000793          	li	a5,0
                newSeg->next=nullptr;
    8000287c:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002880:	04000713          	li	a4,64
    80002884:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002888:	00f53423          	sd	a5,8(a0)
                if(cur) {
    8000288c:	04078e63          	beqz	a5,800028e8 <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    80002890:	0007b703          	ld	a4,0(a5)
    80002894:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002898:	00053703          	ld	a4,0(a0)
    8000289c:	00070463          	beqz	a4,800028a4 <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    800028a0:	00a73423          	sd	a0,8(a4)
                if (cur) {
    800028a4:	04078c63          	beqz	a5,800028fc <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800028a8:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    800028ac:	00050c63          	beqz	a0,800028c4 <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800028b0:	00053703          	ld	a4,0(a0)
    800028b4:	00070863          	beqz	a4,800028c4 <_ZdlPv+0x88>
    800028b8:	01053683          	ld	a3,16(a0)
    800028bc:	00d50633          	add	a2,a0,a3
    800028c0:	04c70663          	beq	a4,a2,8000290c <_ZdlPv+0xd0>
        if (!curr) return;
    800028c4:	00078c63          	beqz	a5,800028dc <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800028c8:	0007b703          	ld	a4,0(a5)
    800028cc:	00070863          	beqz	a4,800028dc <_ZdlPv+0xa0>
    800028d0:	0107b683          	ld	a3,16(a5)
    800028d4:	00d78633          	add	a2,a5,a3
    800028d8:	04c70a63          	beq	a4,a2,8000292c <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    800028dc:	00813403          	ld	s0,8(sp)
    800028e0:	01010113          	addi	sp,sp,16
    800028e4:	00008067          	ret
                    newSeg->next = fmem_head;
    800028e8:	00003717          	auipc	a4,0x3
    800028ec:	06873703          	ld	a4,104(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    800028f0:	00073703          	ld	a4,0(a4)
    800028f4:	00e53023          	sd	a4,0(a0)
    800028f8:	fa1ff06f          	j	80002898 <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    800028fc:	00003717          	auipc	a4,0x3
    80002900:	05473703          	ld	a4,84(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002904:	00a73023          	sd	a0,0(a4)
    80002908:	fa5ff06f          	j	800028ac <_ZdlPv+0x70>
            curr->size += curr->next->size;
    8000290c:	01073603          	ld	a2,16(a4)
    80002910:	00c686b3          	add	a3,a3,a2
    80002914:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80002918:	00073703          	ld	a4,0(a4)
    8000291c:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80002920:	fa0702e3          	beqz	a4,800028c4 <_ZdlPv+0x88>
    80002924:	00a73423          	sd	a0,8(a4)
    80002928:	f9dff06f          	j	800028c4 <_ZdlPv+0x88>
            curr->size += curr->next->size;
    8000292c:	01073603          	ld	a2,16(a4)
    80002930:	00c686b3          	add	a3,a3,a2
    80002934:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002938:	00073703          	ld	a4,0(a4)
    8000293c:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80002940:	f8070ee3          	beqz	a4,800028dc <_ZdlPv+0xa0>
    80002944:	00f73423          	sd	a5,8(a4)
    80002948:	f95ff06f          	j	800028dc <_ZdlPv+0xa0>

000000008000294c <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00813423          	sd	s0,8(sp)
    80002954:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002958:	00003797          	auipc	a5,0x3
    8000295c:	ff87b783          	ld	a5,-8(a5) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002960:	0007b703          	ld	a4,0(a5)
    80002964:	00070e63          	beqz	a4,80002980 <_ZdaPv+0x34>
    80002968:	02e56063          	bltu	a0,a4,80002988 <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    8000296c:	00070793          	mv	a5,a4
    80002970:	00073703          	ld	a4,0(a4)
    80002974:	00e50c63          	beq	a0,a4,8000298c <_ZdaPv+0x40>
    80002978:	fea76ae3          	bltu	a4,a0,8000296c <_ZdaPv+0x20>
    8000297c:	0100006f          	j	8000298c <_ZdaPv+0x40>
            cur=nullptr;
    80002980:	00070793          	mv	a5,a4
    80002984:	0080006f          	j	8000298c <_ZdaPv+0x40>
    80002988:	00000793          	li	a5,0
                newSeg->next=nullptr;
    8000298c:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002990:	04000713          	li	a4,64
    80002994:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002998:	00f53423          	sd	a5,8(a0)
                if(cur) {
    8000299c:	04078e63          	beqz	a5,800029f8 <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    800029a0:	0007b703          	ld	a4,0(a5)
    800029a4:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    800029a8:	00053703          	ld	a4,0(a0)
    800029ac:	00070463          	beqz	a4,800029b4 <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    800029b0:	00a73423          	sd	a0,8(a4)
                if (cur) {
    800029b4:	04078c63          	beqz	a5,80002a0c <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800029b8:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    800029bc:	00050c63          	beqz	a0,800029d4 <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800029c0:	00053703          	ld	a4,0(a0)
    800029c4:	00070863          	beqz	a4,800029d4 <_ZdaPv+0x88>
    800029c8:	01053683          	ld	a3,16(a0)
    800029cc:	00d50633          	add	a2,a0,a3
    800029d0:	04c70663          	beq	a4,a2,80002a1c <_ZdaPv+0xd0>
        if (!curr) return;
    800029d4:	00078c63          	beqz	a5,800029ec <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800029d8:	0007b703          	ld	a4,0(a5)
    800029dc:	00070863          	beqz	a4,800029ec <_ZdaPv+0xa0>
    800029e0:	0107b683          	ld	a3,16(a5)
    800029e4:	00d78633          	add	a2,a5,a3
    800029e8:	04c70a63          	beq	a4,a2,80002a3c <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
    800029ec:	00813403          	ld	s0,8(sp)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret
                    newSeg->next = fmem_head;
    800029f8:	00003717          	auipc	a4,0x3
    800029fc:	f5873703          	ld	a4,-168(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a00:	00073703          	ld	a4,0(a4)
    80002a04:	00e53023          	sd	a4,0(a0)
    80002a08:	fa1ff06f          	j	800029a8 <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    80002a0c:	00003717          	auipc	a4,0x3
    80002a10:	f4473703          	ld	a4,-188(a4) # 80005950 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a14:	00a73023          	sd	a0,0(a4)
    80002a18:	fa5ff06f          	j	800029bc <_ZdaPv+0x70>
            curr->size += curr->next->size;
    80002a1c:	01073603          	ld	a2,16(a4)
    80002a20:	00c686b3          	add	a3,a3,a2
    80002a24:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80002a28:	00073703          	ld	a4,0(a4)
    80002a2c:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80002a30:	fa0702e3          	beqz	a4,800029d4 <_ZdaPv+0x88>
    80002a34:	00a73423          	sd	a0,8(a4)
    80002a38:	f9dff06f          	j	800029d4 <_ZdaPv+0x88>
            curr->size += curr->next->size;
    80002a3c:	01073603          	ld	a2,16(a4)
    80002a40:	00c686b3          	add	a3,a3,a2
    80002a44:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002a48:	00073703          	ld	a4,0(a4)
    80002a4c:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80002a50:	f8070ee3          	beqz	a4,800029ec <_ZdaPv+0xa0>
    80002a54:	00f73423          	sd	a5,8(a4)
    80002a58:	f95ff06f          	j	800029ec <_ZdaPv+0xa0>

0000000080002a5c <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002a5c:	ff010113          	addi	sp,sp,-16
    80002a60:	00813423          	sd	s0,8(sp)
    80002a64:	01010413          	addi	s0,sp,16
    80002a68:	00100793          	li	a5,1
    80002a6c:	00f50863          	beq	a0,a5,80002a7c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a70:	00813403          	ld	s0,8(sp)
    80002a74:	01010113          	addi	sp,sp,16
    80002a78:	00008067          	ret
    80002a7c:	000107b7          	lui	a5,0x10
    80002a80:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a84:	fef596e3          	bne	a1,a5,80002a70 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002a88:	00003797          	auipc	a5,0x3
    80002a8c:	ea87b783          	ld	a5,-344(a5) # 80005930 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002a90:	0007b783          	ld	a5,0(a5)
    80002a94:	00003717          	auipc	a4,0x3
    80002a98:	f4f73e23          	sd	a5,-164(a4) # 800059f0 <_ZN16MemoryAllocation9fmem_headE>
    80002a9c:	fd5ff06f          	j	80002a70 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002aa0 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    80002aa0:	ff010113          	addi	sp,sp,-16
    80002aa4:	00113423          	sd	ra,8(sp)
    80002aa8:	00813023          	sd	s0,0(sp)
    80002aac:	01010413          	addi	s0,sp,16
    80002ab0:	000105b7          	lui	a1,0x10
    80002ab4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002ab8:	00100513          	li	a0,1
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	fa0080e7          	jalr	-96(ra) # 80002a5c <_Z41__static_initialization_and_destruction_0ii>
    80002ac4:	00813083          	ld	ra,8(sp)
    80002ac8:	00013403          	ld	s0,0(sp)
    80002acc:	01010113          	addi	sp,sp,16
    80002ad0:	00008067          	ret

0000000080002ad4 <start>:
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00813423          	sd	s0,8(sp)
    80002adc:	01010413          	addi	s0,sp,16
    80002ae0:	300027f3          	csrr	a5,mstatus
    80002ae4:	ffffe737          	lui	a4,0xffffe
    80002ae8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7baf>
    80002aec:	00e7f7b3          	and	a5,a5,a4
    80002af0:	00001737          	lui	a4,0x1
    80002af4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002af8:	00e7e7b3          	or	a5,a5,a4
    80002afc:	30079073          	csrw	mstatus,a5
    80002b00:	00000797          	auipc	a5,0x0
    80002b04:	16078793          	addi	a5,a5,352 # 80002c60 <system_main>
    80002b08:	34179073          	csrw	mepc,a5
    80002b0c:	00000793          	li	a5,0
    80002b10:	18079073          	csrw	satp,a5
    80002b14:	000107b7          	lui	a5,0x10
    80002b18:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b1c:	30279073          	csrw	medeleg,a5
    80002b20:	30379073          	csrw	mideleg,a5
    80002b24:	104027f3          	csrr	a5,sie
    80002b28:	2227e793          	ori	a5,a5,546
    80002b2c:	10479073          	csrw	sie,a5
    80002b30:	fff00793          	li	a5,-1
    80002b34:	00a7d793          	srli	a5,a5,0xa
    80002b38:	3b079073          	csrw	pmpaddr0,a5
    80002b3c:	00f00793          	li	a5,15
    80002b40:	3a079073          	csrw	pmpcfg0,a5
    80002b44:	f14027f3          	csrr	a5,mhartid
    80002b48:	0200c737          	lui	a4,0x200c
    80002b4c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002b50:	0007869b          	sext.w	a3,a5
    80002b54:	00269713          	slli	a4,a3,0x2
    80002b58:	000f4637          	lui	a2,0xf4
    80002b5c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002b60:	00d70733          	add	a4,a4,a3
    80002b64:	0037979b          	slliw	a5,a5,0x3
    80002b68:	020046b7          	lui	a3,0x2004
    80002b6c:	00d787b3          	add	a5,a5,a3
    80002b70:	00c585b3          	add	a1,a1,a2
    80002b74:	00371693          	slli	a3,a4,0x3
    80002b78:	00003717          	auipc	a4,0x3
    80002b7c:	e8870713          	addi	a4,a4,-376 # 80005a00 <timer_scratch>
    80002b80:	00b7b023          	sd	a1,0(a5)
    80002b84:	00d70733          	add	a4,a4,a3
    80002b88:	00f73c23          	sd	a5,24(a4)
    80002b8c:	02c73023          	sd	a2,32(a4)
    80002b90:	34071073          	csrw	mscratch,a4
    80002b94:	00000797          	auipc	a5,0x0
    80002b98:	6ec78793          	addi	a5,a5,1772 # 80003280 <timervec>
    80002b9c:	30579073          	csrw	mtvec,a5
    80002ba0:	300027f3          	csrr	a5,mstatus
    80002ba4:	0087e793          	ori	a5,a5,8
    80002ba8:	30079073          	csrw	mstatus,a5
    80002bac:	304027f3          	csrr	a5,mie
    80002bb0:	0807e793          	ori	a5,a5,128
    80002bb4:	30479073          	csrw	mie,a5
    80002bb8:	f14027f3          	csrr	a5,mhartid
    80002bbc:	0007879b          	sext.w	a5,a5
    80002bc0:	00078213          	mv	tp,a5
    80002bc4:	30200073          	mret
    80002bc8:	00813403          	ld	s0,8(sp)
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	00008067          	ret

0000000080002bd4 <timerinit>:
    80002bd4:	ff010113          	addi	sp,sp,-16
    80002bd8:	00813423          	sd	s0,8(sp)
    80002bdc:	01010413          	addi	s0,sp,16
    80002be0:	f14027f3          	csrr	a5,mhartid
    80002be4:	0200c737          	lui	a4,0x200c
    80002be8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002bec:	0007869b          	sext.w	a3,a5
    80002bf0:	00269713          	slli	a4,a3,0x2
    80002bf4:	000f4637          	lui	a2,0xf4
    80002bf8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002bfc:	00d70733          	add	a4,a4,a3
    80002c00:	0037979b          	slliw	a5,a5,0x3
    80002c04:	020046b7          	lui	a3,0x2004
    80002c08:	00d787b3          	add	a5,a5,a3
    80002c0c:	00c585b3          	add	a1,a1,a2
    80002c10:	00371693          	slli	a3,a4,0x3
    80002c14:	00003717          	auipc	a4,0x3
    80002c18:	dec70713          	addi	a4,a4,-532 # 80005a00 <timer_scratch>
    80002c1c:	00b7b023          	sd	a1,0(a5)
    80002c20:	00d70733          	add	a4,a4,a3
    80002c24:	00f73c23          	sd	a5,24(a4)
    80002c28:	02c73023          	sd	a2,32(a4)
    80002c2c:	34071073          	csrw	mscratch,a4
    80002c30:	00000797          	auipc	a5,0x0
    80002c34:	65078793          	addi	a5,a5,1616 # 80003280 <timervec>
    80002c38:	30579073          	csrw	mtvec,a5
    80002c3c:	300027f3          	csrr	a5,mstatus
    80002c40:	0087e793          	ori	a5,a5,8
    80002c44:	30079073          	csrw	mstatus,a5
    80002c48:	304027f3          	csrr	a5,mie
    80002c4c:	0807e793          	ori	a5,a5,128
    80002c50:	30479073          	csrw	mie,a5
    80002c54:	00813403          	ld	s0,8(sp)
    80002c58:	01010113          	addi	sp,sp,16
    80002c5c:	00008067          	ret

0000000080002c60 <system_main>:
    80002c60:	fe010113          	addi	sp,sp,-32
    80002c64:	00813823          	sd	s0,16(sp)
    80002c68:	00913423          	sd	s1,8(sp)
    80002c6c:	00113c23          	sd	ra,24(sp)
    80002c70:	02010413          	addi	s0,sp,32
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	0c4080e7          	jalr	196(ra) # 80002d38 <cpuid>
    80002c7c:	00003497          	auipc	s1,0x3
    80002c80:	d1448493          	addi	s1,s1,-748 # 80005990 <started>
    80002c84:	02050263          	beqz	a0,80002ca8 <system_main+0x48>
    80002c88:	0004a783          	lw	a5,0(s1)
    80002c8c:	0007879b          	sext.w	a5,a5
    80002c90:	fe078ce3          	beqz	a5,80002c88 <system_main+0x28>
    80002c94:	0ff0000f          	fence
    80002c98:	00002517          	auipc	a0,0x2
    80002c9c:	4b050513          	addi	a0,a0,1200 # 80005148 <CONSOLE_STATUS+0x138>
    80002ca0:	00001097          	auipc	ra,0x1
    80002ca4:	a7c080e7          	jalr	-1412(ra) # 8000371c <panic>
    80002ca8:	00001097          	auipc	ra,0x1
    80002cac:	9d0080e7          	jalr	-1584(ra) # 80003678 <consoleinit>
    80002cb0:	00001097          	auipc	ra,0x1
    80002cb4:	15c080e7          	jalr	348(ra) # 80003e0c <printfinit>
    80002cb8:	00002517          	auipc	a0,0x2
    80002cbc:	57050513          	addi	a0,a0,1392 # 80005228 <CONSOLE_STATUS+0x218>
    80002cc0:	00001097          	auipc	ra,0x1
    80002cc4:	ab8080e7          	jalr	-1352(ra) # 80003778 <__printf>
    80002cc8:	00002517          	auipc	a0,0x2
    80002ccc:	45050513          	addi	a0,a0,1104 # 80005118 <CONSOLE_STATUS+0x108>
    80002cd0:	00001097          	auipc	ra,0x1
    80002cd4:	aa8080e7          	jalr	-1368(ra) # 80003778 <__printf>
    80002cd8:	00002517          	auipc	a0,0x2
    80002cdc:	55050513          	addi	a0,a0,1360 # 80005228 <CONSOLE_STATUS+0x218>
    80002ce0:	00001097          	auipc	ra,0x1
    80002ce4:	a98080e7          	jalr	-1384(ra) # 80003778 <__printf>
    80002ce8:	00001097          	auipc	ra,0x1
    80002cec:	4b0080e7          	jalr	1200(ra) # 80004198 <kinit>
    80002cf0:	00000097          	auipc	ra,0x0
    80002cf4:	148080e7          	jalr	328(ra) # 80002e38 <trapinit>
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	16c080e7          	jalr	364(ra) # 80002e64 <trapinithart>
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	5c0080e7          	jalr	1472(ra) # 800032c0 <plicinit>
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	5e0080e7          	jalr	1504(ra) # 800032e8 <plicinithart>
    80002d10:	00000097          	auipc	ra,0x0
    80002d14:	078080e7          	jalr	120(ra) # 80002d88 <userinit>
    80002d18:	0ff0000f          	fence
    80002d1c:	00100793          	li	a5,1
    80002d20:	00002517          	auipc	a0,0x2
    80002d24:	41050513          	addi	a0,a0,1040 # 80005130 <CONSOLE_STATUS+0x120>
    80002d28:	00f4a023          	sw	a5,0(s1)
    80002d2c:	00001097          	auipc	ra,0x1
    80002d30:	a4c080e7          	jalr	-1460(ra) # 80003778 <__printf>
    80002d34:	0000006f          	j	80002d34 <system_main+0xd4>

0000000080002d38 <cpuid>:
    80002d38:	ff010113          	addi	sp,sp,-16
    80002d3c:	00813423          	sd	s0,8(sp)
    80002d40:	01010413          	addi	s0,sp,16
    80002d44:	00020513          	mv	a0,tp
    80002d48:	00813403          	ld	s0,8(sp)
    80002d4c:	0005051b          	sext.w	a0,a0
    80002d50:	01010113          	addi	sp,sp,16
    80002d54:	00008067          	ret

0000000080002d58 <mycpu>:
    80002d58:	ff010113          	addi	sp,sp,-16
    80002d5c:	00813423          	sd	s0,8(sp)
    80002d60:	01010413          	addi	s0,sp,16
    80002d64:	00020793          	mv	a5,tp
    80002d68:	00813403          	ld	s0,8(sp)
    80002d6c:	0007879b          	sext.w	a5,a5
    80002d70:	00779793          	slli	a5,a5,0x7
    80002d74:	00004517          	auipc	a0,0x4
    80002d78:	cbc50513          	addi	a0,a0,-836 # 80006a30 <cpus>
    80002d7c:	00f50533          	add	a0,a0,a5
    80002d80:	01010113          	addi	sp,sp,16
    80002d84:	00008067          	ret

0000000080002d88 <userinit>:
    80002d88:	ff010113          	addi	sp,sp,-16
    80002d8c:	00813423          	sd	s0,8(sp)
    80002d90:	01010413          	addi	s0,sp,16
    80002d94:	00813403          	ld	s0,8(sp)
    80002d98:	01010113          	addi	sp,sp,16
    80002d9c:	fffff317          	auipc	t1,0xfffff
    80002da0:	3e830067          	jr	1000(t1) # 80002184 <main>

0000000080002da4 <either_copyout>:
    80002da4:	ff010113          	addi	sp,sp,-16
    80002da8:	00813023          	sd	s0,0(sp)
    80002dac:	00113423          	sd	ra,8(sp)
    80002db0:	01010413          	addi	s0,sp,16
    80002db4:	02051663          	bnez	a0,80002de0 <either_copyout+0x3c>
    80002db8:	00058513          	mv	a0,a1
    80002dbc:	00060593          	mv	a1,a2
    80002dc0:	0006861b          	sext.w	a2,a3
    80002dc4:	00002097          	auipc	ra,0x2
    80002dc8:	c60080e7          	jalr	-928(ra) # 80004a24 <__memmove>
    80002dcc:	00813083          	ld	ra,8(sp)
    80002dd0:	00013403          	ld	s0,0(sp)
    80002dd4:	00000513          	li	a0,0
    80002dd8:	01010113          	addi	sp,sp,16
    80002ddc:	00008067          	ret
    80002de0:	00002517          	auipc	a0,0x2
    80002de4:	39050513          	addi	a0,a0,912 # 80005170 <CONSOLE_STATUS+0x160>
    80002de8:	00001097          	auipc	ra,0x1
    80002dec:	934080e7          	jalr	-1740(ra) # 8000371c <panic>

0000000080002df0 <either_copyin>:
    80002df0:	ff010113          	addi	sp,sp,-16
    80002df4:	00813023          	sd	s0,0(sp)
    80002df8:	00113423          	sd	ra,8(sp)
    80002dfc:	01010413          	addi	s0,sp,16
    80002e00:	02059463          	bnez	a1,80002e28 <either_copyin+0x38>
    80002e04:	00060593          	mv	a1,a2
    80002e08:	0006861b          	sext.w	a2,a3
    80002e0c:	00002097          	auipc	ra,0x2
    80002e10:	c18080e7          	jalr	-1000(ra) # 80004a24 <__memmove>
    80002e14:	00813083          	ld	ra,8(sp)
    80002e18:	00013403          	ld	s0,0(sp)
    80002e1c:	00000513          	li	a0,0
    80002e20:	01010113          	addi	sp,sp,16
    80002e24:	00008067          	ret
    80002e28:	00002517          	auipc	a0,0x2
    80002e2c:	37050513          	addi	a0,a0,880 # 80005198 <CONSOLE_STATUS+0x188>
    80002e30:	00001097          	auipc	ra,0x1
    80002e34:	8ec080e7          	jalr	-1812(ra) # 8000371c <panic>

0000000080002e38 <trapinit>:
    80002e38:	ff010113          	addi	sp,sp,-16
    80002e3c:	00813423          	sd	s0,8(sp)
    80002e40:	01010413          	addi	s0,sp,16
    80002e44:	00813403          	ld	s0,8(sp)
    80002e48:	00002597          	auipc	a1,0x2
    80002e4c:	37858593          	addi	a1,a1,888 # 800051c0 <CONSOLE_STATUS+0x1b0>
    80002e50:	00004517          	auipc	a0,0x4
    80002e54:	c6050513          	addi	a0,a0,-928 # 80006ab0 <tickslock>
    80002e58:	01010113          	addi	sp,sp,16
    80002e5c:	00001317          	auipc	t1,0x1
    80002e60:	5cc30067          	jr	1484(t1) # 80004428 <initlock>

0000000080002e64 <trapinithart>:
    80002e64:	ff010113          	addi	sp,sp,-16
    80002e68:	00813423          	sd	s0,8(sp)
    80002e6c:	01010413          	addi	s0,sp,16
    80002e70:	00000797          	auipc	a5,0x0
    80002e74:	30078793          	addi	a5,a5,768 # 80003170 <kernelvec>
    80002e78:	10579073          	csrw	stvec,a5
    80002e7c:	00813403          	ld	s0,8(sp)
    80002e80:	01010113          	addi	sp,sp,16
    80002e84:	00008067          	ret

0000000080002e88 <usertrap>:
    80002e88:	ff010113          	addi	sp,sp,-16
    80002e8c:	00813423          	sd	s0,8(sp)
    80002e90:	01010413          	addi	s0,sp,16
    80002e94:	00813403          	ld	s0,8(sp)
    80002e98:	01010113          	addi	sp,sp,16
    80002e9c:	00008067          	ret

0000000080002ea0 <usertrapret>:
    80002ea0:	ff010113          	addi	sp,sp,-16
    80002ea4:	00813423          	sd	s0,8(sp)
    80002ea8:	01010413          	addi	s0,sp,16
    80002eac:	00813403          	ld	s0,8(sp)
    80002eb0:	01010113          	addi	sp,sp,16
    80002eb4:	00008067          	ret

0000000080002eb8 <kerneltrap>:
    80002eb8:	fe010113          	addi	sp,sp,-32
    80002ebc:	00813823          	sd	s0,16(sp)
    80002ec0:	00113c23          	sd	ra,24(sp)
    80002ec4:	00913423          	sd	s1,8(sp)
    80002ec8:	02010413          	addi	s0,sp,32
    80002ecc:	142025f3          	csrr	a1,scause
    80002ed0:	100027f3          	csrr	a5,sstatus
    80002ed4:	0027f793          	andi	a5,a5,2
    80002ed8:	10079c63          	bnez	a5,80002ff0 <kerneltrap+0x138>
    80002edc:	142027f3          	csrr	a5,scause
    80002ee0:	0207ce63          	bltz	a5,80002f1c <kerneltrap+0x64>
    80002ee4:	00002517          	auipc	a0,0x2
    80002ee8:	32450513          	addi	a0,a0,804 # 80005208 <CONSOLE_STATUS+0x1f8>
    80002eec:	00001097          	auipc	ra,0x1
    80002ef0:	88c080e7          	jalr	-1908(ra) # 80003778 <__printf>
    80002ef4:	141025f3          	csrr	a1,sepc
    80002ef8:	14302673          	csrr	a2,stval
    80002efc:	00002517          	auipc	a0,0x2
    80002f00:	31c50513          	addi	a0,a0,796 # 80005218 <CONSOLE_STATUS+0x208>
    80002f04:	00001097          	auipc	ra,0x1
    80002f08:	874080e7          	jalr	-1932(ra) # 80003778 <__printf>
    80002f0c:	00002517          	auipc	a0,0x2
    80002f10:	32450513          	addi	a0,a0,804 # 80005230 <CONSOLE_STATUS+0x220>
    80002f14:	00001097          	auipc	ra,0x1
    80002f18:	808080e7          	jalr	-2040(ra) # 8000371c <panic>
    80002f1c:	0ff7f713          	andi	a4,a5,255
    80002f20:	00900693          	li	a3,9
    80002f24:	04d70063          	beq	a4,a3,80002f64 <kerneltrap+0xac>
    80002f28:	fff00713          	li	a4,-1
    80002f2c:	03f71713          	slli	a4,a4,0x3f
    80002f30:	00170713          	addi	a4,a4,1
    80002f34:	fae798e3          	bne	a5,a4,80002ee4 <kerneltrap+0x2c>
    80002f38:	00000097          	auipc	ra,0x0
    80002f3c:	e00080e7          	jalr	-512(ra) # 80002d38 <cpuid>
    80002f40:	06050663          	beqz	a0,80002fac <kerneltrap+0xf4>
    80002f44:	144027f3          	csrr	a5,sip
    80002f48:	ffd7f793          	andi	a5,a5,-3
    80002f4c:	14479073          	csrw	sip,a5
    80002f50:	01813083          	ld	ra,24(sp)
    80002f54:	01013403          	ld	s0,16(sp)
    80002f58:	00813483          	ld	s1,8(sp)
    80002f5c:	02010113          	addi	sp,sp,32
    80002f60:	00008067          	ret
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	3d0080e7          	jalr	976(ra) # 80003334 <plic_claim>
    80002f6c:	00a00793          	li	a5,10
    80002f70:	00050493          	mv	s1,a0
    80002f74:	06f50863          	beq	a0,a5,80002fe4 <kerneltrap+0x12c>
    80002f78:	fc050ce3          	beqz	a0,80002f50 <kerneltrap+0x98>
    80002f7c:	00050593          	mv	a1,a0
    80002f80:	00002517          	auipc	a0,0x2
    80002f84:	26850513          	addi	a0,a0,616 # 800051e8 <CONSOLE_STATUS+0x1d8>
    80002f88:	00000097          	auipc	ra,0x0
    80002f8c:	7f0080e7          	jalr	2032(ra) # 80003778 <__printf>
    80002f90:	01013403          	ld	s0,16(sp)
    80002f94:	01813083          	ld	ra,24(sp)
    80002f98:	00048513          	mv	a0,s1
    80002f9c:	00813483          	ld	s1,8(sp)
    80002fa0:	02010113          	addi	sp,sp,32
    80002fa4:	00000317          	auipc	t1,0x0
    80002fa8:	3c830067          	jr	968(t1) # 8000336c <plic_complete>
    80002fac:	00004517          	auipc	a0,0x4
    80002fb0:	b0450513          	addi	a0,a0,-1276 # 80006ab0 <tickslock>
    80002fb4:	00001097          	auipc	ra,0x1
    80002fb8:	498080e7          	jalr	1176(ra) # 8000444c <acquire>
    80002fbc:	00003717          	auipc	a4,0x3
    80002fc0:	9d870713          	addi	a4,a4,-1576 # 80005994 <ticks>
    80002fc4:	00072783          	lw	a5,0(a4)
    80002fc8:	00004517          	auipc	a0,0x4
    80002fcc:	ae850513          	addi	a0,a0,-1304 # 80006ab0 <tickslock>
    80002fd0:	0017879b          	addiw	a5,a5,1
    80002fd4:	00f72023          	sw	a5,0(a4)
    80002fd8:	00001097          	auipc	ra,0x1
    80002fdc:	540080e7          	jalr	1344(ra) # 80004518 <release>
    80002fe0:	f65ff06f          	j	80002f44 <kerneltrap+0x8c>
    80002fe4:	00001097          	auipc	ra,0x1
    80002fe8:	09c080e7          	jalr	156(ra) # 80004080 <uartintr>
    80002fec:	fa5ff06f          	j	80002f90 <kerneltrap+0xd8>
    80002ff0:	00002517          	auipc	a0,0x2
    80002ff4:	1d850513          	addi	a0,a0,472 # 800051c8 <CONSOLE_STATUS+0x1b8>
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	724080e7          	jalr	1828(ra) # 8000371c <panic>

0000000080003000 <clockintr>:
    80003000:	fe010113          	addi	sp,sp,-32
    80003004:	00813823          	sd	s0,16(sp)
    80003008:	00913423          	sd	s1,8(sp)
    8000300c:	00113c23          	sd	ra,24(sp)
    80003010:	02010413          	addi	s0,sp,32
    80003014:	00004497          	auipc	s1,0x4
    80003018:	a9c48493          	addi	s1,s1,-1380 # 80006ab0 <tickslock>
    8000301c:	00048513          	mv	a0,s1
    80003020:	00001097          	auipc	ra,0x1
    80003024:	42c080e7          	jalr	1068(ra) # 8000444c <acquire>
    80003028:	00003717          	auipc	a4,0x3
    8000302c:	96c70713          	addi	a4,a4,-1684 # 80005994 <ticks>
    80003030:	00072783          	lw	a5,0(a4)
    80003034:	01013403          	ld	s0,16(sp)
    80003038:	01813083          	ld	ra,24(sp)
    8000303c:	00048513          	mv	a0,s1
    80003040:	0017879b          	addiw	a5,a5,1
    80003044:	00813483          	ld	s1,8(sp)
    80003048:	00f72023          	sw	a5,0(a4)
    8000304c:	02010113          	addi	sp,sp,32
    80003050:	00001317          	auipc	t1,0x1
    80003054:	4c830067          	jr	1224(t1) # 80004518 <release>

0000000080003058 <devintr>:
    80003058:	142027f3          	csrr	a5,scause
    8000305c:	00000513          	li	a0,0
    80003060:	0007c463          	bltz	a5,80003068 <devintr+0x10>
    80003064:	00008067          	ret
    80003068:	fe010113          	addi	sp,sp,-32
    8000306c:	00813823          	sd	s0,16(sp)
    80003070:	00113c23          	sd	ra,24(sp)
    80003074:	00913423          	sd	s1,8(sp)
    80003078:	02010413          	addi	s0,sp,32
    8000307c:	0ff7f713          	andi	a4,a5,255
    80003080:	00900693          	li	a3,9
    80003084:	04d70c63          	beq	a4,a3,800030dc <devintr+0x84>
    80003088:	fff00713          	li	a4,-1
    8000308c:	03f71713          	slli	a4,a4,0x3f
    80003090:	00170713          	addi	a4,a4,1
    80003094:	00e78c63          	beq	a5,a4,800030ac <devintr+0x54>
    80003098:	01813083          	ld	ra,24(sp)
    8000309c:	01013403          	ld	s0,16(sp)
    800030a0:	00813483          	ld	s1,8(sp)
    800030a4:	02010113          	addi	sp,sp,32
    800030a8:	00008067          	ret
    800030ac:	00000097          	auipc	ra,0x0
    800030b0:	c8c080e7          	jalr	-884(ra) # 80002d38 <cpuid>
    800030b4:	06050663          	beqz	a0,80003120 <devintr+0xc8>
    800030b8:	144027f3          	csrr	a5,sip
    800030bc:	ffd7f793          	andi	a5,a5,-3
    800030c0:	14479073          	csrw	sip,a5
    800030c4:	01813083          	ld	ra,24(sp)
    800030c8:	01013403          	ld	s0,16(sp)
    800030cc:	00813483          	ld	s1,8(sp)
    800030d0:	00200513          	li	a0,2
    800030d4:	02010113          	addi	sp,sp,32
    800030d8:	00008067          	ret
    800030dc:	00000097          	auipc	ra,0x0
    800030e0:	258080e7          	jalr	600(ra) # 80003334 <plic_claim>
    800030e4:	00a00793          	li	a5,10
    800030e8:	00050493          	mv	s1,a0
    800030ec:	06f50663          	beq	a0,a5,80003158 <devintr+0x100>
    800030f0:	00100513          	li	a0,1
    800030f4:	fa0482e3          	beqz	s1,80003098 <devintr+0x40>
    800030f8:	00048593          	mv	a1,s1
    800030fc:	00002517          	auipc	a0,0x2
    80003100:	0ec50513          	addi	a0,a0,236 # 800051e8 <CONSOLE_STATUS+0x1d8>
    80003104:	00000097          	auipc	ra,0x0
    80003108:	674080e7          	jalr	1652(ra) # 80003778 <__printf>
    8000310c:	00048513          	mv	a0,s1
    80003110:	00000097          	auipc	ra,0x0
    80003114:	25c080e7          	jalr	604(ra) # 8000336c <plic_complete>
    80003118:	00100513          	li	a0,1
    8000311c:	f7dff06f          	j	80003098 <devintr+0x40>
    80003120:	00004517          	auipc	a0,0x4
    80003124:	99050513          	addi	a0,a0,-1648 # 80006ab0 <tickslock>
    80003128:	00001097          	auipc	ra,0x1
    8000312c:	324080e7          	jalr	804(ra) # 8000444c <acquire>
    80003130:	00003717          	auipc	a4,0x3
    80003134:	86470713          	addi	a4,a4,-1948 # 80005994 <ticks>
    80003138:	00072783          	lw	a5,0(a4)
    8000313c:	00004517          	auipc	a0,0x4
    80003140:	97450513          	addi	a0,a0,-1676 # 80006ab0 <tickslock>
    80003144:	0017879b          	addiw	a5,a5,1
    80003148:	00f72023          	sw	a5,0(a4)
    8000314c:	00001097          	auipc	ra,0x1
    80003150:	3cc080e7          	jalr	972(ra) # 80004518 <release>
    80003154:	f65ff06f          	j	800030b8 <devintr+0x60>
    80003158:	00001097          	auipc	ra,0x1
    8000315c:	f28080e7          	jalr	-216(ra) # 80004080 <uartintr>
    80003160:	fadff06f          	j	8000310c <devintr+0xb4>
	...

0000000080003170 <kernelvec>:
    80003170:	f0010113          	addi	sp,sp,-256
    80003174:	00113023          	sd	ra,0(sp)
    80003178:	00213423          	sd	sp,8(sp)
    8000317c:	00313823          	sd	gp,16(sp)
    80003180:	00413c23          	sd	tp,24(sp)
    80003184:	02513023          	sd	t0,32(sp)
    80003188:	02613423          	sd	t1,40(sp)
    8000318c:	02713823          	sd	t2,48(sp)
    80003190:	02813c23          	sd	s0,56(sp)
    80003194:	04913023          	sd	s1,64(sp)
    80003198:	04a13423          	sd	a0,72(sp)
    8000319c:	04b13823          	sd	a1,80(sp)
    800031a0:	04c13c23          	sd	a2,88(sp)
    800031a4:	06d13023          	sd	a3,96(sp)
    800031a8:	06e13423          	sd	a4,104(sp)
    800031ac:	06f13823          	sd	a5,112(sp)
    800031b0:	07013c23          	sd	a6,120(sp)
    800031b4:	09113023          	sd	a7,128(sp)
    800031b8:	09213423          	sd	s2,136(sp)
    800031bc:	09313823          	sd	s3,144(sp)
    800031c0:	09413c23          	sd	s4,152(sp)
    800031c4:	0b513023          	sd	s5,160(sp)
    800031c8:	0b613423          	sd	s6,168(sp)
    800031cc:	0b713823          	sd	s7,176(sp)
    800031d0:	0b813c23          	sd	s8,184(sp)
    800031d4:	0d913023          	sd	s9,192(sp)
    800031d8:	0da13423          	sd	s10,200(sp)
    800031dc:	0db13823          	sd	s11,208(sp)
    800031e0:	0dc13c23          	sd	t3,216(sp)
    800031e4:	0fd13023          	sd	t4,224(sp)
    800031e8:	0fe13423          	sd	t5,232(sp)
    800031ec:	0ff13823          	sd	t6,240(sp)
    800031f0:	cc9ff0ef          	jal	ra,80002eb8 <kerneltrap>
    800031f4:	00013083          	ld	ra,0(sp)
    800031f8:	00813103          	ld	sp,8(sp)
    800031fc:	01013183          	ld	gp,16(sp)
    80003200:	02013283          	ld	t0,32(sp)
    80003204:	02813303          	ld	t1,40(sp)
    80003208:	03013383          	ld	t2,48(sp)
    8000320c:	03813403          	ld	s0,56(sp)
    80003210:	04013483          	ld	s1,64(sp)
    80003214:	04813503          	ld	a0,72(sp)
    80003218:	05013583          	ld	a1,80(sp)
    8000321c:	05813603          	ld	a2,88(sp)
    80003220:	06013683          	ld	a3,96(sp)
    80003224:	06813703          	ld	a4,104(sp)
    80003228:	07013783          	ld	a5,112(sp)
    8000322c:	07813803          	ld	a6,120(sp)
    80003230:	08013883          	ld	a7,128(sp)
    80003234:	08813903          	ld	s2,136(sp)
    80003238:	09013983          	ld	s3,144(sp)
    8000323c:	09813a03          	ld	s4,152(sp)
    80003240:	0a013a83          	ld	s5,160(sp)
    80003244:	0a813b03          	ld	s6,168(sp)
    80003248:	0b013b83          	ld	s7,176(sp)
    8000324c:	0b813c03          	ld	s8,184(sp)
    80003250:	0c013c83          	ld	s9,192(sp)
    80003254:	0c813d03          	ld	s10,200(sp)
    80003258:	0d013d83          	ld	s11,208(sp)
    8000325c:	0d813e03          	ld	t3,216(sp)
    80003260:	0e013e83          	ld	t4,224(sp)
    80003264:	0e813f03          	ld	t5,232(sp)
    80003268:	0f013f83          	ld	t6,240(sp)
    8000326c:	10010113          	addi	sp,sp,256
    80003270:	10200073          	sret
    80003274:	00000013          	nop
    80003278:	00000013          	nop
    8000327c:	00000013          	nop

0000000080003280 <timervec>:
    80003280:	34051573          	csrrw	a0,mscratch,a0
    80003284:	00b53023          	sd	a1,0(a0)
    80003288:	00c53423          	sd	a2,8(a0)
    8000328c:	00d53823          	sd	a3,16(a0)
    80003290:	01853583          	ld	a1,24(a0)
    80003294:	02053603          	ld	a2,32(a0)
    80003298:	0005b683          	ld	a3,0(a1)
    8000329c:	00c686b3          	add	a3,a3,a2
    800032a0:	00d5b023          	sd	a3,0(a1)
    800032a4:	00200593          	li	a1,2
    800032a8:	14459073          	csrw	sip,a1
    800032ac:	01053683          	ld	a3,16(a0)
    800032b0:	00853603          	ld	a2,8(a0)
    800032b4:	00053583          	ld	a1,0(a0)
    800032b8:	34051573          	csrrw	a0,mscratch,a0
    800032bc:	30200073          	mret

00000000800032c0 <plicinit>:
    800032c0:	ff010113          	addi	sp,sp,-16
    800032c4:	00813423          	sd	s0,8(sp)
    800032c8:	01010413          	addi	s0,sp,16
    800032cc:	00813403          	ld	s0,8(sp)
    800032d0:	0c0007b7          	lui	a5,0xc000
    800032d4:	00100713          	li	a4,1
    800032d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800032dc:	00e7a223          	sw	a4,4(a5)
    800032e0:	01010113          	addi	sp,sp,16
    800032e4:	00008067          	ret

00000000800032e8 <plicinithart>:
    800032e8:	ff010113          	addi	sp,sp,-16
    800032ec:	00813023          	sd	s0,0(sp)
    800032f0:	00113423          	sd	ra,8(sp)
    800032f4:	01010413          	addi	s0,sp,16
    800032f8:	00000097          	auipc	ra,0x0
    800032fc:	a40080e7          	jalr	-1472(ra) # 80002d38 <cpuid>
    80003300:	0085171b          	slliw	a4,a0,0x8
    80003304:	0c0027b7          	lui	a5,0xc002
    80003308:	00e787b3          	add	a5,a5,a4
    8000330c:	40200713          	li	a4,1026
    80003310:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003314:	00813083          	ld	ra,8(sp)
    80003318:	00013403          	ld	s0,0(sp)
    8000331c:	00d5151b          	slliw	a0,a0,0xd
    80003320:	0c2017b7          	lui	a5,0xc201
    80003324:	00a78533          	add	a0,a5,a0
    80003328:	00052023          	sw	zero,0(a0)
    8000332c:	01010113          	addi	sp,sp,16
    80003330:	00008067          	ret

0000000080003334 <plic_claim>:
    80003334:	ff010113          	addi	sp,sp,-16
    80003338:	00813023          	sd	s0,0(sp)
    8000333c:	00113423          	sd	ra,8(sp)
    80003340:	01010413          	addi	s0,sp,16
    80003344:	00000097          	auipc	ra,0x0
    80003348:	9f4080e7          	jalr	-1548(ra) # 80002d38 <cpuid>
    8000334c:	00813083          	ld	ra,8(sp)
    80003350:	00013403          	ld	s0,0(sp)
    80003354:	00d5151b          	slliw	a0,a0,0xd
    80003358:	0c2017b7          	lui	a5,0xc201
    8000335c:	00a78533          	add	a0,a5,a0
    80003360:	00452503          	lw	a0,4(a0)
    80003364:	01010113          	addi	sp,sp,16
    80003368:	00008067          	ret

000000008000336c <plic_complete>:
    8000336c:	fe010113          	addi	sp,sp,-32
    80003370:	00813823          	sd	s0,16(sp)
    80003374:	00913423          	sd	s1,8(sp)
    80003378:	00113c23          	sd	ra,24(sp)
    8000337c:	02010413          	addi	s0,sp,32
    80003380:	00050493          	mv	s1,a0
    80003384:	00000097          	auipc	ra,0x0
    80003388:	9b4080e7          	jalr	-1612(ra) # 80002d38 <cpuid>
    8000338c:	01813083          	ld	ra,24(sp)
    80003390:	01013403          	ld	s0,16(sp)
    80003394:	00d5179b          	slliw	a5,a0,0xd
    80003398:	0c201737          	lui	a4,0xc201
    8000339c:	00f707b3          	add	a5,a4,a5
    800033a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800033a4:	00813483          	ld	s1,8(sp)
    800033a8:	02010113          	addi	sp,sp,32
    800033ac:	00008067          	ret

00000000800033b0 <consolewrite>:
    800033b0:	fb010113          	addi	sp,sp,-80
    800033b4:	04813023          	sd	s0,64(sp)
    800033b8:	04113423          	sd	ra,72(sp)
    800033bc:	02913c23          	sd	s1,56(sp)
    800033c0:	03213823          	sd	s2,48(sp)
    800033c4:	03313423          	sd	s3,40(sp)
    800033c8:	03413023          	sd	s4,32(sp)
    800033cc:	01513c23          	sd	s5,24(sp)
    800033d0:	05010413          	addi	s0,sp,80
    800033d4:	06c05c63          	blez	a2,8000344c <consolewrite+0x9c>
    800033d8:	00060993          	mv	s3,a2
    800033dc:	00050a13          	mv	s4,a0
    800033e0:	00058493          	mv	s1,a1
    800033e4:	00000913          	li	s2,0
    800033e8:	fff00a93          	li	s5,-1
    800033ec:	01c0006f          	j	80003408 <consolewrite+0x58>
    800033f0:	fbf44503          	lbu	a0,-65(s0)
    800033f4:	0019091b          	addiw	s2,s2,1
    800033f8:	00148493          	addi	s1,s1,1
    800033fc:	00001097          	auipc	ra,0x1
    80003400:	a9c080e7          	jalr	-1380(ra) # 80003e98 <uartputc>
    80003404:	03298063          	beq	s3,s2,80003424 <consolewrite+0x74>
    80003408:	00048613          	mv	a2,s1
    8000340c:	00100693          	li	a3,1
    80003410:	000a0593          	mv	a1,s4
    80003414:	fbf40513          	addi	a0,s0,-65
    80003418:	00000097          	auipc	ra,0x0
    8000341c:	9d8080e7          	jalr	-1576(ra) # 80002df0 <either_copyin>
    80003420:	fd5518e3          	bne	a0,s5,800033f0 <consolewrite+0x40>
    80003424:	04813083          	ld	ra,72(sp)
    80003428:	04013403          	ld	s0,64(sp)
    8000342c:	03813483          	ld	s1,56(sp)
    80003430:	02813983          	ld	s3,40(sp)
    80003434:	02013a03          	ld	s4,32(sp)
    80003438:	01813a83          	ld	s5,24(sp)
    8000343c:	00090513          	mv	a0,s2
    80003440:	03013903          	ld	s2,48(sp)
    80003444:	05010113          	addi	sp,sp,80
    80003448:	00008067          	ret
    8000344c:	00000913          	li	s2,0
    80003450:	fd5ff06f          	j	80003424 <consolewrite+0x74>

0000000080003454 <consoleread>:
    80003454:	f9010113          	addi	sp,sp,-112
    80003458:	06813023          	sd	s0,96(sp)
    8000345c:	04913c23          	sd	s1,88(sp)
    80003460:	05213823          	sd	s2,80(sp)
    80003464:	05313423          	sd	s3,72(sp)
    80003468:	05413023          	sd	s4,64(sp)
    8000346c:	03513c23          	sd	s5,56(sp)
    80003470:	03613823          	sd	s6,48(sp)
    80003474:	03713423          	sd	s7,40(sp)
    80003478:	03813023          	sd	s8,32(sp)
    8000347c:	06113423          	sd	ra,104(sp)
    80003480:	01913c23          	sd	s9,24(sp)
    80003484:	07010413          	addi	s0,sp,112
    80003488:	00060b93          	mv	s7,a2
    8000348c:	00050913          	mv	s2,a0
    80003490:	00058c13          	mv	s8,a1
    80003494:	00060b1b          	sext.w	s6,a2
    80003498:	00003497          	auipc	s1,0x3
    8000349c:	63048493          	addi	s1,s1,1584 # 80006ac8 <cons>
    800034a0:	00400993          	li	s3,4
    800034a4:	fff00a13          	li	s4,-1
    800034a8:	00a00a93          	li	s5,10
    800034ac:	05705e63          	blez	s7,80003508 <consoleread+0xb4>
    800034b0:	09c4a703          	lw	a4,156(s1)
    800034b4:	0984a783          	lw	a5,152(s1)
    800034b8:	0007071b          	sext.w	a4,a4
    800034bc:	08e78463          	beq	a5,a4,80003544 <consoleread+0xf0>
    800034c0:	07f7f713          	andi	a4,a5,127
    800034c4:	00e48733          	add	a4,s1,a4
    800034c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800034cc:	0017869b          	addiw	a3,a5,1
    800034d0:	08d4ac23          	sw	a3,152(s1)
    800034d4:	00070c9b          	sext.w	s9,a4
    800034d8:	0b370663          	beq	a4,s3,80003584 <consoleread+0x130>
    800034dc:	00100693          	li	a3,1
    800034e0:	f9f40613          	addi	a2,s0,-97
    800034e4:	000c0593          	mv	a1,s8
    800034e8:	00090513          	mv	a0,s2
    800034ec:	f8e40fa3          	sb	a4,-97(s0)
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	8b4080e7          	jalr	-1868(ra) # 80002da4 <either_copyout>
    800034f8:	01450863          	beq	a0,s4,80003508 <consoleread+0xb4>
    800034fc:	001c0c13          	addi	s8,s8,1
    80003500:	fffb8b9b          	addiw	s7,s7,-1
    80003504:	fb5c94e3          	bne	s9,s5,800034ac <consoleread+0x58>
    80003508:	000b851b          	sext.w	a0,s7
    8000350c:	06813083          	ld	ra,104(sp)
    80003510:	06013403          	ld	s0,96(sp)
    80003514:	05813483          	ld	s1,88(sp)
    80003518:	05013903          	ld	s2,80(sp)
    8000351c:	04813983          	ld	s3,72(sp)
    80003520:	04013a03          	ld	s4,64(sp)
    80003524:	03813a83          	ld	s5,56(sp)
    80003528:	02813b83          	ld	s7,40(sp)
    8000352c:	02013c03          	ld	s8,32(sp)
    80003530:	01813c83          	ld	s9,24(sp)
    80003534:	40ab053b          	subw	a0,s6,a0
    80003538:	03013b03          	ld	s6,48(sp)
    8000353c:	07010113          	addi	sp,sp,112
    80003540:	00008067          	ret
    80003544:	00001097          	auipc	ra,0x1
    80003548:	1d8080e7          	jalr	472(ra) # 8000471c <push_on>
    8000354c:	0984a703          	lw	a4,152(s1)
    80003550:	09c4a783          	lw	a5,156(s1)
    80003554:	0007879b          	sext.w	a5,a5
    80003558:	fef70ce3          	beq	a4,a5,80003550 <consoleread+0xfc>
    8000355c:	00001097          	auipc	ra,0x1
    80003560:	234080e7          	jalr	564(ra) # 80004790 <pop_on>
    80003564:	0984a783          	lw	a5,152(s1)
    80003568:	07f7f713          	andi	a4,a5,127
    8000356c:	00e48733          	add	a4,s1,a4
    80003570:	01874703          	lbu	a4,24(a4)
    80003574:	0017869b          	addiw	a3,a5,1
    80003578:	08d4ac23          	sw	a3,152(s1)
    8000357c:	00070c9b          	sext.w	s9,a4
    80003580:	f5371ee3          	bne	a4,s3,800034dc <consoleread+0x88>
    80003584:	000b851b          	sext.w	a0,s7
    80003588:	f96bf2e3          	bgeu	s7,s6,8000350c <consoleread+0xb8>
    8000358c:	08f4ac23          	sw	a5,152(s1)
    80003590:	f7dff06f          	j	8000350c <consoleread+0xb8>

0000000080003594 <consputc>:
    80003594:	10000793          	li	a5,256
    80003598:	00f50663          	beq	a0,a5,800035a4 <consputc+0x10>
    8000359c:	00001317          	auipc	t1,0x1
    800035a0:	9f430067          	jr	-1548(t1) # 80003f90 <uartputc_sync>
    800035a4:	ff010113          	addi	sp,sp,-16
    800035a8:	00113423          	sd	ra,8(sp)
    800035ac:	00813023          	sd	s0,0(sp)
    800035b0:	01010413          	addi	s0,sp,16
    800035b4:	00800513          	li	a0,8
    800035b8:	00001097          	auipc	ra,0x1
    800035bc:	9d8080e7          	jalr	-1576(ra) # 80003f90 <uartputc_sync>
    800035c0:	02000513          	li	a0,32
    800035c4:	00001097          	auipc	ra,0x1
    800035c8:	9cc080e7          	jalr	-1588(ra) # 80003f90 <uartputc_sync>
    800035cc:	00013403          	ld	s0,0(sp)
    800035d0:	00813083          	ld	ra,8(sp)
    800035d4:	00800513          	li	a0,8
    800035d8:	01010113          	addi	sp,sp,16
    800035dc:	00001317          	auipc	t1,0x1
    800035e0:	9b430067          	jr	-1612(t1) # 80003f90 <uartputc_sync>

00000000800035e4 <consoleintr>:
    800035e4:	fe010113          	addi	sp,sp,-32
    800035e8:	00813823          	sd	s0,16(sp)
    800035ec:	00913423          	sd	s1,8(sp)
    800035f0:	01213023          	sd	s2,0(sp)
    800035f4:	00113c23          	sd	ra,24(sp)
    800035f8:	02010413          	addi	s0,sp,32
    800035fc:	00003917          	auipc	s2,0x3
    80003600:	4cc90913          	addi	s2,s2,1228 # 80006ac8 <cons>
    80003604:	00050493          	mv	s1,a0
    80003608:	00090513          	mv	a0,s2
    8000360c:	00001097          	auipc	ra,0x1
    80003610:	e40080e7          	jalr	-448(ra) # 8000444c <acquire>
    80003614:	02048c63          	beqz	s1,8000364c <consoleintr+0x68>
    80003618:	0a092783          	lw	a5,160(s2)
    8000361c:	09892703          	lw	a4,152(s2)
    80003620:	07f00693          	li	a3,127
    80003624:	40e7873b          	subw	a4,a5,a4
    80003628:	02e6e263          	bltu	a3,a4,8000364c <consoleintr+0x68>
    8000362c:	00d00713          	li	a4,13
    80003630:	04e48063          	beq	s1,a4,80003670 <consoleintr+0x8c>
    80003634:	07f7f713          	andi	a4,a5,127
    80003638:	00e90733          	add	a4,s2,a4
    8000363c:	0017879b          	addiw	a5,a5,1
    80003640:	0af92023          	sw	a5,160(s2)
    80003644:	00970c23          	sb	s1,24(a4)
    80003648:	08f92e23          	sw	a5,156(s2)
    8000364c:	01013403          	ld	s0,16(sp)
    80003650:	01813083          	ld	ra,24(sp)
    80003654:	00813483          	ld	s1,8(sp)
    80003658:	00013903          	ld	s2,0(sp)
    8000365c:	00003517          	auipc	a0,0x3
    80003660:	46c50513          	addi	a0,a0,1132 # 80006ac8 <cons>
    80003664:	02010113          	addi	sp,sp,32
    80003668:	00001317          	auipc	t1,0x1
    8000366c:	eb030067          	jr	-336(t1) # 80004518 <release>
    80003670:	00a00493          	li	s1,10
    80003674:	fc1ff06f          	j	80003634 <consoleintr+0x50>

0000000080003678 <consoleinit>:
    80003678:	fe010113          	addi	sp,sp,-32
    8000367c:	00113c23          	sd	ra,24(sp)
    80003680:	00813823          	sd	s0,16(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	02010413          	addi	s0,sp,32
    8000368c:	00003497          	auipc	s1,0x3
    80003690:	43c48493          	addi	s1,s1,1084 # 80006ac8 <cons>
    80003694:	00048513          	mv	a0,s1
    80003698:	00002597          	auipc	a1,0x2
    8000369c:	ba858593          	addi	a1,a1,-1112 # 80005240 <CONSOLE_STATUS+0x230>
    800036a0:	00001097          	auipc	ra,0x1
    800036a4:	d88080e7          	jalr	-632(ra) # 80004428 <initlock>
    800036a8:	00000097          	auipc	ra,0x0
    800036ac:	7ac080e7          	jalr	1964(ra) # 80003e54 <uartinit>
    800036b0:	01813083          	ld	ra,24(sp)
    800036b4:	01013403          	ld	s0,16(sp)
    800036b8:	00000797          	auipc	a5,0x0
    800036bc:	d9c78793          	addi	a5,a5,-612 # 80003454 <consoleread>
    800036c0:	0af4bc23          	sd	a5,184(s1)
    800036c4:	00000797          	auipc	a5,0x0
    800036c8:	cec78793          	addi	a5,a5,-788 # 800033b0 <consolewrite>
    800036cc:	0cf4b023          	sd	a5,192(s1)
    800036d0:	00813483          	ld	s1,8(sp)
    800036d4:	02010113          	addi	sp,sp,32
    800036d8:	00008067          	ret

00000000800036dc <console_read>:
    800036dc:	ff010113          	addi	sp,sp,-16
    800036e0:	00813423          	sd	s0,8(sp)
    800036e4:	01010413          	addi	s0,sp,16
    800036e8:	00813403          	ld	s0,8(sp)
    800036ec:	00003317          	auipc	t1,0x3
    800036f0:	49433303          	ld	t1,1172(t1) # 80006b80 <devsw+0x10>
    800036f4:	01010113          	addi	sp,sp,16
    800036f8:	00030067          	jr	t1

00000000800036fc <console_write>:
    800036fc:	ff010113          	addi	sp,sp,-16
    80003700:	00813423          	sd	s0,8(sp)
    80003704:	01010413          	addi	s0,sp,16
    80003708:	00813403          	ld	s0,8(sp)
    8000370c:	00003317          	auipc	t1,0x3
    80003710:	47c33303          	ld	t1,1148(t1) # 80006b88 <devsw+0x18>
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00030067          	jr	t1

000000008000371c <panic>:
    8000371c:	fe010113          	addi	sp,sp,-32
    80003720:	00113c23          	sd	ra,24(sp)
    80003724:	00813823          	sd	s0,16(sp)
    80003728:	00913423          	sd	s1,8(sp)
    8000372c:	02010413          	addi	s0,sp,32
    80003730:	00050493          	mv	s1,a0
    80003734:	00002517          	auipc	a0,0x2
    80003738:	b1450513          	addi	a0,a0,-1260 # 80005248 <CONSOLE_STATUS+0x238>
    8000373c:	00003797          	auipc	a5,0x3
    80003740:	4e07a623          	sw	zero,1260(a5) # 80006c28 <pr+0x18>
    80003744:	00000097          	auipc	ra,0x0
    80003748:	034080e7          	jalr	52(ra) # 80003778 <__printf>
    8000374c:	00048513          	mv	a0,s1
    80003750:	00000097          	auipc	ra,0x0
    80003754:	028080e7          	jalr	40(ra) # 80003778 <__printf>
    80003758:	00002517          	auipc	a0,0x2
    8000375c:	ad050513          	addi	a0,a0,-1328 # 80005228 <CONSOLE_STATUS+0x218>
    80003760:	00000097          	auipc	ra,0x0
    80003764:	018080e7          	jalr	24(ra) # 80003778 <__printf>
    80003768:	00100793          	li	a5,1
    8000376c:	00002717          	auipc	a4,0x2
    80003770:	22f72623          	sw	a5,556(a4) # 80005998 <panicked>
    80003774:	0000006f          	j	80003774 <panic+0x58>

0000000080003778 <__printf>:
    80003778:	f3010113          	addi	sp,sp,-208
    8000377c:	08813023          	sd	s0,128(sp)
    80003780:	07313423          	sd	s3,104(sp)
    80003784:	09010413          	addi	s0,sp,144
    80003788:	05813023          	sd	s8,64(sp)
    8000378c:	08113423          	sd	ra,136(sp)
    80003790:	06913c23          	sd	s1,120(sp)
    80003794:	07213823          	sd	s2,112(sp)
    80003798:	07413023          	sd	s4,96(sp)
    8000379c:	05513c23          	sd	s5,88(sp)
    800037a0:	05613823          	sd	s6,80(sp)
    800037a4:	05713423          	sd	s7,72(sp)
    800037a8:	03913c23          	sd	s9,56(sp)
    800037ac:	03a13823          	sd	s10,48(sp)
    800037b0:	03b13423          	sd	s11,40(sp)
    800037b4:	00003317          	auipc	t1,0x3
    800037b8:	45c30313          	addi	t1,t1,1116 # 80006c10 <pr>
    800037bc:	01832c03          	lw	s8,24(t1)
    800037c0:	00b43423          	sd	a1,8(s0)
    800037c4:	00c43823          	sd	a2,16(s0)
    800037c8:	00d43c23          	sd	a3,24(s0)
    800037cc:	02e43023          	sd	a4,32(s0)
    800037d0:	02f43423          	sd	a5,40(s0)
    800037d4:	03043823          	sd	a6,48(s0)
    800037d8:	03143c23          	sd	a7,56(s0)
    800037dc:	00050993          	mv	s3,a0
    800037e0:	4a0c1663          	bnez	s8,80003c8c <__printf+0x514>
    800037e4:	60098c63          	beqz	s3,80003dfc <__printf+0x684>
    800037e8:	0009c503          	lbu	a0,0(s3)
    800037ec:	00840793          	addi	a5,s0,8
    800037f0:	f6f43c23          	sd	a5,-136(s0)
    800037f4:	00000493          	li	s1,0
    800037f8:	22050063          	beqz	a0,80003a18 <__printf+0x2a0>
    800037fc:	00002a37          	lui	s4,0x2
    80003800:	00018ab7          	lui	s5,0x18
    80003804:	000f4b37          	lui	s6,0xf4
    80003808:	00989bb7          	lui	s7,0x989
    8000380c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003810:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003814:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003818:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000381c:	00148c9b          	addiw	s9,s1,1
    80003820:	02500793          	li	a5,37
    80003824:	01998933          	add	s2,s3,s9
    80003828:	38f51263          	bne	a0,a5,80003bac <__printf+0x434>
    8000382c:	00094783          	lbu	a5,0(s2)
    80003830:	00078c9b          	sext.w	s9,a5
    80003834:	1e078263          	beqz	a5,80003a18 <__printf+0x2a0>
    80003838:	0024849b          	addiw	s1,s1,2
    8000383c:	07000713          	li	a4,112
    80003840:	00998933          	add	s2,s3,s1
    80003844:	38e78a63          	beq	a5,a4,80003bd8 <__printf+0x460>
    80003848:	20f76863          	bltu	a4,a5,80003a58 <__printf+0x2e0>
    8000384c:	42a78863          	beq	a5,a0,80003c7c <__printf+0x504>
    80003850:	06400713          	li	a4,100
    80003854:	40e79663          	bne	a5,a4,80003c60 <__printf+0x4e8>
    80003858:	f7843783          	ld	a5,-136(s0)
    8000385c:	0007a603          	lw	a2,0(a5)
    80003860:	00878793          	addi	a5,a5,8
    80003864:	f6f43c23          	sd	a5,-136(s0)
    80003868:	42064a63          	bltz	a2,80003c9c <__printf+0x524>
    8000386c:	00a00713          	li	a4,10
    80003870:	02e677bb          	remuw	a5,a2,a4
    80003874:	00002d97          	auipc	s11,0x2
    80003878:	9fcd8d93          	addi	s11,s11,-1540 # 80005270 <digits>
    8000387c:	00900593          	li	a1,9
    80003880:	0006051b          	sext.w	a0,a2
    80003884:	00000c93          	li	s9,0
    80003888:	02079793          	slli	a5,a5,0x20
    8000388c:	0207d793          	srli	a5,a5,0x20
    80003890:	00fd87b3          	add	a5,s11,a5
    80003894:	0007c783          	lbu	a5,0(a5)
    80003898:	02e656bb          	divuw	a3,a2,a4
    8000389c:	f8f40023          	sb	a5,-128(s0)
    800038a0:	14c5d863          	bge	a1,a2,800039f0 <__printf+0x278>
    800038a4:	06300593          	li	a1,99
    800038a8:	00100c93          	li	s9,1
    800038ac:	02e6f7bb          	remuw	a5,a3,a4
    800038b0:	02079793          	slli	a5,a5,0x20
    800038b4:	0207d793          	srli	a5,a5,0x20
    800038b8:	00fd87b3          	add	a5,s11,a5
    800038bc:	0007c783          	lbu	a5,0(a5)
    800038c0:	02e6d73b          	divuw	a4,a3,a4
    800038c4:	f8f400a3          	sb	a5,-127(s0)
    800038c8:	12a5f463          	bgeu	a1,a0,800039f0 <__printf+0x278>
    800038cc:	00a00693          	li	a3,10
    800038d0:	00900593          	li	a1,9
    800038d4:	02d777bb          	remuw	a5,a4,a3
    800038d8:	02079793          	slli	a5,a5,0x20
    800038dc:	0207d793          	srli	a5,a5,0x20
    800038e0:	00fd87b3          	add	a5,s11,a5
    800038e4:	0007c503          	lbu	a0,0(a5)
    800038e8:	02d757bb          	divuw	a5,a4,a3
    800038ec:	f8a40123          	sb	a0,-126(s0)
    800038f0:	48e5f263          	bgeu	a1,a4,80003d74 <__printf+0x5fc>
    800038f4:	06300513          	li	a0,99
    800038f8:	02d7f5bb          	remuw	a1,a5,a3
    800038fc:	02059593          	slli	a1,a1,0x20
    80003900:	0205d593          	srli	a1,a1,0x20
    80003904:	00bd85b3          	add	a1,s11,a1
    80003908:	0005c583          	lbu	a1,0(a1)
    8000390c:	02d7d7bb          	divuw	a5,a5,a3
    80003910:	f8b401a3          	sb	a1,-125(s0)
    80003914:	48e57263          	bgeu	a0,a4,80003d98 <__printf+0x620>
    80003918:	3e700513          	li	a0,999
    8000391c:	02d7f5bb          	remuw	a1,a5,a3
    80003920:	02059593          	slli	a1,a1,0x20
    80003924:	0205d593          	srli	a1,a1,0x20
    80003928:	00bd85b3          	add	a1,s11,a1
    8000392c:	0005c583          	lbu	a1,0(a1)
    80003930:	02d7d7bb          	divuw	a5,a5,a3
    80003934:	f8b40223          	sb	a1,-124(s0)
    80003938:	46e57663          	bgeu	a0,a4,80003da4 <__printf+0x62c>
    8000393c:	02d7f5bb          	remuw	a1,a5,a3
    80003940:	02059593          	slli	a1,a1,0x20
    80003944:	0205d593          	srli	a1,a1,0x20
    80003948:	00bd85b3          	add	a1,s11,a1
    8000394c:	0005c583          	lbu	a1,0(a1)
    80003950:	02d7d7bb          	divuw	a5,a5,a3
    80003954:	f8b402a3          	sb	a1,-123(s0)
    80003958:	46ea7863          	bgeu	s4,a4,80003dc8 <__printf+0x650>
    8000395c:	02d7f5bb          	remuw	a1,a5,a3
    80003960:	02059593          	slli	a1,a1,0x20
    80003964:	0205d593          	srli	a1,a1,0x20
    80003968:	00bd85b3          	add	a1,s11,a1
    8000396c:	0005c583          	lbu	a1,0(a1)
    80003970:	02d7d7bb          	divuw	a5,a5,a3
    80003974:	f8b40323          	sb	a1,-122(s0)
    80003978:	3eeaf863          	bgeu	s5,a4,80003d68 <__printf+0x5f0>
    8000397c:	02d7f5bb          	remuw	a1,a5,a3
    80003980:	02059593          	slli	a1,a1,0x20
    80003984:	0205d593          	srli	a1,a1,0x20
    80003988:	00bd85b3          	add	a1,s11,a1
    8000398c:	0005c583          	lbu	a1,0(a1)
    80003990:	02d7d7bb          	divuw	a5,a5,a3
    80003994:	f8b403a3          	sb	a1,-121(s0)
    80003998:	42eb7e63          	bgeu	s6,a4,80003dd4 <__printf+0x65c>
    8000399c:	02d7f5bb          	remuw	a1,a5,a3
    800039a0:	02059593          	slli	a1,a1,0x20
    800039a4:	0205d593          	srli	a1,a1,0x20
    800039a8:	00bd85b3          	add	a1,s11,a1
    800039ac:	0005c583          	lbu	a1,0(a1)
    800039b0:	02d7d7bb          	divuw	a5,a5,a3
    800039b4:	f8b40423          	sb	a1,-120(s0)
    800039b8:	42ebfc63          	bgeu	s7,a4,80003df0 <__printf+0x678>
    800039bc:	02079793          	slli	a5,a5,0x20
    800039c0:	0207d793          	srli	a5,a5,0x20
    800039c4:	00fd8db3          	add	s11,s11,a5
    800039c8:	000dc703          	lbu	a4,0(s11)
    800039cc:	00a00793          	li	a5,10
    800039d0:	00900c93          	li	s9,9
    800039d4:	f8e404a3          	sb	a4,-119(s0)
    800039d8:	00065c63          	bgez	a2,800039f0 <__printf+0x278>
    800039dc:	f9040713          	addi	a4,s0,-112
    800039e0:	00f70733          	add	a4,a4,a5
    800039e4:	02d00693          	li	a3,45
    800039e8:	fed70823          	sb	a3,-16(a4)
    800039ec:	00078c93          	mv	s9,a5
    800039f0:	f8040793          	addi	a5,s0,-128
    800039f4:	01978cb3          	add	s9,a5,s9
    800039f8:	f7f40d13          	addi	s10,s0,-129
    800039fc:	000cc503          	lbu	a0,0(s9)
    80003a00:	fffc8c93          	addi	s9,s9,-1
    80003a04:	00000097          	auipc	ra,0x0
    80003a08:	b90080e7          	jalr	-1136(ra) # 80003594 <consputc>
    80003a0c:	ffac98e3          	bne	s9,s10,800039fc <__printf+0x284>
    80003a10:	00094503          	lbu	a0,0(s2)
    80003a14:	e00514e3          	bnez	a0,8000381c <__printf+0xa4>
    80003a18:	1a0c1663          	bnez	s8,80003bc4 <__printf+0x44c>
    80003a1c:	08813083          	ld	ra,136(sp)
    80003a20:	08013403          	ld	s0,128(sp)
    80003a24:	07813483          	ld	s1,120(sp)
    80003a28:	07013903          	ld	s2,112(sp)
    80003a2c:	06813983          	ld	s3,104(sp)
    80003a30:	06013a03          	ld	s4,96(sp)
    80003a34:	05813a83          	ld	s5,88(sp)
    80003a38:	05013b03          	ld	s6,80(sp)
    80003a3c:	04813b83          	ld	s7,72(sp)
    80003a40:	04013c03          	ld	s8,64(sp)
    80003a44:	03813c83          	ld	s9,56(sp)
    80003a48:	03013d03          	ld	s10,48(sp)
    80003a4c:	02813d83          	ld	s11,40(sp)
    80003a50:	0d010113          	addi	sp,sp,208
    80003a54:	00008067          	ret
    80003a58:	07300713          	li	a4,115
    80003a5c:	1ce78a63          	beq	a5,a4,80003c30 <__printf+0x4b8>
    80003a60:	07800713          	li	a4,120
    80003a64:	1ee79e63          	bne	a5,a4,80003c60 <__printf+0x4e8>
    80003a68:	f7843783          	ld	a5,-136(s0)
    80003a6c:	0007a703          	lw	a4,0(a5)
    80003a70:	00878793          	addi	a5,a5,8
    80003a74:	f6f43c23          	sd	a5,-136(s0)
    80003a78:	28074263          	bltz	a4,80003cfc <__printf+0x584>
    80003a7c:	00001d97          	auipc	s11,0x1
    80003a80:	7f4d8d93          	addi	s11,s11,2036 # 80005270 <digits>
    80003a84:	00f77793          	andi	a5,a4,15
    80003a88:	00fd87b3          	add	a5,s11,a5
    80003a8c:	0007c683          	lbu	a3,0(a5)
    80003a90:	00f00613          	li	a2,15
    80003a94:	0007079b          	sext.w	a5,a4
    80003a98:	f8d40023          	sb	a3,-128(s0)
    80003a9c:	0047559b          	srliw	a1,a4,0x4
    80003aa0:	0047569b          	srliw	a3,a4,0x4
    80003aa4:	00000c93          	li	s9,0
    80003aa8:	0ee65063          	bge	a2,a4,80003b88 <__printf+0x410>
    80003aac:	00f6f693          	andi	a3,a3,15
    80003ab0:	00dd86b3          	add	a3,s11,a3
    80003ab4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003ab8:	0087d79b          	srliw	a5,a5,0x8
    80003abc:	00100c93          	li	s9,1
    80003ac0:	f8d400a3          	sb	a3,-127(s0)
    80003ac4:	0cb67263          	bgeu	a2,a1,80003b88 <__printf+0x410>
    80003ac8:	00f7f693          	andi	a3,a5,15
    80003acc:	00dd86b3          	add	a3,s11,a3
    80003ad0:	0006c583          	lbu	a1,0(a3)
    80003ad4:	00f00613          	li	a2,15
    80003ad8:	0047d69b          	srliw	a3,a5,0x4
    80003adc:	f8b40123          	sb	a1,-126(s0)
    80003ae0:	0047d593          	srli	a1,a5,0x4
    80003ae4:	28f67e63          	bgeu	a2,a5,80003d80 <__printf+0x608>
    80003ae8:	00f6f693          	andi	a3,a3,15
    80003aec:	00dd86b3          	add	a3,s11,a3
    80003af0:	0006c503          	lbu	a0,0(a3)
    80003af4:	0087d813          	srli	a6,a5,0x8
    80003af8:	0087d69b          	srliw	a3,a5,0x8
    80003afc:	f8a401a3          	sb	a0,-125(s0)
    80003b00:	28b67663          	bgeu	a2,a1,80003d8c <__printf+0x614>
    80003b04:	00f6f693          	andi	a3,a3,15
    80003b08:	00dd86b3          	add	a3,s11,a3
    80003b0c:	0006c583          	lbu	a1,0(a3)
    80003b10:	00c7d513          	srli	a0,a5,0xc
    80003b14:	00c7d69b          	srliw	a3,a5,0xc
    80003b18:	f8b40223          	sb	a1,-124(s0)
    80003b1c:	29067a63          	bgeu	a2,a6,80003db0 <__printf+0x638>
    80003b20:	00f6f693          	andi	a3,a3,15
    80003b24:	00dd86b3          	add	a3,s11,a3
    80003b28:	0006c583          	lbu	a1,0(a3)
    80003b2c:	0107d813          	srli	a6,a5,0x10
    80003b30:	0107d69b          	srliw	a3,a5,0x10
    80003b34:	f8b402a3          	sb	a1,-123(s0)
    80003b38:	28a67263          	bgeu	a2,a0,80003dbc <__printf+0x644>
    80003b3c:	00f6f693          	andi	a3,a3,15
    80003b40:	00dd86b3          	add	a3,s11,a3
    80003b44:	0006c683          	lbu	a3,0(a3)
    80003b48:	0147d79b          	srliw	a5,a5,0x14
    80003b4c:	f8d40323          	sb	a3,-122(s0)
    80003b50:	21067663          	bgeu	a2,a6,80003d5c <__printf+0x5e4>
    80003b54:	02079793          	slli	a5,a5,0x20
    80003b58:	0207d793          	srli	a5,a5,0x20
    80003b5c:	00fd8db3          	add	s11,s11,a5
    80003b60:	000dc683          	lbu	a3,0(s11)
    80003b64:	00800793          	li	a5,8
    80003b68:	00700c93          	li	s9,7
    80003b6c:	f8d403a3          	sb	a3,-121(s0)
    80003b70:	00075c63          	bgez	a4,80003b88 <__printf+0x410>
    80003b74:	f9040713          	addi	a4,s0,-112
    80003b78:	00f70733          	add	a4,a4,a5
    80003b7c:	02d00693          	li	a3,45
    80003b80:	fed70823          	sb	a3,-16(a4)
    80003b84:	00078c93          	mv	s9,a5
    80003b88:	f8040793          	addi	a5,s0,-128
    80003b8c:	01978cb3          	add	s9,a5,s9
    80003b90:	f7f40d13          	addi	s10,s0,-129
    80003b94:	000cc503          	lbu	a0,0(s9)
    80003b98:	fffc8c93          	addi	s9,s9,-1
    80003b9c:	00000097          	auipc	ra,0x0
    80003ba0:	9f8080e7          	jalr	-1544(ra) # 80003594 <consputc>
    80003ba4:	ff9d18e3          	bne	s10,s9,80003b94 <__printf+0x41c>
    80003ba8:	0100006f          	j	80003bb8 <__printf+0x440>
    80003bac:	00000097          	auipc	ra,0x0
    80003bb0:	9e8080e7          	jalr	-1560(ra) # 80003594 <consputc>
    80003bb4:	000c8493          	mv	s1,s9
    80003bb8:	00094503          	lbu	a0,0(s2)
    80003bbc:	c60510e3          	bnez	a0,8000381c <__printf+0xa4>
    80003bc0:	e40c0ee3          	beqz	s8,80003a1c <__printf+0x2a4>
    80003bc4:	00003517          	auipc	a0,0x3
    80003bc8:	04c50513          	addi	a0,a0,76 # 80006c10 <pr>
    80003bcc:	00001097          	auipc	ra,0x1
    80003bd0:	94c080e7          	jalr	-1716(ra) # 80004518 <release>
    80003bd4:	e49ff06f          	j	80003a1c <__printf+0x2a4>
    80003bd8:	f7843783          	ld	a5,-136(s0)
    80003bdc:	03000513          	li	a0,48
    80003be0:	01000d13          	li	s10,16
    80003be4:	00878713          	addi	a4,a5,8
    80003be8:	0007bc83          	ld	s9,0(a5)
    80003bec:	f6e43c23          	sd	a4,-136(s0)
    80003bf0:	00000097          	auipc	ra,0x0
    80003bf4:	9a4080e7          	jalr	-1628(ra) # 80003594 <consputc>
    80003bf8:	07800513          	li	a0,120
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	998080e7          	jalr	-1640(ra) # 80003594 <consputc>
    80003c04:	00001d97          	auipc	s11,0x1
    80003c08:	66cd8d93          	addi	s11,s11,1644 # 80005270 <digits>
    80003c0c:	03ccd793          	srli	a5,s9,0x3c
    80003c10:	00fd87b3          	add	a5,s11,a5
    80003c14:	0007c503          	lbu	a0,0(a5)
    80003c18:	fffd0d1b          	addiw	s10,s10,-1
    80003c1c:	004c9c93          	slli	s9,s9,0x4
    80003c20:	00000097          	auipc	ra,0x0
    80003c24:	974080e7          	jalr	-1676(ra) # 80003594 <consputc>
    80003c28:	fe0d12e3          	bnez	s10,80003c0c <__printf+0x494>
    80003c2c:	f8dff06f          	j	80003bb8 <__printf+0x440>
    80003c30:	f7843783          	ld	a5,-136(s0)
    80003c34:	0007bc83          	ld	s9,0(a5)
    80003c38:	00878793          	addi	a5,a5,8
    80003c3c:	f6f43c23          	sd	a5,-136(s0)
    80003c40:	000c9a63          	bnez	s9,80003c54 <__printf+0x4dc>
    80003c44:	1080006f          	j	80003d4c <__printf+0x5d4>
    80003c48:	001c8c93          	addi	s9,s9,1
    80003c4c:	00000097          	auipc	ra,0x0
    80003c50:	948080e7          	jalr	-1720(ra) # 80003594 <consputc>
    80003c54:	000cc503          	lbu	a0,0(s9)
    80003c58:	fe0518e3          	bnez	a0,80003c48 <__printf+0x4d0>
    80003c5c:	f5dff06f          	j	80003bb8 <__printf+0x440>
    80003c60:	02500513          	li	a0,37
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	930080e7          	jalr	-1744(ra) # 80003594 <consputc>
    80003c6c:	000c8513          	mv	a0,s9
    80003c70:	00000097          	auipc	ra,0x0
    80003c74:	924080e7          	jalr	-1756(ra) # 80003594 <consputc>
    80003c78:	f41ff06f          	j	80003bb8 <__printf+0x440>
    80003c7c:	02500513          	li	a0,37
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	914080e7          	jalr	-1772(ra) # 80003594 <consputc>
    80003c88:	f31ff06f          	j	80003bb8 <__printf+0x440>
    80003c8c:	00030513          	mv	a0,t1
    80003c90:	00000097          	auipc	ra,0x0
    80003c94:	7bc080e7          	jalr	1980(ra) # 8000444c <acquire>
    80003c98:	b4dff06f          	j	800037e4 <__printf+0x6c>
    80003c9c:	40c0053b          	negw	a0,a2
    80003ca0:	00a00713          	li	a4,10
    80003ca4:	02e576bb          	remuw	a3,a0,a4
    80003ca8:	00001d97          	auipc	s11,0x1
    80003cac:	5c8d8d93          	addi	s11,s11,1480 # 80005270 <digits>
    80003cb0:	ff700593          	li	a1,-9
    80003cb4:	02069693          	slli	a3,a3,0x20
    80003cb8:	0206d693          	srli	a3,a3,0x20
    80003cbc:	00dd86b3          	add	a3,s11,a3
    80003cc0:	0006c683          	lbu	a3,0(a3)
    80003cc4:	02e557bb          	divuw	a5,a0,a4
    80003cc8:	f8d40023          	sb	a3,-128(s0)
    80003ccc:	10b65e63          	bge	a2,a1,80003de8 <__printf+0x670>
    80003cd0:	06300593          	li	a1,99
    80003cd4:	02e7f6bb          	remuw	a3,a5,a4
    80003cd8:	02069693          	slli	a3,a3,0x20
    80003cdc:	0206d693          	srli	a3,a3,0x20
    80003ce0:	00dd86b3          	add	a3,s11,a3
    80003ce4:	0006c683          	lbu	a3,0(a3)
    80003ce8:	02e7d73b          	divuw	a4,a5,a4
    80003cec:	00200793          	li	a5,2
    80003cf0:	f8d400a3          	sb	a3,-127(s0)
    80003cf4:	bca5ece3          	bltu	a1,a0,800038cc <__printf+0x154>
    80003cf8:	ce5ff06f          	j	800039dc <__printf+0x264>
    80003cfc:	40e007bb          	negw	a5,a4
    80003d00:	00001d97          	auipc	s11,0x1
    80003d04:	570d8d93          	addi	s11,s11,1392 # 80005270 <digits>
    80003d08:	00f7f693          	andi	a3,a5,15
    80003d0c:	00dd86b3          	add	a3,s11,a3
    80003d10:	0006c583          	lbu	a1,0(a3)
    80003d14:	ff100613          	li	a2,-15
    80003d18:	0047d69b          	srliw	a3,a5,0x4
    80003d1c:	f8b40023          	sb	a1,-128(s0)
    80003d20:	0047d59b          	srliw	a1,a5,0x4
    80003d24:	0ac75e63          	bge	a4,a2,80003de0 <__printf+0x668>
    80003d28:	00f6f693          	andi	a3,a3,15
    80003d2c:	00dd86b3          	add	a3,s11,a3
    80003d30:	0006c603          	lbu	a2,0(a3)
    80003d34:	00f00693          	li	a3,15
    80003d38:	0087d79b          	srliw	a5,a5,0x8
    80003d3c:	f8c400a3          	sb	a2,-127(s0)
    80003d40:	d8b6e4e3          	bltu	a3,a1,80003ac8 <__printf+0x350>
    80003d44:	00200793          	li	a5,2
    80003d48:	e2dff06f          	j	80003b74 <__printf+0x3fc>
    80003d4c:	00001c97          	auipc	s9,0x1
    80003d50:	504c8c93          	addi	s9,s9,1284 # 80005250 <CONSOLE_STATUS+0x240>
    80003d54:	02800513          	li	a0,40
    80003d58:	ef1ff06f          	j	80003c48 <__printf+0x4d0>
    80003d5c:	00700793          	li	a5,7
    80003d60:	00600c93          	li	s9,6
    80003d64:	e0dff06f          	j	80003b70 <__printf+0x3f8>
    80003d68:	00700793          	li	a5,7
    80003d6c:	00600c93          	li	s9,6
    80003d70:	c69ff06f          	j	800039d8 <__printf+0x260>
    80003d74:	00300793          	li	a5,3
    80003d78:	00200c93          	li	s9,2
    80003d7c:	c5dff06f          	j	800039d8 <__printf+0x260>
    80003d80:	00300793          	li	a5,3
    80003d84:	00200c93          	li	s9,2
    80003d88:	de9ff06f          	j	80003b70 <__printf+0x3f8>
    80003d8c:	00400793          	li	a5,4
    80003d90:	00300c93          	li	s9,3
    80003d94:	dddff06f          	j	80003b70 <__printf+0x3f8>
    80003d98:	00400793          	li	a5,4
    80003d9c:	00300c93          	li	s9,3
    80003da0:	c39ff06f          	j	800039d8 <__printf+0x260>
    80003da4:	00500793          	li	a5,5
    80003da8:	00400c93          	li	s9,4
    80003dac:	c2dff06f          	j	800039d8 <__printf+0x260>
    80003db0:	00500793          	li	a5,5
    80003db4:	00400c93          	li	s9,4
    80003db8:	db9ff06f          	j	80003b70 <__printf+0x3f8>
    80003dbc:	00600793          	li	a5,6
    80003dc0:	00500c93          	li	s9,5
    80003dc4:	dadff06f          	j	80003b70 <__printf+0x3f8>
    80003dc8:	00600793          	li	a5,6
    80003dcc:	00500c93          	li	s9,5
    80003dd0:	c09ff06f          	j	800039d8 <__printf+0x260>
    80003dd4:	00800793          	li	a5,8
    80003dd8:	00700c93          	li	s9,7
    80003ddc:	bfdff06f          	j	800039d8 <__printf+0x260>
    80003de0:	00100793          	li	a5,1
    80003de4:	d91ff06f          	j	80003b74 <__printf+0x3fc>
    80003de8:	00100793          	li	a5,1
    80003dec:	bf1ff06f          	j	800039dc <__printf+0x264>
    80003df0:	00900793          	li	a5,9
    80003df4:	00800c93          	li	s9,8
    80003df8:	be1ff06f          	j	800039d8 <__printf+0x260>
    80003dfc:	00001517          	auipc	a0,0x1
    80003e00:	45c50513          	addi	a0,a0,1116 # 80005258 <CONSOLE_STATUS+0x248>
    80003e04:	00000097          	auipc	ra,0x0
    80003e08:	918080e7          	jalr	-1768(ra) # 8000371c <panic>

0000000080003e0c <printfinit>:
    80003e0c:	fe010113          	addi	sp,sp,-32
    80003e10:	00813823          	sd	s0,16(sp)
    80003e14:	00913423          	sd	s1,8(sp)
    80003e18:	00113c23          	sd	ra,24(sp)
    80003e1c:	02010413          	addi	s0,sp,32
    80003e20:	00003497          	auipc	s1,0x3
    80003e24:	df048493          	addi	s1,s1,-528 # 80006c10 <pr>
    80003e28:	00048513          	mv	a0,s1
    80003e2c:	00001597          	auipc	a1,0x1
    80003e30:	43c58593          	addi	a1,a1,1084 # 80005268 <CONSOLE_STATUS+0x258>
    80003e34:	00000097          	auipc	ra,0x0
    80003e38:	5f4080e7          	jalr	1524(ra) # 80004428 <initlock>
    80003e3c:	01813083          	ld	ra,24(sp)
    80003e40:	01013403          	ld	s0,16(sp)
    80003e44:	0004ac23          	sw	zero,24(s1)
    80003e48:	00813483          	ld	s1,8(sp)
    80003e4c:	02010113          	addi	sp,sp,32
    80003e50:	00008067          	ret

0000000080003e54 <uartinit>:
    80003e54:	ff010113          	addi	sp,sp,-16
    80003e58:	00813423          	sd	s0,8(sp)
    80003e5c:	01010413          	addi	s0,sp,16
    80003e60:	100007b7          	lui	a5,0x10000
    80003e64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003e68:	f8000713          	li	a4,-128
    80003e6c:	00e781a3          	sb	a4,3(a5)
    80003e70:	00300713          	li	a4,3
    80003e74:	00e78023          	sb	a4,0(a5)
    80003e78:	000780a3          	sb	zero,1(a5)
    80003e7c:	00e781a3          	sb	a4,3(a5)
    80003e80:	00700693          	li	a3,7
    80003e84:	00d78123          	sb	a3,2(a5)
    80003e88:	00e780a3          	sb	a4,1(a5)
    80003e8c:	00813403          	ld	s0,8(sp)
    80003e90:	01010113          	addi	sp,sp,16
    80003e94:	00008067          	ret

0000000080003e98 <uartputc>:
    80003e98:	00002797          	auipc	a5,0x2
    80003e9c:	b007a783          	lw	a5,-1280(a5) # 80005998 <panicked>
    80003ea0:	00078463          	beqz	a5,80003ea8 <uartputc+0x10>
    80003ea4:	0000006f          	j	80003ea4 <uartputc+0xc>
    80003ea8:	fd010113          	addi	sp,sp,-48
    80003eac:	02813023          	sd	s0,32(sp)
    80003eb0:	00913c23          	sd	s1,24(sp)
    80003eb4:	01213823          	sd	s2,16(sp)
    80003eb8:	01313423          	sd	s3,8(sp)
    80003ebc:	02113423          	sd	ra,40(sp)
    80003ec0:	03010413          	addi	s0,sp,48
    80003ec4:	00002917          	auipc	s2,0x2
    80003ec8:	adc90913          	addi	s2,s2,-1316 # 800059a0 <uart_tx_r>
    80003ecc:	00093783          	ld	a5,0(s2)
    80003ed0:	00002497          	auipc	s1,0x2
    80003ed4:	ad848493          	addi	s1,s1,-1320 # 800059a8 <uart_tx_w>
    80003ed8:	0004b703          	ld	a4,0(s1)
    80003edc:	02078693          	addi	a3,a5,32
    80003ee0:	00050993          	mv	s3,a0
    80003ee4:	02e69c63          	bne	a3,a4,80003f1c <uartputc+0x84>
    80003ee8:	00001097          	auipc	ra,0x1
    80003eec:	834080e7          	jalr	-1996(ra) # 8000471c <push_on>
    80003ef0:	00093783          	ld	a5,0(s2)
    80003ef4:	0004b703          	ld	a4,0(s1)
    80003ef8:	02078793          	addi	a5,a5,32
    80003efc:	00e79463          	bne	a5,a4,80003f04 <uartputc+0x6c>
    80003f00:	0000006f          	j	80003f00 <uartputc+0x68>
    80003f04:	00001097          	auipc	ra,0x1
    80003f08:	88c080e7          	jalr	-1908(ra) # 80004790 <pop_on>
    80003f0c:	00093783          	ld	a5,0(s2)
    80003f10:	0004b703          	ld	a4,0(s1)
    80003f14:	02078693          	addi	a3,a5,32
    80003f18:	fce688e3          	beq	a3,a4,80003ee8 <uartputc+0x50>
    80003f1c:	01f77693          	andi	a3,a4,31
    80003f20:	00003597          	auipc	a1,0x3
    80003f24:	d1058593          	addi	a1,a1,-752 # 80006c30 <uart_tx_buf>
    80003f28:	00d586b3          	add	a3,a1,a3
    80003f2c:	00170713          	addi	a4,a4,1
    80003f30:	01368023          	sb	s3,0(a3)
    80003f34:	00e4b023          	sd	a4,0(s1)
    80003f38:	10000637          	lui	a2,0x10000
    80003f3c:	02f71063          	bne	a4,a5,80003f5c <uartputc+0xc4>
    80003f40:	0340006f          	j	80003f74 <uartputc+0xdc>
    80003f44:	00074703          	lbu	a4,0(a4)
    80003f48:	00f93023          	sd	a5,0(s2)
    80003f4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003f50:	00093783          	ld	a5,0(s2)
    80003f54:	0004b703          	ld	a4,0(s1)
    80003f58:	00f70e63          	beq	a4,a5,80003f74 <uartputc+0xdc>
    80003f5c:	00564683          	lbu	a3,5(a2)
    80003f60:	01f7f713          	andi	a4,a5,31
    80003f64:	00e58733          	add	a4,a1,a4
    80003f68:	0206f693          	andi	a3,a3,32
    80003f6c:	00178793          	addi	a5,a5,1
    80003f70:	fc069ae3          	bnez	a3,80003f44 <uartputc+0xac>
    80003f74:	02813083          	ld	ra,40(sp)
    80003f78:	02013403          	ld	s0,32(sp)
    80003f7c:	01813483          	ld	s1,24(sp)
    80003f80:	01013903          	ld	s2,16(sp)
    80003f84:	00813983          	ld	s3,8(sp)
    80003f88:	03010113          	addi	sp,sp,48
    80003f8c:	00008067          	ret

0000000080003f90 <uartputc_sync>:
    80003f90:	ff010113          	addi	sp,sp,-16
    80003f94:	00813423          	sd	s0,8(sp)
    80003f98:	01010413          	addi	s0,sp,16
    80003f9c:	00002717          	auipc	a4,0x2
    80003fa0:	9fc72703          	lw	a4,-1540(a4) # 80005998 <panicked>
    80003fa4:	02071663          	bnez	a4,80003fd0 <uartputc_sync+0x40>
    80003fa8:	00050793          	mv	a5,a0
    80003fac:	100006b7          	lui	a3,0x10000
    80003fb0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003fb4:	02077713          	andi	a4,a4,32
    80003fb8:	fe070ce3          	beqz	a4,80003fb0 <uartputc_sync+0x20>
    80003fbc:	0ff7f793          	andi	a5,a5,255
    80003fc0:	00f68023          	sb	a5,0(a3)
    80003fc4:	00813403          	ld	s0,8(sp)
    80003fc8:	01010113          	addi	sp,sp,16
    80003fcc:	00008067          	ret
    80003fd0:	0000006f          	j	80003fd0 <uartputc_sync+0x40>

0000000080003fd4 <uartstart>:
    80003fd4:	ff010113          	addi	sp,sp,-16
    80003fd8:	00813423          	sd	s0,8(sp)
    80003fdc:	01010413          	addi	s0,sp,16
    80003fe0:	00002617          	auipc	a2,0x2
    80003fe4:	9c060613          	addi	a2,a2,-1600 # 800059a0 <uart_tx_r>
    80003fe8:	00002517          	auipc	a0,0x2
    80003fec:	9c050513          	addi	a0,a0,-1600 # 800059a8 <uart_tx_w>
    80003ff0:	00063783          	ld	a5,0(a2)
    80003ff4:	00053703          	ld	a4,0(a0)
    80003ff8:	04f70263          	beq	a4,a5,8000403c <uartstart+0x68>
    80003ffc:	100005b7          	lui	a1,0x10000
    80004000:	00003817          	auipc	a6,0x3
    80004004:	c3080813          	addi	a6,a6,-976 # 80006c30 <uart_tx_buf>
    80004008:	01c0006f          	j	80004024 <uartstart+0x50>
    8000400c:	0006c703          	lbu	a4,0(a3)
    80004010:	00f63023          	sd	a5,0(a2)
    80004014:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004018:	00063783          	ld	a5,0(a2)
    8000401c:	00053703          	ld	a4,0(a0)
    80004020:	00f70e63          	beq	a4,a5,8000403c <uartstart+0x68>
    80004024:	01f7f713          	andi	a4,a5,31
    80004028:	00e806b3          	add	a3,a6,a4
    8000402c:	0055c703          	lbu	a4,5(a1)
    80004030:	00178793          	addi	a5,a5,1
    80004034:	02077713          	andi	a4,a4,32
    80004038:	fc071ae3          	bnez	a4,8000400c <uartstart+0x38>
    8000403c:	00813403          	ld	s0,8(sp)
    80004040:	01010113          	addi	sp,sp,16
    80004044:	00008067          	ret

0000000080004048 <uartgetc>:
    80004048:	ff010113          	addi	sp,sp,-16
    8000404c:	00813423          	sd	s0,8(sp)
    80004050:	01010413          	addi	s0,sp,16
    80004054:	10000737          	lui	a4,0x10000
    80004058:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000405c:	0017f793          	andi	a5,a5,1
    80004060:	00078c63          	beqz	a5,80004078 <uartgetc+0x30>
    80004064:	00074503          	lbu	a0,0(a4)
    80004068:	0ff57513          	andi	a0,a0,255
    8000406c:	00813403          	ld	s0,8(sp)
    80004070:	01010113          	addi	sp,sp,16
    80004074:	00008067          	ret
    80004078:	fff00513          	li	a0,-1
    8000407c:	ff1ff06f          	j	8000406c <uartgetc+0x24>

0000000080004080 <uartintr>:
    80004080:	100007b7          	lui	a5,0x10000
    80004084:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004088:	0017f793          	andi	a5,a5,1
    8000408c:	0a078463          	beqz	a5,80004134 <uartintr+0xb4>
    80004090:	fe010113          	addi	sp,sp,-32
    80004094:	00813823          	sd	s0,16(sp)
    80004098:	00913423          	sd	s1,8(sp)
    8000409c:	00113c23          	sd	ra,24(sp)
    800040a0:	02010413          	addi	s0,sp,32
    800040a4:	100004b7          	lui	s1,0x10000
    800040a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800040ac:	0ff57513          	andi	a0,a0,255
    800040b0:	fffff097          	auipc	ra,0xfffff
    800040b4:	534080e7          	jalr	1332(ra) # 800035e4 <consoleintr>
    800040b8:	0054c783          	lbu	a5,5(s1)
    800040bc:	0017f793          	andi	a5,a5,1
    800040c0:	fe0794e3          	bnez	a5,800040a8 <uartintr+0x28>
    800040c4:	00002617          	auipc	a2,0x2
    800040c8:	8dc60613          	addi	a2,a2,-1828 # 800059a0 <uart_tx_r>
    800040cc:	00002517          	auipc	a0,0x2
    800040d0:	8dc50513          	addi	a0,a0,-1828 # 800059a8 <uart_tx_w>
    800040d4:	00063783          	ld	a5,0(a2)
    800040d8:	00053703          	ld	a4,0(a0)
    800040dc:	04f70263          	beq	a4,a5,80004120 <uartintr+0xa0>
    800040e0:	100005b7          	lui	a1,0x10000
    800040e4:	00003817          	auipc	a6,0x3
    800040e8:	b4c80813          	addi	a6,a6,-1204 # 80006c30 <uart_tx_buf>
    800040ec:	01c0006f          	j	80004108 <uartintr+0x88>
    800040f0:	0006c703          	lbu	a4,0(a3)
    800040f4:	00f63023          	sd	a5,0(a2)
    800040f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800040fc:	00063783          	ld	a5,0(a2)
    80004100:	00053703          	ld	a4,0(a0)
    80004104:	00f70e63          	beq	a4,a5,80004120 <uartintr+0xa0>
    80004108:	01f7f713          	andi	a4,a5,31
    8000410c:	00e806b3          	add	a3,a6,a4
    80004110:	0055c703          	lbu	a4,5(a1)
    80004114:	00178793          	addi	a5,a5,1
    80004118:	02077713          	andi	a4,a4,32
    8000411c:	fc071ae3          	bnez	a4,800040f0 <uartintr+0x70>
    80004120:	01813083          	ld	ra,24(sp)
    80004124:	01013403          	ld	s0,16(sp)
    80004128:	00813483          	ld	s1,8(sp)
    8000412c:	02010113          	addi	sp,sp,32
    80004130:	00008067          	ret
    80004134:	00002617          	auipc	a2,0x2
    80004138:	86c60613          	addi	a2,a2,-1940 # 800059a0 <uart_tx_r>
    8000413c:	00002517          	auipc	a0,0x2
    80004140:	86c50513          	addi	a0,a0,-1940 # 800059a8 <uart_tx_w>
    80004144:	00063783          	ld	a5,0(a2)
    80004148:	00053703          	ld	a4,0(a0)
    8000414c:	04f70263          	beq	a4,a5,80004190 <uartintr+0x110>
    80004150:	100005b7          	lui	a1,0x10000
    80004154:	00003817          	auipc	a6,0x3
    80004158:	adc80813          	addi	a6,a6,-1316 # 80006c30 <uart_tx_buf>
    8000415c:	01c0006f          	j	80004178 <uartintr+0xf8>
    80004160:	0006c703          	lbu	a4,0(a3)
    80004164:	00f63023          	sd	a5,0(a2)
    80004168:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000416c:	00063783          	ld	a5,0(a2)
    80004170:	00053703          	ld	a4,0(a0)
    80004174:	02f70063          	beq	a4,a5,80004194 <uartintr+0x114>
    80004178:	01f7f713          	andi	a4,a5,31
    8000417c:	00e806b3          	add	a3,a6,a4
    80004180:	0055c703          	lbu	a4,5(a1)
    80004184:	00178793          	addi	a5,a5,1
    80004188:	02077713          	andi	a4,a4,32
    8000418c:	fc071ae3          	bnez	a4,80004160 <uartintr+0xe0>
    80004190:	00008067          	ret
    80004194:	00008067          	ret

0000000080004198 <kinit>:
    80004198:	fc010113          	addi	sp,sp,-64
    8000419c:	02913423          	sd	s1,40(sp)
    800041a0:	fffff7b7          	lui	a5,0xfffff
    800041a4:	00004497          	auipc	s1,0x4
    800041a8:	aab48493          	addi	s1,s1,-1365 # 80007c4f <end+0xfff>
    800041ac:	02813823          	sd	s0,48(sp)
    800041b0:	01313c23          	sd	s3,24(sp)
    800041b4:	00f4f4b3          	and	s1,s1,a5
    800041b8:	02113c23          	sd	ra,56(sp)
    800041bc:	03213023          	sd	s2,32(sp)
    800041c0:	01413823          	sd	s4,16(sp)
    800041c4:	01513423          	sd	s5,8(sp)
    800041c8:	04010413          	addi	s0,sp,64
    800041cc:	000017b7          	lui	a5,0x1
    800041d0:	01100993          	li	s3,17
    800041d4:	00f487b3          	add	a5,s1,a5
    800041d8:	01b99993          	slli	s3,s3,0x1b
    800041dc:	06f9e063          	bltu	s3,a5,8000423c <kinit+0xa4>
    800041e0:	00003a97          	auipc	s5,0x3
    800041e4:	a70a8a93          	addi	s5,s5,-1424 # 80006c50 <end>
    800041e8:	0754ec63          	bltu	s1,s5,80004260 <kinit+0xc8>
    800041ec:	0734fa63          	bgeu	s1,s3,80004260 <kinit+0xc8>
    800041f0:	00088a37          	lui	s4,0x88
    800041f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800041f8:	00001917          	auipc	s2,0x1
    800041fc:	7b890913          	addi	s2,s2,1976 # 800059b0 <kmem>
    80004200:	00ca1a13          	slli	s4,s4,0xc
    80004204:	0140006f          	j	80004218 <kinit+0x80>
    80004208:	000017b7          	lui	a5,0x1
    8000420c:	00f484b3          	add	s1,s1,a5
    80004210:	0554e863          	bltu	s1,s5,80004260 <kinit+0xc8>
    80004214:	0534f663          	bgeu	s1,s3,80004260 <kinit+0xc8>
    80004218:	00001637          	lui	a2,0x1
    8000421c:	00100593          	li	a1,1
    80004220:	00048513          	mv	a0,s1
    80004224:	00000097          	auipc	ra,0x0
    80004228:	5e4080e7          	jalr	1508(ra) # 80004808 <__memset>
    8000422c:	00093783          	ld	a5,0(s2)
    80004230:	00f4b023          	sd	a5,0(s1)
    80004234:	00993023          	sd	s1,0(s2)
    80004238:	fd4498e3          	bne	s1,s4,80004208 <kinit+0x70>
    8000423c:	03813083          	ld	ra,56(sp)
    80004240:	03013403          	ld	s0,48(sp)
    80004244:	02813483          	ld	s1,40(sp)
    80004248:	02013903          	ld	s2,32(sp)
    8000424c:	01813983          	ld	s3,24(sp)
    80004250:	01013a03          	ld	s4,16(sp)
    80004254:	00813a83          	ld	s5,8(sp)
    80004258:	04010113          	addi	sp,sp,64
    8000425c:	00008067          	ret
    80004260:	00001517          	auipc	a0,0x1
    80004264:	02850513          	addi	a0,a0,40 # 80005288 <digits+0x18>
    80004268:	fffff097          	auipc	ra,0xfffff
    8000426c:	4b4080e7          	jalr	1204(ra) # 8000371c <panic>

0000000080004270 <freerange>:
    80004270:	fc010113          	addi	sp,sp,-64
    80004274:	000017b7          	lui	a5,0x1
    80004278:	02913423          	sd	s1,40(sp)
    8000427c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004280:	009504b3          	add	s1,a0,s1
    80004284:	fffff537          	lui	a0,0xfffff
    80004288:	02813823          	sd	s0,48(sp)
    8000428c:	02113c23          	sd	ra,56(sp)
    80004290:	03213023          	sd	s2,32(sp)
    80004294:	01313c23          	sd	s3,24(sp)
    80004298:	01413823          	sd	s4,16(sp)
    8000429c:	01513423          	sd	s5,8(sp)
    800042a0:	01613023          	sd	s6,0(sp)
    800042a4:	04010413          	addi	s0,sp,64
    800042a8:	00a4f4b3          	and	s1,s1,a0
    800042ac:	00f487b3          	add	a5,s1,a5
    800042b0:	06f5e463          	bltu	a1,a5,80004318 <freerange+0xa8>
    800042b4:	00003a97          	auipc	s5,0x3
    800042b8:	99ca8a93          	addi	s5,s5,-1636 # 80006c50 <end>
    800042bc:	0954e263          	bltu	s1,s5,80004340 <freerange+0xd0>
    800042c0:	01100993          	li	s3,17
    800042c4:	01b99993          	slli	s3,s3,0x1b
    800042c8:	0734fc63          	bgeu	s1,s3,80004340 <freerange+0xd0>
    800042cc:	00058a13          	mv	s4,a1
    800042d0:	00001917          	auipc	s2,0x1
    800042d4:	6e090913          	addi	s2,s2,1760 # 800059b0 <kmem>
    800042d8:	00002b37          	lui	s6,0x2
    800042dc:	0140006f          	j	800042f0 <freerange+0x80>
    800042e0:	000017b7          	lui	a5,0x1
    800042e4:	00f484b3          	add	s1,s1,a5
    800042e8:	0554ec63          	bltu	s1,s5,80004340 <freerange+0xd0>
    800042ec:	0534fa63          	bgeu	s1,s3,80004340 <freerange+0xd0>
    800042f0:	00001637          	lui	a2,0x1
    800042f4:	00100593          	li	a1,1
    800042f8:	00048513          	mv	a0,s1
    800042fc:	00000097          	auipc	ra,0x0
    80004300:	50c080e7          	jalr	1292(ra) # 80004808 <__memset>
    80004304:	00093703          	ld	a4,0(s2)
    80004308:	016487b3          	add	a5,s1,s6
    8000430c:	00e4b023          	sd	a4,0(s1)
    80004310:	00993023          	sd	s1,0(s2)
    80004314:	fcfa76e3          	bgeu	s4,a5,800042e0 <freerange+0x70>
    80004318:	03813083          	ld	ra,56(sp)
    8000431c:	03013403          	ld	s0,48(sp)
    80004320:	02813483          	ld	s1,40(sp)
    80004324:	02013903          	ld	s2,32(sp)
    80004328:	01813983          	ld	s3,24(sp)
    8000432c:	01013a03          	ld	s4,16(sp)
    80004330:	00813a83          	ld	s5,8(sp)
    80004334:	00013b03          	ld	s6,0(sp)
    80004338:	04010113          	addi	sp,sp,64
    8000433c:	00008067          	ret
    80004340:	00001517          	auipc	a0,0x1
    80004344:	f4850513          	addi	a0,a0,-184 # 80005288 <digits+0x18>
    80004348:	fffff097          	auipc	ra,0xfffff
    8000434c:	3d4080e7          	jalr	980(ra) # 8000371c <panic>

0000000080004350 <kfree>:
    80004350:	fe010113          	addi	sp,sp,-32
    80004354:	00813823          	sd	s0,16(sp)
    80004358:	00113c23          	sd	ra,24(sp)
    8000435c:	00913423          	sd	s1,8(sp)
    80004360:	02010413          	addi	s0,sp,32
    80004364:	03451793          	slli	a5,a0,0x34
    80004368:	04079c63          	bnez	a5,800043c0 <kfree+0x70>
    8000436c:	00003797          	auipc	a5,0x3
    80004370:	8e478793          	addi	a5,a5,-1820 # 80006c50 <end>
    80004374:	00050493          	mv	s1,a0
    80004378:	04f56463          	bltu	a0,a5,800043c0 <kfree+0x70>
    8000437c:	01100793          	li	a5,17
    80004380:	01b79793          	slli	a5,a5,0x1b
    80004384:	02f57e63          	bgeu	a0,a5,800043c0 <kfree+0x70>
    80004388:	00001637          	lui	a2,0x1
    8000438c:	00100593          	li	a1,1
    80004390:	00000097          	auipc	ra,0x0
    80004394:	478080e7          	jalr	1144(ra) # 80004808 <__memset>
    80004398:	00001797          	auipc	a5,0x1
    8000439c:	61878793          	addi	a5,a5,1560 # 800059b0 <kmem>
    800043a0:	0007b703          	ld	a4,0(a5)
    800043a4:	01813083          	ld	ra,24(sp)
    800043a8:	01013403          	ld	s0,16(sp)
    800043ac:	00e4b023          	sd	a4,0(s1)
    800043b0:	0097b023          	sd	s1,0(a5)
    800043b4:	00813483          	ld	s1,8(sp)
    800043b8:	02010113          	addi	sp,sp,32
    800043bc:	00008067          	ret
    800043c0:	00001517          	auipc	a0,0x1
    800043c4:	ec850513          	addi	a0,a0,-312 # 80005288 <digits+0x18>
    800043c8:	fffff097          	auipc	ra,0xfffff
    800043cc:	354080e7          	jalr	852(ra) # 8000371c <panic>

00000000800043d0 <kalloc>:
    800043d0:	fe010113          	addi	sp,sp,-32
    800043d4:	00813823          	sd	s0,16(sp)
    800043d8:	00913423          	sd	s1,8(sp)
    800043dc:	00113c23          	sd	ra,24(sp)
    800043e0:	02010413          	addi	s0,sp,32
    800043e4:	00001797          	auipc	a5,0x1
    800043e8:	5cc78793          	addi	a5,a5,1484 # 800059b0 <kmem>
    800043ec:	0007b483          	ld	s1,0(a5)
    800043f0:	02048063          	beqz	s1,80004410 <kalloc+0x40>
    800043f4:	0004b703          	ld	a4,0(s1)
    800043f8:	00001637          	lui	a2,0x1
    800043fc:	00500593          	li	a1,5
    80004400:	00048513          	mv	a0,s1
    80004404:	00e7b023          	sd	a4,0(a5)
    80004408:	00000097          	auipc	ra,0x0
    8000440c:	400080e7          	jalr	1024(ra) # 80004808 <__memset>
    80004410:	01813083          	ld	ra,24(sp)
    80004414:	01013403          	ld	s0,16(sp)
    80004418:	00048513          	mv	a0,s1
    8000441c:	00813483          	ld	s1,8(sp)
    80004420:	02010113          	addi	sp,sp,32
    80004424:	00008067          	ret

0000000080004428 <initlock>:
    80004428:	ff010113          	addi	sp,sp,-16
    8000442c:	00813423          	sd	s0,8(sp)
    80004430:	01010413          	addi	s0,sp,16
    80004434:	00813403          	ld	s0,8(sp)
    80004438:	00b53423          	sd	a1,8(a0)
    8000443c:	00052023          	sw	zero,0(a0)
    80004440:	00053823          	sd	zero,16(a0)
    80004444:	01010113          	addi	sp,sp,16
    80004448:	00008067          	ret

000000008000444c <acquire>:
    8000444c:	fe010113          	addi	sp,sp,-32
    80004450:	00813823          	sd	s0,16(sp)
    80004454:	00913423          	sd	s1,8(sp)
    80004458:	00113c23          	sd	ra,24(sp)
    8000445c:	01213023          	sd	s2,0(sp)
    80004460:	02010413          	addi	s0,sp,32
    80004464:	00050493          	mv	s1,a0
    80004468:	10002973          	csrr	s2,sstatus
    8000446c:	100027f3          	csrr	a5,sstatus
    80004470:	ffd7f793          	andi	a5,a5,-3
    80004474:	10079073          	csrw	sstatus,a5
    80004478:	fffff097          	auipc	ra,0xfffff
    8000447c:	8e0080e7          	jalr	-1824(ra) # 80002d58 <mycpu>
    80004480:	07852783          	lw	a5,120(a0)
    80004484:	06078e63          	beqz	a5,80004500 <acquire+0xb4>
    80004488:	fffff097          	auipc	ra,0xfffff
    8000448c:	8d0080e7          	jalr	-1840(ra) # 80002d58 <mycpu>
    80004490:	07852783          	lw	a5,120(a0)
    80004494:	0004a703          	lw	a4,0(s1)
    80004498:	0017879b          	addiw	a5,a5,1
    8000449c:	06f52c23          	sw	a5,120(a0)
    800044a0:	04071063          	bnez	a4,800044e0 <acquire+0x94>
    800044a4:	00100713          	li	a4,1
    800044a8:	00070793          	mv	a5,a4
    800044ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800044b0:	0007879b          	sext.w	a5,a5
    800044b4:	fe079ae3          	bnez	a5,800044a8 <acquire+0x5c>
    800044b8:	0ff0000f          	fence
    800044bc:	fffff097          	auipc	ra,0xfffff
    800044c0:	89c080e7          	jalr	-1892(ra) # 80002d58 <mycpu>
    800044c4:	01813083          	ld	ra,24(sp)
    800044c8:	01013403          	ld	s0,16(sp)
    800044cc:	00a4b823          	sd	a0,16(s1)
    800044d0:	00013903          	ld	s2,0(sp)
    800044d4:	00813483          	ld	s1,8(sp)
    800044d8:	02010113          	addi	sp,sp,32
    800044dc:	00008067          	ret
    800044e0:	0104b903          	ld	s2,16(s1)
    800044e4:	fffff097          	auipc	ra,0xfffff
    800044e8:	874080e7          	jalr	-1932(ra) # 80002d58 <mycpu>
    800044ec:	faa91ce3          	bne	s2,a0,800044a4 <acquire+0x58>
    800044f0:	00001517          	auipc	a0,0x1
    800044f4:	da050513          	addi	a0,a0,-608 # 80005290 <digits+0x20>
    800044f8:	fffff097          	auipc	ra,0xfffff
    800044fc:	224080e7          	jalr	548(ra) # 8000371c <panic>
    80004500:	00195913          	srli	s2,s2,0x1
    80004504:	fffff097          	auipc	ra,0xfffff
    80004508:	854080e7          	jalr	-1964(ra) # 80002d58 <mycpu>
    8000450c:	00197913          	andi	s2,s2,1
    80004510:	07252e23          	sw	s2,124(a0)
    80004514:	f75ff06f          	j	80004488 <acquire+0x3c>

0000000080004518 <release>:
    80004518:	fe010113          	addi	sp,sp,-32
    8000451c:	00813823          	sd	s0,16(sp)
    80004520:	00113c23          	sd	ra,24(sp)
    80004524:	00913423          	sd	s1,8(sp)
    80004528:	01213023          	sd	s2,0(sp)
    8000452c:	02010413          	addi	s0,sp,32
    80004530:	00052783          	lw	a5,0(a0)
    80004534:	00079a63          	bnez	a5,80004548 <release+0x30>
    80004538:	00001517          	auipc	a0,0x1
    8000453c:	d6050513          	addi	a0,a0,-672 # 80005298 <digits+0x28>
    80004540:	fffff097          	auipc	ra,0xfffff
    80004544:	1dc080e7          	jalr	476(ra) # 8000371c <panic>
    80004548:	01053903          	ld	s2,16(a0)
    8000454c:	00050493          	mv	s1,a0
    80004550:	fffff097          	auipc	ra,0xfffff
    80004554:	808080e7          	jalr	-2040(ra) # 80002d58 <mycpu>
    80004558:	fea910e3          	bne	s2,a0,80004538 <release+0x20>
    8000455c:	0004b823          	sd	zero,16(s1)
    80004560:	0ff0000f          	fence
    80004564:	0f50000f          	fence	iorw,ow
    80004568:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000456c:	ffffe097          	auipc	ra,0xffffe
    80004570:	7ec080e7          	jalr	2028(ra) # 80002d58 <mycpu>
    80004574:	100027f3          	csrr	a5,sstatus
    80004578:	0027f793          	andi	a5,a5,2
    8000457c:	04079a63          	bnez	a5,800045d0 <release+0xb8>
    80004580:	07852783          	lw	a5,120(a0)
    80004584:	02f05e63          	blez	a5,800045c0 <release+0xa8>
    80004588:	fff7871b          	addiw	a4,a5,-1
    8000458c:	06e52c23          	sw	a4,120(a0)
    80004590:	00071c63          	bnez	a4,800045a8 <release+0x90>
    80004594:	07c52783          	lw	a5,124(a0)
    80004598:	00078863          	beqz	a5,800045a8 <release+0x90>
    8000459c:	100027f3          	csrr	a5,sstatus
    800045a0:	0027e793          	ori	a5,a5,2
    800045a4:	10079073          	csrw	sstatus,a5
    800045a8:	01813083          	ld	ra,24(sp)
    800045ac:	01013403          	ld	s0,16(sp)
    800045b0:	00813483          	ld	s1,8(sp)
    800045b4:	00013903          	ld	s2,0(sp)
    800045b8:	02010113          	addi	sp,sp,32
    800045bc:	00008067          	ret
    800045c0:	00001517          	auipc	a0,0x1
    800045c4:	cf850513          	addi	a0,a0,-776 # 800052b8 <digits+0x48>
    800045c8:	fffff097          	auipc	ra,0xfffff
    800045cc:	154080e7          	jalr	340(ra) # 8000371c <panic>
    800045d0:	00001517          	auipc	a0,0x1
    800045d4:	cd050513          	addi	a0,a0,-816 # 800052a0 <digits+0x30>
    800045d8:	fffff097          	auipc	ra,0xfffff
    800045dc:	144080e7          	jalr	324(ra) # 8000371c <panic>

00000000800045e0 <holding>:
    800045e0:	00052783          	lw	a5,0(a0)
    800045e4:	00079663          	bnez	a5,800045f0 <holding+0x10>
    800045e8:	00000513          	li	a0,0
    800045ec:	00008067          	ret
    800045f0:	fe010113          	addi	sp,sp,-32
    800045f4:	00813823          	sd	s0,16(sp)
    800045f8:	00913423          	sd	s1,8(sp)
    800045fc:	00113c23          	sd	ra,24(sp)
    80004600:	02010413          	addi	s0,sp,32
    80004604:	01053483          	ld	s1,16(a0)
    80004608:	ffffe097          	auipc	ra,0xffffe
    8000460c:	750080e7          	jalr	1872(ra) # 80002d58 <mycpu>
    80004610:	01813083          	ld	ra,24(sp)
    80004614:	01013403          	ld	s0,16(sp)
    80004618:	40a48533          	sub	a0,s1,a0
    8000461c:	00153513          	seqz	a0,a0
    80004620:	00813483          	ld	s1,8(sp)
    80004624:	02010113          	addi	sp,sp,32
    80004628:	00008067          	ret

000000008000462c <push_off>:
    8000462c:	fe010113          	addi	sp,sp,-32
    80004630:	00813823          	sd	s0,16(sp)
    80004634:	00113c23          	sd	ra,24(sp)
    80004638:	00913423          	sd	s1,8(sp)
    8000463c:	02010413          	addi	s0,sp,32
    80004640:	100024f3          	csrr	s1,sstatus
    80004644:	100027f3          	csrr	a5,sstatus
    80004648:	ffd7f793          	andi	a5,a5,-3
    8000464c:	10079073          	csrw	sstatus,a5
    80004650:	ffffe097          	auipc	ra,0xffffe
    80004654:	708080e7          	jalr	1800(ra) # 80002d58 <mycpu>
    80004658:	07852783          	lw	a5,120(a0)
    8000465c:	02078663          	beqz	a5,80004688 <push_off+0x5c>
    80004660:	ffffe097          	auipc	ra,0xffffe
    80004664:	6f8080e7          	jalr	1784(ra) # 80002d58 <mycpu>
    80004668:	07852783          	lw	a5,120(a0)
    8000466c:	01813083          	ld	ra,24(sp)
    80004670:	01013403          	ld	s0,16(sp)
    80004674:	0017879b          	addiw	a5,a5,1
    80004678:	06f52c23          	sw	a5,120(a0)
    8000467c:	00813483          	ld	s1,8(sp)
    80004680:	02010113          	addi	sp,sp,32
    80004684:	00008067          	ret
    80004688:	0014d493          	srli	s1,s1,0x1
    8000468c:	ffffe097          	auipc	ra,0xffffe
    80004690:	6cc080e7          	jalr	1740(ra) # 80002d58 <mycpu>
    80004694:	0014f493          	andi	s1,s1,1
    80004698:	06952e23          	sw	s1,124(a0)
    8000469c:	fc5ff06f          	j	80004660 <push_off+0x34>

00000000800046a0 <pop_off>:
    800046a0:	ff010113          	addi	sp,sp,-16
    800046a4:	00813023          	sd	s0,0(sp)
    800046a8:	00113423          	sd	ra,8(sp)
    800046ac:	01010413          	addi	s0,sp,16
    800046b0:	ffffe097          	auipc	ra,0xffffe
    800046b4:	6a8080e7          	jalr	1704(ra) # 80002d58 <mycpu>
    800046b8:	100027f3          	csrr	a5,sstatus
    800046bc:	0027f793          	andi	a5,a5,2
    800046c0:	04079663          	bnez	a5,8000470c <pop_off+0x6c>
    800046c4:	07852783          	lw	a5,120(a0)
    800046c8:	02f05a63          	blez	a5,800046fc <pop_off+0x5c>
    800046cc:	fff7871b          	addiw	a4,a5,-1
    800046d0:	06e52c23          	sw	a4,120(a0)
    800046d4:	00071c63          	bnez	a4,800046ec <pop_off+0x4c>
    800046d8:	07c52783          	lw	a5,124(a0)
    800046dc:	00078863          	beqz	a5,800046ec <pop_off+0x4c>
    800046e0:	100027f3          	csrr	a5,sstatus
    800046e4:	0027e793          	ori	a5,a5,2
    800046e8:	10079073          	csrw	sstatus,a5
    800046ec:	00813083          	ld	ra,8(sp)
    800046f0:	00013403          	ld	s0,0(sp)
    800046f4:	01010113          	addi	sp,sp,16
    800046f8:	00008067          	ret
    800046fc:	00001517          	auipc	a0,0x1
    80004700:	bbc50513          	addi	a0,a0,-1092 # 800052b8 <digits+0x48>
    80004704:	fffff097          	auipc	ra,0xfffff
    80004708:	018080e7          	jalr	24(ra) # 8000371c <panic>
    8000470c:	00001517          	auipc	a0,0x1
    80004710:	b9450513          	addi	a0,a0,-1132 # 800052a0 <digits+0x30>
    80004714:	fffff097          	auipc	ra,0xfffff
    80004718:	008080e7          	jalr	8(ra) # 8000371c <panic>

000000008000471c <push_on>:
    8000471c:	fe010113          	addi	sp,sp,-32
    80004720:	00813823          	sd	s0,16(sp)
    80004724:	00113c23          	sd	ra,24(sp)
    80004728:	00913423          	sd	s1,8(sp)
    8000472c:	02010413          	addi	s0,sp,32
    80004730:	100024f3          	csrr	s1,sstatus
    80004734:	100027f3          	csrr	a5,sstatus
    80004738:	0027e793          	ori	a5,a5,2
    8000473c:	10079073          	csrw	sstatus,a5
    80004740:	ffffe097          	auipc	ra,0xffffe
    80004744:	618080e7          	jalr	1560(ra) # 80002d58 <mycpu>
    80004748:	07852783          	lw	a5,120(a0)
    8000474c:	02078663          	beqz	a5,80004778 <push_on+0x5c>
    80004750:	ffffe097          	auipc	ra,0xffffe
    80004754:	608080e7          	jalr	1544(ra) # 80002d58 <mycpu>
    80004758:	07852783          	lw	a5,120(a0)
    8000475c:	01813083          	ld	ra,24(sp)
    80004760:	01013403          	ld	s0,16(sp)
    80004764:	0017879b          	addiw	a5,a5,1
    80004768:	06f52c23          	sw	a5,120(a0)
    8000476c:	00813483          	ld	s1,8(sp)
    80004770:	02010113          	addi	sp,sp,32
    80004774:	00008067          	ret
    80004778:	0014d493          	srli	s1,s1,0x1
    8000477c:	ffffe097          	auipc	ra,0xffffe
    80004780:	5dc080e7          	jalr	1500(ra) # 80002d58 <mycpu>
    80004784:	0014f493          	andi	s1,s1,1
    80004788:	06952e23          	sw	s1,124(a0)
    8000478c:	fc5ff06f          	j	80004750 <push_on+0x34>

0000000080004790 <pop_on>:
    80004790:	ff010113          	addi	sp,sp,-16
    80004794:	00813023          	sd	s0,0(sp)
    80004798:	00113423          	sd	ra,8(sp)
    8000479c:	01010413          	addi	s0,sp,16
    800047a0:	ffffe097          	auipc	ra,0xffffe
    800047a4:	5b8080e7          	jalr	1464(ra) # 80002d58 <mycpu>
    800047a8:	100027f3          	csrr	a5,sstatus
    800047ac:	0027f793          	andi	a5,a5,2
    800047b0:	04078463          	beqz	a5,800047f8 <pop_on+0x68>
    800047b4:	07852783          	lw	a5,120(a0)
    800047b8:	02f05863          	blez	a5,800047e8 <pop_on+0x58>
    800047bc:	fff7879b          	addiw	a5,a5,-1
    800047c0:	06f52c23          	sw	a5,120(a0)
    800047c4:	07853783          	ld	a5,120(a0)
    800047c8:	00079863          	bnez	a5,800047d8 <pop_on+0x48>
    800047cc:	100027f3          	csrr	a5,sstatus
    800047d0:	ffd7f793          	andi	a5,a5,-3
    800047d4:	10079073          	csrw	sstatus,a5
    800047d8:	00813083          	ld	ra,8(sp)
    800047dc:	00013403          	ld	s0,0(sp)
    800047e0:	01010113          	addi	sp,sp,16
    800047e4:	00008067          	ret
    800047e8:	00001517          	auipc	a0,0x1
    800047ec:	af850513          	addi	a0,a0,-1288 # 800052e0 <digits+0x70>
    800047f0:	fffff097          	auipc	ra,0xfffff
    800047f4:	f2c080e7          	jalr	-212(ra) # 8000371c <panic>
    800047f8:	00001517          	auipc	a0,0x1
    800047fc:	ac850513          	addi	a0,a0,-1336 # 800052c0 <digits+0x50>
    80004800:	fffff097          	auipc	ra,0xfffff
    80004804:	f1c080e7          	jalr	-228(ra) # 8000371c <panic>

0000000080004808 <__memset>:
    80004808:	ff010113          	addi	sp,sp,-16
    8000480c:	00813423          	sd	s0,8(sp)
    80004810:	01010413          	addi	s0,sp,16
    80004814:	1a060e63          	beqz	a2,800049d0 <__memset+0x1c8>
    80004818:	40a007b3          	neg	a5,a0
    8000481c:	0077f793          	andi	a5,a5,7
    80004820:	00778693          	addi	a3,a5,7
    80004824:	00b00813          	li	a6,11
    80004828:	0ff5f593          	andi	a1,a1,255
    8000482c:	fff6071b          	addiw	a4,a2,-1
    80004830:	1b06e663          	bltu	a3,a6,800049dc <__memset+0x1d4>
    80004834:	1cd76463          	bltu	a4,a3,800049fc <__memset+0x1f4>
    80004838:	1a078e63          	beqz	a5,800049f4 <__memset+0x1ec>
    8000483c:	00b50023          	sb	a1,0(a0)
    80004840:	00100713          	li	a4,1
    80004844:	1ae78463          	beq	a5,a4,800049ec <__memset+0x1e4>
    80004848:	00b500a3          	sb	a1,1(a0)
    8000484c:	00200713          	li	a4,2
    80004850:	1ae78a63          	beq	a5,a4,80004a04 <__memset+0x1fc>
    80004854:	00b50123          	sb	a1,2(a0)
    80004858:	00300713          	li	a4,3
    8000485c:	18e78463          	beq	a5,a4,800049e4 <__memset+0x1dc>
    80004860:	00b501a3          	sb	a1,3(a0)
    80004864:	00400713          	li	a4,4
    80004868:	1ae78263          	beq	a5,a4,80004a0c <__memset+0x204>
    8000486c:	00b50223          	sb	a1,4(a0)
    80004870:	00500713          	li	a4,5
    80004874:	1ae78063          	beq	a5,a4,80004a14 <__memset+0x20c>
    80004878:	00b502a3          	sb	a1,5(a0)
    8000487c:	00700713          	li	a4,7
    80004880:	18e79e63          	bne	a5,a4,80004a1c <__memset+0x214>
    80004884:	00b50323          	sb	a1,6(a0)
    80004888:	00700e93          	li	t4,7
    8000488c:	00859713          	slli	a4,a1,0x8
    80004890:	00e5e733          	or	a4,a1,a4
    80004894:	01059e13          	slli	t3,a1,0x10
    80004898:	01c76e33          	or	t3,a4,t3
    8000489c:	01859313          	slli	t1,a1,0x18
    800048a0:	006e6333          	or	t1,t3,t1
    800048a4:	02059893          	slli	a7,a1,0x20
    800048a8:	40f60e3b          	subw	t3,a2,a5
    800048ac:	011368b3          	or	a7,t1,a7
    800048b0:	02859813          	slli	a6,a1,0x28
    800048b4:	0108e833          	or	a6,a7,a6
    800048b8:	03059693          	slli	a3,a1,0x30
    800048bc:	003e589b          	srliw	a7,t3,0x3
    800048c0:	00d866b3          	or	a3,a6,a3
    800048c4:	03859713          	slli	a4,a1,0x38
    800048c8:	00389813          	slli	a6,a7,0x3
    800048cc:	00f507b3          	add	a5,a0,a5
    800048d0:	00e6e733          	or	a4,a3,a4
    800048d4:	000e089b          	sext.w	a7,t3
    800048d8:	00f806b3          	add	a3,a6,a5
    800048dc:	00e7b023          	sd	a4,0(a5)
    800048e0:	00878793          	addi	a5,a5,8
    800048e4:	fed79ce3          	bne	a5,a3,800048dc <__memset+0xd4>
    800048e8:	ff8e7793          	andi	a5,t3,-8
    800048ec:	0007871b          	sext.w	a4,a5
    800048f0:	01d787bb          	addw	a5,a5,t4
    800048f4:	0ce88e63          	beq	a7,a4,800049d0 <__memset+0x1c8>
    800048f8:	00f50733          	add	a4,a0,a5
    800048fc:	00b70023          	sb	a1,0(a4)
    80004900:	0017871b          	addiw	a4,a5,1
    80004904:	0cc77663          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    80004908:	00e50733          	add	a4,a0,a4
    8000490c:	00b70023          	sb	a1,0(a4)
    80004910:	0027871b          	addiw	a4,a5,2
    80004914:	0ac77e63          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    80004918:	00e50733          	add	a4,a0,a4
    8000491c:	00b70023          	sb	a1,0(a4)
    80004920:	0037871b          	addiw	a4,a5,3
    80004924:	0ac77663          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    80004928:	00e50733          	add	a4,a0,a4
    8000492c:	00b70023          	sb	a1,0(a4)
    80004930:	0047871b          	addiw	a4,a5,4
    80004934:	08c77e63          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    80004938:	00e50733          	add	a4,a0,a4
    8000493c:	00b70023          	sb	a1,0(a4)
    80004940:	0057871b          	addiw	a4,a5,5
    80004944:	08c77663          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    80004948:	00e50733          	add	a4,a0,a4
    8000494c:	00b70023          	sb	a1,0(a4)
    80004950:	0067871b          	addiw	a4,a5,6
    80004954:	06c77e63          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    80004958:	00e50733          	add	a4,a0,a4
    8000495c:	00b70023          	sb	a1,0(a4)
    80004960:	0077871b          	addiw	a4,a5,7
    80004964:	06c77663          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    80004968:	00e50733          	add	a4,a0,a4
    8000496c:	00b70023          	sb	a1,0(a4)
    80004970:	0087871b          	addiw	a4,a5,8
    80004974:	04c77e63          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    80004978:	00e50733          	add	a4,a0,a4
    8000497c:	00b70023          	sb	a1,0(a4)
    80004980:	0097871b          	addiw	a4,a5,9
    80004984:	04c77663          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    80004988:	00e50733          	add	a4,a0,a4
    8000498c:	00b70023          	sb	a1,0(a4)
    80004990:	00a7871b          	addiw	a4,a5,10
    80004994:	02c77e63          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    80004998:	00e50733          	add	a4,a0,a4
    8000499c:	00b70023          	sb	a1,0(a4)
    800049a0:	00b7871b          	addiw	a4,a5,11
    800049a4:	02c77663          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    800049a8:	00e50733          	add	a4,a0,a4
    800049ac:	00b70023          	sb	a1,0(a4)
    800049b0:	00c7871b          	addiw	a4,a5,12
    800049b4:	00c77e63          	bgeu	a4,a2,800049d0 <__memset+0x1c8>
    800049b8:	00e50733          	add	a4,a0,a4
    800049bc:	00b70023          	sb	a1,0(a4)
    800049c0:	00d7879b          	addiw	a5,a5,13
    800049c4:	00c7f663          	bgeu	a5,a2,800049d0 <__memset+0x1c8>
    800049c8:	00f507b3          	add	a5,a0,a5
    800049cc:	00b78023          	sb	a1,0(a5)
    800049d0:	00813403          	ld	s0,8(sp)
    800049d4:	01010113          	addi	sp,sp,16
    800049d8:	00008067          	ret
    800049dc:	00b00693          	li	a3,11
    800049e0:	e55ff06f          	j	80004834 <__memset+0x2c>
    800049e4:	00300e93          	li	t4,3
    800049e8:	ea5ff06f          	j	8000488c <__memset+0x84>
    800049ec:	00100e93          	li	t4,1
    800049f0:	e9dff06f          	j	8000488c <__memset+0x84>
    800049f4:	00000e93          	li	t4,0
    800049f8:	e95ff06f          	j	8000488c <__memset+0x84>
    800049fc:	00000793          	li	a5,0
    80004a00:	ef9ff06f          	j	800048f8 <__memset+0xf0>
    80004a04:	00200e93          	li	t4,2
    80004a08:	e85ff06f          	j	8000488c <__memset+0x84>
    80004a0c:	00400e93          	li	t4,4
    80004a10:	e7dff06f          	j	8000488c <__memset+0x84>
    80004a14:	00500e93          	li	t4,5
    80004a18:	e75ff06f          	j	8000488c <__memset+0x84>
    80004a1c:	00600e93          	li	t4,6
    80004a20:	e6dff06f          	j	8000488c <__memset+0x84>

0000000080004a24 <__memmove>:
    80004a24:	ff010113          	addi	sp,sp,-16
    80004a28:	00813423          	sd	s0,8(sp)
    80004a2c:	01010413          	addi	s0,sp,16
    80004a30:	0e060863          	beqz	a2,80004b20 <__memmove+0xfc>
    80004a34:	fff6069b          	addiw	a3,a2,-1
    80004a38:	0006881b          	sext.w	a6,a3
    80004a3c:	0ea5e863          	bltu	a1,a0,80004b2c <__memmove+0x108>
    80004a40:	00758713          	addi	a4,a1,7
    80004a44:	00a5e7b3          	or	a5,a1,a0
    80004a48:	40a70733          	sub	a4,a4,a0
    80004a4c:	0077f793          	andi	a5,a5,7
    80004a50:	00f73713          	sltiu	a4,a4,15
    80004a54:	00174713          	xori	a4,a4,1
    80004a58:	0017b793          	seqz	a5,a5
    80004a5c:	00e7f7b3          	and	a5,a5,a4
    80004a60:	10078863          	beqz	a5,80004b70 <__memmove+0x14c>
    80004a64:	00900793          	li	a5,9
    80004a68:	1107f463          	bgeu	a5,a6,80004b70 <__memmove+0x14c>
    80004a6c:	0036581b          	srliw	a6,a2,0x3
    80004a70:	fff8081b          	addiw	a6,a6,-1
    80004a74:	02081813          	slli	a6,a6,0x20
    80004a78:	01d85893          	srli	a7,a6,0x1d
    80004a7c:	00858813          	addi	a6,a1,8
    80004a80:	00058793          	mv	a5,a1
    80004a84:	00050713          	mv	a4,a0
    80004a88:	01088833          	add	a6,a7,a6
    80004a8c:	0007b883          	ld	a7,0(a5)
    80004a90:	00878793          	addi	a5,a5,8
    80004a94:	00870713          	addi	a4,a4,8
    80004a98:	ff173c23          	sd	a7,-8(a4)
    80004a9c:	ff0798e3          	bne	a5,a6,80004a8c <__memmove+0x68>
    80004aa0:	ff867713          	andi	a4,a2,-8
    80004aa4:	02071793          	slli	a5,a4,0x20
    80004aa8:	0207d793          	srli	a5,a5,0x20
    80004aac:	00f585b3          	add	a1,a1,a5
    80004ab0:	40e686bb          	subw	a3,a3,a4
    80004ab4:	00f507b3          	add	a5,a0,a5
    80004ab8:	06e60463          	beq	a2,a4,80004b20 <__memmove+0xfc>
    80004abc:	0005c703          	lbu	a4,0(a1)
    80004ac0:	00e78023          	sb	a4,0(a5)
    80004ac4:	04068e63          	beqz	a3,80004b20 <__memmove+0xfc>
    80004ac8:	0015c603          	lbu	a2,1(a1)
    80004acc:	00100713          	li	a4,1
    80004ad0:	00c780a3          	sb	a2,1(a5)
    80004ad4:	04e68663          	beq	a3,a4,80004b20 <__memmove+0xfc>
    80004ad8:	0025c603          	lbu	a2,2(a1)
    80004adc:	00200713          	li	a4,2
    80004ae0:	00c78123          	sb	a2,2(a5)
    80004ae4:	02e68e63          	beq	a3,a4,80004b20 <__memmove+0xfc>
    80004ae8:	0035c603          	lbu	a2,3(a1)
    80004aec:	00300713          	li	a4,3
    80004af0:	00c781a3          	sb	a2,3(a5)
    80004af4:	02e68663          	beq	a3,a4,80004b20 <__memmove+0xfc>
    80004af8:	0045c603          	lbu	a2,4(a1)
    80004afc:	00400713          	li	a4,4
    80004b00:	00c78223          	sb	a2,4(a5)
    80004b04:	00e68e63          	beq	a3,a4,80004b20 <__memmove+0xfc>
    80004b08:	0055c603          	lbu	a2,5(a1)
    80004b0c:	00500713          	li	a4,5
    80004b10:	00c782a3          	sb	a2,5(a5)
    80004b14:	00e68663          	beq	a3,a4,80004b20 <__memmove+0xfc>
    80004b18:	0065c703          	lbu	a4,6(a1)
    80004b1c:	00e78323          	sb	a4,6(a5)
    80004b20:	00813403          	ld	s0,8(sp)
    80004b24:	01010113          	addi	sp,sp,16
    80004b28:	00008067          	ret
    80004b2c:	02061713          	slli	a4,a2,0x20
    80004b30:	02075713          	srli	a4,a4,0x20
    80004b34:	00e587b3          	add	a5,a1,a4
    80004b38:	f0f574e3          	bgeu	a0,a5,80004a40 <__memmove+0x1c>
    80004b3c:	02069613          	slli	a2,a3,0x20
    80004b40:	02065613          	srli	a2,a2,0x20
    80004b44:	fff64613          	not	a2,a2
    80004b48:	00e50733          	add	a4,a0,a4
    80004b4c:	00c78633          	add	a2,a5,a2
    80004b50:	fff7c683          	lbu	a3,-1(a5)
    80004b54:	fff78793          	addi	a5,a5,-1
    80004b58:	fff70713          	addi	a4,a4,-1
    80004b5c:	00d70023          	sb	a3,0(a4)
    80004b60:	fec798e3          	bne	a5,a2,80004b50 <__memmove+0x12c>
    80004b64:	00813403          	ld	s0,8(sp)
    80004b68:	01010113          	addi	sp,sp,16
    80004b6c:	00008067          	ret
    80004b70:	02069713          	slli	a4,a3,0x20
    80004b74:	02075713          	srli	a4,a4,0x20
    80004b78:	00170713          	addi	a4,a4,1
    80004b7c:	00e50733          	add	a4,a0,a4
    80004b80:	00050793          	mv	a5,a0
    80004b84:	0005c683          	lbu	a3,0(a1)
    80004b88:	00178793          	addi	a5,a5,1
    80004b8c:	00158593          	addi	a1,a1,1
    80004b90:	fed78fa3          	sb	a3,-1(a5)
    80004b94:	fee798e3          	bne	a5,a4,80004b84 <__memmove+0x160>
    80004b98:	f89ff06f          	j	80004b20 <__memmove+0xfc>

0000000080004b9c <__putc>:
    80004b9c:	fe010113          	addi	sp,sp,-32
    80004ba0:	00813823          	sd	s0,16(sp)
    80004ba4:	00113c23          	sd	ra,24(sp)
    80004ba8:	02010413          	addi	s0,sp,32
    80004bac:	00050793          	mv	a5,a0
    80004bb0:	fef40593          	addi	a1,s0,-17
    80004bb4:	00100613          	li	a2,1
    80004bb8:	00000513          	li	a0,0
    80004bbc:	fef407a3          	sb	a5,-17(s0)
    80004bc0:	fffff097          	auipc	ra,0xfffff
    80004bc4:	b3c080e7          	jalr	-1220(ra) # 800036fc <console_write>
    80004bc8:	01813083          	ld	ra,24(sp)
    80004bcc:	01013403          	ld	s0,16(sp)
    80004bd0:	02010113          	addi	sp,sp,32
    80004bd4:	00008067          	ret

0000000080004bd8 <__getc>:
    80004bd8:	fe010113          	addi	sp,sp,-32
    80004bdc:	00813823          	sd	s0,16(sp)
    80004be0:	00113c23          	sd	ra,24(sp)
    80004be4:	02010413          	addi	s0,sp,32
    80004be8:	fe840593          	addi	a1,s0,-24
    80004bec:	00100613          	li	a2,1
    80004bf0:	00000513          	li	a0,0
    80004bf4:	fffff097          	auipc	ra,0xfffff
    80004bf8:	ae8080e7          	jalr	-1304(ra) # 800036dc <console_read>
    80004bfc:	fe844503          	lbu	a0,-24(s0)
    80004c00:	01813083          	ld	ra,24(sp)
    80004c04:	01013403          	ld	s0,16(sp)
    80004c08:	02010113          	addi	sp,sp,32
    80004c0c:	00008067          	ret

0000000080004c10 <console_handler>:
    80004c10:	fe010113          	addi	sp,sp,-32
    80004c14:	00813823          	sd	s0,16(sp)
    80004c18:	00113c23          	sd	ra,24(sp)
    80004c1c:	00913423          	sd	s1,8(sp)
    80004c20:	02010413          	addi	s0,sp,32
    80004c24:	14202773          	csrr	a4,scause
    80004c28:	100027f3          	csrr	a5,sstatus
    80004c2c:	0027f793          	andi	a5,a5,2
    80004c30:	06079e63          	bnez	a5,80004cac <console_handler+0x9c>
    80004c34:	00074c63          	bltz	a4,80004c4c <console_handler+0x3c>
    80004c38:	01813083          	ld	ra,24(sp)
    80004c3c:	01013403          	ld	s0,16(sp)
    80004c40:	00813483          	ld	s1,8(sp)
    80004c44:	02010113          	addi	sp,sp,32
    80004c48:	00008067          	ret
    80004c4c:	0ff77713          	andi	a4,a4,255
    80004c50:	00900793          	li	a5,9
    80004c54:	fef712e3          	bne	a4,a5,80004c38 <console_handler+0x28>
    80004c58:	ffffe097          	auipc	ra,0xffffe
    80004c5c:	6dc080e7          	jalr	1756(ra) # 80003334 <plic_claim>
    80004c60:	00a00793          	li	a5,10
    80004c64:	00050493          	mv	s1,a0
    80004c68:	02f50c63          	beq	a0,a5,80004ca0 <console_handler+0x90>
    80004c6c:	fc0506e3          	beqz	a0,80004c38 <console_handler+0x28>
    80004c70:	00050593          	mv	a1,a0
    80004c74:	00000517          	auipc	a0,0x0
    80004c78:	57450513          	addi	a0,a0,1396 # 800051e8 <CONSOLE_STATUS+0x1d8>
    80004c7c:	fffff097          	auipc	ra,0xfffff
    80004c80:	afc080e7          	jalr	-1284(ra) # 80003778 <__printf>
    80004c84:	01013403          	ld	s0,16(sp)
    80004c88:	01813083          	ld	ra,24(sp)
    80004c8c:	00048513          	mv	a0,s1
    80004c90:	00813483          	ld	s1,8(sp)
    80004c94:	02010113          	addi	sp,sp,32
    80004c98:	ffffe317          	auipc	t1,0xffffe
    80004c9c:	6d430067          	jr	1748(t1) # 8000336c <plic_complete>
    80004ca0:	fffff097          	auipc	ra,0xfffff
    80004ca4:	3e0080e7          	jalr	992(ra) # 80004080 <uartintr>
    80004ca8:	fddff06f          	j	80004c84 <console_handler+0x74>
    80004cac:	00000517          	auipc	a0,0x0
    80004cb0:	63c50513          	addi	a0,a0,1596 # 800052e8 <digits+0x78>
    80004cb4:	fffff097          	auipc	ra,0xfffff
    80004cb8:	a68080e7          	jalr	-1432(ra) # 8000371c <panic>
	...
