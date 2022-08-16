
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	6f813103          	ld	sp,1784(sp) # 800046f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	59d010ef          	jal	ra,80001db8 <start>

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

00000000800010f8 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:
    #a0- old->context
    #a1- running->context
    sd ra, 0 * 8(a0)
    800010f8:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    800010fc:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001100:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001104:	0085b103          	ld	sp,8(a1)

    80001108:	00008067          	ret

000000008000110c <_ZL9fibonaccim>:
#include "../h/workers.hpp"
#include "../h/ccb.hpp"
#include "../lib/hw.h"
#include "../h/Print.hpp"

static uint64 fibonacci(uint64 n) {
    8000110c:	fe010113          	addi	sp,sp,-32
    80001110:	00113c23          	sd	ra,24(sp)
    80001114:	00813823          	sd	s0,16(sp)
    80001118:	00913423          	sd	s1,8(sp)
    8000111c:	01213023          	sd	s2,0(sp)
    80001120:	02010413          	addi	s0,sp,32
    80001124:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001128:	00100793          	li	a5,1
    8000112c:	02a7f663          	bgeu	a5,a0,80001158 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) TCB::yield();
    80001130:	00357793          	andi	a5,a0,3
    80001134:	02078e63          	beqz	a5,80001170 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001138:	fff48513          	addi	a0,s1,-1
    8000113c:	00000097          	auipc	ra,0x0
    80001140:	fd0080e7          	jalr	-48(ra) # 8000110c <_ZL9fibonaccim>
    80001144:	00050913          	mv	s2,a0
    80001148:	ffe48513          	addi	a0,s1,-2
    8000114c:	00000097          	auipc	ra,0x0
    80001150:	fc0080e7          	jalr	-64(ra) # 8000110c <_ZL9fibonaccim>
    80001154:	00a90533          	add	a0,s2,a0
}
    80001158:	01813083          	ld	ra,24(sp)
    8000115c:	01013403          	ld	s0,16(sp)
    80001160:	00813483          	ld	s1,8(sp)
    80001164:	00013903          	ld	s2,0(sp)
    80001168:	02010113          	addi	sp,sp,32
    8000116c:	00008067          	ret
    if (n % 4 == 0) TCB::yield();
    80001170:	00001097          	auipc	ra,0x1
    80001174:	ac4080e7          	jalr	-1340(ra) # 80001c34 <_ZN3CCB5yieldEv>
    80001178:	fc1ff06f          	j	80001138 <_ZL9fibonaccim+0x2c>

000000008000117c <_Z11workerBodyAv>:

