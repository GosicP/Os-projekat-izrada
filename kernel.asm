
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	9a813103          	ld	sp,-1624(sp) # 800059a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0a1020ef          	jal	ra,800028bc <start>

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
    800012e8:	ef0080e7          	jalr	-272(ra) # 800021d4 <_ZN3TCB5yieldEv>
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
    8000134c:	458080e7          	jalr	1112(ra) # 800027a0 <_Z11printStringPKc>
        printInteger(i);
    80001350:	00048513          	mv	a0,s1
    80001354:	00001097          	auipc	ra,0x1
    80001358:	4b4080e7          	jalr	1204(ra) # 80002808 <_Z12printIntegerm>
        printString("\n");
    8000135c:	00004517          	auipc	a0,0x4
    80001360:	d5c50513          	addi	a0,a0,-676 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001364:	00001097          	auipc	ra,0x1
    80001368:	43c080e7          	jalr	1084(ra) # 800027a0 <_Z11printStringPKc>
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
    800013e4:	3c0080e7          	jalr	960(ra) # 800027a0 <_Z11printStringPKc>
        printInteger(i);
    800013e8:	00048513          	mv	a0,s1
    800013ec:	00001097          	auipc	ra,0x1
    800013f0:	41c080e7          	jalr	1052(ra) # 80002808 <_Z12printIntegerm>
        printString("\n");
    800013f4:	00004517          	auipc	a0,0x4
    800013f8:	cc450513          	addi	a0,a0,-828 # 800050b8 <CONSOLE_STATUS+0xa8>
    800013fc:	00001097          	auipc	ra,0x1
    80001400:	3a4080e7          	jalr	932(ra) # 800027a0 <_Z11printStringPKc>
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
    8000144c:	358080e7          	jalr	856(ra) # 800027a0 <_Z11printStringPKc>
        printInteger(i);
    80001450:	00048513          	mv	a0,s1
    80001454:	00001097          	auipc	ra,0x1
    80001458:	3b4080e7          	jalr	948(ra) # 80002808 <_Z12printIntegerm>
        printString("\n");
    8000145c:	00004517          	auipc	a0,0x4
    80001460:	c5c50513          	addi	a0,a0,-932 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001464:	00001097          	auipc	ra,0x1
    80001468:	33c080e7          	jalr	828(ra) # 800027a0 <_Z11printStringPKc>
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
    80001488:	31c080e7          	jalr	796(ra) # 800027a0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000148c:	00700313          	li	t1,7
    TCB::yield();
    80001490:	00001097          	auipc	ra,0x1
    80001494:	d44080e7          	jalr	-700(ra) # 800021d4 <_ZN3TCB5yieldEv>

    uint64 t1=0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001498:	00030913          	mv	s2,t1

    printString("C: t1=");
    8000149c:	00004517          	auipc	a0,0x4
    800014a0:	bac50513          	addi	a0,a0,-1108 # 80005048 <CONSOLE_STATUS+0x38>
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	2fc080e7          	jalr	764(ra) # 800027a0 <_Z11printStringPKc>
    printInteger(t1);
    800014ac:	00090513          	mv	a0,s2
    800014b0:	00001097          	auipc	ra,0x1
    800014b4:	358080e7          	jalr	856(ra) # 80002808 <_Z12printIntegerm>
    printString("\n");
    800014b8:	00004517          	auipc	a0,0x4
    800014bc:	c0050513          	addi	a0,a0,-1024 # 800050b8 <CONSOLE_STATUS+0xa8>
    800014c0:	00001097          	auipc	ra,0x1
    800014c4:	2e0080e7          	jalr	736(ra) # 800027a0 <_Z11printStringPKc>

    uint64 result = fibonacci (20);
    800014c8:	01400513          	li	a0,20
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	db4080e7          	jalr	-588(ra) # 80001280 <_ZL9fibonaccim>
    800014d4:	00050913          	mv	s2,a0
    printString("C: fibonacci=");
    800014d8:	00004517          	auipc	a0,0x4
    800014dc:	b7850513          	addi	a0,a0,-1160 # 80005050 <CONSOLE_STATUS+0x40>
    800014e0:	00001097          	auipc	ra,0x1
    800014e4:	2c0080e7          	jalr	704(ra) # 800027a0 <_Z11printStringPKc>
    printInteger(result);
    800014e8:	00090513          	mv	a0,s2
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	31c080e7          	jalr	796(ra) # 80002808 <_Z12printIntegerm>
    printString("\n");
    800014f4:	00004517          	auipc	a0,0x4
    800014f8:	bc450513          	addi	a0,a0,-1084 # 800050b8 <CONSOLE_STATUS+0xa8>
    800014fc:	00001097          	auipc	ra,0x1
    80001500:	2a4080e7          	jalr	676(ra) # 800027a0 <_Z11printStringPKc>
    80001504:	0380006f          	j	8000153c <_Z11workerBodyCv+0x11c>

    for(; i<6; i++){
        printString("C: i=");
    80001508:	00004517          	auipc	a0,0x4
    8000150c:	b2850513          	addi	a0,a0,-1240 # 80005030 <CONSOLE_STATUS+0x20>
    80001510:	00001097          	auipc	ra,0x1
    80001514:	290080e7          	jalr	656(ra) # 800027a0 <_Z11printStringPKc>
        printInteger(i);
    80001518:	00048513          	mv	a0,s1
    8000151c:	00001097          	auipc	ra,0x1
    80001520:	2ec080e7          	jalr	748(ra) # 80002808 <_Z12printIntegerm>
        printString("\n");
    80001524:	00004517          	auipc	a0,0x4
    80001528:	b9450513          	addi	a0,a0,-1132 # 800050b8 <CONSOLE_STATUS+0xa8>
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	274080e7          	jalr	628(ra) # 800027a0 <_Z11printStringPKc>
    for(; i<6; i++){
    80001534:	0014849b          	addiw	s1,s1,1
    80001538:	0ff4f493          	andi	s1,s1,255
    8000153c:	00500793          	li	a5,5
    80001540:	fc97f4e3          	bgeu	a5,s1,80001508 <_Z11workerBodyCv+0xe8>
    }

    TCB::running->setFinished(true);
    80001544:	00100593          	li	a1,1
    80001548:	00004797          	auipc	a5,0x4
    8000154c:	4807b783          	ld	a5,1152(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001550:	0007b503          	ld	a0,0(a5)
    80001554:	00001097          	auipc	ra,0x1
    80001558:	b9c080e7          	jalr	-1124(ra) # 800020f0 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    8000155c:	00001097          	auipc	ra,0x1
    80001560:	c78080e7          	jalr	-904(ra) # 800021d4 <_ZN3TCB5yieldEv>
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
    800015a8:	1fc080e7          	jalr	508(ra) # 800027a0 <_Z11printStringPKc>
        printInteger(i);
    800015ac:	00048513          	mv	a0,s1
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	258080e7          	jalr	600(ra) # 80002808 <_Z12printIntegerm>
        printString("\n");
    800015b8:	00004517          	auipc	a0,0x4
    800015bc:	b0050513          	addi	a0,a0,-1280 # 800050b8 <CONSOLE_STATUS+0xa8>
    800015c0:	00001097          	auipc	ra,0x1
    800015c4:	1e0080e7          	jalr	480(ra) # 800027a0 <_Z11printStringPKc>
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
    800015e4:	1c0080e7          	jalr	448(ra) # 800027a0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800015e8:	00500313          	li	t1,5
    TCB::yield();
    800015ec:	00001097          	auipc	ra,0x1
    800015f0:	be8080e7          	jalr	-1048(ra) # 800021d4 <_ZN3TCB5yieldEv>

    uint64 result=fibonacci(23);
    800015f4:	01700513          	li	a0,23
    800015f8:	00000097          	auipc	ra,0x0
    800015fc:	c88080e7          	jalr	-888(ra) # 80001280 <_ZL9fibonaccim>
    80001600:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    80001604:	00004517          	auipc	a0,0x4
    80001608:	a7450513          	addi	a0,a0,-1420 # 80005078 <CONSOLE_STATUS+0x68>
    8000160c:	00001097          	auipc	ra,0x1
    80001610:	194080e7          	jalr	404(ra) # 800027a0 <_Z11printStringPKc>
    printInteger(result);
    80001614:	00090513          	mv	a0,s2
    80001618:	00001097          	auipc	ra,0x1
    8000161c:	1f0080e7          	jalr	496(ra) # 80002808 <_Z12printIntegerm>
    printString("\n");
    80001620:	00004517          	auipc	a0,0x4
    80001624:	a9850513          	addi	a0,a0,-1384 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	178080e7          	jalr	376(ra) # 800027a0 <_Z11printStringPKc>
    80001630:	0380006f          	j	80001668 <_Z11workerBodyDv+0xec>

    for(; i<16; i++){
        printString("B: i=");
    80001634:	00004517          	auipc	a0,0x4
    80001638:	9f450513          	addi	a0,a0,-1548 # 80005028 <CONSOLE_STATUS+0x18>
    8000163c:	00001097          	auipc	ra,0x1
    80001640:	164080e7          	jalr	356(ra) # 800027a0 <_Z11printStringPKc>
        printInteger(i);
    80001644:	00048513          	mv	a0,s1
    80001648:	00001097          	auipc	ra,0x1
    8000164c:	1c0080e7          	jalr	448(ra) # 80002808 <_Z12printIntegerm>
        printString("\n");
    80001650:	00004517          	auipc	a0,0x4
    80001654:	a6850513          	addi	a0,a0,-1432 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	148080e7          	jalr	328(ra) # 800027a0 <_Z11printStringPKc>
    for(; i<16; i++){
    80001660:	0014849b          	addiw	s1,s1,1
    80001664:	0ff4f493          	andi	s1,s1,255
    80001668:	00f00793          	li	a5,15
    8000166c:	fc97f4e3          	bgeu	a5,s1,80001634 <_Z11workerBodyDv+0xb8>
    }

    TCB::running->setFinished(true);
    80001670:	00100593          	li	a1,1
    80001674:	00004797          	auipc	a5,0x4
    80001678:	3547b783          	ld	a5,852(a5) # 800059c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000167c:	0007b503          	ld	a0,0(a5)
    80001680:	00001097          	auipc	ra,0x1
    80001684:	a70080e7          	jalr	-1424(ra) # 800020f0 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	b4c080e7          	jalr	-1204(ra) # 800021d4 <_ZN3TCB5yieldEv>
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
    80001770:	25473703          	ld	a4,596(a4) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001774:	00073703          	ld	a4,0(a4)
    80001778:	0c070863          	beqz	a4,80001848 <_ZN5RiscV20handleSupervisorTrapEv+0x180>
            cur->next=fmem_head->next;
    8000177c:	00004697          	auipc	a3,0x4
    80001780:	2446b683          	ld	a3,580(a3) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    800017d8:	1ec7b783          	ld	a5,492(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    8000182c:	1985b583          	ld	a1,408(a1) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    8000185c:	1685b583          	ld	a1,360(a1) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001860:	00c5b023          	sd	a2,0(a1)
    80001864:	f99ff06f          	j	800017fc <_ZN5RiscV20handleSupervisorTrapEv+0x134>
            __asm__ volatile("mv %[ptr], a1" : [ptr] "=r"(ptr)); //promeni ovaj read, undefined reference
    80001868:	00058713          	mv	a4,a1
        if(!fmem_head || ptr < (char*)fmem_head)
    8000186c:	00004797          	auipc	a5,0x4
    80001870:	1547b783          	ld	a5,340(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001918:	0ac7b783          	ld	a5,172(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000191c:	0007b783          	ld	a5,0(a5)
    80001920:	00f73023          	sd	a5,0(a4)
    80001924:	f99ff06f          	j	800018bc <_ZN5RiscV20handleSupervisorTrapEv+0x1f4>
                    fmem_head = newSeg;
    80001928:	00004797          	auipc	a5,0x4
    8000192c:	0987b783          	ld	a5,152(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001990:	064080e7          	jalr	100(ra) # 800049f0 <console_handler>
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
    800019c8:	06c78793          	addi	a5,a5,108 # 80005a30 <_ZN9Scheduler19readyCoroutineQueueE>
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
    800019f0:	04453503          	ld	a0,68(a0) # 80005a30 <_ZN9Scheduler19readyCoroutineQueueE>
    800019f4:	04050263          	beqz	a0,80001a38 <_ZN9Scheduler3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    800019f8:	00853783          	ld	a5,8(a0)
    800019fc:	00004717          	auipc	a4,0x4
    80001a00:	02f73a23          	sd	a5,52(a4) # 80005a30 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80001a04:	02078463          	beqz	a5,80001a2c <_ZN9Scheduler3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    80001a08:	00053483          	ld	s1,0(a0)
        delete elem;
    80001a0c:	00001097          	auipc	ra,0x1
    80001a10:	afc080e7          	jalr	-1284(ra) # 80002508 <_ZdlPv>
}
    80001a14:	00048513          	mv	a0,s1
    80001a18:	01813083          	ld	ra,24(sp)
    80001a1c:	01013403          	ld	s0,16(sp)
    80001a20:	00813483          	ld	s1,8(sp)
    80001a24:	02010113          	addi	sp,sp,32
    80001a28:	00008067          	ret
            tail = 0;
    80001a2c:	00004797          	auipc	a5,0x4
    80001a30:	0007b623          	sd	zero,12(a5) # 80005a38 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
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
    80001a60:	87c080e7          	jalr	-1924(ra) # 800022d8 <_Znwm>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    80001a64:	00953023          	sd	s1,0(a0)
    80001a68:	00053423          	sd	zero,8(a0)
        if (tail){
    80001a6c:	00004797          	auipc	a5,0x4
    80001a70:	fcc7b783          	ld	a5,-52(a5) # 80005a38 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a74:	02078263          	beqz	a5,80001a98 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next=elem;
    80001a78:	00a7b423          	sd	a0,8(a5)
            tail=elem;
    80001a7c:	00004797          	auipc	a5,0x4
    80001a80:	faa7be23          	sd	a0,-68(a5) # 80005a38 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001a84:	01813083          	ld	ra,24(sp)
    80001a88:	01013403          	ld	s0,16(sp)
    80001a8c:	00813483          	ld	s1,8(sp)
    80001a90:	02010113          	addi	sp,sp,32
    80001a94:	00008067          	ret
            head=tail=elem;
    80001a98:	00004797          	auipc	a5,0x4
    80001a9c:	f9878793          	addi	a5,a5,-104 # 80005a30 <_ZN9Scheduler19readyCoroutineQueueE>
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
    80001b00:	ca4080e7          	jalr	-860(ra) # 800027a0 <_Z11printStringPKc>
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
    80001b44:	c60080e7          	jalr	-928(ra) # 800027a0 <_Z11printStringPKc>
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
    80001b68:	c3c080e7          	jalr	-964(ra) # 800027a0 <_Z11printStringPKc>
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
    80001ba8:	bfc080e7          	jalr	-1028(ra) # 800027a0 <_Z11printStringPKc>
            return;
    80001bac:	f9dff06f          	j	80001b48 <_Z10mallocFreev+0x68>
    printString("ok 2 \n");
    80001bb0:	00003517          	auipc	a0,0x3
    80001bb4:	51050513          	addi	a0,a0,1296 # 800050c0 <CONSOLE_STATUS+0xb0>
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	be8080e7          	jalr	-1048(ra) # 800027a0 <_Z11printStringPKc>
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
    80001c00:	ba4080e7          	jalr	-1116(ra) # 800027a0 <_Z11printStringPKc>
            return;
    80001c04:	f45ff06f          	j	80001b48 <_Z10mallocFreev+0x68>
    printString("ok 3 \n");
    80001c08:	00003517          	auipc	a0,0x3
    80001c0c:	4d050513          	addi	a0,a0,1232 # 800050d8 <CONSOLE_STATUS+0xc8>
    80001c10:	00001097          	auipc	ra,0x1
    80001c14:	b90080e7          	jalr	-1136(ra) # 800027a0 <_Z11printStringPKc>
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
    80001c54:	b50080e7          	jalr	-1200(ra) # 800027a0 <_Z11printStringPKc>
            return;
    80001c58:	ef1ff06f          	j	80001b48 <_Z10mallocFreev+0x68>
    printString("ok\n");;
    80001c5c:	00003517          	auipc	a0,0x3
    80001c60:	49450513          	addi	a0,a0,1172 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	b3c080e7          	jalr	-1220(ra) # 800027a0 <_Z11printStringPKc>
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
    80001c8c:	b18080e7          	jalr	-1256(ra) # 800027a0 <_Z11printStringPKc>
    uint64 x = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR + 100UL;
    80001c90:	00004797          	auipc	a5,0x4
    80001c94:	d407b783          	ld	a5,-704(a5) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001c98:	0007b503          	ld	a0,0(a5)
    80001c9c:	00004797          	auipc	a5,0x4
    80001ca0:	d047b783          	ld	a5,-764(a5) # 800059a0 <_GLOBAL_OFFSET_TABLE_+0x8>
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
    80001cc8:	adc080e7          	jalr	-1316(ra) # 800027a0 <_Z11printStringPKc>
}
    80001ccc:	00813083          	ld	ra,8(sp)
    80001cd0:	00013403          	ld	s0,0(sp)
    80001cd4:	01010113          	addi	sp,sp,16
    80001cd8:	00008067          	ret
    if(p == 0) printString("ok\n");
    80001cdc:	00003517          	auipc	a0,0x3
    80001ce0:	41450513          	addi	a0,a0,1044 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001ce4:	00001097          	auipc	ra,0x1
    80001ce8:	abc080e7          	jalr	-1348(ra) # 800027a0 <_Z11printStringPKc>
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
    80001d18:	a8c080e7          	jalr	-1396(ra) # 800027a0 <_Z11printStringPKc>
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
    80001d64:	aa8080e7          	jalr	-1368(ra) # 80002808 <_Z12printIntegerm>
    printString("\n");
    80001d68:	00003517          	auipc	a0,0x3
    80001d6c:	35050513          	addi	a0,a0,848 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001d70:	00001097          	auipc	ra,0x1
    80001d74:	a30080e7          	jalr	-1488(ra) # 800027a0 <_Z11printStringPKc>
    if(sum == X*cnt) printString("ok\n");
    80001d78:	0029179b          	slliw	a5,s2,0x2
    80001d7c:	0127893b          	addw	s2,a5,s2
    80001d80:	0019191b          	slliw	s2,s2,0x1
    80001d84:	03390863          	beq	s2,s3,80001db4 <_Z17lotOfSmallMallocsv+0xc4>
    else printString("not ok\n");
    80001d88:	00003517          	auipc	a0,0x3
    80001d8c:	38050513          	addi	a0,a0,896 # 80005108 <CONSOLE_STATUS+0xf8>
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	a10080e7          	jalr	-1520(ra) # 800027a0 <_Z11printStringPKc>
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
    80001dc0:	9e4080e7          	jalr	-1564(ra) # 800027a0 <_Z11printStringPKc>
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
    80001df4:	9b0080e7          	jalr	-1616(ra) # 800027a0 <_Z11printStringPKc>
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
    80001e40:	964080e7          	jalr	-1692(ra) # 800027a0 <_Z11printStringPKc>
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
    80001e68:	1b205a63          	blez	s2,8000201c <_Z13stressTestingv+0x254>
        printString("sz:");
    80001e6c:	00003517          	auipc	a0,0x3
    80001e70:	2cc50513          	addi	a0,a0,716 # 80005138 <CONSOLE_STATUS+0x128>
    80001e74:	00001097          	auipc	ra,0x1
    80001e78:	92c080e7          	jalr	-1748(ra) # 800027a0 <_Z11printStringPKc>
        printInteger(sz);
    80001e7c:	00090993          	mv	s3,s2
    80001e80:	00090513          	mv	a0,s2
    80001e84:	00001097          	auipc	ra,0x1
    80001e88:	984080e7          	jalr	-1660(ra) # 80002808 <_Z12printIntegerm>
        for(int i = 0 ; i<num;i+=2){
    80001e8c:	00000493          	li	s1,0
    80001e90:	1d000793          	li	a5,464
    80001e94:	0a97ce63          	blt	a5,s1,80001f50 <_Z13stressTestingv+0x188>
            printString("i:");
    80001e98:	00003517          	auipc	a0,0x3
    80001e9c:	2a850513          	addi	a0,a0,680 # 80005140 <CONSOLE_STATUS+0x130>
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	900080e7          	jalr	-1792(ra) # 800027a0 <_Z11printStringPKc>
            printInteger(i);
    80001ea8:	00048513          	mv	a0,s1
    80001eac:	00001097          	auipc	ra,0x1
    80001eb0:	95c080e7          	jalr	-1700(ra) # 80002808 <_Z12printIntegerm>
            printString("free\n");
    80001eb4:	00003517          	auipc	a0,0x3
    80001eb8:	29450513          	addi	a0,a0,660 # 80005148 <CONSOLE_STATUS+0x138>
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	8e4080e7          	jalr	-1820(ra) # 800027a0 <_Z11printStringPKc>
            int retval = mem_free(addrs[i]);
    80001ec4:	fffff737          	lui	a4,0xfffff
    80001ec8:	00349793          	slli	a5,s1,0x3
    80001ecc:	fd040693          	addi	a3,s0,-48
    80001ed0:	00e68733          	add	a4,a3,a4
    80001ed4:	00f707b3          	add	a5,a4,a5
    80001ed8:	1787b503          	ld	a0,376(a5)
    80001edc:	fffff097          	auipc	ra,0xfffff
    80001ee0:	374080e7          	jalr	884(ra) # 80001250 <_Z8mem_freePv>
            if(retval != 0){
    80001ee4:	04051263          	bnez	a0,80001f28 <_Z13stressTestingv+0x160>
            printString("alloc\n");
    80001ee8:	00003517          	auipc	a0,0x3
    80001eec:	26850513          	addi	a0,a0,616 # 80005150 <CONSOLE_STATUS+0x140>
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	8b0080e7          	jalr	-1872(ra) # 800027a0 <_Z11printStringPKc>
            addrs[i] = mem_alloc(sz*2);
    80001ef8:	0019151b          	slliw	a0,s2,0x1
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	328080e7          	jalr	808(ra) # 80001224 <_Z9mem_allocm>
    80001f04:	fffff737          	lui	a4,0xfffff
    80001f08:	00349793          	slli	a5,s1,0x3
    80001f0c:	fd040693          	addi	a3,s0,-48
    80001f10:	00e68733          	add	a4,a3,a4
    80001f14:	00f707b3          	add	a5,a4,a5
    80001f18:	16a7bc23          	sd	a0,376(a5)
            if(addrs[i] == 0){
    80001f1c:	02050063          	beqz	a0,80001f3c <_Z13stressTestingv+0x174>
        for(int i = 0 ; i<num;i+=2){
    80001f20:	0024849b          	addiw	s1,s1,2
    80001f24:	f6dff06f          	j	80001e90 <_Z13stressTestingv+0xc8>
                printString("not ok\n");
    80001f28:	00003517          	auipc	a0,0x3
    80001f2c:	1e050513          	addi	a0,a0,480 # 80005108 <CONSOLE_STATUS+0xf8>
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	870080e7          	jalr	-1936(ra) # 800027a0 <_Z11printStringPKc>
                return;
    80001f38:	f0dff06f          	j	80001e44 <_Z13stressTestingv+0x7c>
                printString("not ok\n");;
    80001f3c:	00003517          	auipc	a0,0x3
    80001f40:	1cc50513          	addi	a0,a0,460 # 80005108 <CONSOLE_STATUS+0xf8>
    80001f44:	00001097          	auipc	ra,0x1
    80001f48:	85c080e7          	jalr	-1956(ra) # 800027a0 <_Z11printStringPKc>
                return;
    80001f4c:	ef9ff06f          	j	80001e44 <_Z13stressTestingv+0x7c>
        for(int i = 1 ; i<num;i+=2){
    80001f50:	00100493          	li	s1,1
    80001f54:	1d000793          	li	a5,464
    80001f58:	0a97ce63          	blt	a5,s1,80002014 <_Z13stressTestingv+0x24c>
            printString("i:");
    80001f5c:	00003517          	auipc	a0,0x3
    80001f60:	1e450513          	addi	a0,a0,484 # 80005140 <CONSOLE_STATUS+0x130>
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	83c080e7          	jalr	-1988(ra) # 800027a0 <_Z11printStringPKc>
            printInteger(i);
    80001f6c:	00048513          	mv	a0,s1
    80001f70:	00001097          	auipc	ra,0x1
    80001f74:	898080e7          	jalr	-1896(ra) # 80002808 <_Z12printIntegerm>
            printString("free\n");
    80001f78:	00003517          	auipc	a0,0x3
    80001f7c:	1d050513          	addi	a0,a0,464 # 80005148 <CONSOLE_STATUS+0x138>
    80001f80:	00001097          	auipc	ra,0x1
    80001f84:	820080e7          	jalr	-2016(ra) # 800027a0 <_Z11printStringPKc>
            int retval = mem_free(addrs[i]);
    80001f88:	fffff737          	lui	a4,0xfffff
    80001f8c:	00349793          	slli	a5,s1,0x3
    80001f90:	fd040693          	addi	a3,s0,-48
    80001f94:	00e68733          	add	a4,a3,a4
    80001f98:	00f707b3          	add	a5,a4,a5
    80001f9c:	1787b503          	ld	a0,376(a5)
    80001fa0:	fffff097          	auipc	ra,0xfffff
    80001fa4:	2b0080e7          	jalr	688(ra) # 80001250 <_Z8mem_freePv>
            if(retval != 0){
    80001fa8:	04051263          	bnez	a0,80001fec <_Z13stressTestingv+0x224>
            printString("alloc\n");
    80001fac:	00003517          	auipc	a0,0x3
    80001fb0:	1a450513          	addi	a0,a0,420 # 80005150 <CONSOLE_STATUS+0x140>
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	7ec080e7          	jalr	2028(ra) # 800027a0 <_Z11printStringPKc>
            addrs[i] = mem_alloc(sz);
    80001fbc:	00098513          	mv	a0,s3
    80001fc0:	fffff097          	auipc	ra,0xfffff
    80001fc4:	264080e7          	jalr	612(ra) # 80001224 <_Z9mem_allocm>
    80001fc8:	fffff737          	lui	a4,0xfffff
    80001fcc:	00349793          	slli	a5,s1,0x3
    80001fd0:	fd040693          	addi	a3,s0,-48
    80001fd4:	00e68733          	add	a4,a3,a4
    80001fd8:	00f707b3          	add	a5,a4,a5
    80001fdc:	16a7bc23          	sd	a0,376(a5)
            if(addrs[i] == 0){
    80001fe0:	02050063          	beqz	a0,80002000 <_Z13stressTestingv+0x238>
        for(int i = 1 ; i<num;i+=2){
    80001fe4:	0024849b          	addiw	s1,s1,2
    80001fe8:	f6dff06f          	j	80001f54 <_Z13stressTestingv+0x18c>
                printString("not ok\n");
    80001fec:	00003517          	auipc	a0,0x3
    80001ff0:	11c50513          	addi	a0,a0,284 # 80005108 <CONSOLE_STATUS+0xf8>
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	7ac080e7          	jalr	1964(ra) # 800027a0 <_Z11printStringPKc>
                return;
    80001ffc:	e49ff06f          	j	80001e44 <_Z13stressTestingv+0x7c>
                printString("not ok\n");;
    80002000:	00003517          	auipc	a0,0x3
    80002004:	10850513          	addi	a0,a0,264 # 80005108 <CONSOLE_STATUS+0xf8>
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	798080e7          	jalr	1944(ra) # 800027a0 <_Z11printStringPKc>
                return;
    80002010:	e35ff06f          	j	80001e44 <_Z13stressTestingv+0x7c>
        sz-=10;
    80002014:	ff69091b          	addiw	s2,s2,-10
    while(sz > 0){
    80002018:	e51ff06f          	j	80001e68 <_Z13stressTestingv+0xa0>
    printString("ok\n");;
    8000201c:	00003517          	auipc	a0,0x3
    80002020:	0d450513          	addi	a0,a0,212 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002024:	00000097          	auipc	ra,0x0
    80002028:	77c080e7          	jalr	1916(ra) # 800027a0 <_Z11printStringPKc>
    8000202c:	e19ff06f          	j	80001e44 <_Z13stressTestingv+0x7c>

0000000080002030 <main>:

int main(){
    80002030:	ff010113          	addi	sp,sp,-16
    80002034:	00113423          	sd	ra,8(sp)
    80002038:	00813023          	sd	s0,0(sp)
    8000203c:	01010413          	addi	s0,sp,16
        if (!instance) {
    80002040:	00004797          	auipc	a5,0x4
    80002044:	9787b783          	ld	a5,-1672(a5) # 800059b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002048:	0007b783          	ld	a5,0(a5)
    8000204c:	04078663          	beqz	a5,80002098 <main+0x68>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    80002050:	00004797          	auipc	a5,0x4
    80002054:	9607b783          	ld	a5,-1696(a5) # 800059b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    80002058:	10579073          	csrw	stvec,a5
    //printInt(MemoryAllocation::availableMemory());
    printString("\n");
    8000205c:	00003517          	auipc	a0,0x3
    80002060:	05c50513          	addi	a0,a0,92 # 800050b8 <CONSOLE_STATUS+0xa8>
    80002064:	00000097          	auipc	ra,0x0
    80002068:	73c080e7          	jalr	1852(ra) # 800027a0 <_Z11printStringPKc>
    //bigMalloc();
    //lotOfSmallMallocs();
    //mallocFree();
    stressTesting();
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	d5c080e7          	jalr	-676(ra) # 80001dc8 <_Z13stressTestingv>
    //printInt(MemoryAllocation::availableMemory());
    printString("\n");
    80002074:	00003517          	auipc	a0,0x3
    80002078:	04450513          	addi	a0,a0,68 # 800050b8 <CONSOLE_STATUS+0xa8>
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	724080e7          	jalr	1828(ra) # 800027a0 <_Z11printStringPKc>
    return 0;
    80002084:	00000513          	li	a0,0
    80002088:	00813083          	ld	ra,8(sp)
    8000208c:	00013403          	ld	s0,0(sp)
    80002090:	01010113          	addi	sp,sp,16
    80002094:	00008067          	ret
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    80002098:	00004797          	auipc	a5,0x4
    8000209c:	9087b783          	ld	a5,-1784(a5) # 800059a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800020a0:	0007b783          	ld	a5,0(a5)
    800020a4:	00004697          	auipc	a3,0x4
    800020a8:	91c6b683          	ld	a3,-1764(a3) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020ac:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    800020b0:	00004717          	auipc	a4,0x4
    800020b4:	92073703          	ld	a4,-1760(a4) # 800059d0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800020b8:	00073703          	ld	a4,0(a4)
    800020bc:	40f70733          	sub	a4,a4,a5
    800020c0:	00e7b823          	sd	a4,16(a5)
            fmem_head->next = nullptr;
    800020c4:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    800020c8:	0006b783          	ld	a5,0(a3)
    800020cc:	0007b423          	sd	zero,8(a5)
            return instance;
    800020d0:	f81ff06f          	j	80002050 <main+0x20>

00000000800020d4 <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00813423          	sd	s0,8(sp)
    800020dc:	01010413          	addi	s0,sp,16
    return finished;
}
    800020e0:	02854503          	lbu	a0,40(a0)
    800020e4:	00813403          	ld	s0,8(sp)
    800020e8:	01010113          	addi	sp,sp,16
    800020ec:	00008067          	ret

00000000800020f0 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00813423          	sd	s0,8(sp)
    800020f8:	01010413          	addi	s0,sp,16
    TCB::finished = finished;
    800020fc:	02b50423          	sb	a1,40(a0)
}
    80002100:	00813403          	ld	s0,8(sp)
    80002104:	01010113          	addi	sp,sp,16
    80002108:	00008067          	ret

000000008000210c <_ZN3TCB12createThreadEPFvvE>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

TCB* TCB::createThread(TCB::Body body) {
    8000210c:	fe010113          	addi	sp,sp,-32
    80002110:	00113c23          	sd	ra,24(sp)
    80002114:	00813823          	sd	s0,16(sp)
    80002118:	00913423          	sd	s1,8(sp)
    8000211c:	01213023          	sd	s2,0(sp)
    80002120:	02010413          	addi	s0,sp,32
    80002124:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80002128:	03000513          	li	a0,48
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	1ac080e7          	jalr	428(ra) # 800022d8 <_Znwm>
    80002134:	00050493          	mv	s1,a0
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[1024] : 0
                    }
            ),
            timeSlice(timeSlice),
            finished(false) {
    80002138:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[1024] : nullptr),
    8000213c:	00090a63          	beqz	s2,80002150 <_ZN3TCB12createThreadEPFvvE+0x44>
    80002140:	00002537          	lui	a0,0x2
    80002144:	00000097          	auipc	ra,0x0
    80002148:	2ac080e7          	jalr	684(ra) # 800023f0 <_Znam>
    8000214c:	0080006f          	j	80002154 <_ZN3TCB12createThreadEPFvvE+0x48>
    80002150:	00000513          	li	a0,0
            finished(false) {
    80002154:	00a4b423          	sd	a0,8(s1)
    80002158:	00000797          	auipc	a5,0x0
    8000215c:	09878793          	addi	a5,a5,152 # 800021f0 <_ZN3TCB13threadWrapperEv>
    80002160:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[1024] : 0
    80002164:	02050863          	beqz	a0,80002194 <_ZN3TCB12createThreadEPFvvE+0x88>
    80002168:	000027b7          	lui	a5,0x2
    8000216c:	00f507b3          	add	a5,a0,a5
            finished(false) {
    80002170:	00f4bc23          	sd	a5,24(s1)
    80002174:	00200793          	li	a5,2
    80002178:	02f4b023          	sd	a5,32(s1)
    8000217c:	02048423          	sb	zero,40(s1)
        if (body != nullptr) { Scheduler::put(this); }
    80002180:	02090c63          	beqz	s2,800021b8 <_ZN3TCB12createThreadEPFvvE+0xac>
    80002184:	00048513          	mv	a0,s1
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	8b8080e7          	jalr	-1864(ra) # 80001a40 <_ZN9Scheduler3putEP3TCB>
    80002190:	0280006f          	j	800021b8 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[1024] : 0
    80002194:	00000793          	li	a5,0
    80002198:	fd9ff06f          	j	80002170 <_ZN3TCB12createThreadEPFvvE+0x64>
    8000219c:	00050913          	mv	s2,a0
    800021a0:	00048513          	mv	a0,s1
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	364080e7          	jalr	868(ra) # 80002508 <_ZdlPv>
    800021ac:	00090513          	mv	a0,s2
    800021b0:	00005097          	auipc	ra,0x5
    800021b4:	978080e7          	jalr	-1672(ra) # 80006b28 <_Unwind_Resume>
}
    800021b8:	00048513          	mv	a0,s1
    800021bc:	01813083          	ld	ra,24(sp)
    800021c0:	01013403          	ld	s0,16(sp)
    800021c4:	00813483          	ld	s1,8(sp)
    800021c8:	00013903          	ld	s2,0(sp)
    800021cc:	02010113          	addi	sp,sp,32
    800021d0:	00008067          	ret

00000000800021d4 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    800021d4:	ff010113          	addi	sp,sp,-16
    800021d8:	00813423          	sd	s0,8(sp)
    800021dc:	01010413          	addi	s0,sp,16

    __asm__ volatile ("ecall");
    800021e0:	00000073          	ecall

};
    800021e4:	00813403          	ld	s0,8(sp)
    800021e8:	01010113          	addi	sp,sp,16
    800021ec:	00008067          	ret

00000000800021f0 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    800021f0:	fe010113          	addi	sp,sp,-32
    800021f4:	00113c23          	sd	ra,24(sp)
    800021f8:	00813823          	sd	s0,16(sp)
    800021fc:	00913423          	sd	s1,8(sp)
    80002200:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    80002204:	fffff097          	auipc	ra,0xfffff
    80002208:	4a4080e7          	jalr	1188(ra) # 800016a8 <_ZN5RiscV10popSppSpieEv>
    running->body();
    8000220c:	00004497          	auipc	s1,0x4
    80002210:	83448493          	addi	s1,s1,-1996 # 80005a40 <_ZN3TCB7runningE>
    80002214:	0004b783          	ld	a5,0(s1)
    80002218:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    8000221c:	000780e7          	jalr	a5
    running->setFinished(true);
    80002220:	00100593          	li	a1,1
    80002224:	0004b503          	ld	a0,0(s1)
    80002228:	00000097          	auipc	ra,0x0
    8000222c:	ec8080e7          	jalr	-312(ra) # 800020f0 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80002230:	00000097          	auipc	ra,0x0
    80002234:	fa4080e7          	jalr	-92(ra) # 800021d4 <_ZN3TCB5yieldEv>
}
    80002238:	01813083          	ld	ra,24(sp)
    8000223c:	01013403          	ld	s0,16(sp)
    80002240:	00813483          	ld	s1,8(sp)
    80002244:	02010113          	addi	sp,sp,32
    80002248:	00008067          	ret

000000008000224c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    8000224c:	fe010113          	addi	sp,sp,-32
    80002250:	00113c23          	sd	ra,24(sp)
    80002254:	00813823          	sd	s0,16(sp)
    80002258:	00913423          	sd	s1,8(sp)
    8000225c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002260:	00003497          	auipc	s1,0x3
    80002264:	7e04b483          	ld	s1,2016(s1) # 80005a40 <_ZN3TCB7runningE>
    if (!old->isFinished()) {
    80002268:	00048513          	mv	a0,s1
    8000226c:	00000097          	auipc	ra,0x0
    80002270:	e68080e7          	jalr	-408(ra) # 800020d4 <_ZNK3TCB10isFinishedEv>
    80002274:	02050c63          	beqz	a0,800022ac <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80002278:	fffff097          	auipc	ra,0xfffff
    8000227c:	760080e7          	jalr	1888(ra) # 800019d8 <_ZN9Scheduler3getEv>
    80002280:	00003797          	auipc	a5,0x3
    80002284:	7ca7b023          	sd	a0,1984(a5) # 80005a40 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002288:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    8000228c:	01048513          	addi	a0,s1,16
    80002290:	fffff097          	auipc	ra,0xfffff
    80002294:	f80080e7          	jalr	-128(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002298:	01813083          	ld	ra,24(sp)
    8000229c:	01013403          	ld	s0,16(sp)
    800022a0:	00813483          	ld	s1,8(sp)
    800022a4:	02010113          	addi	sp,sp,32
    800022a8:	00008067          	ret
        Scheduler::put(old);
    800022ac:	00048513          	mv	a0,s1
    800022b0:	fffff097          	auipc	ra,0xfffff
    800022b4:	790080e7          	jalr	1936(ra) # 80001a40 <_ZN9Scheduler3putEP3TCB>
    800022b8:	fc1ff06f          	j	80002278 <_ZN3TCB8dispatchEv+0x2c>

00000000800022bc <_ZN3TCB11thread_exitEv>:

int TCB::thread_exit() {
    800022bc:	ff010113          	addi	sp,sp,-16
    800022c0:	00813423          	sd	s0,8(sp)
    800022c4:	01010413          	addi	s0,sp,16
    return 0;
}
    800022c8:	00000513          	li	a0,0
    800022cc:	00813403          	ld	s0,8(sp)
    800022d0:	01010113          	addi	sp,sp,16
    800022d4:	00008067          	ret

00000000800022d8 <_Znwm>:
#include "../h/MemoryAllocation.hpp"

void *operator new(uint64 n){
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00813423          	sd	s0,8(sp)
    800022e0:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800022e4:	05750793          	addi	a5,a0,87
    800022e8:	0067d793          	srli	a5,a5,0x6
    800022ec:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    800022f0:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800022f4:	00003717          	auipc	a4,0x3
    800022f8:	6cc73703          	ld	a4,1740(a4) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022fc:	00073503          	ld	a0,0(a4)
    80002300:	0c050863          	beqz	a0,800023d0 <_Znwm+0xf8>
            cur->next=fmem_head->next;
    80002304:	00003717          	auipc	a4,0x3
    80002308:	6bc73703          	ld	a4,1724(a4) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000230c:	00073683          	ld	a3,0(a4)
    80002310:	0006b683          	ld	a3,0(a3)
    80002314:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80002318:	00073703          	ld	a4,0(a4)
    8000231c:	00873603          	ld	a2,8(a4)
    80002320:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80002324:	01053703          	ld	a4,16(a0)
    80002328:	02f76663          	bltu	a4,a5,80002354 <_Znwm+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    8000232c:	40f70733          	sub	a4,a4,a5
    80002330:	01800593          	li	a1,24
    80002334:	02e5ec63          	bltu	a1,a4,8000236c <_Znwm+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002338:	02060263          	beqz	a2,8000235c <_Znwm+0x84>
    8000233c:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80002340:	00053783          	ld	a5,0(a0)
    80002344:	08078663          	beqz	a5,800023d0 <_Znwm+0xf8>
    80002348:	00853703          	ld	a4,8(a0)
    8000234c:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002350:	0800006f          	j	800023d0 <_Znwm+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80002354:	00068513          	mv	a0,a3
    80002358:	fa9ff06f          	j	80002300 <_Znwm+0x28>
                else fmem_head = cur->next;
    8000235c:	00003797          	auipc	a5,0x3
    80002360:	6647b783          	ld	a5,1636(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002364:	00d7b023          	sd	a3,0(a5)
    80002368:	fd9ff06f          	j	80002340 <_Znwm+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    8000236c:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80002370:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80002374:	00073023          	sd	zero,0(a4)
                if (cur->prev) cur->prev->next = newfrgm;
    80002378:	00853683          	ld	a3,8(a0)
    8000237c:	06068063          	beqz	a3,800023dc <_Znwm+0x104>
    80002380:	00e6b023          	sd	a4,0(a3)
                if (cur->next) cur->next->prev = newfrgm;
    80002384:	00053683          	ld	a3,0(a0)
    80002388:	00068463          	beqz	a3,80002390 <_Znwm+0xb8>
    8000238c:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80002390:	00853603          	ld	a2,8(a0)
    80002394:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80002398:	00053683          	ld	a3,0(a0)
    8000239c:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800023a0:	01053683          	ld	a3,16(a0)
    800023a4:	40f687b3          	sub	a5,a3,a5
    800023a8:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800023ac:	0c070693          	addi	a3,a4,192
    800023b0:	00003597          	auipc	a1,0x3
    800023b4:	6105b583          	ld	a1,1552(a1) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023b8:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800023bc:	00073583          	ld	a1,0(a4)
    800023c0:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    800023c4:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800023c8:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800023cc:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}
    800023d0:	00813403          	ld	s0,8(sp)
    800023d4:	01010113          	addi	sp,sp,16
    800023d8:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800023dc:	0c070693          	addi	a3,a4,192
    800023e0:	00003617          	auipc	a2,0x3
    800023e4:	5e063603          	ld	a2,1504(a2) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023e8:	00d63023          	sd	a3,0(a2)
    800023ec:	f99ff06f          	j	80002384 <_Znwm+0xac>

00000000800023f0 <_Znam>:

void *operator new[](uint64 n){
    800023f0:	ff010113          	addi	sp,sp,-16
    800023f4:	00813423          	sd	s0,8(sp)
    800023f8:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    800023fc:	05750793          	addi	a5,a0,87
    80002400:	0067d793          	srli	a5,a5,0x6
    80002404:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80002408:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000240c:	00003717          	auipc	a4,0x3
    80002410:	5b473703          	ld	a4,1460(a4) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002414:	00073503          	ld	a0,0(a4)
    80002418:	0c050863          	beqz	a0,800024e8 <_Znam+0xf8>
            cur->next=fmem_head->next;
    8000241c:	00003717          	auipc	a4,0x3
    80002420:	5a473703          	ld	a4,1444(a4) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002424:	00073683          	ld	a3,0(a4)
    80002428:	0006b683          	ld	a3,0(a3)
    8000242c:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80002430:	00073703          	ld	a4,0(a4)
    80002434:	00873603          	ld	a2,8(a4)
    80002438:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    8000243c:	01053703          	ld	a4,16(a0)
    80002440:	02f76663          	bltu	a4,a5,8000246c <_Znam+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80002444:	40f70733          	sub	a4,a4,a5
    80002448:	01800593          	li	a1,24
    8000244c:	02e5ec63          	bltu	a1,a4,80002484 <_Znam+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80002450:	02060263          	beqz	a2,80002474 <_Znam+0x84>
    80002454:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80002458:	00053783          	ld	a5,0(a0)
    8000245c:	08078663          	beqz	a5,800024e8 <_Znam+0xf8>
    80002460:	00853703          	ld	a4,8(a0)
    80002464:	00e7b423          	sd	a4,8(a5)
                return cur;
    80002468:	0800006f          	j	800024e8 <_Znam+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    8000246c:	00068513          	mv	a0,a3
    80002470:	fa9ff06f          	j	80002418 <_Znam+0x28>
                else fmem_head = cur->next;
    80002474:	00003797          	auipc	a5,0x3
    80002478:	54c7b783          	ld	a5,1356(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000247c:	00d7b023          	sd	a3,0(a5)
    80002480:	fd9ff06f          	j	80002458 <_Znam+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80002484:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80002488:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    8000248c:	00073023          	sd	zero,0(a4)
                if (cur->prev) cur->prev->next = newfrgm;
    80002490:	00853683          	ld	a3,8(a0)
    80002494:	06068063          	beqz	a3,800024f4 <_Znam+0x104>
    80002498:	00e6b023          	sd	a4,0(a3)
                if (cur->next) cur->next->prev = newfrgm;
    8000249c:	00053683          	ld	a3,0(a0)
    800024a0:	00068463          	beqz	a3,800024a8 <_Znam+0xb8>
    800024a4:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    800024a8:	00853603          	ld	a2,8(a0)
    800024ac:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    800024b0:	00053683          	ld	a3,0(a0)
    800024b4:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    800024b8:	01053683          	ld	a3,16(a0)
    800024bc:	40f687b3          	sub	a5,a3,a5
    800024c0:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    800024c4:	0c070693          	addi	a3,a4,192
    800024c8:	00003597          	auipc	a1,0x3
    800024cc:	4f85b583          	ld	a1,1272(a1) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024d0:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    800024d4:	00073583          	ld	a1,0(a4)
    800024d8:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    800024dc:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    800024e0:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    800024e4:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
}
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    800024f4:	0c070693          	addi	a3,a4,192
    800024f8:	00003617          	auipc	a2,0x3
    800024fc:	4c863603          	ld	a2,1224(a2) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002500:	00d63023          	sd	a3,0(a2)
    80002504:	f99ff06f          	j	8000249c <_Znam+0xac>

0000000080002508 <_ZdlPv>:

void operator delete(void *p) noexcept {
    80002508:	ff010113          	addi	sp,sp,-16
    8000250c:	00813423          	sd	s0,8(sp)
    80002510:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002514:	00003797          	auipc	a5,0x3
    80002518:	4ac7b783          	ld	a5,1196(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000251c:	0007b703          	ld	a4,0(a5)
    80002520:	00070e63          	beqz	a4,8000253c <_ZdlPv+0x34>
    80002524:	02e56063          	bltu	a0,a4,80002544 <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002528:	00070793          	mv	a5,a4
    8000252c:	00073703          	ld	a4,0(a4)
    80002530:	00e50c63          	beq	a0,a4,80002548 <_ZdlPv+0x40>
    80002534:	fea76ae3          	bltu	a4,a0,80002528 <_ZdlPv+0x20>
    80002538:	0100006f          	j	80002548 <_ZdlPv+0x40>
            cur=nullptr;
    8000253c:	00070793          	mv	a5,a4
    80002540:	0080006f          	j	80002548 <_ZdlPv+0x40>
    80002544:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80002548:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    8000254c:	04000713          	li	a4,64
    80002550:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002554:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80002558:	04078e63          	beqz	a5,800025b4 <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    8000255c:	0007b703          	ld	a4,0(a5)
    80002560:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002564:	00053703          	ld	a4,0(a0)
    80002568:	00070463          	beqz	a4,80002570 <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    8000256c:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80002570:	04078c63          	beqz	a5,800025c8 <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002574:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002578:	00050c63          	beqz	a0,80002590 <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000257c:	00053703          	ld	a4,0(a0)
    80002580:	00070863          	beqz	a4,80002590 <_ZdlPv+0x88>
    80002584:	01053683          	ld	a3,16(a0)
    80002588:	00d50633          	add	a2,a0,a3
    8000258c:	04c70663          	beq	a4,a2,800025d8 <_ZdlPv+0xd0>
        if (!curr) return;
    80002590:	00078c63          	beqz	a5,800025a8 <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002594:	0007b703          	ld	a4,0(a5)
    80002598:	00070863          	beqz	a4,800025a8 <_ZdlPv+0xa0>
    8000259c:	0107b683          	ld	a3,16(a5)
    800025a0:	00d78633          	add	a2,a5,a3
    800025a4:	04c70a63          	beq	a4,a2,800025f8 <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    800025a8:	00813403          	ld	s0,8(sp)
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00008067          	ret
                    newSeg->next = fmem_head;
    800025b4:	00003717          	auipc	a4,0x3
    800025b8:	40c73703          	ld	a4,1036(a4) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025bc:	00073703          	ld	a4,0(a4)
    800025c0:	00e53023          	sd	a4,0(a0)
    800025c4:	fa1ff06f          	j	80002564 <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    800025c8:	00003717          	auipc	a4,0x3
    800025cc:	3f873703          	ld	a4,1016(a4) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025d0:	00a73023          	sd	a0,0(a4)
    800025d4:	fa5ff06f          	j	80002578 <_ZdlPv+0x70>
            curr->size += curr->next->size;
    800025d8:	01073603          	ld	a2,16(a4)
    800025dc:	00c686b3          	add	a3,a3,a2
    800025e0:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    800025e4:	00073703          	ld	a4,0(a4)
    800025e8:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    800025ec:	fa0702e3          	beqz	a4,80002590 <_ZdlPv+0x88>
    800025f0:	00a73423          	sd	a0,8(a4)
    800025f4:	f9dff06f          	j	80002590 <_ZdlPv+0x88>
            curr->size += curr->next->size;
    800025f8:	01073603          	ld	a2,16(a4)
    800025fc:	00c686b3          	add	a3,a3,a2
    80002600:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002604:	00073703          	ld	a4,0(a4)
    80002608:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    8000260c:	f8070ee3          	beqz	a4,800025a8 <_ZdlPv+0xa0>
    80002610:	00f73423          	sd	a5,8(a4)
    80002614:	f95ff06f          	j	800025a8 <_ZdlPv+0xa0>

0000000080002618 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    80002618:	ff010113          	addi	sp,sp,-16
    8000261c:	00813423          	sd	s0,8(sp)
    80002620:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80002624:	00003797          	auipc	a5,0x3
    80002628:	39c7b783          	ld	a5,924(a5) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000262c:	0007b703          	ld	a4,0(a5)
    80002630:	00070e63          	beqz	a4,8000264c <_ZdaPv+0x34>
    80002634:	02e56063          	bltu	a0,a4,80002654 <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80002638:	00070793          	mv	a5,a4
    8000263c:	00073703          	ld	a4,0(a4)
    80002640:	00e50c63          	beq	a0,a4,80002658 <_ZdaPv+0x40>
    80002644:	fea76ae3          	bltu	a4,a0,80002638 <_ZdaPv+0x20>
    80002648:	0100006f          	j	80002658 <_ZdaPv+0x40>
            cur=nullptr;
    8000264c:	00070793          	mv	a5,a4
    80002650:	0080006f          	j	80002658 <_ZdaPv+0x40>
    80002654:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80002658:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    8000265c:	04000713          	li	a4,64
    80002660:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002664:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80002668:	04078e63          	beqz	a5,800026c4 <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    8000266c:	0007b703          	ld	a4,0(a5)
    80002670:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002674:	00053703          	ld	a4,0(a0)
    80002678:	00070463          	beqz	a4,80002680 <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    8000267c:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80002680:	04078c63          	beqz	a5,800026d8 <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002684:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80002688:	00050c63          	beqz	a0,800026a0 <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    8000268c:	00053703          	ld	a4,0(a0)
    80002690:	00070863          	beqz	a4,800026a0 <_ZdaPv+0x88>
    80002694:	01053683          	ld	a3,16(a0)
    80002698:	00d50633          	add	a2,a0,a3
    8000269c:	04c70663          	beq	a4,a2,800026e8 <_ZdaPv+0xd0>
        if (!curr) return;
    800026a0:	00078c63          	beqz	a5,800026b8 <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    800026a4:	0007b703          	ld	a4,0(a5)
    800026a8:	00070863          	beqz	a4,800026b8 <_ZdaPv+0xa0>
    800026ac:	0107b683          	ld	a3,16(a5)
    800026b0:	00d78633          	add	a2,a5,a3
    800026b4:	04c70a63          	beq	a4,a2,80002708 <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
    800026b8:	00813403          	ld	s0,8(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret
                    newSeg->next = fmem_head;
    800026c4:	00003717          	auipc	a4,0x3
    800026c8:	2fc73703          	ld	a4,764(a4) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026cc:	00073703          	ld	a4,0(a4)
    800026d0:	00e53023          	sd	a4,0(a0)
    800026d4:	fa1ff06f          	j	80002674 <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    800026d8:	00003717          	auipc	a4,0x3
    800026dc:	2e873703          	ld	a4,744(a4) # 800059c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800026e0:	00a73023          	sd	a0,0(a4)
    800026e4:	fa5ff06f          	j	80002688 <_ZdaPv+0x70>
            curr->size += curr->next->size;
    800026e8:	01073603          	ld	a2,16(a4)
    800026ec:	00c686b3          	add	a3,a3,a2
    800026f0:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    800026f4:	00073703          	ld	a4,0(a4)
    800026f8:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    800026fc:	fa0702e3          	beqz	a4,800026a0 <_ZdaPv+0x88>
    80002700:	00a73423          	sd	a0,8(a4)
    80002704:	f9dff06f          	j	800026a0 <_ZdaPv+0x88>
            curr->size += curr->next->size;
    80002708:	01073603          	ld	a2,16(a4)
    8000270c:	00c686b3          	add	a3,a3,a2
    80002710:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80002714:	00073703          	ld	a4,0(a4)
    80002718:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    8000271c:	f8070ee3          	beqz	a4,800026b8 <_ZdaPv+0xa0>
    80002720:	00f73423          	sd	a5,8(a4)
    80002724:	f95ff06f          	j	800026b8 <_ZdaPv+0xa0>

0000000080002728 <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002728:	ff010113          	addi	sp,sp,-16
    8000272c:	00813423          	sd	s0,8(sp)
    80002730:	01010413          	addi	s0,sp,16
    80002734:	00100793          	li	a5,1
    80002738:	00f50863          	beq	a0,a5,80002748 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000273c:	00813403          	ld	s0,8(sp)
    80002740:	01010113          	addi	sp,sp,16
    80002744:	00008067          	ret
    80002748:	000107b7          	lui	a5,0x10
    8000274c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002750:	fef596e3          	bne	a1,a5,8000273c <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002754:	00003797          	auipc	a5,0x3
    80002758:	24c7b783          	ld	a5,588(a5) # 800059a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000275c:	0007b783          	ld	a5,0(a5)
    80002760:	00003717          	auipc	a4,0x3
    80002764:	2ef73823          	sd	a5,752(a4) # 80005a50 <_ZN16MemoryAllocation9fmem_headE>
    80002768:	fd5ff06f          	j	8000273c <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000276c <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    8000276c:	ff010113          	addi	sp,sp,-16
    80002770:	00113423          	sd	ra,8(sp)
    80002774:	00813023          	sd	s0,0(sp)
    80002778:	01010413          	addi	s0,sp,16
    8000277c:	000105b7          	lui	a1,0x10
    80002780:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002784:	00100513          	li	a0,1
    80002788:	00000097          	auipc	ra,0x0
    8000278c:	fa0080e7          	jalr	-96(ra) # 80002728 <_Z41__static_initialization_and_destruction_0ii>
    80002790:	00813083          	ld	ra,8(sp)
    80002794:	00013403          	ld	s0,0(sp)
    80002798:	01010113          	addi	sp,sp,16
    8000279c:	00008067          	ret

00000000800027a0 <_Z11printStringPKc>:

#include "../h/Print.hpp"
#include "../lib/console.h"
#include "../h/RiscV.hpp"
//promenjeni print string i integer na vezbama 2, 1:10:00 tu negde, da bi se onemogucili prekidi u samoj niti
void printString(char const *string){
    800027a0:	fe010113          	addi	sp,sp,-32
    800027a4:	00113c23          	sd	ra,24(sp)
    800027a8:	00813823          	sd	s0,16(sp)
    800027ac:	00913423          	sd	s1,8(sp)
    800027b0:	01213023          	sd	s2,0(sp)
    800027b4:	02010413          	addi	s0,sp,32
    800027b8:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    800027bc:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    800027c0:	00200793          	li	a5,2
    800027c4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = RiscV::r_sstatus();
    RiscV::mc_sstatus(RiscV::SSTATUS_SIE);
    while(*string!='\0'){
    800027c8:	0004c503          	lbu	a0,0(s1)
    800027cc:	00050a63          	beqz	a0,800027e0 <_Z11printStringPKc+0x40>
        __putc(*string);
    800027d0:	00002097          	auipc	ra,0x2
    800027d4:	1ac080e7          	jalr	428(ra) # 8000497c <__putc>
        string++;
    800027d8:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    800027dc:	fedff06f          	j	800027c8 <_Z11printStringPKc+0x28>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    800027e0:	0009091b          	sext.w	s2,s2
    800027e4:	00297913          	andi	s2,s2,2
    800027e8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    800027ec:	10092073          	csrs	sstatus,s2
}
    800027f0:	01813083          	ld	ra,24(sp)
    800027f4:	01013403          	ld	s0,16(sp)
    800027f8:	00813483          	ld	s1,8(sp)
    800027fc:	00013903          	ld	s2,0(sp)
    80002800:	02010113          	addi	sp,sp,32
    80002804:	00008067          	ret

0000000080002808 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    80002808:	fd010113          	addi	sp,sp,-48
    8000280c:	02113423          	sd	ra,40(sp)
    80002810:	02813023          	sd	s0,32(sp)
    80002814:	00913c23          	sd	s1,24(sp)
    80002818:	01213823          	sd	s2,16(sp)
    8000281c:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80002820:	10002973          	csrr	s2,sstatus
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    80002824:	00200793          	li	a5,2
    80002828:	1007b073          	csrc	sstatus,a5
    neg=0;
    if(integer<0){
        neg=1;
        x=-integer;
    }else{
        x=integer;
    8000282c:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80002830:	00000493          	li	s1,0
    do {
        buf[i++] = digits [x%10];
    80002834:	00a00613          	li	a2,10
    80002838:	02c5773b          	remuw	a4,a0,a2
    8000283c:	02071693          	slli	a3,a4,0x20
    80002840:	0206d693          	srli	a3,a3,0x20
    80002844:	00003717          	auipc	a4,0x3
    80002848:	91470713          	addi	a4,a4,-1772 # 80005158 <_ZZ12printIntegermE6digits>
    8000284c:	00d70733          	add	a4,a4,a3
    80002850:	00074703          	lbu	a4,0(a4)
    80002854:	fe040693          	addi	a3,s0,-32
    80002858:	009687b3          	add	a5,a3,s1
    8000285c:	0014849b          	addiw	s1,s1,1
    80002860:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002864:	0005071b          	sext.w	a4,a0
    80002868:	02c5553b          	divuw	a0,a0,a2
    8000286c:	00900793          	li	a5,9
    80002870:	fce7e2e3          	bltu	a5,a4,80002834 <_Z12printIntegerm+0x2c>
    if(neg) buf[i++] = '-';

    while(--i >= 0){
    80002874:	fff4849b          	addiw	s1,s1,-1
    80002878:	0004ce63          	bltz	s1,80002894 <_Z12printIntegerm+0x8c>
        __putc(buf[i]);
    8000287c:	fe040793          	addi	a5,s0,-32
    80002880:	009787b3          	add	a5,a5,s1
    80002884:	ff07c503          	lbu	a0,-16(a5)
    80002888:	00002097          	auipc	ra,0x2
    8000288c:	0f4080e7          	jalr	244(ra) # 8000497c <__putc>
    80002890:	fe5ff06f          	j	80002874 <_Z12printIntegerm+0x6c>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80002894:	0009091b          	sext.w	s2,s2
    80002898:	00297913          	andi	s2,s2,2
    8000289c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    800028a0:	10092073          	csrs	sstatus,s2
    800028a4:	02813083          	ld	ra,40(sp)
    800028a8:	02013403          	ld	s0,32(sp)
    800028ac:	01813483          	ld	s1,24(sp)
    800028b0:	01013903          	ld	s2,16(sp)
    800028b4:	03010113          	addi	sp,sp,48
    800028b8:	00008067          	ret

00000000800028bc <start>:
    800028bc:	ff010113          	addi	sp,sp,-16
    800028c0:	00813423          	sd	s0,8(sp)
    800028c4:	01010413          	addi	s0,sp,16
    800028c8:	300027f3          	csrr	a5,mstatus
    800028cc:	ffffe737          	lui	a4,0xffffe
    800028d0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7b3f>
    800028d4:	00e7f7b3          	and	a5,a5,a4
    800028d8:	00001737          	lui	a4,0x1
    800028dc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800028e0:	00e7e7b3          	or	a5,a5,a4
    800028e4:	30079073          	csrw	mstatus,a5
    800028e8:	00000797          	auipc	a5,0x0
    800028ec:	16078793          	addi	a5,a5,352 # 80002a48 <system_main>
    800028f0:	34179073          	csrw	mepc,a5
    800028f4:	00000793          	li	a5,0
    800028f8:	18079073          	csrw	satp,a5
    800028fc:	000107b7          	lui	a5,0x10
    80002900:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002904:	30279073          	csrw	medeleg,a5
    80002908:	30379073          	csrw	mideleg,a5
    8000290c:	104027f3          	csrr	a5,sie
    80002910:	2227e793          	ori	a5,a5,546
    80002914:	10479073          	csrw	sie,a5
    80002918:	fff00793          	li	a5,-1
    8000291c:	00a7d793          	srli	a5,a5,0xa
    80002920:	3b079073          	csrw	pmpaddr0,a5
    80002924:	00f00793          	li	a5,15
    80002928:	3a079073          	csrw	pmpcfg0,a5
    8000292c:	f14027f3          	csrr	a5,mhartid
    80002930:	0200c737          	lui	a4,0x200c
    80002934:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002938:	0007869b          	sext.w	a3,a5
    8000293c:	00269713          	slli	a4,a3,0x2
    80002940:	000f4637          	lui	a2,0xf4
    80002944:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002948:	00d70733          	add	a4,a4,a3
    8000294c:	0037979b          	slliw	a5,a5,0x3
    80002950:	020046b7          	lui	a3,0x2004
    80002954:	00d787b3          	add	a5,a5,a3
    80002958:	00c585b3          	add	a1,a1,a2
    8000295c:	00371693          	slli	a3,a4,0x3
    80002960:	00003717          	auipc	a4,0x3
    80002964:	10070713          	addi	a4,a4,256 # 80005a60 <timer_scratch>
    80002968:	00b7b023          	sd	a1,0(a5)
    8000296c:	00d70733          	add	a4,a4,a3
    80002970:	00f73c23          	sd	a5,24(a4)
    80002974:	02c73023          	sd	a2,32(a4)
    80002978:	34071073          	csrw	mscratch,a4
    8000297c:	00000797          	auipc	a5,0x0
    80002980:	6e478793          	addi	a5,a5,1764 # 80003060 <timervec>
    80002984:	30579073          	csrw	mtvec,a5
    80002988:	300027f3          	csrr	a5,mstatus
    8000298c:	0087e793          	ori	a5,a5,8
    80002990:	30079073          	csrw	mstatus,a5
    80002994:	304027f3          	csrr	a5,mie
    80002998:	0807e793          	ori	a5,a5,128
    8000299c:	30479073          	csrw	mie,a5
    800029a0:	f14027f3          	csrr	a5,mhartid
    800029a4:	0007879b          	sext.w	a5,a5
    800029a8:	00078213          	mv	tp,a5
    800029ac:	30200073          	mret
    800029b0:	00813403          	ld	s0,8(sp)
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00008067          	ret

00000000800029bc <timerinit>:
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00813423          	sd	s0,8(sp)
    800029c4:	01010413          	addi	s0,sp,16
    800029c8:	f14027f3          	csrr	a5,mhartid
    800029cc:	0200c737          	lui	a4,0x200c
    800029d0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800029d4:	0007869b          	sext.w	a3,a5
    800029d8:	00269713          	slli	a4,a3,0x2
    800029dc:	000f4637          	lui	a2,0xf4
    800029e0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800029e4:	00d70733          	add	a4,a4,a3
    800029e8:	0037979b          	slliw	a5,a5,0x3
    800029ec:	020046b7          	lui	a3,0x2004
    800029f0:	00d787b3          	add	a5,a5,a3
    800029f4:	00c585b3          	add	a1,a1,a2
    800029f8:	00371693          	slli	a3,a4,0x3
    800029fc:	00003717          	auipc	a4,0x3
    80002a00:	06470713          	addi	a4,a4,100 # 80005a60 <timer_scratch>
    80002a04:	00b7b023          	sd	a1,0(a5)
    80002a08:	00d70733          	add	a4,a4,a3
    80002a0c:	00f73c23          	sd	a5,24(a4)
    80002a10:	02c73023          	sd	a2,32(a4)
    80002a14:	34071073          	csrw	mscratch,a4
    80002a18:	00000797          	auipc	a5,0x0
    80002a1c:	64878793          	addi	a5,a5,1608 # 80003060 <timervec>
    80002a20:	30579073          	csrw	mtvec,a5
    80002a24:	300027f3          	csrr	a5,mstatus
    80002a28:	0087e793          	ori	a5,a5,8
    80002a2c:	30079073          	csrw	mstatus,a5
    80002a30:	304027f3          	csrr	a5,mie
    80002a34:	0807e793          	ori	a5,a5,128
    80002a38:	30479073          	csrw	mie,a5
    80002a3c:	00813403          	ld	s0,8(sp)
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret

0000000080002a48 <system_main>:
    80002a48:	fe010113          	addi	sp,sp,-32
    80002a4c:	00813823          	sd	s0,16(sp)
    80002a50:	00913423          	sd	s1,8(sp)
    80002a54:	00113c23          	sd	ra,24(sp)
    80002a58:	02010413          	addi	s0,sp,32
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	0c4080e7          	jalr	196(ra) # 80002b20 <cpuid>
    80002a64:	00003497          	auipc	s1,0x3
    80002a68:	f9c48493          	addi	s1,s1,-100 # 80005a00 <started>
    80002a6c:	02050263          	beqz	a0,80002a90 <system_main+0x48>
    80002a70:	0004a783          	lw	a5,0(s1)
    80002a74:	0007879b          	sext.w	a5,a5
    80002a78:	fe078ce3          	beqz	a5,80002a70 <system_main+0x28>
    80002a7c:	0ff0000f          	fence
    80002a80:	00002517          	auipc	a0,0x2
    80002a84:	71850513          	addi	a0,a0,1816 # 80005198 <_ZZ12printIntegermE6digits+0x40>
    80002a88:	00001097          	auipc	ra,0x1
    80002a8c:	a74080e7          	jalr	-1420(ra) # 800034fc <panic>
    80002a90:	00001097          	auipc	ra,0x1
    80002a94:	9c8080e7          	jalr	-1592(ra) # 80003458 <consoleinit>
    80002a98:	00001097          	auipc	ra,0x1
    80002a9c:	154080e7          	jalr	340(ra) # 80003bec <printfinit>
    80002aa0:	00002517          	auipc	a0,0x2
    80002aa4:	61850513          	addi	a0,a0,1560 # 800050b8 <CONSOLE_STATUS+0xa8>
    80002aa8:	00001097          	auipc	ra,0x1
    80002aac:	ab0080e7          	jalr	-1360(ra) # 80003558 <__printf>
    80002ab0:	00002517          	auipc	a0,0x2
    80002ab4:	6b850513          	addi	a0,a0,1720 # 80005168 <_ZZ12printIntegermE6digits+0x10>
    80002ab8:	00001097          	auipc	ra,0x1
    80002abc:	aa0080e7          	jalr	-1376(ra) # 80003558 <__printf>
    80002ac0:	00002517          	auipc	a0,0x2
    80002ac4:	5f850513          	addi	a0,a0,1528 # 800050b8 <CONSOLE_STATUS+0xa8>
    80002ac8:	00001097          	auipc	ra,0x1
    80002acc:	a90080e7          	jalr	-1392(ra) # 80003558 <__printf>
    80002ad0:	00001097          	auipc	ra,0x1
    80002ad4:	4a8080e7          	jalr	1192(ra) # 80003f78 <kinit>
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	148080e7          	jalr	328(ra) # 80002c20 <trapinit>
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	16c080e7          	jalr	364(ra) # 80002c4c <trapinithart>
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	5b8080e7          	jalr	1464(ra) # 800030a0 <plicinit>
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	5d8080e7          	jalr	1496(ra) # 800030c8 <plicinithart>
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	078080e7          	jalr	120(ra) # 80002b70 <userinit>
    80002b00:	0ff0000f          	fence
    80002b04:	00100793          	li	a5,1
    80002b08:	00002517          	auipc	a0,0x2
    80002b0c:	67850513          	addi	a0,a0,1656 # 80005180 <_ZZ12printIntegermE6digits+0x28>
    80002b10:	00f4a023          	sw	a5,0(s1)
    80002b14:	00001097          	auipc	ra,0x1
    80002b18:	a44080e7          	jalr	-1468(ra) # 80003558 <__printf>
    80002b1c:	0000006f          	j	80002b1c <system_main+0xd4>

0000000080002b20 <cpuid>:
    80002b20:	ff010113          	addi	sp,sp,-16
    80002b24:	00813423          	sd	s0,8(sp)
    80002b28:	01010413          	addi	s0,sp,16
    80002b2c:	00020513          	mv	a0,tp
    80002b30:	00813403          	ld	s0,8(sp)
    80002b34:	0005051b          	sext.w	a0,a0
    80002b38:	01010113          	addi	sp,sp,16
    80002b3c:	00008067          	ret

0000000080002b40 <mycpu>:
    80002b40:	ff010113          	addi	sp,sp,-16
    80002b44:	00813423          	sd	s0,8(sp)
    80002b48:	01010413          	addi	s0,sp,16
    80002b4c:	00020793          	mv	a5,tp
    80002b50:	00813403          	ld	s0,8(sp)
    80002b54:	0007879b          	sext.w	a5,a5
    80002b58:	00779793          	slli	a5,a5,0x7
    80002b5c:	00004517          	auipc	a0,0x4
    80002b60:	f3450513          	addi	a0,a0,-204 # 80006a90 <cpus>
    80002b64:	00f50533          	add	a0,a0,a5
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret

0000000080002b70 <userinit>:
    80002b70:	ff010113          	addi	sp,sp,-16
    80002b74:	00813423          	sd	s0,8(sp)
    80002b78:	01010413          	addi	s0,sp,16
    80002b7c:	00813403          	ld	s0,8(sp)
    80002b80:	01010113          	addi	sp,sp,16
    80002b84:	fffff317          	auipc	t1,0xfffff
    80002b88:	4ac30067          	jr	1196(t1) # 80002030 <main>

0000000080002b8c <either_copyout>:
    80002b8c:	ff010113          	addi	sp,sp,-16
    80002b90:	00813023          	sd	s0,0(sp)
    80002b94:	00113423          	sd	ra,8(sp)
    80002b98:	01010413          	addi	s0,sp,16
    80002b9c:	02051663          	bnez	a0,80002bc8 <either_copyout+0x3c>
    80002ba0:	00058513          	mv	a0,a1
    80002ba4:	00060593          	mv	a1,a2
    80002ba8:	0006861b          	sext.w	a2,a3
    80002bac:	00002097          	auipc	ra,0x2
    80002bb0:	c58080e7          	jalr	-936(ra) # 80004804 <__memmove>
    80002bb4:	00813083          	ld	ra,8(sp)
    80002bb8:	00013403          	ld	s0,0(sp)
    80002bbc:	00000513          	li	a0,0
    80002bc0:	01010113          	addi	sp,sp,16
    80002bc4:	00008067          	ret
    80002bc8:	00002517          	auipc	a0,0x2
    80002bcc:	5f850513          	addi	a0,a0,1528 # 800051c0 <_ZZ12printIntegermE6digits+0x68>
    80002bd0:	00001097          	auipc	ra,0x1
    80002bd4:	92c080e7          	jalr	-1748(ra) # 800034fc <panic>

0000000080002bd8 <either_copyin>:
    80002bd8:	ff010113          	addi	sp,sp,-16
    80002bdc:	00813023          	sd	s0,0(sp)
    80002be0:	00113423          	sd	ra,8(sp)
    80002be4:	01010413          	addi	s0,sp,16
    80002be8:	02059463          	bnez	a1,80002c10 <either_copyin+0x38>
    80002bec:	00060593          	mv	a1,a2
    80002bf0:	0006861b          	sext.w	a2,a3
    80002bf4:	00002097          	auipc	ra,0x2
    80002bf8:	c10080e7          	jalr	-1008(ra) # 80004804 <__memmove>
    80002bfc:	00813083          	ld	ra,8(sp)
    80002c00:	00013403          	ld	s0,0(sp)
    80002c04:	00000513          	li	a0,0
    80002c08:	01010113          	addi	sp,sp,16
    80002c0c:	00008067          	ret
    80002c10:	00002517          	auipc	a0,0x2
    80002c14:	5d850513          	addi	a0,a0,1496 # 800051e8 <_ZZ12printIntegermE6digits+0x90>
    80002c18:	00001097          	auipc	ra,0x1
    80002c1c:	8e4080e7          	jalr	-1820(ra) # 800034fc <panic>

0000000080002c20 <trapinit>:
    80002c20:	ff010113          	addi	sp,sp,-16
    80002c24:	00813423          	sd	s0,8(sp)
    80002c28:	01010413          	addi	s0,sp,16
    80002c2c:	00813403          	ld	s0,8(sp)
    80002c30:	00002597          	auipc	a1,0x2
    80002c34:	5e058593          	addi	a1,a1,1504 # 80005210 <_ZZ12printIntegermE6digits+0xb8>
    80002c38:	00004517          	auipc	a0,0x4
    80002c3c:	ed850513          	addi	a0,a0,-296 # 80006b10 <tickslock>
    80002c40:	01010113          	addi	sp,sp,16
    80002c44:	00001317          	auipc	t1,0x1
    80002c48:	5c430067          	jr	1476(t1) # 80004208 <initlock>

0000000080002c4c <trapinithart>:
    80002c4c:	ff010113          	addi	sp,sp,-16
    80002c50:	00813423          	sd	s0,8(sp)
    80002c54:	01010413          	addi	s0,sp,16
    80002c58:	00000797          	auipc	a5,0x0
    80002c5c:	2f878793          	addi	a5,a5,760 # 80002f50 <kernelvec>
    80002c60:	10579073          	csrw	stvec,a5
    80002c64:	00813403          	ld	s0,8(sp)
    80002c68:	01010113          	addi	sp,sp,16
    80002c6c:	00008067          	ret

0000000080002c70 <usertrap>:
    80002c70:	ff010113          	addi	sp,sp,-16
    80002c74:	00813423          	sd	s0,8(sp)
    80002c78:	01010413          	addi	s0,sp,16
    80002c7c:	00813403          	ld	s0,8(sp)
    80002c80:	01010113          	addi	sp,sp,16
    80002c84:	00008067          	ret

0000000080002c88 <usertrapret>:
    80002c88:	ff010113          	addi	sp,sp,-16
    80002c8c:	00813423          	sd	s0,8(sp)
    80002c90:	01010413          	addi	s0,sp,16
    80002c94:	00813403          	ld	s0,8(sp)
    80002c98:	01010113          	addi	sp,sp,16
    80002c9c:	00008067          	ret

0000000080002ca0 <kerneltrap>:
    80002ca0:	fe010113          	addi	sp,sp,-32
    80002ca4:	00813823          	sd	s0,16(sp)
    80002ca8:	00113c23          	sd	ra,24(sp)
    80002cac:	00913423          	sd	s1,8(sp)
    80002cb0:	02010413          	addi	s0,sp,32
    80002cb4:	142025f3          	csrr	a1,scause
    80002cb8:	100027f3          	csrr	a5,sstatus
    80002cbc:	0027f793          	andi	a5,a5,2
    80002cc0:	10079c63          	bnez	a5,80002dd8 <kerneltrap+0x138>
    80002cc4:	142027f3          	csrr	a5,scause
    80002cc8:	0207ce63          	bltz	a5,80002d04 <kerneltrap+0x64>
    80002ccc:	00002517          	auipc	a0,0x2
    80002cd0:	58c50513          	addi	a0,a0,1420 # 80005258 <_ZZ12printIntegermE6digits+0x100>
    80002cd4:	00001097          	auipc	ra,0x1
    80002cd8:	884080e7          	jalr	-1916(ra) # 80003558 <__printf>
    80002cdc:	141025f3          	csrr	a1,sepc
    80002ce0:	14302673          	csrr	a2,stval
    80002ce4:	00002517          	auipc	a0,0x2
    80002ce8:	58450513          	addi	a0,a0,1412 # 80005268 <_ZZ12printIntegermE6digits+0x110>
    80002cec:	00001097          	auipc	ra,0x1
    80002cf0:	86c080e7          	jalr	-1940(ra) # 80003558 <__printf>
    80002cf4:	00002517          	auipc	a0,0x2
    80002cf8:	58c50513          	addi	a0,a0,1420 # 80005280 <_ZZ12printIntegermE6digits+0x128>
    80002cfc:	00001097          	auipc	ra,0x1
    80002d00:	800080e7          	jalr	-2048(ra) # 800034fc <panic>
    80002d04:	0ff7f713          	andi	a4,a5,255
    80002d08:	00900693          	li	a3,9
    80002d0c:	04d70063          	beq	a4,a3,80002d4c <kerneltrap+0xac>
    80002d10:	fff00713          	li	a4,-1
    80002d14:	03f71713          	slli	a4,a4,0x3f
    80002d18:	00170713          	addi	a4,a4,1
    80002d1c:	fae798e3          	bne	a5,a4,80002ccc <kerneltrap+0x2c>
    80002d20:	00000097          	auipc	ra,0x0
    80002d24:	e00080e7          	jalr	-512(ra) # 80002b20 <cpuid>
    80002d28:	06050663          	beqz	a0,80002d94 <kerneltrap+0xf4>
    80002d2c:	144027f3          	csrr	a5,sip
    80002d30:	ffd7f793          	andi	a5,a5,-3
    80002d34:	14479073          	csrw	sip,a5
    80002d38:	01813083          	ld	ra,24(sp)
    80002d3c:	01013403          	ld	s0,16(sp)
    80002d40:	00813483          	ld	s1,8(sp)
    80002d44:	02010113          	addi	sp,sp,32
    80002d48:	00008067          	ret
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	3c8080e7          	jalr	968(ra) # 80003114 <plic_claim>
    80002d54:	00a00793          	li	a5,10
    80002d58:	00050493          	mv	s1,a0
    80002d5c:	06f50863          	beq	a0,a5,80002dcc <kerneltrap+0x12c>
    80002d60:	fc050ce3          	beqz	a0,80002d38 <kerneltrap+0x98>
    80002d64:	00050593          	mv	a1,a0
    80002d68:	00002517          	auipc	a0,0x2
    80002d6c:	4d050513          	addi	a0,a0,1232 # 80005238 <_ZZ12printIntegermE6digits+0xe0>
    80002d70:	00000097          	auipc	ra,0x0
    80002d74:	7e8080e7          	jalr	2024(ra) # 80003558 <__printf>
    80002d78:	01013403          	ld	s0,16(sp)
    80002d7c:	01813083          	ld	ra,24(sp)
    80002d80:	00048513          	mv	a0,s1
    80002d84:	00813483          	ld	s1,8(sp)
    80002d88:	02010113          	addi	sp,sp,32
    80002d8c:	00000317          	auipc	t1,0x0
    80002d90:	3c030067          	jr	960(t1) # 8000314c <plic_complete>
    80002d94:	00004517          	auipc	a0,0x4
    80002d98:	d7c50513          	addi	a0,a0,-644 # 80006b10 <tickslock>
    80002d9c:	00001097          	auipc	ra,0x1
    80002da0:	490080e7          	jalr	1168(ra) # 8000422c <acquire>
    80002da4:	00003717          	auipc	a4,0x3
    80002da8:	c6070713          	addi	a4,a4,-928 # 80005a04 <ticks>
    80002dac:	00072783          	lw	a5,0(a4)
    80002db0:	00004517          	auipc	a0,0x4
    80002db4:	d6050513          	addi	a0,a0,-672 # 80006b10 <tickslock>
    80002db8:	0017879b          	addiw	a5,a5,1
    80002dbc:	00f72023          	sw	a5,0(a4)
    80002dc0:	00001097          	auipc	ra,0x1
    80002dc4:	538080e7          	jalr	1336(ra) # 800042f8 <release>
    80002dc8:	f65ff06f          	j	80002d2c <kerneltrap+0x8c>
    80002dcc:	00001097          	auipc	ra,0x1
    80002dd0:	094080e7          	jalr	148(ra) # 80003e60 <uartintr>
    80002dd4:	fa5ff06f          	j	80002d78 <kerneltrap+0xd8>
    80002dd8:	00002517          	auipc	a0,0x2
    80002ddc:	44050513          	addi	a0,a0,1088 # 80005218 <_ZZ12printIntegermE6digits+0xc0>
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	71c080e7          	jalr	1820(ra) # 800034fc <panic>

0000000080002de8 <clockintr>:
    80002de8:	fe010113          	addi	sp,sp,-32
    80002dec:	00813823          	sd	s0,16(sp)
    80002df0:	00913423          	sd	s1,8(sp)
    80002df4:	00113c23          	sd	ra,24(sp)
    80002df8:	02010413          	addi	s0,sp,32
    80002dfc:	00004497          	auipc	s1,0x4
    80002e00:	d1448493          	addi	s1,s1,-748 # 80006b10 <tickslock>
    80002e04:	00048513          	mv	a0,s1
    80002e08:	00001097          	auipc	ra,0x1
    80002e0c:	424080e7          	jalr	1060(ra) # 8000422c <acquire>
    80002e10:	00003717          	auipc	a4,0x3
    80002e14:	bf470713          	addi	a4,a4,-1036 # 80005a04 <ticks>
    80002e18:	00072783          	lw	a5,0(a4)
    80002e1c:	01013403          	ld	s0,16(sp)
    80002e20:	01813083          	ld	ra,24(sp)
    80002e24:	00048513          	mv	a0,s1
    80002e28:	0017879b          	addiw	a5,a5,1
    80002e2c:	00813483          	ld	s1,8(sp)
    80002e30:	00f72023          	sw	a5,0(a4)
    80002e34:	02010113          	addi	sp,sp,32
    80002e38:	00001317          	auipc	t1,0x1
    80002e3c:	4c030067          	jr	1216(t1) # 800042f8 <release>

0000000080002e40 <devintr>:
    80002e40:	142027f3          	csrr	a5,scause
    80002e44:	00000513          	li	a0,0
    80002e48:	0007c463          	bltz	a5,80002e50 <devintr+0x10>
    80002e4c:	00008067          	ret
    80002e50:	fe010113          	addi	sp,sp,-32
    80002e54:	00813823          	sd	s0,16(sp)
    80002e58:	00113c23          	sd	ra,24(sp)
    80002e5c:	00913423          	sd	s1,8(sp)
    80002e60:	02010413          	addi	s0,sp,32
    80002e64:	0ff7f713          	andi	a4,a5,255
    80002e68:	00900693          	li	a3,9
    80002e6c:	04d70c63          	beq	a4,a3,80002ec4 <devintr+0x84>
    80002e70:	fff00713          	li	a4,-1
    80002e74:	03f71713          	slli	a4,a4,0x3f
    80002e78:	00170713          	addi	a4,a4,1
    80002e7c:	00e78c63          	beq	a5,a4,80002e94 <devintr+0x54>
    80002e80:	01813083          	ld	ra,24(sp)
    80002e84:	01013403          	ld	s0,16(sp)
    80002e88:	00813483          	ld	s1,8(sp)
    80002e8c:	02010113          	addi	sp,sp,32
    80002e90:	00008067          	ret
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	c8c080e7          	jalr	-884(ra) # 80002b20 <cpuid>
    80002e9c:	06050663          	beqz	a0,80002f08 <devintr+0xc8>
    80002ea0:	144027f3          	csrr	a5,sip
    80002ea4:	ffd7f793          	andi	a5,a5,-3
    80002ea8:	14479073          	csrw	sip,a5
    80002eac:	01813083          	ld	ra,24(sp)
    80002eb0:	01013403          	ld	s0,16(sp)
    80002eb4:	00813483          	ld	s1,8(sp)
    80002eb8:	00200513          	li	a0,2
    80002ebc:	02010113          	addi	sp,sp,32
    80002ec0:	00008067          	ret
    80002ec4:	00000097          	auipc	ra,0x0
    80002ec8:	250080e7          	jalr	592(ra) # 80003114 <plic_claim>
    80002ecc:	00a00793          	li	a5,10
    80002ed0:	00050493          	mv	s1,a0
    80002ed4:	06f50663          	beq	a0,a5,80002f40 <devintr+0x100>
    80002ed8:	00100513          	li	a0,1
    80002edc:	fa0482e3          	beqz	s1,80002e80 <devintr+0x40>
    80002ee0:	00048593          	mv	a1,s1
    80002ee4:	00002517          	auipc	a0,0x2
    80002ee8:	35450513          	addi	a0,a0,852 # 80005238 <_ZZ12printIntegermE6digits+0xe0>
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	66c080e7          	jalr	1644(ra) # 80003558 <__printf>
    80002ef4:	00048513          	mv	a0,s1
    80002ef8:	00000097          	auipc	ra,0x0
    80002efc:	254080e7          	jalr	596(ra) # 8000314c <plic_complete>
    80002f00:	00100513          	li	a0,1
    80002f04:	f7dff06f          	j	80002e80 <devintr+0x40>
    80002f08:	00004517          	auipc	a0,0x4
    80002f0c:	c0850513          	addi	a0,a0,-1016 # 80006b10 <tickslock>
    80002f10:	00001097          	auipc	ra,0x1
    80002f14:	31c080e7          	jalr	796(ra) # 8000422c <acquire>
    80002f18:	00003717          	auipc	a4,0x3
    80002f1c:	aec70713          	addi	a4,a4,-1300 # 80005a04 <ticks>
    80002f20:	00072783          	lw	a5,0(a4)
    80002f24:	00004517          	auipc	a0,0x4
    80002f28:	bec50513          	addi	a0,a0,-1044 # 80006b10 <tickslock>
    80002f2c:	0017879b          	addiw	a5,a5,1
    80002f30:	00f72023          	sw	a5,0(a4)
    80002f34:	00001097          	auipc	ra,0x1
    80002f38:	3c4080e7          	jalr	964(ra) # 800042f8 <release>
    80002f3c:	f65ff06f          	j	80002ea0 <devintr+0x60>
    80002f40:	00001097          	auipc	ra,0x1
    80002f44:	f20080e7          	jalr	-224(ra) # 80003e60 <uartintr>
    80002f48:	fadff06f          	j	80002ef4 <devintr+0xb4>
    80002f4c:	0000                	unimp
	...

0000000080002f50 <kernelvec>:
    80002f50:	f0010113          	addi	sp,sp,-256
    80002f54:	00113023          	sd	ra,0(sp)
    80002f58:	00213423          	sd	sp,8(sp)
    80002f5c:	00313823          	sd	gp,16(sp)
    80002f60:	00413c23          	sd	tp,24(sp)
    80002f64:	02513023          	sd	t0,32(sp)
    80002f68:	02613423          	sd	t1,40(sp)
    80002f6c:	02713823          	sd	t2,48(sp)
    80002f70:	02813c23          	sd	s0,56(sp)
    80002f74:	04913023          	sd	s1,64(sp)
    80002f78:	04a13423          	sd	a0,72(sp)
    80002f7c:	04b13823          	sd	a1,80(sp)
    80002f80:	04c13c23          	sd	a2,88(sp)
    80002f84:	06d13023          	sd	a3,96(sp)
    80002f88:	06e13423          	sd	a4,104(sp)
    80002f8c:	06f13823          	sd	a5,112(sp)
    80002f90:	07013c23          	sd	a6,120(sp)
    80002f94:	09113023          	sd	a7,128(sp)
    80002f98:	09213423          	sd	s2,136(sp)
    80002f9c:	09313823          	sd	s3,144(sp)
    80002fa0:	09413c23          	sd	s4,152(sp)
    80002fa4:	0b513023          	sd	s5,160(sp)
    80002fa8:	0b613423          	sd	s6,168(sp)
    80002fac:	0b713823          	sd	s7,176(sp)
    80002fb0:	0b813c23          	sd	s8,184(sp)
    80002fb4:	0d913023          	sd	s9,192(sp)
    80002fb8:	0da13423          	sd	s10,200(sp)
    80002fbc:	0db13823          	sd	s11,208(sp)
    80002fc0:	0dc13c23          	sd	t3,216(sp)
    80002fc4:	0fd13023          	sd	t4,224(sp)
    80002fc8:	0fe13423          	sd	t5,232(sp)
    80002fcc:	0ff13823          	sd	t6,240(sp)
    80002fd0:	cd1ff0ef          	jal	ra,80002ca0 <kerneltrap>
    80002fd4:	00013083          	ld	ra,0(sp)
    80002fd8:	00813103          	ld	sp,8(sp)
    80002fdc:	01013183          	ld	gp,16(sp)
    80002fe0:	02013283          	ld	t0,32(sp)
    80002fe4:	02813303          	ld	t1,40(sp)
    80002fe8:	03013383          	ld	t2,48(sp)
    80002fec:	03813403          	ld	s0,56(sp)
    80002ff0:	04013483          	ld	s1,64(sp)
    80002ff4:	04813503          	ld	a0,72(sp)
    80002ff8:	05013583          	ld	a1,80(sp)
    80002ffc:	05813603          	ld	a2,88(sp)
    80003000:	06013683          	ld	a3,96(sp)
    80003004:	06813703          	ld	a4,104(sp)
    80003008:	07013783          	ld	a5,112(sp)
    8000300c:	07813803          	ld	a6,120(sp)
    80003010:	08013883          	ld	a7,128(sp)
    80003014:	08813903          	ld	s2,136(sp)
    80003018:	09013983          	ld	s3,144(sp)
    8000301c:	09813a03          	ld	s4,152(sp)
    80003020:	0a013a83          	ld	s5,160(sp)
    80003024:	0a813b03          	ld	s6,168(sp)
    80003028:	0b013b83          	ld	s7,176(sp)
    8000302c:	0b813c03          	ld	s8,184(sp)
    80003030:	0c013c83          	ld	s9,192(sp)
    80003034:	0c813d03          	ld	s10,200(sp)
    80003038:	0d013d83          	ld	s11,208(sp)
    8000303c:	0d813e03          	ld	t3,216(sp)
    80003040:	0e013e83          	ld	t4,224(sp)
    80003044:	0e813f03          	ld	t5,232(sp)
    80003048:	0f013f83          	ld	t6,240(sp)
    8000304c:	10010113          	addi	sp,sp,256
    80003050:	10200073          	sret
    80003054:	00000013          	nop
    80003058:	00000013          	nop
    8000305c:	00000013          	nop

0000000080003060 <timervec>:
    80003060:	34051573          	csrrw	a0,mscratch,a0
    80003064:	00b53023          	sd	a1,0(a0)
    80003068:	00c53423          	sd	a2,8(a0)
    8000306c:	00d53823          	sd	a3,16(a0)
    80003070:	01853583          	ld	a1,24(a0)
    80003074:	02053603          	ld	a2,32(a0)
    80003078:	0005b683          	ld	a3,0(a1)
    8000307c:	00c686b3          	add	a3,a3,a2
    80003080:	00d5b023          	sd	a3,0(a1)
    80003084:	00200593          	li	a1,2
    80003088:	14459073          	csrw	sip,a1
    8000308c:	01053683          	ld	a3,16(a0)
    80003090:	00853603          	ld	a2,8(a0)
    80003094:	00053583          	ld	a1,0(a0)
    80003098:	34051573          	csrrw	a0,mscratch,a0
    8000309c:	30200073          	mret

00000000800030a0 <plicinit>:
    800030a0:	ff010113          	addi	sp,sp,-16
    800030a4:	00813423          	sd	s0,8(sp)
    800030a8:	01010413          	addi	s0,sp,16
    800030ac:	00813403          	ld	s0,8(sp)
    800030b0:	0c0007b7          	lui	a5,0xc000
    800030b4:	00100713          	li	a4,1
    800030b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800030bc:	00e7a223          	sw	a4,4(a5)
    800030c0:	01010113          	addi	sp,sp,16
    800030c4:	00008067          	ret

00000000800030c8 <plicinithart>:
    800030c8:	ff010113          	addi	sp,sp,-16
    800030cc:	00813023          	sd	s0,0(sp)
    800030d0:	00113423          	sd	ra,8(sp)
    800030d4:	01010413          	addi	s0,sp,16
    800030d8:	00000097          	auipc	ra,0x0
    800030dc:	a48080e7          	jalr	-1464(ra) # 80002b20 <cpuid>
    800030e0:	0085171b          	slliw	a4,a0,0x8
    800030e4:	0c0027b7          	lui	a5,0xc002
    800030e8:	00e787b3          	add	a5,a5,a4
    800030ec:	40200713          	li	a4,1026
    800030f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800030f4:	00813083          	ld	ra,8(sp)
    800030f8:	00013403          	ld	s0,0(sp)
    800030fc:	00d5151b          	slliw	a0,a0,0xd
    80003100:	0c2017b7          	lui	a5,0xc201
    80003104:	00a78533          	add	a0,a5,a0
    80003108:	00052023          	sw	zero,0(a0)
    8000310c:	01010113          	addi	sp,sp,16
    80003110:	00008067          	ret

0000000080003114 <plic_claim>:
    80003114:	ff010113          	addi	sp,sp,-16
    80003118:	00813023          	sd	s0,0(sp)
    8000311c:	00113423          	sd	ra,8(sp)
    80003120:	01010413          	addi	s0,sp,16
    80003124:	00000097          	auipc	ra,0x0
    80003128:	9fc080e7          	jalr	-1540(ra) # 80002b20 <cpuid>
    8000312c:	00813083          	ld	ra,8(sp)
    80003130:	00013403          	ld	s0,0(sp)
    80003134:	00d5151b          	slliw	a0,a0,0xd
    80003138:	0c2017b7          	lui	a5,0xc201
    8000313c:	00a78533          	add	a0,a5,a0
    80003140:	00452503          	lw	a0,4(a0)
    80003144:	01010113          	addi	sp,sp,16
    80003148:	00008067          	ret

000000008000314c <plic_complete>:
    8000314c:	fe010113          	addi	sp,sp,-32
    80003150:	00813823          	sd	s0,16(sp)
    80003154:	00913423          	sd	s1,8(sp)
    80003158:	00113c23          	sd	ra,24(sp)
    8000315c:	02010413          	addi	s0,sp,32
    80003160:	00050493          	mv	s1,a0
    80003164:	00000097          	auipc	ra,0x0
    80003168:	9bc080e7          	jalr	-1604(ra) # 80002b20 <cpuid>
    8000316c:	01813083          	ld	ra,24(sp)
    80003170:	01013403          	ld	s0,16(sp)
    80003174:	00d5179b          	slliw	a5,a0,0xd
    80003178:	0c201737          	lui	a4,0xc201
    8000317c:	00f707b3          	add	a5,a4,a5
    80003180:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003184:	00813483          	ld	s1,8(sp)
    80003188:	02010113          	addi	sp,sp,32
    8000318c:	00008067          	ret

0000000080003190 <consolewrite>:
    80003190:	fb010113          	addi	sp,sp,-80
    80003194:	04813023          	sd	s0,64(sp)
    80003198:	04113423          	sd	ra,72(sp)
    8000319c:	02913c23          	sd	s1,56(sp)
    800031a0:	03213823          	sd	s2,48(sp)
    800031a4:	03313423          	sd	s3,40(sp)
    800031a8:	03413023          	sd	s4,32(sp)
    800031ac:	01513c23          	sd	s5,24(sp)
    800031b0:	05010413          	addi	s0,sp,80
    800031b4:	06c05c63          	blez	a2,8000322c <consolewrite+0x9c>
    800031b8:	00060993          	mv	s3,a2
    800031bc:	00050a13          	mv	s4,a0
    800031c0:	00058493          	mv	s1,a1
    800031c4:	00000913          	li	s2,0
    800031c8:	fff00a93          	li	s5,-1
    800031cc:	01c0006f          	j	800031e8 <consolewrite+0x58>
    800031d0:	fbf44503          	lbu	a0,-65(s0)
    800031d4:	0019091b          	addiw	s2,s2,1
    800031d8:	00148493          	addi	s1,s1,1
    800031dc:	00001097          	auipc	ra,0x1
    800031e0:	a9c080e7          	jalr	-1380(ra) # 80003c78 <uartputc>
    800031e4:	03298063          	beq	s3,s2,80003204 <consolewrite+0x74>
    800031e8:	00048613          	mv	a2,s1
    800031ec:	00100693          	li	a3,1
    800031f0:	000a0593          	mv	a1,s4
    800031f4:	fbf40513          	addi	a0,s0,-65
    800031f8:	00000097          	auipc	ra,0x0
    800031fc:	9e0080e7          	jalr	-1568(ra) # 80002bd8 <either_copyin>
    80003200:	fd5518e3          	bne	a0,s5,800031d0 <consolewrite+0x40>
    80003204:	04813083          	ld	ra,72(sp)
    80003208:	04013403          	ld	s0,64(sp)
    8000320c:	03813483          	ld	s1,56(sp)
    80003210:	02813983          	ld	s3,40(sp)
    80003214:	02013a03          	ld	s4,32(sp)
    80003218:	01813a83          	ld	s5,24(sp)
    8000321c:	00090513          	mv	a0,s2
    80003220:	03013903          	ld	s2,48(sp)
    80003224:	05010113          	addi	sp,sp,80
    80003228:	00008067          	ret
    8000322c:	00000913          	li	s2,0
    80003230:	fd5ff06f          	j	80003204 <consolewrite+0x74>

0000000080003234 <consoleread>:
    80003234:	f9010113          	addi	sp,sp,-112
    80003238:	06813023          	sd	s0,96(sp)
    8000323c:	04913c23          	sd	s1,88(sp)
    80003240:	05213823          	sd	s2,80(sp)
    80003244:	05313423          	sd	s3,72(sp)
    80003248:	05413023          	sd	s4,64(sp)
    8000324c:	03513c23          	sd	s5,56(sp)
    80003250:	03613823          	sd	s6,48(sp)
    80003254:	03713423          	sd	s7,40(sp)
    80003258:	03813023          	sd	s8,32(sp)
    8000325c:	06113423          	sd	ra,104(sp)
    80003260:	01913c23          	sd	s9,24(sp)
    80003264:	07010413          	addi	s0,sp,112
    80003268:	00060b93          	mv	s7,a2
    8000326c:	00050913          	mv	s2,a0
    80003270:	00058c13          	mv	s8,a1
    80003274:	00060b1b          	sext.w	s6,a2
    80003278:	00004497          	auipc	s1,0x4
    8000327c:	8c048493          	addi	s1,s1,-1856 # 80006b38 <cons>
    80003280:	00400993          	li	s3,4
    80003284:	fff00a13          	li	s4,-1
    80003288:	00a00a93          	li	s5,10
    8000328c:	05705e63          	blez	s7,800032e8 <consoleread+0xb4>
    80003290:	09c4a703          	lw	a4,156(s1)
    80003294:	0984a783          	lw	a5,152(s1)
    80003298:	0007071b          	sext.w	a4,a4
    8000329c:	08e78463          	beq	a5,a4,80003324 <consoleread+0xf0>
    800032a0:	07f7f713          	andi	a4,a5,127
    800032a4:	00e48733          	add	a4,s1,a4
    800032a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800032ac:	0017869b          	addiw	a3,a5,1
    800032b0:	08d4ac23          	sw	a3,152(s1)
    800032b4:	00070c9b          	sext.w	s9,a4
    800032b8:	0b370663          	beq	a4,s3,80003364 <consoleread+0x130>
    800032bc:	00100693          	li	a3,1
    800032c0:	f9f40613          	addi	a2,s0,-97
    800032c4:	000c0593          	mv	a1,s8
    800032c8:	00090513          	mv	a0,s2
    800032cc:	f8e40fa3          	sb	a4,-97(s0)
    800032d0:	00000097          	auipc	ra,0x0
    800032d4:	8bc080e7          	jalr	-1860(ra) # 80002b8c <either_copyout>
    800032d8:	01450863          	beq	a0,s4,800032e8 <consoleread+0xb4>
    800032dc:	001c0c13          	addi	s8,s8,1
    800032e0:	fffb8b9b          	addiw	s7,s7,-1
    800032e4:	fb5c94e3          	bne	s9,s5,8000328c <consoleread+0x58>
    800032e8:	000b851b          	sext.w	a0,s7
    800032ec:	06813083          	ld	ra,104(sp)
    800032f0:	06013403          	ld	s0,96(sp)
    800032f4:	05813483          	ld	s1,88(sp)
    800032f8:	05013903          	ld	s2,80(sp)
    800032fc:	04813983          	ld	s3,72(sp)
    80003300:	04013a03          	ld	s4,64(sp)
    80003304:	03813a83          	ld	s5,56(sp)
    80003308:	02813b83          	ld	s7,40(sp)
    8000330c:	02013c03          	ld	s8,32(sp)
    80003310:	01813c83          	ld	s9,24(sp)
    80003314:	40ab053b          	subw	a0,s6,a0
    80003318:	03013b03          	ld	s6,48(sp)
    8000331c:	07010113          	addi	sp,sp,112
    80003320:	00008067          	ret
    80003324:	00001097          	auipc	ra,0x1
    80003328:	1d8080e7          	jalr	472(ra) # 800044fc <push_on>
    8000332c:	0984a703          	lw	a4,152(s1)
    80003330:	09c4a783          	lw	a5,156(s1)
    80003334:	0007879b          	sext.w	a5,a5
    80003338:	fef70ce3          	beq	a4,a5,80003330 <consoleread+0xfc>
    8000333c:	00001097          	auipc	ra,0x1
    80003340:	234080e7          	jalr	564(ra) # 80004570 <pop_on>
    80003344:	0984a783          	lw	a5,152(s1)
    80003348:	07f7f713          	andi	a4,a5,127
    8000334c:	00e48733          	add	a4,s1,a4
    80003350:	01874703          	lbu	a4,24(a4)
    80003354:	0017869b          	addiw	a3,a5,1
    80003358:	08d4ac23          	sw	a3,152(s1)
    8000335c:	00070c9b          	sext.w	s9,a4
    80003360:	f5371ee3          	bne	a4,s3,800032bc <consoleread+0x88>
    80003364:	000b851b          	sext.w	a0,s7
    80003368:	f96bf2e3          	bgeu	s7,s6,800032ec <consoleread+0xb8>
    8000336c:	08f4ac23          	sw	a5,152(s1)
    80003370:	f7dff06f          	j	800032ec <consoleread+0xb8>

0000000080003374 <consputc>:
    80003374:	10000793          	li	a5,256
    80003378:	00f50663          	beq	a0,a5,80003384 <consputc+0x10>
    8000337c:	00001317          	auipc	t1,0x1
    80003380:	9f430067          	jr	-1548(t1) # 80003d70 <uartputc_sync>
    80003384:	ff010113          	addi	sp,sp,-16
    80003388:	00113423          	sd	ra,8(sp)
    8000338c:	00813023          	sd	s0,0(sp)
    80003390:	01010413          	addi	s0,sp,16
    80003394:	00800513          	li	a0,8
    80003398:	00001097          	auipc	ra,0x1
    8000339c:	9d8080e7          	jalr	-1576(ra) # 80003d70 <uartputc_sync>
    800033a0:	02000513          	li	a0,32
    800033a4:	00001097          	auipc	ra,0x1
    800033a8:	9cc080e7          	jalr	-1588(ra) # 80003d70 <uartputc_sync>
    800033ac:	00013403          	ld	s0,0(sp)
    800033b0:	00813083          	ld	ra,8(sp)
    800033b4:	00800513          	li	a0,8
    800033b8:	01010113          	addi	sp,sp,16
    800033bc:	00001317          	auipc	t1,0x1
    800033c0:	9b430067          	jr	-1612(t1) # 80003d70 <uartputc_sync>

00000000800033c4 <consoleintr>:
    800033c4:	fe010113          	addi	sp,sp,-32
    800033c8:	00813823          	sd	s0,16(sp)
    800033cc:	00913423          	sd	s1,8(sp)
    800033d0:	01213023          	sd	s2,0(sp)
    800033d4:	00113c23          	sd	ra,24(sp)
    800033d8:	02010413          	addi	s0,sp,32
    800033dc:	00003917          	auipc	s2,0x3
    800033e0:	75c90913          	addi	s2,s2,1884 # 80006b38 <cons>
    800033e4:	00050493          	mv	s1,a0
    800033e8:	00090513          	mv	a0,s2
    800033ec:	00001097          	auipc	ra,0x1
    800033f0:	e40080e7          	jalr	-448(ra) # 8000422c <acquire>
    800033f4:	02048c63          	beqz	s1,8000342c <consoleintr+0x68>
    800033f8:	0a092783          	lw	a5,160(s2)
    800033fc:	09892703          	lw	a4,152(s2)
    80003400:	07f00693          	li	a3,127
    80003404:	40e7873b          	subw	a4,a5,a4
    80003408:	02e6e263          	bltu	a3,a4,8000342c <consoleintr+0x68>
    8000340c:	00d00713          	li	a4,13
    80003410:	04e48063          	beq	s1,a4,80003450 <consoleintr+0x8c>
    80003414:	07f7f713          	andi	a4,a5,127
    80003418:	00e90733          	add	a4,s2,a4
    8000341c:	0017879b          	addiw	a5,a5,1
    80003420:	0af92023          	sw	a5,160(s2)
    80003424:	00970c23          	sb	s1,24(a4)
    80003428:	08f92e23          	sw	a5,156(s2)
    8000342c:	01013403          	ld	s0,16(sp)
    80003430:	01813083          	ld	ra,24(sp)
    80003434:	00813483          	ld	s1,8(sp)
    80003438:	00013903          	ld	s2,0(sp)
    8000343c:	00003517          	auipc	a0,0x3
    80003440:	6fc50513          	addi	a0,a0,1788 # 80006b38 <cons>
    80003444:	02010113          	addi	sp,sp,32
    80003448:	00001317          	auipc	t1,0x1
    8000344c:	eb030067          	jr	-336(t1) # 800042f8 <release>
    80003450:	00a00493          	li	s1,10
    80003454:	fc1ff06f          	j	80003414 <consoleintr+0x50>

0000000080003458 <consoleinit>:
    80003458:	fe010113          	addi	sp,sp,-32
    8000345c:	00113c23          	sd	ra,24(sp)
    80003460:	00813823          	sd	s0,16(sp)
    80003464:	00913423          	sd	s1,8(sp)
    80003468:	02010413          	addi	s0,sp,32
    8000346c:	00003497          	auipc	s1,0x3
    80003470:	6cc48493          	addi	s1,s1,1740 # 80006b38 <cons>
    80003474:	00048513          	mv	a0,s1
    80003478:	00002597          	auipc	a1,0x2
    8000347c:	e1858593          	addi	a1,a1,-488 # 80005290 <_ZZ12printIntegermE6digits+0x138>
    80003480:	00001097          	auipc	ra,0x1
    80003484:	d88080e7          	jalr	-632(ra) # 80004208 <initlock>
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	7ac080e7          	jalr	1964(ra) # 80003c34 <uartinit>
    80003490:	01813083          	ld	ra,24(sp)
    80003494:	01013403          	ld	s0,16(sp)
    80003498:	00000797          	auipc	a5,0x0
    8000349c:	d9c78793          	addi	a5,a5,-612 # 80003234 <consoleread>
    800034a0:	0af4bc23          	sd	a5,184(s1)
    800034a4:	00000797          	auipc	a5,0x0
    800034a8:	cec78793          	addi	a5,a5,-788 # 80003190 <consolewrite>
    800034ac:	0cf4b023          	sd	a5,192(s1)
    800034b0:	00813483          	ld	s1,8(sp)
    800034b4:	02010113          	addi	sp,sp,32
    800034b8:	00008067          	ret

00000000800034bc <console_read>:
    800034bc:	ff010113          	addi	sp,sp,-16
    800034c0:	00813423          	sd	s0,8(sp)
    800034c4:	01010413          	addi	s0,sp,16
    800034c8:	00813403          	ld	s0,8(sp)
    800034cc:	00003317          	auipc	t1,0x3
    800034d0:	72433303          	ld	t1,1828(t1) # 80006bf0 <devsw+0x10>
    800034d4:	01010113          	addi	sp,sp,16
    800034d8:	00030067          	jr	t1

00000000800034dc <console_write>:
    800034dc:	ff010113          	addi	sp,sp,-16
    800034e0:	00813423          	sd	s0,8(sp)
    800034e4:	01010413          	addi	s0,sp,16
    800034e8:	00813403          	ld	s0,8(sp)
    800034ec:	00003317          	auipc	t1,0x3
    800034f0:	70c33303          	ld	t1,1804(t1) # 80006bf8 <devsw+0x18>
    800034f4:	01010113          	addi	sp,sp,16
    800034f8:	00030067          	jr	t1

00000000800034fc <panic>:
    800034fc:	fe010113          	addi	sp,sp,-32
    80003500:	00113c23          	sd	ra,24(sp)
    80003504:	00813823          	sd	s0,16(sp)
    80003508:	00913423          	sd	s1,8(sp)
    8000350c:	02010413          	addi	s0,sp,32
    80003510:	00050493          	mv	s1,a0
    80003514:	00002517          	auipc	a0,0x2
    80003518:	d8450513          	addi	a0,a0,-636 # 80005298 <_ZZ12printIntegermE6digits+0x140>
    8000351c:	00003797          	auipc	a5,0x3
    80003520:	7607ae23          	sw	zero,1916(a5) # 80006c98 <pr+0x18>
    80003524:	00000097          	auipc	ra,0x0
    80003528:	034080e7          	jalr	52(ra) # 80003558 <__printf>
    8000352c:	00048513          	mv	a0,s1
    80003530:	00000097          	auipc	ra,0x0
    80003534:	028080e7          	jalr	40(ra) # 80003558 <__printf>
    80003538:	00002517          	auipc	a0,0x2
    8000353c:	b8050513          	addi	a0,a0,-1152 # 800050b8 <CONSOLE_STATUS+0xa8>
    80003540:	00000097          	auipc	ra,0x0
    80003544:	018080e7          	jalr	24(ra) # 80003558 <__printf>
    80003548:	00100793          	li	a5,1
    8000354c:	00002717          	auipc	a4,0x2
    80003550:	4af72e23          	sw	a5,1212(a4) # 80005a08 <panicked>
    80003554:	0000006f          	j	80003554 <panic+0x58>

0000000080003558 <__printf>:
    80003558:	f3010113          	addi	sp,sp,-208
    8000355c:	08813023          	sd	s0,128(sp)
    80003560:	07313423          	sd	s3,104(sp)
    80003564:	09010413          	addi	s0,sp,144
    80003568:	05813023          	sd	s8,64(sp)
    8000356c:	08113423          	sd	ra,136(sp)
    80003570:	06913c23          	sd	s1,120(sp)
    80003574:	07213823          	sd	s2,112(sp)
    80003578:	07413023          	sd	s4,96(sp)
    8000357c:	05513c23          	sd	s5,88(sp)
    80003580:	05613823          	sd	s6,80(sp)
    80003584:	05713423          	sd	s7,72(sp)
    80003588:	03913c23          	sd	s9,56(sp)
    8000358c:	03a13823          	sd	s10,48(sp)
    80003590:	03b13423          	sd	s11,40(sp)
    80003594:	00003317          	auipc	t1,0x3
    80003598:	6ec30313          	addi	t1,t1,1772 # 80006c80 <pr>
    8000359c:	01832c03          	lw	s8,24(t1)
    800035a0:	00b43423          	sd	a1,8(s0)
    800035a4:	00c43823          	sd	a2,16(s0)
    800035a8:	00d43c23          	sd	a3,24(s0)
    800035ac:	02e43023          	sd	a4,32(s0)
    800035b0:	02f43423          	sd	a5,40(s0)
    800035b4:	03043823          	sd	a6,48(s0)
    800035b8:	03143c23          	sd	a7,56(s0)
    800035bc:	00050993          	mv	s3,a0
    800035c0:	4a0c1663          	bnez	s8,80003a6c <__printf+0x514>
    800035c4:	60098c63          	beqz	s3,80003bdc <__printf+0x684>
    800035c8:	0009c503          	lbu	a0,0(s3)
    800035cc:	00840793          	addi	a5,s0,8
    800035d0:	f6f43c23          	sd	a5,-136(s0)
    800035d4:	00000493          	li	s1,0
    800035d8:	22050063          	beqz	a0,800037f8 <__printf+0x2a0>
    800035dc:	00002a37          	lui	s4,0x2
    800035e0:	00018ab7          	lui	s5,0x18
    800035e4:	000f4b37          	lui	s6,0xf4
    800035e8:	00989bb7          	lui	s7,0x989
    800035ec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800035f0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800035f4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800035f8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800035fc:	00148c9b          	addiw	s9,s1,1
    80003600:	02500793          	li	a5,37
    80003604:	01998933          	add	s2,s3,s9
    80003608:	38f51263          	bne	a0,a5,8000398c <__printf+0x434>
    8000360c:	00094783          	lbu	a5,0(s2)
    80003610:	00078c9b          	sext.w	s9,a5
    80003614:	1e078263          	beqz	a5,800037f8 <__printf+0x2a0>
    80003618:	0024849b          	addiw	s1,s1,2
    8000361c:	07000713          	li	a4,112
    80003620:	00998933          	add	s2,s3,s1
    80003624:	38e78a63          	beq	a5,a4,800039b8 <__printf+0x460>
    80003628:	20f76863          	bltu	a4,a5,80003838 <__printf+0x2e0>
    8000362c:	42a78863          	beq	a5,a0,80003a5c <__printf+0x504>
    80003630:	06400713          	li	a4,100
    80003634:	40e79663          	bne	a5,a4,80003a40 <__printf+0x4e8>
    80003638:	f7843783          	ld	a5,-136(s0)
    8000363c:	0007a603          	lw	a2,0(a5)
    80003640:	00878793          	addi	a5,a5,8
    80003644:	f6f43c23          	sd	a5,-136(s0)
    80003648:	42064a63          	bltz	a2,80003a7c <__printf+0x524>
    8000364c:	00a00713          	li	a4,10
    80003650:	02e677bb          	remuw	a5,a2,a4
    80003654:	00002d97          	auipc	s11,0x2
    80003658:	c6cd8d93          	addi	s11,s11,-916 # 800052c0 <digits>
    8000365c:	00900593          	li	a1,9
    80003660:	0006051b          	sext.w	a0,a2
    80003664:	00000c93          	li	s9,0
    80003668:	02079793          	slli	a5,a5,0x20
    8000366c:	0207d793          	srli	a5,a5,0x20
    80003670:	00fd87b3          	add	a5,s11,a5
    80003674:	0007c783          	lbu	a5,0(a5)
    80003678:	02e656bb          	divuw	a3,a2,a4
    8000367c:	f8f40023          	sb	a5,-128(s0)
    80003680:	14c5d863          	bge	a1,a2,800037d0 <__printf+0x278>
    80003684:	06300593          	li	a1,99
    80003688:	00100c93          	li	s9,1
    8000368c:	02e6f7bb          	remuw	a5,a3,a4
    80003690:	02079793          	slli	a5,a5,0x20
    80003694:	0207d793          	srli	a5,a5,0x20
    80003698:	00fd87b3          	add	a5,s11,a5
    8000369c:	0007c783          	lbu	a5,0(a5)
    800036a0:	02e6d73b          	divuw	a4,a3,a4
    800036a4:	f8f400a3          	sb	a5,-127(s0)
    800036a8:	12a5f463          	bgeu	a1,a0,800037d0 <__printf+0x278>
    800036ac:	00a00693          	li	a3,10
    800036b0:	00900593          	li	a1,9
    800036b4:	02d777bb          	remuw	a5,a4,a3
    800036b8:	02079793          	slli	a5,a5,0x20
    800036bc:	0207d793          	srli	a5,a5,0x20
    800036c0:	00fd87b3          	add	a5,s11,a5
    800036c4:	0007c503          	lbu	a0,0(a5)
    800036c8:	02d757bb          	divuw	a5,a4,a3
    800036cc:	f8a40123          	sb	a0,-126(s0)
    800036d0:	48e5f263          	bgeu	a1,a4,80003b54 <__printf+0x5fc>
    800036d4:	06300513          	li	a0,99
    800036d8:	02d7f5bb          	remuw	a1,a5,a3
    800036dc:	02059593          	slli	a1,a1,0x20
    800036e0:	0205d593          	srli	a1,a1,0x20
    800036e4:	00bd85b3          	add	a1,s11,a1
    800036e8:	0005c583          	lbu	a1,0(a1)
    800036ec:	02d7d7bb          	divuw	a5,a5,a3
    800036f0:	f8b401a3          	sb	a1,-125(s0)
    800036f4:	48e57263          	bgeu	a0,a4,80003b78 <__printf+0x620>
    800036f8:	3e700513          	li	a0,999
    800036fc:	02d7f5bb          	remuw	a1,a5,a3
    80003700:	02059593          	slli	a1,a1,0x20
    80003704:	0205d593          	srli	a1,a1,0x20
    80003708:	00bd85b3          	add	a1,s11,a1
    8000370c:	0005c583          	lbu	a1,0(a1)
    80003710:	02d7d7bb          	divuw	a5,a5,a3
    80003714:	f8b40223          	sb	a1,-124(s0)
    80003718:	46e57663          	bgeu	a0,a4,80003b84 <__printf+0x62c>
    8000371c:	02d7f5bb          	remuw	a1,a5,a3
    80003720:	02059593          	slli	a1,a1,0x20
    80003724:	0205d593          	srli	a1,a1,0x20
    80003728:	00bd85b3          	add	a1,s11,a1
    8000372c:	0005c583          	lbu	a1,0(a1)
    80003730:	02d7d7bb          	divuw	a5,a5,a3
    80003734:	f8b402a3          	sb	a1,-123(s0)
    80003738:	46ea7863          	bgeu	s4,a4,80003ba8 <__printf+0x650>
    8000373c:	02d7f5bb          	remuw	a1,a5,a3
    80003740:	02059593          	slli	a1,a1,0x20
    80003744:	0205d593          	srli	a1,a1,0x20
    80003748:	00bd85b3          	add	a1,s11,a1
    8000374c:	0005c583          	lbu	a1,0(a1)
    80003750:	02d7d7bb          	divuw	a5,a5,a3
    80003754:	f8b40323          	sb	a1,-122(s0)
    80003758:	3eeaf863          	bgeu	s5,a4,80003b48 <__printf+0x5f0>
    8000375c:	02d7f5bb          	remuw	a1,a5,a3
    80003760:	02059593          	slli	a1,a1,0x20
    80003764:	0205d593          	srli	a1,a1,0x20
    80003768:	00bd85b3          	add	a1,s11,a1
    8000376c:	0005c583          	lbu	a1,0(a1)
    80003770:	02d7d7bb          	divuw	a5,a5,a3
    80003774:	f8b403a3          	sb	a1,-121(s0)
    80003778:	42eb7e63          	bgeu	s6,a4,80003bb4 <__printf+0x65c>
    8000377c:	02d7f5bb          	remuw	a1,a5,a3
    80003780:	02059593          	slli	a1,a1,0x20
    80003784:	0205d593          	srli	a1,a1,0x20
    80003788:	00bd85b3          	add	a1,s11,a1
    8000378c:	0005c583          	lbu	a1,0(a1)
    80003790:	02d7d7bb          	divuw	a5,a5,a3
    80003794:	f8b40423          	sb	a1,-120(s0)
    80003798:	42ebfc63          	bgeu	s7,a4,80003bd0 <__printf+0x678>
    8000379c:	02079793          	slli	a5,a5,0x20
    800037a0:	0207d793          	srli	a5,a5,0x20
    800037a4:	00fd8db3          	add	s11,s11,a5
    800037a8:	000dc703          	lbu	a4,0(s11)
    800037ac:	00a00793          	li	a5,10
    800037b0:	00900c93          	li	s9,9
    800037b4:	f8e404a3          	sb	a4,-119(s0)
    800037b8:	00065c63          	bgez	a2,800037d0 <__printf+0x278>
    800037bc:	f9040713          	addi	a4,s0,-112
    800037c0:	00f70733          	add	a4,a4,a5
    800037c4:	02d00693          	li	a3,45
    800037c8:	fed70823          	sb	a3,-16(a4)
    800037cc:	00078c93          	mv	s9,a5
    800037d0:	f8040793          	addi	a5,s0,-128
    800037d4:	01978cb3          	add	s9,a5,s9
    800037d8:	f7f40d13          	addi	s10,s0,-129
    800037dc:	000cc503          	lbu	a0,0(s9)
    800037e0:	fffc8c93          	addi	s9,s9,-1
    800037e4:	00000097          	auipc	ra,0x0
    800037e8:	b90080e7          	jalr	-1136(ra) # 80003374 <consputc>
    800037ec:	ffac98e3          	bne	s9,s10,800037dc <__printf+0x284>
    800037f0:	00094503          	lbu	a0,0(s2)
    800037f4:	e00514e3          	bnez	a0,800035fc <__printf+0xa4>
    800037f8:	1a0c1663          	bnez	s8,800039a4 <__printf+0x44c>
    800037fc:	08813083          	ld	ra,136(sp)
    80003800:	08013403          	ld	s0,128(sp)
    80003804:	07813483          	ld	s1,120(sp)
    80003808:	07013903          	ld	s2,112(sp)
    8000380c:	06813983          	ld	s3,104(sp)
    80003810:	06013a03          	ld	s4,96(sp)
    80003814:	05813a83          	ld	s5,88(sp)
    80003818:	05013b03          	ld	s6,80(sp)
    8000381c:	04813b83          	ld	s7,72(sp)
    80003820:	04013c03          	ld	s8,64(sp)
    80003824:	03813c83          	ld	s9,56(sp)
    80003828:	03013d03          	ld	s10,48(sp)
    8000382c:	02813d83          	ld	s11,40(sp)
    80003830:	0d010113          	addi	sp,sp,208
    80003834:	00008067          	ret
    80003838:	07300713          	li	a4,115
    8000383c:	1ce78a63          	beq	a5,a4,80003a10 <__printf+0x4b8>
    80003840:	07800713          	li	a4,120
    80003844:	1ee79e63          	bne	a5,a4,80003a40 <__printf+0x4e8>
    80003848:	f7843783          	ld	a5,-136(s0)
    8000384c:	0007a703          	lw	a4,0(a5)
    80003850:	00878793          	addi	a5,a5,8
    80003854:	f6f43c23          	sd	a5,-136(s0)
    80003858:	28074263          	bltz	a4,80003adc <__printf+0x584>
    8000385c:	00002d97          	auipc	s11,0x2
    80003860:	a64d8d93          	addi	s11,s11,-1436 # 800052c0 <digits>
    80003864:	00f77793          	andi	a5,a4,15
    80003868:	00fd87b3          	add	a5,s11,a5
    8000386c:	0007c683          	lbu	a3,0(a5)
    80003870:	00f00613          	li	a2,15
    80003874:	0007079b          	sext.w	a5,a4
    80003878:	f8d40023          	sb	a3,-128(s0)
    8000387c:	0047559b          	srliw	a1,a4,0x4
    80003880:	0047569b          	srliw	a3,a4,0x4
    80003884:	00000c93          	li	s9,0
    80003888:	0ee65063          	bge	a2,a4,80003968 <__printf+0x410>
    8000388c:	00f6f693          	andi	a3,a3,15
    80003890:	00dd86b3          	add	a3,s11,a3
    80003894:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003898:	0087d79b          	srliw	a5,a5,0x8
    8000389c:	00100c93          	li	s9,1
    800038a0:	f8d400a3          	sb	a3,-127(s0)
    800038a4:	0cb67263          	bgeu	a2,a1,80003968 <__printf+0x410>
    800038a8:	00f7f693          	andi	a3,a5,15
    800038ac:	00dd86b3          	add	a3,s11,a3
    800038b0:	0006c583          	lbu	a1,0(a3)
    800038b4:	00f00613          	li	a2,15
    800038b8:	0047d69b          	srliw	a3,a5,0x4
    800038bc:	f8b40123          	sb	a1,-126(s0)
    800038c0:	0047d593          	srli	a1,a5,0x4
    800038c4:	28f67e63          	bgeu	a2,a5,80003b60 <__printf+0x608>
    800038c8:	00f6f693          	andi	a3,a3,15
    800038cc:	00dd86b3          	add	a3,s11,a3
    800038d0:	0006c503          	lbu	a0,0(a3)
    800038d4:	0087d813          	srli	a6,a5,0x8
    800038d8:	0087d69b          	srliw	a3,a5,0x8
    800038dc:	f8a401a3          	sb	a0,-125(s0)
    800038e0:	28b67663          	bgeu	a2,a1,80003b6c <__printf+0x614>
    800038e4:	00f6f693          	andi	a3,a3,15
    800038e8:	00dd86b3          	add	a3,s11,a3
    800038ec:	0006c583          	lbu	a1,0(a3)
    800038f0:	00c7d513          	srli	a0,a5,0xc
    800038f4:	00c7d69b          	srliw	a3,a5,0xc
    800038f8:	f8b40223          	sb	a1,-124(s0)
    800038fc:	29067a63          	bgeu	a2,a6,80003b90 <__printf+0x638>
    80003900:	00f6f693          	andi	a3,a3,15
    80003904:	00dd86b3          	add	a3,s11,a3
    80003908:	0006c583          	lbu	a1,0(a3)
    8000390c:	0107d813          	srli	a6,a5,0x10
    80003910:	0107d69b          	srliw	a3,a5,0x10
    80003914:	f8b402a3          	sb	a1,-123(s0)
    80003918:	28a67263          	bgeu	a2,a0,80003b9c <__printf+0x644>
    8000391c:	00f6f693          	andi	a3,a3,15
    80003920:	00dd86b3          	add	a3,s11,a3
    80003924:	0006c683          	lbu	a3,0(a3)
    80003928:	0147d79b          	srliw	a5,a5,0x14
    8000392c:	f8d40323          	sb	a3,-122(s0)
    80003930:	21067663          	bgeu	a2,a6,80003b3c <__printf+0x5e4>
    80003934:	02079793          	slli	a5,a5,0x20
    80003938:	0207d793          	srli	a5,a5,0x20
    8000393c:	00fd8db3          	add	s11,s11,a5
    80003940:	000dc683          	lbu	a3,0(s11)
    80003944:	00800793          	li	a5,8
    80003948:	00700c93          	li	s9,7
    8000394c:	f8d403a3          	sb	a3,-121(s0)
    80003950:	00075c63          	bgez	a4,80003968 <__printf+0x410>
    80003954:	f9040713          	addi	a4,s0,-112
    80003958:	00f70733          	add	a4,a4,a5
    8000395c:	02d00693          	li	a3,45
    80003960:	fed70823          	sb	a3,-16(a4)
    80003964:	00078c93          	mv	s9,a5
    80003968:	f8040793          	addi	a5,s0,-128
    8000396c:	01978cb3          	add	s9,a5,s9
    80003970:	f7f40d13          	addi	s10,s0,-129
    80003974:	000cc503          	lbu	a0,0(s9)
    80003978:	fffc8c93          	addi	s9,s9,-1
    8000397c:	00000097          	auipc	ra,0x0
    80003980:	9f8080e7          	jalr	-1544(ra) # 80003374 <consputc>
    80003984:	ff9d18e3          	bne	s10,s9,80003974 <__printf+0x41c>
    80003988:	0100006f          	j	80003998 <__printf+0x440>
    8000398c:	00000097          	auipc	ra,0x0
    80003990:	9e8080e7          	jalr	-1560(ra) # 80003374 <consputc>
    80003994:	000c8493          	mv	s1,s9
    80003998:	00094503          	lbu	a0,0(s2)
    8000399c:	c60510e3          	bnez	a0,800035fc <__printf+0xa4>
    800039a0:	e40c0ee3          	beqz	s8,800037fc <__printf+0x2a4>
    800039a4:	00003517          	auipc	a0,0x3
    800039a8:	2dc50513          	addi	a0,a0,732 # 80006c80 <pr>
    800039ac:	00001097          	auipc	ra,0x1
    800039b0:	94c080e7          	jalr	-1716(ra) # 800042f8 <release>
    800039b4:	e49ff06f          	j	800037fc <__printf+0x2a4>
    800039b8:	f7843783          	ld	a5,-136(s0)
    800039bc:	03000513          	li	a0,48
    800039c0:	01000d13          	li	s10,16
    800039c4:	00878713          	addi	a4,a5,8
    800039c8:	0007bc83          	ld	s9,0(a5)
    800039cc:	f6e43c23          	sd	a4,-136(s0)
    800039d0:	00000097          	auipc	ra,0x0
    800039d4:	9a4080e7          	jalr	-1628(ra) # 80003374 <consputc>
    800039d8:	07800513          	li	a0,120
    800039dc:	00000097          	auipc	ra,0x0
    800039e0:	998080e7          	jalr	-1640(ra) # 80003374 <consputc>
    800039e4:	00002d97          	auipc	s11,0x2
    800039e8:	8dcd8d93          	addi	s11,s11,-1828 # 800052c0 <digits>
    800039ec:	03ccd793          	srli	a5,s9,0x3c
    800039f0:	00fd87b3          	add	a5,s11,a5
    800039f4:	0007c503          	lbu	a0,0(a5)
    800039f8:	fffd0d1b          	addiw	s10,s10,-1
    800039fc:	004c9c93          	slli	s9,s9,0x4
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	974080e7          	jalr	-1676(ra) # 80003374 <consputc>
    80003a08:	fe0d12e3          	bnez	s10,800039ec <__printf+0x494>
    80003a0c:	f8dff06f          	j	80003998 <__printf+0x440>
    80003a10:	f7843783          	ld	a5,-136(s0)
    80003a14:	0007bc83          	ld	s9,0(a5)
    80003a18:	00878793          	addi	a5,a5,8
    80003a1c:	f6f43c23          	sd	a5,-136(s0)
    80003a20:	000c9a63          	bnez	s9,80003a34 <__printf+0x4dc>
    80003a24:	1080006f          	j	80003b2c <__printf+0x5d4>
    80003a28:	001c8c93          	addi	s9,s9,1
    80003a2c:	00000097          	auipc	ra,0x0
    80003a30:	948080e7          	jalr	-1720(ra) # 80003374 <consputc>
    80003a34:	000cc503          	lbu	a0,0(s9)
    80003a38:	fe0518e3          	bnez	a0,80003a28 <__printf+0x4d0>
    80003a3c:	f5dff06f          	j	80003998 <__printf+0x440>
    80003a40:	02500513          	li	a0,37
    80003a44:	00000097          	auipc	ra,0x0
    80003a48:	930080e7          	jalr	-1744(ra) # 80003374 <consputc>
    80003a4c:	000c8513          	mv	a0,s9
    80003a50:	00000097          	auipc	ra,0x0
    80003a54:	924080e7          	jalr	-1756(ra) # 80003374 <consputc>
    80003a58:	f41ff06f          	j	80003998 <__printf+0x440>
    80003a5c:	02500513          	li	a0,37
    80003a60:	00000097          	auipc	ra,0x0
    80003a64:	914080e7          	jalr	-1772(ra) # 80003374 <consputc>
    80003a68:	f31ff06f          	j	80003998 <__printf+0x440>
    80003a6c:	00030513          	mv	a0,t1
    80003a70:	00000097          	auipc	ra,0x0
    80003a74:	7bc080e7          	jalr	1980(ra) # 8000422c <acquire>
    80003a78:	b4dff06f          	j	800035c4 <__printf+0x6c>
    80003a7c:	40c0053b          	negw	a0,a2
    80003a80:	00a00713          	li	a4,10
    80003a84:	02e576bb          	remuw	a3,a0,a4
    80003a88:	00002d97          	auipc	s11,0x2
    80003a8c:	838d8d93          	addi	s11,s11,-1992 # 800052c0 <digits>
    80003a90:	ff700593          	li	a1,-9
    80003a94:	02069693          	slli	a3,a3,0x20
    80003a98:	0206d693          	srli	a3,a3,0x20
    80003a9c:	00dd86b3          	add	a3,s11,a3
    80003aa0:	0006c683          	lbu	a3,0(a3)
    80003aa4:	02e557bb          	divuw	a5,a0,a4
    80003aa8:	f8d40023          	sb	a3,-128(s0)
    80003aac:	10b65e63          	bge	a2,a1,80003bc8 <__printf+0x670>
    80003ab0:	06300593          	li	a1,99
    80003ab4:	02e7f6bb          	remuw	a3,a5,a4
    80003ab8:	02069693          	slli	a3,a3,0x20
    80003abc:	0206d693          	srli	a3,a3,0x20
    80003ac0:	00dd86b3          	add	a3,s11,a3
    80003ac4:	0006c683          	lbu	a3,0(a3)
    80003ac8:	02e7d73b          	divuw	a4,a5,a4
    80003acc:	00200793          	li	a5,2
    80003ad0:	f8d400a3          	sb	a3,-127(s0)
    80003ad4:	bca5ece3          	bltu	a1,a0,800036ac <__printf+0x154>
    80003ad8:	ce5ff06f          	j	800037bc <__printf+0x264>
    80003adc:	40e007bb          	negw	a5,a4
    80003ae0:	00001d97          	auipc	s11,0x1
    80003ae4:	7e0d8d93          	addi	s11,s11,2016 # 800052c0 <digits>
    80003ae8:	00f7f693          	andi	a3,a5,15
    80003aec:	00dd86b3          	add	a3,s11,a3
    80003af0:	0006c583          	lbu	a1,0(a3)
    80003af4:	ff100613          	li	a2,-15
    80003af8:	0047d69b          	srliw	a3,a5,0x4
    80003afc:	f8b40023          	sb	a1,-128(s0)
    80003b00:	0047d59b          	srliw	a1,a5,0x4
    80003b04:	0ac75e63          	bge	a4,a2,80003bc0 <__printf+0x668>
    80003b08:	00f6f693          	andi	a3,a3,15
    80003b0c:	00dd86b3          	add	a3,s11,a3
    80003b10:	0006c603          	lbu	a2,0(a3)
    80003b14:	00f00693          	li	a3,15
    80003b18:	0087d79b          	srliw	a5,a5,0x8
    80003b1c:	f8c400a3          	sb	a2,-127(s0)
    80003b20:	d8b6e4e3          	bltu	a3,a1,800038a8 <__printf+0x350>
    80003b24:	00200793          	li	a5,2
    80003b28:	e2dff06f          	j	80003954 <__printf+0x3fc>
    80003b2c:	00001c97          	auipc	s9,0x1
    80003b30:	774c8c93          	addi	s9,s9,1908 # 800052a0 <_ZZ12printIntegermE6digits+0x148>
    80003b34:	02800513          	li	a0,40
    80003b38:	ef1ff06f          	j	80003a28 <__printf+0x4d0>
    80003b3c:	00700793          	li	a5,7
    80003b40:	00600c93          	li	s9,6
    80003b44:	e0dff06f          	j	80003950 <__printf+0x3f8>
    80003b48:	00700793          	li	a5,7
    80003b4c:	00600c93          	li	s9,6
    80003b50:	c69ff06f          	j	800037b8 <__printf+0x260>
    80003b54:	00300793          	li	a5,3
    80003b58:	00200c93          	li	s9,2
    80003b5c:	c5dff06f          	j	800037b8 <__printf+0x260>
    80003b60:	00300793          	li	a5,3
    80003b64:	00200c93          	li	s9,2
    80003b68:	de9ff06f          	j	80003950 <__printf+0x3f8>
    80003b6c:	00400793          	li	a5,4
    80003b70:	00300c93          	li	s9,3
    80003b74:	dddff06f          	j	80003950 <__printf+0x3f8>
    80003b78:	00400793          	li	a5,4
    80003b7c:	00300c93          	li	s9,3
    80003b80:	c39ff06f          	j	800037b8 <__printf+0x260>
    80003b84:	00500793          	li	a5,5
    80003b88:	00400c93          	li	s9,4
    80003b8c:	c2dff06f          	j	800037b8 <__printf+0x260>
    80003b90:	00500793          	li	a5,5
    80003b94:	00400c93          	li	s9,4
    80003b98:	db9ff06f          	j	80003950 <__printf+0x3f8>
    80003b9c:	00600793          	li	a5,6
    80003ba0:	00500c93          	li	s9,5
    80003ba4:	dadff06f          	j	80003950 <__printf+0x3f8>
    80003ba8:	00600793          	li	a5,6
    80003bac:	00500c93          	li	s9,5
    80003bb0:	c09ff06f          	j	800037b8 <__printf+0x260>
    80003bb4:	00800793          	li	a5,8
    80003bb8:	00700c93          	li	s9,7
    80003bbc:	bfdff06f          	j	800037b8 <__printf+0x260>
    80003bc0:	00100793          	li	a5,1
    80003bc4:	d91ff06f          	j	80003954 <__printf+0x3fc>
    80003bc8:	00100793          	li	a5,1
    80003bcc:	bf1ff06f          	j	800037bc <__printf+0x264>
    80003bd0:	00900793          	li	a5,9
    80003bd4:	00800c93          	li	s9,8
    80003bd8:	be1ff06f          	j	800037b8 <__printf+0x260>
    80003bdc:	00001517          	auipc	a0,0x1
    80003be0:	6cc50513          	addi	a0,a0,1740 # 800052a8 <_ZZ12printIntegermE6digits+0x150>
    80003be4:	00000097          	auipc	ra,0x0
    80003be8:	918080e7          	jalr	-1768(ra) # 800034fc <panic>

0000000080003bec <printfinit>:
    80003bec:	fe010113          	addi	sp,sp,-32
    80003bf0:	00813823          	sd	s0,16(sp)
    80003bf4:	00913423          	sd	s1,8(sp)
    80003bf8:	00113c23          	sd	ra,24(sp)
    80003bfc:	02010413          	addi	s0,sp,32
    80003c00:	00003497          	auipc	s1,0x3
    80003c04:	08048493          	addi	s1,s1,128 # 80006c80 <pr>
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	00001597          	auipc	a1,0x1
    80003c10:	6ac58593          	addi	a1,a1,1708 # 800052b8 <_ZZ12printIntegermE6digits+0x160>
    80003c14:	00000097          	auipc	ra,0x0
    80003c18:	5f4080e7          	jalr	1524(ra) # 80004208 <initlock>
    80003c1c:	01813083          	ld	ra,24(sp)
    80003c20:	01013403          	ld	s0,16(sp)
    80003c24:	0004ac23          	sw	zero,24(s1)
    80003c28:	00813483          	ld	s1,8(sp)
    80003c2c:	02010113          	addi	sp,sp,32
    80003c30:	00008067          	ret

0000000080003c34 <uartinit>:
    80003c34:	ff010113          	addi	sp,sp,-16
    80003c38:	00813423          	sd	s0,8(sp)
    80003c3c:	01010413          	addi	s0,sp,16
    80003c40:	100007b7          	lui	a5,0x10000
    80003c44:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003c48:	f8000713          	li	a4,-128
    80003c4c:	00e781a3          	sb	a4,3(a5)
    80003c50:	00300713          	li	a4,3
    80003c54:	00e78023          	sb	a4,0(a5)
    80003c58:	000780a3          	sb	zero,1(a5)
    80003c5c:	00e781a3          	sb	a4,3(a5)
    80003c60:	00700693          	li	a3,7
    80003c64:	00d78123          	sb	a3,2(a5)
    80003c68:	00e780a3          	sb	a4,1(a5)
    80003c6c:	00813403          	ld	s0,8(sp)
    80003c70:	01010113          	addi	sp,sp,16
    80003c74:	00008067          	ret

0000000080003c78 <uartputc>:
    80003c78:	00002797          	auipc	a5,0x2
    80003c7c:	d907a783          	lw	a5,-624(a5) # 80005a08 <panicked>
    80003c80:	00078463          	beqz	a5,80003c88 <uartputc+0x10>
    80003c84:	0000006f          	j	80003c84 <uartputc+0xc>
    80003c88:	fd010113          	addi	sp,sp,-48
    80003c8c:	02813023          	sd	s0,32(sp)
    80003c90:	00913c23          	sd	s1,24(sp)
    80003c94:	01213823          	sd	s2,16(sp)
    80003c98:	01313423          	sd	s3,8(sp)
    80003c9c:	02113423          	sd	ra,40(sp)
    80003ca0:	03010413          	addi	s0,sp,48
    80003ca4:	00002917          	auipc	s2,0x2
    80003ca8:	d6c90913          	addi	s2,s2,-660 # 80005a10 <uart_tx_r>
    80003cac:	00093783          	ld	a5,0(s2)
    80003cb0:	00002497          	auipc	s1,0x2
    80003cb4:	d6848493          	addi	s1,s1,-664 # 80005a18 <uart_tx_w>
    80003cb8:	0004b703          	ld	a4,0(s1)
    80003cbc:	02078693          	addi	a3,a5,32
    80003cc0:	00050993          	mv	s3,a0
    80003cc4:	02e69c63          	bne	a3,a4,80003cfc <uartputc+0x84>
    80003cc8:	00001097          	auipc	ra,0x1
    80003ccc:	834080e7          	jalr	-1996(ra) # 800044fc <push_on>
    80003cd0:	00093783          	ld	a5,0(s2)
    80003cd4:	0004b703          	ld	a4,0(s1)
    80003cd8:	02078793          	addi	a5,a5,32
    80003cdc:	00e79463          	bne	a5,a4,80003ce4 <uartputc+0x6c>
    80003ce0:	0000006f          	j	80003ce0 <uartputc+0x68>
    80003ce4:	00001097          	auipc	ra,0x1
    80003ce8:	88c080e7          	jalr	-1908(ra) # 80004570 <pop_on>
    80003cec:	00093783          	ld	a5,0(s2)
    80003cf0:	0004b703          	ld	a4,0(s1)
    80003cf4:	02078693          	addi	a3,a5,32
    80003cf8:	fce688e3          	beq	a3,a4,80003cc8 <uartputc+0x50>
    80003cfc:	01f77693          	andi	a3,a4,31
    80003d00:	00003597          	auipc	a1,0x3
    80003d04:	fa058593          	addi	a1,a1,-96 # 80006ca0 <uart_tx_buf>
    80003d08:	00d586b3          	add	a3,a1,a3
    80003d0c:	00170713          	addi	a4,a4,1
    80003d10:	01368023          	sb	s3,0(a3)
    80003d14:	00e4b023          	sd	a4,0(s1)
    80003d18:	10000637          	lui	a2,0x10000
    80003d1c:	02f71063          	bne	a4,a5,80003d3c <uartputc+0xc4>
    80003d20:	0340006f          	j	80003d54 <uartputc+0xdc>
    80003d24:	00074703          	lbu	a4,0(a4)
    80003d28:	00f93023          	sd	a5,0(s2)
    80003d2c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003d30:	00093783          	ld	a5,0(s2)
    80003d34:	0004b703          	ld	a4,0(s1)
    80003d38:	00f70e63          	beq	a4,a5,80003d54 <uartputc+0xdc>
    80003d3c:	00564683          	lbu	a3,5(a2)
    80003d40:	01f7f713          	andi	a4,a5,31
    80003d44:	00e58733          	add	a4,a1,a4
    80003d48:	0206f693          	andi	a3,a3,32
    80003d4c:	00178793          	addi	a5,a5,1
    80003d50:	fc069ae3          	bnez	a3,80003d24 <uartputc+0xac>
    80003d54:	02813083          	ld	ra,40(sp)
    80003d58:	02013403          	ld	s0,32(sp)
    80003d5c:	01813483          	ld	s1,24(sp)
    80003d60:	01013903          	ld	s2,16(sp)
    80003d64:	00813983          	ld	s3,8(sp)
    80003d68:	03010113          	addi	sp,sp,48
    80003d6c:	00008067          	ret

0000000080003d70 <uartputc_sync>:
    80003d70:	ff010113          	addi	sp,sp,-16
    80003d74:	00813423          	sd	s0,8(sp)
    80003d78:	01010413          	addi	s0,sp,16
    80003d7c:	00002717          	auipc	a4,0x2
    80003d80:	c8c72703          	lw	a4,-884(a4) # 80005a08 <panicked>
    80003d84:	02071663          	bnez	a4,80003db0 <uartputc_sync+0x40>
    80003d88:	00050793          	mv	a5,a0
    80003d8c:	100006b7          	lui	a3,0x10000
    80003d90:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003d94:	02077713          	andi	a4,a4,32
    80003d98:	fe070ce3          	beqz	a4,80003d90 <uartputc_sync+0x20>
    80003d9c:	0ff7f793          	andi	a5,a5,255
    80003da0:	00f68023          	sb	a5,0(a3)
    80003da4:	00813403          	ld	s0,8(sp)
    80003da8:	01010113          	addi	sp,sp,16
    80003dac:	00008067          	ret
    80003db0:	0000006f          	j	80003db0 <uartputc_sync+0x40>

0000000080003db4 <uartstart>:
    80003db4:	ff010113          	addi	sp,sp,-16
    80003db8:	00813423          	sd	s0,8(sp)
    80003dbc:	01010413          	addi	s0,sp,16
    80003dc0:	00002617          	auipc	a2,0x2
    80003dc4:	c5060613          	addi	a2,a2,-944 # 80005a10 <uart_tx_r>
    80003dc8:	00002517          	auipc	a0,0x2
    80003dcc:	c5050513          	addi	a0,a0,-944 # 80005a18 <uart_tx_w>
    80003dd0:	00063783          	ld	a5,0(a2)
    80003dd4:	00053703          	ld	a4,0(a0)
    80003dd8:	04f70263          	beq	a4,a5,80003e1c <uartstart+0x68>
    80003ddc:	100005b7          	lui	a1,0x10000
    80003de0:	00003817          	auipc	a6,0x3
    80003de4:	ec080813          	addi	a6,a6,-320 # 80006ca0 <uart_tx_buf>
    80003de8:	01c0006f          	j	80003e04 <uartstart+0x50>
    80003dec:	0006c703          	lbu	a4,0(a3)
    80003df0:	00f63023          	sd	a5,0(a2)
    80003df4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003df8:	00063783          	ld	a5,0(a2)
    80003dfc:	00053703          	ld	a4,0(a0)
    80003e00:	00f70e63          	beq	a4,a5,80003e1c <uartstart+0x68>
    80003e04:	01f7f713          	andi	a4,a5,31
    80003e08:	00e806b3          	add	a3,a6,a4
    80003e0c:	0055c703          	lbu	a4,5(a1)
    80003e10:	00178793          	addi	a5,a5,1
    80003e14:	02077713          	andi	a4,a4,32
    80003e18:	fc071ae3          	bnez	a4,80003dec <uartstart+0x38>
    80003e1c:	00813403          	ld	s0,8(sp)
    80003e20:	01010113          	addi	sp,sp,16
    80003e24:	00008067          	ret

0000000080003e28 <uartgetc>:
    80003e28:	ff010113          	addi	sp,sp,-16
    80003e2c:	00813423          	sd	s0,8(sp)
    80003e30:	01010413          	addi	s0,sp,16
    80003e34:	10000737          	lui	a4,0x10000
    80003e38:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003e3c:	0017f793          	andi	a5,a5,1
    80003e40:	00078c63          	beqz	a5,80003e58 <uartgetc+0x30>
    80003e44:	00074503          	lbu	a0,0(a4)
    80003e48:	0ff57513          	andi	a0,a0,255
    80003e4c:	00813403          	ld	s0,8(sp)
    80003e50:	01010113          	addi	sp,sp,16
    80003e54:	00008067          	ret
    80003e58:	fff00513          	li	a0,-1
    80003e5c:	ff1ff06f          	j	80003e4c <uartgetc+0x24>

0000000080003e60 <uartintr>:
    80003e60:	100007b7          	lui	a5,0x10000
    80003e64:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003e68:	0017f793          	andi	a5,a5,1
    80003e6c:	0a078463          	beqz	a5,80003f14 <uartintr+0xb4>
    80003e70:	fe010113          	addi	sp,sp,-32
    80003e74:	00813823          	sd	s0,16(sp)
    80003e78:	00913423          	sd	s1,8(sp)
    80003e7c:	00113c23          	sd	ra,24(sp)
    80003e80:	02010413          	addi	s0,sp,32
    80003e84:	100004b7          	lui	s1,0x10000
    80003e88:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003e8c:	0ff57513          	andi	a0,a0,255
    80003e90:	fffff097          	auipc	ra,0xfffff
    80003e94:	534080e7          	jalr	1332(ra) # 800033c4 <consoleintr>
    80003e98:	0054c783          	lbu	a5,5(s1)
    80003e9c:	0017f793          	andi	a5,a5,1
    80003ea0:	fe0794e3          	bnez	a5,80003e88 <uartintr+0x28>
    80003ea4:	00002617          	auipc	a2,0x2
    80003ea8:	b6c60613          	addi	a2,a2,-1172 # 80005a10 <uart_tx_r>
    80003eac:	00002517          	auipc	a0,0x2
    80003eb0:	b6c50513          	addi	a0,a0,-1172 # 80005a18 <uart_tx_w>
    80003eb4:	00063783          	ld	a5,0(a2)
    80003eb8:	00053703          	ld	a4,0(a0)
    80003ebc:	04f70263          	beq	a4,a5,80003f00 <uartintr+0xa0>
    80003ec0:	100005b7          	lui	a1,0x10000
    80003ec4:	00003817          	auipc	a6,0x3
    80003ec8:	ddc80813          	addi	a6,a6,-548 # 80006ca0 <uart_tx_buf>
    80003ecc:	01c0006f          	j	80003ee8 <uartintr+0x88>
    80003ed0:	0006c703          	lbu	a4,0(a3)
    80003ed4:	00f63023          	sd	a5,0(a2)
    80003ed8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003edc:	00063783          	ld	a5,0(a2)
    80003ee0:	00053703          	ld	a4,0(a0)
    80003ee4:	00f70e63          	beq	a4,a5,80003f00 <uartintr+0xa0>
    80003ee8:	01f7f713          	andi	a4,a5,31
    80003eec:	00e806b3          	add	a3,a6,a4
    80003ef0:	0055c703          	lbu	a4,5(a1)
    80003ef4:	00178793          	addi	a5,a5,1
    80003ef8:	02077713          	andi	a4,a4,32
    80003efc:	fc071ae3          	bnez	a4,80003ed0 <uartintr+0x70>
    80003f00:	01813083          	ld	ra,24(sp)
    80003f04:	01013403          	ld	s0,16(sp)
    80003f08:	00813483          	ld	s1,8(sp)
    80003f0c:	02010113          	addi	sp,sp,32
    80003f10:	00008067          	ret
    80003f14:	00002617          	auipc	a2,0x2
    80003f18:	afc60613          	addi	a2,a2,-1284 # 80005a10 <uart_tx_r>
    80003f1c:	00002517          	auipc	a0,0x2
    80003f20:	afc50513          	addi	a0,a0,-1284 # 80005a18 <uart_tx_w>
    80003f24:	00063783          	ld	a5,0(a2)
    80003f28:	00053703          	ld	a4,0(a0)
    80003f2c:	04f70263          	beq	a4,a5,80003f70 <uartintr+0x110>
    80003f30:	100005b7          	lui	a1,0x10000
    80003f34:	00003817          	auipc	a6,0x3
    80003f38:	d6c80813          	addi	a6,a6,-660 # 80006ca0 <uart_tx_buf>
    80003f3c:	01c0006f          	j	80003f58 <uartintr+0xf8>
    80003f40:	0006c703          	lbu	a4,0(a3)
    80003f44:	00f63023          	sd	a5,0(a2)
    80003f48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003f4c:	00063783          	ld	a5,0(a2)
    80003f50:	00053703          	ld	a4,0(a0)
    80003f54:	02f70063          	beq	a4,a5,80003f74 <uartintr+0x114>
    80003f58:	01f7f713          	andi	a4,a5,31
    80003f5c:	00e806b3          	add	a3,a6,a4
    80003f60:	0055c703          	lbu	a4,5(a1)
    80003f64:	00178793          	addi	a5,a5,1
    80003f68:	02077713          	andi	a4,a4,32
    80003f6c:	fc071ae3          	bnez	a4,80003f40 <uartintr+0xe0>
    80003f70:	00008067          	ret
    80003f74:	00008067          	ret

0000000080003f78 <kinit>:
    80003f78:	fc010113          	addi	sp,sp,-64
    80003f7c:	02913423          	sd	s1,40(sp)
    80003f80:	fffff7b7          	lui	a5,0xfffff
    80003f84:	00004497          	auipc	s1,0x4
    80003f88:	d3b48493          	addi	s1,s1,-709 # 80007cbf <end+0xfff>
    80003f8c:	02813823          	sd	s0,48(sp)
    80003f90:	01313c23          	sd	s3,24(sp)
    80003f94:	00f4f4b3          	and	s1,s1,a5
    80003f98:	02113c23          	sd	ra,56(sp)
    80003f9c:	03213023          	sd	s2,32(sp)
    80003fa0:	01413823          	sd	s4,16(sp)
    80003fa4:	01513423          	sd	s5,8(sp)
    80003fa8:	04010413          	addi	s0,sp,64
    80003fac:	000017b7          	lui	a5,0x1
    80003fb0:	01100993          	li	s3,17
    80003fb4:	00f487b3          	add	a5,s1,a5
    80003fb8:	01b99993          	slli	s3,s3,0x1b
    80003fbc:	06f9e063          	bltu	s3,a5,8000401c <kinit+0xa4>
    80003fc0:	00003a97          	auipc	s5,0x3
    80003fc4:	d00a8a93          	addi	s5,s5,-768 # 80006cc0 <end>
    80003fc8:	0754ec63          	bltu	s1,s5,80004040 <kinit+0xc8>
    80003fcc:	0734fa63          	bgeu	s1,s3,80004040 <kinit+0xc8>
    80003fd0:	00088a37          	lui	s4,0x88
    80003fd4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003fd8:	00002917          	auipc	s2,0x2
    80003fdc:	a4890913          	addi	s2,s2,-1464 # 80005a20 <kmem>
    80003fe0:	00ca1a13          	slli	s4,s4,0xc
    80003fe4:	0140006f          	j	80003ff8 <kinit+0x80>
    80003fe8:	000017b7          	lui	a5,0x1
    80003fec:	00f484b3          	add	s1,s1,a5
    80003ff0:	0554e863          	bltu	s1,s5,80004040 <kinit+0xc8>
    80003ff4:	0534f663          	bgeu	s1,s3,80004040 <kinit+0xc8>
    80003ff8:	00001637          	lui	a2,0x1
    80003ffc:	00100593          	li	a1,1
    80004000:	00048513          	mv	a0,s1
    80004004:	00000097          	auipc	ra,0x0
    80004008:	5e4080e7          	jalr	1508(ra) # 800045e8 <__memset>
    8000400c:	00093783          	ld	a5,0(s2)
    80004010:	00f4b023          	sd	a5,0(s1)
    80004014:	00993023          	sd	s1,0(s2)
    80004018:	fd4498e3          	bne	s1,s4,80003fe8 <kinit+0x70>
    8000401c:	03813083          	ld	ra,56(sp)
    80004020:	03013403          	ld	s0,48(sp)
    80004024:	02813483          	ld	s1,40(sp)
    80004028:	02013903          	ld	s2,32(sp)
    8000402c:	01813983          	ld	s3,24(sp)
    80004030:	01013a03          	ld	s4,16(sp)
    80004034:	00813a83          	ld	s5,8(sp)
    80004038:	04010113          	addi	sp,sp,64
    8000403c:	00008067          	ret
    80004040:	00001517          	auipc	a0,0x1
    80004044:	29850513          	addi	a0,a0,664 # 800052d8 <digits+0x18>
    80004048:	fffff097          	auipc	ra,0xfffff
    8000404c:	4b4080e7          	jalr	1204(ra) # 800034fc <panic>

0000000080004050 <freerange>:
    80004050:	fc010113          	addi	sp,sp,-64
    80004054:	000017b7          	lui	a5,0x1
    80004058:	02913423          	sd	s1,40(sp)
    8000405c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004060:	009504b3          	add	s1,a0,s1
    80004064:	fffff537          	lui	a0,0xfffff
    80004068:	02813823          	sd	s0,48(sp)
    8000406c:	02113c23          	sd	ra,56(sp)
    80004070:	03213023          	sd	s2,32(sp)
    80004074:	01313c23          	sd	s3,24(sp)
    80004078:	01413823          	sd	s4,16(sp)
    8000407c:	01513423          	sd	s5,8(sp)
    80004080:	01613023          	sd	s6,0(sp)
    80004084:	04010413          	addi	s0,sp,64
    80004088:	00a4f4b3          	and	s1,s1,a0
    8000408c:	00f487b3          	add	a5,s1,a5
    80004090:	06f5e463          	bltu	a1,a5,800040f8 <freerange+0xa8>
    80004094:	00003a97          	auipc	s5,0x3
    80004098:	c2ca8a93          	addi	s5,s5,-980 # 80006cc0 <end>
    8000409c:	0954e263          	bltu	s1,s5,80004120 <freerange+0xd0>
    800040a0:	01100993          	li	s3,17
    800040a4:	01b99993          	slli	s3,s3,0x1b
    800040a8:	0734fc63          	bgeu	s1,s3,80004120 <freerange+0xd0>
    800040ac:	00058a13          	mv	s4,a1
    800040b0:	00002917          	auipc	s2,0x2
    800040b4:	97090913          	addi	s2,s2,-1680 # 80005a20 <kmem>
    800040b8:	00002b37          	lui	s6,0x2
    800040bc:	0140006f          	j	800040d0 <freerange+0x80>
    800040c0:	000017b7          	lui	a5,0x1
    800040c4:	00f484b3          	add	s1,s1,a5
    800040c8:	0554ec63          	bltu	s1,s5,80004120 <freerange+0xd0>
    800040cc:	0534fa63          	bgeu	s1,s3,80004120 <freerange+0xd0>
    800040d0:	00001637          	lui	a2,0x1
    800040d4:	00100593          	li	a1,1
    800040d8:	00048513          	mv	a0,s1
    800040dc:	00000097          	auipc	ra,0x0
    800040e0:	50c080e7          	jalr	1292(ra) # 800045e8 <__memset>
    800040e4:	00093703          	ld	a4,0(s2)
    800040e8:	016487b3          	add	a5,s1,s6
    800040ec:	00e4b023          	sd	a4,0(s1)
    800040f0:	00993023          	sd	s1,0(s2)
    800040f4:	fcfa76e3          	bgeu	s4,a5,800040c0 <freerange+0x70>
    800040f8:	03813083          	ld	ra,56(sp)
    800040fc:	03013403          	ld	s0,48(sp)
    80004100:	02813483          	ld	s1,40(sp)
    80004104:	02013903          	ld	s2,32(sp)
    80004108:	01813983          	ld	s3,24(sp)
    8000410c:	01013a03          	ld	s4,16(sp)
    80004110:	00813a83          	ld	s5,8(sp)
    80004114:	00013b03          	ld	s6,0(sp)
    80004118:	04010113          	addi	sp,sp,64
    8000411c:	00008067          	ret
    80004120:	00001517          	auipc	a0,0x1
    80004124:	1b850513          	addi	a0,a0,440 # 800052d8 <digits+0x18>
    80004128:	fffff097          	auipc	ra,0xfffff
    8000412c:	3d4080e7          	jalr	980(ra) # 800034fc <panic>

0000000080004130 <kfree>:
    80004130:	fe010113          	addi	sp,sp,-32
    80004134:	00813823          	sd	s0,16(sp)
    80004138:	00113c23          	sd	ra,24(sp)
    8000413c:	00913423          	sd	s1,8(sp)
    80004140:	02010413          	addi	s0,sp,32
    80004144:	03451793          	slli	a5,a0,0x34
    80004148:	04079c63          	bnez	a5,800041a0 <kfree+0x70>
    8000414c:	00003797          	auipc	a5,0x3
    80004150:	b7478793          	addi	a5,a5,-1164 # 80006cc0 <end>
    80004154:	00050493          	mv	s1,a0
    80004158:	04f56463          	bltu	a0,a5,800041a0 <kfree+0x70>
    8000415c:	01100793          	li	a5,17
    80004160:	01b79793          	slli	a5,a5,0x1b
    80004164:	02f57e63          	bgeu	a0,a5,800041a0 <kfree+0x70>
    80004168:	00001637          	lui	a2,0x1
    8000416c:	00100593          	li	a1,1
    80004170:	00000097          	auipc	ra,0x0
    80004174:	478080e7          	jalr	1144(ra) # 800045e8 <__memset>
    80004178:	00002797          	auipc	a5,0x2
    8000417c:	8a878793          	addi	a5,a5,-1880 # 80005a20 <kmem>
    80004180:	0007b703          	ld	a4,0(a5)
    80004184:	01813083          	ld	ra,24(sp)
    80004188:	01013403          	ld	s0,16(sp)
    8000418c:	00e4b023          	sd	a4,0(s1)
    80004190:	0097b023          	sd	s1,0(a5)
    80004194:	00813483          	ld	s1,8(sp)
    80004198:	02010113          	addi	sp,sp,32
    8000419c:	00008067          	ret
    800041a0:	00001517          	auipc	a0,0x1
    800041a4:	13850513          	addi	a0,a0,312 # 800052d8 <digits+0x18>
    800041a8:	fffff097          	auipc	ra,0xfffff
    800041ac:	354080e7          	jalr	852(ra) # 800034fc <panic>

00000000800041b0 <kalloc>:
    800041b0:	fe010113          	addi	sp,sp,-32
    800041b4:	00813823          	sd	s0,16(sp)
    800041b8:	00913423          	sd	s1,8(sp)
    800041bc:	00113c23          	sd	ra,24(sp)
    800041c0:	02010413          	addi	s0,sp,32
    800041c4:	00002797          	auipc	a5,0x2
    800041c8:	85c78793          	addi	a5,a5,-1956 # 80005a20 <kmem>
    800041cc:	0007b483          	ld	s1,0(a5)
    800041d0:	02048063          	beqz	s1,800041f0 <kalloc+0x40>
    800041d4:	0004b703          	ld	a4,0(s1)
    800041d8:	00001637          	lui	a2,0x1
    800041dc:	00500593          	li	a1,5
    800041e0:	00048513          	mv	a0,s1
    800041e4:	00e7b023          	sd	a4,0(a5)
    800041e8:	00000097          	auipc	ra,0x0
    800041ec:	400080e7          	jalr	1024(ra) # 800045e8 <__memset>
    800041f0:	01813083          	ld	ra,24(sp)
    800041f4:	01013403          	ld	s0,16(sp)
    800041f8:	00048513          	mv	a0,s1
    800041fc:	00813483          	ld	s1,8(sp)
    80004200:	02010113          	addi	sp,sp,32
    80004204:	00008067          	ret

0000000080004208 <initlock>:
    80004208:	ff010113          	addi	sp,sp,-16
    8000420c:	00813423          	sd	s0,8(sp)
    80004210:	01010413          	addi	s0,sp,16
    80004214:	00813403          	ld	s0,8(sp)
    80004218:	00b53423          	sd	a1,8(a0)
    8000421c:	00052023          	sw	zero,0(a0)
    80004220:	00053823          	sd	zero,16(a0)
    80004224:	01010113          	addi	sp,sp,16
    80004228:	00008067          	ret

000000008000422c <acquire>:
    8000422c:	fe010113          	addi	sp,sp,-32
    80004230:	00813823          	sd	s0,16(sp)
    80004234:	00913423          	sd	s1,8(sp)
    80004238:	00113c23          	sd	ra,24(sp)
    8000423c:	01213023          	sd	s2,0(sp)
    80004240:	02010413          	addi	s0,sp,32
    80004244:	00050493          	mv	s1,a0
    80004248:	10002973          	csrr	s2,sstatus
    8000424c:	100027f3          	csrr	a5,sstatus
    80004250:	ffd7f793          	andi	a5,a5,-3
    80004254:	10079073          	csrw	sstatus,a5
    80004258:	fffff097          	auipc	ra,0xfffff
    8000425c:	8e8080e7          	jalr	-1816(ra) # 80002b40 <mycpu>
    80004260:	07852783          	lw	a5,120(a0)
    80004264:	06078e63          	beqz	a5,800042e0 <acquire+0xb4>
    80004268:	fffff097          	auipc	ra,0xfffff
    8000426c:	8d8080e7          	jalr	-1832(ra) # 80002b40 <mycpu>
    80004270:	07852783          	lw	a5,120(a0)
    80004274:	0004a703          	lw	a4,0(s1)
    80004278:	0017879b          	addiw	a5,a5,1
    8000427c:	06f52c23          	sw	a5,120(a0)
    80004280:	04071063          	bnez	a4,800042c0 <acquire+0x94>
    80004284:	00100713          	li	a4,1
    80004288:	00070793          	mv	a5,a4
    8000428c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004290:	0007879b          	sext.w	a5,a5
    80004294:	fe079ae3          	bnez	a5,80004288 <acquire+0x5c>
    80004298:	0ff0000f          	fence
    8000429c:	fffff097          	auipc	ra,0xfffff
    800042a0:	8a4080e7          	jalr	-1884(ra) # 80002b40 <mycpu>
    800042a4:	01813083          	ld	ra,24(sp)
    800042a8:	01013403          	ld	s0,16(sp)
    800042ac:	00a4b823          	sd	a0,16(s1)
    800042b0:	00013903          	ld	s2,0(sp)
    800042b4:	00813483          	ld	s1,8(sp)
    800042b8:	02010113          	addi	sp,sp,32
    800042bc:	00008067          	ret
    800042c0:	0104b903          	ld	s2,16(s1)
    800042c4:	fffff097          	auipc	ra,0xfffff
    800042c8:	87c080e7          	jalr	-1924(ra) # 80002b40 <mycpu>
    800042cc:	faa91ce3          	bne	s2,a0,80004284 <acquire+0x58>
    800042d0:	00001517          	auipc	a0,0x1
    800042d4:	01050513          	addi	a0,a0,16 # 800052e0 <digits+0x20>
    800042d8:	fffff097          	auipc	ra,0xfffff
    800042dc:	224080e7          	jalr	548(ra) # 800034fc <panic>
    800042e0:	00195913          	srli	s2,s2,0x1
    800042e4:	fffff097          	auipc	ra,0xfffff
    800042e8:	85c080e7          	jalr	-1956(ra) # 80002b40 <mycpu>
    800042ec:	00197913          	andi	s2,s2,1
    800042f0:	07252e23          	sw	s2,124(a0)
    800042f4:	f75ff06f          	j	80004268 <acquire+0x3c>

00000000800042f8 <release>:
    800042f8:	fe010113          	addi	sp,sp,-32
    800042fc:	00813823          	sd	s0,16(sp)
    80004300:	00113c23          	sd	ra,24(sp)
    80004304:	00913423          	sd	s1,8(sp)
    80004308:	01213023          	sd	s2,0(sp)
    8000430c:	02010413          	addi	s0,sp,32
    80004310:	00052783          	lw	a5,0(a0)
    80004314:	00079a63          	bnez	a5,80004328 <release+0x30>
    80004318:	00001517          	auipc	a0,0x1
    8000431c:	fd050513          	addi	a0,a0,-48 # 800052e8 <digits+0x28>
    80004320:	fffff097          	auipc	ra,0xfffff
    80004324:	1dc080e7          	jalr	476(ra) # 800034fc <panic>
    80004328:	01053903          	ld	s2,16(a0)
    8000432c:	00050493          	mv	s1,a0
    80004330:	fffff097          	auipc	ra,0xfffff
    80004334:	810080e7          	jalr	-2032(ra) # 80002b40 <mycpu>
    80004338:	fea910e3          	bne	s2,a0,80004318 <release+0x20>
    8000433c:	0004b823          	sd	zero,16(s1)
    80004340:	0ff0000f          	fence
    80004344:	0f50000f          	fence	iorw,ow
    80004348:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000434c:	ffffe097          	auipc	ra,0xffffe
    80004350:	7f4080e7          	jalr	2036(ra) # 80002b40 <mycpu>
    80004354:	100027f3          	csrr	a5,sstatus
    80004358:	0027f793          	andi	a5,a5,2
    8000435c:	04079a63          	bnez	a5,800043b0 <release+0xb8>
    80004360:	07852783          	lw	a5,120(a0)
    80004364:	02f05e63          	blez	a5,800043a0 <release+0xa8>
    80004368:	fff7871b          	addiw	a4,a5,-1
    8000436c:	06e52c23          	sw	a4,120(a0)
    80004370:	00071c63          	bnez	a4,80004388 <release+0x90>
    80004374:	07c52783          	lw	a5,124(a0)
    80004378:	00078863          	beqz	a5,80004388 <release+0x90>
    8000437c:	100027f3          	csrr	a5,sstatus
    80004380:	0027e793          	ori	a5,a5,2
    80004384:	10079073          	csrw	sstatus,a5
    80004388:	01813083          	ld	ra,24(sp)
    8000438c:	01013403          	ld	s0,16(sp)
    80004390:	00813483          	ld	s1,8(sp)
    80004394:	00013903          	ld	s2,0(sp)
    80004398:	02010113          	addi	sp,sp,32
    8000439c:	00008067          	ret
    800043a0:	00001517          	auipc	a0,0x1
    800043a4:	f6850513          	addi	a0,a0,-152 # 80005308 <digits+0x48>
    800043a8:	fffff097          	auipc	ra,0xfffff
    800043ac:	154080e7          	jalr	340(ra) # 800034fc <panic>
    800043b0:	00001517          	auipc	a0,0x1
    800043b4:	f4050513          	addi	a0,a0,-192 # 800052f0 <digits+0x30>
    800043b8:	fffff097          	auipc	ra,0xfffff
    800043bc:	144080e7          	jalr	324(ra) # 800034fc <panic>

00000000800043c0 <holding>:
    800043c0:	00052783          	lw	a5,0(a0)
    800043c4:	00079663          	bnez	a5,800043d0 <holding+0x10>
    800043c8:	00000513          	li	a0,0
    800043cc:	00008067          	ret
    800043d0:	fe010113          	addi	sp,sp,-32
    800043d4:	00813823          	sd	s0,16(sp)
    800043d8:	00913423          	sd	s1,8(sp)
    800043dc:	00113c23          	sd	ra,24(sp)
    800043e0:	02010413          	addi	s0,sp,32
    800043e4:	01053483          	ld	s1,16(a0)
    800043e8:	ffffe097          	auipc	ra,0xffffe
    800043ec:	758080e7          	jalr	1880(ra) # 80002b40 <mycpu>
    800043f0:	01813083          	ld	ra,24(sp)
    800043f4:	01013403          	ld	s0,16(sp)
    800043f8:	40a48533          	sub	a0,s1,a0
    800043fc:	00153513          	seqz	a0,a0
    80004400:	00813483          	ld	s1,8(sp)
    80004404:	02010113          	addi	sp,sp,32
    80004408:	00008067          	ret

000000008000440c <push_off>:
    8000440c:	fe010113          	addi	sp,sp,-32
    80004410:	00813823          	sd	s0,16(sp)
    80004414:	00113c23          	sd	ra,24(sp)
    80004418:	00913423          	sd	s1,8(sp)
    8000441c:	02010413          	addi	s0,sp,32
    80004420:	100024f3          	csrr	s1,sstatus
    80004424:	100027f3          	csrr	a5,sstatus
    80004428:	ffd7f793          	andi	a5,a5,-3
    8000442c:	10079073          	csrw	sstatus,a5
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	710080e7          	jalr	1808(ra) # 80002b40 <mycpu>
    80004438:	07852783          	lw	a5,120(a0)
    8000443c:	02078663          	beqz	a5,80004468 <push_off+0x5c>
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	700080e7          	jalr	1792(ra) # 80002b40 <mycpu>
    80004448:	07852783          	lw	a5,120(a0)
    8000444c:	01813083          	ld	ra,24(sp)
    80004450:	01013403          	ld	s0,16(sp)
    80004454:	0017879b          	addiw	a5,a5,1
    80004458:	06f52c23          	sw	a5,120(a0)
    8000445c:	00813483          	ld	s1,8(sp)
    80004460:	02010113          	addi	sp,sp,32
    80004464:	00008067          	ret
    80004468:	0014d493          	srli	s1,s1,0x1
    8000446c:	ffffe097          	auipc	ra,0xffffe
    80004470:	6d4080e7          	jalr	1748(ra) # 80002b40 <mycpu>
    80004474:	0014f493          	andi	s1,s1,1
    80004478:	06952e23          	sw	s1,124(a0)
    8000447c:	fc5ff06f          	j	80004440 <push_off+0x34>

0000000080004480 <pop_off>:
    80004480:	ff010113          	addi	sp,sp,-16
    80004484:	00813023          	sd	s0,0(sp)
    80004488:	00113423          	sd	ra,8(sp)
    8000448c:	01010413          	addi	s0,sp,16
    80004490:	ffffe097          	auipc	ra,0xffffe
    80004494:	6b0080e7          	jalr	1712(ra) # 80002b40 <mycpu>
    80004498:	100027f3          	csrr	a5,sstatus
    8000449c:	0027f793          	andi	a5,a5,2
    800044a0:	04079663          	bnez	a5,800044ec <pop_off+0x6c>
    800044a4:	07852783          	lw	a5,120(a0)
    800044a8:	02f05a63          	blez	a5,800044dc <pop_off+0x5c>
    800044ac:	fff7871b          	addiw	a4,a5,-1
    800044b0:	06e52c23          	sw	a4,120(a0)
    800044b4:	00071c63          	bnez	a4,800044cc <pop_off+0x4c>
    800044b8:	07c52783          	lw	a5,124(a0)
    800044bc:	00078863          	beqz	a5,800044cc <pop_off+0x4c>
    800044c0:	100027f3          	csrr	a5,sstatus
    800044c4:	0027e793          	ori	a5,a5,2
    800044c8:	10079073          	csrw	sstatus,a5
    800044cc:	00813083          	ld	ra,8(sp)
    800044d0:	00013403          	ld	s0,0(sp)
    800044d4:	01010113          	addi	sp,sp,16
    800044d8:	00008067          	ret
    800044dc:	00001517          	auipc	a0,0x1
    800044e0:	e2c50513          	addi	a0,a0,-468 # 80005308 <digits+0x48>
    800044e4:	fffff097          	auipc	ra,0xfffff
    800044e8:	018080e7          	jalr	24(ra) # 800034fc <panic>
    800044ec:	00001517          	auipc	a0,0x1
    800044f0:	e0450513          	addi	a0,a0,-508 # 800052f0 <digits+0x30>
    800044f4:	fffff097          	auipc	ra,0xfffff
    800044f8:	008080e7          	jalr	8(ra) # 800034fc <panic>

00000000800044fc <push_on>:
    800044fc:	fe010113          	addi	sp,sp,-32
    80004500:	00813823          	sd	s0,16(sp)
    80004504:	00113c23          	sd	ra,24(sp)
    80004508:	00913423          	sd	s1,8(sp)
    8000450c:	02010413          	addi	s0,sp,32
    80004510:	100024f3          	csrr	s1,sstatus
    80004514:	100027f3          	csrr	a5,sstatus
    80004518:	0027e793          	ori	a5,a5,2
    8000451c:	10079073          	csrw	sstatus,a5
    80004520:	ffffe097          	auipc	ra,0xffffe
    80004524:	620080e7          	jalr	1568(ra) # 80002b40 <mycpu>
    80004528:	07852783          	lw	a5,120(a0)
    8000452c:	02078663          	beqz	a5,80004558 <push_on+0x5c>
    80004530:	ffffe097          	auipc	ra,0xffffe
    80004534:	610080e7          	jalr	1552(ra) # 80002b40 <mycpu>
    80004538:	07852783          	lw	a5,120(a0)
    8000453c:	01813083          	ld	ra,24(sp)
    80004540:	01013403          	ld	s0,16(sp)
    80004544:	0017879b          	addiw	a5,a5,1
    80004548:	06f52c23          	sw	a5,120(a0)
    8000454c:	00813483          	ld	s1,8(sp)
    80004550:	02010113          	addi	sp,sp,32
    80004554:	00008067          	ret
    80004558:	0014d493          	srli	s1,s1,0x1
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	5e4080e7          	jalr	1508(ra) # 80002b40 <mycpu>
    80004564:	0014f493          	andi	s1,s1,1
    80004568:	06952e23          	sw	s1,124(a0)
    8000456c:	fc5ff06f          	j	80004530 <push_on+0x34>

0000000080004570 <pop_on>:
    80004570:	ff010113          	addi	sp,sp,-16
    80004574:	00813023          	sd	s0,0(sp)
    80004578:	00113423          	sd	ra,8(sp)
    8000457c:	01010413          	addi	s0,sp,16
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	5c0080e7          	jalr	1472(ra) # 80002b40 <mycpu>
    80004588:	100027f3          	csrr	a5,sstatus
    8000458c:	0027f793          	andi	a5,a5,2
    80004590:	04078463          	beqz	a5,800045d8 <pop_on+0x68>
    80004594:	07852783          	lw	a5,120(a0)
    80004598:	02f05863          	blez	a5,800045c8 <pop_on+0x58>
    8000459c:	fff7879b          	addiw	a5,a5,-1
    800045a0:	06f52c23          	sw	a5,120(a0)
    800045a4:	07853783          	ld	a5,120(a0)
    800045a8:	00079863          	bnez	a5,800045b8 <pop_on+0x48>
    800045ac:	100027f3          	csrr	a5,sstatus
    800045b0:	ffd7f793          	andi	a5,a5,-3
    800045b4:	10079073          	csrw	sstatus,a5
    800045b8:	00813083          	ld	ra,8(sp)
    800045bc:	00013403          	ld	s0,0(sp)
    800045c0:	01010113          	addi	sp,sp,16
    800045c4:	00008067          	ret
    800045c8:	00001517          	auipc	a0,0x1
    800045cc:	d6850513          	addi	a0,a0,-664 # 80005330 <digits+0x70>
    800045d0:	fffff097          	auipc	ra,0xfffff
    800045d4:	f2c080e7          	jalr	-212(ra) # 800034fc <panic>
    800045d8:	00001517          	auipc	a0,0x1
    800045dc:	d3850513          	addi	a0,a0,-712 # 80005310 <digits+0x50>
    800045e0:	fffff097          	auipc	ra,0xfffff
    800045e4:	f1c080e7          	jalr	-228(ra) # 800034fc <panic>

00000000800045e8 <__memset>:
    800045e8:	ff010113          	addi	sp,sp,-16
    800045ec:	00813423          	sd	s0,8(sp)
    800045f0:	01010413          	addi	s0,sp,16
    800045f4:	1a060e63          	beqz	a2,800047b0 <__memset+0x1c8>
    800045f8:	40a007b3          	neg	a5,a0
    800045fc:	0077f793          	andi	a5,a5,7
    80004600:	00778693          	addi	a3,a5,7
    80004604:	00b00813          	li	a6,11
    80004608:	0ff5f593          	andi	a1,a1,255
    8000460c:	fff6071b          	addiw	a4,a2,-1
    80004610:	1b06e663          	bltu	a3,a6,800047bc <__memset+0x1d4>
    80004614:	1cd76463          	bltu	a4,a3,800047dc <__memset+0x1f4>
    80004618:	1a078e63          	beqz	a5,800047d4 <__memset+0x1ec>
    8000461c:	00b50023          	sb	a1,0(a0)
    80004620:	00100713          	li	a4,1
    80004624:	1ae78463          	beq	a5,a4,800047cc <__memset+0x1e4>
    80004628:	00b500a3          	sb	a1,1(a0)
    8000462c:	00200713          	li	a4,2
    80004630:	1ae78a63          	beq	a5,a4,800047e4 <__memset+0x1fc>
    80004634:	00b50123          	sb	a1,2(a0)
    80004638:	00300713          	li	a4,3
    8000463c:	18e78463          	beq	a5,a4,800047c4 <__memset+0x1dc>
    80004640:	00b501a3          	sb	a1,3(a0)
    80004644:	00400713          	li	a4,4
    80004648:	1ae78263          	beq	a5,a4,800047ec <__memset+0x204>
    8000464c:	00b50223          	sb	a1,4(a0)
    80004650:	00500713          	li	a4,5
    80004654:	1ae78063          	beq	a5,a4,800047f4 <__memset+0x20c>
    80004658:	00b502a3          	sb	a1,5(a0)
    8000465c:	00700713          	li	a4,7
    80004660:	18e79e63          	bne	a5,a4,800047fc <__memset+0x214>
    80004664:	00b50323          	sb	a1,6(a0)
    80004668:	00700e93          	li	t4,7
    8000466c:	00859713          	slli	a4,a1,0x8
    80004670:	00e5e733          	or	a4,a1,a4
    80004674:	01059e13          	slli	t3,a1,0x10
    80004678:	01c76e33          	or	t3,a4,t3
    8000467c:	01859313          	slli	t1,a1,0x18
    80004680:	006e6333          	or	t1,t3,t1
    80004684:	02059893          	slli	a7,a1,0x20
    80004688:	40f60e3b          	subw	t3,a2,a5
    8000468c:	011368b3          	or	a7,t1,a7
    80004690:	02859813          	slli	a6,a1,0x28
    80004694:	0108e833          	or	a6,a7,a6
    80004698:	03059693          	slli	a3,a1,0x30
    8000469c:	003e589b          	srliw	a7,t3,0x3
    800046a0:	00d866b3          	or	a3,a6,a3
    800046a4:	03859713          	slli	a4,a1,0x38
    800046a8:	00389813          	slli	a6,a7,0x3
    800046ac:	00f507b3          	add	a5,a0,a5
    800046b0:	00e6e733          	or	a4,a3,a4
    800046b4:	000e089b          	sext.w	a7,t3
    800046b8:	00f806b3          	add	a3,a6,a5
    800046bc:	00e7b023          	sd	a4,0(a5)
    800046c0:	00878793          	addi	a5,a5,8
    800046c4:	fed79ce3          	bne	a5,a3,800046bc <__memset+0xd4>
    800046c8:	ff8e7793          	andi	a5,t3,-8
    800046cc:	0007871b          	sext.w	a4,a5
    800046d0:	01d787bb          	addw	a5,a5,t4
    800046d4:	0ce88e63          	beq	a7,a4,800047b0 <__memset+0x1c8>
    800046d8:	00f50733          	add	a4,a0,a5
    800046dc:	00b70023          	sb	a1,0(a4)
    800046e0:	0017871b          	addiw	a4,a5,1
    800046e4:	0cc77663          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    800046e8:	00e50733          	add	a4,a0,a4
    800046ec:	00b70023          	sb	a1,0(a4)
    800046f0:	0027871b          	addiw	a4,a5,2
    800046f4:	0ac77e63          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    800046f8:	00e50733          	add	a4,a0,a4
    800046fc:	00b70023          	sb	a1,0(a4)
    80004700:	0037871b          	addiw	a4,a5,3
    80004704:	0ac77663          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    80004708:	00e50733          	add	a4,a0,a4
    8000470c:	00b70023          	sb	a1,0(a4)
    80004710:	0047871b          	addiw	a4,a5,4
    80004714:	08c77e63          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    80004718:	00e50733          	add	a4,a0,a4
    8000471c:	00b70023          	sb	a1,0(a4)
    80004720:	0057871b          	addiw	a4,a5,5
    80004724:	08c77663          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    80004728:	00e50733          	add	a4,a0,a4
    8000472c:	00b70023          	sb	a1,0(a4)
    80004730:	0067871b          	addiw	a4,a5,6
    80004734:	06c77e63          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    80004738:	00e50733          	add	a4,a0,a4
    8000473c:	00b70023          	sb	a1,0(a4)
    80004740:	0077871b          	addiw	a4,a5,7
    80004744:	06c77663          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    80004748:	00e50733          	add	a4,a0,a4
    8000474c:	00b70023          	sb	a1,0(a4)
    80004750:	0087871b          	addiw	a4,a5,8
    80004754:	04c77e63          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    80004758:	00e50733          	add	a4,a0,a4
    8000475c:	00b70023          	sb	a1,0(a4)
    80004760:	0097871b          	addiw	a4,a5,9
    80004764:	04c77663          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    80004768:	00e50733          	add	a4,a0,a4
    8000476c:	00b70023          	sb	a1,0(a4)
    80004770:	00a7871b          	addiw	a4,a5,10
    80004774:	02c77e63          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    80004778:	00e50733          	add	a4,a0,a4
    8000477c:	00b70023          	sb	a1,0(a4)
    80004780:	00b7871b          	addiw	a4,a5,11
    80004784:	02c77663          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    80004788:	00e50733          	add	a4,a0,a4
    8000478c:	00b70023          	sb	a1,0(a4)
    80004790:	00c7871b          	addiw	a4,a5,12
    80004794:	00c77e63          	bgeu	a4,a2,800047b0 <__memset+0x1c8>
    80004798:	00e50733          	add	a4,a0,a4
    8000479c:	00b70023          	sb	a1,0(a4)
    800047a0:	00d7879b          	addiw	a5,a5,13
    800047a4:	00c7f663          	bgeu	a5,a2,800047b0 <__memset+0x1c8>
    800047a8:	00f507b3          	add	a5,a0,a5
    800047ac:	00b78023          	sb	a1,0(a5)
    800047b0:	00813403          	ld	s0,8(sp)
    800047b4:	01010113          	addi	sp,sp,16
    800047b8:	00008067          	ret
    800047bc:	00b00693          	li	a3,11
    800047c0:	e55ff06f          	j	80004614 <__memset+0x2c>
    800047c4:	00300e93          	li	t4,3
    800047c8:	ea5ff06f          	j	8000466c <__memset+0x84>
    800047cc:	00100e93          	li	t4,1
    800047d0:	e9dff06f          	j	8000466c <__memset+0x84>
    800047d4:	00000e93          	li	t4,0
    800047d8:	e95ff06f          	j	8000466c <__memset+0x84>
    800047dc:	00000793          	li	a5,0
    800047e0:	ef9ff06f          	j	800046d8 <__memset+0xf0>
    800047e4:	00200e93          	li	t4,2
    800047e8:	e85ff06f          	j	8000466c <__memset+0x84>
    800047ec:	00400e93          	li	t4,4
    800047f0:	e7dff06f          	j	8000466c <__memset+0x84>
    800047f4:	00500e93          	li	t4,5
    800047f8:	e75ff06f          	j	8000466c <__memset+0x84>
    800047fc:	00600e93          	li	t4,6
    80004800:	e6dff06f          	j	8000466c <__memset+0x84>

0000000080004804 <__memmove>:
    80004804:	ff010113          	addi	sp,sp,-16
    80004808:	00813423          	sd	s0,8(sp)
    8000480c:	01010413          	addi	s0,sp,16
    80004810:	0e060863          	beqz	a2,80004900 <__memmove+0xfc>
    80004814:	fff6069b          	addiw	a3,a2,-1
    80004818:	0006881b          	sext.w	a6,a3
    8000481c:	0ea5e863          	bltu	a1,a0,8000490c <__memmove+0x108>
    80004820:	00758713          	addi	a4,a1,7
    80004824:	00a5e7b3          	or	a5,a1,a0
    80004828:	40a70733          	sub	a4,a4,a0
    8000482c:	0077f793          	andi	a5,a5,7
    80004830:	00f73713          	sltiu	a4,a4,15
    80004834:	00174713          	xori	a4,a4,1
    80004838:	0017b793          	seqz	a5,a5
    8000483c:	00e7f7b3          	and	a5,a5,a4
    80004840:	10078863          	beqz	a5,80004950 <__memmove+0x14c>
    80004844:	00900793          	li	a5,9
    80004848:	1107f463          	bgeu	a5,a6,80004950 <__memmove+0x14c>
    8000484c:	0036581b          	srliw	a6,a2,0x3
    80004850:	fff8081b          	addiw	a6,a6,-1
    80004854:	02081813          	slli	a6,a6,0x20
    80004858:	01d85893          	srli	a7,a6,0x1d
    8000485c:	00858813          	addi	a6,a1,8
    80004860:	00058793          	mv	a5,a1
    80004864:	00050713          	mv	a4,a0
    80004868:	01088833          	add	a6,a7,a6
    8000486c:	0007b883          	ld	a7,0(a5)
    80004870:	00878793          	addi	a5,a5,8
    80004874:	00870713          	addi	a4,a4,8
    80004878:	ff173c23          	sd	a7,-8(a4)
    8000487c:	ff0798e3          	bne	a5,a6,8000486c <__memmove+0x68>
    80004880:	ff867713          	andi	a4,a2,-8
    80004884:	02071793          	slli	a5,a4,0x20
    80004888:	0207d793          	srli	a5,a5,0x20
    8000488c:	00f585b3          	add	a1,a1,a5
    80004890:	40e686bb          	subw	a3,a3,a4
    80004894:	00f507b3          	add	a5,a0,a5
    80004898:	06e60463          	beq	a2,a4,80004900 <__memmove+0xfc>
    8000489c:	0005c703          	lbu	a4,0(a1)
    800048a0:	00e78023          	sb	a4,0(a5)
    800048a4:	04068e63          	beqz	a3,80004900 <__memmove+0xfc>
    800048a8:	0015c603          	lbu	a2,1(a1)
    800048ac:	00100713          	li	a4,1
    800048b0:	00c780a3          	sb	a2,1(a5)
    800048b4:	04e68663          	beq	a3,a4,80004900 <__memmove+0xfc>
    800048b8:	0025c603          	lbu	a2,2(a1)
    800048bc:	00200713          	li	a4,2
    800048c0:	00c78123          	sb	a2,2(a5)
    800048c4:	02e68e63          	beq	a3,a4,80004900 <__memmove+0xfc>
    800048c8:	0035c603          	lbu	a2,3(a1)
    800048cc:	00300713          	li	a4,3
    800048d0:	00c781a3          	sb	a2,3(a5)
    800048d4:	02e68663          	beq	a3,a4,80004900 <__memmove+0xfc>
    800048d8:	0045c603          	lbu	a2,4(a1)
    800048dc:	00400713          	li	a4,4
    800048e0:	00c78223          	sb	a2,4(a5)
    800048e4:	00e68e63          	beq	a3,a4,80004900 <__memmove+0xfc>
    800048e8:	0055c603          	lbu	a2,5(a1)
    800048ec:	00500713          	li	a4,5
    800048f0:	00c782a3          	sb	a2,5(a5)
    800048f4:	00e68663          	beq	a3,a4,80004900 <__memmove+0xfc>
    800048f8:	0065c703          	lbu	a4,6(a1)
    800048fc:	00e78323          	sb	a4,6(a5)
    80004900:	00813403          	ld	s0,8(sp)
    80004904:	01010113          	addi	sp,sp,16
    80004908:	00008067          	ret
    8000490c:	02061713          	slli	a4,a2,0x20
    80004910:	02075713          	srli	a4,a4,0x20
    80004914:	00e587b3          	add	a5,a1,a4
    80004918:	f0f574e3          	bgeu	a0,a5,80004820 <__memmove+0x1c>
    8000491c:	02069613          	slli	a2,a3,0x20
    80004920:	02065613          	srli	a2,a2,0x20
    80004924:	fff64613          	not	a2,a2
    80004928:	00e50733          	add	a4,a0,a4
    8000492c:	00c78633          	add	a2,a5,a2
    80004930:	fff7c683          	lbu	a3,-1(a5)
    80004934:	fff78793          	addi	a5,a5,-1
    80004938:	fff70713          	addi	a4,a4,-1
    8000493c:	00d70023          	sb	a3,0(a4)
    80004940:	fec798e3          	bne	a5,a2,80004930 <__memmove+0x12c>
    80004944:	00813403          	ld	s0,8(sp)
    80004948:	01010113          	addi	sp,sp,16
    8000494c:	00008067          	ret
    80004950:	02069713          	slli	a4,a3,0x20
    80004954:	02075713          	srli	a4,a4,0x20
    80004958:	00170713          	addi	a4,a4,1
    8000495c:	00e50733          	add	a4,a0,a4
    80004960:	00050793          	mv	a5,a0
    80004964:	0005c683          	lbu	a3,0(a1)
    80004968:	00178793          	addi	a5,a5,1
    8000496c:	00158593          	addi	a1,a1,1
    80004970:	fed78fa3          	sb	a3,-1(a5)
    80004974:	fee798e3          	bne	a5,a4,80004964 <__memmove+0x160>
    80004978:	f89ff06f          	j	80004900 <__memmove+0xfc>

000000008000497c <__putc>:
    8000497c:	fe010113          	addi	sp,sp,-32
    80004980:	00813823          	sd	s0,16(sp)
    80004984:	00113c23          	sd	ra,24(sp)
    80004988:	02010413          	addi	s0,sp,32
    8000498c:	00050793          	mv	a5,a0
    80004990:	fef40593          	addi	a1,s0,-17
    80004994:	00100613          	li	a2,1
    80004998:	00000513          	li	a0,0
    8000499c:	fef407a3          	sb	a5,-17(s0)
    800049a0:	fffff097          	auipc	ra,0xfffff
    800049a4:	b3c080e7          	jalr	-1220(ra) # 800034dc <console_write>
    800049a8:	01813083          	ld	ra,24(sp)
    800049ac:	01013403          	ld	s0,16(sp)
    800049b0:	02010113          	addi	sp,sp,32
    800049b4:	00008067          	ret

00000000800049b8 <__getc>:
    800049b8:	fe010113          	addi	sp,sp,-32
    800049bc:	00813823          	sd	s0,16(sp)
    800049c0:	00113c23          	sd	ra,24(sp)
    800049c4:	02010413          	addi	s0,sp,32
    800049c8:	fe840593          	addi	a1,s0,-24
    800049cc:	00100613          	li	a2,1
    800049d0:	00000513          	li	a0,0
    800049d4:	fffff097          	auipc	ra,0xfffff
    800049d8:	ae8080e7          	jalr	-1304(ra) # 800034bc <console_read>
    800049dc:	fe844503          	lbu	a0,-24(s0)
    800049e0:	01813083          	ld	ra,24(sp)
    800049e4:	01013403          	ld	s0,16(sp)
    800049e8:	02010113          	addi	sp,sp,32
    800049ec:	00008067          	ret

00000000800049f0 <console_handler>:
    800049f0:	fe010113          	addi	sp,sp,-32
    800049f4:	00813823          	sd	s0,16(sp)
    800049f8:	00113c23          	sd	ra,24(sp)
    800049fc:	00913423          	sd	s1,8(sp)
    80004a00:	02010413          	addi	s0,sp,32
    80004a04:	14202773          	csrr	a4,scause
    80004a08:	100027f3          	csrr	a5,sstatus
    80004a0c:	0027f793          	andi	a5,a5,2
    80004a10:	06079e63          	bnez	a5,80004a8c <console_handler+0x9c>
    80004a14:	00074c63          	bltz	a4,80004a2c <console_handler+0x3c>
    80004a18:	01813083          	ld	ra,24(sp)
    80004a1c:	01013403          	ld	s0,16(sp)
    80004a20:	00813483          	ld	s1,8(sp)
    80004a24:	02010113          	addi	sp,sp,32
    80004a28:	00008067          	ret
    80004a2c:	0ff77713          	andi	a4,a4,255
    80004a30:	00900793          	li	a5,9
    80004a34:	fef712e3          	bne	a4,a5,80004a18 <console_handler+0x28>
    80004a38:	ffffe097          	auipc	ra,0xffffe
    80004a3c:	6dc080e7          	jalr	1756(ra) # 80003114 <plic_claim>
    80004a40:	00a00793          	li	a5,10
    80004a44:	00050493          	mv	s1,a0
    80004a48:	02f50c63          	beq	a0,a5,80004a80 <console_handler+0x90>
    80004a4c:	fc0506e3          	beqz	a0,80004a18 <console_handler+0x28>
    80004a50:	00050593          	mv	a1,a0
    80004a54:	00000517          	auipc	a0,0x0
    80004a58:	7e450513          	addi	a0,a0,2020 # 80005238 <_ZZ12printIntegermE6digits+0xe0>
    80004a5c:	fffff097          	auipc	ra,0xfffff
    80004a60:	afc080e7          	jalr	-1284(ra) # 80003558 <__printf>
    80004a64:	01013403          	ld	s0,16(sp)
    80004a68:	01813083          	ld	ra,24(sp)
    80004a6c:	00048513          	mv	a0,s1
    80004a70:	00813483          	ld	s1,8(sp)
    80004a74:	02010113          	addi	sp,sp,32
    80004a78:	ffffe317          	auipc	t1,0xffffe
    80004a7c:	6d430067          	jr	1748(t1) # 8000314c <plic_complete>
    80004a80:	fffff097          	auipc	ra,0xfffff
    80004a84:	3e0080e7          	jalr	992(ra) # 80003e60 <uartintr>
    80004a88:	fddff06f          	j	80004a64 <console_handler+0x74>
    80004a8c:	00001517          	auipc	a0,0x1
    80004a90:	8ac50513          	addi	a0,a0,-1876 # 80005338 <digits+0x78>
    80004a94:	fffff097          	auipc	ra,0xfffff
    80004a98:	a68080e7          	jalr	-1432(ra) # 800034fc <panic>
	...
