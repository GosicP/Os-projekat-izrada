
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	99813103          	ld	sp,-1640(sp) # 80005998 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	039020ef          	jal	ra,80002854 <start>

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
    80001184:	544000ef          	jal	ra,800016c8 <_ZN5RiscV20handleSupervisorTrapEv>

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

0000000080001280 <_ZL9fibonaccim>:
            //TCB::yield();
        }
    }
}

static uint64 fibonacci(uint64 n) {
    80001280:	fe010113          	addi	sp,sp,-32
    80001284:	00113c23          	sd	ra,24(sp)
    80001288:	00813823          	sd	s0,16(sp)
    8000128c:	00913423          	sd	s1,8(sp)
    80001290:	01213023          	sd	s2,0(sp)
    80001294:	02010413          	addi	s0,sp,32
    80001298:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000129c:	00100793          	li	a5,1
    800012a0:	02a7f663          	bgeu	a5,a0,800012cc <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) TCB::yield();
    800012a4:	00357793          	andi	a5,a0,3
    800012a8:	02078e63          	beqz	a5,800012e4 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800012ac:	fff48513          	addi	a0,s1,-1
    800012b0:	00000097          	auipc	ra,0x0
    800012b4:	fd0080e7          	jalr	-48(ra) # 80001280 <_ZL9fibonaccim>
    800012b8:	00050913          	mv	s2,a0
    800012bc:	ffe48513          	addi	a0,s1,-2
    800012c0:	00000097          	auipc	ra,0x0
    800012c4:	fc0080e7          	jalr	-64(ra) # 80001280 <_ZL9fibonaccim>
    800012c8:	00a90533          	add	a0,s2,a0
}
    800012cc:	01813083          	ld	ra,24(sp)
    800012d0:	01013403          	ld	s0,16(sp)
    800012d4:	00813483          	ld	s1,8(sp)
    800012d8:	00013903          	ld	s2,0(sp)
    800012dc:	02010113          	addi	sp,sp,32
    800012e0:	00008067          	ret
    if (n % 4 == 0) TCB::yield();
    800012e4:	00001097          	auipc	ra,0x1
    800012e8:	e88080e7          	jalr	-376(ra) # 8000216c <_ZN3TCB5yieldEv>
    800012ec:	fc1ff06f          	j	800012ac <_ZL9fibonaccim+0x2c>