void workerBodyA(){
    8000117c:	fe010113          	addi	sp,sp,-32
    80001180:	00113c23          	sd	ra,24(sp)
    80001184:	00813823          	sd	s0,16(sp)
    80001188:	00913423          	sd	s1,8(sp)
    8000118c:	01213023          	sd	s2,0(sp)
    80001190:	02010413          	addi	s0,sp,32
    uint8 i=0;
    80001194:	00000493          	li	s1,0
    80001198:	0380006f          	j	800011d0 <_Z11workerBodyAv+0x54>
    for(; i<3 ; i++){
        printString("A: i=");
    8000119c:	00003517          	auipc	a0,0x3
    800011a0:	e8450513          	addi	a0,a0,-380 # 80004020 <CONSOLE_STATUS+0x10>
    800011a4:	00001097          	auipc	ra,0x1
    800011a8:	b40080e7          	jalr	-1216(ra) # 80001ce4 <_Z11printStringPKc>
        printInteger(i);
    800011ac:	00048513          	mv	a0,s1
    800011b0:	00001097          	auipc	ra,0x1
    800011b4:	b78080e7          	jalr	-1160(ra) # 80001d28 <_Z12printIntegerm>
        printString("\n");
    800011b8:	00003517          	auipc	a0,0x3
    800011bc:	ef850513          	addi	a0,a0,-264 # 800040b0 <CONSOLE_STATUS+0xa0>
    800011c0:	00001097          	auipc	ra,0x1
    800011c4:	b24080e7          	jalr	-1244(ra) # 80001ce4 <_Z11printStringPKc>
    for(; i<3 ; i++){
    800011c8:	0014849b          	addiw	s1,s1,1
    800011cc:	0ff4f493          	andi	s1,s1,255
    800011d0:	00200793          	li	a5,2
    800011d4:	fc97f4e3          	bgeu	a5,s1,8000119c <_Z11workerBodyAv+0x20>
    }

    printString("A yield\n");
    800011d8:	00003517          	auipc	a0,0x3
    800011dc:	e5050513          	addi	a0,a0,-432 # 80004028 <CONSOLE_STATUS+0x18>
    800011e0:	00001097          	auipc	ra,0x1
    800011e4:	b04080e7          	jalr	-1276(ra) # 80001ce4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800011e8:	00700313          	li	t1,7
    TCB::yield();
    800011ec:	00001097          	auipc	ra,0x1
    800011f0:	a48080e7          	jalr	-1464(ra) # 80001c34 <_ZN3CCB5yieldEv>

    uint64 t1=0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800011f4:	00030913          	mv	s2,t1

    printString("A: t1=");
    800011f8:	00003517          	auipc	a0,0x3
    800011fc:	e4050513          	addi	a0,a0,-448 # 80004038 <CONSOLE_STATUS+0x28>
    80001200:	00001097          	auipc	ra,0x1
    80001204:	ae4080e7          	jalr	-1308(ra) # 80001ce4 <_Z11printStringPKc>
    printInteger(t1);
    80001208:	00090513          	mv	a0,s2
    8000120c:	00001097          	auipc	ra,0x1
    80001210:	b1c080e7          	jalr	-1252(ra) # 80001d28 <_Z12printIntegerm>
    printString("\n");
    80001214:	00003517          	auipc	a0,0x3
    80001218:	e9c50513          	addi	a0,a0,-356 # 800040b0 <CONSOLE_STATUS+0xa0>
    8000121c:	00001097          	auipc	ra,0x1
    80001220:	ac8080e7          	jalr	-1336(ra) # 80001ce4 <_Z11printStringPKc>

    uint64 result = fibonacci (20);
    80001224:	01400513          	li	a0,20
    80001228:	00000097          	auipc	ra,0x0
    8000122c:	ee4080e7          	jalr	-284(ra) # 8000110c <_ZL9fibonaccim>
    80001230:	00050913          	mv	s2,a0
    printString("A: fibonacci=");
    80001234:	00003517          	auipc	a0,0x3
    80001238:	e0c50513          	addi	a0,a0,-500 # 80004040 <CONSOLE_STATUS+0x30>
    8000123c:	00001097          	auipc	ra,0x1
    80001240:	aa8080e7          	jalr	-1368(ra) # 80001ce4 <_Z11printStringPKc>
    printInteger(result);
    80001244:	00090513          	mv	a0,s2
    80001248:	00001097          	auipc	ra,0x1
    8000124c:	ae0080e7          	jalr	-1312(ra) # 80001d28 <_Z12printIntegerm>
    printString("\n");
    80001250:	00003517          	auipc	a0,0x3
    80001254:	e6050513          	addi	a0,a0,-416 # 800040b0 <CONSOLE_STATUS+0xa0>
    80001258:	00001097          	auipc	ra,0x1
    8000125c:	a8c080e7          	jalr	-1396(ra) # 80001ce4 <_Z11printStringPKc>
    80001260:	0380006f          	j	80001298 <_Z11workerBodyAv+0x11c>

    for(; i<6; i++){
        printString("A: i=");
    80001264:	00003517          	auipc	a0,0x3
    80001268:	dbc50513          	addi	a0,a0,-580 # 80004020 <CONSOLE_STATUS+0x10>
    8000126c:	00001097          	auipc	ra,0x1
    80001270:	a78080e7          	jalr	-1416(ra) # 80001ce4 <_Z11printStringPKc>
        printInteger(i);
    80001274:	00048513          	mv	a0,s1
    80001278:	00001097          	auipc	ra,0x1
    8000127c:	ab0080e7          	jalr	-1360(ra) # 80001d28 <_Z12printIntegerm>
        printString("\n");
    80001280:	00003517          	auipc	a0,0x3
    80001284:	e3050513          	addi	a0,a0,-464 # 800040b0 <CONSOLE_STATUS+0xa0>
    80001288:	00001097          	auipc	ra,0x1
    8000128c:	a5c080e7          	jalr	-1444(ra) # 80001ce4 <_Z11printStringPKc>
    for(; i<6; i++){
    80001290:	0014849b          	addiw	s1,s1,1
    80001294:	0ff4f493          	andi	s1,s1,255
    80001298:	00500793          	li	a5,5
    8000129c:	fc97f4e3          	bgeu	a5,s1,80001264 <_Z11workerBodyAv+0xe8>
    }

    TCB::running->setFinished(true);
    800012a0:	00100593          	li	a1,1
    800012a4:	00003797          	auipc	a5,0x3
    800012a8:	45c7b783          	ld	a5,1116(a5) # 80004700 <_GLOBAL_OFFSET_TABLE_+0x28>
    800012ac:	0007b503          	ld	a0,0(a5)
    800012b0:	00001097          	auipc	ra,0x1
    800012b4:	830080e7          	jalr	-2000(ra) # 80001ae0 <_ZN3CCB11setFinishedEb>
    TCB::yield();
    800012b8:	00001097          	auipc	ra,0x1
    800012bc:	97c080e7          	jalr	-1668(ra) # 80001c34 <_ZN3CCB5yieldEv>
}
    800012c0:	01813083          	ld	ra,24(sp)
    800012c4:	01013403          	ld	s0,16(sp)
    800012c8:	00813483          	ld	s1,8(sp)
    800012cc:	00013903          	ld	s2,0(sp)
    800012d0:	02010113          	addi	sp,sp,32
    800012d4:	00008067          	ret

00000000800012d8 <_Z11workerBodyBv>:

void workerBodyB(){
    800012d8:	fe010113          	addi	sp,sp,-32
    800012dc:	00113c23          	sd	ra,24(sp)
    800012e0:	00813823          	sd	s0,16(sp)
    800012e4:	00913423          	sd	s1,8(sp)
    800012e8:	01213023          	sd	s2,0(sp)
    800012ec:	02010413          	addi	s0,sp,32
    uint8 i=10;
    800012f0:	00a00493          	li	s1,10
    800012f4:	0380006f          	j	8000132c <_Z11workerBodyBv+0x54>
    for(; i<13; i++){
        printString("B: i=");
    800012f8:	00003517          	auipc	a0,0x3
    800012fc:	d5850513          	addi	a0,a0,-680 # 80004050 <CONSOLE_STATUS+0x40>
    80001300:	00001097          	auipc	ra,0x1
    80001304:	9e4080e7          	jalr	-1564(ra) # 80001ce4 <_Z11printStringPKc>
        printInteger(i);
    80001308:	00048513          	mv	a0,s1
    8000130c:	00001097          	auipc	ra,0x1
    80001310:	a1c080e7          	jalr	-1508(ra) # 80001d28 <_Z12printIntegerm>
        printString("\n");
    80001314:	00003517          	auipc	a0,0x3
    80001318:	d9c50513          	addi	a0,a0,-612 # 800040b0 <CONSOLE_STATUS+0xa0>
    8000131c:	00001097          	auipc	ra,0x1
    80001320:	9c8080e7          	jalr	-1592(ra) # 80001ce4 <_Z11printStringPKc>
    for(; i<13; i++){
    80001324:	0014849b          	addiw	s1,s1,1
    80001328:	0ff4f493          	andi	s1,s1,255
    8000132c:	00c00793          	li	a5,12
    80001330:	fc97f4e3          	bgeu	a5,s1,800012f8 <_Z11workerBodyBv+0x20>
    }

    printString("B: yield\n");
    80001334:	00003517          	auipc	a0,0x3
    80001338:	d2450513          	addi	a0,a0,-732 # 80004058 <CONSOLE_STATUS+0x48>
    8000133c:	00001097          	auipc	ra,0x1
    80001340:	9a8080e7          	jalr	-1624(ra) # 80001ce4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001344:	00500313          	li	t1,5
    TCB::yield();
    80001348:	00001097          	auipc	ra,0x1
    8000134c:	8ec080e7          	jalr	-1812(ra) # 80001c34 <_ZN3CCB5yieldEv>

    uint64 result=fibonacci(23);
    80001350:	01700513          	li	a0,23
    80001354:	00000097          	auipc	ra,0x0
    80001358:	db8080e7          	jalr	-584(ra) # 8000110c <_ZL9fibonaccim>
    8000135c:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001360:	00003517          	auipc	a0,0x3
    80001364:	d0850513          	addi	a0,a0,-760 # 80004068 <CONSOLE_STATUS+0x58>
    80001368:	00001097          	auipc	ra,0x1
    8000136c:	97c080e7          	jalr	-1668(ra) # 80001ce4 <_Z11printStringPKc>
    printInteger(result);
    80001370:	00090513          	mv	a0,s2
    80001374:	00001097          	auipc	ra,0x1
    80001378:	9b4080e7          	jalr	-1612(ra) # 80001d28 <_Z12printIntegerm>
    printString("\n");
    8000137c:	00003517          	auipc	a0,0x3
    80001380:	d3450513          	addi	a0,a0,-716 # 800040b0 <CONSOLE_STATUS+0xa0>
    80001384:	00001097          	auipc	ra,0x1
    80001388:	960080e7          	jalr	-1696(ra) # 80001ce4 <_Z11printStringPKc>
    8000138c:	0380006f          	j	800013c4 <_Z11workerBodyBv+0xec>

    for(; i<16; i++){
        printString("B: i=");
    80001390:	00003517          	auipc	a0,0x3
    80001394:	cc050513          	addi	a0,a0,-832 # 80004050 <CONSOLE_STATUS+0x40>
    80001398:	00001097          	auipc	ra,0x1
    8000139c:	94c080e7          	jalr	-1716(ra) # 80001ce4 <_Z11printStringPKc>
        printInteger(i);
    800013a0:	00048513          	mv	a0,s1
    800013a4:	00001097          	auipc	ra,0x1
    800013a8:	984080e7          	jalr	-1660(ra) # 80001d28 <_Z12printIntegerm>
        printString("\n");
    800013ac:	00003517          	auipc	a0,0x3
    800013b0:	d0450513          	addi	a0,a0,-764 # 800040b0 <CONSOLE_STATUS+0xa0>
    800013b4:	00001097          	auipc	ra,0x1
    800013b8:	930080e7          	jalr	-1744(ra) # 80001ce4 <_Z11printStringPKc>
    for(; i<16; i++){
    800013bc:	0014849b          	addiw	s1,s1,1
    800013c0:	0ff4f493          	andi	s1,s1,255
    800013c4:	00f00793          	li	a5,15
    800013c8:	fc97f4e3          	bgeu	a5,s1,80001390 <_Z11workerBodyBv+0xb8>
    }

    TCB::running->setFinished(true);
    800013cc:	00100593          	li	a1,1
    800013d0:	00003797          	auipc	a5,0x3
    800013d4:	3307b783          	ld	a5,816(a5) # 80004700 <_GLOBAL_OFFSET_TABLE_+0x28>
    800013d8:	0007b503          	ld	a0,0(a5)
    800013dc:	00000097          	auipc	ra,0x0
    800013e0:	704080e7          	jalr	1796(ra) # 80001ae0 <_ZN3CCB11setFinishedEb>
    TCB::yield();
    800013e4:	00001097          	auipc	ra,0x1
    800013e8:	850080e7          	jalr	-1968(ra) # 80001c34 <_ZN3CCB5yieldEv>
    800013ec:	01813083          	ld	ra,24(sp)
    800013f0:	01013403          	ld	s0,16(sp)
    800013f4:	00813483          	ld	s1,8(sp)
    800013f8:	00013903          	ld	s2,0(sp)
    800013fc:	02010113          	addi	sp,sp,32
    80001400:	00008067          	ret

0000000080001404 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyCoroutineQueue.addLast(ccb);
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00813423          	sd	s0,8(sp)
    8000140c:	01010413          	addi	s0,sp,16
    80001410:	00100793          	li	a5,1
    80001414:	00f50863          	beq	a0,a5,80001424 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001418:	00813403          	ld	s0,8(sp)
    8000141c:	01010113          	addi	sp,sp,16
    80001420:	00008067          	ret
    80001424:	000107b7          	lui	a5,0x10
    80001428:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000142c:	fef596e3          	bne	a1,a5,80001418 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    80001430:	00003797          	auipc	a5,0x3
    80001434:	34078793          	addi	a5,a5,832 # 80004770 <_ZN9Scheduler19readyCoroutineQueueE>
    80001438:	0007b023          	sd	zero,0(a5)
    8000143c:	0007b423          	sd	zero,8(a5)
    80001440:	fd9ff06f          	j	80001418 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001444 <_ZN9Scheduler3getEv>:
{
    80001444:	fe010113          	addi	sp,sp,-32
    80001448:	00113c23          	sd	ra,24(sp)
    8000144c:	00813823          	sd	s0,16(sp)
    80001450:	00913423          	sd	s1,8(sp)
    80001454:	02010413          	addi	s0,sp,32
            head=tail=elem;
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    80001458:	00003517          	auipc	a0,0x3
    8000145c:	31853503          	ld	a0,792(a0) # 80004770 <_ZN9Scheduler19readyCoroutineQueueE>
    80001460:	04050263          	beqz	a0,800014a4 <_ZN9Scheduler3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    80001464:	00853783          	ld	a5,8(a0)
    80001468:	00003717          	auipc	a4,0x3
    8000146c:	30f73423          	sd	a5,776(a4) # 80004770 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    80001470:	02078463          	beqz	a5,80001498 <_ZN9Scheduler3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    80001474:	00053483          	ld	s1,0(a0)
        delete elem;
    80001478:	00000097          	auipc	ra,0x0
    8000147c:	42c080e7          	jalr	1068(ra) # 800018a4 <_ZdlPv>
}
    80001480:	00048513          	mv	a0,s1
    80001484:	01813083          	ld	ra,24(sp)
    80001488:	01013403          	ld	s0,16(sp)
    8000148c:	00813483          	ld	s1,8(sp)
    80001490:	02010113          	addi	sp,sp,32
    80001494:	00008067          	ret
            tail = 0;
    80001498:	00003797          	auipc	a5,0x3
    8000149c:	2e07b023          	sd	zero,736(a5) # 80004778 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800014a0:	fd5ff06f          	j	80001474 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    800014a4:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    800014a8:	fd9ff06f          	j	80001480 <_ZN9Scheduler3getEv+0x3c>

00000000800014ac <_ZN9Scheduler3putEP3CCB>:
{
    800014ac:	fe010113          	addi	sp,sp,-32
    800014b0:	00113c23          	sd	ra,24(sp)
    800014b4:	00813823          	sd	s0,16(sp)
    800014b8:	00913423          	sd	s1,8(sp)
    800014bc:	02010413          	addi	s0,sp,32
    800014c0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800014c4:	01000513          	li	a0,16
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	1bc080e7          	jalr	444(ra) # 80001684 <_Znwm>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    800014d0:	00953023          	sd	s1,0(a0)
    800014d4:	00053423          	sd	zero,8(a0)
        if (tail){
    800014d8:	00003797          	auipc	a5,0x3
    800014dc:	2a07b783          	ld	a5,672(a5) # 80004778 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800014e0:	02078263          	beqz	a5,80001504 <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next=elem;
    800014e4:	00a7b423          	sd	a0,8(a5)
            tail=elem;
    800014e8:	00003797          	auipc	a5,0x3
    800014ec:	28a7b823          	sd	a0,656(a5) # 80004778 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    800014f0:	01813083          	ld	ra,24(sp)
    800014f4:	01013403          	ld	s0,16(sp)
    800014f8:	00813483          	ld	s1,8(sp)
    800014fc:	02010113          	addi	sp,sp,32
    80001500:	00008067          	ret
            head=tail=elem;
    80001504:	00003797          	auipc	a5,0x3
    80001508:	26c78793          	addi	a5,a5,620 # 80004770 <_ZN9Scheduler19readyCoroutineQueueE>
    8000150c:	00a7b423          	sd	a0,8(a5)
    80001510:	00a7b023          	sd	a0,0(a5)
    80001514:	fddff06f          	j	800014f0 <_ZN9Scheduler3putEP3CCB+0x44>

0000000080001518 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001518:	ff010113          	addi	sp,sp,-16
    8000151c:	00113423          	sd	ra,8(sp)
    80001520:	00813023          	sd	s0,0(sp)
    80001524:	01010413          	addi	s0,sp,16
    80001528:	000105b7          	lui	a1,0x10
    8000152c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001530:	00100513          	li	a0,1
    80001534:	00000097          	auipc	ra,0x0
    80001538:	ed0080e7          	jalr	-304(ra) # 80001404 <_Z41__static_initialization_and_destruction_0ii>
    8000153c:	00813083          	ld	ra,8(sp)
    80001540:	00013403          	ld	s0,0(sp)
    80001544:	01010113          	addi	sp,sp,16
    80001548:	00008067          	ret

000000008000154c <main>:
#include "../lib/console.h"
#include "../h/ccb.hpp"
#include "../h/workers.hpp"
#include "../h/Print.hpp"
#include "../h/MemoryAllocation.hpp"
int main(){
    8000154c:	fc010113          	addi	sp,sp,-64
    80001550:	02113c23          	sd	ra,56(sp)
    80001554:	02813823          	sd	s0,48(sp)
    80001558:	02913423          	sd	s1,40(sp)
    8000155c:	03213023          	sd	s2,32(sp)
    80001560:	04010413          	addi	s0,sp,64

public:


    static MemoryAllocation *getInstance() {
        if (!instance) {
    80001564:	00003797          	auipc	a5,0x3
    80001568:	1a47b783          	ld	a5,420(a5) # 80004708 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000156c:	0007b783          	ld	a5,0(a5)
    80001570:	06078c63          	beqz	a5,800015e8 <main+0x9c>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    TCB *coroutines[3];

    coroutines[0] = TCB::createCoroutine(nullptr);
    80001574:	00000513          	li	a0,0
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	584080e7          	jalr	1412(ra) # 80001afc <_ZN3CCB15createCoroutineEPFvvE>
    80001580:	fca43423          	sd	a0,-56(s0)
    TCB::running=coroutines[0];
    80001584:	00003797          	auipc	a5,0x3
    80001588:	17c7b783          	ld	a5,380(a5) # 80004700 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000158c:	00a7b023          	sd	a0,0(a5)

    coroutines[1] = TCB::createCoroutine(workerBodyA); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    80001590:	00003517          	auipc	a0,0x3
    80001594:	16053503          	ld	a0,352(a0) # 800046f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001598:	00000097          	auipc	ra,0x0
    8000159c:	564080e7          	jalr	1380(ra) # 80001afc <_ZN3CCB15createCoroutineEPFvvE>
    800015a0:	fca43823          	sd	a0,-48(s0)
    printString("Coroutine A created\n");
    800015a4:	00003517          	auipc	a0,0x3
    800015a8:	ad450513          	addi	a0,a0,-1324 # 80004078 <CONSOLE_STATUS+0x68>
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	738080e7          	jalr	1848(ra) # 80001ce4 <_Z11printStringPKc>

    coroutines[1] = TCB::createCoroutine(workerBodyB); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    800015b4:	00003517          	auipc	a0,0x3
    800015b8:	13453503          	ld	a0,308(a0) # 800046e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    800015bc:	00000097          	auipc	ra,0x0
    800015c0:	540080e7          	jalr	1344(ra) # 80001afc <_ZN3CCB15createCoroutineEPFvvE>
    800015c4:	fca43823          	sd	a0,-48(s0)
    printString("Coroutine B created\n");
    800015c8:	00003517          	auipc	a0,0x3
    800015cc:	ac850513          	addi	a0,a0,-1336 # 80004090 <CONSOLE_STATUS+0x80>
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	714080e7          	jalr	1812(ra) # 80001ce4 <_Z11printStringPKc>

    TCB::yield();
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	65c080e7          	jalr	1628(ra) # 80001c34 <_ZN3CCB5yieldEv>

    for (auto &coroutine : coroutines){
    800015e0:	fc840493          	addi	s1,s0,-56
    800015e4:	0500006f          	j	80001634 <main+0xe8>
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    800015e8:	00003797          	auipc	a5,0x3
    800015ec:	0f87b783          	ld	a5,248(a5) # 800046e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800015f0:	0007b783          	ld	a5,0(a5)
    800015f4:	00003697          	auipc	a3,0x3
    800015f8:	11c6b683          	ld	a3,284(a3) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    800015fc:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    80001600:	00003717          	auipc	a4,0x3
    80001604:	11873703          	ld	a4,280(a4) # 80004718 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001608:	00073703          	ld	a4,0(a4)
    8000160c:	40f70733          	sub	a4,a4,a5
    80001610:	00e7b823          	sd	a4,16(a5)
                                        (char *) HEAP_START_ADDR); //da li smem ovo da castujem u size_t
            fmem_head->next = nullptr;
    80001614:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    80001618:	0006b783          	ld	a5,0(a3)
    8000161c:	0007b423          	sd	zero,8(a5)
            static MemoryAllocation* instance;
            return instance;
    80001620:	f55ff06f          	j	80001574 <main+0x28>
        delete coroutine;
    80001624:	00090513          	mv	a0,s2
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	27c080e7          	jalr	636(ra) # 800018a4 <_ZdlPv>
    for (auto &coroutine : coroutines){
    80001630:	00848493          	addi	s1,s1,8
    80001634:	fe040793          	addi	a5,s0,-32
    80001638:	02f48063          	beq	s1,a5,80001658 <main+0x10c>
        delete coroutine;
    8000163c:	0004b903          	ld	s2,0(s1)
    80001640:	fe0908e3          	beqz	s2,80001630 <main+0xe4>

class TCB{

public:

    TCB(){ delete[] stack;}
    80001644:	00893503          	ld	a0,8(s2)
    80001648:	fc050ee3          	beqz	a0,80001624 <main+0xd8>
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	368080e7          	jalr	872(ra) # 800019b4 <_ZdaPv>
    80001654:	fd1ff06f          	j	80001624 <main+0xd8>
    }

    printString("finished\n");
    80001658:	00003517          	auipc	a0,0x3
    8000165c:	a5050513          	addi	a0,a0,-1456 # 800040a8 <CONSOLE_STATUS+0x98>
    80001660:	00000097          	auipc	ra,0x0
    80001664:	684080e7          	jalr	1668(ra) # 80001ce4 <_Z11printStringPKc>

    return 0;
    80001668:	00000513          	li	a0,0
    8000166c:	03813083          	ld	ra,56(sp)
    80001670:	03013403          	ld	s0,48(sp)
    80001674:	02813483          	ld	s1,40(sp)
    80001678:	02013903          	ld	s2,32(sp)
    8000167c:	04010113          	addi	sp,sp,64
    80001680:	00008067          	ret

0000000080001684 <_Znwm>:
#include "../h/MemoryAllocation.hpp"

void *operator new(uint64 n){
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00813423          	sd	s0,8(sp)
    8000168c:	01010413          	addi	s0,sp,16
        tryToJoin(newSeg);
        tryToJoin(cur);
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        size=size*(size_t)MEM_BLOCK_SIZE+sizeof(fmem_head); //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80001690:	00651793          	slli	a5,a0,0x6
    80001694:	00878793          	addi	a5,a5,8
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001698:	00003717          	auipc	a4,0x3
    8000169c:	07873703          	ld	a4,120(a4) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    800016a0:	00073503          	ld	a0,0(a4)
    800016a4:	0c050863          	beqz	a0,80001774 <_Znwm+0xf0>
            cur->next=fmem_head->next;
    800016a8:	00003717          	auipc	a4,0x3
    800016ac:	06873703          	ld	a4,104(a4) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    800016b0:	00073683          	ld	a3,0(a4)
    800016b4:	0006b683          	ld	a3,0(a3)
    800016b8:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    800016bc:	00073703          	ld	a4,0(a4)
    800016c0:	00873603          	ld	a2,8(a4)
    800016c4:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    800016c8:	01053703          	ld	a4,16(a0)
    800016cc:	02f76663          	bltu	a4,a5,800016f8 <_Znwm+0x74>
            if (cur->size-size<=sizeof(FreeMem)){
    800016d0:	40f70733          	sub	a4,a4,a5
    800016d4:	01800593          	li	a1,24
    800016d8:	02e5ec63          	bltu	a1,a4,80001710 <_Znwm+0x8c>
                if (cur->prev) cur->prev->next = cur->next;
    800016dc:	02060263          	beqz	a2,80001700 <_Znwm+0x7c>
    800016e0:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    800016e4:	00053783          	ld	a5,0(a0)
    800016e8:	08078663          	beqz	a5,80001774 <_Znwm+0xf0>
    800016ec:	00853703          	ld	a4,8(a0)
    800016f0:	00e7b423          	sd	a4,8(a5)
                return cur;
    800016f4:	0800006f          	j	80001774 <_Znwm+0xf0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800016f8:	00068513          	mv	a0,a3
    800016fc:	fa9ff06f          	j	800016a4 <_Znwm+0x20>
                else fmem_head = cur->next;
    80001700:	00003797          	auipc	a5,0x3
    80001704:	0107b783          	ld	a5,16(a5) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001708:	00d7b023          	sd	a3,0(a5)
    8000170c:	fd9ff06f          	j	800016e4 <_Znwm+0x60>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001710:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80001714:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001718:	00073023          	sd	zero,0(a4)
                if (cur->prev) cur->prev->next = newfrgm;
    8000171c:	00853683          	ld	a3,8(a0)
    80001720:	06068063          	beqz	a3,80001780 <_Znwm+0xfc>
    80001724:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
                if (cur->next) cur->next->prev = newfrgm;
    80001728:	00053683          	ld	a3,0(a0)
    8000172c:	00068463          	beqz	a3,80001734 <_Znwm+0xb0>
    80001730:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001734:	00853603          	ld	a2,8(a0)
    80001738:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    8000173c:	00053683          	ld	a3,0(a0)
    80001740:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001744:	01053503          	ld	a0,16(a0)
    80001748:	40f507b3          	sub	a5,a0,a5
    8000174c:	00f73823          	sd	a5,16(a4)
                fmem_head = newfrgm+sizeof(fmem_head);
    80001750:	0c070693          	addi	a3,a4,192
    80001754:	00003597          	auipc	a1,0x3
    80001758:	fbc5b583          	ld	a1,-68(a1) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000175c:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001760:	00073583          	ld	a1,0(a4)
    80001764:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001768:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    8000176c:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001770:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(n); //njemu je samo __mem_alloc???
}
    80001774:	00813403          	ld	s0,8(sp)
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
    80001780:	0c070693          	addi	a3,a4,192
    80001784:	00003617          	auipc	a2,0x3
    80001788:	f8c63603          	ld	a2,-116(a2) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000178c:	00d63023          	sd	a3,0(a2)
    80001790:	f99ff06f          	j	80001728 <_Znwm+0xa4>

0000000080001794 <_Znam>:

void *operator new[](uint64 n){
    80001794:	ff010113          	addi	sp,sp,-16
    80001798:	00813423          	sd	s0,8(sp)
    8000179c:	01010413          	addi	s0,sp,16
        size=size*(size_t)MEM_BLOCK_SIZE+sizeof(fmem_head); //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    800017a0:	00651793          	slli	a5,a0,0x6
    800017a4:	00878793          	addi	a5,a5,8
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    800017a8:	00003717          	auipc	a4,0x3
    800017ac:	f6873703          	ld	a4,-152(a4) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    800017b0:	00073503          	ld	a0,0(a4)
    800017b4:	0c050863          	beqz	a0,80001884 <_Znam+0xf0>
            cur->next=fmem_head->next;
    800017b8:	00003717          	auipc	a4,0x3
    800017bc:	f5873703          	ld	a4,-168(a4) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    800017c0:	00073683          	ld	a3,0(a4)
    800017c4:	0006b683          	ld	a3,0(a3)
    800017c8:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    800017cc:	00073703          	ld	a4,0(a4)
    800017d0:	00873603          	ld	a2,8(a4)
    800017d4:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    800017d8:	01053703          	ld	a4,16(a0)
    800017dc:	02f76663          	bltu	a4,a5,80001808 <_Znam+0x74>
            if (cur->size-size<=sizeof(FreeMem)){
    800017e0:	40f70733          	sub	a4,a4,a5
    800017e4:	01800593          	li	a1,24
    800017e8:	02e5ec63          	bltu	a1,a4,80001820 <_Znam+0x8c>
                if (cur->prev) cur->prev->next = cur->next;
    800017ec:	02060263          	beqz	a2,80001810 <_Znam+0x7c>
    800017f0:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    800017f4:	00053783          	ld	a5,0(a0)
    800017f8:	08078663          	beqz	a5,80001884 <_Znam+0xf0>
    800017fc:	00853703          	ld	a4,8(a0)
    80001800:	00e7b423          	sd	a4,8(a5)
                return cur;
    80001804:	0800006f          	j	80001884 <_Znam+0xf0>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001808:	00068513          	mv	a0,a3
    8000180c:	fa9ff06f          	j	800017b4 <_Znam+0x20>
                else fmem_head = cur->next;
    80001810:	00003797          	auipc	a5,0x3
    80001814:	f007b783          	ld	a5,-256(a5) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001818:	00d7b023          	sd	a3,0(a5)
    8000181c:	fd9ff06f          	j	800017f4 <_Znam+0x60>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001820:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80001824:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001828:	00073023          	sd	zero,0(a4)
                if (cur->prev) cur->prev->next = newfrgm;
    8000182c:	00853683          	ld	a3,8(a0)
    80001830:	06068063          	beqz	a3,80001890 <_Znam+0xfc>
    80001834:	00e6b023          	sd	a4,0(a3)
                if (cur->next) cur->next->prev = newfrgm;
    80001838:	00053683          	ld	a3,0(a0)
    8000183c:	00068463          	beqz	a3,80001844 <_Znam+0xb0>
    80001840:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001844:	00853603          	ld	a2,8(a0)
    80001848:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    8000184c:	00053683          	ld	a3,0(a0)
    80001850:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001854:	01053503          	ld	a0,16(a0)
    80001858:	40f507b3          	sub	a5,a0,a5
    8000185c:	00f73823          	sd	a5,16(a4)
                fmem_head = newfrgm+sizeof(fmem_head);
    80001860:	0c070693          	addi	a3,a4,192
    80001864:	00003597          	auipc	a1,0x3
    80001868:	eac5b583          	ld	a1,-340(a1) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000186c:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001870:	00073583          	ld	a1,0(a4)
    80001874:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001878:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    8000187c:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001880:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(n);
}
    80001884:	00813403          	ld	s0,8(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc
    80001890:	0c070693          	addi	a3,a4,192
    80001894:	00003617          	auipc	a2,0x3
    80001898:	e7c63603          	ld	a2,-388(a2) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000189c:	00d63023          	sd	a3,0(a2)
    800018a0:	f99ff06f          	j	80001838 <_Znam+0xa4>

00000000800018a4 <_ZdlPv>:

void operator delete(void *p) noexcept {
    800018a4:	ff010113          	addi	sp,sp,-16
    800018a8:	00813423          	sd	s0,8(sp)
    800018ac:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    800018b0:	00003797          	auipc	a5,0x3
    800018b4:	e607b783          	ld	a5,-416(a5) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    800018b8:	0007b703          	ld	a4,0(a5)
    800018bc:	00070e63          	beqz	a4,800018d8 <_ZdlPv+0x34>
    800018c0:	02e56063          	bltu	a0,a4,800018e0 <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800018c4:	00070793          	mv	a5,a4
    800018c8:	00073703          	ld	a4,0(a4)
    800018cc:	00e50c63          	beq	a0,a4,800018e4 <_ZdlPv+0x40>
    800018d0:	fea76ae3          	bltu	a4,a0,800018c4 <_ZdlPv+0x20>
    800018d4:	0100006f          	j	800018e4 <_ZdlPv+0x40>
            cur=nullptr;
    800018d8:	00070793          	mv	a5,a4
    800018dc:	0080006f          	j	800018e4 <_ZdlPv+0x40>
    800018e0:	00000793          	li	a5,0
                newSeg->next=nullptr;
    800018e4:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE+sizeof(fmem_head);
    800018e8:	04800713          	li	a4,72
    800018ec:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    800018f0:	00f53423          	sd	a5,8(a0)
                if(cur) {
    800018f4:	04078e63          	beqz	a5,80001950 <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    800018f8:	0007b703          	ld	a4,0(a5)
    800018fc:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80001900:	00053703          	ld	a4,0(a0)
    80001904:	00070463          	beqz	a4,8000190c <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    80001908:	00a73423          	sd	a0,8(a4)
                if (cur) {
    8000190c:	04078c63          	beqz	a5,80001964 <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001910:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80001914:	00050c63          	beqz	a0,8000192c <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001918:	00053703          	ld	a4,0(a0)
    8000191c:	00070863          	beqz	a4,8000192c <_ZdlPv+0x88>
    80001920:	01053683          	ld	a3,16(a0)
    80001924:	00d50633          	add	a2,a0,a3
    80001928:	04c70663          	beq	a4,a2,80001974 <_ZdlPv+0xd0>
        if (!curr) return;
    8000192c:	00078c63          	beqz	a5,80001944 <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001930:	0007b703          	ld	a4,0(a5)
    80001934:	00070863          	beqz	a4,80001944 <_ZdlPv+0xa0>
    80001938:	0107b683          	ld	a3,16(a5)
    8000193c:	00d78633          	add	a2,a5,a3
    80001940:	04c70a63          	beq	a4,a2,80001994 <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
}
    80001944:	00813403          	ld	s0,8(sp)
    80001948:	01010113          	addi	sp,sp,16
    8000194c:	00008067          	ret
                    newSeg->next = fmem_head;
    80001950:	00003717          	auipc	a4,0x3
    80001954:	dc073703          	ld	a4,-576(a4) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001958:	00073703          	ld	a4,0(a4)
    8000195c:	00e53023          	sd	a4,0(a0)
    80001960:	fa1ff06f          	j	80001900 <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    80001964:	00003717          	auipc	a4,0x3
    80001968:	dac73703          	ld	a4,-596(a4) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000196c:	00a73023          	sd	a0,0(a4)
    80001970:	fa5ff06f          	j	80001914 <_ZdlPv+0x70>
            curr->size += curr->next->size;
    80001974:	01073603          	ld	a2,16(a4)
    80001978:	00c686b3          	add	a3,a3,a2
    8000197c:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80001980:	00073703          	ld	a4,0(a4)
    80001984:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80001988:	fa0702e3          	beqz	a4,8000192c <_ZdlPv+0x88>
    8000198c:	00a73423          	sd	a0,8(a4)
    80001990:	f9dff06f          	j	8000192c <_ZdlPv+0x88>
            curr->size += curr->next->size;
    80001994:	01073603          	ld	a2,16(a4)
    80001998:	00c686b3          	add	a3,a3,a2
    8000199c:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    800019a0:	00073703          	ld	a4,0(a4)
    800019a4:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    800019a8:	f8070ee3          	beqz	a4,80001944 <_ZdlPv+0xa0>
    800019ac:	00f73423          	sd	a5,8(a4)
    800019b0:	f95ff06f          	j	80001944 <_ZdlPv+0xa0>

00000000800019b4 <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    800019b4:	ff010113          	addi	sp,sp,-16
    800019b8:	00813423          	sd	s0,8(sp)
    800019bc:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    800019c0:	00003797          	auipc	a5,0x3
    800019c4:	d507b783          	ld	a5,-688(a5) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    800019c8:	0007b703          	ld	a4,0(a5)
    800019cc:	00070e63          	beqz	a4,800019e8 <_ZdaPv+0x34>
    800019d0:	02e56063          	bltu	a0,a4,800019f0 <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    800019d4:	00070793          	mv	a5,a4
    800019d8:	00073703          	ld	a4,0(a4)
    800019dc:	00e50c63          	beq	a0,a4,800019f4 <_ZdaPv+0x40>
    800019e0:	fea76ae3          	bltu	a4,a0,800019d4 <_ZdaPv+0x20>
    800019e4:	0100006f          	j	800019f4 <_ZdaPv+0x40>
            cur=nullptr;
    800019e8:	00070793          	mv	a5,a4
    800019ec:	0080006f          	j	800019f4 <_ZdaPv+0x40>
    800019f0:	00000793          	li	a5,0
                newSeg->next=nullptr;
    800019f4:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE+sizeof(fmem_head);
    800019f8:	04800713          	li	a4,72
    800019fc:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80001a00:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80001a04:	04078e63          	beqz	a5,80001a60 <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    80001a08:	0007b703          	ld	a4,0(a5)
    80001a0c:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80001a10:	00053703          	ld	a4,0(a0)
    80001a14:	00070463          	beqz	a4,80001a1c <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    80001a18:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80001a1c:	04078c63          	beqz	a5,80001a74 <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001a20:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80001a24:	00050c63          	beqz	a0,80001a3c <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001a28:	00053703          	ld	a4,0(a0)
    80001a2c:	00070863          	beqz	a4,80001a3c <_ZdaPv+0x88>
    80001a30:	01053683          	ld	a3,16(a0)
    80001a34:	00d50633          	add	a2,a0,a3
    80001a38:	04c70663          	beq	a4,a2,80001a84 <_ZdaPv+0xd0>
        if (!curr) return;
    80001a3c:	00078c63          	beqz	a5,80001a54 <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001a40:	0007b703          	ld	a4,0(a5)
    80001a44:	00070863          	beqz	a4,80001a54 <_ZdaPv+0xa0>
    80001a48:	0107b683          	ld	a3,16(a5)
    80001a4c:	00d78633          	add	a2,a5,a3
    80001a50:	04c70a63          	beq	a4,a2,80001aa4 <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    80001a54:	00813403          	ld	s0,8(sp)
    80001a58:	01010113          	addi	sp,sp,16
    80001a5c:	00008067          	ret
                    newSeg->next = fmem_head;
    80001a60:	00003717          	auipc	a4,0x3
    80001a64:	cb073703          	ld	a4,-848(a4) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001a68:	00073703          	ld	a4,0(a4)
    80001a6c:	00e53023          	sd	a4,0(a0)
    80001a70:	fa1ff06f          	j	80001a10 <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    80001a74:	00003717          	auipc	a4,0x3
    80001a78:	c9c73703          	ld	a4,-868(a4) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001a7c:	00a73023          	sd	a0,0(a4)
    80001a80:	fa5ff06f          	j	80001a24 <_ZdaPv+0x70>
            curr->size += curr->next->size;
    80001a84:	01073603          	ld	a2,16(a4)
    80001a88:	00c686b3          	add	a3,a3,a2
    80001a8c:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80001a90:	00073703          	ld	a4,0(a4)
    80001a94:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80001a98:	fa0702e3          	beqz	a4,80001a3c <_ZdaPv+0x88>
    80001a9c:	00a73423          	sd	a0,8(a4)
    80001aa0:	f9dff06f          	j	80001a3c <_ZdaPv+0x88>
            curr->size += curr->next->size;
    80001aa4:	01073603          	ld	a2,16(a4)
    80001aa8:	00c686b3          	add	a3,a3,a2
    80001aac:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80001ab0:	00073703          	ld	a4,0(a4)
    80001ab4:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80001ab8:	f8070ee3          	beqz	a4,80001a54 <_ZdaPv+0xa0>
    80001abc:	00f73423          	sd	a5,8(a4)
    80001ac0:	f95ff06f          	j	80001a54 <_ZdaPv+0xa0>

0000000080001ac4 <_ZNK3CCB10isFinishedEv>:
#include "../h/ccb.hpp"
#include "../h/RiscV.hpp"
#include "../h/Scheduler.hpp"


bool TCB::isFinished() const {
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00813423          	sd	s0,8(sp)
    80001acc:	01010413          	addi	s0,sp,16
    return finished;
}
    80001ad0:	02054503          	lbu	a0,32(a0)
    80001ad4:	00813403          	ld	s0,8(sp)
    80001ad8:	01010113          	addi	sp,sp,16
    80001adc:	00008067          	ret

0000000080001ae0 <_ZN3CCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80001ae0:	ff010113          	addi	sp,sp,-16
    80001ae4:	00813423          	sd	s0,8(sp)
    80001ae8:	01010413          	addi	s0,sp,16
    TCB::finished = finished;
    80001aec:	02b50023          	sb	a1,32(a0)
}
    80001af0:	00813403          	ld	s0,8(sp)
    80001af4:	01010113          	addi	sp,sp,16
    80001af8:	00008067          	ret

0000000080001afc <_ZN3CCB15createCoroutineEPFvvE>:
TCB* TCB::running = nullptr;

TCB* TCB::createCoroutine(TCB::Body body) {
    80001afc:	fe010113          	addi	sp,sp,-32
    80001b00:	00113c23          	sd	ra,24(sp)
    80001b04:	00813823          	sd	s0,16(sp)
    80001b08:	00913423          	sd	s1,8(sp)
    80001b0c:	01213023          	sd	s2,0(sp)
    80001b10:	02010413          	addi	s0,sp,32
    80001b14:	00050913          	mv	s2,a0
    return new TCB(body);
    80001b18:	02800513          	li	a0,40
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	b68080e7          	jalr	-1176(ra) # 80001684 <_Znwm>
    80001b24:	00050493          	mv	s1,a0
            stack(body!=nullptr ? new uint64[1024] : nullptr),
            context({body!=nullptr ? (uint64) body : 0,
                     stack !=nullptr ? (uint64)&stack[1024] : 0
                     }
                    ),
            finished(false)
    80001b28:	01253023          	sd	s2,0(a0)
            stack(body!=nullptr ? new uint64[1024] : nullptr),
    80001b2c:	00090a63          	beqz	s2,80001b40 <_ZN3CCB15createCoroutineEPFvvE+0x44>
    80001b30:	00002537          	lui	a0,0x2
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	c60080e7          	jalr	-928(ra) # 80001794 <_Znam>
    80001b3c:	0080006f          	j	80001b44 <_ZN3CCB15createCoroutineEPFvvE+0x48>
    80001b40:	00000513          	li	a0,0
            finished(false)
    80001b44:	00a4b423          	sd	a0,8(s1)
            context({body!=nullptr ? (uint64) body : 0,
    80001b48:	02090a63          	beqz	s2,80001b7c <_ZN3CCB15createCoroutineEPFvvE+0x80>
    80001b4c:	00090793          	mv	a5,s2
            finished(false)
    80001b50:	00f4b823          	sd	a5,16(s1)
                     stack !=nullptr ? (uint64)&stack[1024] : 0
    80001b54:	02050863          	beqz	a0,80001b84 <_ZN3CCB15createCoroutineEPFvvE+0x88>
    80001b58:	000027b7          	lui	a5,0x2
    80001b5c:	00f50533          	add	a0,a0,a5
            finished(false)
    80001b60:	00a4bc23          	sd	a0,24(s1)
    80001b64:	02048023          	sb	zero,32(s1)
    {
        if(body!=nullptr) {Scheduler::put(this);}
    80001b68:	04090063          	beqz	s2,80001ba8 <_ZN3CCB15createCoroutineEPFvvE+0xac>
    80001b6c:	00048513          	mv	a0,s1
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	93c080e7          	jalr	-1732(ra) # 800014ac <_ZN9Scheduler3putEP3CCB>
    80001b78:	0300006f          	j	80001ba8 <_ZN3CCB15createCoroutineEPFvvE+0xac>
            context({body!=nullptr ? (uint64) body : 0,
    80001b7c:	00000793          	li	a5,0
    80001b80:	fd1ff06f          	j	80001b50 <_ZN3CCB15createCoroutineEPFvvE+0x54>
                     stack !=nullptr ? (uint64)&stack[1024] : 0
    80001b84:	00000513          	li	a0,0
    80001b88:	fd9ff06f          	j	80001b60 <_ZN3CCB15createCoroutineEPFvvE+0x64>
    80001b8c:	00050913          	mv	s2,a0
    80001b90:	00048513          	mv	a0,s1
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	d10080e7          	jalr	-752(ra) # 800018a4 <_ZdlPv>
    80001b9c:	00090513          	mv	a0,s2
    80001ba0:	00004097          	auipc	ra,0x4
    80001ba4:	cc8080e7          	jalr	-824(ra) # 80005868 <_Unwind_Resume>
}
    80001ba8:	00048513          	mv	a0,s1
    80001bac:	01813083          	ld	ra,24(sp)
    80001bb0:	01013403          	ld	s0,16(sp)
    80001bb4:	00813483          	ld	s1,8(sp)
    80001bb8:	00013903          	ld	s2,0(sp)
    80001bbc:	02010113          	addi	sp,sp,32
    80001bc0:	00008067          	ret

0000000080001bc4 <_ZN3CCB8dispatchEv>:

    RiscV::popRegisters();

};

void TCB::dispatch() {
    80001bc4:	fe010113          	addi	sp,sp,-32
    80001bc8:	00113c23          	sd	ra,24(sp)
    80001bcc:	00813823          	sd	s0,16(sp)
    80001bd0:	00913423          	sd	s1,8(sp)
    80001bd4:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001bd8:	00003497          	auipc	s1,0x3
    80001bdc:	ba84b483          	ld	s1,-1112(s1) # 80004780 <_ZN3CCB7runningE>
    if (!old->isFinished()) {
    80001be0:	00048513          	mv	a0,s1
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	ee0080e7          	jalr	-288(ra) # 80001ac4 <_ZNK3CCB10isFinishedEv>
    80001bec:	02050c63          	beqz	a0,80001c24 <_ZN3CCB8dispatchEv+0x60>
        Scheduler::put(old);
    }
    running = Scheduler::get();
    80001bf0:	00000097          	auipc	ra,0x0
    80001bf4:	854080e7          	jalr	-1964(ra) # 80001444 <_ZN9Scheduler3getEv>
    80001bf8:	00003797          	auipc	a5,0x3
    80001bfc:	b8a7b423          	sd	a0,-1144(a5) # 80004780 <_ZN3CCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    80001c00:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001c04:	01048513          	addi	a0,s1,16
    80001c08:	fffff097          	auipc	ra,0xfffff
    80001c0c:	4f0080e7          	jalr	1264(ra) # 800010f8 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
    80001c10:	01813083          	ld	ra,24(sp)
    80001c14:	01013403          	ld	s0,16(sp)
    80001c18:	00813483          	ld	s1,8(sp)
    80001c1c:	02010113          	addi	sp,sp,32
    80001c20:	00008067          	ret
        Scheduler::put(old);
    80001c24:	00048513          	mv	a0,s1
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	884080e7          	jalr	-1916(ra) # 800014ac <_ZN9Scheduler3putEP3CCB>
    80001c30:	fc1ff06f          	j	80001bf0 <_ZN3CCB8dispatchEv+0x2c>

0000000080001c34 <_ZN3CCB5yieldEv>:
void TCB::yield(){
    80001c34:	ff010113          	addi	sp,sp,-16
    80001c38:	00113423          	sd	ra,8(sp)
    80001c3c:	00813023          	sd	s0,0(sp)
    80001c40:	01010413          	addi	s0,sp,16
    RiscV::pushRegisters();
    80001c44:	fffff097          	auipc	ra,0xfffff
    80001c48:	3bc080e7          	jalr	956(ra) # 80001000 <_ZN5RiscV13pushRegistersEv>
    TCB::dispatch();
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	f78080e7          	jalr	-136(ra) # 80001bc4 <_ZN3CCB8dispatchEv>
    RiscV::popRegisters();
    80001c54:	fffff097          	auipc	ra,0xfffff
    80001c58:	428080e7          	jalr	1064(ra) # 8000107c <_ZN5RiscV12popRegistersEv>
};
    80001c5c:	00813083          	ld	ra,8(sp)
    80001c60:	00013403          	ld	s0,0(sp)
    80001c64:	01010113          	addi	sp,sp,16
    80001c68:	00008067          	ret

0000000080001c6c <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00813423          	sd	s0,8(sp)
    80001c74:	01010413          	addi	s0,sp,16
    80001c78:	00100793          	li	a5,1
    80001c7c:	00f50863          	beq	a0,a5,80001c8c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001c80:	00813403          	ld	s0,8(sp)
    80001c84:	01010113          	addi	sp,sp,16
    80001c88:	00008067          	ret
    80001c8c:	000107b7          	lui	a5,0x10
    80001c90:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c94:	fef596e3          	bne	a1,a5,80001c80 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80001c98:	00003797          	auipc	a5,0x3
    80001c9c:	a487b783          	ld	a5,-1464(a5) # 800046e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ca0:	0007b783          	ld	a5,0(a5)
    80001ca4:	00003717          	auipc	a4,0x3
    80001ca8:	aef73223          	sd	a5,-1308(a4) # 80004788 <_ZN16MemoryAllocation9fmem_headE>
    80001cac:	fd5ff06f          	j	80001c80 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001cb0 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00113423          	sd	ra,8(sp)
    80001cb8:	00813023          	sd	s0,0(sp)
    80001cbc:	01010413          	addi	s0,sp,16
    80001cc0:	000105b7          	lui	a1,0x10
    80001cc4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001cc8:	00100513          	li	a0,1
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	fa0080e7          	jalr	-96(ra) # 80001c6c <_Z41__static_initialization_and_destruction_0ii>
    80001cd4:	00813083          	ld	ra,8(sp)
    80001cd8:	00013403          	ld	s0,0(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <_Z11printStringPKc>:
//

#include "../h/Print.hpp"
#include "../lib/console.h"

void printString(char const *string){
    80001ce4:	fe010113          	addi	sp,sp,-32
    80001ce8:	00113c23          	sd	ra,24(sp)
    80001cec:	00813823          	sd	s0,16(sp)
    80001cf0:	00913423          	sd	s1,8(sp)
    80001cf4:	02010413          	addi	s0,sp,32
    80001cf8:	00050493          	mv	s1,a0
    while(*string!='\0'){
    80001cfc:	0004c503          	lbu	a0,0(s1)
    80001d00:	00050a63          	beqz	a0,80001d14 <_Z11printStringPKc+0x30>
        __putc(*string);
    80001d04:	00002097          	auipc	ra,0x2
    80001d08:	178080e7          	jalr	376(ra) # 80003e7c <__putc>
        string++;
    80001d0c:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80001d10:	fedff06f          	j	80001cfc <_Z11printStringPKc+0x18>
    }
}
    80001d14:	01813083          	ld	ra,24(sp)
    80001d18:	01013403          	ld	s0,16(sp)
    80001d1c:	00813483          	ld	s1,8(sp)
    80001d20:	02010113          	addi	sp,sp,32
    80001d24:	00008067          	ret

0000000080001d28 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    80001d28:	fd010113          	addi	sp,sp,-48
    80001d2c:	02113423          	sd	ra,40(sp)
    80001d30:	02813023          	sd	s0,32(sp)
    80001d34:	00913c23          	sd	s1,24(sp)
    80001d38:	03010413          	addi	s0,sp,48
    neg=0;
    if(integer<0){
        neg=1;
        x=-integer;
    }else{
        x=integer;
    80001d3c:	0005051b          	sext.w	a0,a0
    }

    i=0;
    80001d40:	00000493          	li	s1,0
    do {
        buf[i++] = digits [x%10];
    80001d44:	00a00613          	li	a2,10
    80001d48:	02c5773b          	remuw	a4,a0,a2
    80001d4c:	02071693          	slli	a3,a4,0x20
    80001d50:	0206d693          	srli	a3,a3,0x20
    80001d54:	00002717          	auipc	a4,0x2
    80001d58:	36470713          	addi	a4,a4,868 # 800040b8 <_ZZ12printIntegermE6digits>
    80001d5c:	00d70733          	add	a4,a4,a3
    80001d60:	00074703          	lbu	a4,0(a4)
    80001d64:	fe040693          	addi	a3,s0,-32
    80001d68:	009687b3          	add	a5,a3,s1
    80001d6c:	0014849b          	addiw	s1,s1,1
    80001d70:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80001d74:	0005071b          	sext.w	a4,a0
    80001d78:	02c5553b          	divuw	a0,a0,a2
    80001d7c:	00900793          	li	a5,9
    80001d80:	fce7e2e3          	bltu	a5,a4,80001d44 <_Z12printIntegerm+0x1c>
    if(neg) buf[i++] = '-';

    while(--i >= 0){
    80001d84:	fff4849b          	addiw	s1,s1,-1
    80001d88:	0004ce63          	bltz	s1,80001da4 <_Z12printIntegerm+0x7c>
        __putc(buf[i]);
    80001d8c:	fe040793          	addi	a5,s0,-32
    80001d90:	009787b3          	add	a5,a5,s1
    80001d94:	ff07c503          	lbu	a0,-16(a5)
    80001d98:	00002097          	auipc	ra,0x2
    80001d9c:	0e4080e7          	jalr	228(ra) # 80003e7c <__putc>
    80001da0:	fe5ff06f          	j	80001d84 <_Z12printIntegerm+0x5c>
    }
    80001da4:	02813083          	ld	ra,40(sp)
    80001da8:	02013403          	ld	s0,32(sp)
    80001dac:	01813483          	ld	s1,24(sp)
    80001db0:	03010113          	addi	sp,sp,48
    80001db4:	00008067          	ret

0000000080001db8 <start>:
    80001db8:	ff010113          	addi	sp,sp,-16
    80001dbc:	00813423          	sd	s0,8(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    80001dc4:	300027f3          	csrr	a5,mstatus
    80001dc8:	ffffe737          	lui	a4,0xffffe
    80001dcc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8dff>
    80001dd0:	00e7f7b3          	and	a5,a5,a4
    80001dd4:	00001737          	lui	a4,0x1
    80001dd8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001ddc:	00e7e7b3          	or	a5,a5,a4
    80001de0:	30079073          	csrw	mstatus,a5
    80001de4:	00000797          	auipc	a5,0x0
    80001de8:	16078793          	addi	a5,a5,352 # 80001f44 <system_main>
    80001dec:	34179073          	csrw	mepc,a5
    80001df0:	00000793          	li	a5,0
    80001df4:	18079073          	csrw	satp,a5
    80001df8:	000107b7          	lui	a5,0x10
    80001dfc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e00:	30279073          	csrw	medeleg,a5
    80001e04:	30379073          	csrw	mideleg,a5
    80001e08:	104027f3          	csrr	a5,sie
    80001e0c:	2227e793          	ori	a5,a5,546
    80001e10:	10479073          	csrw	sie,a5
    80001e14:	fff00793          	li	a5,-1
    80001e18:	00a7d793          	srli	a5,a5,0xa
    80001e1c:	3b079073          	csrw	pmpaddr0,a5
    80001e20:	00f00793          	li	a5,15
    80001e24:	3a079073          	csrw	pmpcfg0,a5
    80001e28:	f14027f3          	csrr	a5,mhartid
    80001e2c:	0200c737          	lui	a4,0x200c
    80001e30:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e34:	0007869b          	sext.w	a3,a5
    80001e38:	00269713          	slli	a4,a3,0x2
    80001e3c:	000f4637          	lui	a2,0xf4
    80001e40:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e44:	00d70733          	add	a4,a4,a3
    80001e48:	0037979b          	slliw	a5,a5,0x3
    80001e4c:	020046b7          	lui	a3,0x2004
    80001e50:	00d787b3          	add	a5,a5,a3
    80001e54:	00c585b3          	add	a1,a1,a2
    80001e58:	00371693          	slli	a3,a4,0x3
    80001e5c:	00003717          	auipc	a4,0x3
    80001e60:	94470713          	addi	a4,a4,-1724 # 800047a0 <timer_scratch>
    80001e64:	00b7b023          	sd	a1,0(a5)
    80001e68:	00d70733          	add	a4,a4,a3
    80001e6c:	00f73c23          	sd	a5,24(a4)
    80001e70:	02c73023          	sd	a2,32(a4)
    80001e74:	34071073          	csrw	mscratch,a4
    80001e78:	00000797          	auipc	a5,0x0
    80001e7c:	6e878793          	addi	a5,a5,1768 # 80002560 <timervec>
    80001e80:	30579073          	csrw	mtvec,a5
    80001e84:	300027f3          	csrr	a5,mstatus
    80001e88:	0087e793          	ori	a5,a5,8
    80001e8c:	30079073          	csrw	mstatus,a5
    80001e90:	304027f3          	csrr	a5,mie
    80001e94:	0807e793          	ori	a5,a5,128
    80001e98:	30479073          	csrw	mie,a5
    80001e9c:	f14027f3          	csrr	a5,mhartid
    80001ea0:	0007879b          	sext.w	a5,a5
    80001ea4:	00078213          	mv	tp,a5
    80001ea8:	30200073          	mret
    80001eac:	00813403          	ld	s0,8(sp)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <timerinit>:
    80001eb8:	ff010113          	addi	sp,sp,-16
    80001ebc:	00813423          	sd	s0,8(sp)
    80001ec0:	01010413          	addi	s0,sp,16
    80001ec4:	f14027f3          	csrr	a5,mhartid
    80001ec8:	0200c737          	lui	a4,0x200c
    80001ecc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ed0:	0007869b          	sext.w	a3,a5
    80001ed4:	00269713          	slli	a4,a3,0x2
    80001ed8:	000f4637          	lui	a2,0xf4
    80001edc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ee0:	00d70733          	add	a4,a4,a3
    80001ee4:	0037979b          	slliw	a5,a5,0x3
    80001ee8:	020046b7          	lui	a3,0x2004
    80001eec:	00d787b3          	add	a5,a5,a3
    80001ef0:	00c585b3          	add	a1,a1,a2
    80001ef4:	00371693          	slli	a3,a4,0x3
    80001ef8:	00003717          	auipc	a4,0x3
    80001efc:	8a870713          	addi	a4,a4,-1880 # 800047a0 <timer_scratch>
    80001f00:	00b7b023          	sd	a1,0(a5)
    80001f04:	00d70733          	add	a4,a4,a3
    80001f08:	00f73c23          	sd	a5,24(a4)
    80001f0c:	02c73023          	sd	a2,32(a4)
    80001f10:	34071073          	csrw	mscratch,a4
    80001f14:	00000797          	auipc	a5,0x0
    80001f18:	64c78793          	addi	a5,a5,1612 # 80002560 <timervec>
    80001f1c:	30579073          	csrw	mtvec,a5
    80001f20:	300027f3          	csrr	a5,mstatus
    80001f24:	0087e793          	ori	a5,a5,8
    80001f28:	30079073          	csrw	mstatus,a5
    80001f2c:	304027f3          	csrr	a5,mie
    80001f30:	0807e793          	ori	a5,a5,128
    80001f34:	30479073          	csrw	mie,a5
    80001f38:	00813403          	ld	s0,8(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret

0000000080001f44 <system_main>:
    80001f44:	fe010113          	addi	sp,sp,-32
    80001f48:	00813823          	sd	s0,16(sp)
    80001f4c:	00913423          	sd	s1,8(sp)
    80001f50:	00113c23          	sd	ra,24(sp)
    80001f54:	02010413          	addi	s0,sp,32
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	0c4080e7          	jalr	196(ra) # 8000201c <cpuid>
    80001f60:	00002497          	auipc	s1,0x2
    80001f64:	7e048493          	addi	s1,s1,2016 # 80004740 <started>
    80001f68:	02050263          	beqz	a0,80001f8c <system_main+0x48>
    80001f6c:	0004a783          	lw	a5,0(s1)
    80001f70:	0007879b          	sext.w	a5,a5
    80001f74:	fe078ce3          	beqz	a5,80001f6c <system_main+0x28>
    80001f78:	0ff0000f          	fence
    80001f7c:	00002517          	auipc	a0,0x2
    80001f80:	17c50513          	addi	a0,a0,380 # 800040f8 <_ZZ12printIntegermE6digits+0x40>
    80001f84:	00001097          	auipc	ra,0x1
    80001f88:	a78080e7          	jalr	-1416(ra) # 800029fc <panic>
    80001f8c:	00001097          	auipc	ra,0x1
    80001f90:	9cc080e7          	jalr	-1588(ra) # 80002958 <consoleinit>
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	158080e7          	jalr	344(ra) # 800030ec <printfinit>
    80001f9c:	00002517          	auipc	a0,0x2
    80001fa0:	11450513          	addi	a0,a0,276 # 800040b0 <CONSOLE_STATUS+0xa0>
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	ab4080e7          	jalr	-1356(ra) # 80002a58 <__printf>
    80001fac:	00002517          	auipc	a0,0x2
    80001fb0:	11c50513          	addi	a0,a0,284 # 800040c8 <_ZZ12printIntegermE6digits+0x10>
    80001fb4:	00001097          	auipc	ra,0x1
    80001fb8:	aa4080e7          	jalr	-1372(ra) # 80002a58 <__printf>
    80001fbc:	00002517          	auipc	a0,0x2
    80001fc0:	0f450513          	addi	a0,a0,244 # 800040b0 <CONSOLE_STATUS+0xa0>
    80001fc4:	00001097          	auipc	ra,0x1
    80001fc8:	a94080e7          	jalr	-1388(ra) # 80002a58 <__printf>
    80001fcc:	00001097          	auipc	ra,0x1
    80001fd0:	4ac080e7          	jalr	1196(ra) # 80003478 <kinit>
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	148080e7          	jalr	328(ra) # 8000211c <trapinit>
    80001fdc:	00000097          	auipc	ra,0x0
    80001fe0:	16c080e7          	jalr	364(ra) # 80002148 <trapinithart>
    80001fe4:	00000097          	auipc	ra,0x0
    80001fe8:	5bc080e7          	jalr	1468(ra) # 800025a0 <plicinit>
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	5dc080e7          	jalr	1500(ra) # 800025c8 <plicinithart>
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	078080e7          	jalr	120(ra) # 8000206c <userinit>
    80001ffc:	0ff0000f          	fence
    80002000:	00100793          	li	a5,1
    80002004:	00002517          	auipc	a0,0x2
    80002008:	0dc50513          	addi	a0,a0,220 # 800040e0 <_ZZ12printIntegermE6digits+0x28>
    8000200c:	00f4a023          	sw	a5,0(s1)
    80002010:	00001097          	auipc	ra,0x1
    80002014:	a48080e7          	jalr	-1464(ra) # 80002a58 <__printf>
    80002018:	0000006f          	j	80002018 <system_main+0xd4>

000000008000201c <cpuid>:
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00813423          	sd	s0,8(sp)
    80002024:	01010413          	addi	s0,sp,16
    80002028:	00020513          	mv	a0,tp
    8000202c:	00813403          	ld	s0,8(sp)
    80002030:	0005051b          	sext.w	a0,a0
    80002034:	01010113          	addi	sp,sp,16
    80002038:	00008067          	ret

000000008000203c <mycpu>:
    8000203c:	ff010113          	addi	sp,sp,-16
    80002040:	00813423          	sd	s0,8(sp)
    80002044:	01010413          	addi	s0,sp,16
    80002048:	00020793          	mv	a5,tp
    8000204c:	00813403          	ld	s0,8(sp)
    80002050:	0007879b          	sext.w	a5,a5
    80002054:	00779793          	slli	a5,a5,0x7
    80002058:	00003517          	auipc	a0,0x3
    8000205c:	77850513          	addi	a0,a0,1912 # 800057d0 <cpus>
    80002060:	00f50533          	add	a0,a0,a5
    80002064:	01010113          	addi	sp,sp,16
    80002068:	00008067          	ret

000000008000206c <userinit>:
    8000206c:	ff010113          	addi	sp,sp,-16
    80002070:	00813423          	sd	s0,8(sp)
    80002074:	01010413          	addi	s0,sp,16
    80002078:	00813403          	ld	s0,8(sp)
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	fffff317          	auipc	t1,0xfffff
    80002084:	4cc30067          	jr	1228(t1) # 8000154c <main>

0000000080002088 <either_copyout>:
    80002088:	ff010113          	addi	sp,sp,-16
    8000208c:	00813023          	sd	s0,0(sp)
    80002090:	00113423          	sd	ra,8(sp)
    80002094:	01010413          	addi	s0,sp,16
    80002098:	02051663          	bnez	a0,800020c4 <either_copyout+0x3c>
    8000209c:	00058513          	mv	a0,a1
    800020a0:	00060593          	mv	a1,a2
    800020a4:	0006861b          	sext.w	a2,a3
    800020a8:	00002097          	auipc	ra,0x2
    800020ac:	c5c080e7          	jalr	-932(ra) # 80003d04 <__memmove>
    800020b0:	00813083          	ld	ra,8(sp)
    800020b4:	00013403          	ld	s0,0(sp)
    800020b8:	00000513          	li	a0,0
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret
    800020c4:	00002517          	auipc	a0,0x2
    800020c8:	05c50513          	addi	a0,a0,92 # 80004120 <_ZZ12printIntegermE6digits+0x68>
    800020cc:	00001097          	auipc	ra,0x1
    800020d0:	930080e7          	jalr	-1744(ra) # 800029fc <panic>

00000000800020d4 <either_copyin>:
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00813023          	sd	s0,0(sp)
    800020dc:	00113423          	sd	ra,8(sp)
    800020e0:	01010413          	addi	s0,sp,16
    800020e4:	02059463          	bnez	a1,8000210c <either_copyin+0x38>
    800020e8:	00060593          	mv	a1,a2
    800020ec:	0006861b          	sext.w	a2,a3
    800020f0:	00002097          	auipc	ra,0x2
    800020f4:	c14080e7          	jalr	-1004(ra) # 80003d04 <__memmove>
    800020f8:	00813083          	ld	ra,8(sp)
    800020fc:	00013403          	ld	s0,0(sp)
    80002100:	00000513          	li	a0,0
    80002104:	01010113          	addi	sp,sp,16
    80002108:	00008067          	ret
    8000210c:	00002517          	auipc	a0,0x2
    80002110:	03c50513          	addi	a0,a0,60 # 80004148 <_ZZ12printIntegermE6digits+0x90>
    80002114:	00001097          	auipc	ra,0x1
    80002118:	8e8080e7          	jalr	-1816(ra) # 800029fc <panic>

000000008000211c <trapinit>:
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00813423          	sd	s0,8(sp)
    80002124:	01010413          	addi	s0,sp,16
    80002128:	00813403          	ld	s0,8(sp)
    8000212c:	00002597          	auipc	a1,0x2
    80002130:	04458593          	addi	a1,a1,68 # 80004170 <_ZZ12printIntegermE6digits+0xb8>
    80002134:	00003517          	auipc	a0,0x3
    80002138:	71c50513          	addi	a0,a0,1820 # 80005850 <tickslock>
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00001317          	auipc	t1,0x1
    80002144:	5c830067          	jr	1480(t1) # 80003708 <initlock>

0000000080002148 <trapinithart>:
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00813423          	sd	s0,8(sp)
    80002150:	01010413          	addi	s0,sp,16
    80002154:	00000797          	auipc	a5,0x0
    80002158:	2fc78793          	addi	a5,a5,764 # 80002450 <kernelvec>
    8000215c:	10579073          	csrw	stvec,a5
    80002160:	00813403          	ld	s0,8(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <usertrap>:
    8000216c:	ff010113          	addi	sp,sp,-16
    80002170:	00813423          	sd	s0,8(sp)
    80002174:	01010413          	addi	s0,sp,16
    80002178:	00813403          	ld	s0,8(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <usertrapret>:
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00813423          	sd	s0,8(sp)
    8000218c:	01010413          	addi	s0,sp,16
    80002190:	00813403          	ld	s0,8(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <kerneltrap>:
    8000219c:	fe010113          	addi	sp,sp,-32
    800021a0:	00813823          	sd	s0,16(sp)
    800021a4:	00113c23          	sd	ra,24(sp)
    800021a8:	00913423          	sd	s1,8(sp)
    800021ac:	02010413          	addi	s0,sp,32
    800021b0:	142025f3          	csrr	a1,scause
    800021b4:	100027f3          	csrr	a5,sstatus
    800021b8:	0027f793          	andi	a5,a5,2
    800021bc:	10079c63          	bnez	a5,800022d4 <kerneltrap+0x138>
    800021c0:	142027f3          	csrr	a5,scause
    800021c4:	0207ce63          	bltz	a5,80002200 <kerneltrap+0x64>
    800021c8:	00002517          	auipc	a0,0x2
    800021cc:	ff050513          	addi	a0,a0,-16 # 800041b8 <_ZZ12printIntegermE6digits+0x100>
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	888080e7          	jalr	-1912(ra) # 80002a58 <__printf>
    800021d8:	141025f3          	csrr	a1,sepc
    800021dc:	14302673          	csrr	a2,stval
    800021e0:	00002517          	auipc	a0,0x2
    800021e4:	fe850513          	addi	a0,a0,-24 # 800041c8 <_ZZ12printIntegermE6digits+0x110>
    800021e8:	00001097          	auipc	ra,0x1
    800021ec:	870080e7          	jalr	-1936(ra) # 80002a58 <__printf>
    800021f0:	00002517          	auipc	a0,0x2
    800021f4:	ff050513          	addi	a0,a0,-16 # 800041e0 <_ZZ12printIntegermE6digits+0x128>
    800021f8:	00001097          	auipc	ra,0x1
    800021fc:	804080e7          	jalr	-2044(ra) # 800029fc <panic>
    80002200:	0ff7f713          	andi	a4,a5,255
    80002204:	00900693          	li	a3,9
    80002208:	04d70063          	beq	a4,a3,80002248 <kerneltrap+0xac>
    8000220c:	fff00713          	li	a4,-1
    80002210:	03f71713          	slli	a4,a4,0x3f
    80002214:	00170713          	addi	a4,a4,1
    80002218:	fae798e3          	bne	a5,a4,800021c8 <kerneltrap+0x2c>
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	e00080e7          	jalr	-512(ra) # 8000201c <cpuid>
    80002224:	06050663          	beqz	a0,80002290 <kerneltrap+0xf4>
    80002228:	144027f3          	csrr	a5,sip
    8000222c:	ffd7f793          	andi	a5,a5,-3
    80002230:	14479073          	csrw	sip,a5
    80002234:	01813083          	ld	ra,24(sp)
    80002238:	01013403          	ld	s0,16(sp)
    8000223c:	00813483          	ld	s1,8(sp)
    80002240:	02010113          	addi	sp,sp,32
    80002244:	00008067          	ret
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	3cc080e7          	jalr	972(ra) # 80002614 <plic_claim>
    80002250:	00a00793          	li	a5,10
    80002254:	00050493          	mv	s1,a0
    80002258:	06f50863          	beq	a0,a5,800022c8 <kerneltrap+0x12c>
    8000225c:	fc050ce3          	beqz	a0,80002234 <kerneltrap+0x98>
    80002260:	00050593          	mv	a1,a0
    80002264:	00002517          	auipc	a0,0x2
    80002268:	f3450513          	addi	a0,a0,-204 # 80004198 <_ZZ12printIntegermE6digits+0xe0>
    8000226c:	00000097          	auipc	ra,0x0
    80002270:	7ec080e7          	jalr	2028(ra) # 80002a58 <__printf>
    80002274:	01013403          	ld	s0,16(sp)
    80002278:	01813083          	ld	ra,24(sp)
    8000227c:	00048513          	mv	a0,s1
    80002280:	00813483          	ld	s1,8(sp)
    80002284:	02010113          	addi	sp,sp,32
    80002288:	00000317          	auipc	t1,0x0
    8000228c:	3c430067          	jr	964(t1) # 8000264c <plic_complete>
    80002290:	00003517          	auipc	a0,0x3
    80002294:	5c050513          	addi	a0,a0,1472 # 80005850 <tickslock>
    80002298:	00001097          	auipc	ra,0x1
    8000229c:	494080e7          	jalr	1172(ra) # 8000372c <acquire>
    800022a0:	00002717          	auipc	a4,0x2
    800022a4:	4a470713          	addi	a4,a4,1188 # 80004744 <ticks>
    800022a8:	00072783          	lw	a5,0(a4)
    800022ac:	00003517          	auipc	a0,0x3
    800022b0:	5a450513          	addi	a0,a0,1444 # 80005850 <tickslock>
    800022b4:	0017879b          	addiw	a5,a5,1
    800022b8:	00f72023          	sw	a5,0(a4)
    800022bc:	00001097          	auipc	ra,0x1
    800022c0:	53c080e7          	jalr	1340(ra) # 800037f8 <release>
    800022c4:	f65ff06f          	j	80002228 <kerneltrap+0x8c>
    800022c8:	00001097          	auipc	ra,0x1
    800022cc:	098080e7          	jalr	152(ra) # 80003360 <uartintr>
    800022d0:	fa5ff06f          	j	80002274 <kerneltrap+0xd8>
    800022d4:	00002517          	auipc	a0,0x2
    800022d8:	ea450513          	addi	a0,a0,-348 # 80004178 <_ZZ12printIntegermE6digits+0xc0>
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	720080e7          	jalr	1824(ra) # 800029fc <panic>

00000000800022e4 <clockintr>:
    800022e4:	fe010113          	addi	sp,sp,-32
    800022e8:	00813823          	sd	s0,16(sp)
    800022ec:	00913423          	sd	s1,8(sp)
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	02010413          	addi	s0,sp,32
    800022f8:	00003497          	auipc	s1,0x3
    800022fc:	55848493          	addi	s1,s1,1368 # 80005850 <tickslock>
    80002300:	00048513          	mv	a0,s1
    80002304:	00001097          	auipc	ra,0x1
    80002308:	428080e7          	jalr	1064(ra) # 8000372c <acquire>
    8000230c:	00002717          	auipc	a4,0x2
    80002310:	43870713          	addi	a4,a4,1080 # 80004744 <ticks>
    80002314:	00072783          	lw	a5,0(a4)
    80002318:	01013403          	ld	s0,16(sp)
    8000231c:	01813083          	ld	ra,24(sp)
    80002320:	00048513          	mv	a0,s1
    80002324:	0017879b          	addiw	a5,a5,1
    80002328:	00813483          	ld	s1,8(sp)
    8000232c:	00f72023          	sw	a5,0(a4)
    80002330:	02010113          	addi	sp,sp,32
    80002334:	00001317          	auipc	t1,0x1
    80002338:	4c430067          	jr	1220(t1) # 800037f8 <release>

000000008000233c <devintr>:
    8000233c:	142027f3          	csrr	a5,scause
    80002340:	00000513          	li	a0,0
    80002344:	0007c463          	bltz	a5,8000234c <devintr+0x10>
    80002348:	00008067          	ret
    8000234c:	fe010113          	addi	sp,sp,-32
    80002350:	00813823          	sd	s0,16(sp)
    80002354:	00113c23          	sd	ra,24(sp)
    80002358:	00913423          	sd	s1,8(sp)
    8000235c:	02010413          	addi	s0,sp,32
    80002360:	0ff7f713          	andi	a4,a5,255
    80002364:	00900693          	li	a3,9
    80002368:	04d70c63          	beq	a4,a3,800023c0 <devintr+0x84>
    8000236c:	fff00713          	li	a4,-1
    80002370:	03f71713          	slli	a4,a4,0x3f
    80002374:	00170713          	addi	a4,a4,1
    80002378:	00e78c63          	beq	a5,a4,80002390 <devintr+0x54>
    8000237c:	01813083          	ld	ra,24(sp)
    80002380:	01013403          	ld	s0,16(sp)
    80002384:	00813483          	ld	s1,8(sp)
    80002388:	02010113          	addi	sp,sp,32
    8000238c:	00008067          	ret
    80002390:	00000097          	auipc	ra,0x0
    80002394:	c8c080e7          	jalr	-884(ra) # 8000201c <cpuid>
    80002398:	06050663          	beqz	a0,80002404 <devintr+0xc8>
    8000239c:	144027f3          	csrr	a5,sip
    800023a0:	ffd7f793          	andi	a5,a5,-3
    800023a4:	14479073          	csrw	sip,a5
    800023a8:	01813083          	ld	ra,24(sp)
    800023ac:	01013403          	ld	s0,16(sp)
    800023b0:	00813483          	ld	s1,8(sp)
    800023b4:	00200513          	li	a0,2
    800023b8:	02010113          	addi	sp,sp,32
    800023bc:	00008067          	ret
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	254080e7          	jalr	596(ra) # 80002614 <plic_claim>
    800023c8:	00a00793          	li	a5,10
    800023cc:	00050493          	mv	s1,a0
    800023d0:	06f50663          	beq	a0,a5,8000243c <devintr+0x100>
    800023d4:	00100513          	li	a0,1
    800023d8:	fa0482e3          	beqz	s1,8000237c <devintr+0x40>
    800023dc:	00048593          	mv	a1,s1
    800023e0:	00002517          	auipc	a0,0x2
    800023e4:	db850513          	addi	a0,a0,-584 # 80004198 <_ZZ12printIntegermE6digits+0xe0>
    800023e8:	00000097          	auipc	ra,0x0
    800023ec:	670080e7          	jalr	1648(ra) # 80002a58 <__printf>
    800023f0:	00048513          	mv	a0,s1
    800023f4:	00000097          	auipc	ra,0x0
    800023f8:	258080e7          	jalr	600(ra) # 8000264c <plic_complete>
    800023fc:	00100513          	li	a0,1
    80002400:	f7dff06f          	j	8000237c <devintr+0x40>
    80002404:	00003517          	auipc	a0,0x3
    80002408:	44c50513          	addi	a0,a0,1100 # 80005850 <tickslock>
    8000240c:	00001097          	auipc	ra,0x1
    80002410:	320080e7          	jalr	800(ra) # 8000372c <acquire>
    80002414:	00002717          	auipc	a4,0x2
    80002418:	33070713          	addi	a4,a4,816 # 80004744 <ticks>
    8000241c:	00072783          	lw	a5,0(a4)
    80002420:	00003517          	auipc	a0,0x3
    80002424:	43050513          	addi	a0,a0,1072 # 80005850 <tickslock>
    80002428:	0017879b          	addiw	a5,a5,1
    8000242c:	00f72023          	sw	a5,0(a4)
    80002430:	00001097          	auipc	ra,0x1
    80002434:	3c8080e7          	jalr	968(ra) # 800037f8 <release>
    80002438:	f65ff06f          	j	8000239c <devintr+0x60>
    8000243c:	00001097          	auipc	ra,0x1
    80002440:	f24080e7          	jalr	-220(ra) # 80003360 <uartintr>
    80002444:	fadff06f          	j	800023f0 <devintr+0xb4>
	...

0000000080002450 <kernelvec>:
    80002450:	f0010113          	addi	sp,sp,-256
    80002454:	00113023          	sd	ra,0(sp)
    80002458:	00213423          	sd	sp,8(sp)
    8000245c:	00313823          	sd	gp,16(sp)
    80002460:	00413c23          	sd	tp,24(sp)
    80002464:	02513023          	sd	t0,32(sp)
    80002468:	02613423          	sd	t1,40(sp)
    8000246c:	02713823          	sd	t2,48(sp)
    80002470:	02813c23          	sd	s0,56(sp)
    80002474:	04913023          	sd	s1,64(sp)
    80002478:	04a13423          	sd	a0,72(sp)
    8000247c:	04b13823          	sd	a1,80(sp)
    80002480:	04c13c23          	sd	a2,88(sp)
    80002484:	06d13023          	sd	a3,96(sp)
    80002488:	06e13423          	sd	a4,104(sp)
    8000248c:	06f13823          	sd	a5,112(sp)
    80002490:	07013c23          	sd	a6,120(sp)
    80002494:	09113023          	sd	a7,128(sp)
    80002498:	09213423          	sd	s2,136(sp)
    8000249c:	09313823          	sd	s3,144(sp)
    800024a0:	09413c23          	sd	s4,152(sp)
    800024a4:	0b513023          	sd	s5,160(sp)
    800024a8:	0b613423          	sd	s6,168(sp)
    800024ac:	0b713823          	sd	s7,176(sp)
    800024b0:	0b813c23          	sd	s8,184(sp)
    800024b4:	0d913023          	sd	s9,192(sp)
    800024b8:	0da13423          	sd	s10,200(sp)
    800024bc:	0db13823          	sd	s11,208(sp)
    800024c0:	0dc13c23          	sd	t3,216(sp)
    800024c4:	0fd13023          	sd	t4,224(sp)
    800024c8:	0fe13423          	sd	t5,232(sp)
    800024cc:	0ff13823          	sd	t6,240(sp)
    800024d0:	ccdff0ef          	jal	ra,8000219c <kerneltrap>
    800024d4:	00013083          	ld	ra,0(sp)
    800024d8:	00813103          	ld	sp,8(sp)
    800024dc:	01013183          	ld	gp,16(sp)
    800024e0:	02013283          	ld	t0,32(sp)
    800024e4:	02813303          	ld	t1,40(sp)
    800024e8:	03013383          	ld	t2,48(sp)
    800024ec:	03813403          	ld	s0,56(sp)
    800024f0:	04013483          	ld	s1,64(sp)
    800024f4:	04813503          	ld	a0,72(sp)
    800024f8:	05013583          	ld	a1,80(sp)
    800024fc:	05813603          	ld	a2,88(sp)
    80002500:	06013683          	ld	a3,96(sp)
    80002504:	06813703          	ld	a4,104(sp)
    80002508:	07013783          	ld	a5,112(sp)
    8000250c:	07813803          	ld	a6,120(sp)
    80002510:	08013883          	ld	a7,128(sp)
    80002514:	08813903          	ld	s2,136(sp)
    80002518:	09013983          	ld	s3,144(sp)
    8000251c:	09813a03          	ld	s4,152(sp)
    80002520:	0a013a83          	ld	s5,160(sp)
    80002524:	0a813b03          	ld	s6,168(sp)
    80002528:	0b013b83          	ld	s7,176(sp)
    8000252c:	0b813c03          	ld	s8,184(sp)
    80002530:	0c013c83          	ld	s9,192(sp)
    80002534:	0c813d03          	ld	s10,200(sp)
    80002538:	0d013d83          	ld	s11,208(sp)
    8000253c:	0d813e03          	ld	t3,216(sp)
    80002540:	0e013e83          	ld	t4,224(sp)
    80002544:	0e813f03          	ld	t5,232(sp)
    80002548:	0f013f83          	ld	t6,240(sp)
    8000254c:	10010113          	addi	sp,sp,256
    80002550:	10200073          	sret
    80002554:	00000013          	nop
    80002558:	00000013          	nop
    8000255c:	00000013          	nop

0000000080002560 <timervec>:
    80002560:	34051573          	csrrw	a0,mscratch,a0
    80002564:	00b53023          	sd	a1,0(a0)
    80002568:	00c53423          	sd	a2,8(a0)
    8000256c:	00d53823          	sd	a3,16(a0)
    80002570:	01853583          	ld	a1,24(a0)
    80002574:	02053603          	ld	a2,32(a0)
    80002578:	0005b683          	ld	a3,0(a1)
    8000257c:	00c686b3          	add	a3,a3,a2
    80002580:	00d5b023          	sd	a3,0(a1)
    80002584:	00200593          	li	a1,2
    80002588:	14459073          	csrw	sip,a1
    8000258c:	01053683          	ld	a3,16(a0)
    80002590:	00853603          	ld	a2,8(a0)
    80002594:	00053583          	ld	a1,0(a0)
    80002598:	34051573          	csrrw	a0,mscratch,a0
    8000259c:	30200073          	mret

00000000800025a0 <plicinit>:
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00813423          	sd	s0,8(sp)
    800025a8:	01010413          	addi	s0,sp,16
    800025ac:	00813403          	ld	s0,8(sp)
    800025b0:	0c0007b7          	lui	a5,0xc000
    800025b4:	00100713          	li	a4,1
    800025b8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800025bc:	00e7a223          	sw	a4,4(a5)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <plicinithart>:
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813023          	sd	s0,0(sp)
    800025d0:	00113423          	sd	ra,8(sp)
    800025d4:	01010413          	addi	s0,sp,16
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	a44080e7          	jalr	-1468(ra) # 8000201c <cpuid>
    800025e0:	0085171b          	slliw	a4,a0,0x8
    800025e4:	0c0027b7          	lui	a5,0xc002
    800025e8:	00e787b3          	add	a5,a5,a4
    800025ec:	40200713          	li	a4,1026
    800025f0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800025f4:	00813083          	ld	ra,8(sp)
    800025f8:	00013403          	ld	s0,0(sp)
    800025fc:	00d5151b          	slliw	a0,a0,0xd
    80002600:	0c2017b7          	lui	a5,0xc201
    80002604:	00a78533          	add	a0,a5,a0
    80002608:	00052023          	sw	zero,0(a0)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <plic_claim>:
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00813023          	sd	s0,0(sp)
    8000261c:	00113423          	sd	ra,8(sp)
    80002620:	01010413          	addi	s0,sp,16
    80002624:	00000097          	auipc	ra,0x0
    80002628:	9f8080e7          	jalr	-1544(ra) # 8000201c <cpuid>
    8000262c:	00813083          	ld	ra,8(sp)
    80002630:	00013403          	ld	s0,0(sp)
    80002634:	00d5151b          	slliw	a0,a0,0xd
    80002638:	0c2017b7          	lui	a5,0xc201
    8000263c:	00a78533          	add	a0,a5,a0
    80002640:	00452503          	lw	a0,4(a0)
    80002644:	01010113          	addi	sp,sp,16
    80002648:	00008067          	ret

000000008000264c <plic_complete>:
    8000264c:	fe010113          	addi	sp,sp,-32
    80002650:	00813823          	sd	s0,16(sp)
    80002654:	00913423          	sd	s1,8(sp)
    80002658:	00113c23          	sd	ra,24(sp)
    8000265c:	02010413          	addi	s0,sp,32
    80002660:	00050493          	mv	s1,a0
    80002664:	00000097          	auipc	ra,0x0
    80002668:	9b8080e7          	jalr	-1608(ra) # 8000201c <cpuid>
    8000266c:	01813083          	ld	ra,24(sp)
    80002670:	01013403          	ld	s0,16(sp)
    80002674:	00d5179b          	slliw	a5,a0,0xd
    80002678:	0c201737          	lui	a4,0xc201
    8000267c:	00f707b3          	add	a5,a4,a5
    80002680:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002684:	00813483          	ld	s1,8(sp)
    80002688:	02010113          	addi	sp,sp,32
    8000268c:	00008067          	ret

0000000080002690 <consolewrite>:
    80002690:	fb010113          	addi	sp,sp,-80
    80002694:	04813023          	sd	s0,64(sp)
    80002698:	04113423          	sd	ra,72(sp)
    8000269c:	02913c23          	sd	s1,56(sp)
    800026a0:	03213823          	sd	s2,48(sp)
    800026a4:	03313423          	sd	s3,40(sp)
    800026a8:	03413023          	sd	s4,32(sp)
    800026ac:	01513c23          	sd	s5,24(sp)
    800026b0:	05010413          	addi	s0,sp,80
    800026b4:	06c05c63          	blez	a2,8000272c <consolewrite+0x9c>
    800026b8:	00060993          	mv	s3,a2
    800026bc:	00050a13          	mv	s4,a0
    800026c0:	00058493          	mv	s1,a1
    800026c4:	00000913          	li	s2,0
    800026c8:	fff00a93          	li	s5,-1
    800026cc:	01c0006f          	j	800026e8 <consolewrite+0x58>
    800026d0:	fbf44503          	lbu	a0,-65(s0)
    800026d4:	0019091b          	addiw	s2,s2,1
    800026d8:	00148493          	addi	s1,s1,1
    800026dc:	00001097          	auipc	ra,0x1
    800026e0:	a9c080e7          	jalr	-1380(ra) # 80003178 <uartputc>
    800026e4:	03298063          	beq	s3,s2,80002704 <consolewrite+0x74>
    800026e8:	00048613          	mv	a2,s1
    800026ec:	00100693          	li	a3,1
    800026f0:	000a0593          	mv	a1,s4
    800026f4:	fbf40513          	addi	a0,s0,-65
    800026f8:	00000097          	auipc	ra,0x0
    800026fc:	9dc080e7          	jalr	-1572(ra) # 800020d4 <either_copyin>
    80002700:	fd5518e3          	bne	a0,s5,800026d0 <consolewrite+0x40>
    80002704:	04813083          	ld	ra,72(sp)
    80002708:	04013403          	ld	s0,64(sp)
    8000270c:	03813483          	ld	s1,56(sp)
    80002710:	02813983          	ld	s3,40(sp)
    80002714:	02013a03          	ld	s4,32(sp)
    80002718:	01813a83          	ld	s5,24(sp)
    8000271c:	00090513          	mv	a0,s2
    80002720:	03013903          	ld	s2,48(sp)
    80002724:	05010113          	addi	sp,sp,80
    80002728:	00008067          	ret
    8000272c:	00000913          	li	s2,0
    80002730:	fd5ff06f          	j	80002704 <consolewrite+0x74>

0000000080002734 <consoleread>:
    80002734:	f9010113          	addi	sp,sp,-112
    80002738:	06813023          	sd	s0,96(sp)
    8000273c:	04913c23          	sd	s1,88(sp)
    80002740:	05213823          	sd	s2,80(sp)
    80002744:	05313423          	sd	s3,72(sp)
    80002748:	05413023          	sd	s4,64(sp)
    8000274c:	03513c23          	sd	s5,56(sp)
    80002750:	03613823          	sd	s6,48(sp)
    80002754:	03713423          	sd	s7,40(sp)
    80002758:	03813023          	sd	s8,32(sp)
    8000275c:	06113423          	sd	ra,104(sp)
    80002760:	01913c23          	sd	s9,24(sp)
    80002764:	07010413          	addi	s0,sp,112
    80002768:	00060b93          	mv	s7,a2
    8000276c:	00050913          	mv	s2,a0
    80002770:	00058c13          	mv	s8,a1
    80002774:	00060b1b          	sext.w	s6,a2
    80002778:	00003497          	auipc	s1,0x3
    8000277c:	10048493          	addi	s1,s1,256 # 80005878 <cons>
    80002780:	00400993          	li	s3,4
    80002784:	fff00a13          	li	s4,-1
    80002788:	00a00a93          	li	s5,10
    8000278c:	05705e63          	blez	s7,800027e8 <consoleread+0xb4>
    80002790:	09c4a703          	lw	a4,156(s1)
    80002794:	0984a783          	lw	a5,152(s1)
    80002798:	0007071b          	sext.w	a4,a4
    8000279c:	08e78463          	beq	a5,a4,80002824 <consoleread+0xf0>
    800027a0:	07f7f713          	andi	a4,a5,127
    800027a4:	00e48733          	add	a4,s1,a4
    800027a8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800027ac:	0017869b          	addiw	a3,a5,1
    800027b0:	08d4ac23          	sw	a3,152(s1)
    800027b4:	00070c9b          	sext.w	s9,a4
    800027b8:	0b370663          	beq	a4,s3,80002864 <consoleread+0x130>
    800027bc:	00100693          	li	a3,1
    800027c0:	f9f40613          	addi	a2,s0,-97
    800027c4:	000c0593          	mv	a1,s8
    800027c8:	00090513          	mv	a0,s2
    800027cc:	f8e40fa3          	sb	a4,-97(s0)
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	8b8080e7          	jalr	-1864(ra) # 80002088 <either_copyout>
    800027d8:	01450863          	beq	a0,s4,800027e8 <consoleread+0xb4>
    800027dc:	001c0c13          	addi	s8,s8,1
    800027e0:	fffb8b9b          	addiw	s7,s7,-1
    800027e4:	fb5c94e3          	bne	s9,s5,8000278c <consoleread+0x58>
    800027e8:	000b851b          	sext.w	a0,s7
    800027ec:	06813083          	ld	ra,104(sp)
    800027f0:	06013403          	ld	s0,96(sp)
    800027f4:	05813483          	ld	s1,88(sp)
    800027f8:	05013903          	ld	s2,80(sp)
    800027fc:	04813983          	ld	s3,72(sp)
    80002800:	04013a03          	ld	s4,64(sp)
    80002804:	03813a83          	ld	s5,56(sp)
    80002808:	02813b83          	ld	s7,40(sp)
    8000280c:	02013c03          	ld	s8,32(sp)
    80002810:	01813c83          	ld	s9,24(sp)
    80002814:	40ab053b          	subw	a0,s6,a0
    80002818:	03013b03          	ld	s6,48(sp)
    8000281c:	07010113          	addi	sp,sp,112
    80002820:	00008067          	ret
    80002824:	00001097          	auipc	ra,0x1
    80002828:	1d8080e7          	jalr	472(ra) # 800039fc <push_on>
    8000282c:	0984a703          	lw	a4,152(s1)
    80002830:	09c4a783          	lw	a5,156(s1)
    80002834:	0007879b          	sext.w	a5,a5
    80002838:	fef70ce3          	beq	a4,a5,80002830 <consoleread+0xfc>
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	234080e7          	jalr	564(ra) # 80003a70 <pop_on>
    80002844:	0984a783          	lw	a5,152(s1)
    80002848:	07f7f713          	andi	a4,a5,127
    8000284c:	00e48733          	add	a4,s1,a4
    80002850:	01874703          	lbu	a4,24(a4)
    80002854:	0017869b          	addiw	a3,a5,1
    80002858:	08d4ac23          	sw	a3,152(s1)
    8000285c:	00070c9b          	sext.w	s9,a4
    80002860:	f5371ee3          	bne	a4,s3,800027bc <consoleread+0x88>
    80002864:	000b851b          	sext.w	a0,s7
    80002868:	f96bf2e3          	bgeu	s7,s6,800027ec <consoleread+0xb8>
    8000286c:	08f4ac23          	sw	a5,152(s1)
    80002870:	f7dff06f          	j	800027ec <consoleread+0xb8>

0000000080002874 <consputc>:
    80002874:	10000793          	li	a5,256
    80002878:	00f50663          	beq	a0,a5,80002884 <consputc+0x10>
    8000287c:	00001317          	auipc	t1,0x1
    80002880:	9f430067          	jr	-1548(t1) # 80003270 <uartputc_sync>
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00113423          	sd	ra,8(sp)
    8000288c:	00813023          	sd	s0,0(sp)
    80002890:	01010413          	addi	s0,sp,16
    80002894:	00800513          	li	a0,8
    80002898:	00001097          	auipc	ra,0x1
    8000289c:	9d8080e7          	jalr	-1576(ra) # 80003270 <uartputc_sync>
    800028a0:	02000513          	li	a0,32
    800028a4:	00001097          	auipc	ra,0x1
    800028a8:	9cc080e7          	jalr	-1588(ra) # 80003270 <uartputc_sync>
    800028ac:	00013403          	ld	s0,0(sp)
    800028b0:	00813083          	ld	ra,8(sp)
    800028b4:	00800513          	li	a0,8
    800028b8:	01010113          	addi	sp,sp,16
    800028bc:	00001317          	auipc	t1,0x1
    800028c0:	9b430067          	jr	-1612(t1) # 80003270 <uartputc_sync>

00000000800028c4 <consoleintr>:
    800028c4:	fe010113          	addi	sp,sp,-32
    800028c8:	00813823          	sd	s0,16(sp)
    800028cc:	00913423          	sd	s1,8(sp)
    800028d0:	01213023          	sd	s2,0(sp)
    800028d4:	00113c23          	sd	ra,24(sp)
    800028d8:	02010413          	addi	s0,sp,32
    800028dc:	00003917          	auipc	s2,0x3
    800028e0:	f9c90913          	addi	s2,s2,-100 # 80005878 <cons>
    800028e4:	00050493          	mv	s1,a0
    800028e8:	00090513          	mv	a0,s2
    800028ec:	00001097          	auipc	ra,0x1
    800028f0:	e40080e7          	jalr	-448(ra) # 8000372c <acquire>
    800028f4:	02048c63          	beqz	s1,8000292c <consoleintr+0x68>
    800028f8:	0a092783          	lw	a5,160(s2)
    800028fc:	09892703          	lw	a4,152(s2)
    80002900:	07f00693          	li	a3,127
    80002904:	40e7873b          	subw	a4,a5,a4
    80002908:	02e6e263          	bltu	a3,a4,8000292c <consoleintr+0x68>
    8000290c:	00d00713          	li	a4,13
    80002910:	04e48063          	beq	s1,a4,80002950 <consoleintr+0x8c>
    80002914:	07f7f713          	andi	a4,a5,127
    80002918:	00e90733          	add	a4,s2,a4
    8000291c:	0017879b          	addiw	a5,a5,1
    80002920:	0af92023          	sw	a5,160(s2)
    80002924:	00970c23          	sb	s1,24(a4)
    80002928:	08f92e23          	sw	a5,156(s2)
    8000292c:	01013403          	ld	s0,16(sp)
    80002930:	01813083          	ld	ra,24(sp)
    80002934:	00813483          	ld	s1,8(sp)
    80002938:	00013903          	ld	s2,0(sp)
    8000293c:	00003517          	auipc	a0,0x3
    80002940:	f3c50513          	addi	a0,a0,-196 # 80005878 <cons>
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00001317          	auipc	t1,0x1
    8000294c:	eb030067          	jr	-336(t1) # 800037f8 <release>
    80002950:	00a00493          	li	s1,10
    80002954:	fc1ff06f          	j	80002914 <consoleintr+0x50>

0000000080002958 <consoleinit>:
    80002958:	fe010113          	addi	sp,sp,-32
    8000295c:	00113c23          	sd	ra,24(sp)
    80002960:	00813823          	sd	s0,16(sp)
    80002964:	00913423          	sd	s1,8(sp)
    80002968:	02010413          	addi	s0,sp,32
    8000296c:	00003497          	auipc	s1,0x3
    80002970:	f0c48493          	addi	s1,s1,-244 # 80005878 <cons>
    80002974:	00048513          	mv	a0,s1
    80002978:	00002597          	auipc	a1,0x2
    8000297c:	87858593          	addi	a1,a1,-1928 # 800041f0 <_ZZ12printIntegermE6digits+0x138>
    80002980:	00001097          	auipc	ra,0x1
    80002984:	d88080e7          	jalr	-632(ra) # 80003708 <initlock>
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	7ac080e7          	jalr	1964(ra) # 80003134 <uartinit>
    80002990:	01813083          	ld	ra,24(sp)
    80002994:	01013403          	ld	s0,16(sp)
    80002998:	00000797          	auipc	a5,0x0
    8000299c:	d9c78793          	addi	a5,a5,-612 # 80002734 <consoleread>
    800029a0:	0af4bc23          	sd	a5,184(s1)
    800029a4:	00000797          	auipc	a5,0x0
    800029a8:	cec78793          	addi	a5,a5,-788 # 80002690 <consolewrite>
    800029ac:	0cf4b023          	sd	a5,192(s1)
    800029b0:	00813483          	ld	s1,8(sp)
    800029b4:	02010113          	addi	sp,sp,32
    800029b8:	00008067          	ret

00000000800029bc <console_read>:
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00813423          	sd	s0,8(sp)
    800029c4:	01010413          	addi	s0,sp,16
    800029c8:	00813403          	ld	s0,8(sp)
    800029cc:	00003317          	auipc	t1,0x3
    800029d0:	f6433303          	ld	t1,-156(t1) # 80005930 <devsw+0x10>
    800029d4:	01010113          	addi	sp,sp,16
    800029d8:	00030067          	jr	t1

00000000800029dc <console_write>:
    800029dc:	ff010113          	addi	sp,sp,-16
    800029e0:	00813423          	sd	s0,8(sp)
    800029e4:	01010413          	addi	s0,sp,16
    800029e8:	00813403          	ld	s0,8(sp)
    800029ec:	00003317          	auipc	t1,0x3
    800029f0:	f4c33303          	ld	t1,-180(t1) # 80005938 <devsw+0x18>
    800029f4:	01010113          	addi	sp,sp,16
    800029f8:	00030067          	jr	t1

00000000800029fc <panic>:
    800029fc:	fe010113          	addi	sp,sp,-32
    80002a00:	00113c23          	sd	ra,24(sp)
    80002a04:	00813823          	sd	s0,16(sp)
    80002a08:	00913423          	sd	s1,8(sp)
    80002a0c:	02010413          	addi	s0,sp,32
    80002a10:	00050493          	mv	s1,a0
    80002a14:	00001517          	auipc	a0,0x1
    80002a18:	7e450513          	addi	a0,a0,2020 # 800041f8 <_ZZ12printIntegermE6digits+0x140>
    80002a1c:	00003797          	auipc	a5,0x3
    80002a20:	fa07ae23          	sw	zero,-68(a5) # 800059d8 <pr+0x18>
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	034080e7          	jalr	52(ra) # 80002a58 <__printf>
    80002a2c:	00048513          	mv	a0,s1
    80002a30:	00000097          	auipc	ra,0x0
    80002a34:	028080e7          	jalr	40(ra) # 80002a58 <__printf>
    80002a38:	00001517          	auipc	a0,0x1
    80002a3c:	67850513          	addi	a0,a0,1656 # 800040b0 <CONSOLE_STATUS+0xa0>
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	018080e7          	jalr	24(ra) # 80002a58 <__printf>
    80002a48:	00100793          	li	a5,1
    80002a4c:	00002717          	auipc	a4,0x2
    80002a50:	cef72e23          	sw	a5,-772(a4) # 80004748 <panicked>
    80002a54:	0000006f          	j	80002a54 <panic+0x58>

0000000080002a58 <__printf>:
    80002a58:	f3010113          	addi	sp,sp,-208
    80002a5c:	08813023          	sd	s0,128(sp)
    80002a60:	07313423          	sd	s3,104(sp)
    80002a64:	09010413          	addi	s0,sp,144
    80002a68:	05813023          	sd	s8,64(sp)
    80002a6c:	08113423          	sd	ra,136(sp)
    80002a70:	06913c23          	sd	s1,120(sp)
    80002a74:	07213823          	sd	s2,112(sp)
    80002a78:	07413023          	sd	s4,96(sp)
    80002a7c:	05513c23          	sd	s5,88(sp)
    80002a80:	05613823          	sd	s6,80(sp)
    80002a84:	05713423          	sd	s7,72(sp)
    80002a88:	03913c23          	sd	s9,56(sp)
    80002a8c:	03a13823          	sd	s10,48(sp)
    80002a90:	03b13423          	sd	s11,40(sp)
    80002a94:	00003317          	auipc	t1,0x3
    80002a98:	f2c30313          	addi	t1,t1,-212 # 800059c0 <pr>
    80002a9c:	01832c03          	lw	s8,24(t1)
    80002aa0:	00b43423          	sd	a1,8(s0)
    80002aa4:	00c43823          	sd	a2,16(s0)
    80002aa8:	00d43c23          	sd	a3,24(s0)
    80002aac:	02e43023          	sd	a4,32(s0)
    80002ab0:	02f43423          	sd	a5,40(s0)
    80002ab4:	03043823          	sd	a6,48(s0)
    80002ab8:	03143c23          	sd	a7,56(s0)
    80002abc:	00050993          	mv	s3,a0
    80002ac0:	4a0c1663          	bnez	s8,80002f6c <__printf+0x514>
    80002ac4:	60098c63          	beqz	s3,800030dc <__printf+0x684>
    80002ac8:	0009c503          	lbu	a0,0(s3)
    80002acc:	00840793          	addi	a5,s0,8
    80002ad0:	f6f43c23          	sd	a5,-136(s0)
    80002ad4:	00000493          	li	s1,0
    80002ad8:	22050063          	beqz	a0,80002cf8 <__printf+0x2a0>
    80002adc:	00002a37          	lui	s4,0x2
    80002ae0:	00018ab7          	lui	s5,0x18
    80002ae4:	000f4b37          	lui	s6,0xf4
    80002ae8:	00989bb7          	lui	s7,0x989
    80002aec:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002af0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002af4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002af8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002afc:	00148c9b          	addiw	s9,s1,1
    80002b00:	02500793          	li	a5,37
    80002b04:	01998933          	add	s2,s3,s9
    80002b08:	38f51263          	bne	a0,a5,80002e8c <__printf+0x434>
    80002b0c:	00094783          	lbu	a5,0(s2)
    80002b10:	00078c9b          	sext.w	s9,a5
    80002b14:	1e078263          	beqz	a5,80002cf8 <__printf+0x2a0>
    80002b18:	0024849b          	addiw	s1,s1,2
    80002b1c:	07000713          	li	a4,112
    80002b20:	00998933          	add	s2,s3,s1
    80002b24:	38e78a63          	beq	a5,a4,80002eb8 <__printf+0x460>
    80002b28:	20f76863          	bltu	a4,a5,80002d38 <__printf+0x2e0>
    80002b2c:	42a78863          	beq	a5,a0,80002f5c <__printf+0x504>
    80002b30:	06400713          	li	a4,100
    80002b34:	40e79663          	bne	a5,a4,80002f40 <__printf+0x4e8>
    80002b38:	f7843783          	ld	a5,-136(s0)
    80002b3c:	0007a603          	lw	a2,0(a5)
    80002b40:	00878793          	addi	a5,a5,8
    80002b44:	f6f43c23          	sd	a5,-136(s0)
    80002b48:	42064a63          	bltz	a2,80002f7c <__printf+0x524>
    80002b4c:	00a00713          	li	a4,10
    80002b50:	02e677bb          	remuw	a5,a2,a4
    80002b54:	00001d97          	auipc	s11,0x1
    80002b58:	6ccd8d93          	addi	s11,s11,1740 # 80004220 <digits>
    80002b5c:	00900593          	li	a1,9
    80002b60:	0006051b          	sext.w	a0,a2
    80002b64:	00000c93          	li	s9,0
    80002b68:	02079793          	slli	a5,a5,0x20
    80002b6c:	0207d793          	srli	a5,a5,0x20
    80002b70:	00fd87b3          	add	a5,s11,a5
    80002b74:	0007c783          	lbu	a5,0(a5)
    80002b78:	02e656bb          	divuw	a3,a2,a4
    80002b7c:	f8f40023          	sb	a5,-128(s0)
    80002b80:	14c5d863          	bge	a1,a2,80002cd0 <__printf+0x278>
    80002b84:	06300593          	li	a1,99
    80002b88:	00100c93          	li	s9,1
    80002b8c:	02e6f7bb          	remuw	a5,a3,a4
    80002b90:	02079793          	slli	a5,a5,0x20
    80002b94:	0207d793          	srli	a5,a5,0x20
    80002b98:	00fd87b3          	add	a5,s11,a5
    80002b9c:	0007c783          	lbu	a5,0(a5)
    80002ba0:	02e6d73b          	divuw	a4,a3,a4
    80002ba4:	f8f400a3          	sb	a5,-127(s0)
    80002ba8:	12a5f463          	bgeu	a1,a0,80002cd0 <__printf+0x278>
    80002bac:	00a00693          	li	a3,10
    80002bb0:	00900593          	li	a1,9
    80002bb4:	02d777bb          	remuw	a5,a4,a3
    80002bb8:	02079793          	slli	a5,a5,0x20
    80002bbc:	0207d793          	srli	a5,a5,0x20
    80002bc0:	00fd87b3          	add	a5,s11,a5
    80002bc4:	0007c503          	lbu	a0,0(a5)
    80002bc8:	02d757bb          	divuw	a5,a4,a3
    80002bcc:	f8a40123          	sb	a0,-126(s0)
    80002bd0:	48e5f263          	bgeu	a1,a4,80003054 <__printf+0x5fc>
    80002bd4:	06300513          	li	a0,99
    80002bd8:	02d7f5bb          	remuw	a1,a5,a3
    80002bdc:	02059593          	slli	a1,a1,0x20
    80002be0:	0205d593          	srli	a1,a1,0x20
    80002be4:	00bd85b3          	add	a1,s11,a1
    80002be8:	0005c583          	lbu	a1,0(a1)
    80002bec:	02d7d7bb          	divuw	a5,a5,a3
    80002bf0:	f8b401a3          	sb	a1,-125(s0)
    80002bf4:	48e57263          	bgeu	a0,a4,80003078 <__printf+0x620>
    80002bf8:	3e700513          	li	a0,999
    80002bfc:	02d7f5bb          	remuw	a1,a5,a3
    80002c00:	02059593          	slli	a1,a1,0x20
    80002c04:	0205d593          	srli	a1,a1,0x20
    80002c08:	00bd85b3          	add	a1,s11,a1
    80002c0c:	0005c583          	lbu	a1,0(a1)
    80002c10:	02d7d7bb          	divuw	a5,a5,a3
    80002c14:	f8b40223          	sb	a1,-124(s0)
    80002c18:	46e57663          	bgeu	a0,a4,80003084 <__printf+0x62c>
    80002c1c:	02d7f5bb          	remuw	a1,a5,a3
    80002c20:	02059593          	slli	a1,a1,0x20
    80002c24:	0205d593          	srli	a1,a1,0x20
    80002c28:	00bd85b3          	add	a1,s11,a1
    80002c2c:	0005c583          	lbu	a1,0(a1)
    80002c30:	02d7d7bb          	divuw	a5,a5,a3
    80002c34:	f8b402a3          	sb	a1,-123(s0)
    80002c38:	46ea7863          	bgeu	s4,a4,800030a8 <__printf+0x650>
    80002c3c:	02d7f5bb          	remuw	a1,a5,a3
    80002c40:	02059593          	slli	a1,a1,0x20
    80002c44:	0205d593          	srli	a1,a1,0x20
    80002c48:	00bd85b3          	add	a1,s11,a1
    80002c4c:	0005c583          	lbu	a1,0(a1)
    80002c50:	02d7d7bb          	divuw	a5,a5,a3
    80002c54:	f8b40323          	sb	a1,-122(s0)
    80002c58:	3eeaf863          	bgeu	s5,a4,80003048 <__printf+0x5f0>
    80002c5c:	02d7f5bb          	remuw	a1,a5,a3
    80002c60:	02059593          	slli	a1,a1,0x20
    80002c64:	0205d593          	srli	a1,a1,0x20
    80002c68:	00bd85b3          	add	a1,s11,a1
    80002c6c:	0005c583          	lbu	a1,0(a1)
    80002c70:	02d7d7bb          	divuw	a5,a5,a3
    80002c74:	f8b403a3          	sb	a1,-121(s0)
    80002c78:	42eb7e63          	bgeu	s6,a4,800030b4 <__printf+0x65c>
    80002c7c:	02d7f5bb          	remuw	a1,a5,a3
    80002c80:	02059593          	slli	a1,a1,0x20
    80002c84:	0205d593          	srli	a1,a1,0x20
    80002c88:	00bd85b3          	add	a1,s11,a1
    80002c8c:	0005c583          	lbu	a1,0(a1)
    80002c90:	02d7d7bb          	divuw	a5,a5,a3
    80002c94:	f8b40423          	sb	a1,-120(s0)
    80002c98:	42ebfc63          	bgeu	s7,a4,800030d0 <__printf+0x678>
    80002c9c:	02079793          	slli	a5,a5,0x20
    80002ca0:	0207d793          	srli	a5,a5,0x20
    80002ca4:	00fd8db3          	add	s11,s11,a5
    80002ca8:	000dc703          	lbu	a4,0(s11)
    80002cac:	00a00793          	li	a5,10
    80002cb0:	00900c93          	li	s9,9
    80002cb4:	f8e404a3          	sb	a4,-119(s0)
    80002cb8:	00065c63          	bgez	a2,80002cd0 <__printf+0x278>
    80002cbc:	f9040713          	addi	a4,s0,-112
    80002cc0:	00f70733          	add	a4,a4,a5
    80002cc4:	02d00693          	li	a3,45
    80002cc8:	fed70823          	sb	a3,-16(a4)
    80002ccc:	00078c93          	mv	s9,a5
    80002cd0:	f8040793          	addi	a5,s0,-128
    80002cd4:	01978cb3          	add	s9,a5,s9
    80002cd8:	f7f40d13          	addi	s10,s0,-129
    80002cdc:	000cc503          	lbu	a0,0(s9)
    80002ce0:	fffc8c93          	addi	s9,s9,-1
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	b90080e7          	jalr	-1136(ra) # 80002874 <consputc>
    80002cec:	ffac98e3          	bne	s9,s10,80002cdc <__printf+0x284>
    80002cf0:	00094503          	lbu	a0,0(s2)
    80002cf4:	e00514e3          	bnez	a0,80002afc <__printf+0xa4>
    80002cf8:	1a0c1663          	bnez	s8,80002ea4 <__printf+0x44c>
    80002cfc:	08813083          	ld	ra,136(sp)
    80002d00:	08013403          	ld	s0,128(sp)
    80002d04:	07813483          	ld	s1,120(sp)
    80002d08:	07013903          	ld	s2,112(sp)
    80002d0c:	06813983          	ld	s3,104(sp)
    80002d10:	06013a03          	ld	s4,96(sp)
    80002d14:	05813a83          	ld	s5,88(sp)
    80002d18:	05013b03          	ld	s6,80(sp)
    80002d1c:	04813b83          	ld	s7,72(sp)
    80002d20:	04013c03          	ld	s8,64(sp)
    80002d24:	03813c83          	ld	s9,56(sp)
    80002d28:	03013d03          	ld	s10,48(sp)
    80002d2c:	02813d83          	ld	s11,40(sp)
    80002d30:	0d010113          	addi	sp,sp,208
    80002d34:	00008067          	ret
    80002d38:	07300713          	li	a4,115
    80002d3c:	1ce78a63          	beq	a5,a4,80002f10 <__printf+0x4b8>
    80002d40:	07800713          	li	a4,120
    80002d44:	1ee79e63          	bne	a5,a4,80002f40 <__printf+0x4e8>
    80002d48:	f7843783          	ld	a5,-136(s0)
    80002d4c:	0007a703          	lw	a4,0(a5)
    80002d50:	00878793          	addi	a5,a5,8
    80002d54:	f6f43c23          	sd	a5,-136(s0)
    80002d58:	28074263          	bltz	a4,80002fdc <__printf+0x584>
    80002d5c:	00001d97          	auipc	s11,0x1
    80002d60:	4c4d8d93          	addi	s11,s11,1220 # 80004220 <digits>
    80002d64:	00f77793          	andi	a5,a4,15
    80002d68:	00fd87b3          	add	a5,s11,a5
    80002d6c:	0007c683          	lbu	a3,0(a5)
    80002d70:	00f00613          	li	a2,15
    80002d74:	0007079b          	sext.w	a5,a4
    80002d78:	f8d40023          	sb	a3,-128(s0)
    80002d7c:	0047559b          	srliw	a1,a4,0x4
    80002d80:	0047569b          	srliw	a3,a4,0x4
    80002d84:	00000c93          	li	s9,0
    80002d88:	0ee65063          	bge	a2,a4,80002e68 <__printf+0x410>
    80002d8c:	00f6f693          	andi	a3,a3,15
    80002d90:	00dd86b3          	add	a3,s11,a3
    80002d94:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002d98:	0087d79b          	srliw	a5,a5,0x8
    80002d9c:	00100c93          	li	s9,1
    80002da0:	f8d400a3          	sb	a3,-127(s0)
    80002da4:	0cb67263          	bgeu	a2,a1,80002e68 <__printf+0x410>
    80002da8:	00f7f693          	andi	a3,a5,15
    80002dac:	00dd86b3          	add	a3,s11,a3
    80002db0:	0006c583          	lbu	a1,0(a3)
    80002db4:	00f00613          	li	a2,15
    80002db8:	0047d69b          	srliw	a3,a5,0x4
    80002dbc:	f8b40123          	sb	a1,-126(s0)
    80002dc0:	0047d593          	srli	a1,a5,0x4
    80002dc4:	28f67e63          	bgeu	a2,a5,80003060 <__printf+0x608>
    80002dc8:	00f6f693          	andi	a3,a3,15
    80002dcc:	00dd86b3          	add	a3,s11,a3
    80002dd0:	0006c503          	lbu	a0,0(a3)
    80002dd4:	0087d813          	srli	a6,a5,0x8
    80002dd8:	0087d69b          	srliw	a3,a5,0x8
    80002ddc:	f8a401a3          	sb	a0,-125(s0)
    80002de0:	28b67663          	bgeu	a2,a1,8000306c <__printf+0x614>
    80002de4:	00f6f693          	andi	a3,a3,15
    80002de8:	00dd86b3          	add	a3,s11,a3
    80002dec:	0006c583          	lbu	a1,0(a3)
    80002df0:	00c7d513          	srli	a0,a5,0xc
    80002df4:	00c7d69b          	srliw	a3,a5,0xc
    80002df8:	f8b40223          	sb	a1,-124(s0)
    80002dfc:	29067a63          	bgeu	a2,a6,80003090 <__printf+0x638>
    80002e00:	00f6f693          	andi	a3,a3,15
    80002e04:	00dd86b3          	add	a3,s11,a3
    80002e08:	0006c583          	lbu	a1,0(a3)
    80002e0c:	0107d813          	srli	a6,a5,0x10
    80002e10:	0107d69b          	srliw	a3,a5,0x10
    80002e14:	f8b402a3          	sb	a1,-123(s0)
    80002e18:	28a67263          	bgeu	a2,a0,8000309c <__printf+0x644>
    80002e1c:	00f6f693          	andi	a3,a3,15
    80002e20:	00dd86b3          	add	a3,s11,a3
    80002e24:	0006c683          	lbu	a3,0(a3)
    80002e28:	0147d79b          	srliw	a5,a5,0x14
    80002e2c:	f8d40323          	sb	a3,-122(s0)
    80002e30:	21067663          	bgeu	a2,a6,8000303c <__printf+0x5e4>
    80002e34:	02079793          	slli	a5,a5,0x20
    80002e38:	0207d793          	srli	a5,a5,0x20
    80002e3c:	00fd8db3          	add	s11,s11,a5
    80002e40:	000dc683          	lbu	a3,0(s11)
    80002e44:	00800793          	li	a5,8
    80002e48:	00700c93          	li	s9,7
    80002e4c:	f8d403a3          	sb	a3,-121(s0)
    80002e50:	00075c63          	bgez	a4,80002e68 <__printf+0x410>
    80002e54:	f9040713          	addi	a4,s0,-112
    80002e58:	00f70733          	add	a4,a4,a5
    80002e5c:	02d00693          	li	a3,45
    80002e60:	fed70823          	sb	a3,-16(a4)
    80002e64:	00078c93          	mv	s9,a5
    80002e68:	f8040793          	addi	a5,s0,-128
    80002e6c:	01978cb3          	add	s9,a5,s9
    80002e70:	f7f40d13          	addi	s10,s0,-129
    80002e74:	000cc503          	lbu	a0,0(s9)
    80002e78:	fffc8c93          	addi	s9,s9,-1
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	9f8080e7          	jalr	-1544(ra) # 80002874 <consputc>
    80002e84:	ff9d18e3          	bne	s10,s9,80002e74 <__printf+0x41c>
    80002e88:	0100006f          	j	80002e98 <__printf+0x440>
    80002e8c:	00000097          	auipc	ra,0x0
    80002e90:	9e8080e7          	jalr	-1560(ra) # 80002874 <consputc>
    80002e94:	000c8493          	mv	s1,s9
    80002e98:	00094503          	lbu	a0,0(s2)
    80002e9c:	c60510e3          	bnez	a0,80002afc <__printf+0xa4>
    80002ea0:	e40c0ee3          	beqz	s8,80002cfc <__printf+0x2a4>
    80002ea4:	00003517          	auipc	a0,0x3
    80002ea8:	b1c50513          	addi	a0,a0,-1252 # 800059c0 <pr>
    80002eac:	00001097          	auipc	ra,0x1
    80002eb0:	94c080e7          	jalr	-1716(ra) # 800037f8 <release>
    80002eb4:	e49ff06f          	j	80002cfc <__printf+0x2a4>
    80002eb8:	f7843783          	ld	a5,-136(s0)
    80002ebc:	03000513          	li	a0,48
    80002ec0:	01000d13          	li	s10,16
    80002ec4:	00878713          	addi	a4,a5,8
    80002ec8:	0007bc83          	ld	s9,0(a5)
    80002ecc:	f6e43c23          	sd	a4,-136(s0)
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	9a4080e7          	jalr	-1628(ra) # 80002874 <consputc>
    80002ed8:	07800513          	li	a0,120
    80002edc:	00000097          	auipc	ra,0x0
    80002ee0:	998080e7          	jalr	-1640(ra) # 80002874 <consputc>
    80002ee4:	00001d97          	auipc	s11,0x1
    80002ee8:	33cd8d93          	addi	s11,s11,828 # 80004220 <digits>
    80002eec:	03ccd793          	srli	a5,s9,0x3c
    80002ef0:	00fd87b3          	add	a5,s11,a5
    80002ef4:	0007c503          	lbu	a0,0(a5)
    80002ef8:	fffd0d1b          	addiw	s10,s10,-1
    80002efc:	004c9c93          	slli	s9,s9,0x4
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	974080e7          	jalr	-1676(ra) # 80002874 <consputc>
    80002f08:	fe0d12e3          	bnez	s10,80002eec <__printf+0x494>
    80002f0c:	f8dff06f          	j	80002e98 <__printf+0x440>
    80002f10:	f7843783          	ld	a5,-136(s0)
    80002f14:	0007bc83          	ld	s9,0(a5)
    80002f18:	00878793          	addi	a5,a5,8
    80002f1c:	f6f43c23          	sd	a5,-136(s0)
    80002f20:	000c9a63          	bnez	s9,80002f34 <__printf+0x4dc>
    80002f24:	1080006f          	j	8000302c <__printf+0x5d4>
    80002f28:	001c8c93          	addi	s9,s9,1
    80002f2c:	00000097          	auipc	ra,0x0
    80002f30:	948080e7          	jalr	-1720(ra) # 80002874 <consputc>
    80002f34:	000cc503          	lbu	a0,0(s9)
    80002f38:	fe0518e3          	bnez	a0,80002f28 <__printf+0x4d0>
    80002f3c:	f5dff06f          	j	80002e98 <__printf+0x440>
    80002f40:	02500513          	li	a0,37
    80002f44:	00000097          	auipc	ra,0x0
    80002f48:	930080e7          	jalr	-1744(ra) # 80002874 <consputc>
    80002f4c:	000c8513          	mv	a0,s9
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	924080e7          	jalr	-1756(ra) # 80002874 <consputc>
    80002f58:	f41ff06f          	j	80002e98 <__printf+0x440>
    80002f5c:	02500513          	li	a0,37
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	914080e7          	jalr	-1772(ra) # 80002874 <consputc>
    80002f68:	f31ff06f          	j	80002e98 <__printf+0x440>
    80002f6c:	00030513          	mv	a0,t1
    80002f70:	00000097          	auipc	ra,0x0
    80002f74:	7bc080e7          	jalr	1980(ra) # 8000372c <acquire>
    80002f78:	b4dff06f          	j	80002ac4 <__printf+0x6c>
    80002f7c:	40c0053b          	negw	a0,a2
    80002f80:	00a00713          	li	a4,10
    80002f84:	02e576bb          	remuw	a3,a0,a4
    80002f88:	00001d97          	auipc	s11,0x1
    80002f8c:	298d8d93          	addi	s11,s11,664 # 80004220 <digits>
    80002f90:	ff700593          	li	a1,-9
    80002f94:	02069693          	slli	a3,a3,0x20
    80002f98:	0206d693          	srli	a3,a3,0x20
    80002f9c:	00dd86b3          	add	a3,s11,a3
    80002fa0:	0006c683          	lbu	a3,0(a3)
    80002fa4:	02e557bb          	divuw	a5,a0,a4
    80002fa8:	f8d40023          	sb	a3,-128(s0)
    80002fac:	10b65e63          	bge	a2,a1,800030c8 <__printf+0x670>
    80002fb0:	06300593          	li	a1,99
    80002fb4:	02e7f6bb          	remuw	a3,a5,a4
    80002fb8:	02069693          	slli	a3,a3,0x20
    80002fbc:	0206d693          	srli	a3,a3,0x20
    80002fc0:	00dd86b3          	add	a3,s11,a3
    80002fc4:	0006c683          	lbu	a3,0(a3)
    80002fc8:	02e7d73b          	divuw	a4,a5,a4
    80002fcc:	00200793          	li	a5,2
    80002fd0:	f8d400a3          	sb	a3,-127(s0)
    80002fd4:	bca5ece3          	bltu	a1,a0,80002bac <__printf+0x154>
    80002fd8:	ce5ff06f          	j	80002cbc <__printf+0x264>
    80002fdc:	40e007bb          	negw	a5,a4
    80002fe0:	00001d97          	auipc	s11,0x1
    80002fe4:	240d8d93          	addi	s11,s11,576 # 80004220 <digits>
    80002fe8:	00f7f693          	andi	a3,a5,15
    80002fec:	00dd86b3          	add	a3,s11,a3
    80002ff0:	0006c583          	lbu	a1,0(a3)
    80002ff4:	ff100613          	li	a2,-15
    80002ff8:	0047d69b          	srliw	a3,a5,0x4
    80002ffc:	f8b40023          	sb	a1,-128(s0)
    80003000:	0047d59b          	srliw	a1,a5,0x4
    80003004:	0ac75e63          	bge	a4,a2,800030c0 <__printf+0x668>
    80003008:	00f6f693          	andi	a3,a3,15
    8000300c:	00dd86b3          	add	a3,s11,a3
    80003010:	0006c603          	lbu	a2,0(a3)
    80003014:	00f00693          	li	a3,15
    80003018:	0087d79b          	srliw	a5,a5,0x8
    8000301c:	f8c400a3          	sb	a2,-127(s0)
    80003020:	d8b6e4e3          	bltu	a3,a1,80002da8 <__printf+0x350>
    80003024:	00200793          	li	a5,2
    80003028:	e2dff06f          	j	80002e54 <__printf+0x3fc>
    8000302c:	00001c97          	auipc	s9,0x1
    80003030:	1d4c8c93          	addi	s9,s9,468 # 80004200 <_ZZ12printIntegermE6digits+0x148>
    80003034:	02800513          	li	a0,40
    80003038:	ef1ff06f          	j	80002f28 <__printf+0x4d0>
    8000303c:	00700793          	li	a5,7
    80003040:	00600c93          	li	s9,6
    80003044:	e0dff06f          	j	80002e50 <__printf+0x3f8>
    80003048:	00700793          	li	a5,7
    8000304c:	00600c93          	li	s9,6
    80003050:	c69ff06f          	j	80002cb8 <__printf+0x260>
    80003054:	00300793          	li	a5,3
    80003058:	00200c93          	li	s9,2
    8000305c:	c5dff06f          	j	80002cb8 <__printf+0x260>
    80003060:	00300793          	li	a5,3
    80003064:	00200c93          	li	s9,2
    80003068:	de9ff06f          	j	80002e50 <__printf+0x3f8>
    8000306c:	00400793          	li	a5,4
    80003070:	00300c93          	li	s9,3
    80003074:	dddff06f          	j	80002e50 <__printf+0x3f8>
    80003078:	00400793          	li	a5,4
    8000307c:	00300c93          	li	s9,3
    80003080:	c39ff06f          	j	80002cb8 <__printf+0x260>
    80003084:	00500793          	li	a5,5
    80003088:	00400c93          	li	s9,4
    8000308c:	c2dff06f          	j	80002cb8 <__printf+0x260>
    80003090:	00500793          	li	a5,5
    80003094:	00400c93          	li	s9,4
    80003098:	db9ff06f          	j	80002e50 <__printf+0x3f8>
    8000309c:	00600793          	li	a5,6
    800030a0:	00500c93          	li	s9,5
    800030a4:	dadff06f          	j	80002e50 <__printf+0x3f8>
    800030a8:	00600793          	li	a5,6
    800030ac:	00500c93          	li	s9,5
    800030b0:	c09ff06f          	j	80002cb8 <__printf+0x260>
    800030b4:	00800793          	li	a5,8
    800030b8:	00700c93          	li	s9,7
    800030bc:	bfdff06f          	j	80002cb8 <__printf+0x260>
    800030c0:	00100793          	li	a5,1
    800030c4:	d91ff06f          	j	80002e54 <__printf+0x3fc>
    800030c8:	00100793          	li	a5,1
    800030cc:	bf1ff06f          	j	80002cbc <__printf+0x264>
    800030d0:	00900793          	li	a5,9
    800030d4:	00800c93          	li	s9,8
    800030d8:	be1ff06f          	j	80002cb8 <__printf+0x260>
    800030dc:	00001517          	auipc	a0,0x1
    800030e0:	12c50513          	addi	a0,a0,300 # 80004208 <_ZZ12printIntegermE6digits+0x150>
    800030e4:	00000097          	auipc	ra,0x0
    800030e8:	918080e7          	jalr	-1768(ra) # 800029fc <panic>

00000000800030ec <printfinit>:
    800030ec:	fe010113          	addi	sp,sp,-32
    800030f0:	00813823          	sd	s0,16(sp)
    800030f4:	00913423          	sd	s1,8(sp)
    800030f8:	00113c23          	sd	ra,24(sp)
    800030fc:	02010413          	addi	s0,sp,32
    80003100:	00003497          	auipc	s1,0x3
    80003104:	8c048493          	addi	s1,s1,-1856 # 800059c0 <pr>
    80003108:	00048513          	mv	a0,s1
    8000310c:	00001597          	auipc	a1,0x1
    80003110:	10c58593          	addi	a1,a1,268 # 80004218 <_ZZ12printIntegermE6digits+0x160>
    80003114:	00000097          	auipc	ra,0x0
    80003118:	5f4080e7          	jalr	1524(ra) # 80003708 <initlock>
    8000311c:	01813083          	ld	ra,24(sp)
    80003120:	01013403          	ld	s0,16(sp)
    80003124:	0004ac23          	sw	zero,24(s1)
    80003128:	00813483          	ld	s1,8(sp)
    8000312c:	02010113          	addi	sp,sp,32
    80003130:	00008067          	ret

0000000080003134 <uartinit>:
    80003134:	ff010113          	addi	sp,sp,-16
    80003138:	00813423          	sd	s0,8(sp)
    8000313c:	01010413          	addi	s0,sp,16
    80003140:	100007b7          	lui	a5,0x10000
    80003144:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003148:	f8000713          	li	a4,-128
    8000314c:	00e781a3          	sb	a4,3(a5)
    80003150:	00300713          	li	a4,3
    80003154:	00e78023          	sb	a4,0(a5)
    80003158:	000780a3          	sb	zero,1(a5)
    8000315c:	00e781a3          	sb	a4,3(a5)
    80003160:	00700693          	li	a3,7
    80003164:	00d78123          	sb	a3,2(a5)
    80003168:	00e780a3          	sb	a4,1(a5)
    8000316c:	00813403          	ld	s0,8(sp)
    80003170:	01010113          	addi	sp,sp,16
    80003174:	00008067          	ret

0000000080003178 <uartputc>:
    80003178:	00001797          	auipc	a5,0x1
    8000317c:	5d07a783          	lw	a5,1488(a5) # 80004748 <panicked>
    80003180:	00078463          	beqz	a5,80003188 <uartputc+0x10>
    80003184:	0000006f          	j	80003184 <uartputc+0xc>
    80003188:	fd010113          	addi	sp,sp,-48
    8000318c:	02813023          	sd	s0,32(sp)
    80003190:	00913c23          	sd	s1,24(sp)
    80003194:	01213823          	sd	s2,16(sp)
    80003198:	01313423          	sd	s3,8(sp)
    8000319c:	02113423          	sd	ra,40(sp)
    800031a0:	03010413          	addi	s0,sp,48
    800031a4:	00001917          	auipc	s2,0x1
    800031a8:	5ac90913          	addi	s2,s2,1452 # 80004750 <uart_tx_r>
    800031ac:	00093783          	ld	a5,0(s2)
    800031b0:	00001497          	auipc	s1,0x1
    800031b4:	5a848493          	addi	s1,s1,1448 # 80004758 <uart_tx_w>
    800031b8:	0004b703          	ld	a4,0(s1)
    800031bc:	02078693          	addi	a3,a5,32
    800031c0:	00050993          	mv	s3,a0
    800031c4:	02e69c63          	bne	a3,a4,800031fc <uartputc+0x84>
    800031c8:	00001097          	auipc	ra,0x1
    800031cc:	834080e7          	jalr	-1996(ra) # 800039fc <push_on>
    800031d0:	00093783          	ld	a5,0(s2)
    800031d4:	0004b703          	ld	a4,0(s1)
    800031d8:	02078793          	addi	a5,a5,32
    800031dc:	00e79463          	bne	a5,a4,800031e4 <uartputc+0x6c>
    800031e0:	0000006f          	j	800031e0 <uartputc+0x68>
    800031e4:	00001097          	auipc	ra,0x1
    800031e8:	88c080e7          	jalr	-1908(ra) # 80003a70 <pop_on>
    800031ec:	00093783          	ld	a5,0(s2)
    800031f0:	0004b703          	ld	a4,0(s1)
    800031f4:	02078693          	addi	a3,a5,32
    800031f8:	fce688e3          	beq	a3,a4,800031c8 <uartputc+0x50>
    800031fc:	01f77693          	andi	a3,a4,31
    80003200:	00002597          	auipc	a1,0x2
    80003204:	7e058593          	addi	a1,a1,2016 # 800059e0 <uart_tx_buf>
    80003208:	00d586b3          	add	a3,a1,a3
    8000320c:	00170713          	addi	a4,a4,1
    80003210:	01368023          	sb	s3,0(a3)
    80003214:	00e4b023          	sd	a4,0(s1)
    80003218:	10000637          	lui	a2,0x10000
    8000321c:	02f71063          	bne	a4,a5,8000323c <uartputc+0xc4>
    80003220:	0340006f          	j	80003254 <uartputc+0xdc>
    80003224:	00074703          	lbu	a4,0(a4)
    80003228:	00f93023          	sd	a5,0(s2)
    8000322c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003230:	00093783          	ld	a5,0(s2)
    80003234:	0004b703          	ld	a4,0(s1)
    80003238:	00f70e63          	beq	a4,a5,80003254 <uartputc+0xdc>
    8000323c:	00564683          	lbu	a3,5(a2)
    80003240:	01f7f713          	andi	a4,a5,31
    80003244:	00e58733          	add	a4,a1,a4
    80003248:	0206f693          	andi	a3,a3,32
    8000324c:	00178793          	addi	a5,a5,1
    80003250:	fc069ae3          	bnez	a3,80003224 <uartputc+0xac>
    80003254:	02813083          	ld	ra,40(sp)
    80003258:	02013403          	ld	s0,32(sp)
    8000325c:	01813483          	ld	s1,24(sp)
    80003260:	01013903          	ld	s2,16(sp)
    80003264:	00813983          	ld	s3,8(sp)
    80003268:	03010113          	addi	sp,sp,48
    8000326c:	00008067          	ret

0000000080003270 <uartputc_sync>:
    80003270:	ff010113          	addi	sp,sp,-16
    80003274:	00813423          	sd	s0,8(sp)
    80003278:	01010413          	addi	s0,sp,16
    8000327c:	00001717          	auipc	a4,0x1
    80003280:	4cc72703          	lw	a4,1228(a4) # 80004748 <panicked>
    80003284:	02071663          	bnez	a4,800032b0 <uartputc_sync+0x40>
    80003288:	00050793          	mv	a5,a0
    8000328c:	100006b7          	lui	a3,0x10000
    80003290:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003294:	02077713          	andi	a4,a4,32
    80003298:	fe070ce3          	beqz	a4,80003290 <uartputc_sync+0x20>
    8000329c:	0ff7f793          	andi	a5,a5,255
    800032a0:	00f68023          	sb	a5,0(a3)
    800032a4:	00813403          	ld	s0,8(sp)
    800032a8:	01010113          	addi	sp,sp,16
    800032ac:	00008067          	ret
    800032b0:	0000006f          	j	800032b0 <uartputc_sync+0x40>

00000000800032b4 <uartstart>:
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00813423          	sd	s0,8(sp)
    800032bc:	01010413          	addi	s0,sp,16
    800032c0:	00001617          	auipc	a2,0x1
    800032c4:	49060613          	addi	a2,a2,1168 # 80004750 <uart_tx_r>
    800032c8:	00001517          	auipc	a0,0x1
    800032cc:	49050513          	addi	a0,a0,1168 # 80004758 <uart_tx_w>
    800032d0:	00063783          	ld	a5,0(a2)
    800032d4:	00053703          	ld	a4,0(a0)
    800032d8:	04f70263          	beq	a4,a5,8000331c <uartstart+0x68>
    800032dc:	100005b7          	lui	a1,0x10000
    800032e0:	00002817          	auipc	a6,0x2
    800032e4:	70080813          	addi	a6,a6,1792 # 800059e0 <uart_tx_buf>
    800032e8:	01c0006f          	j	80003304 <uartstart+0x50>
    800032ec:	0006c703          	lbu	a4,0(a3)
    800032f0:	00f63023          	sd	a5,0(a2)
    800032f4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800032f8:	00063783          	ld	a5,0(a2)
    800032fc:	00053703          	ld	a4,0(a0)
    80003300:	00f70e63          	beq	a4,a5,8000331c <uartstart+0x68>
    80003304:	01f7f713          	andi	a4,a5,31
    80003308:	00e806b3          	add	a3,a6,a4
    8000330c:	0055c703          	lbu	a4,5(a1)
    80003310:	00178793          	addi	a5,a5,1
    80003314:	02077713          	andi	a4,a4,32
    80003318:	fc071ae3          	bnez	a4,800032ec <uartstart+0x38>
    8000331c:	00813403          	ld	s0,8(sp)
    80003320:	01010113          	addi	sp,sp,16
    80003324:	00008067          	ret

0000000080003328 <uartgetc>:
    80003328:	ff010113          	addi	sp,sp,-16
    8000332c:	00813423          	sd	s0,8(sp)
    80003330:	01010413          	addi	s0,sp,16
    80003334:	10000737          	lui	a4,0x10000
    80003338:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000333c:	0017f793          	andi	a5,a5,1
    80003340:	00078c63          	beqz	a5,80003358 <uartgetc+0x30>
    80003344:	00074503          	lbu	a0,0(a4)
    80003348:	0ff57513          	andi	a0,a0,255
    8000334c:	00813403          	ld	s0,8(sp)
    80003350:	01010113          	addi	sp,sp,16
    80003354:	00008067          	ret
    80003358:	fff00513          	li	a0,-1
    8000335c:	ff1ff06f          	j	8000334c <uartgetc+0x24>

0000000080003360 <uartintr>:
    80003360:	100007b7          	lui	a5,0x10000
    80003364:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003368:	0017f793          	andi	a5,a5,1
    8000336c:	0a078463          	beqz	a5,80003414 <uartintr+0xb4>
    80003370:	fe010113          	addi	sp,sp,-32
    80003374:	00813823          	sd	s0,16(sp)
    80003378:	00913423          	sd	s1,8(sp)
    8000337c:	00113c23          	sd	ra,24(sp)
    80003380:	02010413          	addi	s0,sp,32
    80003384:	100004b7          	lui	s1,0x10000
    80003388:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000338c:	0ff57513          	andi	a0,a0,255
    80003390:	fffff097          	auipc	ra,0xfffff
    80003394:	534080e7          	jalr	1332(ra) # 800028c4 <consoleintr>
    80003398:	0054c783          	lbu	a5,5(s1)
    8000339c:	0017f793          	andi	a5,a5,1
    800033a0:	fe0794e3          	bnez	a5,80003388 <uartintr+0x28>
    800033a4:	00001617          	auipc	a2,0x1
    800033a8:	3ac60613          	addi	a2,a2,940 # 80004750 <uart_tx_r>
    800033ac:	00001517          	auipc	a0,0x1
    800033b0:	3ac50513          	addi	a0,a0,940 # 80004758 <uart_tx_w>
    800033b4:	00063783          	ld	a5,0(a2)
    800033b8:	00053703          	ld	a4,0(a0)
    800033bc:	04f70263          	beq	a4,a5,80003400 <uartintr+0xa0>
    800033c0:	100005b7          	lui	a1,0x10000
    800033c4:	00002817          	auipc	a6,0x2
    800033c8:	61c80813          	addi	a6,a6,1564 # 800059e0 <uart_tx_buf>
    800033cc:	01c0006f          	j	800033e8 <uartintr+0x88>
    800033d0:	0006c703          	lbu	a4,0(a3)
    800033d4:	00f63023          	sd	a5,0(a2)
    800033d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033dc:	00063783          	ld	a5,0(a2)
    800033e0:	00053703          	ld	a4,0(a0)
    800033e4:	00f70e63          	beq	a4,a5,80003400 <uartintr+0xa0>
    800033e8:	01f7f713          	andi	a4,a5,31
    800033ec:	00e806b3          	add	a3,a6,a4
    800033f0:	0055c703          	lbu	a4,5(a1)
    800033f4:	00178793          	addi	a5,a5,1
    800033f8:	02077713          	andi	a4,a4,32
    800033fc:	fc071ae3          	bnez	a4,800033d0 <uartintr+0x70>
    80003400:	01813083          	ld	ra,24(sp)
    80003404:	01013403          	ld	s0,16(sp)
    80003408:	00813483          	ld	s1,8(sp)
    8000340c:	02010113          	addi	sp,sp,32
    80003410:	00008067          	ret
    80003414:	00001617          	auipc	a2,0x1
    80003418:	33c60613          	addi	a2,a2,828 # 80004750 <uart_tx_r>
    8000341c:	00001517          	auipc	a0,0x1
    80003420:	33c50513          	addi	a0,a0,828 # 80004758 <uart_tx_w>
    80003424:	00063783          	ld	a5,0(a2)
    80003428:	00053703          	ld	a4,0(a0)
    8000342c:	04f70263          	beq	a4,a5,80003470 <uartintr+0x110>
    80003430:	100005b7          	lui	a1,0x10000
    80003434:	00002817          	auipc	a6,0x2
    80003438:	5ac80813          	addi	a6,a6,1452 # 800059e0 <uart_tx_buf>
    8000343c:	01c0006f          	j	80003458 <uartintr+0xf8>
    80003440:	0006c703          	lbu	a4,0(a3)
    80003444:	00f63023          	sd	a5,0(a2)
    80003448:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000344c:	00063783          	ld	a5,0(a2)
    80003450:	00053703          	ld	a4,0(a0)
    80003454:	02f70063          	beq	a4,a5,80003474 <uartintr+0x114>
    80003458:	01f7f713          	andi	a4,a5,31
    8000345c:	00e806b3          	add	a3,a6,a4
    80003460:	0055c703          	lbu	a4,5(a1)
    80003464:	00178793          	addi	a5,a5,1
    80003468:	02077713          	andi	a4,a4,32
    8000346c:	fc071ae3          	bnez	a4,80003440 <uartintr+0xe0>
    80003470:	00008067          	ret
    80003474:	00008067          	ret

0000000080003478 <kinit>:
    80003478:	fc010113          	addi	sp,sp,-64
    8000347c:	02913423          	sd	s1,40(sp)
    80003480:	fffff7b7          	lui	a5,0xfffff
    80003484:	00003497          	auipc	s1,0x3
    80003488:	57b48493          	addi	s1,s1,1403 # 800069ff <end+0xfff>
    8000348c:	02813823          	sd	s0,48(sp)
    80003490:	01313c23          	sd	s3,24(sp)
    80003494:	00f4f4b3          	and	s1,s1,a5
    80003498:	02113c23          	sd	ra,56(sp)
    8000349c:	03213023          	sd	s2,32(sp)
    800034a0:	01413823          	sd	s4,16(sp)
    800034a4:	01513423          	sd	s5,8(sp)
    800034a8:	04010413          	addi	s0,sp,64
    800034ac:	000017b7          	lui	a5,0x1
    800034b0:	01100993          	li	s3,17
    800034b4:	00f487b3          	add	a5,s1,a5
    800034b8:	01b99993          	slli	s3,s3,0x1b
    800034bc:	06f9e063          	bltu	s3,a5,8000351c <kinit+0xa4>
    800034c0:	00002a97          	auipc	s5,0x2
    800034c4:	540a8a93          	addi	s5,s5,1344 # 80005a00 <end>
    800034c8:	0754ec63          	bltu	s1,s5,80003540 <kinit+0xc8>
    800034cc:	0734fa63          	bgeu	s1,s3,80003540 <kinit+0xc8>
    800034d0:	00088a37          	lui	s4,0x88
    800034d4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800034d8:	00001917          	auipc	s2,0x1
    800034dc:	28890913          	addi	s2,s2,648 # 80004760 <kmem>
    800034e0:	00ca1a13          	slli	s4,s4,0xc
    800034e4:	0140006f          	j	800034f8 <kinit+0x80>
    800034e8:	000017b7          	lui	a5,0x1
    800034ec:	00f484b3          	add	s1,s1,a5
    800034f0:	0554e863          	bltu	s1,s5,80003540 <kinit+0xc8>
    800034f4:	0534f663          	bgeu	s1,s3,80003540 <kinit+0xc8>
    800034f8:	00001637          	lui	a2,0x1
    800034fc:	00100593          	li	a1,1
    80003500:	00048513          	mv	a0,s1
    80003504:	00000097          	auipc	ra,0x0
    80003508:	5e4080e7          	jalr	1508(ra) # 80003ae8 <__memset>
    8000350c:	00093783          	ld	a5,0(s2)
    80003510:	00f4b023          	sd	a5,0(s1)
    80003514:	00993023          	sd	s1,0(s2)
    80003518:	fd4498e3          	bne	s1,s4,800034e8 <kinit+0x70>
    8000351c:	03813083          	ld	ra,56(sp)
    80003520:	03013403          	ld	s0,48(sp)
    80003524:	02813483          	ld	s1,40(sp)
    80003528:	02013903          	ld	s2,32(sp)
    8000352c:	01813983          	ld	s3,24(sp)
    80003530:	01013a03          	ld	s4,16(sp)
    80003534:	00813a83          	ld	s5,8(sp)
    80003538:	04010113          	addi	sp,sp,64
    8000353c:	00008067          	ret
    80003540:	00001517          	auipc	a0,0x1
    80003544:	cf850513          	addi	a0,a0,-776 # 80004238 <digits+0x18>
    80003548:	fffff097          	auipc	ra,0xfffff
    8000354c:	4b4080e7          	jalr	1204(ra) # 800029fc <panic>

0000000080003550 <freerange>:
    80003550:	fc010113          	addi	sp,sp,-64
    80003554:	000017b7          	lui	a5,0x1
    80003558:	02913423          	sd	s1,40(sp)
    8000355c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003560:	009504b3          	add	s1,a0,s1
    80003564:	fffff537          	lui	a0,0xfffff
    80003568:	02813823          	sd	s0,48(sp)
    8000356c:	02113c23          	sd	ra,56(sp)
    80003570:	03213023          	sd	s2,32(sp)
    80003574:	01313c23          	sd	s3,24(sp)
    80003578:	01413823          	sd	s4,16(sp)
    8000357c:	01513423          	sd	s5,8(sp)
    80003580:	01613023          	sd	s6,0(sp)
    80003584:	04010413          	addi	s0,sp,64
    80003588:	00a4f4b3          	and	s1,s1,a0
    8000358c:	00f487b3          	add	a5,s1,a5
    80003590:	06f5e463          	bltu	a1,a5,800035f8 <freerange+0xa8>
    80003594:	00002a97          	auipc	s5,0x2
    80003598:	46ca8a93          	addi	s5,s5,1132 # 80005a00 <end>
    8000359c:	0954e263          	bltu	s1,s5,80003620 <freerange+0xd0>
    800035a0:	01100993          	li	s3,17
    800035a4:	01b99993          	slli	s3,s3,0x1b
    800035a8:	0734fc63          	bgeu	s1,s3,80003620 <freerange+0xd0>
    800035ac:	00058a13          	mv	s4,a1
    800035b0:	00001917          	auipc	s2,0x1
    800035b4:	1b090913          	addi	s2,s2,432 # 80004760 <kmem>
    800035b8:	00002b37          	lui	s6,0x2
    800035bc:	0140006f          	j	800035d0 <freerange+0x80>
    800035c0:	000017b7          	lui	a5,0x1
    800035c4:	00f484b3          	add	s1,s1,a5
    800035c8:	0554ec63          	bltu	s1,s5,80003620 <freerange+0xd0>
    800035cc:	0534fa63          	bgeu	s1,s3,80003620 <freerange+0xd0>
    800035d0:	00001637          	lui	a2,0x1
    800035d4:	00100593          	li	a1,1
    800035d8:	00048513          	mv	a0,s1
    800035dc:	00000097          	auipc	ra,0x0
    800035e0:	50c080e7          	jalr	1292(ra) # 80003ae8 <__memset>
    800035e4:	00093703          	ld	a4,0(s2)
    800035e8:	016487b3          	add	a5,s1,s6
    800035ec:	00e4b023          	sd	a4,0(s1)
    800035f0:	00993023          	sd	s1,0(s2)
    800035f4:	fcfa76e3          	bgeu	s4,a5,800035c0 <freerange+0x70>
    800035f8:	03813083          	ld	ra,56(sp)
    800035fc:	03013403          	ld	s0,48(sp)
    80003600:	02813483          	ld	s1,40(sp)
    80003604:	02013903          	ld	s2,32(sp)
    80003608:	01813983          	ld	s3,24(sp)
    8000360c:	01013a03          	ld	s4,16(sp)
    80003610:	00813a83          	ld	s5,8(sp)
    80003614:	00013b03          	ld	s6,0(sp)
    80003618:	04010113          	addi	sp,sp,64
    8000361c:	00008067          	ret
    80003620:	00001517          	auipc	a0,0x1
    80003624:	c1850513          	addi	a0,a0,-1000 # 80004238 <digits+0x18>
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	3d4080e7          	jalr	980(ra) # 800029fc <panic>

0000000080003630 <kfree>:
    80003630:	fe010113          	addi	sp,sp,-32
    80003634:	00813823          	sd	s0,16(sp)
    80003638:	00113c23          	sd	ra,24(sp)
    8000363c:	00913423          	sd	s1,8(sp)
    80003640:	02010413          	addi	s0,sp,32
    80003644:	03451793          	slli	a5,a0,0x34
    80003648:	04079c63          	bnez	a5,800036a0 <kfree+0x70>
    8000364c:	00002797          	auipc	a5,0x2
    80003650:	3b478793          	addi	a5,a5,948 # 80005a00 <end>
    80003654:	00050493          	mv	s1,a0
    80003658:	04f56463          	bltu	a0,a5,800036a0 <kfree+0x70>
    8000365c:	01100793          	li	a5,17
    80003660:	01b79793          	slli	a5,a5,0x1b
    80003664:	02f57e63          	bgeu	a0,a5,800036a0 <kfree+0x70>
    80003668:	00001637          	lui	a2,0x1
    8000366c:	00100593          	li	a1,1
    80003670:	00000097          	auipc	ra,0x0
    80003674:	478080e7          	jalr	1144(ra) # 80003ae8 <__memset>
    80003678:	00001797          	auipc	a5,0x1
    8000367c:	0e878793          	addi	a5,a5,232 # 80004760 <kmem>
    80003680:	0007b703          	ld	a4,0(a5)
    80003684:	01813083          	ld	ra,24(sp)
    80003688:	01013403          	ld	s0,16(sp)
    8000368c:	00e4b023          	sd	a4,0(s1)
    80003690:	0097b023          	sd	s1,0(a5)
    80003694:	00813483          	ld	s1,8(sp)
    80003698:	02010113          	addi	sp,sp,32
    8000369c:	00008067          	ret
    800036a0:	00001517          	auipc	a0,0x1
    800036a4:	b9850513          	addi	a0,a0,-1128 # 80004238 <digits+0x18>
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	354080e7          	jalr	852(ra) # 800029fc <panic>

00000000800036b0 <kalloc>:
    800036b0:	fe010113          	addi	sp,sp,-32
    800036b4:	00813823          	sd	s0,16(sp)
    800036b8:	00913423          	sd	s1,8(sp)
    800036bc:	00113c23          	sd	ra,24(sp)
    800036c0:	02010413          	addi	s0,sp,32
    800036c4:	00001797          	auipc	a5,0x1
    800036c8:	09c78793          	addi	a5,a5,156 # 80004760 <kmem>
    800036cc:	0007b483          	ld	s1,0(a5)
    800036d0:	02048063          	beqz	s1,800036f0 <kalloc+0x40>
    800036d4:	0004b703          	ld	a4,0(s1)
    800036d8:	00001637          	lui	a2,0x1
    800036dc:	00500593          	li	a1,5
    800036e0:	00048513          	mv	a0,s1
    800036e4:	00e7b023          	sd	a4,0(a5)
    800036e8:	00000097          	auipc	ra,0x0
    800036ec:	400080e7          	jalr	1024(ra) # 80003ae8 <__memset>
    800036f0:	01813083          	ld	ra,24(sp)
    800036f4:	01013403          	ld	s0,16(sp)
    800036f8:	00048513          	mv	a0,s1
    800036fc:	00813483          	ld	s1,8(sp)
    80003700:	02010113          	addi	sp,sp,32
    80003704:	00008067          	ret

0000000080003708 <initlock>:
    80003708:	ff010113          	addi	sp,sp,-16
    8000370c:	00813423          	sd	s0,8(sp)
    80003710:	01010413          	addi	s0,sp,16
    80003714:	00813403          	ld	s0,8(sp)
    80003718:	00b53423          	sd	a1,8(a0)
    8000371c:	00052023          	sw	zero,0(a0)
    80003720:	00053823          	sd	zero,16(a0)
    80003724:	01010113          	addi	sp,sp,16
    80003728:	00008067          	ret

000000008000372c <acquire>:
    8000372c:	fe010113          	addi	sp,sp,-32
    80003730:	00813823          	sd	s0,16(sp)
    80003734:	00913423          	sd	s1,8(sp)
    80003738:	00113c23          	sd	ra,24(sp)
    8000373c:	01213023          	sd	s2,0(sp)
    80003740:	02010413          	addi	s0,sp,32
    80003744:	00050493          	mv	s1,a0
    80003748:	10002973          	csrr	s2,sstatus
    8000374c:	100027f3          	csrr	a5,sstatus
    80003750:	ffd7f793          	andi	a5,a5,-3
    80003754:	10079073          	csrw	sstatus,a5
    80003758:	fffff097          	auipc	ra,0xfffff
    8000375c:	8e4080e7          	jalr	-1820(ra) # 8000203c <mycpu>
    80003760:	07852783          	lw	a5,120(a0)
    80003764:	06078e63          	beqz	a5,800037e0 <acquire+0xb4>
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	8d4080e7          	jalr	-1836(ra) # 8000203c <mycpu>
    80003770:	07852783          	lw	a5,120(a0)
    80003774:	0004a703          	lw	a4,0(s1)
    80003778:	0017879b          	addiw	a5,a5,1
    8000377c:	06f52c23          	sw	a5,120(a0)
    80003780:	04071063          	bnez	a4,800037c0 <acquire+0x94>
    80003784:	00100713          	li	a4,1
    80003788:	00070793          	mv	a5,a4
    8000378c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003790:	0007879b          	sext.w	a5,a5
    80003794:	fe079ae3          	bnez	a5,80003788 <acquire+0x5c>
    80003798:	0ff0000f          	fence
    8000379c:	fffff097          	auipc	ra,0xfffff
    800037a0:	8a0080e7          	jalr	-1888(ra) # 8000203c <mycpu>
    800037a4:	01813083          	ld	ra,24(sp)
    800037a8:	01013403          	ld	s0,16(sp)
    800037ac:	00a4b823          	sd	a0,16(s1)
    800037b0:	00013903          	ld	s2,0(sp)
    800037b4:	00813483          	ld	s1,8(sp)
    800037b8:	02010113          	addi	sp,sp,32
    800037bc:	00008067          	ret
    800037c0:	0104b903          	ld	s2,16(s1)
    800037c4:	fffff097          	auipc	ra,0xfffff
    800037c8:	878080e7          	jalr	-1928(ra) # 8000203c <mycpu>
    800037cc:	faa91ce3          	bne	s2,a0,80003784 <acquire+0x58>
    800037d0:	00001517          	auipc	a0,0x1
    800037d4:	a7050513          	addi	a0,a0,-1424 # 80004240 <digits+0x20>
    800037d8:	fffff097          	auipc	ra,0xfffff
    800037dc:	224080e7          	jalr	548(ra) # 800029fc <panic>
    800037e0:	00195913          	srli	s2,s2,0x1
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	858080e7          	jalr	-1960(ra) # 8000203c <mycpu>
    800037ec:	00197913          	andi	s2,s2,1
    800037f0:	07252e23          	sw	s2,124(a0)
    800037f4:	f75ff06f          	j	80003768 <acquire+0x3c>

00000000800037f8 <release>:
    800037f8:	fe010113          	addi	sp,sp,-32
    800037fc:	00813823          	sd	s0,16(sp)
    80003800:	00113c23          	sd	ra,24(sp)
    80003804:	00913423          	sd	s1,8(sp)
    80003808:	01213023          	sd	s2,0(sp)
    8000380c:	02010413          	addi	s0,sp,32
    80003810:	00052783          	lw	a5,0(a0)
    80003814:	00079a63          	bnez	a5,80003828 <release+0x30>
    80003818:	00001517          	auipc	a0,0x1
    8000381c:	a3050513          	addi	a0,a0,-1488 # 80004248 <digits+0x28>
    80003820:	fffff097          	auipc	ra,0xfffff
    80003824:	1dc080e7          	jalr	476(ra) # 800029fc <panic>
    80003828:	01053903          	ld	s2,16(a0)
    8000382c:	00050493          	mv	s1,a0
    80003830:	fffff097          	auipc	ra,0xfffff
    80003834:	80c080e7          	jalr	-2036(ra) # 8000203c <mycpu>
    80003838:	fea910e3          	bne	s2,a0,80003818 <release+0x20>
    8000383c:	0004b823          	sd	zero,16(s1)
    80003840:	0ff0000f          	fence
    80003844:	0f50000f          	fence	iorw,ow
    80003848:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000384c:	ffffe097          	auipc	ra,0xffffe
    80003850:	7f0080e7          	jalr	2032(ra) # 8000203c <mycpu>
    80003854:	100027f3          	csrr	a5,sstatus
    80003858:	0027f793          	andi	a5,a5,2
    8000385c:	04079a63          	bnez	a5,800038b0 <release+0xb8>
    80003860:	07852783          	lw	a5,120(a0)
    80003864:	02f05e63          	blez	a5,800038a0 <release+0xa8>
    80003868:	fff7871b          	addiw	a4,a5,-1
    8000386c:	06e52c23          	sw	a4,120(a0)
    80003870:	00071c63          	bnez	a4,80003888 <release+0x90>
    80003874:	07c52783          	lw	a5,124(a0)
    80003878:	00078863          	beqz	a5,80003888 <release+0x90>
    8000387c:	100027f3          	csrr	a5,sstatus
    80003880:	0027e793          	ori	a5,a5,2
    80003884:	10079073          	csrw	sstatus,a5
    80003888:	01813083          	ld	ra,24(sp)
    8000388c:	01013403          	ld	s0,16(sp)
    80003890:	00813483          	ld	s1,8(sp)
    80003894:	00013903          	ld	s2,0(sp)
    80003898:	02010113          	addi	sp,sp,32
    8000389c:	00008067          	ret
    800038a0:	00001517          	auipc	a0,0x1
    800038a4:	9c850513          	addi	a0,a0,-1592 # 80004268 <digits+0x48>
    800038a8:	fffff097          	auipc	ra,0xfffff
    800038ac:	154080e7          	jalr	340(ra) # 800029fc <panic>
    800038b0:	00001517          	auipc	a0,0x1
    800038b4:	9a050513          	addi	a0,a0,-1632 # 80004250 <digits+0x30>
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	144080e7          	jalr	324(ra) # 800029fc <panic>

00000000800038c0 <holding>:
    800038c0:	00052783          	lw	a5,0(a0)
    800038c4:	00079663          	bnez	a5,800038d0 <holding+0x10>
    800038c8:	00000513          	li	a0,0
    800038cc:	00008067          	ret
    800038d0:	fe010113          	addi	sp,sp,-32
    800038d4:	00813823          	sd	s0,16(sp)
    800038d8:	00913423          	sd	s1,8(sp)
    800038dc:	00113c23          	sd	ra,24(sp)
    800038e0:	02010413          	addi	s0,sp,32
    800038e4:	01053483          	ld	s1,16(a0)
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	754080e7          	jalr	1876(ra) # 8000203c <mycpu>
    800038f0:	01813083          	ld	ra,24(sp)
    800038f4:	01013403          	ld	s0,16(sp)
    800038f8:	40a48533          	sub	a0,s1,a0
    800038fc:	00153513          	seqz	a0,a0
    80003900:	00813483          	ld	s1,8(sp)
    80003904:	02010113          	addi	sp,sp,32
    80003908:	00008067          	ret

000000008000390c <push_off>:
    8000390c:	fe010113          	addi	sp,sp,-32
    80003910:	00813823          	sd	s0,16(sp)
    80003914:	00113c23          	sd	ra,24(sp)
    80003918:	00913423          	sd	s1,8(sp)
    8000391c:	02010413          	addi	s0,sp,32
    80003920:	100024f3          	csrr	s1,sstatus
    80003924:	100027f3          	csrr	a5,sstatus
    80003928:	ffd7f793          	andi	a5,a5,-3
    8000392c:	10079073          	csrw	sstatus,a5
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	70c080e7          	jalr	1804(ra) # 8000203c <mycpu>
    80003938:	07852783          	lw	a5,120(a0)
    8000393c:	02078663          	beqz	a5,80003968 <push_off+0x5c>
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	6fc080e7          	jalr	1788(ra) # 8000203c <mycpu>
    80003948:	07852783          	lw	a5,120(a0)
    8000394c:	01813083          	ld	ra,24(sp)
    80003950:	01013403          	ld	s0,16(sp)
    80003954:	0017879b          	addiw	a5,a5,1
    80003958:	06f52c23          	sw	a5,120(a0)
    8000395c:	00813483          	ld	s1,8(sp)
    80003960:	02010113          	addi	sp,sp,32
    80003964:	00008067          	ret
    80003968:	0014d493          	srli	s1,s1,0x1
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	6d0080e7          	jalr	1744(ra) # 8000203c <mycpu>
    80003974:	0014f493          	andi	s1,s1,1
    80003978:	06952e23          	sw	s1,124(a0)
    8000397c:	fc5ff06f          	j	80003940 <push_off+0x34>

0000000080003980 <pop_off>:
    80003980:	ff010113          	addi	sp,sp,-16
    80003984:	00813023          	sd	s0,0(sp)
    80003988:	00113423          	sd	ra,8(sp)
    8000398c:	01010413          	addi	s0,sp,16
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	6ac080e7          	jalr	1708(ra) # 8000203c <mycpu>
    80003998:	100027f3          	csrr	a5,sstatus
    8000399c:	0027f793          	andi	a5,a5,2
    800039a0:	04079663          	bnez	a5,800039ec <pop_off+0x6c>
    800039a4:	07852783          	lw	a5,120(a0)
    800039a8:	02f05a63          	blez	a5,800039dc <pop_off+0x5c>
    800039ac:	fff7871b          	addiw	a4,a5,-1
    800039b0:	06e52c23          	sw	a4,120(a0)
    800039b4:	00071c63          	bnez	a4,800039cc <pop_off+0x4c>
    800039b8:	07c52783          	lw	a5,124(a0)
    800039bc:	00078863          	beqz	a5,800039cc <pop_off+0x4c>
    800039c0:	100027f3          	csrr	a5,sstatus
    800039c4:	0027e793          	ori	a5,a5,2
    800039c8:	10079073          	csrw	sstatus,a5
    800039cc:	00813083          	ld	ra,8(sp)
    800039d0:	00013403          	ld	s0,0(sp)
    800039d4:	01010113          	addi	sp,sp,16
    800039d8:	00008067          	ret
    800039dc:	00001517          	auipc	a0,0x1
    800039e0:	88c50513          	addi	a0,a0,-1908 # 80004268 <digits+0x48>
    800039e4:	fffff097          	auipc	ra,0xfffff
    800039e8:	018080e7          	jalr	24(ra) # 800029fc <panic>
    800039ec:	00001517          	auipc	a0,0x1
    800039f0:	86450513          	addi	a0,a0,-1948 # 80004250 <digits+0x30>
    800039f4:	fffff097          	auipc	ra,0xfffff
    800039f8:	008080e7          	jalr	8(ra) # 800029fc <panic>

00000000800039fc <push_on>:
    800039fc:	fe010113          	addi	sp,sp,-32
    80003a00:	00813823          	sd	s0,16(sp)
    80003a04:	00113c23          	sd	ra,24(sp)
    80003a08:	00913423          	sd	s1,8(sp)
    80003a0c:	02010413          	addi	s0,sp,32
    80003a10:	100024f3          	csrr	s1,sstatus
    80003a14:	100027f3          	csrr	a5,sstatus
    80003a18:	0027e793          	ori	a5,a5,2
    80003a1c:	10079073          	csrw	sstatus,a5
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	61c080e7          	jalr	1564(ra) # 8000203c <mycpu>
    80003a28:	07852783          	lw	a5,120(a0)
    80003a2c:	02078663          	beqz	a5,80003a58 <push_on+0x5c>
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	60c080e7          	jalr	1548(ra) # 8000203c <mycpu>
    80003a38:	07852783          	lw	a5,120(a0)
    80003a3c:	01813083          	ld	ra,24(sp)
    80003a40:	01013403          	ld	s0,16(sp)
    80003a44:	0017879b          	addiw	a5,a5,1
    80003a48:	06f52c23          	sw	a5,120(a0)
    80003a4c:	00813483          	ld	s1,8(sp)
    80003a50:	02010113          	addi	sp,sp,32
    80003a54:	00008067          	ret
    80003a58:	0014d493          	srli	s1,s1,0x1
    80003a5c:	ffffe097          	auipc	ra,0xffffe
    80003a60:	5e0080e7          	jalr	1504(ra) # 8000203c <mycpu>
    80003a64:	0014f493          	andi	s1,s1,1
    80003a68:	06952e23          	sw	s1,124(a0)
    80003a6c:	fc5ff06f          	j	80003a30 <push_on+0x34>

0000000080003a70 <pop_on>:
    80003a70:	ff010113          	addi	sp,sp,-16
    80003a74:	00813023          	sd	s0,0(sp)
    80003a78:	00113423          	sd	ra,8(sp)
    80003a7c:	01010413          	addi	s0,sp,16
    80003a80:	ffffe097          	auipc	ra,0xffffe
    80003a84:	5bc080e7          	jalr	1468(ra) # 8000203c <mycpu>
    80003a88:	100027f3          	csrr	a5,sstatus
    80003a8c:	0027f793          	andi	a5,a5,2
    80003a90:	04078463          	beqz	a5,80003ad8 <pop_on+0x68>
    80003a94:	07852783          	lw	a5,120(a0)
    80003a98:	02f05863          	blez	a5,80003ac8 <pop_on+0x58>
    80003a9c:	fff7879b          	addiw	a5,a5,-1
    80003aa0:	06f52c23          	sw	a5,120(a0)
    80003aa4:	07853783          	ld	a5,120(a0)
    80003aa8:	00079863          	bnez	a5,80003ab8 <pop_on+0x48>
    80003aac:	100027f3          	csrr	a5,sstatus
    80003ab0:	ffd7f793          	andi	a5,a5,-3
    80003ab4:	10079073          	csrw	sstatus,a5
    80003ab8:	00813083          	ld	ra,8(sp)
    80003abc:	00013403          	ld	s0,0(sp)
    80003ac0:	01010113          	addi	sp,sp,16
    80003ac4:	00008067          	ret
    80003ac8:	00000517          	auipc	a0,0x0
    80003acc:	7c850513          	addi	a0,a0,1992 # 80004290 <digits+0x70>
    80003ad0:	fffff097          	auipc	ra,0xfffff
    80003ad4:	f2c080e7          	jalr	-212(ra) # 800029fc <panic>
    80003ad8:	00000517          	auipc	a0,0x0
    80003adc:	79850513          	addi	a0,a0,1944 # 80004270 <digits+0x50>
    80003ae0:	fffff097          	auipc	ra,0xfffff
    80003ae4:	f1c080e7          	jalr	-228(ra) # 800029fc <panic>

0000000080003ae8 <__memset>:
    80003ae8:	ff010113          	addi	sp,sp,-16
    80003aec:	00813423          	sd	s0,8(sp)
    80003af0:	01010413          	addi	s0,sp,16
    80003af4:	1a060e63          	beqz	a2,80003cb0 <__memset+0x1c8>
    80003af8:	40a007b3          	neg	a5,a0
    80003afc:	0077f793          	andi	a5,a5,7
    80003b00:	00778693          	addi	a3,a5,7
    80003b04:	00b00813          	li	a6,11
    80003b08:	0ff5f593          	andi	a1,a1,255
    80003b0c:	fff6071b          	addiw	a4,a2,-1
    80003b10:	1b06e663          	bltu	a3,a6,80003cbc <__memset+0x1d4>
    80003b14:	1cd76463          	bltu	a4,a3,80003cdc <__memset+0x1f4>
    80003b18:	1a078e63          	beqz	a5,80003cd4 <__memset+0x1ec>
    80003b1c:	00b50023          	sb	a1,0(a0)
    80003b20:	00100713          	li	a4,1
    80003b24:	1ae78463          	beq	a5,a4,80003ccc <__memset+0x1e4>
    80003b28:	00b500a3          	sb	a1,1(a0)
    80003b2c:	00200713          	li	a4,2
    80003b30:	1ae78a63          	beq	a5,a4,80003ce4 <__memset+0x1fc>
    80003b34:	00b50123          	sb	a1,2(a0)
    80003b38:	00300713          	li	a4,3
    80003b3c:	18e78463          	beq	a5,a4,80003cc4 <__memset+0x1dc>
    80003b40:	00b501a3          	sb	a1,3(a0)
    80003b44:	00400713          	li	a4,4
    80003b48:	1ae78263          	beq	a5,a4,80003cec <__memset+0x204>
    80003b4c:	00b50223          	sb	a1,4(a0)
    80003b50:	00500713          	li	a4,5
    80003b54:	1ae78063          	beq	a5,a4,80003cf4 <__memset+0x20c>
    80003b58:	00b502a3          	sb	a1,5(a0)
    80003b5c:	00700713          	li	a4,7
    80003b60:	18e79e63          	bne	a5,a4,80003cfc <__memset+0x214>
    80003b64:	00b50323          	sb	a1,6(a0)
    80003b68:	00700e93          	li	t4,7
    80003b6c:	00859713          	slli	a4,a1,0x8
    80003b70:	00e5e733          	or	a4,a1,a4
    80003b74:	01059e13          	slli	t3,a1,0x10
    80003b78:	01c76e33          	or	t3,a4,t3
    80003b7c:	01859313          	slli	t1,a1,0x18
    80003b80:	006e6333          	or	t1,t3,t1
    80003b84:	02059893          	slli	a7,a1,0x20
    80003b88:	40f60e3b          	subw	t3,a2,a5
    80003b8c:	011368b3          	or	a7,t1,a7
    80003b90:	02859813          	slli	a6,a1,0x28
    80003b94:	0108e833          	or	a6,a7,a6
    80003b98:	03059693          	slli	a3,a1,0x30
    80003b9c:	003e589b          	srliw	a7,t3,0x3
    80003ba0:	00d866b3          	or	a3,a6,a3
    80003ba4:	03859713          	slli	a4,a1,0x38
    80003ba8:	00389813          	slli	a6,a7,0x3
    80003bac:	00f507b3          	add	a5,a0,a5
    80003bb0:	00e6e733          	or	a4,a3,a4
    80003bb4:	000e089b          	sext.w	a7,t3
    80003bb8:	00f806b3          	add	a3,a6,a5
    80003bbc:	00e7b023          	sd	a4,0(a5)
    80003bc0:	00878793          	addi	a5,a5,8
    80003bc4:	fed79ce3          	bne	a5,a3,80003bbc <__memset+0xd4>
    80003bc8:	ff8e7793          	andi	a5,t3,-8
    80003bcc:	0007871b          	sext.w	a4,a5
    80003bd0:	01d787bb          	addw	a5,a5,t4
    80003bd4:	0ce88e63          	beq	a7,a4,80003cb0 <__memset+0x1c8>
    80003bd8:	00f50733          	add	a4,a0,a5
    80003bdc:	00b70023          	sb	a1,0(a4)
    80003be0:	0017871b          	addiw	a4,a5,1
    80003be4:	0cc77663          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003be8:	00e50733          	add	a4,a0,a4
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	0027871b          	addiw	a4,a5,2
    80003bf4:	0ac77e63          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00b70023          	sb	a1,0(a4)
    80003c00:	0037871b          	addiw	a4,a5,3
    80003c04:	0ac77663          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003c08:	00e50733          	add	a4,a0,a4
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	0047871b          	addiw	a4,a5,4
    80003c14:	08c77e63          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	0057871b          	addiw	a4,a5,5
    80003c24:	08c77663          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	0067871b          	addiw	a4,a5,6
    80003c34:	06c77e63          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003c38:	00e50733          	add	a4,a0,a4
    80003c3c:	00b70023          	sb	a1,0(a4)
    80003c40:	0077871b          	addiw	a4,a5,7
    80003c44:	06c77663          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003c48:	00e50733          	add	a4,a0,a4
    80003c4c:	00b70023          	sb	a1,0(a4)
    80003c50:	0087871b          	addiw	a4,a5,8
    80003c54:	04c77e63          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003c58:	00e50733          	add	a4,a0,a4
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	0097871b          	addiw	a4,a5,9
    80003c64:	04c77663          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003c68:	00e50733          	add	a4,a0,a4
    80003c6c:	00b70023          	sb	a1,0(a4)
    80003c70:	00a7871b          	addiw	a4,a5,10
    80003c74:	02c77e63          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003c78:	00e50733          	add	a4,a0,a4
    80003c7c:	00b70023          	sb	a1,0(a4)
    80003c80:	00b7871b          	addiw	a4,a5,11
    80003c84:	02c77663          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003c88:	00e50733          	add	a4,a0,a4
    80003c8c:	00b70023          	sb	a1,0(a4)
    80003c90:	00c7871b          	addiw	a4,a5,12
    80003c94:	00c77e63          	bgeu	a4,a2,80003cb0 <__memset+0x1c8>
    80003c98:	00e50733          	add	a4,a0,a4
    80003c9c:	00b70023          	sb	a1,0(a4)
    80003ca0:	00d7879b          	addiw	a5,a5,13
    80003ca4:	00c7f663          	bgeu	a5,a2,80003cb0 <__memset+0x1c8>
    80003ca8:	00f507b3          	add	a5,a0,a5
    80003cac:	00b78023          	sb	a1,0(a5)
    80003cb0:	00813403          	ld	s0,8(sp)
    80003cb4:	01010113          	addi	sp,sp,16
    80003cb8:	00008067          	ret
    80003cbc:	00b00693          	li	a3,11
    80003cc0:	e55ff06f          	j	80003b14 <__memset+0x2c>
    80003cc4:	00300e93          	li	t4,3
    80003cc8:	ea5ff06f          	j	80003b6c <__memset+0x84>
    80003ccc:	00100e93          	li	t4,1
    80003cd0:	e9dff06f          	j	80003b6c <__memset+0x84>
    80003cd4:	00000e93          	li	t4,0
    80003cd8:	e95ff06f          	j	80003b6c <__memset+0x84>
    80003cdc:	00000793          	li	a5,0
    80003ce0:	ef9ff06f          	j	80003bd8 <__memset+0xf0>
    80003ce4:	00200e93          	li	t4,2
    80003ce8:	e85ff06f          	j	80003b6c <__memset+0x84>
    80003cec:	00400e93          	li	t4,4
    80003cf0:	e7dff06f          	j	80003b6c <__memset+0x84>
    80003cf4:	00500e93          	li	t4,5
    80003cf8:	e75ff06f          	j	80003b6c <__memset+0x84>
    80003cfc:	00600e93          	li	t4,6
    80003d00:	e6dff06f          	j	80003b6c <__memset+0x84>

0000000080003d04 <__memmove>:
    80003d04:	ff010113          	addi	sp,sp,-16
    80003d08:	00813423          	sd	s0,8(sp)
    80003d0c:	01010413          	addi	s0,sp,16
    80003d10:	0e060863          	beqz	a2,80003e00 <__memmove+0xfc>
    80003d14:	fff6069b          	addiw	a3,a2,-1
    80003d18:	0006881b          	sext.w	a6,a3
    80003d1c:	0ea5e863          	bltu	a1,a0,80003e0c <__memmove+0x108>
    80003d20:	00758713          	addi	a4,a1,7
    80003d24:	00a5e7b3          	or	a5,a1,a0
    80003d28:	40a70733          	sub	a4,a4,a0
    80003d2c:	0077f793          	andi	a5,a5,7
    80003d30:	00f73713          	sltiu	a4,a4,15
    80003d34:	00174713          	xori	a4,a4,1
    80003d38:	0017b793          	seqz	a5,a5
    80003d3c:	00e7f7b3          	and	a5,a5,a4
    80003d40:	10078863          	beqz	a5,80003e50 <__memmove+0x14c>
    80003d44:	00900793          	li	a5,9
    80003d48:	1107f463          	bgeu	a5,a6,80003e50 <__memmove+0x14c>
    80003d4c:	0036581b          	srliw	a6,a2,0x3
    80003d50:	fff8081b          	addiw	a6,a6,-1
    80003d54:	02081813          	slli	a6,a6,0x20
    80003d58:	01d85893          	srli	a7,a6,0x1d
    80003d5c:	00858813          	addi	a6,a1,8
    80003d60:	00058793          	mv	a5,a1
    80003d64:	00050713          	mv	a4,a0
    80003d68:	01088833          	add	a6,a7,a6
    80003d6c:	0007b883          	ld	a7,0(a5)
    80003d70:	00878793          	addi	a5,a5,8
    80003d74:	00870713          	addi	a4,a4,8
    80003d78:	ff173c23          	sd	a7,-8(a4)
    80003d7c:	ff0798e3          	bne	a5,a6,80003d6c <__memmove+0x68>
    80003d80:	ff867713          	andi	a4,a2,-8
    80003d84:	02071793          	slli	a5,a4,0x20
    80003d88:	0207d793          	srli	a5,a5,0x20
    80003d8c:	00f585b3          	add	a1,a1,a5
    80003d90:	40e686bb          	subw	a3,a3,a4
    80003d94:	00f507b3          	add	a5,a0,a5
    80003d98:	06e60463          	beq	a2,a4,80003e00 <__memmove+0xfc>
    80003d9c:	0005c703          	lbu	a4,0(a1)
    80003da0:	00e78023          	sb	a4,0(a5)
    80003da4:	04068e63          	beqz	a3,80003e00 <__memmove+0xfc>
    80003da8:	0015c603          	lbu	a2,1(a1)
    80003dac:	00100713          	li	a4,1
    80003db0:	00c780a3          	sb	a2,1(a5)
    80003db4:	04e68663          	beq	a3,a4,80003e00 <__memmove+0xfc>
    80003db8:	0025c603          	lbu	a2,2(a1)
    80003dbc:	00200713          	li	a4,2
    80003dc0:	00c78123          	sb	a2,2(a5)
    80003dc4:	02e68e63          	beq	a3,a4,80003e00 <__memmove+0xfc>
    80003dc8:	0035c603          	lbu	a2,3(a1)
    80003dcc:	00300713          	li	a4,3
    80003dd0:	00c781a3          	sb	a2,3(a5)
    80003dd4:	02e68663          	beq	a3,a4,80003e00 <__memmove+0xfc>
    80003dd8:	0045c603          	lbu	a2,4(a1)
    80003ddc:	00400713          	li	a4,4
    80003de0:	00c78223          	sb	a2,4(a5)
    80003de4:	00e68e63          	beq	a3,a4,80003e00 <__memmove+0xfc>
    80003de8:	0055c603          	lbu	a2,5(a1)
    80003dec:	00500713          	li	a4,5
    80003df0:	00c782a3          	sb	a2,5(a5)
    80003df4:	00e68663          	beq	a3,a4,80003e00 <__memmove+0xfc>
    80003df8:	0065c703          	lbu	a4,6(a1)
    80003dfc:	00e78323          	sb	a4,6(a5)
    80003e00:	00813403          	ld	s0,8(sp)
    80003e04:	01010113          	addi	sp,sp,16
    80003e08:	00008067          	ret
    80003e0c:	02061713          	slli	a4,a2,0x20
    80003e10:	02075713          	srli	a4,a4,0x20
    80003e14:	00e587b3          	add	a5,a1,a4
    80003e18:	f0f574e3          	bgeu	a0,a5,80003d20 <__memmove+0x1c>
    80003e1c:	02069613          	slli	a2,a3,0x20
    80003e20:	02065613          	srli	a2,a2,0x20
    80003e24:	fff64613          	not	a2,a2
    80003e28:	00e50733          	add	a4,a0,a4
    80003e2c:	00c78633          	add	a2,a5,a2
    80003e30:	fff7c683          	lbu	a3,-1(a5)
    80003e34:	fff78793          	addi	a5,a5,-1
    80003e38:	fff70713          	addi	a4,a4,-1
    80003e3c:	00d70023          	sb	a3,0(a4)
    80003e40:	fec798e3          	bne	a5,a2,80003e30 <__memmove+0x12c>
    80003e44:	00813403          	ld	s0,8(sp)
    80003e48:	01010113          	addi	sp,sp,16
    80003e4c:	00008067          	ret
    80003e50:	02069713          	slli	a4,a3,0x20
    80003e54:	02075713          	srli	a4,a4,0x20
    80003e58:	00170713          	addi	a4,a4,1
    80003e5c:	00e50733          	add	a4,a0,a4
    80003e60:	00050793          	mv	a5,a0
    80003e64:	0005c683          	lbu	a3,0(a1)
    80003e68:	00178793          	addi	a5,a5,1
    80003e6c:	00158593          	addi	a1,a1,1
    80003e70:	fed78fa3          	sb	a3,-1(a5)
    80003e74:	fee798e3          	bne	a5,a4,80003e64 <__memmove+0x160>
    80003e78:	f89ff06f          	j	80003e00 <__memmove+0xfc>

0000000080003e7c <__putc>:
    80003e7c:	fe010113          	addi	sp,sp,-32
    80003e80:	00813823          	sd	s0,16(sp)
    80003e84:	00113c23          	sd	ra,24(sp)
    80003e88:	02010413          	addi	s0,sp,32
    80003e8c:	00050793          	mv	a5,a0
    80003e90:	fef40593          	addi	a1,s0,-17
    80003e94:	00100613          	li	a2,1
    80003e98:	00000513          	li	a0,0
    80003e9c:	fef407a3          	sb	a5,-17(s0)
    80003ea0:	fffff097          	auipc	ra,0xfffff
    80003ea4:	b3c080e7          	jalr	-1220(ra) # 800029dc <console_write>
    80003ea8:	01813083          	ld	ra,24(sp)
    80003eac:	01013403          	ld	s0,16(sp)
    80003eb0:	02010113          	addi	sp,sp,32
    80003eb4:	00008067          	ret

0000000080003eb8 <__getc>:
    80003eb8:	fe010113          	addi	sp,sp,-32
    80003ebc:	00813823          	sd	s0,16(sp)
    80003ec0:	00113c23          	sd	ra,24(sp)
    80003ec4:	02010413          	addi	s0,sp,32
    80003ec8:	fe840593          	addi	a1,s0,-24
    80003ecc:	00100613          	li	a2,1
    80003ed0:	00000513          	li	a0,0
    80003ed4:	fffff097          	auipc	ra,0xfffff
    80003ed8:	ae8080e7          	jalr	-1304(ra) # 800029bc <console_read>
    80003edc:	fe844503          	lbu	a0,-24(s0)
    80003ee0:	01813083          	ld	ra,24(sp)
    80003ee4:	01013403          	ld	s0,16(sp)
    80003ee8:	02010113          	addi	sp,sp,32
    80003eec:	00008067          	ret

0000000080003ef0 <console_handler>:
    80003ef0:	fe010113          	addi	sp,sp,-32
    80003ef4:	00813823          	sd	s0,16(sp)
    80003ef8:	00113c23          	sd	ra,24(sp)
    80003efc:	00913423          	sd	s1,8(sp)
    80003f00:	02010413          	addi	s0,sp,32
    80003f04:	14202773          	csrr	a4,scause
    80003f08:	100027f3          	csrr	a5,sstatus
    80003f0c:	0027f793          	andi	a5,a5,2
    80003f10:	06079e63          	bnez	a5,80003f8c <console_handler+0x9c>
    80003f14:	00074c63          	bltz	a4,80003f2c <console_handler+0x3c>
    80003f18:	01813083          	ld	ra,24(sp)
    80003f1c:	01013403          	ld	s0,16(sp)
    80003f20:	00813483          	ld	s1,8(sp)
    80003f24:	02010113          	addi	sp,sp,32
    80003f28:	00008067          	ret
    80003f2c:	0ff77713          	andi	a4,a4,255
    80003f30:	00900793          	li	a5,9
    80003f34:	fef712e3          	bne	a4,a5,80003f18 <console_handler+0x28>
    80003f38:	ffffe097          	auipc	ra,0xffffe
    80003f3c:	6dc080e7          	jalr	1756(ra) # 80002614 <plic_claim>
    80003f40:	00a00793          	li	a5,10
    80003f44:	00050493          	mv	s1,a0
    80003f48:	02f50c63          	beq	a0,a5,80003f80 <console_handler+0x90>
    80003f4c:	fc0506e3          	beqz	a0,80003f18 <console_handler+0x28>
    80003f50:	00050593          	mv	a1,a0
    80003f54:	00000517          	auipc	a0,0x0
    80003f58:	24450513          	addi	a0,a0,580 # 80004198 <_ZZ12printIntegermE6digits+0xe0>
    80003f5c:	fffff097          	auipc	ra,0xfffff
    80003f60:	afc080e7          	jalr	-1284(ra) # 80002a58 <__printf>
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	01813083          	ld	ra,24(sp)
    80003f6c:	00048513          	mv	a0,s1
    80003f70:	00813483          	ld	s1,8(sp)
    80003f74:	02010113          	addi	sp,sp,32
    80003f78:	ffffe317          	auipc	t1,0xffffe
    80003f7c:	6d430067          	jr	1748(t1) # 8000264c <plic_complete>
    80003f80:	fffff097          	auipc	ra,0xfffff
    80003f84:	3e0080e7          	jalr	992(ra) # 80003360 <uartintr>
    80003f88:	fddff06f          	j	80003f64 <console_handler+0x74>
    80003f8c:	00000517          	auipc	a0,0x0
    80003f90:	30c50513          	addi	a0,a0,780 # 80004298 <digits+0x78>
    80003f94:	fffff097          	auipc	ra,0xfffff
    80003f98:	a68080e7          	jalr	-1432(ra) # 800029fc <panic>
	...