00000000800012f0 <_Z11workerBodyAv>:
void workerBodyA(){
    800012f0:	fe010113          	addi	sp,sp,-32
    800012f4:	00113c23          	sd	ra,24(sp)
    800012f8:	00813823          	sd	s0,16(sp)
    800012fc:	00913423          	sd	s1,8(sp)
    80001300:	02010413          	addi	s0,sp,32
    for(uint64 i=0;i<10;i++){
    80001304:	00000493          	li	s1,0
    80001308:	0300006f          	j	80001338 <_Z11workerBodyAv+0x48>
        for(uint64 j=0; j<10000; j++){
    8000130c:	00168693          	addi	a3,a3,1
    80001310:	000027b7          	lui	a5,0x2
    80001314:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001318:	00d7ee63          	bltu	a5,a3,80001334 <_Z11workerBodyAv+0x44>
            for(uint64 k=0;k<30000;k++){
    8000131c:	00000713          	li	a4,0
    80001320:	000077b7          	lui	a5,0x7
    80001324:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001328:	fee7e2e3          	bltu	a5,a4,8000130c <_Z11workerBodyAv+0x1c>
    8000132c:	00170713          	addi	a4,a4,1
    80001330:	ff1ff06f          	j	80001320 <_Z11workerBodyAv+0x30>
    for(uint64 i=0;i<10;i++){
    80001334:	00148493          	addi	s1,s1,1
    80001338:	00900793          	li	a5,9
    8000133c:	0297ec63          	bltu	a5,s1,80001374 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    80001340:	00004517          	auipc	a0,0x4
    80001344:	ce050513          	addi	a0,a0,-800 # 80005020 <CONSOLE_STATUS+0x10>
    80001348:	00001097          	auipc	ra,0x1
    8000134c:	3f0080e7          	jalr	1008(ra) # 80002738 <_Z11printStringPKc>
        printInteger(i);
    80001350:	00048513          	mv	a0,s1
    80001354:	00001097          	auipc	ra,0x1
    80001358:	44c080e7          	jalr	1100(ra) # 800027a0 <_Z12printIntegerm>
        printString("\n");
    8000135c:	00004517          	auipc	a0,0x4
    80001360:	d5c50513          	addi	a0,a0,-676 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001364:	00001097          	auipc	ra,0x1
    80001368:	3d4080e7          	jalr	980(ra) # 80002738 <_Z11printStringPKc>
        for(uint64 j=0; j<10000; j++){
    8000136c:	00000693          	li	a3,0
    80001370:	fa1ff06f          	j	80001310 <_Z11workerBodyAv+0x20>
}
    80001374:	01813083          	ld	ra,24(sp)
    80001378:	01013403          	ld	s0,16(sp)
    8000137c:	00813483          	ld	s1,8(sp)
    80001380:	02010113          	addi	sp,sp,32
    80001384:	00008067          	ret

0000000080001388 <_Z11workerBodyBv>:
void workerBodyB(){
    80001388:	fe010113          	addi	sp,sp,-32
    8000138c:	00113c23          	sd	ra,24(sp)
    80001390:	00813823          	sd	s0,16(sp)
    80001394:	00913423          	sd	s1,8(sp)
    80001398:	02010413          	addi	s0,sp,32
    for(uint64 i=0;i<16;i++){
    8000139c:	00000493          	li	s1,0
    800013a0:	0300006f          	j	800013d0 <_Z11workerBodyBv+0x48>
        for(uint64 j=0; j<10000; j++){
    800013a4:	00168693          	addi	a3,a3,1
    800013a8:	000027b7          	lui	a5,0x2
    800013ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800013b0:	00d7ee63          	bltu	a5,a3,800013cc <_Z11workerBodyBv+0x44>
            for(uint64 k=0;k<30000;k++){
    800013b4:	00000713          	li	a4,0
    800013b8:	000077b7          	lui	a5,0x7
    800013bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800013c0:	fee7e2e3          	bltu	a5,a4,800013a4 <_Z11workerBodyBv+0x1c>
    800013c4:	00170713          	addi	a4,a4,1
    800013c8:	ff1ff06f          	j	800013b8 <_Z11workerBodyBv+0x30>
    for(uint64 i=0;i<16;i++){
    800013cc:	00148493          	addi	s1,s1,1
    800013d0:	00f00793          	li	a5,15
    800013d4:	0297ec63          	bltu	a5,s1,8000140c <_Z11workerBodyBv+0x84>
        printString("B: i=");
    800013d8:	00004517          	auipc	a0,0x4
    800013dc:	c5050513          	addi	a0,a0,-944 # 80005028 <CONSOLE_STATUS+0x18>
    800013e0:	00001097          	auipc	ra,0x1
    800013e4:	358080e7          	jalr	856(ra) # 80002738 <_Z11printStringPKc>
        printInteger(i);
    800013e8:	00048513          	mv	a0,s1
    800013ec:	00001097          	auipc	ra,0x1
    800013f0:	3b4080e7          	jalr	948(ra) # 800027a0 <_Z12printIntegerm>
        printString("\n");
    800013f4:	00004517          	auipc	a0,0x4
    800013f8:	cc450513          	addi	a0,a0,-828 # 800050b8 <CONSOLE_STATUS+0xa8>
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	33c080e7          	jalr	828(ra) # 80002738 <_Z11printStringPKc>
        for(uint64 j=0; j<10000; j++){
    80001404:	00000693          	li	a3,0
    80001408:	fa1ff06f          	j	800013a8 <_Z11workerBodyBv+0x20>
}
    8000140c:	01813083          	ld	ra,24(sp)
    80001410:	01013403          	ld	s0,16(sp)
    80001414:	00813483          	ld	s1,8(sp)
    80001418:	02010113          	addi	sp,sp,32
    8000141c:	00008067          	ret

0000000080001420 <_Z11workerBodyCv>:

void workerBodyC(){
    80001420:	fe010113          	addi	sp,sp,-32
    80001424:	00113c23          	sd	ra,24(sp)
    80001428:	00813823          	sd	s0,16(sp)
    8000142c:	00913423          	sd	s1,8(sp)
    80001430:	01213023          	sd	s2,0(sp)
    80001434:	02010413          	addi	s0,sp,32
    uint8 i=0;
    80001438:	00000493          	li	s1,0
    8000143c:	0380006f          	j	80001474 <_Z11workerBodyCv+0x54>
    for(; i<3 ; i++){
        printString("C: i=");
    80001440:	00004517          	auipc	a0,0x4
    80001444:	bf050513          	addi	a0,a0,-1040 # 80005030 <CONSOLE_STATUS+0x20>
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	2f0080e7          	jalr	752(ra) # 80002738 <_Z11printStringPKc>
        printInteger(i);
    80001450:	00048513          	mv	a0,s1
    80001454:	00001097          	auipc	ra,0x1
    80001458:	34c080e7          	jalr	844(ra) # 800027a0 <_Z12printIntegerm>
        printString("\n");
    8000145c:	00004517          	auipc	a0,0x4
    80001460:	c5c50513          	addi	a0,a0,-932 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001464:	00001097          	auipc	ra,0x1
    80001468:	2d4080e7          	jalr	724(ra) # 80002738 <_Z11printStringPKc>
    for(; i<3 ; i++){
    8000146c:	0014849b          	addiw	s1,s1,1
    80001470:	0ff4f493          	andi	s1,s1,255
    80001474:	00200793          	li	a5,2
    80001478:	fc97f4e3          	bgeu	a5,s1,80001440 <_Z11workerBodyCv+0x20>
    }

    printString("C yield\n");
    8000147c:	00004517          	auipc	a0,0x4
    80001480:	bbc50513          	addi	a0,a0,-1092 # 80005038 <CONSOLE_STATUS+0x28>
    80001484:	00001097          	auipc	ra,0x1
    80001488:	2b4080e7          	jalr	692(ra) # 80002738 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000148c:	00700313          	li	t1,7
    TCB::yield();
    80001490:	00001097          	auipc	ra,0x1
    80001494:	cdc080e7          	jalr	-804(ra) # 8000216c <_ZN3TCB5yieldEv>

    uint64 t1=0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001498:	00030913          	mv	s2,t1

    printString("C: t1=");
    8000149c:	00004517          	auipc	a0,0x4
    800014a0:	bac50513          	addi	a0,a0,-1108 # 80005048 <CONSOLE_STATUS+0x38>
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	294080e7          	jalr	660(ra) # 80002738 <_Z11printStringPKc>
    printInteger(t1);
    800014ac:	00090513          	mv	a0,s2
    800014b0:	00001097          	auipc	ra,0x1
    800014b4:	2f0080e7          	jalr	752(ra) # 800027a0 <_Z12printIntegerm>
    printString("\n");
    800014b8:	00004517          	auipc	a0,0x4
    800014bc:	c0050513          	addi	a0,a0,-1024 # 800050b8 <CONSOLE_STATUS+0xa8>
    800014c0:	00001097          	auipc	ra,0x1
    800014c4:	278080e7          	jalr	632(ra) # 80002738 <_Z11printStringPKc>

    uint64 result = fibonacci (20);
    800014c8:	01400513          	li	a0,20
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	db4080e7          	jalr	-588(ra) # 80001280 <_ZL9fibonaccim>
    800014d4:	00050913          	mv	s2,a0
    printString("C: fibonacci=");
    800014d8:	00004517          	auipc	a0,0x4
    800014dc:	b7850513          	addi	a0,a0,-1160 # 80005050 <CONSOLE_STATUS+0x40>
    800014e0:	00001097          	auipc	ra,0x1
    800014e4:	258080e7          	jalr	600(ra) # 80002738 <_Z11printStringPKc>
    printInteger(result);
    800014e8:	00090513          	mv	a0,s2
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	2b4080e7          	jalr	692(ra) # 800027a0 <_Z12printIntegerm>
    printString("\n");
    800014f4:	00004517          	auipc	a0,0x4
    800014f8:	bc450513          	addi	a0,a0,-1084 # 800050b8 <CONSOLE_STATUS+0xa8>
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	23c080e7          	jalr	572(ra) # 80002738 <_Z11printStringPKc>
    80001504:	0380006f          	j	8000153c <_Z11workerBodyCv+0x11c>

    for(; i<6; i++){
        printString("C: i=");
    80001508:	00004517          	auipc	a0,0x4
    8000150c:	b2850513          	addi	a0,a0,-1240 # 80005030 <CONSOLE_STATUS+0x20>
    80001510:	00001097          	auipc	ra,0x1
    80001514:	228080e7          	jalr	552(ra) # 80002738 <_Z11printStringPKc>
        printInteger(i);
    80001518:	00048513          	mv	a0,s1
    8000151c:	00001097          	auipc	ra,0x1
    80001520:	284080e7          	jalr	644(ra) # 800027a0 <_Z12printIntegerm>
        printString("\n");
    80001524:	00004517          	auipc	a0,0x4
    80001528:	b9450513          	addi	a0,a0,-1132 # 800050b8 <CONSOLE_STATUS+0xa8>
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	20c080e7          	jalr	524(ra) # 80002738 <_Z11printStringPKc>
    for(; i<6; i++){
    80001534:	0014849b          	addiw	s1,s1,1
    80001538:	0ff4f493          	andi	s1,s1,255
    8000153c:	00500793          	li	a5,5
    80001540:	fc97f4e3          	bgeu	a5,s1,80001508 <_Z11workerBodyCv+0xe8>
    }

    TCB::running->setFinished(true);
    80001544:	00100593          	li	a1,1
    80001548:	00004797          	auipc	a5,0x4
    8000154c:	4707b783          	ld	a5,1136(a5) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001550:	0007b503          	ld	a0,0(a5)
    80001554:	00001097          	auipc	ra,0x1
    80001558:	b34080e7          	jalr	-1228(ra) # 80002088 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    8000155c:	00001097          	auipc	ra,0x1
    80001560:	c10080e7          	jalr	-1008(ra) # 8000216c <_ZN3TCB5yieldEv>
}
    80001564:	01813083          	ld	ra,24(sp)
    80001568:	01013403          	ld	s0,16(sp)
    8000156c:	00813483          	ld	s1,8(sp)
    80001570:	00013903          	ld	s2,0(sp)
    80001574:	02010113          	addi	sp,sp,32
    80001578:	00008067          	ret

000000008000157c <_Z11workerBodyDv>:

void workerBodyD(){
    8000157c:	fe010113          	addi	sp,sp,-32
    80001580:	00113c23          	sd	ra,24(sp)
    80001584:	00813823          	sd	s0,16(sp)
    80001588:	00913423          	sd	s1,8(sp)
    8000158c:	01213023          	sd	s2,0(sp)
    80001590:	02010413          	addi	s0,sp,32
    uint8 i=10;
    80001594:	00a00493          	li	s1,10
    80001598:	0380006f          	j	800015d0 <_Z11workerBodyDv+0x54>
    for(; i<13; i++){
        printString("D: i=");
    8000159c:	00004517          	auipc	a0,0x4
    800015a0:	ac450513          	addi	a0,a0,-1340 # 80005060 <CONSOLE_STATUS+0x50>
    800015a4:	00001097          	auipc	ra,0x1
    800015a8:	194080e7          	jalr	404(ra) # 80002738 <_Z11printStringPKc>
        printInteger(i);
    800015ac:	00048513          	mv	a0,s1
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	1f0080e7          	jalr	496(ra) # 800027a0 <_Z12printIntegerm>
        printString("\n");
    800015b8:	00004517          	auipc	a0,0x4
    800015bc:	b0050513          	addi	a0,a0,-1280 # 800050b8 <CONSOLE_STATUS+0xa8>
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	178080e7          	jalr	376(ra) # 80002738 <_Z11printStringPKc>
    for(; i<13; i++){
    800015c8:	0014849b          	addiw	s1,s1,1
    800015cc:	0ff4f493          	andi	s1,s1,255
    800015d0:	00c00793          	li	a5,12
    800015d4:	fc97f4e3          	bgeu	a5,s1,8000159c <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    800015d8:	00004517          	auipc	a0,0x4
    800015dc:	a9050513          	addi	a0,a0,-1392 # 80005068 <CONSOLE_STATUS+0x58>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	158080e7          	jalr	344(ra) # 80002738 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015e8:	00500313          	li	t1,5
    TCB::yield();
    800015ec:	00001097          	auipc	ra,0x1
    800015f0:	b80080e7          	jalr	-1152(ra) # 8000216c <_ZN3TCB5yieldEv>

    uint64 result=fibonacci(23);
    800015f4:	01700513          	li	a0,23
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	c88080e7          	jalr	-888(ra) # 80001280 <_ZL9fibonaccim>
    80001600:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001604:	00004517          	auipc	a0,0x4
    80001608:	a7450513          	addi	a0,a0,-1420 # 80005078 <CONSOLE_STATUS+0x68>
    8000160c:	00001097          	auipc	ra,0x1
    80001610:	12c080e7          	jalr	300(ra) # 80002738 <_Z11printStringPKc>
    printInteger(result);
    80001614:	00090513          	mv	a0,s2
    80001618:	00001097          	auipc	ra,0x1
    8000161c:	188080e7          	jalr	392(ra) # 800027a0 <_Z12printIntegerm>
    printString("\n");
    80001620:	00004517          	auipc	a0,0x4
    80001624:	a9850513          	addi	a0,a0,-1384 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	110080e7          	jalr	272(ra) # 80002738 <_Z11printStringPKc>
    80001630:	0380006f          	j	80001668 <_Z11workerBodyDv+0xec>

    for(; i<16; i++){
        printString("B: i=");
    80001634:	00004517          	auipc	a0,0x4
    80001638:	9f450513          	addi	a0,a0,-1548 # 80005028 <CONSOLE_STATUS+0x18>
    8000163c:	00001097          	auipc	ra,0x1
    80001640:	0fc080e7          	jalr	252(ra) # 80002738 <_Z11printStringPKc>
        printInteger(i);
    80001644:	00048513          	mv	a0,s1
    80001648:	00001097          	auipc	ra,0x1
    8000164c:	158080e7          	jalr	344(ra) # 800027a0 <_Z12printIntegerm>
        printString("\n");
    80001650:	00004517          	auipc	a0,0x4
    80001654:	a6850513          	addi	a0,a0,-1432 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	0e0080e7          	jalr	224(ra) # 80002738 <_Z11printStringPKc>
    for(; i<16; i++){
    80001660:	0014849b          	addiw	s1,s1,1
    80001664:	0ff4f493          	andi	s1,s1,255
    80001668:	00f00793          	li	a5,15
    8000166c:	fc97f4e3          	bgeu	a5,s1,80001634 <_Z11workerBodyDv+0xb8>
    }

    TCB::running->setFinished(true);
    80001670:	00100593          	li	a1,1
    80001674:	00004797          	auipc	a5,0x4
    80001678:	3447b783          	ld	a5,836(a5) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000167c:	0007b503          	ld	a0,0(a5)
    80001680:	00001097          	auipc	ra,0x1
    80001684:	a08080e7          	jalr	-1528(ra) # 80002088 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	ae4080e7          	jalr	-1308(ra) # 8000216c <_ZN3TCB5yieldEv>
    80001690:	01813083          	ld	ra,24(sp)
    80001694:	01013403          	ld	s0,16(sp)
    80001698:	00813483          	ld	s1,8(sp)
    8000169c:	00013903          	ld	s2,0(sp)
    800016a0:	02010113          	addi	sp,sp,32
    800016a4:	00008067          	ret

00000000800016a8 <_ZN5RiscV10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/MemoryAllocation.hpp"


void RiscV::popSppSpie() {
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00813423          	sd	s0,8(sp)
    800016b0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800016b4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800016b8:	10200073          	sret
}
    800016bc:	00813403          	ld	s0,8(sp)
    800016c0:	01010113          	addi	sp,sp,16
    800016c4:	00008067          	ret

00000000800016c8 <_ZN5RiscV20handleSupervisorTrapEv>:

void RiscV::handleSupervisorTrap() {
    800016c8:	fd010113          	addi	sp,sp,-48
    800016cc:	02113423          	sd	ra,40(sp)
    800016d0:	02813023          	sd	s0,32(sp)
    800016d4:	03010413          	addi	s0,sp,48
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    800016d8:	142027f3          	csrr	a5,scause
    800016dc:	fcf43c23          	sd	a5,-40(s0)
    return scause;
    800016e0:	fd843703          	ld	a4,-40(s0)

}

inline uint64 RiscV::r_sepc(){
    uint64  sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800016e4:	141027f3          	csrr	a5,sepc
    //__asm__ volatile("sd a6, %0" : "=m"(a7));
    uint64 sysCallNr;
    size_t size;
    void* ptr;
    uint64 scause = r_scause(); //ovde je scause 922337203684239523 kada drugi put prodje?
    volatile uint64 sepc = r_sepc() + 4; //OVDE SE POTPUNO PROMENI FMEM_HEAD na neke lude cifre??? <- ovo se ne desava kada izbrisem volatile, ali onda ne radi prekidna rutina???
    800016e8:	00478793          	addi	a5,a5,4
    800016ec:	fef43423          	sd	a5,-24(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64  sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    800016f0:	100027f3          	csrr	a5,sstatus
    volatile uint64 sstatus = r_sstatus();
    800016f4:	fef43023          	sd	a5,-32(s0)
    __asm__ volatile("mv %[sysCallNr], a0" : [sysCallNr] "=r"(sysCallNr));
    800016f8:	00050693          	mv	a3,a0
    if (scause == 0x000000000000009UL){
    800016fc:	00900793          	li	a5,9
    80001700:	02f70a63          	beq	a4,a5,80001734 <_ZN5RiscV20handleSupervisorTrapEv+0x6c>
        /*TCB::timeSliceCounter = 0;
        TCB::dispatch();*/
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80001704:	fff00793          	li	a5,-1
    80001708:	03f79793          	slli	a5,a5,0x3f
    8000170c:	00178793          	addi	a5,a5,1
    80001710:	26f70863          	beq	a4,a5,80001980 <_ZN5RiscV20handleSupervisorTrapEv+0x2b8>
        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    80001714:	fff00793          	li	a5,-1
    80001718:	03f79793          	slli	a5,a5,0x3f
    8000171c:	00978793          	addi	a5,a5,9
    80001720:	26f70663          	beq	a4,a5,8000198c <_ZN5RiscV20handleSupervisorTrapEv+0x2c4>
        //print (scause)
        //print sepc
        //print sval

    }
    80001724:	02813083          	ld	ra,40(sp)
    80001728:	02013403          	ld	s0,32(sp)
    8000172c:	03010113          	addi	sp,sp,48
    80001730:	00008067          	ret
        if (sysCallNr == 0x01UL) {
    80001734:	00100793          	li	a5,1
    80001738:	02f68063          	beq	a3,a5,80001758 <_ZN5RiscV20handleSupervisorTrapEv+0x90>
        } else if (sysCallNr == 0x02UL) {
    8000173c:	00200793          	li	a5,2
    80001740:	12f68463          	beq	a3,a5,80001868 <_ZN5RiscV20handleSupervisorTrapEv+0x1a0>
        w_sstatus(sstatus);
    80001744:	fe043783          	ld	a5,-32(s0)
    return sstatus;
}

inline void RiscV::w_sstatus(uint64 volatile sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    80001748:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    8000174c:	fe843783          	ld	a5,-24(s0)
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    80001750:	14179073          	csrw	sepc,a5
}
    80001754:	fd1ff06f          	j	80001724 <_ZN5RiscV20handleSupervisorTrapEv+0x5c>
            __asm__ volatile("mv %[size], a1" : [size] "=r"(size)); //promeni ovaj read, undefined reference
    80001758:	00058793          	mv	a5,a1

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000175c:	05778793          	addi	a5,a5,87
    80001760:	0067d793          	srli	a5,a5,0x6
    80001764:	0007879b          	sext.w	a5,a5
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        //pozovi ovde samo bytes to blocks od size, da ne moras to da radis iz maina
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80001768:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000176c:	00004717          	auipc	a4,0x4
    80001770:	24473703          	ld	a4,580(a4) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001774:	00073703          	ld	a4,0(a4)
    80001778:	0c070863          	beqz	a4,80001848 <_ZN5RiscV20handleSupervisorTrapEv+0x180>
            cur->next=fmem_head->next;
    8000177c:	00004697          	auipc	a3,0x4
    80001780:	2346b683          	ld	a3,564(a3) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001784:	0006b603          	ld	a2,0(a3)
    80001788:	00063603          	ld	a2,0(a2)
    8000178c:	00c73023          	sd	a2,0(a4)
            cur->prev=fmem_head->prev;
    80001790:	0006b683          	ld	a3,0(a3)
    80001794:	0086b583          	ld	a1,8(a3)
    80001798:	00b73423          	sd	a1,8(a4)
            if (cur->size<size) continue;
    8000179c:	01073683          	ld	a3,16(a4)
    800017a0:	02f6e663          	bltu	a3,a5,800017cc <_ZN5RiscV20handleSupervisorTrapEv+0x104>
            if (cur->size-size<=sizeof(FreeMem)){
    800017a4:	40f686b3          	sub	a3,a3,a5
    800017a8:	01800513          	li	a0,24
    800017ac:	02d56c63          	bltu	a0,a3,800017e4 <_ZN5RiscV20handleSupervisorTrapEv+0x11c>
                if (cur->prev) cur->prev->next = cur->next;
    800017b0:	02058263          	beqz	a1,800017d4 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
    800017b4:	00c5b023          	sd	a2,0(a1)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    800017b8:	00073783          	ld	a5,0(a4)
    800017bc:	08078663          	beqz	a5,80001848 <_ZN5RiscV20handleSupervisorTrapEv+0x180>
    800017c0:	00873683          	ld	a3,8(a4)
    800017c4:	00d7b423          	sd	a3,8(a5)
                return cur;
    800017c8:	0800006f          	j	80001848 <_ZN5RiscV20handleSupervisorTrapEv+0x180>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800017cc:	00060713          	mv	a4,a2
    800017d0:	fa9ff06f          	j	80001778 <_ZN5RiscV20handleSupervisorTrapEv+0xb0>
                else fmem_head = cur->next;
    800017d4:	00004797          	auipc	a5,0x4
    800017d8:	1dc7b783          	ld	a5,476(a5) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800017dc:	00c7b023          	sd	a2,0(a5)
    800017e0:	fd9ff06f          	j	800017b8 <_ZN5RiscV20handleSupervisorTrapEv+0xf0>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    800017e4:	00f706b3          	add	a3,a4,a5
                newfrgm->prev=nullptr;
    800017e8:	0006b423          	sd	zero,8(a3)
                newfrgm->next=nullptr;
    800017ec:	0006b023          	sd	zero,0(a3)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur->prev) cur->prev->next = newfrgm;
    800017f0:	00873603          	ld	a2,8(a4)
    800017f4:	06060063          	beqz	a2,80001854 <_ZN5RiscV20handleSupervisorTrapEv+0x18c>
    800017f8:	00d63023          	sd	a3,0(a2)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur->next) cur->next->prev = newfrgm;
    800017fc:	00073603          	ld	a2,0(a4)
    80001800:	00060463          	beqz	a2,80001808 <_ZN5RiscV20handleSupervisorTrapEv+0x140>
    80001804:	00d63423          	sd	a3,8(a2)
                newfrgm->prev = cur->prev;
    80001808:	00873603          	ld	a2,8(a4)
    8000180c:	00c6b423          	sd	a2,8(a3)
                newfrgm->next = cur->next;
    80001810:	00073583          	ld	a1,0(a4)
    80001814:	00b6b023          	sd	a1,0(a3)
                newfrgm->size = cur->size-size;
    80001818:	01073703          	ld	a4,16(a4)
    8000181c:	40f707b3          	sub	a5,a4,a5
    80001820:	00f6b823          	sd	a5,16(a3)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001824:	0c068713          	addi	a4,a3,192
    80001828:	00004597          	auipc	a1,0x4
    8000182c:	1885b583          	ld	a1,392(a1) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001830:	00e5b023          	sd	a4,0(a1)
                fmem_head->next=newfrgm->next;
    80001834:	0006b583          	ld	a1,0(a3)
    80001838:	0cb6b023          	sd	a1,192(a3)
                fmem_head->prev=newfrgm->prev;
    8000183c:	0cc6b423          	sd	a2,200(a3)
                fmem_head->size=newfrgm->size;
    80001840:	0cf6b823          	sd	a5,208(a3)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001844:	00068713          	mv	a4,a3
            __asm__ volatile("mv a1, %0": : [pointer] "r"(pointer) );
    80001848:	00070593          	mv	a1,a4
            __asm__ volatile("sd a1, 88(s0)");
    8000184c:	04b43c23          	sd	a1,88(s0)
    80001850:	ef5ff06f          	j	80001744 <_ZN5RiscV20handleSupervisorTrapEv+0x7c>
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001854:	0c068613          	addi	a2,a3,192
    80001858:	00004597          	auipc	a1,0x4
    8000185c:	1585b583          	ld	a1,344(a1) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001860:	00c5b023          	sd	a2,0(a1)
    80001864:	f99ff06f          	j	800017fc <_ZN5RiscV20handleSupervisorTrapEv+0x134>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    80001868:	00058713          	mv	a4,a1
        if(!fmem_head || ptr < (char*)fmem_head)
    8000186c:	00004797          	auipc	a5,0x4
    80001870:	1447b783          	ld	a5,324(a5) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001874:	0007b783          	ld	a5,0(a5)
    80001878:	00078e63          	beqz	a5,80001894 <_ZN5RiscV20handleSupervisorTrapEv+0x1cc>
    8000187c:	02f76063          	bltu	a4,a5,8000189c <_ZN5RiscV20handleSupervisorTrapEv+0x1d4>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001880:	00078693          	mv	a3,a5
    80001884:	0007b783          	ld	a5,0(a5)
    80001888:	00f70c63          	beq	a4,a5,800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
    8000188c:	fee7eae3          	bltu	a5,a4,80001880 <_ZN5RiscV20handleSupervisorTrapEv+0x1b8>
    80001890:	0100006f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
            cur=nullptr;
    80001894:	00078693          	mv	a3,a5
    80001898:	0080006f          	j	800018a0 <_ZN5RiscV20handleSupervisorTrapEv+0x1d8>
    8000189c:	00000693          	li	a3,0
                newSeg->next=nullptr;
    800018a0:	00073023          	sd	zero,0(a4)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    800018a4:	04000793          	li	a5,64
    800018a8:	00f73823          	sd	a5,16(a4)
                newSeg->prev=cur;
    800018ac:	00d73423          	sd	a3,8(a4)
                if(cur) {
    800018b0:	06068263          	beqz	a3,80001914 <_ZN5RiscV20handleSupervisorTrapEv+0x24c>
                    newSeg->next = cur->next;
    800018b4:	0006b783          	ld	a5,0(a3)
    800018b8:	00f73023          	sd	a5,0(a4)
                if(newSeg->next) {
    800018bc:	00073783          	ld	a5,0(a4)
    800018c0:	00078463          	beqz	a5,800018c8 <_ZN5RiscV20handleSupervisorTrapEv+0x200>
                    newSeg->next->prev=newSeg;
    800018c4:	00e7b423          	sd	a4,8(a5)
                if (cur) {
    800018c8:	06068063          	beqz	a3,80001928 <_ZN5RiscV20handleSupervisorTrapEv+0x260>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    800018cc:	00e6b023          	sd	a4,0(a3)
        if (!curr) return;
    800018d0:	00070c63          	beqz	a4,800018e8 <_ZN5RiscV20handleSupervisorTrapEv+0x220>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800018d4:	00073783          	ld	a5,0(a4)
    800018d8:	00078863          	beqz	a5,800018e8 <_ZN5RiscV20handleSupervisorTrapEv+0x220>
    800018dc:	01073603          	ld	a2,16(a4)
    800018e0:	00c705b3          	add	a1,a4,a2
    800018e4:	04b78a63          	beq	a5,a1,80001938 <_ZN5RiscV20handleSupervisorTrapEv+0x270>
        if (!curr) return;
    800018e8:	00068c63          	beqz	a3,80001900 <_ZN5RiscV20handleSupervisorTrapEv+0x238>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800018ec:	0006b783          	ld	a5,0(a3)
    800018f0:	00078863          	beqz	a5,80001900 <_ZN5RiscV20handleSupervisorTrapEv+0x238>
    800018f4:	0106b603          	ld	a2,16(a3)
    800018f8:	00c685b3          	add	a1,a3,a2
    800018fc:	04b78e63          	beq	a5,a1,80001958 <_ZN5RiscV20handleSupervisorTrapEv+0x290>
            if(newSeg==nullptr){
    80001900:	06070c63          	beqz	a4,80001978 <_ZN5RiscV20handleSupervisorTrapEv+0x2b0>
            }else{return 0;}
    80001904:	00000793          	li	a5,0
            __asm__ volatile("mv a1, %0": : [ret] "r"(ret));
    80001908:	00078593          	mv	a1,a5
            __asm__ volatile("sd a1, 88(s0)");
    8000190c:	04b43c23          	sd	a1,88(s0)
    80001910:	e35ff06f          	j	80001744 <_ZN5RiscV20handleSupervisorTrapEv+0x7c>
                    newSeg->next = fmem_head;
    80001914:	00004797          	auipc	a5,0x4
    80001918:	09c7b783          	ld	a5,156(a5) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000191c:	0007b783          	ld	a5,0(a5)
    80001920:	00f73023          	sd	a5,0(a4)
    80001924:	f99ff06f          	j	800018bc <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
                    fmem_head = newSeg;
    80001928:	00004797          	auipc	a5,0x4
    8000192c:	0887b783          	ld	a5,136(a5) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001930:	00e7b023          	sd	a4,0(a5)
    80001934:	f9dff06f          	j	800018d0 <_ZN5RiscV20handleSupervisorTrapEv+0x208>
            curr->size += curr->next->size;
    80001938:	0107b583          	ld	a1,16(a5)
    8000193c:	00b60633          	add	a2,a2,a1
    80001940:	00c73823          	sd	a2,16(a4)
            curr->next = curr->next->next;
    80001944:	0007b783          	ld	a5,0(a5)
    80001948:	00f73023          	sd	a5,0(a4)
            if (curr->next) curr->next->prev = curr;
    8000194c:	f8078ee3          	beqz	a5,800018e8 <_ZN5RiscV20handleSupervisorTrapEv+0x220>
    80001950:	00e7b423          	sd	a4,8(a5)
    80001954:	f95ff06f          	j	800018e8 <_ZN5RiscV20handleSupervisorTrapEv+0x220>
            curr->size += curr->next->size;
    80001958:	0107b583          	ld	a1,16(a5)
    8000195c:	00b60633          	add	a2,a2,a1
    80001960:	00c6b823          	sd	a2,16(a3)
            curr->next = curr->next->next;
    80001964:	0007b783          	ld	a5,0(a5)
    80001968:	00f6b023          	sd	a5,0(a3)
            if (curr->next) curr->next->prev = curr;
    8000196c:	f8078ae3          	beqz	a5,80001900 <_ZN5RiscV20handleSupervisorTrapEv+0x238>
    80001970:	00d7b423          	sd	a3,8(a5)
    80001974:	f8dff06f          	j	80001900 <_ZN5RiscV20handleSupervisorTrapEv+0x238>
                return -1;
    80001978:	fff00793          	li	a5,-1
    8000197c:	f8dff06f          	j	80001908 <_ZN5RiscV20handleSupervisorTrapEv+0x240>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001980:	00200793          	li	a5,2
    80001984:	1447b073          	csrc	sip,a5
}
    80001988:	d9dff06f          	j	80001724 <_ZN5RiscV20handleSupervisorTrapEv+0x5c>
        console_handler();
    8000198c:	00003097          	auipc	ra,0x3
    80001990:	004080e7          	jalr	4(ra) # 80004990 <console_handler>
    80001994:	d91ff06f          	j	80001724 <_ZN5RiscV20handleSupervisorTrapEv+0x5c>

0000000080001998 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80001998:	ff010113          	addi	sp,sp,-16
    8000199c:	00813423          	sd	s0,8(sp)
    800019a0:	01010413          	addi	s0,sp,16
    800019a4:	00100793          	li	a5,1
    800019a8:	00f50863          	beq	a0,a5,800019b8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800019ac:	00813403          	ld	s0,8(sp)
    800019b0:	01010113          	addi	sp,sp,16
    800019b4:	00008067          	ret
    800019b8:	000107b7          	lui	a5,0x10
    800019bc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800019c0:	fef596e3          	bne	a1,a5,800019ac <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    800019c4:	00004797          	auipc	a5,0x4
    800019c8:	05c78793          	addi	a5,a5,92 # 80005a20 <_ZN9Scheduler19readyCoroutineQueueE>
    800019cc:	0007b023          	sd	zero,0(a5)
    800019d0:	0007b423          	sd	zero,8(a5)
    800019d4:	fd9ff06f          	j	800019ac <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800019d8 <_ZN9Scheduler3getEv>:
{
    800019d8:	fe010113          	addi	sp,sp,-32
    800019dc:	00113c23          	sd	ra,24(sp)
    800019e0:	00813823          	sd	s0,16(sp)
    800019e4:	00913423          	sd	s1,8(sp)
    800019e8:	02010413          	addi	s0,sp,32
            head=tail=elem;
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    800019ec:	00004517          	auipc	a0,0x4
    800019f0:	03453503          	ld	a0,52(a0) # 80005a20 <_ZN9Scheduler19readyCoroutineQueueE>
    800019f4:	04050263          	beqz	a0,80001a38 <_ZN9Scheduler3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    800019f8:	00853783          	ld	a5,8(a0)
    800019fc:	00004717          	auipc	a4,0x4
    80001a00:	02f73223          	sd	a5,36(a4) # 80005a20 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80001a04:	02078463          	beqz	a5,80001a2c <_ZN9Scheduler3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    80001a08:	00053483          	ld	s1,0(a0)
        delete elem;
    80001a0c:	00001097          	auipc	ra,0x1
    80001a10:	a94080e7          	jalr	-1388(ra) # 800024a0 <_ZdlPv>
}
    80001a14:	00048513          	mv	a0,s1
    80001a18:	01813083          	ld	ra,24(sp)
    80001a1c:	01013403          	ld	s0,16(sp)
    80001a20:	00813483          	ld	s1,8(sp)
    80001a24:	02010113          	addi	sp,sp,32
    80001a28:	00008067          	ret
            tail = 0;
    80001a2c:	00004797          	auipc	a5,0x4
    80001a30:	fe07be23          	sd	zero,-4(a5) # 80005a28 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a34:	fd5ff06f          	j	80001a08 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80001a38:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80001a3c:	fd9ff06f          	j	80001a14 <_ZN9Scheduler3getEv+0x3c>

0000000080001a40 <_ZN9Scheduler3putEP3TCB>:
{
    80001a40:	fe010113          	addi	sp,sp,-32
    80001a44:	00113c23          	sd	ra,24(sp)
    80001a48:	00813823          	sd	s0,16(sp)
    80001a4c:	00913423          	sd	s1,8(sp)
    80001a50:	02010413          	addi	s0,sp,32
    80001a54:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001a58:	01000513          	li	a0,16
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	814080e7          	jalr	-2028(ra) # 80002270 <_Znwm>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    80001a64:	00953023          	sd	s1,0(a0)
    80001a68:	00053423          	sd	zero,8(a0)
        if (tail){
    80001a6c:	00004797          	auipc	a5,0x4
    80001a70:	fbc7b783          	ld	a5,-68(a5) # 80005a28 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a74:	02078263          	beqz	a5,80001a98 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next=elem;
    80001a78:	00a7b423          	sd	a0,8(a5)
            tail=elem;
    80001a7c:	00004797          	auipc	a5,0x4
    80001a80:	faa7b623          	sd	a0,-84(a5) # 80005a28 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a84:	01813083          	ld	ra,24(sp)
    80001a88:	01013403          	ld	s0,16(sp)
    80001a8c:	00813483          	ld	s1,8(sp)
    80001a90:	02010113          	addi	sp,sp,32
    80001a94:	00008067          	ret
            head=tail=elem;
    80001a98:	00004797          	auipc	a5,0x4
    80001a9c:	f8878793          	addi	a5,a5,-120 # 80005a20 <_ZN9Scheduler19readyCoroutineQueueE>
    80001aa0:	00a7b423          	sd	a0,8(a5)
    80001aa4:	00a7b023          	sd	a0,0(a5)
    80001aa8:	fddff06f          	j	80001a84 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001aac <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001aac:	ff010113          	addi	sp,sp,-16
    80001ab0:	00113423          	sd	ra,8(sp)
    80001ab4:	00813023          	sd	s0,0(sp)
    80001ab8:	01010413          	addi	s0,sp,16
    80001abc:	000105b7          	lui	a1,0x10
    80001ac0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001ac4:	00100513          	li	a0,1
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	ed0080e7          	jalr	-304(ra) # 80001998 <_Z41__static_initialization_and_destruction_0ii>
    80001ad0:	00813083          	ld	ra,8(sp)
    80001ad4:	00013403          	ld	s0,0(sp)
    80001ad8:	01010113          	addi	sp,sp,16
    80001adc:	00008067          	ret

0000000080001ae0 <_Z10mallocFreev>:

void printInteger(uint64 n){
    printInt(n);
    __putc('\n');
}*/
void mallocFree(){
    80001ae0:	cc010113          	addi	sp,sp,-832
    80001ae4:	32113c23          	sd	ra,824(sp)
    80001ae8:	32813823          	sd	s0,816(sp)
    80001aec:	32913423          	sd	s1,808(sp)
    80001af0:	34010413          	addi	s0,sp,832
    //================PROVERI CEO OVAJ SEGMENT U DEBUGGERU VEOMA DETALJNO, SADA KADA "RADI"=====================
    printString("mallocFree\n");
    80001af4:	00003517          	auipc	a0,0x3
    80001af8:	59450513          	addi	a0,a0,1428 # 80005088 <CONSOLE_STATUS+0x78>
    80001afc:	00001097          	auipc	ra,0x1
    80001b00:	c3c080e7          	jalr	-964(ra) # 80002738 <_Z11printStringPKc>
    constexpr int num = 100;
    void* addrs[num];
    for(int i = 0; i<num;i++){
    80001b04:	00000493          	li	s1,0
    80001b08:	0080006f          	j	80001b10 <_Z10mallocFreev+0x30>
    80001b0c:	0014849b          	addiw	s1,s1,1
    80001b10:	06300793          	li	a5,99
    80001b14:	0497c463          	blt	a5,s1,80001b5c <_Z10mallocFreev+0x7c>
        addrs[i] = mem_alloc(50);
    80001b18:	03200513          	li	a0,50
    80001b1c:	fffff097          	auipc	ra,0xfffff
    80001b20:	708080e7          	jalr	1800(ra) # 80001224 <_Z9mem_allocm>
    80001b24:	00349793          	slli	a5,s1,0x3
    80001b28:	fe040713          	addi	a4,s0,-32
    80001b2c:	00f707b3          	add	a5,a4,a5
    80001b30:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0){
    80001b34:	fc051ce3          	bnez	a0,80001b0c <_Z10mallocFreev+0x2c>
            printString("not ok 1 \n");
    80001b38:	00003517          	auipc	a0,0x3
    80001b3c:	56050513          	addi	a0,a0,1376 # 80005098 <CONSOLE_STATUS+0x88>
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	bf8080e7          	jalr	-1032(ra) # 80002738 <_Z11printStringPKc>
            return;
        }
    }

    printString("ok\n");;
}
    80001b48:	33813083          	ld	ra,824(sp)
    80001b4c:	33013403          	ld	s0,816(sp)
    80001b50:	32813483          	ld	s1,808(sp)
    80001b54:	34010113          	addi	sp,sp,832
    80001b58:	00008067          	ret
    printString("ok 1 \n");
    80001b5c:	00003517          	auipc	a0,0x3
    80001b60:	54c50513          	addi	a0,a0,1356 # 800050a8 <CONSOLE_STATUS+0x98>
    80001b64:	00001097          	auipc	ra,0x1
    80001b68:	bd4080e7          	jalr	-1068(ra) # 80002738 <_Z11printStringPKc>
    for(int i = 0 ; i<num;i+=2){
    80001b6c:	00000493          	li	s1,0
    80001b70:	06300793          	li	a5,99
    80001b74:	0297ce63          	blt	a5,s1,80001bb0 <_Z10mallocFreev+0xd0>
        int retval = mem_free(addrs[i]); //stavi ove sa &
    80001b78:	00349793          	slli	a5,s1,0x3
    80001b7c:	fe040713          	addi	a4,s0,-32
    80001b80:	00f707b3          	add	a5,a4,a5
    80001b84:	ce07b503          	ld	a0,-800(a5)
    80001b88:	fffff097          	auipc	ra,0xfffff
    80001b8c:	6c8080e7          	jalr	1736(ra) # 80001250 <_Z8mem_freePv>
        if(retval != 0){
    80001b90:	00051663          	bnez	a0,80001b9c <_Z10mallocFreev+0xbc>
    for(int i = 0 ; i<num;i+=2){
    80001b94:	0024849b          	addiw	s1,s1,2
    80001b98:	fd9ff06f          	j	80001b70 <_Z10mallocFreev+0x90>
            printString("not ok 2\n");
    80001b9c:	00003517          	auipc	a0,0x3
    80001ba0:	51450513          	addi	a0,a0,1300 # 800050b0 <CONSOLE_STATUS+0xa0>
    80001ba4:	00001097          	auipc	ra,0x1
    80001ba8:	b94080e7          	jalr	-1132(ra) # 80002738 <_Z11printStringPKc>
            return;
    80001bac:	f9dff06f          	j	80001b48 <_Z10mallocFreev+0x68>
    printString("ok 2 \n");
    80001bb0:	00003517          	auipc	a0,0x3
    80001bb4:	51050513          	addi	a0,a0,1296 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	b80080e7          	jalr	-1152(ra) # 80002738 <_Z11printStringPKc>
    for(int i = 0 ; i<num;i+=2){
    80001bc0:	00000493          	li	s1,0
    80001bc4:	0080006f          	j	80001bcc <_Z10mallocFreev+0xec>
    80001bc8:	0024849b          	addiw	s1,s1,2
    80001bcc:	06300793          	li	a5,99
    80001bd0:	0297cc63          	blt	a5,s1,80001c08 <_Z10mallocFreev+0x128>
        addrs[i] = mem_alloc(20);
    80001bd4:	01400513          	li	a0,20
    80001bd8:	fffff097          	auipc	ra,0xfffff
    80001bdc:	64c080e7          	jalr	1612(ra) # 80001224 <_Z9mem_allocm>
    80001be0:	00349793          	slli	a5,s1,0x3
    80001be4:	fe040713          	addi	a4,s0,-32
    80001be8:	00f707b3          	add	a5,a4,a5
    80001bec:	cea7b023          	sd	a0,-800(a5)
        if(addrs[i] == 0){
    80001bf0:	fc051ce3          	bnez	a0,80001bc8 <_Z10mallocFreev+0xe8>
            printString("not ok 3\n");;
    80001bf4:	00003517          	auipc	a0,0x3
    80001bf8:	4d450513          	addi	a0,a0,1236 # 800050c8 <CONSOLE_STATUS+0xb8>
    80001bfc:	00001097          	auipc	ra,0x1
    80001c00:	b3c080e7          	jalr	-1220(ra) # 80002738 <_Z11printStringPKc>
            return;
    80001c04:	f45ff06f          	j	80001b48 <_Z10mallocFreev+0x68>
    printString("ok 3 \n");
    80001c08:	00003517          	auipc	a0,0x3
    80001c0c:	4d050513          	addi	a0,a0,1232 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001c10:	00001097          	auipc	ra,0x1
    80001c14:	b28080e7          	jalr	-1240(ra) # 80002738 <_Z11printStringPKc>
    for(int i = 0; i<num;i++){
    80001c18:	00000493          	li	s1,0
    80001c1c:	06300793          	li	a5,99
    80001c20:	0297ce63          	blt	a5,s1,80001c5c <_Z10mallocFreev+0x17c>
        int retval = mem_free(addrs[i]);
    80001c24:	00349793          	slli	a5,s1,0x3
    80001c28:	fe040713          	addi	a4,s0,-32
    80001c2c:	00f707b3          	add	a5,a4,a5
    80001c30:	ce07b503          	ld	a0,-800(a5)
    80001c34:	fffff097          	auipc	ra,0xfffff
    80001c38:	61c080e7          	jalr	1564(ra) # 80001250 <_Z8mem_freePv>
        if(retval != 0){
    80001c3c:	00051663          	bnez	a0,80001c48 <_Z10mallocFreev+0x168>
    for(int i = 0; i<num;i++){
    80001c40:	0014849b          	addiw	s1,s1,1
    80001c44:	fd9ff06f          	j	80001c1c <_Z10mallocFreev+0x13c>
            printString("not ok 4\n");;
    80001c48:	00003517          	auipc	a0,0x3
    80001c4c:	49850513          	addi	a0,a0,1176 # 800050e0 <CONSOLE_STATUS+0xd0>
    80001c50:	00001097          	auipc	ra,0x1
    80001c54:	ae8080e7          	jalr	-1304(ra) # 80002738 <_Z11printStringPKc>
            return;
    80001c58:	ef1ff06f          	j	80001b48 <_Z10mallocFreev+0x68>
    printString("ok\n");;
    80001c5c:	00003517          	auipc	a0,0x3
    80001c60:	49450513          	addi	a0,a0,1172 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	ad4080e7          	jalr	-1324(ra) # 80002738 <_Z11printStringPKc>
    80001c6c:	eddff06f          	j	80001b48 <_Z10mallocFreev+0x68>

0000000080001c70 <_Z9bigMallocv>:


void bigMalloc(){
    80001c70:	ff010113          	addi	sp,sp,-16
    80001c74:	00113423          	sd	ra,8(sp)
    80001c78:	00813023          	sd	s0,0(sp)
    80001c7c:	01010413          	addi	s0,sp,16
    printString("big Malloc\n");;
    80001c80:	00003517          	auipc	a0,0x3
    80001c84:	47850513          	addi	a0,a0,1144 # 800050f8 <CONSOLE_STATUS+0xe8>
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	ab0080e7          	jalr	-1360(ra) # 80002738 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c90:	00004797          	auipc	a5,0x4
    80001c94:	d307b783          	ld	a5,-720(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001c98:	0007b503          	ld	a0,0(a5)
    80001c9c:	00004797          	auipc	a5,0x4
    80001ca0:	cf47b783          	ld	a5,-780(a5) # 80005990 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ca4:	0007b783          	ld	a5,0(a5)
    80001ca8:	40f50533          	sub	a0,a0,a5
    void* p = mem_alloc(x);
    80001cac:	06450513          	addi	a0,a0,100
    80001cb0:	fffff097          	auipc	ra,0xfffff
    80001cb4:	574080e7          	jalr	1396(ra) # 80001224 <_Z9mem_allocm>
    if(p == 0) printString("ok\n");
    80001cb8:	02050263          	beqz	a0,80001cdc <_Z9bigMallocv+0x6c>
    else printString("not ok\n");
    80001cbc:	00003517          	auipc	a0,0x3
    80001cc0:	44c50513          	addi	a0,a0,1100 # 80005108 <CONSOLE_STATUS+0xf8>
    80001cc4:	00001097          	auipc	ra,0x1
    80001cc8:	a74080e7          	jalr	-1420(ra) # 80002738 <_Z11printStringPKc>
}
    80001ccc:	00813083          	ld	ra,8(sp)
    80001cd0:	00013403          	ld	s0,0(sp)
    80001cd4:	01010113          	addi	sp,sp,16
    80001cd8:	00008067          	ret
    if(p == 0) printString("ok\n");
    80001cdc:	00003517          	auipc	a0,0x3
    80001ce0:	41450513          	addi	a0,a0,1044 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001ce4:	00001097          	auipc	ra,0x1
    80001ce8:	a54080e7          	jalr	-1452(ra) # 80002738 <_Z11printStringPKc>
    80001cec:	fe1ff06f          	j	80001ccc <_Z9bigMallocv+0x5c>

0000000080001cf0 <_Z17lotOfSmallMallocsv>:
    int a;
};



void lotOfSmallMallocs(){
    80001cf0:	fd010113          	addi	sp,sp,-48
    80001cf4:	02113423          	sd	ra,40(sp)
    80001cf8:	02813023          	sd	s0,32(sp)
    80001cfc:	00913c23          	sd	s1,24(sp)
    80001d00:	01213823          	sd	s2,16(sp)
    80001d04:	01313423          	sd	s3,8(sp)
    80001d08:	03010413          	addi	s0,sp,48
    printString("lotOfSmallMallocs\n");;
    80001d0c:	00003517          	auipc	a0,0x3
    80001d10:	40450513          	addi	a0,a0,1028 # 80005110 <CONSOLE_STATUS+0x100>
    80001d14:	00001097          	auipc	ra,0x1
    80001d18:	a24080e7          	jalr	-1500(ra) # 80002738 <_Z11printStringPKc>
    int cnt = 0;
    int sum = 0;
    int N = 100000;
    int X = 10;
    for(int i = 0; i<N;i++) {
    80001d1c:	00000493          	li	s1,0
    int sum = 0;
    80001d20:	00000993          	li	s3,0
    int cnt = 0;
    80001d24:	00000913          	li	s2,0
    80001d28:	0180006f          	j	80001d40 <_Z17lotOfSmallMallocsv+0x50>
        Test *t = (Test *) mem_alloc(sizeof(Test));
        if(t == 0)break;
        t->a = X;
    80001d2c:	00a00793          	li	a5,10
    80001d30:	00f52023          	sw	a5,0(a0)
        sum+=X;
    80001d34:	00a9899b          	addiw	s3,s3,10
        cnt++;
    80001d38:	0019091b          	addiw	s2,s2,1
    for(int i = 0; i<N;i++) {
    80001d3c:	0014849b          	addiw	s1,s1,1
    80001d40:	000187b7          	lui	a5,0x18
    80001d44:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    80001d48:	0097ca63          	blt	a5,s1,80001d5c <_Z17lotOfSmallMallocsv+0x6c>
        Test *t = (Test *) mem_alloc(sizeof(Test));
    80001d4c:	00400513          	li	a0,4
    80001d50:	fffff097          	auipc	ra,0xfffff
    80001d54:	4d4080e7          	jalr	1236(ra) # 80001224 <_Z9mem_allocm>
        if(t == 0)break;
    80001d58:	fc051ae3          	bnez	a0,80001d2c <_Z17lotOfSmallMallocsv+0x3c>
    }
    printInteger(cnt);
    80001d5c:	00090513          	mv	a0,s2
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	a40080e7          	jalr	-1472(ra) # 800027a0 <_Z12printIntegerm>
    printString("\n");
    80001d68:	00003517          	auipc	a0,0x3
    80001d6c:	35050513          	addi	a0,a0,848 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	9c8080e7          	jalr	-1592(ra) # 80002738 <_Z11printStringPKc>
    if(sum == X*cnt) printString("ok\n");
    80001d78:	0029179b          	slliw	a5,s2,0x2
    80001d7c:	0127893b          	addw	s2,a5,s2
    80001d80:	0019191b          	slliw	s2,s2,0x1
    80001d84:	03390863          	beq	s2,s3,80001db4 <_Z17lotOfSmallMallocsv+0xc4>
    else printString("not ok\n");
    80001d88:	00003517          	auipc	a0,0x3
    80001d8c:	38050513          	addi	a0,a0,896 # 80005108 <CONSOLE_STATUS+0xf8>
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	9a8080e7          	jalr	-1624(ra) # 80002738 <_Z11printStringPKc>
}
    80001d98:	02813083          	ld	ra,40(sp)
    80001d9c:	02013403          	ld	s0,32(sp)
    80001da0:	01813483          	ld	s1,24(sp)
    80001da4:	01013903          	ld	s2,16(sp)
    80001da8:	00813983          	ld	s3,8(sp)
    80001dac:	03010113          	addi	sp,sp,48
    80001db0:	00008067          	ret
    if(sum == X*cnt) printString("ok\n");
    80001db4:	00003517          	auipc	a0,0x3
    80001db8:	33c50513          	addi	a0,a0,828 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001dbc:	00001097          	auipc	ra,0x1
    80001dc0:	97c080e7          	jalr	-1668(ra) # 80002738 <_Z11printStringPKc>
    80001dc4:	fd5ff06f          	j	80001d98 <_Z17lotOfSmallMallocsv+0xa8>

0000000080001dc8 <_Z13stressTestingv>:

void stressTesting(){
    80001dc8:	81010113          	addi	sp,sp,-2032
    80001dcc:	7e113423          	sd	ra,2024(sp)
    80001dd0:	7e813023          	sd	s0,2016(sp)
    80001dd4:	7c913c23          	sd	s1,2008(sp)
    80001dd8:	7d213823          	sd	s2,2000(sp)
    80001ddc:	7d313423          	sd	s3,1992(sp)
    80001de0:	7f010413          	addi	s0,sp,2032
    80001de4:	93010113          	addi	sp,sp,-1744
    printString("stressTesting\n");
    80001de8:	00003517          	auipc	a0,0x3
    80001dec:	34050513          	addi	a0,a0,832 # 80005128 <CONSOLE_STATUS+0x118>
    80001df0:	00001097          	auipc	ra,0x1
    80001df4:	948080e7          	jalr	-1720(ra) # 80002738 <_Z11printStringPKc>
    constexpr int num = 465;
    void* addrs[num];
    for(int i = 0; i<num;i++){
    80001df8:	00000493          	li	s1,0
    80001dfc:	0080006f          	j	80001e04 <_Z13stressTestingv+0x3c>
    80001e00:	0014849b          	addiw	s1,s1,1
    80001e04:	1d000793          	li	a5,464
    80001e08:	0497ce63          	blt	a5,s1,80001e64 <_Z13stressTestingv+0x9c>
        addrs[i] = mem_alloc(1);
    80001e0c:	00100513          	li	a0,1
    80001e10:	fffff097          	auipc	ra,0xfffff
    80001e14:	414080e7          	jalr	1044(ra) # 80001224 <_Z9mem_allocm>
    80001e18:	fffff737          	lui	a4,0xfffff
    80001e1c:	00349793          	slli	a5,s1,0x3
    80001e20:	fd040693          	addi	a3,s0,-48
    80001e24:	00e68733          	add	a4,a3,a4
    80001e28:	00f707b3          	add	a5,a4,a5
    80001e2c:	16a7bc23          	sd	a0,376(a5)
        if(addrs[i] == 0){
    80001e30:	fc0518e3          	bnez	a0,80001e00 <_Z13stressTestingv+0x38>
            printString("not ok\n");
    80001e34:	00003517          	auipc	a0,0x3
    80001e38:	2d450513          	addi	a0,a0,724 # 80005108 <CONSOLE_STATUS+0xf8>
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	8fc080e7          	jalr	-1796(ra) # 80002738 <_Z11printStringPKc>
            }
        }
        sz-=10;
    }
    printString("ok\n");;
}
    80001e44:	6d010113          	addi	sp,sp,1744
    80001e48:	7e813083          	ld	ra,2024(sp)
    80001e4c:	7e013403          	ld	s0,2016(sp)
    80001e50:	7d813483          	ld	s1,2008(sp)
    80001e54:	7d013903          	ld	s2,2000(sp)
    80001e58:	7c813983          	ld	s3,1992(sp)
    80001e5c:	7f010113          	addi	sp,sp,2032
    80001e60:	00008067          	ret
    int sz = 5;
    80001e64:	00500913          	li	s2,5
    while(sz > 0){
    80001e68:	15205663          	blez	s2,80001fb4 <_Z13stressTestingv+0x1ec>
        printString("sz:");
    80001e6c:	00003517          	auipc	a0,0x3
    80001e70:	2cc50513          	addi	a0,a0,716 # 80005138 <CONSOLE_STATUS+0x128>
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	8c4080e7          	jalr	-1852(ra) # 80002738 <_Z11printStringPKc>
        printInteger(sz);
    80001e7c:	00090993          	mv	s3,s2
    80001e80:	00090513          	mv	a0,s2
    80001e84:	00001097          	auipc	ra,0x1
    80001e88:	91c080e7          	jalr	-1764(ra) # 800027a0 <_Z12printIntegerm>
        for(int i = 0 ; i<num;i+=2){
    80001e8c:	00000493          	li	s1,0
    80001e90:	1d000793          	li	a5,464
    80001e94:	0897c063          	blt	a5,s1,80001f14 <_Z13stressTestingv+0x14c>
            int retval = mem_free(addrs[i]);
    80001e98:	fffff737          	lui	a4,0xfffff
    80001e9c:	00349793          	slli	a5,s1,0x3
    80001ea0:	fd040693          	addi	a3,s0,-48
    80001ea4:	00e68733          	add	a4,a3,a4
    80001ea8:	00f707b3          	add	a5,a4,a5
    80001eac:	1787b503          	ld	a0,376(a5)
    80001eb0:	fffff097          	auipc	ra,0xfffff
    80001eb4:	3a0080e7          	jalr	928(ra) # 80001250 <_Z8mem_freePv>
            if(retval != 0){
    80001eb8:	02051a63          	bnez	a0,80001eec <_Z13stressTestingv+0x124>
            addrs[i] = mem_alloc(sz*2);
    80001ebc:	0019151b          	slliw	a0,s2,0x1
    80001ec0:	fffff097          	auipc	ra,0xfffff
    80001ec4:	364080e7          	jalr	868(ra) # 80001224 <_Z9mem_allocm>
    80001ec8:	fffff737          	lui	a4,0xfffff
    80001ecc:	00349793          	slli	a5,s1,0x3
    80001ed0:	fd040693          	addi	a3,s0,-48
    80001ed4:	00e68733          	add	a4,a3,a4
    80001ed8:	00f707b3          	add	a5,a4,a5
    80001edc:	16a7bc23          	sd	a0,376(a5)
            if(addrs[i] == 0){
    80001ee0:	02050063          	beqz	a0,80001f00 <_Z13stressTestingv+0x138>
        for(int i = 0 ; i<num;i+=2){
    80001ee4:	0024849b          	addiw	s1,s1,2
    80001ee8:	fa9ff06f          	j	80001e90 <_Z13stressTestingv+0xc8>
                printString("not ok\n");
    80001eec:	00003517          	auipc	a0,0x3
    80001ef0:	21c50513          	addi	a0,a0,540 # 80005108 <CONSOLE_STATUS+0xf8>
    80001ef4:	00001097          	auipc	ra,0x1
    80001ef8:	844080e7          	jalr	-1980(ra) # 80002738 <_Z11printStringPKc>
                return;
    80001efc:	f49ff06f          	j	80001e44 <_Z13stressTestingv+0x7c>
                printString("not ok\n");;
    80001f00:	00003517          	auipc	a0,0x3
    80001f04:	20850513          	addi	a0,a0,520 # 80005108 <CONSOLE_STATUS+0xf8>
    80001f08:	00001097          	auipc	ra,0x1
    80001f0c:	830080e7          	jalr	-2000(ra) # 80002738 <_Z11printStringPKc>
                return;
    80001f10:	f35ff06f          	j	80001e44 <_Z13stressTestingv+0x7c>
        for(int i = 1 ; i<num;i+=2){
    80001f14:	00100493          	li	s1,1
    80001f18:	1d000793          	li	a5,464
    80001f1c:	0897c863          	blt	a5,s1,80001fac <_Z13stressTestingv+0x1e4>
            int retval = mem_free(addrs[i]);
    80001f20:	fffff737          	lui	a4,0xfffff
    80001f24:	00349793          	slli	a5,s1,0x3
    80001f28:	fd040693          	addi	a3,s0,-48
    80001f2c:	00e68733          	add	a4,a3,a4
    80001f30:	00f707b3          	add	a5,a4,a5
    80001f34:	1787b503          	ld	a0,376(a5)
    80001f38:	fffff097          	auipc	ra,0xfffff
    80001f3c:	318080e7          	jalr	792(ra) # 80001250 <_Z8mem_freePv>
            if(retval != 0){
    80001f40:	04051263          	bnez	a0,80001f84 <_Z13stressTestingv+0x1bc>
            printString("alloc\n");
    80001f44:	00003517          	auipc	a0,0x3
    80001f48:	1fc50513          	addi	a0,a0,508 # 80005140 <CONSOLE_STATUS+0x130>
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	7ec080e7          	jalr	2028(ra) # 80002738 <_Z11printStringPKc>
            addrs[i] = mem_alloc(sz);
    80001f54:	00098513          	mv	a0,s3
    80001f58:	fffff097          	auipc	ra,0xfffff
    80001f5c:	2cc080e7          	jalr	716(ra) # 80001224 <_Z9mem_allocm>
    80001f60:	fffff737          	lui	a4,0xfffff
    80001f64:	00349793          	slli	a5,s1,0x3
    80001f68:	fd040693          	addi	a3,s0,-48
    80001f6c:	00e68733          	add	a4,a3,a4
    80001f70:	00f707b3          	add	a5,a4,a5
    80001f74:	16a7bc23          	sd	a0,376(a5)
            if(addrs[i] == 0){
    80001f78:	02050063          	beqz	a0,80001f98 <_Z13stressTestingv+0x1d0>
        for(int i = 1 ; i<num;i+=2){
    80001f7c:	0024849b          	addiw	s1,s1,2
    80001f80:	f99ff06f          	j	80001f18 <_Z13stressTestingv+0x150>
                printString("not ok\n");
    80001f84:	00003517          	auipc	a0,0x3
    80001f88:	18450513          	addi	a0,a0,388 # 80005108 <CONSOLE_STATUS+0xf8>
    80001f8c:	00000097          	auipc	ra,0x0
    80001f90:	7ac080e7          	jalr	1964(ra) # 80002738 <_Z11printStringPKc>
                return;
    80001f94:	eb1ff06f          	j	80001e44 <_Z13stressTestingv+0x7c>
                printString("not ok\n");;
    80001f98:	00003517          	auipc	a0,0x3
    80001f9c:	17050513          	addi	a0,a0,368 # 80005108 <CONSOLE_STATUS+0xf8>
    80001fa0:	00000097          	auipc	ra,0x0
    80001fa4:	798080e7          	jalr	1944(ra) # 80002738 <_Z11printStringPKc>
                return;
    80001fa8:	e9dff06f          	j	80001e44 <_Z13stressTestingv+0x7c>
        sz-=10;
    80001fac:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0){
    80001fb0:	eb9ff06f          	j	80001e68 <_Z13stressTestingv+0xa0>
    printString("ok\n");;
    80001fb4:	00003517          	auipc	a0,0x3
    80001fb8:	13c50513          	addi	a0,a0,316 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001fbc:	00000097          	auipc	ra,0x0
    80001fc0:	77c080e7          	jalr	1916(ra) # 80002738 <_Z11printStringPKc>
    80001fc4:	e81ff06f          	j	80001e44 <_Z13stressTestingv+0x7c>

0000000080001fc8 <main>:

int main(){
    80001fc8:	ff010113          	addi	sp,sp,-16
    80001fcc:	00113423          	sd	ra,8(sp)
    80001fd0:	00813023          	sd	s0,0(sp)
    80001fd4:	01010413          	addi	s0,sp,16
        if (!instance) {
    80001fd8:	00004797          	auipc	a5,0x4
    80001fdc:	9d07b783          	ld	a5,-1584(a5) # 800059a8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001fe0:	0007b783          	ld	a5,0(a5)
    80001fe4:	04078663          	beqz	a5,80002030 <main+0x68>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    80001fe8:	00004797          	auipc	a5,0x4
    80001fec:	9b87b783          	ld	a5,-1608(a5) # 800059a0 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    80001ff0:	10579073          	csrw	stvec,a5
    //printInt(MemoryAllocation::availableMemory());
    printString("\n");
    80001ff4:	00003517          	auipc	a0,0x3
    80001ff8:	0c450513          	addi	a0,a0,196 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	73c080e7          	jalr	1852(ra) # 80002738 <_Z11printStringPKc>
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    stressTesting();
    80002004:	00000097          	auipc	ra,0x0
    80002008:	dc4080e7          	jalr	-572(ra) # 80001dc8 <_Z13stressTestingv>
    //printInt(MemoryAllocation::availableMemory());
    printString("\n");
    8000200c:	00003517          	auipc	a0,0x3
    80002010:	0ac50513          	addi	a0,a0,172 # 800050b8 <CONSOLE_STATUS+0xa8>
    80002014:	00000097          	auipc	ra,0x0
    80002018:	724080e7          	jalr	1828(ra) # 80002738 <_Z11printStringPKc>
    return 0;
    8000201c:	00000513          	li	a0,0
    80002020:	00813083          	ld	ra,8(sp)
    80002024:	00013403          	ld	s0,0(sp)
    80002028:	01010113          	addi	sp,sp,16
    8000202c:	00008067          	ret
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80002030:	00004797          	auipc	a5,0x4
    80002034:	9607b783          	ld	a5,-1696(a5) # 80005990 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002038:	0007b783          	ld	a5,0(a5)
    8000203c:	00004697          	auipc	a3,0x4
    80002040:	9746b683          	ld	a3,-1676(a3) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002044:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80002048:	00004717          	auipc	a4,0x4
    8000204c:	97873703          	ld	a4,-1672(a4) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002050:	00073703          	ld	a4,0(a4)
    80002054:	40f70733          	sub	a4,a4,a5
    80002058:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    8000205c:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80002060:	0006b783          	ld	a5,0(a3)
    80002064:	0007b423          	sd	zero,8(a5)
            return instance;
    80002068:	f81ff06f          	j	80001fe8 <main+0x20>

000000008000206c <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00813423          	sd	s0,8(sp)
    80002074:	01010413          	addi	s0,sp,16
    return finished;
}
    80002078:	02854503          	lbu	a0,40(a0)
    8000207c:	00813403          	ld	s0,8(sp)
    80002080:	01010113          	addi	sp,sp,16
    80002084:	00008067          	ret

0000000080002088 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80002088:	ff010113          	addi	sp,sp,-16
    8000208c:	00813423          	sd	s0,8(sp)
    80002090:	01010413          	addi	s0,sp,16
    TCB::finished = finished;
    80002094:	02b50423          	sb	a1,40(a0)
}
    80002098:	00813403          	ld	s0,8(sp)
    8000209c:	01010113          	addi	sp,sp,16
    800020a0:	00008067          	ret

00000000800020a4 <_ZN3TCB12createThreadEPFvvE>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

TCB* TCB::createThread(TCB::Body body) {
    800020a4:	fe010113          	addi	sp,sp,-32
    800020a8:	00113c23          	sd	ra,24(sp)
    800020ac:	00813823          	sd	s0,16(sp)
    800020b0:	00913423          	sd	s1,8(sp)
    800020b4:	01213023          	sd	s2,0(sp)
    800020b8:	02010413          	addi	s0,sp,32
    800020bc:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    800020c0:	03000513          	li	a0,48
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	1ac080e7          	jalr	428(ra) # 80002270 <_Znwm>
    800020cc:	00050493          	mv	s1,a0
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[1024] : 0
                    }
            ),
            timeSlice(timeSlice),
            finished(false) {
    800020d0:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[1024] : nullptr),
    800020d4:	00090a63          	beqz	s2,800020e8 <_ZN3TCB12createThreadEPFvvE+0x44>
    800020d8:	00002537          	lui	a0,0x2
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	2ac080e7          	jalr	684(ra) # 80002388 <_Znam>
    800020e4:	0080006f          	j	800020ec <_ZN3TCB12createThreadEPFvvE+0x48>
    800020e8:	00000513          	li	a0,0
            finished(false) {
    800020ec:	00a4b423          	sd	a0,8(s1)
    800020f0:	00000797          	auipc	a5,0x0
    800020f4:	09878793          	addi	a5,a5,152 # 80002188 <_ZN3TCB13threadWrapperEv>
    800020f8:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[1024] : 0
    800020fc:	02050863          	beqz	a0,8000212c <_ZN3TCB12createThreadEPFvvE+0x88>
    80002100:	000027b7          	lui	a5,0x2
    80002104:	00f507b3          	add	a5,a0,a5
            finished(false) {
    80002108:	00f4bc23          	sd	a5,24(s1)
    8000210c:	00200793          	li	a5,2
    80002110:	02f4b023          	sd	a5,32(s1)
    80002114:	02048423          	sb	zero,40(s1)
        if (body != nullptr) { Scheduler::put(this); }
    80002118:	02090c63          	beqz	s2,80002150 <_ZN3TCB12createThreadEPFvvE+0xac>
    8000211c:	00048513          	mv	a0,s1
    80002120:	00000097          	auipc	ra,0x0
    80002124:	920080e7          	jalr	-1760(ra) # 80001a40 <_ZN9Scheduler3putEP3TCB>
    80002128:	0280006f          	j	80002150 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[1024] : 0
    8000212c:	00000793          	li	a5,0
    80002130:	fd9ff06f          	j	80002108 <_ZN3TCB12createThreadEPFvvE+0x64>
    80002134:	00050913          	mv	s2,a0
    80002138:	00048513          	mv	a0,s1
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	364080e7          	jalr	868(ra) # 800024a0 <_ZdlPv>
    80002144:	00090513          	mv	a0,s2
    80002148:	00005097          	auipc	ra,0x5
    8000214c:	9d0080e7          	jalr	-1584(ra) # 80006b18 <_Unwind_Resume>
}
    80002150:	00048513          	mv	a0,s1
    80002154:	01813083          	ld	ra,24(sp)
    80002158:	01013403          	ld	s0,16(sp)
    8000215c:	00813483          	ld	s1,8(sp)
    80002160:	00013903          	ld	s2,0(sp)
    80002164:	02010113          	addi	sp,sp,32
    80002168:	00008067          	ret

000000008000216c <_ZN3TCB5yieldEv>:

void TCB::yield(){
    8000216c:	ff010113          	addi	sp,sp,-16
    80002170:	00813423          	sd	s0,8(sp)
    80002174:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    80002178:	00000073          	ecall

};
    8000217c:	00813403          	ld	s0,8(sp)
    80002180:	01010113          	addi	sp,sp,16
    80002184:	00008067          	ret

0000000080002188 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80002188:	fe010113          	addi	sp,sp,-32
    8000218c:	00113c23          	sd	ra,24(sp)
    80002190:	00813823          	sd	s0,16(sp)
    80002194:	00913423          	sd	s1,8(sp)
    80002198:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    8000219c:	fffff097          	auipc	ra,0xfffff
    800021a0:	50c080e7          	jalr	1292(ra) # 800016a8 <_ZN5RiscV10popSppSpieEv>
    running->body();
    800021a4:	00004497          	auipc	s1,0x4
    800021a8:	88c48493          	addi	s1,s1,-1908 # 80005a30 <_ZN3TCB7runningE>
    800021ac:	0004b783          	ld	a5,0(s1)
    800021b0:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    800021b4:	000780e7          	jalr	a5
    running->setFinished(true);
    800021b8:	00100593          	li	a1,1
    800021bc:	0004b503          	ld	a0,0(s1)
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	ec8080e7          	jalr	-312(ra) # 80002088 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	fa4080e7          	jalr	-92(ra) # 8000216c <_ZN3TCB5yieldEv>
}
    800021d0:	01813083          	ld	ra,24(sp)
    800021d4:	01013403          	ld	s0,16(sp)
    800021d8:	00813483          	ld	s1,8(sp)
    800021dc:	02010113          	addi	sp,sp,32
    800021e0:	00008067          	ret

00000000800021e4 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800021e4:	fe010113          	addi	sp,sp,-32
    800021e8:	00113c23          	sd	ra,24(sp)
    800021ec:	00813823          	sd	s0,16(sp)
    800021f0:	00913423          	sd	s1,8(sp)
    800021f4:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800021f8:	00004497          	auipc	s1,0x4
    800021fc:	8384b483          	ld	s1,-1992(s1) # 80005a30 <_ZN3TCB7runningE>
    if (!old->isFinished()) {
    80002200:	00048513          	mv	a0,s1
    80002204:	00000097          	auipc	ra,0x0
    80002208:	e68080e7          	jalr	-408(ra) # 8000206c <_ZNK3TCB10isFinishedEv>
    8000220c:	02050c63          	beqz	a0,80002244 <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80002210:	fffff097          	auipc	ra,0xfffff
    80002214:	7c8080e7          	jalr	1992(ra) # 800019d8 <_ZN9Scheduler3getEv>
    80002218:	00004797          	auipc	a5,0x4
    8000221c:	80a7bc23          	sd	a0,-2024(a5) # 80005a30 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002220:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80002224:	01048513          	addi	a0,s1,16
    80002228:	fffff097          	auipc	ra,0xfffff
    8000222c:	fe8080e7          	jalr	-24(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002230:	01813083          	ld	ra,24(sp)
    80002234:	01013403          	ld	s0,16(sp)
    80002238:	00813483          	ld	s1,8(sp)
    8000223c:	02010113          	addi	sp,sp,32
    80002240:	00008067          	ret
        Scheduler::put(old);
    80002244:	00048513          	mv	a0,s1
    80002248:	fffff097          	auipc	ra,0xfffff
    8000224c:	7f8080e7          	jalr	2040(ra) # 80001a40 <_ZN9Scheduler3putEP3TCB>
    80002250:	fc1ff06f          	j	80002210 <_ZN3TCB8dispatchEv+0x2c>

0000000080002254 <_ZN3TCB11thread_exitEv>:

int TCB::thread_exit() {
    80002254:	ff010113          	addi	sp,sp,-16
    80002258:	00813423          	sd	s0,8(sp)
    8000225c:	01010413          	addi	s0,sp,16
    return 0;
}
    80002260:	00000513          	li	a0,0
    80002264:	00813403          	ld	s0,8(sp)
    80002268:	01010113          	addi	sp,sp,16
    8000226c:	00008067          	ret

0000000080002270 <_Znwm>:
#include "../h/MemoryAllocation.hpp"

void *operator new(uint64 n){
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00813423          	sd	s0,8(sp)
    80002278:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    8000227c:	05750793          	addi	a5,a0,87
    80002280:	0067d793          	srli	a5,a5,0x6
    80002284:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80002288:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000228c:	00003717          	auipc	a4,0x3
    80002290:	72473703          	ld	a4,1828(a4) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002294:	00073503          	ld	a0,0(a4)
    80002298:	0c050863          	beqz	a0,80002368 <_Znwm+0xf8>
            cur->next=fmem_head->next;
    8000229c:	00003717          	auipc	a4,0x3
    800022a0:	71473703          	ld	a4,1812(a4) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022a4:	00073683          	ld	a3,0(a4)
    800022a8:	0006b683          	ld	a3,0(a3)
    800022ac:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    800022b0:	00073703          	ld	a4,0(a4)
    800022b4:	00873603          	ld	a2,8(a4)
    800022b8:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    800022bc:	01053703          	ld	a4,16(a0)
    800022c0:	02f76663          	bltu	a4,a5,800022ec <_Znwm+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    800022c4:	40f70733          	sub	a4,a4,a5
    800022c8:	01800593          	li	a1,24
    800022cc:	02e5ec63          	bltu	a1,a4,80002304 <_Znwm+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    800022d0:	02060263          	beqz	a2,800022f4 <_Znwm+0x84>
    800022d4:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    800022d8:	00053783          	ld	a5,0(a0)
    800022dc:	08078663          	beqz	a5,80002368 <_Znwm+0xf8>
    800022e0:	00853703          	ld	a4,8(a0)
    800022e4:	00e7b423          	sd	a4,8(a5)
                return cur;
    800022e8:	0800006f          	j	80002368 <_Znwm+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800022ec:	00068513          	mv	a0,a3
    800022f0:	fa9ff06f          	j	80002298 <_Znwm+0x28>
                else fmem_head = cur->next;
    800022f4:	00003797          	auipc	a5,0x3
    800022f8:	6bc7b783          	ld	a5,1724(a5) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022fc:	00d7b023          	sd	a3,0(a5)
    80002300:	fd9ff06f          	j	800022d8 <_Znwm+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002304:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80002308:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    8000230c:	00073023          	sd	zero,0(a4)
                if (cur->prev) cur->prev->next = newfrgm;
    80002310:	00853683          	ld	a3,8(a0)
    80002314:	06068063          	beqz	a3,80002374 <_Znwm+0x104>
    80002318:	00e6b023          	sd	a4,0(a3)
                if (cur->next) cur->next->prev = newfrgm;
    8000231c:	00053683          	ld	a3,0(a0)
    80002320:	00068463          	beqz	a3,80002328 <_Znwm+0xb8>
    80002324:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002328:	00853603          	ld	a2,8(a0)
    8000232c:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002330:	00053683          	ld	a3,0(a0)
    80002334:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002338:	01053683          	ld	a3,16(a0)
    8000233c:	40f687b3          	sub	a5,a3,a5
    80002340:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80002344:	0c070693          	addi	a3,a4,192
    80002348:	00003597          	auipc	a1,0x3
    8000234c:	6685b583          	ld	a1,1640(a1) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002350:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80002354:	00073583          	ld	a1,0(a4)
    80002358:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    8000235c:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002360:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80002364:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}
    80002368:	00813403          	ld	s0,8(sp)
    8000236c:	01010113          	addi	sp,sp,16
    80002370:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80002374:	0c070693          	addi	a3,a4,192
    80002378:	00003617          	auipc	a2,0x3
    8000237c:	63863603          	ld	a2,1592(a2) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002380:	00d63023          	sd	a3,0(a2)
    80002384:	f99ff06f          	j	8000231c <_Znwm+0xac>

0000000080002388 <_Znam>:

void *operator new[](uint64 n){
    80002388:	ff010113          	addi	sp,sp,-16
    8000238c:	00813423          	sd	s0,8(sp)
    80002390:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80002394:	05750793          	addi	a5,a0,87
    80002398:	0067d793          	srli	a5,a5,0x6
    8000239c:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    800023a0:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800023a4:	00003717          	auipc	a4,0x3
    800023a8:	60c73703          	ld	a4,1548(a4) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023ac:	00073503          	ld	a0,0(a4)
    800023b0:	0c050863          	beqz	a0,80002480 <_Znam+0xf8>
            cur->next=fmem_head->next;
    800023b4:	00003717          	auipc	a4,0x3
    800023b8:	5fc73703          	ld	a4,1532(a4) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023bc:	00073683          	ld	a3,0(a4)
    800023c0:	0006b683          	ld	a3,0(a3)
    800023c4:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    800023c8:	00073703          	ld	a4,0(a4)
    800023cc:	00873603          	ld	a2,8(a4)
    800023d0:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    800023d4:	01053703          	ld	a4,16(a0)
    800023d8:	02f76663          	bltu	a4,a5,80002404 <_Znam+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    800023dc:	40f70733          	sub	a4,a4,a5
    800023e0:	01800593          	li	a1,24
    800023e4:	02e5ec63          	bltu	a1,a4,8000241c <_Znam+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    800023e8:	02060263          	beqz	a2,8000240c <_Znam+0x84>
    800023ec:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    800023f0:	00053783          	ld	a5,0(a0)
    800023f4:	08078663          	beqz	a5,80002480 <_Znam+0xf8>
    800023f8:	00853703          	ld	a4,8(a0)
    800023fc:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002400:	0800006f          	j	80002480 <_Znam+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002404:	00068513          	mv	a0,a3
    80002408:	fa9ff06f          	j	800023b0 <_Znam+0x28>
                else fmem_head = cur->next;
    8000240c:	00003797          	auipc	a5,0x3
    80002410:	5a47b783          	ld	a5,1444(a5) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002414:	00d7b023          	sd	a3,0(a5)
    80002418:	fd9ff06f          	j	800023f0 <_Znam+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    8000241c:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80002420:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002424:	00073023          	sd	zero,0(a4)
                if (cur->prev) cur->prev->next = newfrgm;
    80002428:	00853683          	ld	a3,8(a0)
    8000242c:	06068063          	beqz	a3,8000248c <_Znam+0x104>
    80002430:	00e6b023          	sd	a4,0(a3)
                if (cur->next) cur->next->prev = newfrgm;
    80002434:	00053683          	ld	a3,0(a0)
    80002438:	00068463          	beqz	a3,80002440 <_Znam+0xb8>
    8000243c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002440:	00853603          	ld	a2,8(a0)
    80002444:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002448:	00053683          	ld	a3,0(a0)
    8000244c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80002450:	01053683          	ld	a3,16(a0)
    80002454:	40f687b3          	sub	a5,a3,a5
    80002458:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    8000245c:	0c070693          	addi	a3,a4,192
    80002460:	00003597          	auipc	a1,0x3
    80002464:	5505b583          	ld	a1,1360(a1) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002468:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    8000246c:	00073583          	ld	a1,0(a4)
    80002470:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80002474:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80002478:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    8000247c:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
}
    80002480:	00813403          	ld	s0,8(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    8000248c:	0c070693          	addi	a3,a4,192
    80002490:	00003617          	auipc	a2,0x3
    80002494:	52063603          	ld	a2,1312(a2) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002498:	00d63023          	sd	a3,0(a2)
    8000249c:	f99ff06f          	j	80002434 <_Znam+0xac>

00000000800024a0 <_ZdlPv>:

void operator delete(void *p) noexcept {
    800024a0:	ff010113          	addi	sp,sp,-16
    800024a4:	00813423          	sd	s0,8(sp)
    800024a8:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    800024ac:	00003797          	auipc	a5,0x3
    800024b0:	5047b783          	ld	a5,1284(a5) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024b4:	0007b703          	ld	a4,0(a5)
    800024b8:	00070e63          	beqz	a4,800024d4 <_ZdlPv+0x34>
    800024bc:	02e56063          	bltu	a0,a4,800024dc <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800024c0:	00070793          	mv	a5,a4
    800024c4:	00073703          	ld	a4,0(a4)
    800024c8:	00e50c63          	beq	a0,a4,800024e0 <_ZdlPv+0x40>
    800024cc:	fea76ae3          	bltu	a4,a0,800024c0 <_ZdlPv+0x20>
    800024d0:	0100006f          	j	800024e0 <_ZdlPv+0x40>
            cur=nullptr;
    800024d4:	00070793          	mv	a5,a4
    800024d8:	0080006f          	j	800024e0 <_ZdlPv+0x40>
    800024dc:	00000793          	li	a5,0
                newSeg->next=nullptr;
    800024e0:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    800024e4:	04000713          	li	a4,64
    800024e8:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    800024ec:	00f53423          	sd	a5,8(a0)
                if(cur) {
    800024f0:	04078e63          	beqz	a5,8000254c <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    800024f4:	0007b703          	ld	a4,0(a5)
    800024f8:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    800024fc:	00053703          	ld	a4,0(a0)
    80002500:	00070463          	beqz	a4,80002508 <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    80002504:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80002508:	04078c63          	beqz	a5,80002560 <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    8000250c:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002510:	00050c63          	beqz	a0,80002528 <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002514:	00053703          	ld	a4,0(a0)
    80002518:	00070863          	beqz	a4,80002528 <_ZdlPv+0x88>
    8000251c:	01053683          	ld	a3,16(a0)
    80002520:	00d50633          	add	a2,a0,a3
    80002524:	04c70663          	beq	a4,a2,80002570 <_ZdlPv+0xd0>
        if (!curr) return;
    80002528:	00078c63          	beqz	a5,80002540 <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000252c:	0007b703          	ld	a4,0(a5)
    80002530:	00070863          	beqz	a4,80002540 <_ZdlPv+0xa0>
    80002534:	0107b683          	ld	a3,16(a5)
    80002538:	00d78633          	add	a2,a5,a3
    8000253c:	04c70a63          	beq	a4,a2,80002590 <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    80002540:	00813403          	ld	s0,8(sp)
    80002544:	01010113          	addi	sp,sp,16
    80002548:	00008067          	ret
                    newSeg->next = fmem_head;
    8000254c:	00003717          	auipc	a4,0x3
    80002550:	46473703          	ld	a4,1124(a4) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002554:	00073703          	ld	a4,0(a4)
    80002558:	00e53023          	sd	a4,0(a0)
    8000255c:	fa1ff06f          	j	800024fc <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    80002560:	00003717          	auipc	a4,0x3
    80002564:	45073703          	ld	a4,1104(a4) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002568:	00a73023          	sd	a0,0(a4)
    8000256c:	fa5ff06f          	j	80002510 <_ZdlPv+0x70>
            curr->size += curr->next->size;
    80002570:	01073603          	ld	a2,16(a4)
    80002574:	00c686b3          	add	a3,a3,a2
    80002578:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    8000257c:	00073703          	ld	a4,0(a4)
    80002580:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80002584:	fa0702e3          	beqz	a4,80002528 <_ZdlPv+0x88>
    80002588:	00a73423          	sd	a0,8(a4)
    8000258c:	f9dff06f          	j	80002528 <_ZdlPv+0x88>
            curr->size += curr->next->size;
    80002590:	01073603          	ld	a2,16(a4)
    80002594:	00c686b3          	add	a3,a3,a2
    80002598:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    8000259c:	00073703          	ld	a4,0(a4)
    800025a0:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    800025a4:	f8070ee3          	beqz	a4,80002540 <_ZdlPv+0xa0>
    800025a8:	00f73423          	sd	a5,8(a4)
    800025ac:	f95ff06f          	j	80002540 <_ZdlPv+0xa0>

00000000800025b0 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    800025b0:	ff010113          	addi	sp,sp,-16
    800025b4:	00813423          	sd	s0,8(sp)
    800025b8:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    800025bc:	00003797          	auipc	a5,0x3
    800025c0:	3f47b783          	ld	a5,1012(a5) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025c4:	0007b703          	ld	a4,0(a5)
    800025c8:	00070e63          	beqz	a4,800025e4 <_ZdaPv+0x34>
    800025cc:	02e56063          	bltu	a0,a4,800025ec <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800025d0:	00070793          	mv	a5,a4
    800025d4:	00073703          	ld	a4,0(a4)
    800025d8:	00e50c63          	beq	a0,a4,800025f0 <_ZdaPv+0x40>
    800025dc:	fea76ae3          	bltu	a4,a0,800025d0 <_ZdaPv+0x20>
    800025e0:	0100006f          	j	800025f0 <_ZdaPv+0x40>
            cur=nullptr;
    800025e4:	00070793          	mv	a5,a4
    800025e8:	0080006f          	j	800025f0 <_ZdaPv+0x40>
    800025ec:	00000793          	li	a5,0
                newSeg->next=nullptr;
    800025f0:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    800025f4:	04000713          	li	a4,64
    800025f8:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    800025fc:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80002600:	04078e63          	beqz	a5,8000265c <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    80002604:	0007b703          	ld	a4,0(a5)
    80002608:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    8000260c:	00053703          	ld	a4,0(a0)
    80002610:	00070463          	beqz	a4,80002618 <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    80002614:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80002618:	04078c63          	beqz	a5,80002670 <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    8000261c:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002620:	00050c63          	beqz	a0,80002638 <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002624:	00053703          	ld	a4,0(a0)
    80002628:	00070863          	beqz	a4,80002638 <_ZdaPv+0x88>
    8000262c:	01053683          	ld	a3,16(a0)
    80002630:	00d50633          	add	a2,a0,a3
    80002634:	04c70663          	beq	a4,a2,80002680 <_ZdaPv+0xd0>
        if (!curr) return;
    80002638:	00078c63          	beqz	a5,80002650 <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000263c:	0007b703          	ld	a4,0(a5)
    80002640:	00070863          	beqz	a4,80002650 <_ZdaPv+0xa0>
    80002644:	0107b683          	ld	a3,16(a5)
    80002648:	00d78633          	add	a2,a5,a3
    8000264c:	04c70a63          	beq	a4,a2,800026a0 <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
    80002650:	00813403          	ld	s0,8(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret
                    newSeg->next = fmem_head;
    8000265c:	00003717          	auipc	a4,0x3
    80002660:	35473703          	ld	a4,852(a4) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002664:	00073703          	ld	a4,0(a4)
    80002668:	00e53023          	sd	a4,0(a0)
    8000266c:	fa1ff06f          	j	8000260c <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    80002670:	00003717          	auipc	a4,0x3
    80002674:	34073703          	ld	a4,832(a4) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002678:	00a73023          	sd	a0,0(a4)
    8000267c:	fa5ff06f          	j	80002620 <_ZdaPv+0x70>
            curr->size += curr->next->size;
    80002680:	01073603          	ld	a2,16(a4)
    80002684:	00c686b3          	add	a3,a3,a2
    80002688:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    8000268c:	00073703          	ld	a4,0(a4)
    80002690:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80002694:	fa0702e3          	beqz	a4,80002638 <_ZdaPv+0x88>
    80002698:	00a73423          	sd	a0,8(a4)
    8000269c:	f9dff06f          	j	80002638 <_ZdaPv+0x88>
            curr->size += curr->next->size;
    800026a0:	01073603          	ld	a2,16(a4)
    800026a4:	00c686b3          	add	a3,a3,a2
    800026a8:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    800026ac:	00073703          	ld	a4,0(a4)
    800026b0:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    800026b4:	f8070ee3          	beqz	a4,80002650 <_ZdaPv+0xa0>
    800026b8:	00f73423          	sd	a5,8(a4)
    800026bc:	f95ff06f          	j	80002650 <_ZdaPv+0xa0>

00000000800026c0 <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    800026c0:	ff010113          	addi	sp,sp,-16
    800026c4:	00813423          	sd	s0,8(sp)
    800026c8:	01010413          	addi	s0,sp,16
    800026cc:	00100793          	li	a5,1
    800026d0:	00f50863          	beq	a0,a5,800026e0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800026d4:	00813403          	ld	s0,8(sp)
    800026d8:	01010113          	addi	sp,sp,16
    800026dc:	00008067          	ret
    800026e0:	000107b7          	lui	a5,0x10
    800026e4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800026e8:	fef596e3          	bne	a1,a5,800026d4 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    800026ec:	00003797          	auipc	a5,0x3
    800026f0:	2a47b783          	ld	a5,676(a5) # 80005990 <_GLOBAL_OFFSET_TABLE_+0x8>
    800026f4:	0007b783          	ld	a5,0(a5)
    800026f8:	00003717          	auipc	a4,0x3
    800026fc:	34f73423          	sd	a5,840(a4) # 80005a40 <_ZN16MemoryAllocation9fmem_headE>
    80002700:	fd5ff06f          	j	800026d4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002704 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00113423          	sd	ra,8(sp)
    8000270c:	00813023          	sd	s0,0(sp)
    80002710:	01010413          	addi	s0,sp,16
    80002714:	000105b7          	lui	a1,0x10
    80002718:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000271c:	00100513          	li	a0,1
    80002720:	00000097          	auipc	ra,0x0
    80002724:	fa0080e7          	jalr	-96(ra) # 800026c0 <_Z41__static_initialization_and_destruction_0ii>
    80002728:	00813083          	ld	ra,8(sp)
    8000272c:	00013403          	ld	s0,0(sp)
    80002730:	01010113          	addi	sp,sp,16
    80002734:	00008067          	ret

0000000080002738 <_Z11printStringPKc>:

#include "../h/Print.hpp"
#include "../lib/console.h"
#include "../h/RiscV.hpp"
//promenjeni print string i integer na vezbama 2, 1:10:00 tu negde, da bi se onemogucili prekidi u samoj niti
void printString(char const *string){
    80002738:	fe010113          	addi	sp,sp,-32
    8000273c:	00113c23          	sd	ra,24(sp)
    80002740:	00813823          	sd	s0,16(sp)
    80002744:	00913423          	sd	s1,8(sp)
    80002748:	01213023          	sd	s2,0(sp)
    8000274c:	02010413          	addi	s0,sp,32
    80002750:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80002754:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80002758:	00200793          	li	a5,2
    8000275c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = RiscV::r_sstatus();
    RiscV::mc_sstatus(RiscV::SSTATUS_SIE);
    while(*string!='\0'){
    80002760:	0004c503          	lbu	a0,0(s1)
    80002764:	00050a63          	beqz	a0,80002778 <_Z11printStringPKc+0x40>
        __putc(*string);
    80002768:	00002097          	auipc	ra,0x2
    8000276c:	1b4080e7          	jalr	436(ra) # 8000491c <__putc>
        string++;
    80002770:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80002774:	fedff06f          	j	80002760 <_Z11printStringPKc+0x28>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80002778:	0009091b          	sext.w	s2,s2
    8000277c:	00297913          	andi	s2,s2,2
    80002780:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    80002784:	10092073          	csrs	sstatus,s2
}
    80002788:	01813083          	ld	ra,24(sp)
    8000278c:	01013403          	ld	s0,16(sp)
    80002790:	00813483          	ld	s1,8(sp)
    80002794:	00013903          	ld	s2,0(sp)
    80002798:	02010113          	addi	sp,sp,32
    8000279c:	00008067          	ret

00000000800027a0 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    800027a0:	fd010113          	addi	sp,sp,-48
    800027a4:	02113423          	sd	ra,40(sp)
    800027a8:	02813023          	sd	s0,32(sp)
    800027ac:	00913c23          	sd	s1,24(sp)
    800027b0:	01213823          	sd	s2,16(sp)
    800027b4:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    800027b8:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    800027bc:	00200793          	li	a5,2
    800027c0:	1007b073          	csrc	sstatus,a5
    neg=0;
    if(integer<0){
        neg=1;
        x=-integer;
    }else{
        x=integer;
    800027c4:	0005051b          	sext.w	a0,a0
    }

    i=0;
    800027c8:	00000493          	li	s1,0
    do {
        buf[i++] = digits [x%10];
    800027cc:	00a00613          	li	a2,10
    800027d0:	02c5773b          	remuw	a4,a0,a2
    800027d4:	02071693          	slli	a3,a4,0x20
    800027d8:	0206d693          	srli	a3,a3,0x20
    800027dc:	00003717          	auipc	a4,0x3
    800027e0:	96c70713          	addi	a4,a4,-1684 # 80005148 <_ZZ12printIntegermE6digits>
    800027e4:	00d70733          	add	a4,a4,a3
    800027e8:	00074703          	lbu	a4,0(a4)
    800027ec:	fe040693          	addi	a3,s0,-32
    800027f0:	009687b3          	add	a5,a3,s1
    800027f4:	0014849b          	addiw	s1,s1,1
    800027f8:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    800027fc:	0005071b          	sext.w	a4,a0
    80002800:	02c5553b          	divuw	a0,a0,a2
    80002804:	00900793          	li	a5,9
    80002808:	fce7e2e3          	bltu	a5,a4,800027cc <_Z12printIntegerm+0x2c>
    if(neg) buf[i++] = '-';

    while(--i >= 0){
    8000280c:	fff4849b          	addiw	s1,s1,-1
    80002810:	0004ce63          	bltz	s1,8000282c <_Z12printIntegerm+0x8c>
        __putc(buf[i]);
    80002814:	fe040793          	addi	a5,s0,-32
    80002818:	009787b3          	add	a5,a5,s1
    8000281c:	ff07c503          	lbu	a0,-16(a5)
    80002820:	00002097          	auipc	ra,0x2
    80002824:	0fc080e7          	jalr	252(ra) # 8000491c <__putc>
    80002828:	fe5ff06f          	j	8000280c <_Z12printIntegerm+0x6c>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    8000282c:	0009091b          	sext.w	s2,s2
    80002830:	00297913          	andi	s2,s2,2
    80002834:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    80002838:	10092073          	csrs	sstatus,s2
    8000283c:	02813083          	ld	ra,40(sp)
    80002840:	02013403          	ld	s0,32(sp)
    80002844:	01813483          	ld	s1,24(sp)
    80002848:	01013903          	ld	s2,16(sp)
    8000284c:	03010113          	addi	sp,sp,48
    80002850:	00008067          	ret

0000000080002854 <start>:
    80002854:	ff010113          	addi	sp,sp,-16
    80002858:	00813423          	sd	s0,8(sp)
    8000285c:	01010413          	addi	s0,sp,16
    80002860:	300027f3          	csrr	a5,mstatus
    80002864:	ffffe737          	lui	a4,0xffffe
    80002868:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b4f>
    8000286c:	00e7f7b3          	and	a5,a5,a4
    80002870:	00001737          	lui	a4,0x1
    80002874:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002878:	00e7e7b3          	or	a5,a5,a4
    8000287c:	30079073          	csrw	mstatus,a5
    80002880:	00000797          	auipc	a5,0x0
    80002884:	16078793          	addi	a5,a5,352 # 800029e0 <system_main>
    80002888:	34179073          	csrw	mepc,a5
    8000288c:	00000793          	li	a5,0
    80002890:	18079073          	csrw	satp,a5
    80002894:	000107b7          	lui	a5,0x10
    80002898:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000289c:	30279073          	csrw	medeleg,a5
    800028a0:	30379073          	csrw	mideleg,a5
    800028a4:	104027f3          	csrr	a5,sie
    800028a8:	2227e793          	ori	a5,a5,546
    800028ac:	10479073          	csrw	sie,a5
    800028b0:	fff00793          	li	a5,-1
    800028b4:	00a7d793          	srli	a5,a5,0xa
    800028b8:	3b079073          	csrw	pmpaddr0,a5
    800028bc:	00f00793          	li	a5,15
    800028c0:	3a079073          	csrw	pmpcfg0,a5
    800028c4:	f14027f3          	csrr	a5,mhartid
    800028c8:	0200c737          	lui	a4,0x200c
    800028cc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800028d0:	0007869b          	sext.w	a3,a5
    800028d4:	00269713          	slli	a4,a3,0x2
    800028d8:	000f4637          	lui	a2,0xf4
    800028dc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800028e0:	00d70733          	add	a4,a4,a3
    800028e4:	0037979b          	slliw	a5,a5,0x3
    800028e8:	020046b7          	lui	a3,0x2004
    800028ec:	00d787b3          	add	a5,a5,a3
    800028f0:	00c585b3          	add	a1,a1,a2
    800028f4:	00371693          	slli	a3,a4,0x3
    800028f8:	00003717          	auipc	a4,0x3
    800028fc:	15870713          	addi	a4,a4,344 # 80005a50 <timer_scratch>
    80002900:	00b7b023          	sd	a1,0(a5)
    80002904:	00d70733          	add	a4,a4,a3
    80002908:	00f73c23          	sd	a5,24(a4)
    8000290c:	02c73023          	sd	a2,32(a4)
    80002910:	34071073          	csrw	mscratch,a4
    80002914:	00000797          	auipc	a5,0x0
    80002918:	6ec78793          	addi	a5,a5,1772 # 80003000 <timervec>
    8000291c:	30579073          	csrw	mtvec,a5
    80002920:	300027f3          	csrr	a5,mstatus
    80002924:	0087e793          	ori	a5,a5,8
    80002928:	30079073          	csrw	mstatus,a5
    8000292c:	304027f3          	csrr	a5,mie
    80002930:	0807e793          	ori	a5,a5,128
    80002934:	30479073          	csrw	mie,a5
    80002938:	f14027f3          	csrr	a5,mhartid
    8000293c:	0007879b          	sext.w	a5,a5
    80002940:	00078213          	mv	tp,a5
    80002944:	30200073          	mret
    80002948:	00813403          	ld	s0,8(sp)
    8000294c:	01010113          	addi	sp,sp,16
    80002950:	00008067          	ret

0000000080002954 <timerinit>:
    80002954:	ff010113          	addi	sp,sp,-16
    80002958:	00813423          	sd	s0,8(sp)
    8000295c:	01010413          	addi	s0,sp,16
    80002960:	f14027f3          	csrr	a5,mhartid
    80002964:	0200c737          	lui	a4,0x200c
    80002968:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000296c:	0007869b          	sext.w	a3,a5
    80002970:	00269713          	slli	a4,a3,0x2
    80002974:	000f4637          	lui	a2,0xf4
    80002978:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000297c:	00d70733          	add	a4,a4,a3
    80002980:	0037979b          	slliw	a5,a5,0x3
    80002984:	020046b7          	lui	a3,0x2004
    80002988:	00d787b3          	add	a5,a5,a3
    8000298c:	00c585b3          	add	a1,a1,a2
    80002990:	00371693          	slli	a3,a4,0x3
    80002994:	00003717          	auipc	a4,0x3
    80002998:	0bc70713          	addi	a4,a4,188 # 80005a50 <timer_scratch>
    8000299c:	00b7b023          	sd	a1,0(a5)
    800029a0:	00d70733          	add	a4,a4,a3
    800029a4:	00f73c23          	sd	a5,24(a4)
    800029a8:	02c73023          	sd	a2,32(a4)
    800029ac:	34071073          	csrw	mscratch,a4
    800029b0:	00000797          	auipc	a5,0x0
    800029b4:	65078793          	addi	a5,a5,1616 # 80003000 <timervec>
    800029b8:	30579073          	csrw	mtvec,a5
    800029bc:	300027f3          	csrr	a5,mstatus
    800029c0:	0087e793          	ori	a5,a5,8
    800029c4:	30079073          	csrw	mstatus,a5
    800029c8:	304027f3          	csrr	a5,mie
    800029cc:	0807e793          	ori	a5,a5,128
    800029d0:	30479073          	csrw	mie,a5
    800029d4:	00813403          	ld	s0,8(sp)
    800029d8:	01010113          	addi	sp,sp,16
    800029dc:	00008067          	ret

00000000800029e0 <system_main>:
    800029e0:	fe010113          	addi	sp,sp,-32
    800029e4:	00813823          	sd	s0,16(sp)
    800029e8:	00913423          	sd	s1,8(sp)
    800029ec:	00113c23          	sd	ra,24(sp)
    800029f0:	02010413          	addi	s0,sp,32
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	0c4080e7          	jalr	196(ra) # 80002ab8 <cpuid>
    800029fc:	00003497          	auipc	s1,0x3
    80002a00:	ff448493          	addi	s1,s1,-12 # 800059f0 <started>
    80002a04:	02050263          	beqz	a0,80002a28 <system_main+0x48>
    80002a08:	0004a783          	lw	a5,0(s1)
    80002a0c:	0007879b          	sext.w	a5,a5
    80002a10:	fe078ce3          	beqz	a5,80002a08 <system_main+0x28>
    80002a14:	0ff0000f          	fence
    80002a18:	00002517          	auipc	a0,0x2
    80002a1c:	77050513          	addi	a0,a0,1904 # 80005188 <_ZZ12printIntegermE6digits+0x40>
    80002a20:	00001097          	auipc	ra,0x1
    80002a24:	a7c080e7          	jalr	-1412(ra) # 8000349c <panic>
    80002a28:	00001097          	auipc	ra,0x1
    80002a2c:	9d0080e7          	jalr	-1584(ra) # 800033f8 <consoleinit>
    80002a30:	00001097          	auipc	ra,0x1
    80002a34:	15c080e7          	jalr	348(ra) # 80003b8c <printfinit>
    80002a38:	00002517          	auipc	a0,0x2
    80002a3c:	68050513          	addi	a0,a0,1664 # 800050b8 <CONSOLE_STATUS+0xa8>
    80002a40:	00001097          	auipc	ra,0x1
    80002a44:	ab8080e7          	jalr	-1352(ra) # 800034f8 <__printf>
    80002a48:	00002517          	auipc	a0,0x2
    80002a4c:	71050513          	addi	a0,a0,1808 # 80005158 <_ZZ12printIntegermE6digits+0x10>
    80002a50:	00001097          	auipc	ra,0x1
    80002a54:	aa8080e7          	jalr	-1368(ra) # 800034f8 <__printf>
    80002a58:	00002517          	auipc	a0,0x2
    80002a5c:	66050513          	addi	a0,a0,1632 # 800050b8 <CONSOLE_STATUS+0xa8>
    80002a60:	00001097          	auipc	ra,0x1
    80002a64:	a98080e7          	jalr	-1384(ra) # 800034f8 <__printf>
    80002a68:	00001097          	auipc	ra,0x1
    80002a6c:	4b0080e7          	jalr	1200(ra) # 80003f18 <kinit>
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	148080e7          	jalr	328(ra) # 80002bb8 <trapinit>
    80002a78:	00000097          	auipc	ra,0x0
    80002a7c:	16c080e7          	jalr	364(ra) # 80002be4 <trapinithart>
    80002a80:	00000097          	auipc	ra,0x0
    80002a84:	5c0080e7          	jalr	1472(ra) # 80003040 <plicinit>
    80002a88:	00000097          	auipc	ra,0x0
    80002a8c:	5e0080e7          	jalr	1504(ra) # 80003068 <plicinithart>
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	078080e7          	jalr	120(ra) # 80002b08 <userinit>
    80002a98:	0ff0000f          	fence
    80002a9c:	00100793          	li	a5,1
    80002aa0:	00002517          	auipc	a0,0x2
    80002aa4:	6d050513          	addi	a0,a0,1744 # 80005170 <_ZZ12printIntegermE6digits+0x28>
    80002aa8:	00f4a023          	sw	a5,0(s1)
    80002aac:	00001097          	auipc	ra,0x1
    80002ab0:	a4c080e7          	jalr	-1460(ra) # 800034f8 <__printf>
    80002ab4:	0000006f          	j	80002ab4 <system_main+0xd4>

0000000080002ab8 <cpuid>:
    80002ab8:	ff010113          	addi	sp,sp,-16
    80002abc:	00813423          	sd	s0,8(sp)
    80002ac0:	01010413          	addi	s0,sp,16
    80002ac4:	00020513          	mv	a0,tp
    80002ac8:	00813403          	ld	s0,8(sp)
    80002acc:	0005051b          	sext.w	a0,a0
    80002ad0:	01010113          	addi	sp,sp,16
    80002ad4:	00008067          	ret

0000000080002ad8 <mycpu>:
    80002ad8:	ff010113          	addi	sp,sp,-16
    80002adc:	00813423          	sd	s0,8(sp)
    80002ae0:	01010413          	addi	s0,sp,16
    80002ae4:	00020793          	mv	a5,tp
    80002ae8:	00813403          	ld	s0,8(sp)
    80002aec:	0007879b          	sext.w	a5,a5
    80002af0:	00779793          	slli	a5,a5,0x7
    80002af4:	00004517          	auipc	a0,0x4
    80002af8:	f8c50513          	addi	a0,a0,-116 # 80006a80 <cpus>
    80002afc:	00f50533          	add	a0,a0,a5
    80002b00:	01010113          	addi	sp,sp,16
    80002b04:	00008067          	ret

0000000080002b08 <userinit>:
    80002b08:	ff010113          	addi	sp,sp,-16
    80002b0c:	00813423          	sd	s0,8(sp)
    80002b10:	01010413          	addi	s0,sp,16
    80002b14:	00813403          	ld	s0,8(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	fffff317          	auipc	t1,0xfffff
    80002b20:	4ac30067          	jr	1196(t1) # 80001fc8 <main>

0000000080002b24 <either_copyout>:
    80002b24:	ff010113          	addi	sp,sp,-16
    80002b28:	00813023          	sd	s0,0(sp)
    80002b2c:	00113423          	sd	ra,8(sp)
    80002b30:	01010413          	addi	s0,sp,16
    80002b34:	02051663          	bnez	a0,80002b60 <either_copyout+0x3c>
    80002b38:	00058513          	mv	a0,a1
    80002b3c:	00060593          	mv	a1,a2
    80002b40:	0006861b          	sext.w	a2,a3
    80002b44:	00002097          	auipc	ra,0x2
    80002b48:	c60080e7          	jalr	-928(ra) # 800047a4 <__memmove>
    80002b4c:	00813083          	ld	ra,8(sp)
    80002b50:	00013403          	ld	s0,0(sp)
    80002b54:	00000513          	li	a0,0
    80002b58:	01010113          	addi	sp,sp,16
    80002b5c:	00008067          	ret
    80002b60:	00002517          	auipc	a0,0x2
    80002b64:	65050513          	addi	a0,a0,1616 # 800051b0 <_ZZ12printIntegermE6digits+0x68>
    80002b68:	00001097          	auipc	ra,0x1
    80002b6c:	934080e7          	jalr	-1740(ra) # 8000349c <panic>

0000000080002b70 <either_copyin>:
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00813023          	sd	s0,0(sp)
    80002b78:	00113423          	sd	ra,8(sp)
    80002b7c:	01010413          	addi	s0,sp,16
    80002b80:	02059463          	bnez	a1,80002ba8 <either_copyin+0x38>
    80002b84:	00060593          	mv	a1,a2
    80002b88:	0006861b          	sext.w	a2,a3
    80002b8c:	00002097          	auipc	ra,0x2
    80002b90:	c18080e7          	jalr	-1000(ra) # 800047a4 <__memmove>
    80002b94:	00813083          	ld	ra,8(sp)
    80002b98:	00013403          	ld	s0,0(sp)
    80002b9c:	00000513          	li	a0,0
    80002ba0:	01010113          	addi	sp,sp,16
    80002ba4:	00008067          	ret
    80002ba8:	00002517          	auipc	a0,0x2
    80002bac:	63050513          	addi	a0,a0,1584 # 800051d8 <_ZZ12printIntegermE6digits+0x90>
    80002bb0:	00001097          	auipc	ra,0x1
    80002bb4:	8ec080e7          	jalr	-1812(ra) # 8000349c <panic>

0000000080002bb8 <trapinit>:
    80002bb8:	ff010113          	addi	sp,sp,-16
    80002bbc:	00813423          	sd	s0,8(sp)
    80002bc0:	01010413          	addi	s0,sp,16
    80002bc4:	00813403          	ld	s0,8(sp)
    80002bc8:	00002597          	auipc	a1,0x2
    80002bcc:	63858593          	addi	a1,a1,1592 # 80005200 <_ZZ12printIntegermE6digits+0xb8>
    80002bd0:	00004517          	auipc	a0,0x4
    80002bd4:	f3050513          	addi	a0,a0,-208 # 80006b00 <tickslock>
    80002bd8:	01010113          	addi	sp,sp,16
    80002bdc:	00001317          	auipc	t1,0x1
    80002be0:	5cc30067          	jr	1484(t1) # 800041a8 <initlock>

0000000080002be4 <trapinithart>:
    80002be4:	ff010113          	addi	sp,sp,-16
    80002be8:	00813423          	sd	s0,8(sp)
    80002bec:	01010413          	addi	s0,sp,16
    80002bf0:	00000797          	auipc	a5,0x0
    80002bf4:	30078793          	addi	a5,a5,768 # 80002ef0 <kernelvec>
    80002bf8:	10579073          	csrw	stvec,a5
    80002bfc:	00813403          	ld	s0,8(sp)
    80002c00:	01010113          	addi	sp,sp,16
    80002c04:	00008067          	ret

0000000080002c08 <usertrap>:
    80002c08:	ff010113          	addi	sp,sp,-16
    80002c0c:	00813423          	sd	s0,8(sp)
    80002c10:	01010413          	addi	s0,sp,16
    80002c14:	00813403          	ld	s0,8(sp)
    80002c18:	01010113          	addi	sp,sp,16
    80002c1c:	00008067          	ret

0000000080002c20 <usertrapret>:
    80002c20:	ff010113          	addi	sp,sp,-16
    80002c24:	00813423          	sd	s0,8(sp)
    80002c28:	01010413          	addi	s0,sp,16
    80002c2c:	00813403          	ld	s0,8(sp)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret

0000000080002c38 <kerneltrap>:
    80002c38:	fe010113          	addi	sp,sp,-32
    80002c3c:	00813823          	sd	s0,16(sp)
    80002c40:	00113c23          	sd	ra,24(sp)
    80002c44:	00913423          	sd	s1,8(sp)
    80002c48:	02010413          	addi	s0,sp,32
    80002c4c:	142025f3          	csrr	a1,scause
    80002c50:	100027f3          	csrr	a5,sstatus
    80002c54:	0027f793          	andi	a5,a5,2
    80002c58:	10079c63          	bnez	a5,80002d70 <kerneltrap+0x138>
    80002c5c:	142027f3          	csrr	a5,scause
    80002c60:	0207ce63          	bltz	a5,80002c9c <kerneltrap+0x64>
    80002c64:	00002517          	auipc	a0,0x2
    80002c68:	5e450513          	addi	a0,a0,1508 # 80005248 <_ZZ12printIntegermE6digits+0x100>
    80002c6c:	00001097          	auipc	ra,0x1
    80002c70:	88c080e7          	jalr	-1908(ra) # 800034f8 <__printf>
    80002c74:	141025f3          	csrr	a1,sepc
    80002c78:	14302673          	csrr	a2,stval
    80002c7c:	00002517          	auipc	a0,0x2
    80002c80:	5dc50513          	addi	a0,a0,1500 # 80005258 <_ZZ12printIntegermE6digits+0x110>
    80002c84:	00001097          	auipc	ra,0x1
    80002c88:	874080e7          	jalr	-1932(ra) # 800034f8 <__printf>
    80002c8c:	00002517          	auipc	a0,0x2
    80002c90:	5e450513          	addi	a0,a0,1508 # 80005270 <_ZZ12printIntegermE6digits+0x128>
    80002c94:	00001097          	auipc	ra,0x1
    80002c98:	808080e7          	jalr	-2040(ra) # 8000349c <panic>
    80002c9c:	0ff7f713          	andi	a4,a5,255
    80002ca0:	00900693          	li	a3,9
    80002ca4:	04d70063          	beq	a4,a3,80002ce4 <kerneltrap+0xac>
    80002ca8:	fff00713          	li	a4,-1
    80002cac:	03f71713          	slli	a4,a4,0x3f
    80002cb0:	00170713          	addi	a4,a4,1
    80002cb4:	fae798e3          	bne	a5,a4,80002c64 <kerneltrap+0x2c>
    80002cb8:	00000097          	auipc	ra,0x0
    80002cbc:	e00080e7          	jalr	-512(ra) # 80002ab8 <cpuid>
    80002cc0:	06050663          	beqz	a0,80002d2c <kerneltrap+0xf4>
    80002cc4:	144027f3          	csrr	a5,sip
    80002cc8:	ffd7f793          	andi	a5,a5,-3
    80002ccc:	14479073          	csrw	sip,a5
    80002cd0:	01813083          	ld	ra,24(sp)
    80002cd4:	01013403          	ld	s0,16(sp)
    80002cd8:	00813483          	ld	s1,8(sp)
    80002cdc:	02010113          	addi	sp,sp,32
    80002ce0:	00008067          	ret
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	3d0080e7          	jalr	976(ra) # 800030b4 <plic_claim>
    80002cec:	00a00793          	li	a5,10
    80002cf0:	00050493          	mv	s1,a0
    80002cf4:	06f50863          	beq	a0,a5,80002d64 <kerneltrap+0x12c>
    80002cf8:	fc050ce3          	beqz	a0,80002cd0 <kerneltrap+0x98>
    80002cfc:	00050593          	mv	a1,a0
    80002d00:	00002517          	auipc	a0,0x2
    80002d04:	52850513          	addi	a0,a0,1320 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    80002d08:	00000097          	auipc	ra,0x0
    80002d0c:	7f0080e7          	jalr	2032(ra) # 800034f8 <__printf>
    80002d10:	01013403          	ld	s0,16(sp)
    80002d14:	01813083          	ld	ra,24(sp)
    80002d18:	00048513          	mv	a0,s1
    80002d1c:	00813483          	ld	s1,8(sp)
    80002d20:	02010113          	addi	sp,sp,32
    80002d24:	00000317          	auipc	t1,0x0
    80002d28:	3c830067          	jr	968(t1) # 800030ec <plic_complete>
    80002d2c:	00004517          	auipc	a0,0x4
    80002d30:	dd450513          	addi	a0,a0,-556 # 80006b00 <tickslock>
    80002d34:	00001097          	auipc	ra,0x1
    80002d38:	498080e7          	jalr	1176(ra) # 800041cc <acquire>
    80002d3c:	00003717          	auipc	a4,0x3
    80002d40:	cb870713          	addi	a4,a4,-840 # 800059f4 <ticks>
    80002d44:	00072783          	lw	a5,0(a4)
    80002d48:	00004517          	auipc	a0,0x4
    80002d4c:	db850513          	addi	a0,a0,-584 # 80006b00 <tickslock>
    80002d50:	0017879b          	addiw	a5,a5,1
    80002d54:	00f72023          	sw	a5,0(a4)
    80002d58:	00001097          	auipc	ra,0x1
    80002d5c:	540080e7          	jalr	1344(ra) # 80004298 <release>
    80002d60:	f65ff06f          	j	80002cc4 <kerneltrap+0x8c>
    80002d64:	00001097          	auipc	ra,0x1
    80002d68:	09c080e7          	jalr	156(ra) # 80003e00 <uartintr>
    80002d6c:	fa5ff06f          	j	80002d10 <kerneltrap+0xd8>
    80002d70:	00002517          	auipc	a0,0x2
    80002d74:	49850513          	addi	a0,a0,1176 # 80005208 <_ZZ12printIntegermE6digits+0xc0>
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	724080e7          	jalr	1828(ra) # 8000349c <panic>

0000000080002d80 <clockintr>:
    80002d80:	fe010113          	addi	sp,sp,-32
    80002d84:	00813823          	sd	s0,16(sp)
    80002d88:	00913423          	sd	s1,8(sp)
    80002d8c:	00113c23          	sd	ra,24(sp)
    80002d90:	02010413          	addi	s0,sp,32
    80002d94:	00004497          	auipc	s1,0x4
    80002d98:	d6c48493          	addi	s1,s1,-660 # 80006b00 <tickslock>
    80002d9c:	00048513          	mv	a0,s1
    80002da0:	00001097          	auipc	ra,0x1
    80002da4:	42c080e7          	jalr	1068(ra) # 800041cc <acquire>
    80002da8:	00003717          	auipc	a4,0x3
    80002dac:	c4c70713          	addi	a4,a4,-948 # 800059f4 <ticks>
    80002db0:	00072783          	lw	a5,0(a4)
    80002db4:	01013403          	ld	s0,16(sp)
    80002db8:	01813083          	ld	ra,24(sp)
    80002dbc:	00048513          	mv	a0,s1
    80002dc0:	0017879b          	addiw	a5,a5,1
    80002dc4:	00813483          	ld	s1,8(sp)
    80002dc8:	00f72023          	sw	a5,0(a4)
    80002dcc:	02010113          	addi	sp,sp,32
    80002dd0:	00001317          	auipc	t1,0x1
    80002dd4:	4c830067          	jr	1224(t1) # 80004298 <release>

0000000080002dd8 <devintr>:
    80002dd8:	142027f3          	csrr	a5,scause
    80002ddc:	00000513          	li	a0,0
    80002de0:	0007c463          	bltz	a5,80002de8 <devintr+0x10>
    80002de4:	00008067          	ret
    80002de8:	fe010113          	addi	sp,sp,-32
    80002dec:	00813823          	sd	s0,16(sp)
    80002df0:	00113c23          	sd	ra,24(sp)
    80002df4:	00913423          	sd	s1,8(sp)
    80002df8:	02010413          	addi	s0,sp,32
    80002dfc:	0ff7f713          	andi	a4,a5,255
    80002e00:	00900693          	li	a3,9
    80002e04:	04d70c63          	beq	a4,a3,80002e5c <devintr+0x84>
    80002e08:	fff00713          	li	a4,-1
    80002e0c:	03f71713          	slli	a4,a4,0x3f
    80002e10:	00170713          	addi	a4,a4,1
    80002e14:	00e78c63          	beq	a5,a4,80002e2c <devintr+0x54>
    80002e18:	01813083          	ld	ra,24(sp)
    80002e1c:	01013403          	ld	s0,16(sp)
    80002e20:	00813483          	ld	s1,8(sp)
    80002e24:	02010113          	addi	sp,sp,32
    80002e28:	00008067          	ret
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	c8c080e7          	jalr	-884(ra) # 80002ab8 <cpuid>
    80002e34:	06050663          	beqz	a0,80002ea0 <devintr+0xc8>
    80002e38:	144027f3          	csrr	a5,sip
    80002e3c:	ffd7f793          	andi	a5,a5,-3
    80002e40:	14479073          	csrw	sip,a5
    80002e44:	01813083          	ld	ra,24(sp)
    80002e48:	01013403          	ld	s0,16(sp)
    80002e4c:	00813483          	ld	s1,8(sp)
    80002e50:	00200513          	li	a0,2
    80002e54:	02010113          	addi	sp,sp,32
    80002e58:	00008067          	ret
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	258080e7          	jalr	600(ra) # 800030b4 <plic_claim>
    80002e64:	00a00793          	li	a5,10
    80002e68:	00050493          	mv	s1,a0
    80002e6c:	06f50663          	beq	a0,a5,80002ed8 <devintr+0x100>
    80002e70:	00100513          	li	a0,1
    80002e74:	fa0482e3          	beqz	s1,80002e18 <devintr+0x40>
    80002e78:	00048593          	mv	a1,s1
    80002e7c:	00002517          	auipc	a0,0x2
    80002e80:	3ac50513          	addi	a0,a0,940 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    80002e84:	00000097          	auipc	ra,0x0
    80002e88:	674080e7          	jalr	1652(ra) # 800034f8 <__printf>
    80002e8c:	00048513          	mv	a0,s1
    80002e90:	00000097          	auipc	ra,0x0
    80002e94:	25c080e7          	jalr	604(ra) # 800030ec <plic_complete>
    80002e98:	00100513          	li	a0,1
    80002e9c:	f7dff06f          	j	80002e18 <devintr+0x40>
    80002ea0:	00004517          	auipc	a0,0x4
    80002ea4:	c6050513          	addi	a0,a0,-928 # 80006b00 <tickslock>
    80002ea8:	00001097          	auipc	ra,0x1
    80002eac:	324080e7          	jalr	804(ra) # 800041cc <acquire>
    80002eb0:	00003717          	auipc	a4,0x3
    80002eb4:	b4470713          	addi	a4,a4,-1212 # 800059f4 <ticks>
    80002eb8:	00072783          	lw	a5,0(a4)
    80002ebc:	00004517          	auipc	a0,0x4
    80002ec0:	c4450513          	addi	a0,a0,-956 # 80006b00 <tickslock>
    80002ec4:	0017879b          	addiw	a5,a5,1
    80002ec8:	00f72023          	sw	a5,0(a4)
    80002ecc:	00001097          	auipc	ra,0x1
    80002ed0:	3cc080e7          	jalr	972(ra) # 80004298 <release>
    80002ed4:	f65ff06f          	j	80002e38 <devintr+0x60>
    80002ed8:	00001097          	auipc	ra,0x1
    80002edc:	f28080e7          	jalr	-216(ra) # 80003e00 <uartintr>
    80002ee0:	fadff06f          	j	80002e8c <devintr+0xb4>
	...

0000000080002ef0 <kernelvec>:
    80002ef0:	f0010113          	addi	sp,sp,-256
    80002ef4:	00113023          	sd	ra,0(sp)
    80002ef8:	00213423          	sd	sp,8(sp)
    80002efc:	00313823          	sd	gp,16(sp)
    80002f00:	00413c23          	sd	tp,24(sp)
    80002f04:	02513023          	sd	t0,32(sp)
    80002f08:	02613423          	sd	t1,40(sp)
    80002f0c:	02713823          	sd	t2,48(sp)
    80002f10:	02813c23          	sd	s0,56(sp)
    80002f14:	04913023          	sd	s1,64(sp)
    80002f18:	04a13423          	sd	a0,72(sp)
    80002f1c:	04b13823          	sd	a1,80(sp)
    80002f20:	04c13c23          	sd	a2,88(sp)
    80002f24:	06d13023          	sd	a3,96(sp)
    80002f28:	06e13423          	sd	a4,104(sp)
    80002f2c:	06f13823          	sd	a5,112(sp)
    80002f30:	07013c23          	sd	a6,120(sp)
    80002f34:	09113023          	sd	a7,128(sp)
    80002f38:	09213423          	sd	s2,136(sp)
    80002f3c:	09313823          	sd	s3,144(sp)
    80002f40:	09413c23          	sd	s4,152(sp)
    80002f44:	0b513023          	sd	s5,160(sp)
    80002f48:	0b613423          	sd	s6,168(sp)
    80002f4c:	0b713823          	sd	s7,176(sp)
    80002f50:	0b813c23          	sd	s8,184(sp)
    80002f54:	0d913023          	sd	s9,192(sp)
    80002f58:	0da13423          	sd	s10,200(sp)
    80002f5c:	0db13823          	sd	s11,208(sp)
    80002f60:	0dc13c23          	sd	t3,216(sp)
    80002f64:	0fd13023          	sd	t4,224(sp)
    80002f68:	0fe13423          	sd	t5,232(sp)
    80002f6c:	0ff13823          	sd	t6,240(sp)
    80002f70:	cc9ff0ef          	jal	ra,80002c38 <kerneltrap>
    80002f74:	00013083          	ld	ra,0(sp)
    80002f78:	00813103          	ld	sp,8(sp)
    80002f7c:	01013183          	ld	gp,16(sp)
    80002f80:	02013283          	ld	t0,32(sp)
    80002f84:	02813303          	ld	t1,40(sp)
    80002f88:	03013383          	ld	t2,48(sp)
    80002f8c:	03813403          	ld	s0,56(sp)
    80002f90:	04013483          	ld	s1,64(sp)
    80002f94:	04813503          	ld	a0,72(sp)
    80002f98:	05013583          	ld	a1,80(sp)
    80002f9c:	05813603          	ld	a2,88(sp)
    80002fa0:	06013683          	ld	a3,96(sp)
    80002fa4:	06813703          	ld	a4,104(sp)
    80002fa8:	07013783          	ld	a5,112(sp)
    80002fac:	07813803          	ld	a6,120(sp)
    80002fb0:	08013883          	ld	a7,128(sp)
    80002fb4:	08813903          	ld	s2,136(sp)
    80002fb8:	09013983          	ld	s3,144(sp)
    80002fbc:	09813a03          	ld	s4,152(sp)
    80002fc0:	0a013a83          	ld	s5,160(sp)
    80002fc4:	0a813b03          	ld	s6,168(sp)
    80002fc8:	0b013b83          	ld	s7,176(sp)
    80002fcc:	0b813c03          	ld	s8,184(sp)
    80002fd0:	0c013c83          	ld	s9,192(sp)
    80002fd4:	0c813d03          	ld	s10,200(sp)
    80002fd8:	0d013d83          	ld	s11,208(sp)
    80002fdc:	0d813e03          	ld	t3,216(sp)
    80002fe0:	0e013e83          	ld	t4,224(sp)
    80002fe4:	0e813f03          	ld	t5,232(sp)
    80002fe8:	0f013f83          	ld	t6,240(sp)
    80002fec:	10010113          	addi	sp,sp,256
    80002ff0:	10200073          	sret
    80002ff4:	00000013          	nop
    80002ff8:	00000013          	nop
    80002ffc:	00000013          	nop

0000000080003000 <timervec>:
    80003000:	34051573          	csrrw	a0,mscratch,a0
    80003004:	00b53023          	sd	a1,0(a0)
    80003008:	00c53423          	sd	a2,8(a0)
    8000300c:	00d53823          	sd	a3,16(a0)
    80003010:	01853583          	ld	a1,24(a0)
    80003014:	02053603          	ld	a2,32(a0)
    80003018:	0005b683          	ld	a3,0(a1)
    8000301c:	00c686b3          	add	a3,a3,a2
    80003020:	00d5b023          	sd	a3,0(a1)
    80003024:	00200593          	li	a1,2
    80003028:	14459073          	csrw	sip,a1
    8000302c:	01053683          	ld	a3,16(a0)
    80003030:	00853603          	ld	a2,8(a0)
    80003034:	00053583          	ld	a1,0(a0)
    80003038:	34051573          	csrrw	a0,mscratch,a0
    8000303c:	30200073          	mret

0000000080003040 <plicinit>:
    80003040:	ff010113          	addi	sp,sp,-16
    80003044:	00813423          	sd	s0,8(sp)
    80003048:	01010413          	addi	s0,sp,16
    8000304c:	00813403          	ld	s0,8(sp)
    80003050:	0c0007b7          	lui	a5,0xc000
    80003054:	00100713          	li	a4,1
    80003058:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000305c:	00e7a223          	sw	a4,4(a5)
    80003060:	01010113          	addi	sp,sp,16
    80003064:	00008067          	ret

0000000080003068 <plicinithart>:
    80003068:	ff010113          	addi	sp,sp,-16
    8000306c:	00813023          	sd	s0,0(sp)
    80003070:	00113423          	sd	ra,8(sp)
    80003074:	01010413          	addi	s0,sp,16
    80003078:	00000097          	auipc	ra,0x0
    8000307c:	a40080e7          	jalr	-1472(ra) # 80002ab8 <cpuid>
    80003080:	0085171b          	slliw	a4,a0,0x8
    80003084:	0c0027b7          	lui	a5,0xc002
    80003088:	00e787b3          	add	a5,a5,a4
    8000308c:	40200713          	li	a4,1026
    80003090:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003094:	00813083          	ld	ra,8(sp)
    80003098:	00013403          	ld	s0,0(sp)
    8000309c:	00d5151b          	slliw	a0,a0,0xd
    800030a0:	0c2017b7          	lui	a5,0xc201
    800030a4:	00a78533          	add	a0,a5,a0
    800030a8:	00052023          	sw	zero,0(a0)
    800030ac:	01010113          	addi	sp,sp,16
    800030b0:	00008067          	ret

00000000800030b4 <plic_claim>:
    800030b4:	ff010113          	addi	sp,sp,-16
    800030b8:	00813023          	sd	s0,0(sp)
    800030bc:	00113423          	sd	ra,8(sp)
    800030c0:	01010413          	addi	s0,sp,16
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	9f4080e7          	jalr	-1548(ra) # 80002ab8 <cpuid>
    800030cc:	00813083          	ld	ra,8(sp)
    800030d0:	00013403          	ld	s0,0(sp)
    800030d4:	00d5151b          	slliw	a0,a0,0xd
    800030d8:	0c2017b7          	lui	a5,0xc201
    800030dc:	00a78533          	add	a0,a5,a0
    800030e0:	00452503          	lw	a0,4(a0)
    800030e4:	01010113          	addi	sp,sp,16
    800030e8:	00008067          	ret

00000000800030ec <plic_complete>:
    800030ec:	fe010113          	addi	sp,sp,-32
    800030f0:	00813823          	sd	s0,16(sp)
    800030f4:	00913423          	sd	s1,8(sp)
    800030f8:	00113c23          	sd	ra,24(sp)
    800030fc:	02010413          	addi	s0,sp,32
    80003100:	00050493          	mv	s1,a0
    80003104:	00000097          	auipc	ra,0x0
    80003108:	9b4080e7          	jalr	-1612(ra) # 80002ab8 <cpuid>
    8000310c:	01813083          	ld	ra,24(sp)
    80003110:	01013403          	ld	s0,16(sp)
    80003114:	00d5179b          	slliw	a5,a0,0xd
    80003118:	0c201737          	lui	a4,0xc201
    8000311c:	00f707b3          	add	a5,a4,a5
    80003120:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003124:	00813483          	ld	s1,8(sp)
    80003128:	02010113          	addi	sp,sp,32
    8000312c:	00008067          	ret

0000000080003130 <consolewrite>:
    80003130:	fb010113          	addi	sp,sp,-80
    80003134:	04813023          	sd	s0,64(sp)
    80003138:	04113423          	sd	ra,72(sp)
    8000313c:	02913c23          	sd	s1,56(sp)
    80003140:	03213823          	sd	s2,48(sp)
    80003144:	03313423          	sd	s3,40(sp)
    80003148:	03413023          	sd	s4,32(sp)
    8000314c:	01513c23          	sd	s5,24(sp)
    80003150:	05010413          	addi	s0,sp,80
    80003154:	06c05c63          	blez	a2,800031cc <consolewrite+0x9c>
    80003158:	00060993          	mv	s3,a2
    8000315c:	00050a13          	mv	s4,a0
    80003160:	00058493          	mv	s1,a1
    80003164:	00000913          	li	s2,0
    80003168:	fff00a93          	li	s5,-1
    8000316c:	01c0006f          	j	80003188 <consolewrite+0x58>
    80003170:	fbf44503          	lbu	a0,-65(s0)
    80003174:	0019091b          	addiw	s2,s2,1
    80003178:	00148493          	addi	s1,s1,1
    8000317c:	00001097          	auipc	ra,0x1
    80003180:	a9c080e7          	jalr	-1380(ra) # 80003c18 <uartputc>
    80003184:	03298063          	beq	s3,s2,800031a4 <consolewrite+0x74>
    80003188:	00048613          	mv	a2,s1
    8000318c:	00100693          	li	a3,1
    80003190:	000a0593          	mv	a1,s4
    80003194:	fbf40513          	addi	a0,s0,-65
    80003198:	00000097          	auipc	ra,0x0
    8000319c:	9d8080e7          	jalr	-1576(ra) # 80002b70 <either_copyin>
    800031a0:	fd5518e3          	bne	a0,s5,80003170 <consolewrite+0x40>
    800031a4:	04813083          	ld	ra,72(sp)
    800031a8:	04013403          	ld	s0,64(sp)
    800031ac:	03813483          	ld	s1,56(sp)
    800031b0:	02813983          	ld	s3,40(sp)
    800031b4:	02013a03          	ld	s4,32(sp)
    800031b8:	01813a83          	ld	s5,24(sp)
    800031bc:	00090513          	mv	a0,s2
    800031c0:	03013903          	ld	s2,48(sp)
    800031c4:	05010113          	addi	sp,sp,80
    800031c8:	00008067          	ret
    800031cc:	00000913          	li	s2,0
    800031d0:	fd5ff06f          	j	800031a4 <consolewrite+0x74>

00000000800031d4 <consoleread>:
    800031d4:	f9010113          	addi	sp,sp,-112
    800031d8:	06813023          	sd	s0,96(sp)
    800031dc:	04913c23          	sd	s1,88(sp)
    800031e0:	05213823          	sd	s2,80(sp)
    800031e4:	05313423          	sd	s3,72(sp)
    800031e8:	05413023          	sd	s4,64(sp)
    800031ec:	03513c23          	sd	s5,56(sp)
    800031f0:	03613823          	sd	s6,48(sp)
    800031f4:	03713423          	sd	s7,40(sp)
    800031f8:	03813023          	sd	s8,32(sp)
    800031fc:	06113423          	sd	ra,104(sp)
    80003200:	01913c23          	sd	s9,24(sp)
    80003204:	07010413          	addi	s0,sp,112
    80003208:	00060b93          	mv	s7,a2
    8000320c:	00050913          	mv	s2,a0
    80003210:	00058c13          	mv	s8,a1
    80003214:	00060b1b          	sext.w	s6,a2
    80003218:	00004497          	auipc	s1,0x4
    8000321c:	91048493          	addi	s1,s1,-1776 # 80006b28 <cons>
    80003220:	00400993          	li	s3,4
    80003224:	fff00a13          	li	s4,-1
    80003228:	00a00a93          	li	s5,10
    8000322c:	05705e63          	blez	s7,80003288 <consoleread+0xb4>
    80003230:	09c4a703          	lw	a4,156(s1)
    80003234:	0984a783          	lw	a5,152(s1)
    80003238:	0007071b          	sext.w	a4,a4
    8000323c:	08e78463          	beq	a5,a4,800032c4 <consoleread+0xf0>
    80003240:	07f7f713          	andi	a4,a5,127
    80003244:	00e48733          	add	a4,s1,a4
    80003248:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000324c:	0017869b          	addiw	a3,a5,1
    80003250:	08d4ac23          	sw	a3,152(s1)
    80003254:	00070c9b          	sext.w	s9,a4
    80003258:	0b370663          	beq	a4,s3,80003304 <consoleread+0x130>
    8000325c:	00100693          	li	a3,1
    80003260:	f9f40613          	addi	a2,s0,-97
    80003264:	000c0593          	mv	a1,s8
    80003268:	00090513          	mv	a0,s2
    8000326c:	f8e40fa3          	sb	a4,-97(s0)
    80003270:	00000097          	auipc	ra,0x0
    80003274:	8b4080e7          	jalr	-1868(ra) # 80002b24 <either_copyout>
    80003278:	01450863          	beq	a0,s4,80003288 <consoleread+0xb4>
    8000327c:	001c0c13          	addi	s8,s8,1
    80003280:	fffb8b9b          	addiw	s7,s7,-1
    80003284:	fb5c94e3          	bne	s9,s5,8000322c <consoleread+0x58>
    80003288:	000b851b          	sext.w	a0,s7
    8000328c:	06813083          	ld	ra,104(sp)
    80003290:	06013403          	ld	s0,96(sp)
    80003294:	05813483          	ld	s1,88(sp)
    80003298:	05013903          	ld	s2,80(sp)
    8000329c:	04813983          	ld	s3,72(sp)
    800032a0:	04013a03          	ld	s4,64(sp)
    800032a4:	03813a83          	ld	s5,56(sp)
    800032a8:	02813b83          	ld	s7,40(sp)
    800032ac:	02013c03          	ld	s8,32(sp)
    800032b0:	01813c83          	ld	s9,24(sp)
    800032b4:	40ab053b          	subw	a0,s6,a0
    800032b8:	03013b03          	ld	s6,48(sp)
    800032bc:	07010113          	addi	sp,sp,112
    800032c0:	00008067          	ret
    800032c4:	00001097          	auipc	ra,0x1
    800032c8:	1d8080e7          	jalr	472(ra) # 8000449c <push_on>
    800032cc:	0984a703          	lw	a4,152(s1)
    800032d0:	09c4a783          	lw	a5,156(s1)
    800032d4:	0007879b          	sext.w	a5,a5
    800032d8:	fef70ce3          	beq	a4,a5,800032d0 <consoleread+0xfc>
    800032dc:	00001097          	auipc	ra,0x1
    800032e0:	234080e7          	jalr	564(ra) # 80004510 <pop_on>
    800032e4:	0984a783          	lw	a5,152(s1)
    800032e8:	07f7f713          	andi	a4,a5,127
    800032ec:	00e48733          	add	a4,s1,a4
    800032f0:	01874703          	lbu	a4,24(a4)
    800032f4:	0017869b          	addiw	a3,a5,1
    800032f8:	08d4ac23          	sw	a3,152(s1)
    800032fc:	00070c9b          	sext.w	s9,a4
    80003300:	f5371ee3          	bne	a4,s3,8000325c <consoleread+0x88>
    80003304:	000b851b          	sext.w	a0,s7
    80003308:	f96bf2e3          	bgeu	s7,s6,8000328c <consoleread+0xb8>
    8000330c:	08f4ac23          	sw	a5,152(s1)
    80003310:	f7dff06f          	j	8000328c <consoleread+0xb8>

0000000080003314 <consputc>:
    80003314:	10000793          	li	a5,256
    80003318:	00f50663          	beq	a0,a5,80003324 <consputc+0x10>
    8000331c:	00001317          	auipc	t1,0x1
    80003320:	9f430067          	jr	-1548(t1) # 80003d10 <uartputc_sync>
    80003324:	ff010113          	addi	sp,sp,-16
    80003328:	00113423          	sd	ra,8(sp)
    8000332c:	00813023          	sd	s0,0(sp)
    80003330:	01010413          	addi	s0,sp,16
    80003334:	00800513          	li	a0,8
    80003338:	00001097          	auipc	ra,0x1
    8000333c:	9d8080e7          	jalr	-1576(ra) # 80003d10 <uartputc_sync>
    80003340:	02000513          	li	a0,32
    80003344:	00001097          	auipc	ra,0x1
    80003348:	9cc080e7          	jalr	-1588(ra) # 80003d10 <uartputc_sync>
    8000334c:	00013403          	ld	s0,0(sp)
    80003350:	00813083          	ld	ra,8(sp)
    80003354:	00800513          	li	a0,8
    80003358:	01010113          	addi	sp,sp,16
    8000335c:	00001317          	auipc	t1,0x1
    80003360:	9b430067          	jr	-1612(t1) # 80003d10 <uartputc_sync>

0000000080003364 <consoleintr>:
    80003364:	fe010113          	addi	sp,sp,-32
    80003368:	00813823          	sd	s0,16(sp)
    8000336c:	00913423          	sd	s1,8(sp)
    80003370:	01213023          	sd	s2,0(sp)
    80003374:	00113c23          	sd	ra,24(sp)
    80003378:	02010413          	addi	s0,sp,32
    8000337c:	00003917          	auipc	s2,0x3
    80003380:	7ac90913          	addi	s2,s2,1964 # 80006b28 <cons>
    80003384:	00050493          	mv	s1,a0
    80003388:	00090513          	mv	a0,s2
    8000338c:	00001097          	auipc	ra,0x1
    80003390:	e40080e7          	jalr	-448(ra) # 800041cc <acquire>
    80003394:	02048c63          	beqz	s1,800033cc <consoleintr+0x68>
    80003398:	0a092783          	lw	a5,160(s2)
    8000339c:	09892703          	lw	a4,152(s2)
    800033a0:	07f00693          	li	a3,127
    800033a4:	40e7873b          	subw	a4,a5,a4
    800033a8:	02e6e263          	bltu	a3,a4,800033cc <consoleintr+0x68>
    800033ac:	00d00713          	li	a4,13
    800033b0:	04e48063          	beq	s1,a4,800033f0 <consoleintr+0x8c>
    800033b4:	07f7f713          	andi	a4,a5,127
    800033b8:	00e90733          	add	a4,s2,a4
    800033bc:	0017879b          	addiw	a5,a5,1
    800033c0:	0af92023          	sw	a5,160(s2)
    800033c4:	00970c23          	sb	s1,24(a4)
    800033c8:	08f92e23          	sw	a5,156(s2)
    800033cc:	01013403          	ld	s0,16(sp)
    800033d0:	01813083          	ld	ra,24(sp)
    800033d4:	00813483          	ld	s1,8(sp)
    800033d8:	00013903          	ld	s2,0(sp)
    800033dc:	00003517          	auipc	a0,0x3
    800033e0:	74c50513          	addi	a0,a0,1868 # 80006b28 <cons>
    800033e4:	02010113          	addi	sp,sp,32
    800033e8:	00001317          	auipc	t1,0x1
    800033ec:	eb030067          	jr	-336(t1) # 80004298 <release>
    800033f0:	00a00493          	li	s1,10
    800033f4:	fc1ff06f          	j	800033b4 <consoleintr+0x50>

00000000800033f8 <consoleinit>:
    800033f8:	fe010113          	addi	sp,sp,-32
    800033fc:	00113c23          	sd	ra,24(sp)
    80003400:	00813823          	sd	s0,16(sp)
    80003404:	00913423          	sd	s1,8(sp)
    80003408:	02010413          	addi	s0,sp,32
    8000340c:	00003497          	auipc	s1,0x3
    80003410:	71c48493          	addi	s1,s1,1820 # 80006b28 <cons>
    80003414:	00048513          	mv	a0,s1
    80003418:	00002597          	auipc	a1,0x2
    8000341c:	e6858593          	addi	a1,a1,-408 # 80005280 <_ZZ12printIntegermE6digits+0x138>
    80003420:	00001097          	auipc	ra,0x1
    80003424:	d88080e7          	jalr	-632(ra) # 800041a8 <initlock>
    80003428:	00000097          	auipc	ra,0x0
    8000342c:	7ac080e7          	jalr	1964(ra) # 80003bd4 <uartinit>
    80003430:	01813083          	ld	ra,24(sp)
    80003434:	01013403          	ld	s0,16(sp)
    80003438:	00000797          	auipc	a5,0x0
    8000343c:	d9c78793          	addi	a5,a5,-612 # 800031d4 <consoleread>
    80003440:	0af4bc23          	sd	a5,184(s1)
    80003444:	00000797          	auipc	a5,0x0
    80003448:	cec78793          	addi	a5,a5,-788 # 80003130 <consolewrite>
    8000344c:	0cf4b023          	sd	a5,192(s1)
    80003450:	00813483          	ld	s1,8(sp)
    80003454:	02010113          	addi	sp,sp,32
    80003458:	00008067          	ret

000000008000345c <console_read>:
    8000345c:	ff010113          	addi	sp,sp,-16
    80003460:	00813423          	sd	s0,8(sp)
    80003464:	01010413          	addi	s0,sp,16
    80003468:	00813403          	ld	s0,8(sp)
    8000346c:	00003317          	auipc	t1,0x3
    80003470:	77433303          	ld	t1,1908(t1) # 80006be0 <devsw+0x10>
    80003474:	01010113          	addi	sp,sp,16
    80003478:	00030067          	jr	t1

000000008000347c <console_write>:
    8000347c:	ff010113          	addi	sp,sp,-16
    80003480:	00813423          	sd	s0,8(sp)
    80003484:	01010413          	addi	s0,sp,16
    80003488:	00813403          	ld	s0,8(sp)
    8000348c:	00003317          	auipc	t1,0x3
    80003490:	75c33303          	ld	t1,1884(t1) # 80006be8 <devsw+0x18>
    80003494:	01010113          	addi	sp,sp,16
    80003498:	00030067          	jr	t1

000000008000349c <panic>:
    8000349c:	fe010113          	addi	sp,sp,-32
    800034a0:	00113c23          	sd	ra,24(sp)
    800034a4:	00813823          	sd	s0,16(sp)
    800034a8:	00913423          	sd	s1,8(sp)
    800034ac:	02010413          	addi	s0,sp,32
    800034b0:	00050493          	mv	s1,a0
    800034b4:	00002517          	auipc	a0,0x2
    800034b8:	dd450513          	addi	a0,a0,-556 # 80005288 <_ZZ12printIntegermE6digits+0x140>
    800034bc:	00003797          	auipc	a5,0x3
    800034c0:	7c07a623          	sw	zero,1996(a5) # 80006c88 <pr+0x18>
    800034c4:	00000097          	auipc	ra,0x0
    800034c8:	034080e7          	jalr	52(ra) # 800034f8 <__printf>
    800034cc:	00048513          	mv	a0,s1
    800034d0:	00000097          	auipc	ra,0x0
    800034d4:	028080e7          	jalr	40(ra) # 800034f8 <__printf>
    800034d8:	00002517          	auipc	a0,0x2
    800034dc:	be050513          	addi	a0,a0,-1056 # 800050b8 <CONSOLE_STATUS+0xa8>
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	018080e7          	jalr	24(ra) # 800034f8 <__printf>
    800034e8:	00100793          	li	a5,1
    800034ec:	00002717          	auipc	a4,0x2
    800034f0:	50f72623          	sw	a5,1292(a4) # 800059f8 <panicked>
    800034f4:	0000006f          	j	800034f4 <panic+0x58>

00000000800034f8 <__printf>:
    800034f8:	f3010113          	addi	sp,sp,-208
    800034fc:	08813023          	sd	s0,128(sp)
    80003500:	07313423          	sd	s3,104(sp)
    80003504:	09010413          	addi	s0,sp,144
    80003508:	05813023          	sd	s8,64(sp)
    8000350c:	08113423          	sd	ra,136(sp)
    80003510:	06913c23          	sd	s1,120(sp)
    80003514:	07213823          	sd	s2,112(sp)
    80003518:	07413023          	sd	s4,96(sp)
    8000351c:	05513c23          	sd	s5,88(sp)
    80003520:	05613823          	sd	s6,80(sp)
    80003524:	05713423          	sd	s7,72(sp)
    80003528:	03913c23          	sd	s9,56(sp)
    8000352c:	03a13823          	sd	s10,48(sp)
    80003530:	03b13423          	sd	s11,40(sp)
    80003534:	00003317          	auipc	t1,0x3
    80003538:	73c30313          	addi	t1,t1,1852 # 80006c70 <pr>
    8000353c:	01832c03          	lw	s8,24(t1)
    80003540:	00b43423          	sd	a1,8(s0)
    80003544:	00c43823          	sd	a2,16(s0)
    80003548:	00d43c23          	sd	a3,24(s0)
    8000354c:	02e43023          	sd	a4,32(s0)
    80003550:	02f43423          	sd	a5,40(s0)
    80003554:	03043823          	sd	a6,48(s0)
    80003558:	03143c23          	sd	a7,56(s0)
    8000355c:	00050993          	mv	s3,a0
    80003560:	4a0c1663          	bnez	s8,80003a0c <__printf+0x514>
    80003564:	60098c63          	beqz	s3,80003b7c <__printf+0x684>
    80003568:	0009c503          	lbu	a0,0(s3)
    8000356c:	00840793          	addi	a5,s0,8
    80003570:	f6f43c23          	sd	a5,-136(s0)
    80003574:	00000493          	li	s1,0
    80003578:	22050063          	beqz	a0,80003798 <__printf+0x2a0>
    8000357c:	00002a37          	lui	s4,0x2
    80003580:	00018ab7          	lui	s5,0x18
    80003584:	000f4b37          	lui	s6,0xf4
    80003588:	00989bb7          	lui	s7,0x989
    8000358c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003590:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003594:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003598:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000359c:	00148c9b          	addiw	s9,s1,1
    800035a0:	02500793          	li	a5,37
    800035a4:	01998933          	add	s2,s3,s9
    800035a8:	38f51263          	bne	a0,a5,8000392c <__printf+0x434>
    800035ac:	00094783          	lbu	a5,0(s2)
    800035b0:	00078c9b          	sext.w	s9,a5
    800035b4:	1e078263          	beqz	a5,80003798 <__printf+0x2a0>
    800035b8:	0024849b          	addiw	s1,s1,2
    800035bc:	07000713          	li	a4,112
    800035c0:	00998933          	add	s2,s3,s1
    800035c4:	38e78a63          	beq	a5,a4,80003958 <__printf+0x460>
    800035c8:	20f76863          	bltu	a4,a5,800037d8 <__printf+0x2e0>
    800035cc:	42a78863          	beq	a5,a0,800039fc <__printf+0x504>
    800035d0:	06400713          	li	a4,100
    800035d4:	40e79663          	bne	a5,a4,800039e0 <__printf+0x4e8>
    800035d8:	f7843783          	ld	a5,-136(s0)
    800035dc:	0007a603          	lw	a2,0(a5)
    800035e0:	00878793          	addi	a5,a5,8
    800035e4:	f6f43c23          	sd	a5,-136(s0)
    800035e8:	42064a63          	bltz	a2,80003a1c <__printf+0x524>
    800035ec:	00a00713          	li	a4,10
    800035f0:	02e677bb          	remuw	a5,a2,a4
    800035f4:	00002d97          	auipc	s11,0x2
    800035f8:	cbcd8d93          	addi	s11,s11,-836 # 800052b0 <digits>
    800035fc:	00900593          	li	a1,9
    80003600:	0006051b          	sext.w	a0,a2
    80003604:	00000c93          	li	s9,0
    80003608:	02079793          	slli	a5,a5,0x20
    8000360c:	0207d793          	srli	a5,a5,0x20
    80003610:	00fd87b3          	add	a5,s11,a5
    80003614:	0007c783          	lbu	a5,0(a5)
    80003618:	02e656bb          	divuw	a3,a2,a4
    8000361c:	f8f40023          	sb	a5,-128(s0)
    80003620:	14c5d863          	bge	a1,a2,80003770 <__printf+0x278>
    80003624:	06300593          	li	a1,99
    80003628:	00100c93          	li	s9,1
    8000362c:	02e6f7bb          	remuw	a5,a3,a4
    80003630:	02079793          	slli	a5,a5,0x20
    80003634:	0207d793          	srli	a5,a5,0x20
    80003638:	00fd87b3          	add	a5,s11,a5
    8000363c:	0007c783          	lbu	a5,0(a5)
    80003640:	02e6d73b          	divuw	a4,a3,a4
    80003644:	f8f400a3          	sb	a5,-127(s0)
    80003648:	12a5f463          	bgeu	a1,a0,80003770 <__printf+0x278>
    8000364c:	00a00693          	li	a3,10
    80003650:	00900593          	li	a1,9
    80003654:	02d777bb          	remuw	a5,a4,a3
    80003658:	02079793          	slli	a5,a5,0x20
    8000365c:	0207d793          	srli	a5,a5,0x20
    80003660:	00fd87b3          	add	a5,s11,a5
    80003664:	0007c503          	lbu	a0,0(a5)
    80003668:	02d757bb          	divuw	a5,a4,a3
    8000366c:	f8a40123          	sb	a0,-126(s0)
    80003670:	48e5f263          	bgeu	a1,a4,80003af4 <__printf+0x5fc>
    80003674:	06300513          	li	a0,99
    80003678:	02d7f5bb          	remuw	a1,a5,a3
    8000367c:	02059593          	slli	a1,a1,0x20
    80003680:	0205d593          	srli	a1,a1,0x20
    80003684:	00bd85b3          	add	a1,s11,a1
    80003688:	0005c583          	lbu	a1,0(a1)
    8000368c:	02d7d7bb          	divuw	a5,a5,a3
    80003690:	f8b401a3          	sb	a1,-125(s0)
    80003694:	48e57263          	bgeu	a0,a4,80003b18 <__printf+0x620>
    80003698:	3e700513          	li	a0,999
    8000369c:	02d7f5bb          	remuw	a1,a5,a3
    800036a0:	02059593          	slli	a1,a1,0x20
    800036a4:	0205d593          	srli	a1,a1,0x20
    800036a8:	00bd85b3          	add	a1,s11,a1
    800036ac:	0005c583          	lbu	a1,0(a1)
    800036b0:	02d7d7bb          	divuw	a5,a5,a3
    800036b4:	f8b40223          	sb	a1,-124(s0)
    800036b8:	46e57663          	bgeu	a0,a4,80003b24 <__printf+0x62c>
    800036bc:	02d7f5bb          	remuw	a1,a5,a3
    800036c0:	02059593          	slli	a1,a1,0x20
    800036c4:	0205d593          	srli	a1,a1,0x20
    800036c8:	00bd85b3          	add	a1,s11,a1
    800036cc:	0005c583          	lbu	a1,0(a1)
    800036d0:	02d7d7bb          	divuw	a5,a5,a3
    800036d4:	f8b402a3          	sb	a1,-123(s0)
    800036d8:	46ea7863          	bgeu	s4,a4,80003b48 <__printf+0x650>
    800036dc:	02d7f5bb          	remuw	a1,a5,a3
    800036e0:	02059593          	slli	a1,a1,0x20
    800036e4:	0205d593          	srli	a1,a1,0x20
    800036e8:	00bd85b3          	add	a1,s11,a1
    800036ec:	0005c583          	lbu	a1,0(a1)
    800036f0:	02d7d7bb          	divuw	a5,a5,a3
    800036f4:	f8b40323          	sb	a1,-122(s0)
    800036f8:	3eeaf863          	bgeu	s5,a4,80003ae8 <__printf+0x5f0>
    800036fc:	02d7f5bb          	remuw	a1,a5,a3
    80003700:	02059593          	slli	a1,a1,0x20
    80003704:	0205d593          	srli	a1,a1,0x20
    80003708:	00bd85b3          	add	a1,s11,a1
    8000370c:	0005c583          	lbu	a1,0(a1)
    80003710:	02d7d7bb          	divuw	a5,a5,a3
    80003714:	f8b403a3          	sb	a1,-121(s0)
    80003718:	42eb7e63          	bgeu	s6,a4,80003b54 <__printf+0x65c>
    8000371c:	02d7f5bb          	remuw	a1,a5,a3
    80003720:	02059593          	slli	a1,a1,0x20
    80003724:	0205d593          	srli	a1,a1,0x20
    80003728:	00bd85b3          	add	a1,s11,a1
    8000372c:	0005c583          	lbu	a1,0(a1)
    80003730:	02d7d7bb          	divuw	a5,a5,a3
    80003734:	f8b40423          	sb	a1,-120(s0)
    80003738:	42ebfc63          	bgeu	s7,a4,80003b70 <__printf+0x678>
    8000373c:	02079793          	slli	a5,a5,0x20
    80003740:	0207d793          	srli	a5,a5,0x20
    80003744:	00fd8db3          	add	s11,s11,a5
    80003748:	000dc703          	lbu	a4,0(s11)
    8000374c:	00a00793          	li	a5,10
    80003750:	00900c93          	li	s9,9
    80003754:	f8e404a3          	sb	a4,-119(s0)
    80003758:	00065c63          	bgez	a2,80003770 <__printf+0x278>
    8000375c:	f9040713          	addi	a4,s0,-112
    80003760:	00f70733          	add	a4,a4,a5
    80003764:	02d00693          	li	a3,45
    80003768:	fed70823          	sb	a3,-16(a4)
    8000376c:	00078c93          	mv	s9,a5
    80003770:	f8040793          	addi	a5,s0,-128
    80003774:	01978cb3          	add	s9,a5,s9
    80003778:	f7f40d13          	addi	s10,s0,-129
    8000377c:	000cc503          	lbu	a0,0(s9)
    80003780:	fffc8c93          	addi	s9,s9,-1
    80003784:	00000097          	auipc	ra,0x0
    80003788:	b90080e7          	jalr	-1136(ra) # 80003314 <consputc>
    8000378c:	ffac98e3          	bne	s9,s10,8000377c <__printf+0x284>
    80003790:	00094503          	lbu	a0,0(s2)
    80003794:	e00514e3          	bnez	a0,8000359c <__printf+0xa4>
    80003798:	1a0c1663          	bnez	s8,80003944 <__printf+0x44c>
    8000379c:	08813083          	ld	ra,136(sp)
    800037a0:	08013403          	ld	s0,128(sp)
    800037a4:	07813483          	ld	s1,120(sp)
    800037a8:	07013903          	ld	s2,112(sp)
    800037ac:	06813983          	ld	s3,104(sp)
    800037b0:	06013a03          	ld	s4,96(sp)
    800037b4:	05813a83          	ld	s5,88(sp)
    800037b8:	05013b03          	ld	s6,80(sp)
    800037bc:	04813b83          	ld	s7,72(sp)
    800037c0:	04013c03          	ld	s8,64(sp)
    800037c4:	03813c83          	ld	s9,56(sp)
    800037c8:	03013d03          	ld	s10,48(sp)
    800037cc:	02813d83          	ld	s11,40(sp)
    800037d0:	0d010113          	addi	sp,sp,208
    800037d4:	00008067          	ret
    800037d8:	07300713          	li	a4,115
    800037dc:	1ce78a63          	beq	a5,a4,800039b0 <__printf+0x4b8>
    800037e0:	07800713          	li	a4,120
    800037e4:	1ee79e63          	bne	a5,a4,800039e0 <__printf+0x4e8>
    800037e8:	f7843783          	ld	a5,-136(s0)
    800037ec:	0007a703          	lw	a4,0(a5)
    800037f0:	00878793          	addi	a5,a5,8
    800037f4:	f6f43c23          	sd	a5,-136(s0)
    800037f8:	28074263          	bltz	a4,80003a7c <__printf+0x584>
    800037fc:	00002d97          	auipc	s11,0x2
    80003800:	ab4d8d93          	addi	s11,s11,-1356 # 800052b0 <digits>
    80003804:	00f77793          	andi	a5,a4,15
    80003808:	00fd87b3          	add	a5,s11,a5
    8000380c:	0007c683          	lbu	a3,0(a5)
    80003810:	00f00613          	li	a2,15
    80003814:	0007079b          	sext.w	a5,a4
    80003818:	f8d40023          	sb	a3,-128(s0)
    8000381c:	0047559b          	srliw	a1,a4,0x4
    80003820:	0047569b          	srliw	a3,a4,0x4
    80003824:	00000c93          	li	s9,0
    80003828:	0ee65063          	bge	a2,a4,80003908 <__printf+0x410>
    8000382c:	00f6f693          	andi	a3,a3,15
    80003830:	00dd86b3          	add	a3,s11,a3
    80003834:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003838:	0087d79b          	srliw	a5,a5,0x8
    8000383c:	00100c93          	li	s9,1
    80003840:	f8d400a3          	sb	a3,-127(s0)
    80003844:	0cb67263          	bgeu	a2,a1,80003908 <__printf+0x410>
    80003848:	00f7f693          	andi	a3,a5,15
    8000384c:	00dd86b3          	add	a3,s11,a3
    80003850:	0006c583          	lbu	a1,0(a3)
    80003854:	00f00613          	li	a2,15
    80003858:	0047d69b          	srliw	a3,a5,0x4
    8000385c:	f8b40123          	sb	a1,-126(s0)
    80003860:	0047d593          	srli	a1,a5,0x4
    80003864:	28f67e63          	bgeu	a2,a5,80003b00 <__printf+0x608>
    80003868:	00f6f693          	andi	a3,a3,15
    8000386c:	00dd86b3          	add	a3,s11,a3
    80003870:	0006c503          	lbu	a0,0(a3)
    80003874:	0087d813          	srli	a6,a5,0x8
    80003878:	0087d69b          	srliw	a3,a5,0x8
    8000387c:	f8a401a3          	sb	a0,-125(s0)
    80003880:	28b67663          	bgeu	a2,a1,80003b0c <__printf+0x614>
    80003884:	00f6f693          	andi	a3,a3,15
    80003888:	00dd86b3          	add	a3,s11,a3
    8000388c:	0006c583          	lbu	a1,0(a3)
    80003890:	00c7d513          	srli	a0,a5,0xc
    80003894:	00c7d69b          	srliw	a3,a5,0xc
    80003898:	f8b40223          	sb	a1,-124(s0)
    8000389c:	29067a63          	bgeu	a2,a6,80003b30 <__printf+0x638>
    800038a0:	00f6f693          	andi	a3,a3,15
    800038a4:	00dd86b3          	add	a3,s11,a3
    800038a8:	0006c583          	lbu	a1,0(a3)
    800038ac:	0107d813          	srli	a6,a5,0x10
    800038b0:	0107d69b          	srliw	a3,a5,0x10
    800038b4:	f8b402a3          	sb	a1,-123(s0)
    800038b8:	28a67263          	bgeu	a2,a0,80003b3c <__printf+0x644>
    800038bc:	00f6f693          	andi	a3,a3,15
    800038c0:	00dd86b3          	add	a3,s11,a3
    800038c4:	0006c683          	lbu	a3,0(a3)
    800038c8:	0147d79b          	srliw	a5,a5,0x14
    800038cc:	f8d40323          	sb	a3,-122(s0)
    800038d0:	21067663          	bgeu	a2,a6,80003adc <__printf+0x5e4>
    800038d4:	02079793          	slli	a5,a5,0x20
    800038d8:	0207d793          	srli	a5,a5,0x20
    800038dc:	00fd8db3          	add	s11,s11,a5
    800038e0:	000dc683          	lbu	a3,0(s11)
    800038e4:	00800793          	li	a5,8
    800038e8:	00700c93          	li	s9,7
    800038ec:	f8d403a3          	sb	a3,-121(s0)
    800038f0:	00075c63          	bgez	a4,80003908 <__printf+0x410>
    800038f4:	f9040713          	addi	a4,s0,-112
    800038f8:	00f70733          	add	a4,a4,a5
    800038fc:	02d00693          	li	a3,45
    80003900:	fed70823          	sb	a3,-16(a4)
    80003904:	00078c93          	mv	s9,a5
    80003908:	f8040793          	addi	a5,s0,-128
    8000390c:	01978cb3          	add	s9,a5,s9
    80003910:	f7f40d13          	addi	s10,s0,-129
    80003914:	000cc503          	lbu	a0,0(s9)
    80003918:	fffc8c93          	addi	s9,s9,-1
    8000391c:	00000097          	auipc	ra,0x0
    80003920:	9f8080e7          	jalr	-1544(ra) # 80003314 <consputc>
    80003924:	ff9d18e3          	bne	s10,s9,80003914 <__printf+0x41c>
    80003928:	0100006f          	j	80003938 <__printf+0x440>
    8000392c:	00000097          	auipc	ra,0x0
    80003930:	9e8080e7          	jalr	-1560(ra) # 80003314 <consputc>
    80003934:	000c8493          	mv	s1,s9
    80003938:	00094503          	lbu	a0,0(s2)
    8000393c:	c60510e3          	bnez	a0,8000359c <__printf+0xa4>
    80003940:	e40c0ee3          	beqz	s8,8000379c <__printf+0x2a4>
    80003944:	00003517          	auipc	a0,0x3
    80003948:	32c50513          	addi	a0,a0,812 # 80006c70 <pr>
    8000394c:	00001097          	auipc	ra,0x1
    80003950:	94c080e7          	jalr	-1716(ra) # 80004298 <release>
    80003954:	e49ff06f          	j	8000379c <__printf+0x2a4>
    80003958:	f7843783          	ld	a5,-136(s0)
    8000395c:	03000513          	li	a0,48
    80003960:	01000d13          	li	s10,16
    80003964:	00878713          	addi	a4,a5,8
    80003968:	0007bc83          	ld	s9,0(a5)
    8000396c:	f6e43c23          	sd	a4,-136(s0)
    80003970:	00000097          	auipc	ra,0x0
    80003974:	9a4080e7          	jalr	-1628(ra) # 80003314 <consputc>
    80003978:	07800513          	li	a0,120
    8000397c:	00000097          	auipc	ra,0x0
    80003980:	998080e7          	jalr	-1640(ra) # 80003314 <consputc>
    80003984:	00002d97          	auipc	s11,0x2
    80003988:	92cd8d93          	addi	s11,s11,-1748 # 800052b0 <digits>
    8000398c:	03ccd793          	srli	a5,s9,0x3c
    80003990:	00fd87b3          	add	a5,s11,a5
    80003994:	0007c503          	lbu	a0,0(a5)
    80003998:	fffd0d1b          	addiw	s10,s10,-1
    8000399c:	004c9c93          	slli	s9,s9,0x4
    800039a0:	00000097          	auipc	ra,0x0
    800039a4:	974080e7          	jalr	-1676(ra) # 80003314 <consputc>
    800039a8:	fe0d12e3          	bnez	s10,8000398c <__printf+0x494>
    800039ac:	f8dff06f          	j	80003938 <__printf+0x440>
    800039b0:	f7843783          	ld	a5,-136(s0)
    800039b4:	0007bc83          	ld	s9,0(a5)
    800039b8:	00878793          	addi	a5,a5,8
    800039bc:	f6f43c23          	sd	a5,-136(s0)
    800039c0:	000c9a63          	bnez	s9,800039d4 <__printf+0x4dc>
    800039c4:	1080006f          	j	80003acc <__printf+0x5d4>
    800039c8:	001c8c93          	addi	s9,s9,1
    800039cc:	00000097          	auipc	ra,0x0
    800039d0:	948080e7          	jalr	-1720(ra) # 80003314 <consputc>
    800039d4:	000cc503          	lbu	a0,0(s9)
    800039d8:	fe0518e3          	bnez	a0,800039c8 <__printf+0x4d0>
    800039dc:	f5dff06f          	j	80003938 <__printf+0x440>
    800039e0:	02500513          	li	a0,37
    800039e4:	00000097          	auipc	ra,0x0
    800039e8:	930080e7          	jalr	-1744(ra) # 80003314 <consputc>
    800039ec:	000c8513          	mv	a0,s9
    800039f0:	00000097          	auipc	ra,0x0
    800039f4:	924080e7          	jalr	-1756(ra) # 80003314 <consputc>
    800039f8:	f41ff06f          	j	80003938 <__printf+0x440>
    800039fc:	02500513          	li	a0,37
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	914080e7          	jalr	-1772(ra) # 80003314 <consputc>
    80003a08:	f31ff06f          	j	80003938 <__printf+0x440>
    80003a0c:	00030513          	mv	a0,t1
    80003a10:	00000097          	auipc	ra,0x0
    80003a14:	7bc080e7          	jalr	1980(ra) # 800041cc <acquire>
    80003a18:	b4dff06f          	j	80003564 <__printf+0x6c>
    80003a1c:	40c0053b          	negw	a0,a2
    80003a20:	00a00713          	li	a4,10
    80003a24:	02e576bb          	remuw	a3,a0,a4
    80003a28:	00002d97          	auipc	s11,0x2
    80003a2c:	888d8d93          	addi	s11,s11,-1912 # 800052b0 <digits>
    80003a30:	ff700593          	li	a1,-9
    80003a34:	02069693          	slli	a3,a3,0x20
    80003a38:	0206d693          	srli	a3,a3,0x20
    80003a3c:	00dd86b3          	add	a3,s11,a3
    80003a40:	0006c683          	lbu	a3,0(a3)
    80003a44:	02e557bb          	divuw	a5,a0,a4
    80003a48:	f8d40023          	sb	a3,-128(s0)
    80003a4c:	10b65e63          	bge	a2,a1,80003b68 <__printf+0x670>
    80003a50:	06300593          	li	a1,99
    80003a54:	02e7f6bb          	remuw	a3,a5,a4
    80003a58:	02069693          	slli	a3,a3,0x20
    80003a5c:	0206d693          	srli	a3,a3,0x20
    80003a60:	00dd86b3          	add	a3,s11,a3
    80003a64:	0006c683          	lbu	a3,0(a3)
    80003a68:	02e7d73b          	divuw	a4,a5,a4
    80003a6c:	00200793          	li	a5,2
    80003a70:	f8d400a3          	sb	a3,-127(s0)
    80003a74:	bca5ece3          	bltu	a1,a0,8000364c <__printf+0x154>
    80003a78:	ce5ff06f          	j	8000375c <__printf+0x264>
    80003a7c:	40e007bb          	negw	a5,a4
    80003a80:	00002d97          	auipc	s11,0x2
    80003a84:	830d8d93          	addi	s11,s11,-2000 # 800052b0 <digits>
    80003a88:	00f7f693          	andi	a3,a5,15
    80003a8c:	00dd86b3          	add	a3,s11,a3
    80003a90:	0006c583          	lbu	a1,0(a3)
    80003a94:	ff100613          	li	a2,-15
    80003a98:	0047d69b          	srliw	a3,a5,0x4
    80003a9c:	f8b40023          	sb	a1,-128(s0)
    80003aa0:	0047d59b          	srliw	a1,a5,0x4
    80003aa4:	0ac75e63          	bge	a4,a2,80003b60 <__printf+0x668>
    80003aa8:	00f6f693          	andi	a3,a3,15
    80003aac:	00dd86b3          	add	a3,s11,a3
    80003ab0:	0006c603          	lbu	a2,0(a3)
    80003ab4:	00f00693          	li	a3,15
    80003ab8:	0087d79b          	srliw	a5,a5,0x8
    80003abc:	f8c400a3          	sb	a2,-127(s0)
    80003ac0:	d8b6e4e3          	bltu	a3,a1,80003848 <__printf+0x350>
    80003ac4:	00200793          	li	a5,2
    80003ac8:	e2dff06f          	j	800038f4 <__printf+0x3fc>
    80003acc:	00001c97          	auipc	s9,0x1
    80003ad0:	7c4c8c93          	addi	s9,s9,1988 # 80005290 <_ZZ12printIntegermE6digits+0x148>
    80003ad4:	02800513          	li	a0,40
    80003ad8:	ef1ff06f          	j	800039c8 <__printf+0x4d0>
    80003adc:	00700793          	li	a5,7
    80003ae0:	00600c93          	li	s9,6
    80003ae4:	e0dff06f          	j	800038f0 <__printf+0x3f8>
    80003ae8:	00700793          	li	a5,7
    80003aec:	00600c93          	li	s9,6
    80003af0:	c69ff06f          	j	80003758 <__printf+0x260>
    80003af4:	00300793          	li	a5,3
    80003af8:	00200c93          	li	s9,2
    80003afc:	c5dff06f          	j	80003758 <__printf+0x260>
    80003b00:	00300793          	li	a5,3
    80003b04:	00200c93          	li	s9,2
    80003b08:	de9ff06f          	j	800038f0 <__printf+0x3f8>
    80003b0c:	00400793          	li	a5,4
    80003b10:	00300c93          	li	s9,3
    80003b14:	dddff06f          	j	800038f0 <__printf+0x3f8>
    80003b18:	00400793          	li	a5,4
    80003b1c:	00300c93          	li	s9,3
    80003b20:	c39ff06f          	j	80003758 <__printf+0x260>
    80003b24:	00500793          	li	a5,5
    80003b28:	00400c93          	li	s9,4
    80003b2c:	c2dff06f          	j	80003758 <__printf+0x260>
    80003b30:	00500793          	li	a5,5
    80003b34:	00400c93          	li	s9,4
    80003b38:	db9ff06f          	j	800038f0 <__printf+0x3f8>
    80003b3c:	00600793          	li	a5,6
    80003b40:	00500c93          	li	s9,5
    80003b44:	dadff06f          	j	800038f0 <__printf+0x3f8>
    80003b48:	00600793          	li	a5,6
    80003b4c:	00500c93          	li	s9,5
    80003b50:	c09ff06f          	j	80003758 <__printf+0x260>
    80003b54:	00800793          	li	a5,8
    80003b58:	00700c93          	li	s9,7
    80003b5c:	bfdff06f          	j	80003758 <__printf+0x260>
    80003b60:	00100793          	li	a5,1
    80003b64:	d91ff06f          	j	800038f4 <__printf+0x3fc>
    80003b68:	00100793          	li	a5,1
    80003b6c:	bf1ff06f          	j	8000375c <__printf+0x264>
    80003b70:	00900793          	li	a5,9
    80003b74:	00800c93          	li	s9,8
    80003b78:	be1ff06f          	j	80003758 <__printf+0x260>
    80003b7c:	00001517          	auipc	a0,0x1
    80003b80:	71c50513          	addi	a0,a0,1820 # 80005298 <_ZZ12printIntegermE6digits+0x150>
    80003b84:	00000097          	auipc	ra,0x0
    80003b88:	918080e7          	jalr	-1768(ra) # 8000349c <panic>

0000000080003b8c <printfinit>:
    80003b8c:	fe010113          	addi	sp,sp,-32
    80003b90:	00813823          	sd	s0,16(sp)
    80003b94:	00913423          	sd	s1,8(sp)
    80003b98:	00113c23          	sd	ra,24(sp)
    80003b9c:	02010413          	addi	s0,sp,32
    80003ba0:	00003497          	auipc	s1,0x3
    80003ba4:	0d048493          	addi	s1,s1,208 # 80006c70 <pr>
    80003ba8:	00048513          	mv	a0,s1
    80003bac:	00001597          	auipc	a1,0x1
    80003bb0:	6fc58593          	addi	a1,a1,1788 # 800052a8 <_ZZ12printIntegermE6digits+0x160>
    80003bb4:	00000097          	auipc	ra,0x0
    80003bb8:	5f4080e7          	jalr	1524(ra) # 800041a8 <initlock>
    80003bbc:	01813083          	ld	ra,24(sp)
    80003bc0:	01013403          	ld	s0,16(sp)
    80003bc4:	0004ac23          	sw	zero,24(s1)
    80003bc8:	00813483          	ld	s1,8(sp)
    80003bcc:	02010113          	addi	sp,sp,32
    80003bd0:	00008067          	ret

0000000080003bd4 <uartinit>:
    80003bd4:	ff010113          	addi	sp,sp,-16
    80003bd8:	00813423          	sd	s0,8(sp)
    80003bdc:	01010413          	addi	s0,sp,16
    80003be0:	100007b7          	lui	a5,0x10000
    80003be4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003be8:	f8000713          	li	a4,-128
    80003bec:	00e781a3          	sb	a4,3(a5)
    80003bf0:	00300713          	li	a4,3
    80003bf4:	00e78023          	sb	a4,0(a5)
    80003bf8:	000780a3          	sb	zero,1(a5)
    80003bfc:	00e781a3          	sb	a4,3(a5)
    80003c00:	00700693          	li	a3,7
    80003c04:	00d78123          	sb	a3,2(a5)
    80003c08:	00e780a3          	sb	a4,1(a5)
    80003c0c:	00813403          	ld	s0,8(sp)
    80003c10:	01010113          	addi	sp,sp,16
    80003c14:	00008067          	ret

0000000080003c18 <uartputc>:
    80003c18:	00002797          	auipc	a5,0x2
    80003c1c:	de07a783          	lw	a5,-544(a5) # 800059f8 <panicked>
    80003c20:	00078463          	beqz	a5,80003c28 <uartputc+0x10>
    80003c24:	0000006f          	j	80003c24 <uartputc+0xc>
    80003c28:	fd010113          	addi	sp,sp,-48
    80003c2c:	02813023          	sd	s0,32(sp)
    80003c30:	00913c23          	sd	s1,24(sp)
    80003c34:	01213823          	sd	s2,16(sp)
    80003c38:	01313423          	sd	s3,8(sp)
    80003c3c:	02113423          	sd	ra,40(sp)
    80003c40:	03010413          	addi	s0,sp,48
    80003c44:	00002917          	auipc	s2,0x2
    80003c48:	dbc90913          	addi	s2,s2,-580 # 80005a00 <uart_tx_r>
    80003c4c:	00093783          	ld	a5,0(s2)
    80003c50:	00002497          	auipc	s1,0x2
    80003c54:	db848493          	addi	s1,s1,-584 # 80005a08 <uart_tx_w>
    80003c58:	0004b703          	ld	a4,0(s1)
    80003c5c:	02078693          	addi	a3,a5,32
    80003c60:	00050993          	mv	s3,a0
    80003c64:	02e69c63          	bne	a3,a4,80003c9c <uartputc+0x84>
    80003c68:	00001097          	auipc	ra,0x1
    80003c6c:	834080e7          	jalr	-1996(ra) # 8000449c <push_on>
    80003c70:	00093783          	ld	a5,0(s2)
    80003c74:	0004b703          	ld	a4,0(s1)
    80003c78:	02078793          	addi	a5,a5,32
    80003c7c:	00e79463          	bne	a5,a4,80003c84 <uartputc+0x6c>
    80003c80:	0000006f          	j	80003c80 <uartputc+0x68>
    80003c84:	00001097          	auipc	ra,0x1
    80003c88:	88c080e7          	jalr	-1908(ra) # 80004510 <pop_on>
    80003c8c:	00093783          	ld	a5,0(s2)
    80003c90:	0004b703          	ld	a4,0(s1)
    80003c94:	02078693          	addi	a3,a5,32
    80003c98:	fce688e3          	beq	a3,a4,80003c68 <uartputc+0x50>
    80003c9c:	01f77693          	andi	a3,a4,31
    80003ca0:	00003597          	auipc	a1,0x3
    80003ca4:	ff058593          	addi	a1,a1,-16 # 80006c90 <uart_tx_buf>
    80003ca8:	00d586b3          	add	a3,a1,a3
    80003cac:	00170713          	addi	a4,a4,1
    80003cb0:	01368023          	sb	s3,0(a3)
    80003cb4:	00e4b023          	sd	a4,0(s1)
    80003cb8:	10000637          	lui	a2,0x10000
    80003cbc:	02f71063          	bne	a4,a5,80003cdc <uartputc+0xc4>
    80003cc0:	0340006f          	j	80003cf4 <uartputc+0xdc>
    80003cc4:	00074703          	lbu	a4,0(a4)
    80003cc8:	00f93023          	sd	a5,0(s2)
    80003ccc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003cd0:	00093783          	ld	a5,0(s2)
    80003cd4:	0004b703          	ld	a4,0(s1)
    80003cd8:	00f70e63          	beq	a4,a5,80003cf4 <uartputc+0xdc>
    80003cdc:	00564683          	lbu	a3,5(a2)
    80003ce0:	01f7f713          	andi	a4,a5,31
    80003ce4:	00e58733          	add	a4,a1,a4
    80003ce8:	0206f693          	andi	a3,a3,32
    80003cec:	00178793          	addi	a5,a5,1
    80003cf0:	fc069ae3          	bnez	a3,80003cc4 <uartputc+0xac>
    80003cf4:	02813083          	ld	ra,40(sp)
    80003cf8:	02013403          	ld	s0,32(sp)
    80003cfc:	01813483          	ld	s1,24(sp)
    80003d00:	01013903          	ld	s2,16(sp)
    80003d04:	00813983          	ld	s3,8(sp)
    80003d08:	03010113          	addi	sp,sp,48
    80003d0c:	00008067          	ret

0000000080003d10 <uartputc_sync>:
    80003d10:	ff010113          	addi	sp,sp,-16
    80003d14:	00813423          	sd	s0,8(sp)
    80003d18:	01010413          	addi	s0,sp,16
    80003d1c:	00002717          	auipc	a4,0x2
    80003d20:	cdc72703          	lw	a4,-804(a4) # 800059f8 <panicked>
    80003d24:	02071663          	bnez	a4,80003d50 <uartputc_sync+0x40>
    80003d28:	00050793          	mv	a5,a0
    80003d2c:	100006b7          	lui	a3,0x10000
    80003d30:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003d34:	02077713          	andi	a4,a4,32
    80003d38:	fe070ce3          	beqz	a4,80003d30 <uartputc_sync+0x20>
    80003d3c:	0ff7f793          	andi	a5,a5,255
    80003d40:	00f68023          	sb	a5,0(a3)
    80003d44:	00813403          	ld	s0,8(sp)
    80003d48:	01010113          	addi	sp,sp,16
    80003d4c:	00008067          	ret
    80003d50:	0000006f          	j	80003d50 <uartputc_sync+0x40>

0000000080003d54 <uartstart>:
    80003d54:	ff010113          	addi	sp,sp,-16
    80003d58:	00813423          	sd	s0,8(sp)
    80003d5c:	01010413          	addi	s0,sp,16
    80003d60:	00002617          	auipc	a2,0x2
    80003d64:	ca060613          	addi	a2,a2,-864 # 80005a00 <uart_tx_r>
    80003d68:	00002517          	auipc	a0,0x2
    80003d6c:	ca050513          	addi	a0,a0,-864 # 80005a08 <uart_tx_w>
    80003d70:	00063783          	ld	a5,0(a2)
    80003d74:	00053703          	ld	a4,0(a0)
    80003d78:	04f70263          	beq	a4,a5,80003dbc <uartstart+0x68>
    80003d7c:	100005b7          	lui	a1,0x10000
    80003d80:	00003817          	auipc	a6,0x3
    80003d84:	f1080813          	addi	a6,a6,-240 # 80006c90 <uart_tx_buf>
    80003d88:	01c0006f          	j	80003da4 <uartstart+0x50>
    80003d8c:	0006c703          	lbu	a4,0(a3)
    80003d90:	00f63023          	sd	a5,0(a2)
    80003d94:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d98:	00063783          	ld	a5,0(a2)
    80003d9c:	00053703          	ld	a4,0(a0)
    80003da0:	00f70e63          	beq	a4,a5,80003dbc <uartstart+0x68>
    80003da4:	01f7f713          	andi	a4,a5,31
    80003da8:	00e806b3          	add	a3,a6,a4
    80003dac:	0055c703          	lbu	a4,5(a1)
    80003db0:	00178793          	addi	a5,a5,1
    80003db4:	02077713          	andi	a4,a4,32
    80003db8:	fc071ae3          	bnez	a4,80003d8c <uartstart+0x38>
    80003dbc:	00813403          	ld	s0,8(sp)
    80003dc0:	01010113          	addi	sp,sp,16
    80003dc4:	00008067          	ret

0000000080003dc8 <uartgetc>:
    80003dc8:	ff010113          	addi	sp,sp,-16
    80003dcc:	00813423          	sd	s0,8(sp)
    80003dd0:	01010413          	addi	s0,sp,16
    80003dd4:	10000737          	lui	a4,0x10000
    80003dd8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003ddc:	0017f793          	andi	a5,a5,1
    80003de0:	00078c63          	beqz	a5,80003df8 <uartgetc+0x30>
    80003de4:	00074503          	lbu	a0,0(a4)
    80003de8:	0ff57513          	andi	a0,a0,255
    80003dec:	00813403          	ld	s0,8(sp)
    80003df0:	01010113          	addi	sp,sp,16
    80003df4:	00008067          	ret
    80003df8:	fff00513          	li	a0,-1
    80003dfc:	ff1ff06f          	j	80003dec <uartgetc+0x24>

0000000080003e00 <uartintr>:
    80003e00:	100007b7          	lui	a5,0x10000
    80003e04:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003e08:	0017f793          	andi	a5,a5,1
    80003e0c:	0a078463          	beqz	a5,80003eb4 <uartintr+0xb4>
    80003e10:	fe010113          	addi	sp,sp,-32
    80003e14:	00813823          	sd	s0,16(sp)
    80003e18:	00913423          	sd	s1,8(sp)
    80003e1c:	00113c23          	sd	ra,24(sp)
    80003e20:	02010413          	addi	s0,sp,32
    80003e24:	100004b7          	lui	s1,0x10000
    80003e28:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003e2c:	0ff57513          	andi	a0,a0,255
    80003e30:	fffff097          	auipc	ra,0xfffff
    80003e34:	534080e7          	jalr	1332(ra) # 80003364 <consoleintr>
    80003e38:	0054c783          	lbu	a5,5(s1)
    80003e3c:	0017f793          	andi	a5,a5,1
    80003e40:	fe0794e3          	bnez	a5,80003e28 <uartintr+0x28>
    80003e44:	00002617          	auipc	a2,0x2
    80003e48:	bbc60613          	addi	a2,a2,-1092 # 80005a00 <uart_tx_r>
    80003e4c:	00002517          	auipc	a0,0x2
    80003e50:	bbc50513          	addi	a0,a0,-1092 # 80005a08 <uart_tx_w>
    80003e54:	00063783          	ld	a5,0(a2)
    80003e58:	00053703          	ld	a4,0(a0)
    80003e5c:	04f70263          	beq	a4,a5,80003ea0 <uartintr+0xa0>
    80003e60:	100005b7          	lui	a1,0x10000
    80003e64:	00003817          	auipc	a6,0x3
    80003e68:	e2c80813          	addi	a6,a6,-468 # 80006c90 <uart_tx_buf>
    80003e6c:	01c0006f          	j	80003e88 <uartintr+0x88>
    80003e70:	0006c703          	lbu	a4,0(a3)
    80003e74:	00f63023          	sd	a5,0(a2)
    80003e78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e7c:	00063783          	ld	a5,0(a2)
    80003e80:	00053703          	ld	a4,0(a0)
    80003e84:	00f70e63          	beq	a4,a5,80003ea0 <uartintr+0xa0>
    80003e88:	01f7f713          	andi	a4,a5,31
    80003e8c:	00e806b3          	add	a3,a6,a4
    80003e90:	0055c703          	lbu	a4,5(a1)
    80003e94:	00178793          	addi	a5,a5,1
    80003e98:	02077713          	andi	a4,a4,32
    80003e9c:	fc071ae3          	bnez	a4,80003e70 <uartintr+0x70>
    80003ea0:	01813083          	ld	ra,24(sp)
    80003ea4:	01013403          	ld	s0,16(sp)
    80003ea8:	00813483          	ld	s1,8(sp)
    80003eac:	02010113          	addi	sp,sp,32
    80003eb0:	00008067          	ret
    80003eb4:	00002617          	auipc	a2,0x2
    80003eb8:	b4c60613          	addi	a2,a2,-1204 # 80005a00 <uart_tx_r>
    80003ebc:	00002517          	auipc	a0,0x2
    80003ec0:	b4c50513          	addi	a0,a0,-1204 # 80005a08 <uart_tx_w>
    80003ec4:	00063783          	ld	a5,0(a2)
    80003ec8:	00053703          	ld	a4,0(a0)
    80003ecc:	04f70263          	beq	a4,a5,80003f10 <uartintr+0x110>
    80003ed0:	100005b7          	lui	a1,0x10000
    80003ed4:	00003817          	auipc	a6,0x3
    80003ed8:	dbc80813          	addi	a6,a6,-580 # 80006c90 <uart_tx_buf>
    80003edc:	01c0006f          	j	80003ef8 <uartintr+0xf8>
    80003ee0:	0006c703          	lbu	a4,0(a3)
    80003ee4:	00f63023          	sd	a5,0(a2)
    80003ee8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003eec:	00063783          	ld	a5,0(a2)
    80003ef0:	00053703          	ld	a4,0(a0)
    80003ef4:	02f70063          	beq	a4,a5,80003f14 <uartintr+0x114>
    80003ef8:	01f7f713          	andi	a4,a5,31
    80003efc:	00e806b3          	add	a3,a6,a4
    80003f00:	0055c703          	lbu	a4,5(a1)
    80003f04:	00178793          	addi	a5,a5,1
    80003f08:	02077713          	andi	a4,a4,32
    80003f0c:	fc071ae3          	bnez	a4,80003ee0 <uartintr+0xe0>
    80003f10:	00008067          	ret
    80003f14:	00008067          	ret

0000000080003f18 <kinit>:
    80003f18:	fc010113          	addi	sp,sp,-64
    80003f1c:	02913423          	sd	s1,40(sp)
    80003f20:	fffff7b7          	lui	a5,0xfffff
    80003f24:	00004497          	auipc	s1,0x4
    80003f28:	d8b48493          	addi	s1,s1,-629 # 80007caf <end+0xfff>
    80003f2c:	02813823          	sd	s0,48(sp)
    80003f30:	01313c23          	sd	s3,24(sp)
    80003f34:	00f4f4b3          	and	s1,s1,a5
    80003f38:	02113c23          	sd	ra,56(sp)
    80003f3c:	03213023          	sd	s2,32(sp)
    80003f40:	01413823          	sd	s4,16(sp)
    80003f44:	01513423          	sd	s5,8(sp)
    80003f48:	04010413          	addi	s0,sp,64
    80003f4c:	000017b7          	lui	a5,0x1
    80003f50:	01100993          	li	s3,17
    80003f54:	00f487b3          	add	a5,s1,a5
    80003f58:	01b99993          	slli	s3,s3,0x1b
    80003f5c:	06f9e063          	bltu	s3,a5,80003fbc <kinit+0xa4>
    80003f60:	00003a97          	auipc	s5,0x3
    80003f64:	d50a8a93          	addi	s5,s5,-688 # 80006cb0 <end>
    80003f68:	0754ec63          	bltu	s1,s5,80003fe0 <kinit+0xc8>
    80003f6c:	0734fa63          	bgeu	s1,s3,80003fe0 <kinit+0xc8>
    80003f70:	00088a37          	lui	s4,0x88
    80003f74:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003f78:	00002917          	auipc	s2,0x2
    80003f7c:	a9890913          	addi	s2,s2,-1384 # 80005a10 <kmem>
    80003f80:	00ca1a13          	slli	s4,s4,0xc
    80003f84:	0140006f          	j	80003f98 <kinit+0x80>
    80003f88:	000017b7          	lui	a5,0x1
    80003f8c:	00f484b3          	add	s1,s1,a5
    80003f90:	0554e863          	bltu	s1,s5,80003fe0 <kinit+0xc8>
    80003f94:	0534f663          	bgeu	s1,s3,80003fe0 <kinit+0xc8>
    80003f98:	00001637          	lui	a2,0x1
    80003f9c:	00100593          	li	a1,1
    80003fa0:	00048513          	mv	a0,s1
    80003fa4:	00000097          	auipc	ra,0x0
    80003fa8:	5e4080e7          	jalr	1508(ra) # 80004588 <__memset>
    80003fac:	00093783          	ld	a5,0(s2)
    80003fb0:	00f4b023          	sd	a5,0(s1)
    80003fb4:	00993023          	sd	s1,0(s2)
    80003fb8:	fd4498e3          	bne	s1,s4,80003f88 <kinit+0x70>
    80003fbc:	03813083          	ld	ra,56(sp)
    80003fc0:	03013403          	ld	s0,48(sp)
    80003fc4:	02813483          	ld	s1,40(sp)
    80003fc8:	02013903          	ld	s2,32(sp)
    80003fcc:	01813983          	ld	s3,24(sp)
    80003fd0:	01013a03          	ld	s4,16(sp)
    80003fd4:	00813a83          	ld	s5,8(sp)
    80003fd8:	04010113          	addi	sp,sp,64
    80003fdc:	00008067          	ret
    80003fe0:	00001517          	auipc	a0,0x1
    80003fe4:	2e850513          	addi	a0,a0,744 # 800052c8 <digits+0x18>
    80003fe8:	fffff097          	auipc	ra,0xfffff
    80003fec:	4b4080e7          	jalr	1204(ra) # 8000349c <panic>

0000000080003ff0 <freerange>:
    80003ff0:	fc010113          	addi	sp,sp,-64
    80003ff4:	000017b7          	lui	a5,0x1
    80003ff8:	02913423          	sd	s1,40(sp)
    80003ffc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004000:	009504b3          	add	s1,a0,s1
    80004004:	fffff537          	lui	a0,0xfffff
    80004008:	02813823          	sd	s0,48(sp)
    8000400c:	02113c23          	sd	ra,56(sp)
    80004010:	03213023          	sd	s2,32(sp)
    80004014:	01313c23          	sd	s3,24(sp)
    80004018:	01413823          	sd	s4,16(sp)
    8000401c:	01513423          	sd	s5,8(sp)
    80004020:	01613023          	sd	s6,0(sp)
    80004024:	04010413          	addi	s0,sp,64
    80004028:	00a4f4b3          	and	s1,s1,a0
    8000402c:	00f487b3          	add	a5,s1,a5
    80004030:	06f5e463          	bltu	a1,a5,80004098 <freerange+0xa8>
    80004034:	00003a97          	auipc	s5,0x3
    80004038:	c7ca8a93          	addi	s5,s5,-900 # 80006cb0 <end>
    8000403c:	0954e263          	bltu	s1,s5,800040c0 <freerange+0xd0>
    80004040:	01100993          	li	s3,17
    80004044:	01b99993          	slli	s3,s3,0x1b
    80004048:	0734fc63          	bgeu	s1,s3,800040c0 <freerange+0xd0>
    8000404c:	00058a13          	mv	s4,a1
    80004050:	00002917          	auipc	s2,0x2
    80004054:	9c090913          	addi	s2,s2,-1600 # 80005a10 <kmem>
    80004058:	00002b37          	lui	s6,0x2
    8000405c:	0140006f          	j	80004070 <freerange+0x80>
    80004060:	000017b7          	lui	a5,0x1
    80004064:	00f484b3          	add	s1,s1,a5
    80004068:	0554ec63          	bltu	s1,s5,800040c0 <freerange+0xd0>
    8000406c:	0534fa63          	bgeu	s1,s3,800040c0 <freerange+0xd0>
    80004070:	00001637          	lui	a2,0x1
    80004074:	00100593          	li	a1,1
    80004078:	00048513          	mv	a0,s1
    8000407c:	00000097          	auipc	ra,0x0
    80004080:	50c080e7          	jalr	1292(ra) # 80004588 <__memset>
    80004084:	00093703          	ld	a4,0(s2)
    80004088:	016487b3          	add	a5,s1,s6
    8000408c:	00e4b023          	sd	a4,0(s1)
    80004090:	00993023          	sd	s1,0(s2)
    80004094:	fcfa76e3          	bgeu	s4,a5,80004060 <freerange+0x70>
    80004098:	03813083          	ld	ra,56(sp)
    8000409c:	03013403          	ld	s0,48(sp)
    800040a0:	02813483          	ld	s1,40(sp)
    800040a4:	02013903          	ld	s2,32(sp)
    800040a8:	01813983          	ld	s3,24(sp)
    800040ac:	01013a03          	ld	s4,16(sp)
    800040b0:	00813a83          	ld	s5,8(sp)
    800040b4:	00013b03          	ld	s6,0(sp)
    800040b8:	04010113          	addi	sp,sp,64
    800040bc:	00008067          	ret
    800040c0:	00001517          	auipc	a0,0x1
    800040c4:	20850513          	addi	a0,a0,520 # 800052c8 <digits+0x18>
    800040c8:	fffff097          	auipc	ra,0xfffff
    800040cc:	3d4080e7          	jalr	980(ra) # 8000349c <panic>

00000000800040d0 <kfree>:
    800040d0:	fe010113          	addi	sp,sp,-32
    800040d4:	00813823          	sd	s0,16(sp)
    800040d8:	00113c23          	sd	ra,24(sp)
    800040dc:	00913423          	sd	s1,8(sp)
    800040e0:	02010413          	addi	s0,sp,32
    800040e4:	03451793          	slli	a5,a0,0x34
    800040e8:	04079c63          	bnez	a5,80004140 <kfree+0x70>
    800040ec:	00003797          	auipc	a5,0x3
    800040f0:	bc478793          	addi	a5,a5,-1084 # 80006cb0 <end>
    800040f4:	00050493          	mv	s1,a0
    800040f8:	04f56463          	bltu	a0,a5,80004140 <kfree+0x70>
    800040fc:	01100793          	li	a5,17
    80004100:	01b79793          	slli	a5,a5,0x1b
    80004104:	02f57e63          	bgeu	a0,a5,80004140 <kfree+0x70>
    80004108:	00001637          	lui	a2,0x1
    8000410c:	00100593          	li	a1,1
    80004110:	00000097          	auipc	ra,0x0
    80004114:	478080e7          	jalr	1144(ra) # 80004588 <__memset>
    80004118:	00002797          	auipc	a5,0x2
    8000411c:	8f878793          	addi	a5,a5,-1800 # 80005a10 <kmem>
    80004120:	0007b703          	ld	a4,0(a5)
    80004124:	01813083          	ld	ra,24(sp)
    80004128:	01013403          	ld	s0,16(sp)
    8000412c:	00e4b023          	sd	a4,0(s1)
    80004130:	0097b023          	sd	s1,0(a5)
    80004134:	00813483          	ld	s1,8(sp)
    80004138:	02010113          	addi	sp,sp,32
    8000413c:	00008067          	ret
    80004140:	00001517          	auipc	a0,0x1
    80004144:	18850513          	addi	a0,a0,392 # 800052c8 <digits+0x18>
    80004148:	fffff097          	auipc	ra,0xfffff
    8000414c:	354080e7          	jalr	852(ra) # 8000349c <panic>

0000000080004150 <kalloc>:
    80004150:	fe010113          	addi	sp,sp,-32
    80004154:	00813823          	sd	s0,16(sp)
    80004158:	00913423          	sd	s1,8(sp)
    8000415c:	00113c23          	sd	ra,24(sp)
    80004160:	02010413          	addi	s0,sp,32
    80004164:	00002797          	auipc	a5,0x2
    80004168:	8ac78793          	addi	a5,a5,-1876 # 80005a10 <kmem>
    8000416c:	0007b483          	ld	s1,0(a5)
    80004170:	02048063          	beqz	s1,80004190 <kalloc+0x40>
    80004174:	0004b703          	ld	a4,0(s1)
    80004178:	00001637          	lui	a2,0x1
    8000417c:	00500593          	li	a1,5
    80004180:	00048513          	mv	a0,s1
    80004184:	00e7b023          	sd	a4,0(a5)
    80004188:	00000097          	auipc	ra,0x0
    8000418c:	400080e7          	jalr	1024(ra) # 80004588 <__memset>
    80004190:	01813083          	ld	ra,24(sp)
    80004194:	01013403          	ld	s0,16(sp)
    80004198:	00048513          	mv	a0,s1
    8000419c:	00813483          	ld	s1,8(sp)
    800041a0:	02010113          	addi	sp,sp,32
    800041a4:	00008067          	ret

00000000800041a8 <initlock>:
    800041a8:	ff010113          	addi	sp,sp,-16
    800041ac:	00813423          	sd	s0,8(sp)
    800041b0:	01010413          	addi	s0,sp,16
    800041b4:	00813403          	ld	s0,8(sp)
    800041b8:	00b53423          	sd	a1,8(a0)
    800041bc:	00052023          	sw	zero,0(a0)
    800041c0:	00053823          	sd	zero,16(a0)
    800041c4:	01010113          	addi	sp,sp,16
    800041c8:	00008067          	ret

00000000800041cc <acquire>:
    800041cc:	fe010113          	addi	sp,sp,-32
    800041d0:	00813823          	sd	s0,16(sp)
    800041d4:	00913423          	sd	s1,8(sp)
    800041d8:	00113c23          	sd	ra,24(sp)
    800041dc:	01213023          	sd	s2,0(sp)
    800041e0:	02010413          	addi	s0,sp,32
    800041e4:	00050493          	mv	s1,a0
    800041e8:	10002973          	csrr	s2,sstatus
    800041ec:	100027f3          	csrr	a5,sstatus
    800041f0:	ffd7f793          	andi	a5,a5,-3
    800041f4:	10079073          	csrw	sstatus,a5
    800041f8:	fffff097          	auipc	ra,0xfffff
    800041fc:	8e0080e7          	jalr	-1824(ra) # 80002ad8 <mycpu>
    80004200:	07852783          	lw	a5,120(a0)
    80004204:	06078e63          	beqz	a5,80004280 <acquire+0xb4>
    80004208:	fffff097          	auipc	ra,0xfffff
    8000420c:	8d0080e7          	jalr	-1840(ra) # 80002ad8 <mycpu>
    80004210:	07852783          	lw	a5,120(a0)
    80004214:	0004a703          	lw	a4,0(s1)
    80004218:	0017879b          	addiw	a5,a5,1
    8000421c:	06f52c23          	sw	a5,120(a0)
    80004220:	04071063          	bnez	a4,80004260 <acquire+0x94>
    80004224:	00100713          	li	a4,1
    80004228:	00070793          	mv	a5,a4
    8000422c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004230:	0007879b          	sext.w	a5,a5
    80004234:	fe079ae3          	bnez	a5,80004228 <acquire+0x5c>
    80004238:	0ff0000f          	fence
    8000423c:	fffff097          	auipc	ra,0xfffff
    80004240:	89c080e7          	jalr	-1892(ra) # 80002ad8 <mycpu>
    80004244:	01813083          	ld	ra,24(sp)
    80004248:	01013403          	ld	s0,16(sp)
    8000424c:	00a4b823          	sd	a0,16(s1)
    80004250:	00013903          	ld	s2,0(sp)
    80004254:	00813483          	ld	s1,8(sp)
    80004258:	02010113          	addi	sp,sp,32
    8000425c:	00008067          	ret
    80004260:	0104b903          	ld	s2,16(s1)
    80004264:	fffff097          	auipc	ra,0xfffff
    80004268:	874080e7          	jalr	-1932(ra) # 80002ad8 <mycpu>
    8000426c:	faa91ce3          	bne	s2,a0,80004224 <acquire+0x58>
    80004270:	00001517          	auipc	a0,0x1
    80004274:	06050513          	addi	a0,a0,96 # 800052d0 <digits+0x20>
    80004278:	fffff097          	auipc	ra,0xfffff
    8000427c:	224080e7          	jalr	548(ra) # 8000349c <panic>
    80004280:	00195913          	srli	s2,s2,0x1
    80004284:	fffff097          	auipc	ra,0xfffff
    80004288:	854080e7          	jalr	-1964(ra) # 80002ad8 <mycpu>
    8000428c:	00197913          	andi	s2,s2,1
    80004290:	07252e23          	sw	s2,124(a0)
    80004294:	f75ff06f          	j	80004208 <acquire+0x3c>

0000000080004298 <release>:
    80004298:	fe010113          	addi	sp,sp,-32
    8000429c:	00813823          	sd	s0,16(sp)
    800042a0:	00113c23          	sd	ra,24(sp)
    800042a4:	00913423          	sd	s1,8(sp)
    800042a8:	01213023          	sd	s2,0(sp)
    800042ac:	02010413          	addi	s0,sp,32
    800042b0:	00052783          	lw	a5,0(a0)
    800042b4:	00079a63          	bnez	a5,800042c8 <release+0x30>
    800042b8:	00001517          	auipc	a0,0x1
    800042bc:	02050513          	addi	a0,a0,32 # 800052d8 <digits+0x28>
    800042c0:	fffff097          	auipc	ra,0xfffff
    800042c4:	1dc080e7          	jalr	476(ra) # 8000349c <panic>
    800042c8:	01053903          	ld	s2,16(a0)
    800042cc:	00050493          	mv	s1,a0
    800042d0:	fffff097          	auipc	ra,0xfffff
    800042d4:	808080e7          	jalr	-2040(ra) # 80002ad8 <mycpu>
    800042d8:	fea910e3          	bne	s2,a0,800042b8 <release+0x20>
    800042dc:	0004b823          	sd	zero,16(s1)
    800042e0:	0ff0000f          	fence
    800042e4:	0f50000f          	fence	iorw,ow
    800042e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	7ec080e7          	jalr	2028(ra) # 80002ad8 <mycpu>
    800042f4:	100027f3          	csrr	a5,sstatus
    800042f8:	0027f793          	andi	a5,a5,2
    800042fc:	04079a63          	bnez	a5,80004350 <release+0xb8>
    80004300:	07852783          	lw	a5,120(a0)
    80004304:	02f05e63          	blez	a5,80004340 <release+0xa8>
    80004308:	fff7871b          	addiw	a4,a5,-1
    8000430c:	06e52c23          	sw	a4,120(a0)
    80004310:	00071c63          	bnez	a4,80004328 <release+0x90>
    80004314:	07c52783          	lw	a5,124(a0)
    80004318:	00078863          	beqz	a5,80004328 <release+0x90>
    8000431c:	100027f3          	csrr	a5,sstatus
    80004320:	0027e793          	ori	a5,a5,2
    80004324:	10079073          	csrw	sstatus,a5
    80004328:	01813083          	ld	ra,24(sp)
    8000432c:	01013403          	ld	s0,16(sp)
    80004330:	00813483          	ld	s1,8(sp)
    80004334:	00013903          	ld	s2,0(sp)
    80004338:	02010113          	addi	sp,sp,32
    8000433c:	00008067          	ret
    80004340:	00001517          	auipc	a0,0x1
    80004344:	fb850513          	addi	a0,a0,-72 # 800052f8 <digits+0x48>
    80004348:	fffff097          	auipc	ra,0xfffff
    8000434c:	154080e7          	jalr	340(ra) # 8000349c <panic>
    80004350:	00001517          	auipc	a0,0x1
    80004354:	f9050513          	addi	a0,a0,-112 # 800052e0 <digits+0x30>
    80004358:	fffff097          	auipc	ra,0xfffff
    8000435c:	144080e7          	jalr	324(ra) # 8000349c <panic>

0000000080004360 <holding>:
    80004360:	00052783          	lw	a5,0(a0)
    80004364:	00079663          	bnez	a5,80004370 <holding+0x10>
    80004368:	00000513          	li	a0,0
    8000436c:	00008067          	ret
    80004370:	fe010113          	addi	sp,sp,-32
    80004374:	00813823          	sd	s0,16(sp)
    80004378:	00913423          	sd	s1,8(sp)
    8000437c:	00113c23          	sd	ra,24(sp)
    80004380:	02010413          	addi	s0,sp,32
    80004384:	01053483          	ld	s1,16(a0)
    80004388:	ffffe097          	auipc	ra,0xffffe
    8000438c:	750080e7          	jalr	1872(ra) # 80002ad8 <mycpu>
    80004390:	01813083          	ld	ra,24(sp)
    80004394:	01013403          	ld	s0,16(sp)
    80004398:	40a48533          	sub	a0,s1,a0
    8000439c:	00153513          	seqz	a0,a0
    800043a0:	00813483          	ld	s1,8(sp)
    800043a4:	02010113          	addi	sp,sp,32
    800043a8:	00008067          	ret

00000000800043ac <push_off>:
    800043ac:	fe010113          	addi	sp,sp,-32
    800043b0:	00813823          	sd	s0,16(sp)
    800043b4:	00113c23          	sd	ra,24(sp)
    800043b8:	00913423          	sd	s1,8(sp)
    800043bc:	02010413          	addi	s0,sp,32
    800043c0:	100024f3          	csrr	s1,sstatus
    800043c4:	100027f3          	csrr	a5,sstatus
    800043c8:	ffd7f793          	andi	a5,a5,-3
    800043cc:	10079073          	csrw	sstatus,a5
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	708080e7          	jalr	1800(ra) # 80002ad8 <mycpu>
    800043d8:	07852783          	lw	a5,120(a0)
    800043dc:	02078663          	beqz	a5,80004408 <push_off+0x5c>
    800043e0:	ffffe097          	auipc	ra,0xffffe
    800043e4:	6f8080e7          	jalr	1784(ra) # 80002ad8 <mycpu>
    800043e8:	07852783          	lw	a5,120(a0)
    800043ec:	01813083          	ld	ra,24(sp)
    800043f0:	01013403          	ld	s0,16(sp)
    800043f4:	0017879b          	addiw	a5,a5,1
    800043f8:	06f52c23          	sw	a5,120(a0)
    800043fc:	00813483          	ld	s1,8(sp)
    80004400:	02010113          	addi	sp,sp,32
    80004404:	00008067          	ret
    80004408:	0014d493          	srli	s1,s1,0x1
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	6cc080e7          	jalr	1740(ra) # 80002ad8 <mycpu>
    80004414:	0014f493          	andi	s1,s1,1
    80004418:	06952e23          	sw	s1,124(a0)
    8000441c:	fc5ff06f          	j	800043e0 <push_off+0x34>

0000000080004420 <pop_off>:
    80004420:	ff010113          	addi	sp,sp,-16
    80004424:	00813023          	sd	s0,0(sp)
    80004428:	00113423          	sd	ra,8(sp)
    8000442c:	01010413          	addi	s0,sp,16
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	6a8080e7          	jalr	1704(ra) # 80002ad8 <mycpu>
    80004438:	100027f3          	csrr	a5,sstatus
    8000443c:	0027f793          	andi	a5,a5,2
    80004440:	04079663          	bnez	a5,8000448c <pop_off+0x6c>
    80004444:	07852783          	lw	a5,120(a0)
    80004448:	02f05a63          	blez	a5,8000447c <pop_off+0x5c>
    8000444c:	fff7871b          	addiw	a4,a5,-1
    80004450:	06e52c23          	sw	a4,120(a0)
    80004454:	00071c63          	bnez	a4,8000446c <pop_off+0x4c>
    80004458:	07c52783          	lw	a5,124(a0)
    8000445c:	00078863          	beqz	a5,8000446c <pop_off+0x4c>
    80004460:	100027f3          	csrr	a5,sstatus
    80004464:	0027e793          	ori	a5,a5,2
    80004468:	10079073          	csrw	sstatus,a5
    8000446c:	00813083          	ld	ra,8(sp)
    80004470:	00013403          	ld	s0,0(sp)
    80004474:	01010113          	addi	sp,sp,16
    80004478:	00008067          	ret
    8000447c:	00001517          	auipc	a0,0x1
    80004480:	e7c50513          	addi	a0,a0,-388 # 800052f8 <digits+0x48>
    80004484:	fffff097          	auipc	ra,0xfffff
    80004488:	018080e7          	jalr	24(ra) # 8000349c <panic>
    8000448c:	00001517          	auipc	a0,0x1
    80004490:	e5450513          	addi	a0,a0,-428 # 800052e0 <digits+0x30>
    80004494:	fffff097          	auipc	ra,0xfffff
    80004498:	008080e7          	jalr	8(ra) # 8000349c <panic>

000000008000449c <push_on>:
    8000449c:	fe010113          	addi	sp,sp,-32
    800044a0:	00813823          	sd	s0,16(sp)
    800044a4:	00113c23          	sd	ra,24(sp)
    800044a8:	00913423          	sd	s1,8(sp)
    800044ac:	02010413          	addi	s0,sp,32
    800044b0:	100024f3          	csrr	s1,sstatus
    800044b4:	100027f3          	csrr	a5,sstatus
    800044b8:	0027e793          	ori	a5,a5,2
    800044bc:	10079073          	csrw	sstatus,a5
    800044c0:	ffffe097          	auipc	ra,0xffffe
    800044c4:	618080e7          	jalr	1560(ra) # 80002ad8 <mycpu>
    800044c8:	07852783          	lw	a5,120(a0)
    800044cc:	02078663          	beqz	a5,800044f8 <push_on+0x5c>
    800044d0:	ffffe097          	auipc	ra,0xffffe
    800044d4:	608080e7          	jalr	1544(ra) # 80002ad8 <mycpu>
    800044d8:	07852783          	lw	a5,120(a0)
    800044dc:	01813083          	ld	ra,24(sp)
    800044e0:	01013403          	ld	s0,16(sp)
    800044e4:	0017879b          	addiw	a5,a5,1
    800044e8:	06f52c23          	sw	a5,120(a0)
    800044ec:	00813483          	ld	s1,8(sp)
    800044f0:	02010113          	addi	sp,sp,32
    800044f4:	00008067          	ret
    800044f8:	0014d493          	srli	s1,s1,0x1
    800044fc:	ffffe097          	auipc	ra,0xffffe
    80004500:	5dc080e7          	jalr	1500(ra) # 80002ad8 <mycpu>
    80004504:	0014f493          	andi	s1,s1,1
    80004508:	06952e23          	sw	s1,124(a0)
    8000450c:	fc5ff06f          	j	800044d0 <push_on+0x34>

0000000080004510 <pop_on>:
    80004510:	ff010113          	addi	sp,sp,-16
    80004514:	00813023          	sd	s0,0(sp)
    80004518:	00113423          	sd	ra,8(sp)
    8000451c:	01010413          	addi	s0,sp,16
    80004520:	ffffe097          	auipc	ra,0xffffe
    80004524:	5b8080e7          	jalr	1464(ra) # 80002ad8 <mycpu>
    80004528:	100027f3          	csrr	a5,sstatus
    8000452c:	0027f793          	andi	a5,a5,2
    80004530:	04078463          	beqz	a5,80004578 <pop_on+0x68>
    80004534:	07852783          	lw	a5,120(a0)
    80004538:	02f05863          	blez	a5,80004568 <pop_on+0x58>
    8000453c:	fff7879b          	addiw	a5,a5,-1
    80004540:	06f52c23          	sw	a5,120(a0)
    80004544:	07853783          	ld	a5,120(a0)
    80004548:	00079863          	bnez	a5,80004558 <pop_on+0x48>
    8000454c:	100027f3          	csrr	a5,sstatus
    80004550:	ffd7f793          	andi	a5,a5,-3
    80004554:	10079073          	csrw	sstatus,a5
    80004558:	00813083          	ld	ra,8(sp)
    8000455c:	00013403          	ld	s0,0(sp)
    80004560:	01010113          	addi	sp,sp,16
    80004564:	00008067          	ret
    80004568:	00001517          	auipc	a0,0x1
    8000456c:	db850513          	addi	a0,a0,-584 # 80005320 <digits+0x70>
    80004570:	fffff097          	auipc	ra,0xfffff
    80004574:	f2c080e7          	jalr	-212(ra) # 8000349c <panic>
    80004578:	00001517          	auipc	a0,0x1
    8000457c:	d8850513          	addi	a0,a0,-632 # 80005300 <digits+0x50>
    80004580:	fffff097          	auipc	ra,0xfffff
    80004584:	f1c080e7          	jalr	-228(ra) # 8000349c <panic>

0000000080004588 <__memset>:
    80004588:	ff010113          	addi	sp,sp,-16
    8000458c:	00813423          	sd	s0,8(sp)
    80004590:	01010413          	addi	s0,sp,16
    80004594:	1a060e63          	beqz	a2,80004750 <__memset+0x1c8>
    80004598:	40a007b3          	neg	a5,a0
    8000459c:	0077f793          	andi	a5,a5,7
    800045a0:	00778693          	addi	a3,a5,7
    800045a4:	00b00813          	li	a6,11
    800045a8:	0ff5f593          	andi	a1,a1,255
    800045ac:	fff6071b          	addiw	a4,a2,-1
    800045b0:	1b06e663          	bltu	a3,a6,8000475c <__memset+0x1d4>
    800045b4:	1cd76463          	bltu	a4,a3,8000477c <__memset+0x1f4>
    800045b8:	1a078e63          	beqz	a5,80004774 <__memset+0x1ec>
    800045bc:	00b50023          	sb	a1,0(a0)
    800045c0:	00100713          	li	a4,1
    800045c4:	1ae78463          	beq	a5,a4,8000476c <__memset+0x1e4>
    800045c8:	00b500a3          	sb	a1,1(a0)
    800045cc:	00200713          	li	a4,2
    800045d0:	1ae78a63          	beq	a5,a4,80004784 <__memset+0x1fc>
    800045d4:	00b50123          	sb	a1,2(a0)
    800045d8:	00300713          	li	a4,3
    800045dc:	18e78463          	beq	a5,a4,80004764 <__memset+0x1dc>
    800045e0:	00b501a3          	sb	a1,3(a0)
    800045e4:	00400713          	li	a4,4
    800045e8:	1ae78263          	beq	a5,a4,8000478c <__memset+0x204>
    800045ec:	00b50223          	sb	a1,4(a0)
    800045f0:	00500713          	li	a4,5
    800045f4:	1ae78063          	beq	a5,a4,80004794 <__memset+0x20c>
    800045f8:	00b502a3          	sb	a1,5(a0)
    800045fc:	00700713          	li	a4,7
    80004600:	18e79e63          	bne	a5,a4,8000479c <__memset+0x214>
    80004604:	00b50323          	sb	a1,6(a0)
    80004608:	00700e93          	li	t4,7
    8000460c:	00859713          	slli	a4,a1,0x8
    80004610:	00e5e733          	or	a4,a1,a4
    80004614:	01059e13          	slli	t3,a1,0x10
    80004618:	01c76e33          	or	t3,a4,t3
    8000461c:	01859313          	slli	t1,a1,0x18
    80004620:	006e6333          	or	t1,t3,t1
    80004624:	02059893          	slli	a7,a1,0x20
    80004628:	40f60e3b          	subw	t3,a2,a5
    8000462c:	011368b3          	or	a7,t1,a7
    80004630:	02859813          	slli	a6,a1,0x28
    80004634:	0108e833          	or	a6,a7,a6
    80004638:	03059693          	slli	a3,a1,0x30
    8000463c:	003e589b          	srliw	a7,t3,0x3
    80004640:	00d866b3          	or	a3,a6,a3
    80004644:	03859713          	slli	a4,a1,0x38
    80004648:	00389813          	slli	a6,a7,0x3
    8000464c:	00f507b3          	add	a5,a0,a5
    80004650:	00e6e733          	or	a4,a3,a4
    80004654:	000e089b          	sext.w	a7,t3
    80004658:	00f806b3          	add	a3,a6,a5
    8000465c:	00e7b023          	sd	a4,0(a5)
    80004660:	00878793          	addi	a5,a5,8
    80004664:	fed79ce3          	bne	a5,a3,8000465c <__memset+0xd4>
    80004668:	ff8e7793          	andi	a5,t3,-8
    8000466c:	0007871b          	sext.w	a4,a5
    80004670:	01d787bb          	addw	a5,a5,t4
    80004674:	0ce88e63          	beq	a7,a4,80004750 <__memset+0x1c8>
    80004678:	00f50733          	add	a4,a0,a5
    8000467c:	00b70023          	sb	a1,0(a4)
    80004680:	0017871b          	addiw	a4,a5,1
    80004684:	0cc77663          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    80004688:	00e50733          	add	a4,a0,a4
    8000468c:	00b70023          	sb	a1,0(a4)
    80004690:	0027871b          	addiw	a4,a5,2
    80004694:	0ac77e63          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    80004698:	00e50733          	add	a4,a0,a4
    8000469c:	00b70023          	sb	a1,0(a4)
    800046a0:	0037871b          	addiw	a4,a5,3
    800046a4:	0ac77663          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    800046a8:	00e50733          	add	a4,a0,a4
    800046ac:	00b70023          	sb	a1,0(a4)
    800046b0:	0047871b          	addiw	a4,a5,4
    800046b4:	08c77e63          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    800046b8:	00e50733          	add	a4,a0,a4
    800046bc:	00b70023          	sb	a1,0(a4)
    800046c0:	0057871b          	addiw	a4,a5,5
    800046c4:	08c77663          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    800046c8:	00e50733          	add	a4,a0,a4
    800046cc:	00b70023          	sb	a1,0(a4)
    800046d0:	0067871b          	addiw	a4,a5,6
    800046d4:	06c77e63          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    800046d8:	00e50733          	add	a4,a0,a4
    800046dc:	00b70023          	sb	a1,0(a4)
    800046e0:	0077871b          	addiw	a4,a5,7
    800046e4:	06c77663          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    800046e8:	00e50733          	add	a4,a0,a4
    800046ec:	00b70023          	sb	a1,0(a4)
    800046f0:	0087871b          	addiw	a4,a5,8
    800046f4:	04c77e63          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    800046f8:	00e50733          	add	a4,a0,a4
    800046fc:	00b70023          	sb	a1,0(a4)
    80004700:	0097871b          	addiw	a4,a5,9
    80004704:	04c77663          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    80004708:	00e50733          	add	a4,a0,a4
    8000470c:	00b70023          	sb	a1,0(a4)
    80004710:	00a7871b          	addiw	a4,a5,10
    80004714:	02c77e63          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    80004718:	00e50733          	add	a4,a0,a4
    8000471c:	00b70023          	sb	a1,0(a4)
    80004720:	00b7871b          	addiw	a4,a5,11
    80004724:	02c77663          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    80004728:	00e50733          	add	a4,a0,a4
    8000472c:	00b70023          	sb	a1,0(a4)
    80004730:	00c7871b          	addiw	a4,a5,12
    80004734:	00c77e63          	bgeu	a4,a2,80004750 <__memset+0x1c8>
    80004738:	00e50733          	add	a4,a0,a4
    8000473c:	00b70023          	sb	a1,0(a4)
    80004740:	00d7879b          	addiw	a5,a5,13
    80004744:	00c7f663          	bgeu	a5,a2,80004750 <__memset+0x1c8>
    80004748:	00f507b3          	add	a5,a0,a5
    8000474c:	00b78023          	sb	a1,0(a5)
    80004750:	00813403          	ld	s0,8(sp)
    80004754:	01010113          	addi	sp,sp,16
    80004758:	00008067          	ret
    8000475c:	00b00693          	li	a3,11
    80004760:	e55ff06f          	j	800045b4 <__memset+0x2c>
    80004764:	00300e93          	li	t4,3
    80004768:	ea5ff06f          	j	8000460c <__memset+0x84>
    8000476c:	00100e93          	li	t4,1
    80004770:	e9dff06f          	j	8000460c <__memset+0x84>
    80004774:	00000e93          	li	t4,0
    80004778:	e95ff06f          	j	8000460c <__memset+0x84>
    8000477c:	00000793          	li	a5,0
    80004780:	ef9ff06f          	j	80004678 <__memset+0xf0>
    80004784:	00200e93          	li	t4,2
    80004788:	e85ff06f          	j	8000460c <__memset+0x84>
    8000478c:	00400e93          	li	t4,4
    80004790:	e7dff06f          	j	8000460c <__memset+0x84>
    80004794:	00500e93          	li	t4,5
    80004798:	e75ff06f          	j	8000460c <__memset+0x84>
    8000479c:	00600e93          	li	t4,6
    800047a0:	e6dff06f          	j	8000460c <__memset+0x84>

00000000800047a4 <__memmove>:
    800047a4:	ff010113          	addi	sp,sp,-16
    800047a8:	00813423          	sd	s0,8(sp)
    800047ac:	01010413          	addi	s0,sp,16
    800047b0:	0e060863          	beqz	a2,800048a0 <__memmove+0xfc>
    800047b4:	fff6069b          	addiw	a3,a2,-1
    800047b8:	0006881b          	sext.w	a6,a3
    800047bc:	0ea5e863          	bltu	a1,a0,800048ac <__memmove+0x108>
    800047c0:	00758713          	addi	a4,a1,7
    800047c4:	00a5e7b3          	or	a5,a1,a0
    800047c8:	40a70733          	sub	a4,a4,a0
    800047cc:	0077f793          	andi	a5,a5,7
    800047d0:	00f73713          	sltiu	a4,a4,15
    800047d4:	00174713          	xori	a4,a4,1
    800047d8:	0017b793          	seqz	a5,a5
    800047dc:	00e7f7b3          	and	a5,a5,a4
    800047e0:	10078863          	beqz	a5,800048f0 <__memmove+0x14c>
    800047e4:	00900793          	li	a5,9
    800047e8:	1107f463          	bgeu	a5,a6,800048f0 <__memmove+0x14c>
    800047ec:	0036581b          	srliw	a6,a2,0x3
    800047f0:	fff8081b          	addiw	a6,a6,-1
    800047f4:	02081813          	slli	a6,a6,0x20
    800047f8:	01d85893          	srli	a7,a6,0x1d
    800047fc:	00858813          	addi	a6,a1,8
    80004800:	00058793          	mv	a5,a1
    80004804:	00050713          	mv	a4,a0
    80004808:	01088833          	add	a6,a7,a6
    8000480c:	0007b883          	ld	a7,0(a5)
    80004810:	00878793          	addi	a5,a5,8
    80004814:	00870713          	addi	a4,a4,8
    80004818:	ff173c23          	sd	a7,-8(a4)
    8000481c:	ff0798e3          	bne	a5,a6,8000480c <__memmove+0x68>
    80004820:	ff867713          	andi	a4,a2,-8
    80004824:	02071793          	slli	a5,a4,0x20
    80004828:	0207d793          	srli	a5,a5,0x20
    8000482c:	00f585b3          	add	a1,a1,a5
    80004830:	40e686bb          	subw	a3,a3,a4
    80004834:	00f507b3          	add	a5,a0,a5
    80004838:	06e60463          	beq	a2,a4,800048a0 <__memmove+0xfc>
    8000483c:	0005c703          	lbu	a4,0(a1)
    80004840:	00e78023          	sb	a4,0(a5)
    80004844:	04068e63          	beqz	a3,800048a0 <__memmove+0xfc>
    80004848:	0015c603          	lbu	a2,1(a1)
    8000484c:	00100713          	li	a4,1
    80004850:	00c780a3          	sb	a2,1(a5)
    80004854:	04e68663          	beq	a3,a4,800048a0 <__memmove+0xfc>
    80004858:	0025c603          	lbu	a2,2(a1)
    8000485c:	00200713          	li	a4,2
    80004860:	00c78123          	sb	a2,2(a5)
    80004864:	02e68e63          	beq	a3,a4,800048a0 <__memmove+0xfc>
    80004868:	0035c603          	lbu	a2,3(a1)
    8000486c:	00300713          	li	a4,3
    80004870:	00c781a3          	sb	a2,3(a5)
    80004874:	02e68663          	beq	a3,a4,800048a0 <__memmove+0xfc>
    80004878:	0045c603          	lbu	a2,4(a1)
    8000487c:	00400713          	li	a4,4
    80004880:	00c78223          	sb	a2,4(a5)
    80004884:	00e68e63          	beq	a3,a4,800048a0 <__memmove+0xfc>
    80004888:	0055c603          	lbu	a2,5(a1)
    8000488c:	00500713          	li	a4,5
    80004890:	00c782a3          	sb	a2,5(a5)
    80004894:	00e68663          	beq	a3,a4,800048a0 <__memmove+0xfc>
    80004898:	0065c703          	lbu	a4,6(a1)
    8000489c:	00e78323          	sb	a4,6(a5)
    800048a0:	00813403          	ld	s0,8(sp)
    800048a4:	01010113          	addi	sp,sp,16
    800048a8:	00008067          	ret
    800048ac:	02061713          	slli	a4,a2,0x20
    800048b0:	02075713          	srli	a4,a4,0x20
    800048b4:	00e587b3          	add	a5,a1,a4
    800048b8:	f0f574e3          	bgeu	a0,a5,800047c0 <__memmove+0x1c>
    800048bc:	02069613          	slli	a2,a3,0x20
    800048c0:	02065613          	srli	a2,a2,0x20
    800048c4:	fff64613          	not	a2,a2
    800048c8:	00e50733          	add	a4,a0,a4
    800048cc:	00c78633          	add	a2,a5,a2
    800048d0:	fff7c683          	lbu	a3,-1(a5)
    800048d4:	fff78793          	addi	a5,a5,-1
    800048d8:	fff70713          	addi	a4,a4,-1
    800048dc:	00d70023          	sb	a3,0(a4)
    800048e0:	fec798e3          	bne	a5,a2,800048d0 <__memmove+0x12c>
    800048e4:	00813403          	ld	s0,8(sp)
    800048e8:	01010113          	addi	sp,sp,16
    800048ec:	00008067          	ret
    800048f0:	02069713          	slli	a4,a3,0x20
    800048f4:	02075713          	srli	a4,a4,0x20
    800048f8:	00170713          	addi	a4,a4,1
    800048fc:	00e50733          	add	a4,a0,a4
    80004900:	00050793          	mv	a5,a0
    80004904:	0005c683          	lbu	a3,0(a1)
    80004908:	00178793          	addi	a5,a5,1
    8000490c:	00158593          	addi	a1,a1,1
    80004910:	fed78fa3          	sb	a3,-1(a5)
    80004914:	fee798e3          	bne	a5,a4,80004904 <__memmove+0x160>
    80004918:	f89ff06f          	j	800048a0 <__memmove+0xfc>

000000008000491c <__putc>:
    8000491c:	fe010113          	addi	sp,sp,-32
    80004920:	00813823          	sd	s0,16(sp)
    80004924:	00113c23          	sd	ra,24(sp)
    80004928:	02010413          	addi	s0,sp,32
    8000492c:	00050793          	mv	a5,a0
    80004930:	fef40593          	addi	a1,s0,-17
    80004934:	00100613          	li	a2,1
    80004938:	00000513          	li	a0,0
    8000493c:	fef407a3          	sb	a5,-17(s0)
    80004940:	fffff097          	auipc	ra,0xfffff
    80004944:	b3c080e7          	jalr	-1220(ra) # 8000347c <console_write>
    80004948:	01813083          	ld	ra,24(sp)
    8000494c:	01013403          	ld	s0,16(sp)
    80004950:	02010113          	addi	sp,sp,32
    80004954:	00008067          	ret

0000000080004958 <__getc>:
    80004958:	fe010113          	addi	sp,sp,-32
    8000495c:	00813823          	sd	s0,16(sp)
    80004960:	00113c23          	sd	ra,24(sp)
    80004964:	02010413          	addi	s0,sp,32
    80004968:	fe840593          	addi	a1,s0,-24
    8000496c:	00100613          	li	a2,1
    80004970:	00000513          	li	a0,0
    80004974:	fffff097          	auipc	ra,0xfffff
    80004978:	ae8080e7          	jalr	-1304(ra) # 8000345c <console_read>
    8000497c:	fe844503          	lbu	a0,-24(s0)
    80004980:	01813083          	ld	ra,24(sp)
    80004984:	01013403          	ld	s0,16(sp)
    80004988:	02010113          	addi	sp,sp,32
    8000498c:	00008067          	ret

0000000080004990 <console_handler>:
    80004990:	fe010113          	addi	sp,sp,-32
    80004994:	00813823          	sd	s0,16(sp)
    80004998:	00113c23          	sd	ra,24(sp)
    8000499c:	00913423          	sd	s1,8(sp)
    800049a0:	02010413          	addi	s0,sp,32
    800049a4:	14202773          	csrr	a4,scause
    800049a8:	100027f3          	csrr	a5,sstatus
    800049ac:	0027f793          	andi	a5,a5,2
    800049b0:	06079e63          	bnez	a5,80004a2c <console_handler+0x9c>
    800049b4:	00074c63          	bltz	a4,800049cc <console_handler+0x3c>
    800049b8:	01813083          	ld	ra,24(sp)
    800049bc:	01013403          	ld	s0,16(sp)
    800049c0:	00813483          	ld	s1,8(sp)
    800049c4:	02010113          	addi	sp,sp,32
    800049c8:	00008067          	ret
    800049cc:	0ff77713          	andi	a4,a4,255
    800049d0:	00900793          	li	a5,9
    800049d4:	fef712e3          	bne	a4,a5,800049b8 <console_handler+0x28>
    800049d8:	ffffe097          	auipc	ra,0xffffe
    800049dc:	6dc080e7          	jalr	1756(ra) # 800030b4 <plic_claim>
    800049e0:	00a00793          	li	a5,10
    800049e4:	00050493          	mv	s1,a0
    800049e8:	02f50c63          	beq	a0,a5,80004a20 <console_handler+0x90>
    800049ec:	fc0506e3          	beqz	a0,800049b8 <console_handler+0x28>
    800049f0:	00050593          	mv	a1,a0
    800049f4:	00001517          	auipc	a0,0x1
    800049f8:	83450513          	addi	a0,a0,-1996 # 80005228 <_ZZ12printIntegermE6digits+0xe0>
    800049fc:	fffff097          	auipc	ra,0xfffff
    80004a00:	afc080e7          	jalr	-1284(ra) # 800034f8 <__printf>
    80004a04:	01013403          	ld	s0,16(sp)
    80004a08:	01813083          	ld	ra,24(sp)
    80004a0c:	00048513          	mv	a0,s1
    80004a10:	00813483          	ld	s1,8(sp)
    80004a14:	02010113          	addi	sp,sp,32
    80004a18:	ffffe317          	auipc	t1,0xffffe
    80004a1c:	6d430067          	jr	1748(t1) # 800030ec <plic_complete>
    80004a20:	fffff097          	auipc	ra,0xfffff
    80004a24:	3e0080e7          	jalr	992(ra) # 80003e00 <uartintr>
    80004a28:	fddff06f          	j	80004a04 <console_handler+0x74>
    80004a2c:	00001517          	auipc	a0,0x1
    80004a30:	8fc50513          	addi	a0,a0,-1796 # 80005328 <digits+0x78>
    80004a34:	fffff097          	auipc	ra,0xfffff
    80004a38:	a68080e7          	jalr	-1432(ra) # 8000349c <panic>
	...
