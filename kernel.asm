
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	82013103          	ld	sp,-2016(sp) # 80005820 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	264020ef          	jal	ra,80002280 <start>

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
    80001184:	4e8000ef          	jal	ra,8000166c <_ZN5RiscV20handleSupervisorTrapEv>

    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31

    ld x\index, \index * 8 (sp)
    .endr
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

0000000080001224 <_ZL9fibonaccim>:
            //TCB::yield();
        }
    }
}

static uint64 fibonacci(uint64 n) {
    80001224:	fe010113          	addi	sp,sp,-32
    80001228:	00113c23          	sd	ra,24(sp)
    8000122c:	00813823          	sd	s0,16(sp)
    80001230:	00913423          	sd	s1,8(sp)
    80001234:	01213023          	sd	s2,0(sp)
    80001238:	02010413          	addi	s0,sp,32
    8000123c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001240:	00100793          	li	a5,1
    80001244:	02a7f663          	bgeu	a5,a0,80001270 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) TCB::yield();
    80001248:	00357793          	andi	a5,a0,3
    8000124c:	02078e63          	beqz	a5,80001288 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001250:	fff48513          	addi	a0,s1,-1
    80001254:	00000097          	auipc	ra,0x0
    80001258:	fd0080e7          	jalr	-48(ra) # 80001224 <_ZL9fibonaccim>
    8000125c:	00050913          	mv	s2,a0
    80001260:	ffe48513          	addi	a0,s1,-2
    80001264:	00000097          	auipc	ra,0x0
    80001268:	fc0080e7          	jalr	-64(ra) # 80001224 <_ZL9fibonaccim>
    8000126c:	00a90533          	add	a0,s2,a0
}
    80001270:	01813083          	ld	ra,24(sp)
    80001274:	01013403          	ld	s0,16(sp)
    80001278:	00813483          	ld	s1,8(sp)
    8000127c:	00013903          	ld	s2,0(sp)
    80001280:	02010113          	addi	sp,sp,32
    80001284:	00008067          	ret
    if (n % 4 == 0) TCB::yield();
    80001288:	00001097          	auipc	ra,0x1
    8000128c:	91c080e7          	jalr	-1764(ra) # 80001ba4 <_ZN3TCB5yieldEv>
    80001290:	fc1ff06f          	j	80001250 <_ZL9fibonaccim+0x2c>

0000000080001294 <_Z11workerBodyAv>:
void workerBodyA(){
    80001294:	fe010113          	addi	sp,sp,-32
    80001298:	00113c23          	sd	ra,24(sp)
    8000129c:	00813823          	sd	s0,16(sp)
    800012a0:	00913423          	sd	s1,8(sp)
    800012a4:	02010413          	addi	s0,sp,32
    for(uint64 i=0;i<10;i++){
    800012a8:	00000493          	li	s1,0
    800012ac:	0300006f          	j	800012dc <_Z11workerBodyAv+0x48>
        for(uint64 j=0; j<10000; j++){
    800012b0:	00168693          	addi	a3,a3,1
    800012b4:	000027b7          	lui	a5,0x2
    800012b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800012bc:	00d7ee63          	bltu	a5,a3,800012d8 <_Z11workerBodyAv+0x44>
            for(uint64 k=0;k<30000;k++){
    800012c0:	00000713          	li	a4,0
    800012c4:	000077b7          	lui	a5,0x7
    800012c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800012cc:	fee7e2e3          	bltu	a5,a4,800012b0 <_Z11workerBodyAv+0x1c>
    800012d0:	00170713          	addi	a4,a4,1
    800012d4:	ff1ff06f          	j	800012c4 <_Z11workerBodyAv+0x30>
    for(uint64 i=0;i<10;i++){
    800012d8:	00148493          	addi	s1,s1,1
    800012dc:	00900793          	li	a5,9
    800012e0:	0297ec63          	bltu	a5,s1,80001318 <_Z11workerBodyAv+0x84>
        printString("A: i=");
    800012e4:	00004517          	auipc	a0,0x4
    800012e8:	d3c50513          	addi	a0,a0,-708 # 80005020 <CONSOLE_STATUS+0x10>
    800012ec:	00001097          	auipc	ra,0x1
    800012f0:	e68080e7          	jalr	-408(ra) # 80002154 <_Z11printStringPKc>
        printInteger(i);
    800012f4:	00048513          	mv	a0,s1
    800012f8:	00001097          	auipc	ra,0x1
    800012fc:	ecc080e7          	jalr	-308(ra) # 800021c4 <_Z12printIntegerm>
        printString("\n");
    80001300:	00004517          	auipc	a0,0x4
    80001304:	df050513          	addi	a0,a0,-528 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001308:	00001097          	auipc	ra,0x1
    8000130c:	e4c080e7          	jalr	-436(ra) # 80002154 <_Z11printStringPKc>
        for(uint64 j=0; j<10000; j++){
    80001310:	00000693          	li	a3,0
    80001314:	fa1ff06f          	j	800012b4 <_Z11workerBodyAv+0x20>
}
    80001318:	01813083          	ld	ra,24(sp)
    8000131c:	01013403          	ld	s0,16(sp)
    80001320:	00813483          	ld	s1,8(sp)
    80001324:	02010113          	addi	sp,sp,32
    80001328:	00008067          	ret

000000008000132c <_Z11workerBodyBv>:
void workerBodyB(){
    8000132c:	fe010113          	addi	sp,sp,-32
    80001330:	00113c23          	sd	ra,24(sp)
    80001334:	00813823          	sd	s0,16(sp)
    80001338:	00913423          	sd	s1,8(sp)
    8000133c:	02010413          	addi	s0,sp,32
    for(uint64 i=0;i<16;i++){
    80001340:	00000493          	li	s1,0
    80001344:	0300006f          	j	80001374 <_Z11workerBodyBv+0x48>
        for(uint64 j=0; j<10000; j++){
    80001348:	00168693          	addi	a3,a3,1
    8000134c:	000027b7          	lui	a5,0x2
    80001350:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001354:	00d7ee63          	bltu	a5,a3,80001370 <_Z11workerBodyBv+0x44>
            for(uint64 k=0;k<30000;k++){
    80001358:	00000713          	li	a4,0
    8000135c:	000077b7          	lui	a5,0x7
    80001360:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001364:	fee7e2e3          	bltu	a5,a4,80001348 <_Z11workerBodyBv+0x1c>
    80001368:	00170713          	addi	a4,a4,1
    8000136c:	ff1ff06f          	j	8000135c <_Z11workerBodyBv+0x30>
    for(uint64 i=0;i<16;i++){
    80001370:	00148493          	addi	s1,s1,1
    80001374:	00f00793          	li	a5,15
    80001378:	0297ec63          	bltu	a5,s1,800013b0 <_Z11workerBodyBv+0x84>
        printString("B: i=");
    8000137c:	00004517          	auipc	a0,0x4
    80001380:	cac50513          	addi	a0,a0,-852 # 80005028 <CONSOLE_STATUS+0x18>
    80001384:	00001097          	auipc	ra,0x1
    80001388:	dd0080e7          	jalr	-560(ra) # 80002154 <_Z11printStringPKc>
        printInteger(i);
    8000138c:	00048513          	mv	a0,s1
    80001390:	00001097          	auipc	ra,0x1
    80001394:	e34080e7          	jalr	-460(ra) # 800021c4 <_Z12printIntegerm>
        printString("\n");
    80001398:	00004517          	auipc	a0,0x4
    8000139c:	d5850513          	addi	a0,a0,-680 # 800050f0 <CONSOLE_STATUS+0xe0>
    800013a0:	00001097          	auipc	ra,0x1
    800013a4:	db4080e7          	jalr	-588(ra) # 80002154 <_Z11printStringPKc>
        for(uint64 j=0; j<10000; j++){
    800013a8:	00000693          	li	a3,0
    800013ac:	fa1ff06f          	j	8000134c <_Z11workerBodyBv+0x20>
}
    800013b0:	01813083          	ld	ra,24(sp)
    800013b4:	01013403          	ld	s0,16(sp)
    800013b8:	00813483          	ld	s1,8(sp)
    800013bc:	02010113          	addi	sp,sp,32
    800013c0:	00008067          	ret

00000000800013c4 <_Z11workerBodyCv>:

void workerBodyC(){
    800013c4:	fe010113          	addi	sp,sp,-32
    800013c8:	00113c23          	sd	ra,24(sp)
    800013cc:	00813823          	sd	s0,16(sp)
    800013d0:	00913423          	sd	s1,8(sp)
    800013d4:	01213023          	sd	s2,0(sp)
    800013d8:	02010413          	addi	s0,sp,32
    uint8 i=0;
    800013dc:	00000493          	li	s1,0
    800013e0:	0380006f          	j	80001418 <_Z11workerBodyCv+0x54>
    for(; i<3 ; i++){
        printString("C: i=");
    800013e4:	00004517          	auipc	a0,0x4
    800013e8:	c4c50513          	addi	a0,a0,-948 # 80005030 <CONSOLE_STATUS+0x20>
    800013ec:	00001097          	auipc	ra,0x1
    800013f0:	d68080e7          	jalr	-664(ra) # 80002154 <_Z11printStringPKc>
        printInteger(i);
    800013f4:	00048513          	mv	a0,s1
    800013f8:	00001097          	auipc	ra,0x1
    800013fc:	dcc080e7          	jalr	-564(ra) # 800021c4 <_Z12printIntegerm>
        printString("\n");
    80001400:	00004517          	auipc	a0,0x4
    80001404:	cf050513          	addi	a0,a0,-784 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001408:	00001097          	auipc	ra,0x1
    8000140c:	d4c080e7          	jalr	-692(ra) # 80002154 <_Z11printStringPKc>
    for(; i<3 ; i++){
    80001410:	0014849b          	addiw	s1,s1,1
    80001414:	0ff4f493          	andi	s1,s1,255
    80001418:	00200793          	li	a5,2
    8000141c:	fc97f4e3          	bgeu	a5,s1,800013e4 <_Z11workerBodyCv+0x20>
    }

    printString("C yield\n");
    80001420:	00004517          	auipc	a0,0x4
    80001424:	c1850513          	addi	a0,a0,-1000 # 80005038 <CONSOLE_STATUS+0x28>
    80001428:	00001097          	auipc	ra,0x1
    8000142c:	d2c080e7          	jalr	-724(ra) # 80002154 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001430:	00700313          	li	t1,7
    TCB::yield();
    80001434:	00000097          	auipc	ra,0x0
    80001438:	770080e7          	jalr	1904(ra) # 80001ba4 <_ZN3TCB5yieldEv>

    uint64 t1=0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000143c:	00030913          	mv	s2,t1

    printString("C: t1=");
    80001440:	00004517          	auipc	a0,0x4
    80001444:	c0850513          	addi	a0,a0,-1016 # 80005048 <CONSOLE_STATUS+0x38>
    80001448:	00001097          	auipc	ra,0x1
    8000144c:	d0c080e7          	jalr	-756(ra) # 80002154 <_Z11printStringPKc>
    printInteger(t1);
    80001450:	00090513          	mv	a0,s2
    80001454:	00001097          	auipc	ra,0x1
    80001458:	d70080e7          	jalr	-656(ra) # 800021c4 <_Z12printIntegerm>
    printString("\n");
    8000145c:	00004517          	auipc	a0,0x4
    80001460:	c9450513          	addi	a0,a0,-876 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001464:	00001097          	auipc	ra,0x1
    80001468:	cf0080e7          	jalr	-784(ra) # 80002154 <_Z11printStringPKc>

    uint64 result = fibonacci (20);
    8000146c:	01400513          	li	a0,20
    80001470:	00000097          	auipc	ra,0x0
    80001474:	db4080e7          	jalr	-588(ra) # 80001224 <_ZL9fibonaccim>
    80001478:	00050913          	mv	s2,a0
    printString("C: fibonacci=");
    8000147c:	00004517          	auipc	a0,0x4
    80001480:	bd450513          	addi	a0,a0,-1068 # 80005050 <CONSOLE_STATUS+0x40>
    80001484:	00001097          	auipc	ra,0x1
    80001488:	cd0080e7          	jalr	-816(ra) # 80002154 <_Z11printStringPKc>
    printInteger(result);
    8000148c:	00090513          	mv	a0,s2
    80001490:	00001097          	auipc	ra,0x1
    80001494:	d34080e7          	jalr	-716(ra) # 800021c4 <_Z12printIntegerm>
    printString("\n");
    80001498:	00004517          	auipc	a0,0x4
    8000149c:	c5850513          	addi	a0,a0,-936 # 800050f0 <CONSOLE_STATUS+0xe0>
    800014a0:	00001097          	auipc	ra,0x1
    800014a4:	cb4080e7          	jalr	-844(ra) # 80002154 <_Z11printStringPKc>
    800014a8:	0380006f          	j	800014e0 <_Z11workerBodyCv+0x11c>

    for(; i<6; i++){
        printString("C: i=");
    800014ac:	00004517          	auipc	a0,0x4
    800014b0:	b8450513          	addi	a0,a0,-1148 # 80005030 <CONSOLE_STATUS+0x20>
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	ca0080e7          	jalr	-864(ra) # 80002154 <_Z11printStringPKc>
        printInteger(i);
    800014bc:	00048513          	mv	a0,s1
    800014c0:	00001097          	auipc	ra,0x1
    800014c4:	d04080e7          	jalr	-764(ra) # 800021c4 <_Z12printIntegerm>
        printString("\n");
    800014c8:	00004517          	auipc	a0,0x4
    800014cc:	c2850513          	addi	a0,a0,-984 # 800050f0 <CONSOLE_STATUS+0xe0>
    800014d0:	00001097          	auipc	ra,0x1
    800014d4:	c84080e7          	jalr	-892(ra) # 80002154 <_Z11printStringPKc>
    for(; i<6; i++){
    800014d8:	0014849b          	addiw	s1,s1,1
    800014dc:	0ff4f493          	andi	s1,s1,255
    800014e0:	00500793          	li	a5,5
    800014e4:	fc97f4e3          	bgeu	a5,s1,800014ac <_Z11workerBodyCv+0xe8>
    }

    TCB::running->setFinished(true);
    800014e8:	00100593          	li	a1,1
    800014ec:	00004797          	auipc	a5,0x4
    800014f0:	3547b783          	ld	a5,852(a5) # 80005840 <_GLOBAL_OFFSET_TABLE_+0x48>
    800014f4:	0007b503          	ld	a0,0(a5)
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	5c8080e7          	jalr	1480(ra) # 80001ac0 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80001500:	00000097          	auipc	ra,0x0
    80001504:	6a4080e7          	jalr	1700(ra) # 80001ba4 <_ZN3TCB5yieldEv>
}
    80001508:	01813083          	ld	ra,24(sp)
    8000150c:	01013403          	ld	s0,16(sp)
    80001510:	00813483          	ld	s1,8(sp)
    80001514:	00013903          	ld	s2,0(sp)
    80001518:	02010113          	addi	sp,sp,32
    8000151c:	00008067          	ret

0000000080001520 <_Z11workerBodyDv>:

void workerBodyD(){
    80001520:	fe010113          	addi	sp,sp,-32
    80001524:	00113c23          	sd	ra,24(sp)
    80001528:	00813823          	sd	s0,16(sp)
    8000152c:	00913423          	sd	s1,8(sp)
    80001530:	01213023          	sd	s2,0(sp)
    80001534:	02010413          	addi	s0,sp,32
    uint8 i=10;
    80001538:	00a00493          	li	s1,10
    8000153c:	0380006f          	j	80001574 <_Z11workerBodyDv+0x54>
    for(; i<13; i++){
        printString("D: i=");
    80001540:	00004517          	auipc	a0,0x4
    80001544:	b2050513          	addi	a0,a0,-1248 # 80005060 <CONSOLE_STATUS+0x50>
    80001548:	00001097          	auipc	ra,0x1
    8000154c:	c0c080e7          	jalr	-1012(ra) # 80002154 <_Z11printStringPKc>
        printInteger(i);
    80001550:	00048513          	mv	a0,s1
    80001554:	00001097          	auipc	ra,0x1
    80001558:	c70080e7          	jalr	-912(ra) # 800021c4 <_Z12printIntegerm>
        printString("\n");
    8000155c:	00004517          	auipc	a0,0x4
    80001560:	b9450513          	addi	a0,a0,-1132 # 800050f0 <CONSOLE_STATUS+0xe0>
    80001564:	00001097          	auipc	ra,0x1
    80001568:	bf0080e7          	jalr	-1040(ra) # 80002154 <_Z11printStringPKc>
    for(; i<13; i++){
    8000156c:	0014849b          	addiw	s1,s1,1
    80001570:	0ff4f493          	andi	s1,s1,255
    80001574:	00c00793          	li	a5,12
    80001578:	fc97f4e3          	bgeu	a5,s1,80001540 <_Z11workerBodyDv+0x20>
    }

    printString("D: yield\n");
    8000157c:	00004517          	auipc	a0,0x4
    80001580:	aec50513          	addi	a0,a0,-1300 # 80005068 <CONSOLE_STATUS+0x58>
    80001584:	00001097          	auipc	ra,0x1
    80001588:	bd0080e7          	jalr	-1072(ra) # 80002154 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000158c:	00500313          	li	t1,5
    TCB::yield();
    80001590:	00000097          	auipc	ra,0x0
    80001594:	614080e7          	jalr	1556(ra) # 80001ba4 <_ZN3TCB5yieldEv>

    uint64 result=fibonacci(23);
    80001598:	01700513          	li	a0,23
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	c88080e7          	jalr	-888(ra) # 80001224 <_ZL9fibonaccim>
    800015a4:	00050913          	mv	s2,a0
    printString("D: fibonaci=");
    800015a8:	00004517          	auipc	a0,0x4
    800015ac:	ad050513          	addi	a0,a0,-1328 # 80005078 <CONSOLE_STATUS+0x68>
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	ba4080e7          	jalr	-1116(ra) # 80002154 <_Z11printStringPKc>
    printInteger(result);
    800015b8:	00090513          	mv	a0,s2
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	c08080e7          	jalr	-1016(ra) # 800021c4 <_Z12printIntegerm>
    printString("\n");
    800015c4:	00004517          	auipc	a0,0x4
    800015c8:	b2c50513          	addi	a0,a0,-1236 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015cc:	00001097          	auipc	ra,0x1
    800015d0:	b88080e7          	jalr	-1144(ra) # 80002154 <_Z11printStringPKc>
    800015d4:	0380006f          	j	8000160c <_Z11workerBodyDv+0xec>

    for(; i<16; i++){
        printString("B: i=");
    800015d8:	00004517          	auipc	a0,0x4
    800015dc:	a5050513          	addi	a0,a0,-1456 # 80005028 <CONSOLE_STATUS+0x18>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	b74080e7          	jalr	-1164(ra) # 80002154 <_Z11printStringPKc>
        printInteger(i);
    800015e8:	00048513          	mv	a0,s1
    800015ec:	00001097          	auipc	ra,0x1
    800015f0:	bd8080e7          	jalr	-1064(ra) # 800021c4 <_Z12printIntegerm>
        printString("\n");
    800015f4:	00004517          	auipc	a0,0x4
    800015f8:	afc50513          	addi	a0,a0,-1284 # 800050f0 <CONSOLE_STATUS+0xe0>
    800015fc:	00001097          	auipc	ra,0x1
    80001600:	b58080e7          	jalr	-1192(ra) # 80002154 <_Z11printStringPKc>
    for(; i<16; i++){
    80001604:	0014849b          	addiw	s1,s1,1
    80001608:	0ff4f493          	andi	s1,s1,255
    8000160c:	00f00793          	li	a5,15
    80001610:	fc97f4e3          	bgeu	a5,s1,800015d8 <_Z11workerBodyDv+0xb8>
    }

    TCB::running->setFinished(true);
    80001614:	00100593          	li	a1,1
    80001618:	00004797          	auipc	a5,0x4
    8000161c:	2287b783          	ld	a5,552(a5) # 80005840 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001620:	0007b503          	ld	a0,0(a5)
    80001624:	00000097          	auipc	ra,0x0
    80001628:	49c080e7          	jalr	1180(ra) # 80001ac0 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	578080e7          	jalr	1400(ra) # 80001ba4 <_ZN3TCB5yieldEv>
    80001634:	01813083          	ld	ra,24(sp)
    80001638:	01013403          	ld	s0,16(sp)
    8000163c:	00813483          	ld	s1,8(sp)
    80001640:	00013903          	ld	s2,0(sp)
    80001644:	02010113          	addi	sp,sp,32
    80001648:	00008067          	ret

000000008000164c <_ZN5RiscV10popSppSpieEv>:
#include "../h/RiscV.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"


void RiscV::popSppSpie() {
    8000164c:	ff010113          	addi	sp,sp,-16
    80001650:	00813423          	sd	s0,8(sp)
    80001654:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001658:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000165c:	10200073          	sret
}
    80001660:	00813403          	ld	s0,8(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZN5RiscV20handleSupervisorTrapEv>:

void RiscV::handleSupervisorTrap() {
    8000166c:	fb010113          	addi	sp,sp,-80
    80001670:	04113423          	sd	ra,72(sp)
    80001674:	04813023          	sd	s0,64(sp)
    80001678:	02913c23          	sd	s1,56(sp)
    8000167c:	03213823          	sd	s2,48(sp)
    80001680:	05010413          	addi	s0,sp,80
    static void handleSupervisorTrap();
};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile("csrr %[scause], scause" : [scause] "=r"(scause));
    80001684:	142027f3          	csrr	a5,scause
    80001688:	faf43c23          	sd	a5,-72(s0)
    return scause;
    8000168c:	fb843703          	ld	a4,-72(s0)
    uint64 scause = r_scause();
    if (scause == 0x000000000000009UL){
    80001690:	00900793          	li	a5,9
    80001694:	02f70e63          	beq	a4,a5,800016d0 <_ZN5RiscV20handleSupervisorTrapEv+0x64>
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x8000000000000001UL){
    80001698:	fff00793          	li	a5,-1
    8000169c:	03f79793          	slli	a5,a5,0x3f
    800016a0:	00178793          	addi	a5,a5,1
    800016a4:	06f70463          	beq	a4,a5,8000170c <_ZN5RiscV20handleSupervisorTrapEv+0xa0>
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

        mc_sip(SIP_SSIP);
    }else if(scause==0x8000000000000009UL){
    800016a8:	fff00793          	li	a5,-1
    800016ac:	03f79793          	slli	a5,a5,0x3f
    800016b0:	00978793          	addi	a5,a5,9
    800016b4:	0cf70263          	beq	a4,a5,80001778 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
        //print (scause)
        //print sepc
        //print sval

    }
    800016b8:	04813083          	ld	ra,72(sp)
    800016bc:	04013403          	ld	s0,64(sp)
    800016c0:	03813483          	ld	s1,56(sp)
    800016c4:	03013903          	ld	s2,48(sp)
    800016c8:	05010113          	addi	sp,sp,80
    800016cc:	00008067          	ret

}

inline uint64 RiscV::r_sepc(){
    uint64 volatile sepc;
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800016d0:	141027f3          	csrr	a5,sepc
    800016d4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800016d8:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4;
    800016dc:	00448493          	addi	s1,s1,4
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
}

inline uint64 RiscV::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    800016e0:	100027f3          	csrr	a5,sstatus
    800016e4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800016e8:	fc043903          	ld	s2,-64(s0)
        TCB::timeSliceCounter = 0;
    800016ec:	00004797          	auipc	a5,0x4
    800016f0:	1247b783          	ld	a5,292(a5) # 80005810 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016f4:	0007b023          	sd	zero,0(a5)
        TCB::dispatch();
    800016f8:	00000097          	auipc	ra,0x0
    800016fc:	524080e7          	jalr	1316(ra) # 80001c1c <_ZN3TCB8dispatchEv>
}

inline void RiscV::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    80001700:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    80001704:	14149073          	csrw	sepc,s1
}
    80001708:	fb1ff06f          	j	800016b8 <_ZN5RiscV20handleSupervisorTrapEv+0x4c>
        TCB::timeSliceCounter++;
    8000170c:	00004717          	auipc	a4,0x4
    80001710:	10473703          	ld	a4,260(a4) # 80005810 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001714:	00073783          	ld	a5,0(a4)
    80001718:	00178793          	addi	a5,a5,1
    8000171c:	00f73023          	sd	a5,0(a4)
        if(TCB::timeSliceCounter>=TCB::running->getTimeSlice()){
    80001720:	00004717          	auipc	a4,0x4
    80001724:	12073703          	ld	a4,288(a4) # 80005840 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001728:	00073703          	ld	a4,0(a4)

    static void yield();

    static TCB *running;

    inline uint64 getTimeSlice() const { return timeSlice; };
    8000172c:	02073703          	ld	a4,32(a4)
    80001730:	00e7f863          	bgeu	a5,a4,80001740 <_ZN5RiscV20handleSupervisorTrapEv+0xd4>
    __asm__ volatile("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001734:	00200793          	li	a5,2
    80001738:	1447b073          	csrc	sip,a5
}
    8000173c:	f7dff06f          	j	800016b8 <_ZN5RiscV20handleSupervisorTrapEv+0x4c>
    __asm__ volatile("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001740:	141027f3          	csrr	a5,sepc
    80001744:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001748:	fd843483          	ld	s1,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    8000174c:	100027f3          	csrr	a5,sstatus
    80001750:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001754:	fd043903          	ld	s2,-48(s0)
            TCB::timeSliceCounter = 0;
    80001758:	00004797          	auipc	a5,0x4
    8000175c:	0b87b783          	ld	a5,184(a5) # 80005810 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001760:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001764:	00000097          	auipc	ra,0x0
    80001768:	4b8080e7          	jalr	1208(ra) # 80001c1c <_ZN3TCB8dispatchEv>
    __asm__ volatile("csrw sstatus, %[sstatus]": : [sstatus] "r"(sstatus));
    8000176c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]": : [sepc] "r"(sepc));
    80001770:	14149073          	csrw	sepc,s1
}
    80001774:	fc1ff06f          	j	80001734 <_ZN5RiscV20handleSupervisorTrapEv+0xc8>
        console_handler();
    80001778:	00003097          	auipc	ra,0x3
    8000177c:	c38080e7          	jalr	-968(ra) # 800043b0 <console_handler>
    80001780:	f39ff06f          	j	800016b8 <_ZN5RiscV20handleSupervisorTrapEv+0x4c>

0000000080001784 <_Z41__static_initialization_and_destruction_0ii>:

void Scheduler::put(TCB *ccb)
{
    //emptyQueue();
    readyCoroutineQueue.addLast(ccb);
    80001784:	ff010113          	addi	sp,sp,-16
    80001788:	00813423          	sd	s0,8(sp)
    8000178c:	01010413          	addi	s0,sp,16
    80001790:	00100793          	li	a5,1
    80001794:	00f50863          	beq	a0,a5,800017a4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001798:	00813403          	ld	s0,8(sp)
    8000179c:	01010113          	addi	sp,sp,16
    800017a0:	00008067          	ret
    800017a4:	000107b7          	lui	a5,0x10
    800017a8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800017ac:	fef596e3          	bne	a1,a5,80001798 <_Z41__static_initialization_and_destruction_0ii+0x14>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    };

    Elem *head, *tail;
    public:
    LinkedList() : head(0), tail(0) {}
    800017b0:	00004797          	auipc	a5,0x4
    800017b4:	10078793          	addi	a5,a5,256 # 800058b0 <_ZN9Scheduler19readyCoroutineQueueE>
    800017b8:	0007b023          	sd	zero,0(a5)
    800017bc:	0007b423          	sd	zero,8(a5)
    800017c0:	fd9ff06f          	j	80001798 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800017c4 <_ZN9Scheduler3getEv>:
{
    800017c4:	fe010113          	addi	sp,sp,-32
    800017c8:	00113c23          	sd	ra,24(sp)
    800017cc:	00813823          	sd	s0,16(sp)
    800017d0:	00913423          	sd	s1,8(sp)
    800017d4:	02010413          	addi	s0,sp,32
            head=tail=elem;
        }
    }

    T* removeFirst() {
        if (!head) {return 0;}
    800017d8:	00004517          	auipc	a0,0x4
    800017dc:	0d853503          	ld	a0,216(a0) # 800058b0 <_ZN9Scheduler19readyCoroutineQueueE>
    800017e0:	04050263          	beqz	a0,80001824 <_ZN9Scheduler3getEv+0x60>
        Elem *elem = head;
        head = head->next;
    800017e4:	00853783          	ld	a5,8(a0)
    800017e8:	00004717          	auipc	a4,0x4
    800017ec:	0cf73423          	sd	a5,200(a4) # 800058b0 <_ZN9Scheduler19readyCoroutineQueueE>
        if(!head) {
    800017f0:	02078463          	beqz	a5,80001818 <_ZN9Scheduler3getEv+0x54>
            tail = 0;
        }
        T* ret = elem->data;
    800017f4:	00053483          	ld	s1,0(a0)
        delete elem;
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	6c4080e7          	jalr	1732(ra) # 80001ebc <_ZdlPv>
}
    80001800:	00048513          	mv	a0,s1
    80001804:	01813083          	ld	ra,24(sp)
    80001808:	01013403          	ld	s0,16(sp)
    8000180c:	00813483          	ld	s1,8(sp)
    80001810:	02010113          	addi	sp,sp,32
    80001814:	00008067          	ret
            tail = 0;
    80001818:	00004797          	auipc	a5,0x4
    8000181c:	0a07b023          	sd	zero,160(a5) # 800058b8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001820:	fd5ff06f          	j	800017f4 <_ZN9Scheduler3getEv+0x30>
        if (!head) {return 0;}
    80001824:	00050493          	mv	s1,a0
    return readyCoroutineQueue.removeFirst();
    80001828:	fd9ff06f          	j	80001800 <_ZN9Scheduler3getEv+0x3c>

000000008000182c <_ZN9Scheduler3putEP3TCB>:
{
    8000182c:	fe010113          	addi	sp,sp,-32
    80001830:	00113c23          	sd	ra,24(sp)
    80001834:	00813823          	sd	s0,16(sp)
    80001838:	00913423          	sd	s1,8(sp)
    8000183c:	02010413          	addi	s0,sp,32
    80001840:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001844:	01000513          	li	a0,16
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	444080e7          	jalr	1092(ra) # 80001c8c <_Znwm>
        Elem(T* data, Elem * next) : data(data), next(next) {}
    80001850:	00953023          	sd	s1,0(a0)
    80001854:	00053423          	sd	zero,8(a0)
        if (tail){
    80001858:	00004797          	auipc	a5,0x4
    8000185c:	0607b783          	ld	a5,96(a5) # 800058b8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001860:	02078263          	beqz	a5,80001884 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next=elem;
    80001864:	00a7b423          	sd	a0,8(a5)
            tail=elem;
    80001868:	00004797          	auipc	a5,0x4
    8000186c:	04a7b823          	sd	a0,80(a5) # 800058b8 <_ZN9Scheduler19readyCoroutineQueueE+0x8>
    80001870:	01813083          	ld	ra,24(sp)
    80001874:	01013403          	ld	s0,16(sp)
    80001878:	00813483          	ld	s1,8(sp)
    8000187c:	02010113          	addi	sp,sp,32
    80001880:	00008067          	ret
            head=tail=elem;
    80001884:	00004797          	auipc	a5,0x4
    80001888:	02c78793          	addi	a5,a5,44 # 800058b0 <_ZN9Scheduler19readyCoroutineQueueE>
    8000188c:	00a7b423          	sd	a0,8(a5)
    80001890:	00a7b023          	sd	a0,0(a5)
    80001894:	fddff06f          	j	80001870 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001898 <_GLOBAL__sub_I__ZN9Scheduler19readyCoroutineQueueE>:
    80001898:	ff010113          	addi	sp,sp,-16
    8000189c:	00113423          	sd	ra,8(sp)
    800018a0:	00813023          	sd	s0,0(sp)
    800018a4:	01010413          	addi	s0,sp,16
    800018a8:	000105b7          	lui	a1,0x10
    800018ac:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800018b0:	00100513          	li	a0,1
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	ed0080e7          	jalr	-304(ra) # 80001784 <_Z41__static_initialization_and_destruction_0ii>
    800018bc:	00813083          	ld	ra,8(sp)
    800018c0:	00013403          	ld	s0,0(sp)
    800018c4:	01010113          	addi	sp,sp,16
    800018c8:	00008067          	ret

00000000800018cc <main>:
#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/Print.hpp"
#include "../h/MemoryAllocation.hpp"
#include "../h/RiscV.hpp"
int main(){
    800018cc:	fb010113          	addi	sp,sp,-80
    800018d0:	04113423          	sd	ra,72(sp)
    800018d4:	04813023          	sd	s0,64(sp)
    800018d8:	02913c23          	sd	s1,56(sp)
    800018dc:	03213823          	sd	s2,48(sp)
    800018e0:	05010413          	addi	s0,sp,80

public:


    static MemoryAllocation *getInstance() {
        if (!instance) {
    800018e4:	00004797          	auipc	a5,0x4
    800018e8:	f4c7b783          	ld	a5,-180(a5) # 80005830 <_GLOBAL_OFFSET_TABLE_+0x38>
    800018ec:	0007b783          	ld	a5,0(a5)
    800018f0:	0c078463          	beqz	a5,800019b8 <main+0xec>
    MemoryAllocation* mem_obj;
    mem_obj = mem_obj->getInstance();
    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr);
    800018f4:	00000513          	li	a0,0
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	1e4080e7          	jalr	484(ra) # 80001adc <_ZN3TCB12createThreadEPFvvE>
    80001900:	faa43c23          	sd	a0,-72(s0)
    TCB::running=threads[0];
    80001904:	00004797          	auipc	a5,0x4
    80001908:	f3c7b783          	ld	a5,-196(a5) # 80005840 <_GLOBAL_OFFSET_TABLE_+0x48>
    8000190c:	00a7b023          	sd	a0,0(a5)

    threads[1] = TCB::createThread(workerBodyA); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    80001910:	00004517          	auipc	a0,0x4
    80001914:	f0853503          	ld	a0,-248(a0) # 80005818 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	1c4080e7          	jalr	452(ra) # 80001adc <_ZN3TCB12createThreadEPFvvE>
    80001920:	fca43023          	sd	a0,-64(s0)
    printString("Thread A created\n");
    80001924:	00003517          	auipc	a0,0x3
    80001928:	76450513          	addi	a0,a0,1892 # 80005088 <CONSOLE_STATUS+0x78>
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	828080e7          	jalr	-2008(ra) # 80002154 <_Z11printStringPKc>

    threads[2] = TCB::createThread(workerBodyB); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    80001934:	00004517          	auipc	a0,0x4
    80001938:	ed453503          	ld	a0,-300(a0) # 80005808 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	1a0080e7          	jalr	416(ra) # 80001adc <_ZN3TCB12createThreadEPFvvE>
    80001944:	fca43423          	sd	a0,-56(s0)
    printString("Thread B created\n");
    80001948:	00003517          	auipc	a0,0x3
    8000194c:	75850513          	addi	a0,a0,1880 # 800050a0 <CONSOLE_STATUS+0x90>
    80001950:	00001097          	auipc	ra,0x1
    80001954:	804080e7          	jalr	-2044(ra) # 80002154 <_Z11printStringPKc>


    threads[3] = TCB::createThread(workerBodyC); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    80001958:	00004517          	auipc	a0,0x4
    8000195c:	ef853503          	ld	a0,-264(a0) # 80005850 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001960:	00000097          	auipc	ra,0x0
    80001964:	17c080e7          	jalr	380(ra) # 80001adc <_ZN3TCB12createThreadEPFvvE>
    80001968:	fca43823          	sd	a0,-48(s0)
    printString("Thread C created\n");
    8000196c:	00003517          	auipc	a0,0x3
    80001970:	74c50513          	addi	a0,a0,1868 # 800050b8 <CONSOLE_STATUS+0xa8>
    80001974:	00000097          	auipc	ra,0x0
    80001978:	7e0080e7          	jalr	2016(ra) # 80002154 <_Z11printStringPKc>

    threads[4] = TCB::createThread(workerBodyD); //ovde su neki workeri, prepisi to ako te ne bude mrzelo da proveris 01:07:20
    8000197c:	00004517          	auipc	a0,0x4
    80001980:	edc53503          	ld	a0,-292(a0) # 80005858 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001984:	00000097          	auipc	ra,0x0
    80001988:	158080e7          	jalr	344(ra) # 80001adc <_ZN3TCB12createThreadEPFvvE>
    8000198c:	fca43c23          	sd	a0,-40(s0)
    printString("Thread D created\n");
    80001990:	00003517          	auipc	a0,0x3
    80001994:	74050513          	addi	a0,a0,1856 # 800050d0 <CONSOLE_STATUS+0xc0>
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	7bc080e7          	jalr	1980(ra) # 80002154 <_Z11printStringPKc>

    RiscV::w_stvec((uint64) &RiscV::supervisorTrap);
    800019a0:	00004797          	auipc	a5,0x4
    800019a4:	e887b783          	ld	a5,-376(a5) # 80005828 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrw stvec, %[stvec]": : [stvec] "r"(stvec));
    800019a8:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    800019ac:	00200793          	li	a5,2
    800019b0:	1007a073          	csrs	sstatus,a5
}
    800019b4:	0480006f          	j	800019fc <main+0x130>
            fmem_head =  (FreeMem*) HEAP_START_ADDR;
    800019b8:	00004797          	auipc	a5,0x4
    800019bc:	e487b783          	ld	a5,-440(a5) # 80005800 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019c0:	0007b783          	ld	a5,0(a5)
    800019c4:	00004697          	auipc	a3,0x4
    800019c8:	e746b683          	ld	a3,-396(a3) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    800019cc:	00f6b023          	sd	a5,0(a3)
            fmem_head->size = (size_t) ((char *) HEAP_END_ADDR -
    800019d0:	00004717          	auipc	a4,0x4
    800019d4:	e7873703          	ld	a4,-392(a4) # 80005848 <_GLOBAL_OFFSET_TABLE_+0x50>
    800019d8:	00073703          	ld	a4,0(a4)
    800019dc:	40f70733          	sub	a4,a4,a5
    800019e0:	00e7b823          	sd	a4,16(a5)
                                        (char *) HEAP_START_ADDR); //da li smem ovo da castujem u size_t
            fmem_head->next = nullptr;
    800019e4:	0007b023          	sd	zero,0(a5)
            fmem_head->prev = nullptr;
    800019e8:	0006b783          	ld	a5,0(a3)
    800019ec:	0007b423          	sd	zero,8(a5)
            static MemoryAllocation* instance;
            return instance;
    800019f0:	f05ff06f          	j	800018f4 <main+0x28>
    RiscV::ms_sstatus(RiscV::SSTATUS_SIE);

    //TCB::yield();

    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished())){
        TCB::yield();
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	1b0080e7          	jalr	432(ra) # 80001ba4 <_ZN3TCB5yieldEv>
    while(!(threads[1]->isFinished() && threads[2]->isFinished() && threads[3]->isFinished() && threads[4]->isFinished())){
    800019fc:	fc043503          	ld	a0,-64(s0)
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	0a4080e7          	jalr	164(ra) # 80001aa4 <_ZNK3TCB10isFinishedEv>
    80001a08:	fe0506e3          	beqz	a0,800019f4 <main+0x128>
    80001a0c:	fc843503          	ld	a0,-56(s0)
    80001a10:	00000097          	auipc	ra,0x0
    80001a14:	094080e7          	jalr	148(ra) # 80001aa4 <_ZNK3TCB10isFinishedEv>
    80001a18:	fc050ee3          	beqz	a0,800019f4 <main+0x128>
    80001a1c:	fd043503          	ld	a0,-48(s0)
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	084080e7          	jalr	132(ra) # 80001aa4 <_ZNK3TCB10isFinishedEv>
    80001a28:	fc0506e3          	beqz	a0,800019f4 <main+0x128>
    80001a2c:	fd843503          	ld	a0,-40(s0)
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	074080e7          	jalr	116(ra) # 80001aa4 <_ZNK3TCB10isFinishedEv>
    80001a38:	fa050ee3          	beqz	a0,800019f4 <main+0x128>
    80001a3c:	fb840493          	addi	s1,s0,-72
    80001a40:	0140006f          	j	80001a54 <main+0x188>
    }


    for (auto &coroutine : threads){
        delete coroutine;
    80001a44:	00090513          	mv	a0,s2
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	474080e7          	jalr	1140(ra) # 80001ebc <_ZdlPv>
    for (auto &coroutine : threads){
    80001a50:	00848493          	addi	s1,s1,8
    80001a54:	fe040793          	addi	a5,s0,-32
    80001a58:	02f48063          	beq	s1,a5,80001a78 <main+0x1ac>
        delete coroutine;
    80001a5c:	0004b903          	ld	s2,0(s1)
    80001a60:	fe0908e3          	beqz	s2,80001a50 <main+0x184>
    ~TCB() { delete[] stack; }
    80001a64:	00893503          	ld	a0,8(s2)
    80001a68:	fc050ee3          	beqz	a0,80001a44 <main+0x178>
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	560080e7          	jalr	1376(ra) # 80001fcc <_ZdaPv>
    80001a74:	fd1ff06f          	j	80001a44 <main+0x178>
    }

    printString("finished\n");
    80001a78:	00003517          	auipc	a0,0x3
    80001a7c:	67050513          	addi	a0,a0,1648 # 800050e8 <CONSOLE_STATUS+0xd8>
    80001a80:	00000097          	auipc	ra,0x0
    80001a84:	6d4080e7          	jalr	1748(ra) # 80002154 <_Z11printStringPKc>

    return 0;
    80001a88:	00000513          	li	a0,0
    80001a8c:	04813083          	ld	ra,72(sp)
    80001a90:	04013403          	ld	s0,64(sp)
    80001a94:	03813483          	ld	s1,56(sp)
    80001a98:	03013903          	ld	s2,48(sp)
    80001a9c:	05010113          	addi	sp,sp,80
    80001aa0:	00008067          	ret

0000000080001aa4 <_ZNK3TCB10isFinishedEv>:
#include "../h/tcb.hpp"
#include "../h/RiscV.hpp"



bool TCB::isFinished() const {
    80001aa4:	ff010113          	addi	sp,sp,-16
    80001aa8:	00813423          	sd	s0,8(sp)
    80001aac:	01010413          	addi	s0,sp,16
    return finished;
}
    80001ab0:	02854503          	lbu	a0,40(a0)
    80001ab4:	00813403          	ld	s0,8(sp)
    80001ab8:	01010113          	addi	sp,sp,16
    80001abc:	00008067          	ret

0000000080001ac0 <_ZN3TCB11setFinishedEb>:

void TCB::setFinished(bool finished) {
    80001ac0:	ff010113          	addi	sp,sp,-16
    80001ac4:	00813423          	sd	s0,8(sp)
    80001ac8:	01010413          	addi	s0,sp,16
    TCB::finished = finished;
    80001acc:	02b50423          	sb	a1,40(a0)
}
    80001ad0:	00813403          	ld	s0,8(sp)
    80001ad4:	01010113          	addi	sp,sp,16
    80001ad8:	00008067          	ret

0000000080001adc <_ZN3TCB12createThreadEPFvvE>:
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter=0;

TCB* TCB::createThread(TCB::Body body) {
    80001adc:	fe010113          	addi	sp,sp,-32
    80001ae0:	00113c23          	sd	ra,24(sp)
    80001ae4:	00813823          	sd	s0,16(sp)
    80001ae8:	00913423          	sd	s1,8(sp)
    80001aec:	01213023          	sd	s2,0(sp)
    80001af0:	02010413          	addi	s0,sp,32
    80001af4:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001af8:	03000513          	li	a0,48
    80001afc:	00000097          	auipc	ra,0x0
    80001b00:	190080e7          	jalr	400(ra) # 80001c8c <_Znwm>
    80001b04:	00050493          	mv	s1,a0
            context({(uint64)&threadWrapper,
                     stack != nullptr ? (uint64) &stack[1024] : 0
                    }
            ),
            timeSlice(timeSlice),
            finished(false) {
    80001b08:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[1024] : nullptr),
    80001b0c:	00090a63          	beqz	s2,80001b20 <_ZN3TCB12createThreadEPFvvE+0x44>
    80001b10:	00002537          	lui	a0,0x2
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	290080e7          	jalr	656(ra) # 80001da4 <_Znam>
    80001b1c:	0080006f          	j	80001b24 <_ZN3TCB12createThreadEPFvvE+0x48>
    80001b20:	00000513          	li	a0,0
            finished(false) {
    80001b24:	00a4b423          	sd	a0,8(s1)
    80001b28:	00000797          	auipc	a5,0x0
    80001b2c:	09878793          	addi	a5,a5,152 # 80001bc0 <_ZN3TCB13threadWrapperEv>
    80001b30:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[1024] : 0
    80001b34:	02050863          	beqz	a0,80001b64 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001b38:	000027b7          	lui	a5,0x2
    80001b3c:	00f507b3          	add	a5,a0,a5
            finished(false) {
    80001b40:	00f4bc23          	sd	a5,24(s1)
    80001b44:	00200793          	li	a5,2
    80001b48:	02f4b023          	sd	a5,32(s1)
    80001b4c:	02048423          	sb	zero,40(s1)
        if (body != nullptr) { Scheduler::put(this); }
    80001b50:	02090c63          	beqz	s2,80001b88 <_ZN3TCB12createThreadEPFvvE+0xac>
    80001b54:	00048513          	mv	a0,s1
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	cd4080e7          	jalr	-812(ra) # 8000182c <_ZN9Scheduler3putEP3TCB>
    80001b60:	0280006f          	j	80001b88 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[1024] : 0
    80001b64:	00000793          	li	a5,0
    80001b68:	fd9ff06f          	j	80001b40 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001b6c:	00050913          	mv	s2,a0
    80001b70:	00048513          	mv	a0,s1
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	348080e7          	jalr	840(ra) # 80001ebc <_ZdlPv>
    80001b7c:	00090513          	mv	a0,s2
    80001b80:	00005097          	auipc	ra,0x5
    80001b84:	e28080e7          	jalr	-472(ra) # 800069a8 <_Unwind_Resume>
}
    80001b88:	00048513          	mv	a0,s1
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	01013403          	ld	s0,16(sp)
    80001b94:	00813483          	ld	s1,8(sp)
    80001b98:	00013903          	ld	s2,0(sp)
    80001b9c:	02010113          	addi	sp,sp,32
    80001ba0:	00008067          	ret

0000000080001ba4 <_ZN3TCB5yieldEv>:

void TCB::yield(){
    80001ba4:	ff010113          	addi	sp,sp,-16
    80001ba8:	00813423          	sd	s0,8(sp)
    80001bac:	01010413          	addi	s0,sp,16



    __asm__ volatile ("ecall");
    80001bb0:	00000073          	ecall

};
    80001bb4:	00813403          	ld	s0,8(sp)
    80001bb8:	01010113          	addi	sp,sp,16
    80001bbc:	00008067          	ret

0000000080001bc0 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001bc0:	fe010113          	addi	sp,sp,-32
    80001bc4:	00113c23          	sd	ra,24(sp)
    80001bc8:	00813823          	sd	s0,16(sp)
    80001bcc:	00913423          	sd	s1,8(sp)
    80001bd0:	02010413          	addi	s0,sp,32
    RiscV::popSppSpie();
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	a78080e7          	jalr	-1416(ra) # 8000164c <_ZN5RiscV10popSppSpieEv>
    running->body();
    80001bdc:	00004497          	auipc	s1,0x4
    80001be0:	ce448493          	addi	s1,s1,-796 # 800058c0 <_ZN3TCB7runningE>
    80001be4:	0004b783          	ld	a5,0(s1)
    80001be8:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001bec:	000780e7          	jalr	a5
    running->setFinished(true);
    80001bf0:	00100593          	li	a1,1
    80001bf4:	0004b503          	ld	a0,0(s1)
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	ec8080e7          	jalr	-312(ra) # 80001ac0 <_ZN3TCB11setFinishedEb>
    TCB::yield();
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	fa4080e7          	jalr	-92(ra) # 80001ba4 <_ZN3TCB5yieldEv>
}
    80001c08:	01813083          	ld	ra,24(sp)
    80001c0c:	01013403          	ld	s0,16(sp)
    80001c10:	00813483          	ld	s1,8(sp)
    80001c14:	02010113          	addi	sp,sp,32
    80001c18:	00008067          	ret

0000000080001c1c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001c1c:	fe010113          	addi	sp,sp,-32
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	00813823          	sd	s0,16(sp)
    80001c28:	00913423          	sd	s1,8(sp)
    80001c2c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001c30:	00004497          	auipc	s1,0x4
    80001c34:	c904b483          	ld	s1,-880(s1) # 800058c0 <_ZN3TCB7runningE>
    if (!old->isFinished()) {
    80001c38:	00048513          	mv	a0,s1
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	e68080e7          	jalr	-408(ra) # 80001aa4 <_ZNK3TCB10isFinishedEv>
    80001c44:	02050c63          	beqz	a0,80001c7c <_ZN3TCB8dispatchEv+0x60>
    running = Scheduler::get();
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	b7c080e7          	jalr	-1156(ra) # 800017c4 <_ZN9Scheduler3getEv>
    80001c50:	00004797          	auipc	a5,0x4
    80001c54:	c6a7b823          	sd	a0,-912(a5) # 800058c0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001c58:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001c5c:	01048513          	addi	a0,s1,16
    80001c60:	fffff097          	auipc	ra,0xfffff
    80001c64:	5b0080e7          	jalr	1456(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001c68:	01813083          	ld	ra,24(sp)
    80001c6c:	01013403          	ld	s0,16(sp)
    80001c70:	00813483          	ld	s1,8(sp)
    80001c74:	02010113          	addi	sp,sp,32
    80001c78:	00008067          	ret
        Scheduler::put(old);
    80001c7c:	00048513          	mv	a0,s1
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	bac080e7          	jalr	-1108(ra) # 8000182c <_ZN9Scheduler3putEP3TCB>
    80001c88:	fc1ff06f          	j	80001c48 <_ZN3TCB8dispatchEv+0x2c>

0000000080001c8c <_Znwm>:
#include "../h/MemoryAllocation.hpp"
#include "../lib/mem.h"

void *operator new(uint64 n){
    80001c8c:	ff010113          	addi	sp,sp,-16
    80001c90:	00813423          	sd	s0,8(sp)
    80001c94:	01010413          	addi	s0,sp,16

    /*MemoryAllocation(MemoryAllocation const&) = delete;
    void operator=(MemoryAllocation const&)  = delete;*/
//===========================DEFINICIJA SINGLETON KLASE KRAJ========================
    static int bytesToBlocks(size_t size){
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001c98:	05750793          	addi	a5,a0,87
    80001c9c:	0067d793          	srli	a5,a5,0x6
    80001ca0:	0007879b          	sext.w	a5,a5
        tryToJoin(cur);
    }*/

    static void* mem_alloc(size_t size) {//uopste ne radi, iako u lotsofsmallmallocs pise da radi
        //size_t x=sizeof(fmem_head);
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80001ca4:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001ca8:	00004717          	auipc	a4,0x4
    80001cac:	b9073703          	ld	a4,-1136(a4) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001cb0:	00073503          	ld	a0,0(a4)
    80001cb4:	0c050863          	beqz	a0,80001d84 <_Znwm+0xf8>
            cur->next=fmem_head->next;
    80001cb8:	00004717          	auipc	a4,0x4
    80001cbc:	b8073703          	ld	a4,-1152(a4) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001cc0:	00073683          	ld	a3,0(a4)
    80001cc4:	0006b683          	ld	a3,0(a3)
    80001cc8:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80001ccc:	00073703          	ld	a4,0(a4)
    80001cd0:	00873603          	ld	a2,8(a4)
    80001cd4:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80001cd8:	01053703          	ld	a4,16(a0)
    80001cdc:	02f76663          	bltu	a4,a5,80001d08 <_Znwm+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80001ce0:	40f70733          	sub	a4,a4,a5
    80001ce4:	01800593          	li	a1,24
    80001ce8:	02e5ec63          	bltu	a1,a4,80001d20 <_Znwm+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80001cec:	02060263          	beqz	a2,80001d10 <_Znwm+0x84>
    80001cf0:	00d63023          	sd	a3,0(a2)
                else fmem_head = cur->next;
                if (cur->next) cur->next->prev = cur->prev;
    80001cf4:	00053783          	ld	a5,0(a0)
    80001cf8:	08078663          	beqz	a5,80001d84 <_Znwm+0xf8>
    80001cfc:	00853703          	ld	a4,8(a0)
    80001d00:	00e7b423          	sd	a4,8(a5)
                return cur;
    80001d04:	0800006f          	j	80001d84 <_Znwm+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001d08:	00068513          	mv	a0,a3
    80001d0c:	fa9ff06f          	j	80001cb4 <_Znwm+0x28>
                else fmem_head = cur->next;
    80001d10:	00004797          	auipc	a5,0x4
    80001d14:	b287b783          	ld	a5,-1240(a5) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001d18:	00d7b023          	sd	a3,0(a5)
    80001d1c:	fd9ff06f          	j	80001cf4 <_Znwm+0x68>
            }else {
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001d20:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80001d24:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001d28:	00073023          	sd	zero,0(a4)
                //newfrgm->size=cur->size-size;// DODATO TOKOM PROBE NITI
                if (cur->prev) cur->prev->next = newfrgm;
    80001d2c:	00853683          	ld	a3,8(a0)
    80001d30:	06068063          	beqz	a3,80001d90 <_Znwm+0x104>
    80001d34:	00e6b023          	sd	a4,0(a3)
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
                if (cur->next) cur->next->prev = newfrgm;
    80001d38:	00053683          	ld	a3,0(a0)
    80001d3c:	00068463          	beqz	a3,80001d44 <_Znwm+0xb8>
    80001d40:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001d44:	00853603          	ld	a2,8(a0)
    80001d48:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001d4c:	00053683          	ld	a3,0(a0)
    80001d50:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001d54:	01053683          	ld	a3,16(a0)
    80001d58:	40f687b3          	sub	a5,a3,a5
    80001d5c:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001d60:	0c070693          	addi	a3,a4,192
    80001d64:	00004597          	auipc	a1,0x4
    80001d68:	ad45b583          	ld	a1,-1324(a1) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001d6c:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001d70:	00073583          	ld	a1,0(a4)
    80001d74:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001d78:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001d7c:	0cf73823          	sd	a5,208(a4)
                //fmem_head = (FreeMem*) (char*)newfrgm;
                return newfrgm;
    80001d80:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n)); //njemu je samo __mem_alloc???
    //return __mem_alloc(n);
}
    80001d84:	00813403          	ld	s0,8(sp)
    80001d88:	01010113          	addi	sp,sp,16
    80001d8c:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001d90:	0c070693          	addi	a3,a4,192
    80001d94:	00004617          	auipc	a2,0x4
    80001d98:	aa463603          	ld	a2,-1372(a2) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001d9c:	00d63023          	sd	a3,0(a2)
    80001da0:	f99ff06f          	j	80001d38 <_Znwm+0xac>

0000000080001da4 <_Znam>:

void *operator new[](uint64 n){
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00813423          	sd	s0,8(sp)
    80001dac:	01010413          	addi	s0,sp,16
        return (size+sizeof(FreeMem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001db0:	05750793          	addi	a5,a0,87
    80001db4:	0067d793          	srli	a5,a5,0x6
    80001db8:	0007879b          	sext.w	a5,a5
        size=(size)*(size_t)MEM_BLOCK_SIZE; //kada je ovo ukljuceno, pravi problem u memfree, so ill pretend i never seen that, verovatno doduse dok on izmota celu listu, POSLUSAJ BOJANINE GLASOVNE OPET
    80001dbc:	00679793          	slli	a5,a5,0x6
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001dc0:	00004717          	auipc	a4,0x4
    80001dc4:	a7873703          	ld	a4,-1416(a4) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001dc8:	00073503          	ld	a0,0(a4)
    80001dcc:	0c050863          	beqz	a0,80001e9c <_Znam+0xf8>
            cur->next=fmem_head->next;
    80001dd0:	00004717          	auipc	a4,0x4
    80001dd4:	a6873703          	ld	a4,-1432(a4) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001dd8:	00073683          	ld	a3,0(a4)
    80001ddc:	0006b683          	ld	a3,0(a3)
    80001de0:	00d53023          	sd	a3,0(a0)
            cur->prev=fmem_head->prev;
    80001de4:	00073703          	ld	a4,0(a4)
    80001de8:	00873603          	ld	a2,8(a4)
    80001dec:	00c53423          	sd	a2,8(a0)
            if (cur->size<size) continue;
    80001df0:	01053703          	ld	a4,16(a0)
    80001df4:	02f76663          	bltu	a4,a5,80001e20 <_Znam+0x7c>
            if (cur->size-size<=sizeof(FreeMem)){
    80001df8:	40f70733          	sub	a4,a4,a5
    80001dfc:	01800593          	li	a1,24
    80001e00:	02e5ec63          	bltu	a1,a4,80001e38 <_Znam+0x94>
                if (cur->prev) cur->prev->next = cur->next;
    80001e04:	02060263          	beqz	a2,80001e28 <_Znam+0x84>
    80001e08:	00d63023          	sd	a3,0(a2)
                if (cur->next) cur->next->prev = cur->prev;
    80001e0c:	00053783          	ld	a5,0(a0)
    80001e10:	08078663          	beqz	a5,80001e9c <_Znam+0xf8>
    80001e14:	00853703          	ld	a4,8(a0)
    80001e18:	00e7b423          	sd	a4,8(a5)
                return cur;
    80001e1c:	0800006f          	j	80001e9c <_Znam+0xf8>
        for (FreeMem* cur = fmem_head; cur != nullptr; cur=cur->next){ // U DRUGOJ ITERACIJI FMEM_HEAD SEBI STVORI NEKI NEXT NI OD KUDA?????
    80001e20:	00068513          	mv	a0,a3
    80001e24:	fa9ff06f          	j	80001dcc <_Znam+0x28>
                else fmem_head = cur->next;
    80001e28:	00004797          	auipc	a5,0x4
    80001e2c:	a107b783          	ld	a5,-1520(a5) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001e30:	00d7b023          	sd	a3,0(a5)
    80001e34:	fd9ff06f          	j	80001e0c <_Znam+0x68>
                FreeMem* newfrgm = (FreeMem*)((char*)cur+size);
    80001e38:	00f50733          	add	a4,a0,a5
                newfrgm->prev=nullptr;
    80001e3c:	00073423          	sd	zero,8(a4)
                newfrgm->next=nullptr;
    80001e40:	00073023          	sd	zero,0(a4)
                if (cur->prev) cur->prev->next = newfrgm;
    80001e44:	00853683          	ld	a3,8(a0)
    80001e48:	06068063          	beqz	a3,80001ea8 <_Znam+0x104>
    80001e4c:	00e6b023          	sd	a4,0(a3)
                if (cur->next) cur->next->prev = newfrgm;
    80001e50:	00053683          	ld	a3,0(a0)
    80001e54:	00068463          	beqz	a3,80001e5c <_Znam+0xb8>
    80001e58:	00e6b423          	sd	a4,8(a3)
                newfrgm->prev = cur->prev;
    80001e5c:	00853603          	ld	a2,8(a0)
    80001e60:	00c73423          	sd	a2,8(a4)
                newfrgm->next = cur->next;
    80001e64:	00053683          	ld	a3,0(a0)
    80001e68:	00d73023          	sd	a3,0(a4)
                newfrgm->size = cur->size-size;
    80001e6c:	01053683          	ld	a3,16(a0)
    80001e70:	40f687b3          	sub	a5,a3,a5
    80001e74:	00f73823          	sd	a5,16(a4)
                fmem_head =newfrgm+sizeof(fmem_head);
    80001e78:	0c070693          	addi	a3,a4,192
    80001e7c:	00004597          	auipc	a1,0x4
    80001e80:	9bc5b583          	ld	a1,-1604(a1) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001e84:	00d5b023          	sd	a3,0(a1)
                fmem_head->next=newfrgm->next;
    80001e88:	00073583          	ld	a1,0(a4)
    80001e8c:	0cb73023          	sd	a1,192(a4)
                fmem_head->prev=newfrgm->prev;
    80001e90:	0cc73423          	sd	a2,200(a4)
                fmem_head->size=newfrgm->size;
    80001e94:	0cf73823          	sd	a5,208(a4)
                return newfrgm;
    80001e98:	00070513          	mv	a0,a4
    return MemoryAllocation::mem_alloc(MemoryAllocation::bytesToBlocks(n));
    //return __mem_alloc(n);
}
    80001e9c:	00813403          	ld	s0,8(sp)
    80001ea0:	01010113          	addi	sp,sp,16
    80001ea4:	00008067          	ret
                else fmem_head = newfrgm+sizeof(fmem_head); // ovo sam dodao sizeof da bi mi radio lotsofsmallmalloc //obrisano sizeof(fmem_head)
    80001ea8:	0c070693          	addi	a3,a4,192
    80001eac:	00004617          	auipc	a2,0x4
    80001eb0:	98c63603          	ld	a2,-1652(a2) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001eb4:	00d63023          	sd	a3,0(a2)
    80001eb8:	f99ff06f          	j	80001e50 <_Znam+0xac>

0000000080001ebc <_ZdlPv>:

void operator delete(void *p) noexcept {
    80001ebc:	ff010113          	addi	sp,sp,-16
    80001ec0:	00813423          	sd	s0,8(sp)
    80001ec4:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80001ec8:	00004797          	auipc	a5,0x4
    80001ecc:	9707b783          	ld	a5,-1680(a5) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001ed0:	0007b703          	ld	a4,0(a5)
    80001ed4:	00070e63          	beqz	a4,80001ef0 <_ZdlPv+0x34>
    80001ed8:	02e56063          	bltu	a0,a4,80001ef8 <_ZdlPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001edc:	00070793          	mv	a5,a4
    80001ee0:	00073703          	ld	a4,0(a4)
    80001ee4:	00e50c63          	beq	a0,a4,80001efc <_ZdlPv+0x40>
    80001ee8:	fea76ae3          	bltu	a4,a0,80001edc <_ZdlPv+0x20>
    80001eec:	0100006f          	j	80001efc <_ZdlPv+0x40>
            cur=nullptr;
    80001ef0:	00070793          	mv	a5,a4
    80001ef4:	0080006f          	j	80001efc <_ZdlPv+0x40>
    80001ef8:	00000793          	li	a5,0
                newSeg->next=nullptr;
    80001efc:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80001f00:	04000713          	li	a4,64
    80001f04:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80001f08:	00f53423          	sd	a5,8(a0)
                if(cur) {
    80001f0c:	04078e63          	beqz	a5,80001f68 <_ZdlPv+0xac>
                    newSeg->next = cur->next;
    80001f10:	0007b703          	ld	a4,0(a5)
    80001f14:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80001f18:	00053703          	ld	a4,0(a0)
    80001f1c:	00070463          	beqz	a4,80001f24 <_ZdlPv+0x68>
                    newSeg->next->prev=newSeg;
    80001f20:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80001f24:	04078c63          	beqz	a5,80001f7c <_ZdlPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80001f28:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    80001f2c:	00050c63          	beqz	a0,80001f44 <_ZdlPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001f30:	00053703          	ld	a4,0(a0)
    80001f34:	00070863          	beqz	a4,80001f44 <_ZdlPv+0x88>
    80001f38:	01053683          	ld	a3,16(a0)
    80001f3c:	00d50633          	add	a2,a0,a3
    80001f40:	04c70663          	beq	a4,a2,80001f8c <_ZdlPv+0xd0>
        if (!curr) return;
    80001f44:	00078c63          	beqz	a5,80001f5c <_ZdlPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80001f48:	0007b703          	ld	a4,0(a5)
    80001f4c:	00070863          	beqz	a4,80001f5c <_ZdlPv+0xa0>
    80001f50:	0107b683          	ld	a3,16(a5)
    80001f54:	00d78633          	add	a2,a5,a3
    80001f58:	04c70a63          	beq	a4,a2,80001fac <_ZdlPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
}
    80001f5c:	00813403          	ld	s0,8(sp)
    80001f60:	01010113          	addi	sp,sp,16
    80001f64:	00008067          	ret
                    newSeg->next = fmem_head;
    80001f68:	00004717          	auipc	a4,0x4
    80001f6c:	8d073703          	ld	a4,-1840(a4) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001f70:	00073703          	ld	a4,0(a4)
    80001f74:	00e53023          	sd	a4,0(a0)
    80001f78:	fa1ff06f          	j	80001f18 <_ZdlPv+0x5c>
                    fmem_head = newSeg;
    80001f7c:	00004717          	auipc	a4,0x4
    80001f80:	8bc73703          	ld	a4,-1860(a4) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001f84:	00a73023          	sd	a0,0(a4)
    80001f88:	fa5ff06f          	j	80001f2c <_ZdlPv+0x70>
            curr->size += curr->next->size;
    80001f8c:	01073603          	ld	a2,16(a4)
    80001f90:	00c686b3          	add	a3,a3,a2
    80001f94:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    80001f98:	00073703          	ld	a4,0(a4)
    80001f9c:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    80001fa0:	fa0702e3          	beqz	a4,80001f44 <_ZdlPv+0x88>
    80001fa4:	00a73423          	sd	a0,8(a4)
    80001fa8:	f9dff06f          	j	80001f44 <_ZdlPv+0x88>
            curr->size += curr->next->size;
    80001fac:	01073603          	ld	a2,16(a4)
    80001fb0:	00c686b3          	add	a3,a3,a2
    80001fb4:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    80001fb8:	00073703          	ld	a4,0(a4)
    80001fbc:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    80001fc0:	f8070ee3          	beqz	a4,80001f5c <_ZdlPv+0xa0>
    80001fc4:	00f73423          	sd	a5,8(a4)
    80001fc8:	f95ff06f          	j	80001f5c <_ZdlPv+0xa0>

0000000080001fcc <_ZdaPv>:

void operator delete[] (void *p) noexcept{
    80001fcc:	ff010113          	addi	sp,sp,-16
    80001fd0:	00813423          	sd	s0,8(sp)
    80001fd4:	01010413          	addi	s0,sp,16
        if(!fmem_head || ptr < (char*)fmem_head)
    80001fd8:	00004797          	auipc	a5,0x4
    80001fdc:	8607b783          	ld	a5,-1952(a5) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001fe0:	0007b703          	ld	a4,0(a5)
    80001fe4:	00070e63          	beqz	a4,80002000 <_ZdaPv+0x34>
    80001fe8:	02e56063          	bltu	a0,a4,80002008 <_ZdaPv+0x3c>
                for (cur=fmem_head; cur->next!=ptr && ptr>(char*)(cur->next); cur=cur->next); //mozda *&ptr
    80001fec:	00070793          	mv	a5,a4
    80001ff0:	00073703          	ld	a4,0(a4)
    80001ff4:	00e50c63          	beq	a0,a4,8000200c <_ZdaPv+0x40>
    80001ff8:	fea76ae3          	bltu	a4,a0,80001fec <_ZdaPv+0x20>
    80001ffc:	0100006f          	j	8000200c <_ZdaPv+0x40>
            cur=nullptr;
    80002000:	00070793          	mv	a5,a4
    80002004:	0080006f          	j	8000200c <_ZdaPv+0x40>
    80002008:	00000793          	li	a5,0
                newSeg->next=nullptr;
    8000200c:	00053023          	sd	zero,0(a0)
                newSeg->size=bytesToBlocks(sizeof(ptr))*MEM_BLOCK_SIZE;
    80002010:	04000713          	li	a4,64
    80002014:	00e53823          	sd	a4,16(a0)
                newSeg->prev=cur;
    80002018:	00f53423          	sd	a5,8(a0)
                if(cur) {
    8000201c:	04078e63          	beqz	a5,80002078 <_ZdaPv+0xac>
                    newSeg->next = cur->next;
    80002020:	0007b703          	ld	a4,0(a5)
    80002024:	00e53023          	sd	a4,0(a0)
                if(newSeg->next) {
    80002028:	00053703          	ld	a4,0(a0)
    8000202c:	00070463          	beqz	a4,80002034 <_ZdaPv+0x68>
                    newSeg->next->prev=newSeg;
    80002030:	00a73423          	sd	a0,8(a4)
                if (cur) {
    80002034:	04078c63          	beqz	a5,8000208c <_ZdaPv+0xc0>
                    cur->next = newSeg; //zasto ovde odjednom uzme vrednost x8000 umesto x8000f...???
    80002038:	00a7b023          	sd	a0,0(a5)
        if (!curr) return;
    8000203c:	00050c63          	beqz	a0,80002054 <_ZdaPv+0x88>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002040:	00053703          	ld	a4,0(a0)
    80002044:	00070863          	beqz	a4,80002054 <_ZdaPv+0x88>
    80002048:	01053683          	ld	a3,16(a0)
    8000204c:	00d50633          	add	a2,a0,a3
    80002050:	04c70663          	beq	a4,a2,8000209c <_ZdaPv+0xd0>
        if (!curr) return;
    80002054:	00078c63          	beqz	a5,8000206c <_ZdaPv+0xa0>
        if (curr->next && (char*)curr+curr->size == (char*)(curr->next)) {
    80002058:	0007b703          	ld	a4,0(a5)
    8000205c:	00070863          	beqz	a4,8000206c <_ZdaPv+0xa0>
    80002060:	0107b683          	ld	a3,16(a5)
    80002064:	00d78633          	add	a2,a5,a3
    80002068:	04c70a63          	beq	a4,a2,800020bc <_ZdaPv+0xf0>
    MemoryAllocation::mem_free(p);
    //__mem_free(p);
    8000206c:	00813403          	ld	s0,8(sp)
    80002070:	01010113          	addi	sp,sp,16
    80002074:	00008067          	ret
                    newSeg->next = fmem_head;
    80002078:	00003717          	auipc	a4,0x3
    8000207c:	7c073703          	ld	a4,1984(a4) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002080:	00073703          	ld	a4,0(a4)
    80002084:	00e53023          	sd	a4,0(a0)
    80002088:	fa1ff06f          	j	80002028 <_ZdaPv+0x5c>
                    fmem_head = newSeg;
    8000208c:	00003717          	auipc	a4,0x3
    80002090:	7ac73703          	ld	a4,1964(a4) # 80005838 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002094:	00a73023          	sd	a0,0(a4)
    80002098:	fa5ff06f          	j	8000203c <_ZdaPv+0x70>
            curr->size += curr->next->size;
    8000209c:	01073603          	ld	a2,16(a4)
    800020a0:	00c686b3          	add	a3,a3,a2
    800020a4:	00d53823          	sd	a3,16(a0)
            curr->next = curr->next->next;
    800020a8:	00073703          	ld	a4,0(a4)
    800020ac:	00e53023          	sd	a4,0(a0)
            if (curr->next) curr->next->prev = curr;
    800020b0:	fa0702e3          	beqz	a4,80002054 <_ZdaPv+0x88>
    800020b4:	00a73423          	sd	a0,8(a4)
    800020b8:	f9dff06f          	j	80002054 <_ZdaPv+0x88>
            curr->size += curr->next->size;
    800020bc:	01073603          	ld	a2,16(a4)
    800020c0:	00c686b3          	add	a3,a3,a2
    800020c4:	00d7b823          	sd	a3,16(a5)
            curr->next = curr->next->next;
    800020c8:	00073703          	ld	a4,0(a4)
    800020cc:	00e7b023          	sd	a4,0(a5)
            if (curr->next) curr->next->prev = curr;
    800020d0:	f8070ee3          	beqz	a4,8000206c <_ZdaPv+0xa0>
    800020d4:	00f73423          	sd	a5,8(a4)
    800020d8:	f95ff06f          	j	8000206c <_ZdaPv+0xa0>

00000000800020dc <_Z41__static_initialization_and_destruction_0ii>:

#include "../h/MemoryAllocation.hpp"
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    800020dc:	ff010113          	addi	sp,sp,-16
    800020e0:	00813423          	sd	s0,8(sp)
    800020e4:	01010413          	addi	s0,sp,16
    800020e8:	00100793          	li	a5,1
    800020ec:	00f50863          	beq	a0,a5,800020fc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800020f0:	00813403          	ld	s0,8(sp)
    800020f4:	01010113          	addi	sp,sp,16
    800020f8:	00008067          	ret
    800020fc:	000107b7          	lui	a5,0x10
    80002100:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002104:	fef596e3          	bne	a1,a5,800020f0 <_Z41__static_initialization_and_destruction_0ii+0x14>
MemoryAllocation::FreeMem * MemoryAllocation::fmem_head=(FreeMem*) HEAP_START_ADDR;
    80002108:	00003797          	auipc	a5,0x3
    8000210c:	6f87b783          	ld	a5,1784(a5) # 80005800 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002110:	0007b783          	ld	a5,0(a5)
    80002114:	00003717          	auipc	a4,0x3
    80002118:	7af73e23          	sd	a5,1980(a4) # 800058d0 <_ZN16MemoryAllocation9fmem_headE>
    8000211c:	fd5ff06f          	j	800020f0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002120 <_GLOBAL__sub_I__ZN16MemoryAllocation9fmem_headE>:
    80002120:	ff010113          	addi	sp,sp,-16
    80002124:	00113423          	sd	ra,8(sp)
    80002128:	00813023          	sd	s0,0(sp)
    8000212c:	01010413          	addi	s0,sp,16
    80002130:	000105b7          	lui	a1,0x10
    80002134:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002138:	00100513          	li	a0,1
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	fa0080e7          	jalr	-96(ra) # 800020dc <_Z41__static_initialization_and_destruction_0ii>
    80002144:	00813083          	ld	ra,8(sp)
    80002148:	00013403          	ld	s0,0(sp)
    8000214c:	01010113          	addi	sp,sp,16
    80002150:	00008067          	ret

0000000080002154 <_Z11printStringPKc>:

#include "../h/Print.hpp"
#include "../lib/console.h"
#include "../h/RiscV.hpp"
//promenjeni print string i integer na vezbama 2, 1:10:00 tu negde, da bi se onemogucili prekidi u samoj niti
void printString(char const *string){
    80002154:	fd010113          	addi	sp,sp,-48
    80002158:	02113423          	sd	ra,40(sp)
    8000215c:	02813023          	sd	s0,32(sp)
    80002160:	00913c23          	sd	s1,24(sp)
    80002164:	01213823          	sd	s2,16(sp)
    80002168:	03010413          	addi	s0,sp,48
    8000216c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    80002170:	100027f3          	csrr	a5,sstatus
    80002174:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002178:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    8000217c:	00200793          	li	a5,2
    80002180:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = RiscV::r_sstatus();
    RiscV::mc_sstatus(RiscV::SSTATUS_SIE);
    while(*string!='\0'){
    80002184:	0004c503          	lbu	a0,0(s1)
    80002188:	00050a63          	beqz	a0,8000219c <_Z11printStringPKc+0x48>
        __putc(*string);
    8000218c:	00002097          	auipc	ra,0x2
    80002190:	1b0080e7          	jalr	432(ra) # 8000433c <__putc>
        string++;
    80002194:	00148493          	addi	s1,s1,1
    while(*string!='\0'){
    80002198:	fedff06f          	j	80002184 <_Z11printStringPKc+0x30>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    8000219c:	0009091b          	sext.w	s2,s2
    800021a0:	00297913          	andi	s2,s2,2
    800021a4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    800021a8:	10092073          	csrs	sstatus,s2
}
    800021ac:	02813083          	ld	ra,40(sp)
    800021b0:	02013403          	ld	s0,32(sp)
    800021b4:	01813483          	ld	s1,24(sp)
    800021b8:	01013903          	ld	s2,16(sp)
    800021bc:	03010113          	addi	sp,sp,48
    800021c0:	00008067          	ret

00000000800021c4 <_Z12printIntegerm>:

void printInteger(uint64 integer){
    800021c4:	fc010113          	addi	sp,sp,-64
    800021c8:	02113c23          	sd	ra,56(sp)
    800021cc:	02813823          	sd	s0,48(sp)
    800021d0:	02913423          	sd	s1,40(sp)
    800021d4:	03213023          	sd	s2,32(sp)
    800021d8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus": [sstatus] "=r"(sstatus));
    800021dc:	100027f3          	csrr	a5,sstatus
    800021e0:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800021e4:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile("csrc sstatus, %[mask]": : [mask] "r"(mask));
    800021e8:	00200793          	li	a5,2
    800021ec:	1007b073          	csrc	sstatus,a5
    neg=0;
    if(integer<0){
        neg=1;
        x=-integer;
    }else{
        x=integer;
    800021f0:	0005051b          	sext.w	a0,a0
    }

    i=0;
    800021f4:	00000493          	li	s1,0
    do {
        buf[i++] = digits [x%10];
    800021f8:	00a00613          	li	a2,10
    800021fc:	02c5773b          	remuw	a4,a0,a2
    80002200:	02071693          	slli	a3,a4,0x20
    80002204:	0206d693          	srli	a3,a3,0x20
    80002208:	00003717          	auipc	a4,0x3
    8000220c:	ef070713          	addi	a4,a4,-272 # 800050f8 <_ZZ12printIntegermE6digits>
    80002210:	00d70733          	add	a4,a4,a3
    80002214:	00074703          	lbu	a4,0(a4)
    80002218:	fe040693          	addi	a3,s0,-32
    8000221c:	009687b3          	add	a5,a3,s1
    80002220:	0014849b          	addiw	s1,s1,1
    80002224:	fee78823          	sb	a4,-16(a5)
    }while((x/=10) != 0);
    80002228:	0005071b          	sext.w	a4,a0
    8000222c:	02c5553b          	divuw	a0,a0,a2
    80002230:	00900793          	li	a5,9
    80002234:	fce7e2e3          	bltu	a5,a4,800021f8 <_Z12printIntegerm+0x34>
    if(neg) buf[i++] = '-';

    while(--i >= 0){
    80002238:	fff4849b          	addiw	s1,s1,-1
    8000223c:	0004ce63          	bltz	s1,80002258 <_Z12printIntegerm+0x94>
        __putc(buf[i]);
    80002240:	fe040793          	addi	a5,s0,-32
    80002244:	009787b3          	add	a5,a5,s1
    80002248:	ff07c503          	lbu	a0,-16(a5)
    8000224c:	00002097          	auipc	ra,0x2
    80002250:	0f0080e7          	jalr	240(ra) # 8000433c <__putc>
    80002254:	fe5ff06f          	j	80002238 <_Z12printIntegerm+0x74>
    }
    RiscV::ms_sstatus(sstatus & RiscV::SSTATUS_SIE ? RiscV::SSTATUS_SIE : 0);
    80002258:	0009091b          	sext.w	s2,s2
    8000225c:	00297913          	andi	s2,s2,2
    80002260:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]": : [mask] "r"(mask));
    80002264:	10092073          	csrs	sstatus,s2
    80002268:	03813083          	ld	ra,56(sp)
    8000226c:	03013403          	ld	s0,48(sp)
    80002270:	02813483          	ld	s1,40(sp)
    80002274:	02013903          	ld	s2,32(sp)
    80002278:	04010113          	addi	sp,sp,64
    8000227c:	00008067          	ret

0000000080002280 <start>:
    80002280:	ff010113          	addi	sp,sp,-16
    80002284:	00813423          	sd	s0,8(sp)
    80002288:	01010413          	addi	s0,sp,16
    8000228c:	300027f3          	csrr	a5,mstatus
    80002290:	ffffe737          	lui	a4,0xffffe
    80002294:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7cbf>
    80002298:	00e7f7b3          	and	a5,a5,a4
    8000229c:	00001737          	lui	a4,0x1
    800022a0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800022a4:	00e7e7b3          	or	a5,a5,a4
    800022a8:	30079073          	csrw	mstatus,a5
    800022ac:	00000797          	auipc	a5,0x0
    800022b0:	16078793          	addi	a5,a5,352 # 8000240c <system_main>
    800022b4:	34179073          	csrw	mepc,a5
    800022b8:	00000793          	li	a5,0
    800022bc:	18079073          	csrw	satp,a5
    800022c0:	000107b7          	lui	a5,0x10
    800022c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800022c8:	30279073          	csrw	medeleg,a5
    800022cc:	30379073          	csrw	mideleg,a5
    800022d0:	104027f3          	csrr	a5,sie
    800022d4:	2227e793          	ori	a5,a5,546
    800022d8:	10479073          	csrw	sie,a5
    800022dc:	fff00793          	li	a5,-1
    800022e0:	00a7d793          	srli	a5,a5,0xa
    800022e4:	3b079073          	csrw	pmpaddr0,a5
    800022e8:	00f00793          	li	a5,15
    800022ec:	3a079073          	csrw	pmpcfg0,a5
    800022f0:	f14027f3          	csrr	a5,mhartid
    800022f4:	0200c737          	lui	a4,0x200c
    800022f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800022fc:	0007869b          	sext.w	a3,a5
    80002300:	00269713          	slli	a4,a3,0x2
    80002304:	000f4637          	lui	a2,0xf4
    80002308:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000230c:	00d70733          	add	a4,a4,a3
    80002310:	0037979b          	slliw	a5,a5,0x3
    80002314:	020046b7          	lui	a3,0x2004
    80002318:	00d787b3          	add	a5,a5,a3
    8000231c:	00c585b3          	add	a1,a1,a2
    80002320:	00371693          	slli	a3,a4,0x3
    80002324:	00003717          	auipc	a4,0x3
    80002328:	5bc70713          	addi	a4,a4,1468 # 800058e0 <timer_scratch>
    8000232c:	00b7b023          	sd	a1,0(a5)
    80002330:	00d70733          	add	a4,a4,a3
    80002334:	00f73c23          	sd	a5,24(a4)
    80002338:	02c73023          	sd	a2,32(a4)
    8000233c:	34071073          	csrw	mscratch,a4
    80002340:	00000797          	auipc	a5,0x0
    80002344:	6e078793          	addi	a5,a5,1760 # 80002a20 <timervec>
    80002348:	30579073          	csrw	mtvec,a5
    8000234c:	300027f3          	csrr	a5,mstatus
    80002350:	0087e793          	ori	a5,a5,8
    80002354:	30079073          	csrw	mstatus,a5
    80002358:	304027f3          	csrr	a5,mie
    8000235c:	0807e793          	ori	a5,a5,128
    80002360:	30479073          	csrw	mie,a5
    80002364:	f14027f3          	csrr	a5,mhartid
    80002368:	0007879b          	sext.w	a5,a5
    8000236c:	00078213          	mv	tp,a5
    80002370:	30200073          	mret
    80002374:	00813403          	ld	s0,8(sp)
    80002378:	01010113          	addi	sp,sp,16
    8000237c:	00008067          	ret

0000000080002380 <timerinit>:
    80002380:	ff010113          	addi	sp,sp,-16
    80002384:	00813423          	sd	s0,8(sp)
    80002388:	01010413          	addi	s0,sp,16
    8000238c:	f14027f3          	csrr	a5,mhartid
    80002390:	0200c737          	lui	a4,0x200c
    80002394:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002398:	0007869b          	sext.w	a3,a5
    8000239c:	00269713          	slli	a4,a3,0x2
    800023a0:	000f4637          	lui	a2,0xf4
    800023a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800023a8:	00d70733          	add	a4,a4,a3
    800023ac:	0037979b          	slliw	a5,a5,0x3
    800023b0:	020046b7          	lui	a3,0x2004
    800023b4:	00d787b3          	add	a5,a5,a3
    800023b8:	00c585b3          	add	a1,a1,a2
    800023bc:	00371693          	slli	a3,a4,0x3
    800023c0:	00003717          	auipc	a4,0x3
    800023c4:	52070713          	addi	a4,a4,1312 # 800058e0 <timer_scratch>
    800023c8:	00b7b023          	sd	a1,0(a5)
    800023cc:	00d70733          	add	a4,a4,a3
    800023d0:	00f73c23          	sd	a5,24(a4)
    800023d4:	02c73023          	sd	a2,32(a4)
    800023d8:	34071073          	csrw	mscratch,a4
    800023dc:	00000797          	auipc	a5,0x0
    800023e0:	64478793          	addi	a5,a5,1604 # 80002a20 <timervec>
    800023e4:	30579073          	csrw	mtvec,a5
    800023e8:	300027f3          	csrr	a5,mstatus
    800023ec:	0087e793          	ori	a5,a5,8
    800023f0:	30079073          	csrw	mstatus,a5
    800023f4:	304027f3          	csrr	a5,mie
    800023f8:	0807e793          	ori	a5,a5,128
    800023fc:	30479073          	csrw	mie,a5
    80002400:	00813403          	ld	s0,8(sp)
    80002404:	01010113          	addi	sp,sp,16
    80002408:	00008067          	ret

000000008000240c <system_main>:
    8000240c:	fe010113          	addi	sp,sp,-32
    80002410:	00813823          	sd	s0,16(sp)
    80002414:	00913423          	sd	s1,8(sp)
    80002418:	00113c23          	sd	ra,24(sp)
    8000241c:	02010413          	addi	s0,sp,32
    80002420:	00000097          	auipc	ra,0x0
    80002424:	0c4080e7          	jalr	196(ra) # 800024e4 <cpuid>
    80002428:	00003497          	auipc	s1,0x3
    8000242c:	45848493          	addi	s1,s1,1112 # 80005880 <started>
    80002430:	02050263          	beqz	a0,80002454 <system_main+0x48>
    80002434:	0004a783          	lw	a5,0(s1)
    80002438:	0007879b          	sext.w	a5,a5
    8000243c:	fe078ce3          	beqz	a5,80002434 <system_main+0x28>
    80002440:	0ff0000f          	fence
    80002444:	00003517          	auipc	a0,0x3
    80002448:	cf450513          	addi	a0,a0,-780 # 80005138 <_ZZ12printIntegermE6digits+0x40>
    8000244c:	00001097          	auipc	ra,0x1
    80002450:	a70080e7          	jalr	-1424(ra) # 80002ebc <panic>
    80002454:	00001097          	auipc	ra,0x1
    80002458:	9c4080e7          	jalr	-1596(ra) # 80002e18 <consoleinit>
    8000245c:	00001097          	auipc	ra,0x1
    80002460:	150080e7          	jalr	336(ra) # 800035ac <printfinit>
    80002464:	00003517          	auipc	a0,0x3
    80002468:	c8c50513          	addi	a0,a0,-884 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000246c:	00001097          	auipc	ra,0x1
    80002470:	aac080e7          	jalr	-1364(ra) # 80002f18 <__printf>
    80002474:	00003517          	auipc	a0,0x3
    80002478:	c9450513          	addi	a0,a0,-876 # 80005108 <_ZZ12printIntegermE6digits+0x10>
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	a9c080e7          	jalr	-1380(ra) # 80002f18 <__printf>
    80002484:	00003517          	auipc	a0,0x3
    80002488:	c6c50513          	addi	a0,a0,-916 # 800050f0 <CONSOLE_STATUS+0xe0>
    8000248c:	00001097          	auipc	ra,0x1
    80002490:	a8c080e7          	jalr	-1396(ra) # 80002f18 <__printf>
    80002494:	00001097          	auipc	ra,0x1
    80002498:	4a4080e7          	jalr	1188(ra) # 80003938 <kinit>
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	148080e7          	jalr	328(ra) # 800025e4 <trapinit>
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	16c080e7          	jalr	364(ra) # 80002610 <trapinithart>
    800024ac:	00000097          	auipc	ra,0x0
    800024b0:	5b4080e7          	jalr	1460(ra) # 80002a60 <plicinit>
    800024b4:	00000097          	auipc	ra,0x0
    800024b8:	5d4080e7          	jalr	1492(ra) # 80002a88 <plicinithart>
    800024bc:	00000097          	auipc	ra,0x0
    800024c0:	078080e7          	jalr	120(ra) # 80002534 <userinit>
    800024c4:	0ff0000f          	fence
    800024c8:	00100793          	li	a5,1
    800024cc:	00003517          	auipc	a0,0x3
    800024d0:	c5450513          	addi	a0,a0,-940 # 80005120 <_ZZ12printIntegermE6digits+0x28>
    800024d4:	00f4a023          	sw	a5,0(s1)
    800024d8:	00001097          	auipc	ra,0x1
    800024dc:	a40080e7          	jalr	-1472(ra) # 80002f18 <__printf>
    800024e0:	0000006f          	j	800024e0 <system_main+0xd4>

00000000800024e4 <cpuid>:
    800024e4:	ff010113          	addi	sp,sp,-16
    800024e8:	00813423          	sd	s0,8(sp)
    800024ec:	01010413          	addi	s0,sp,16
    800024f0:	00020513          	mv	a0,tp
    800024f4:	00813403          	ld	s0,8(sp)
    800024f8:	0005051b          	sext.w	a0,a0
    800024fc:	01010113          	addi	sp,sp,16
    80002500:	00008067          	ret

0000000080002504 <mycpu>:
    80002504:	ff010113          	addi	sp,sp,-16
    80002508:	00813423          	sd	s0,8(sp)
    8000250c:	01010413          	addi	s0,sp,16
    80002510:	00020793          	mv	a5,tp
    80002514:	00813403          	ld	s0,8(sp)
    80002518:	0007879b          	sext.w	a5,a5
    8000251c:	00779793          	slli	a5,a5,0x7
    80002520:	00004517          	auipc	a0,0x4
    80002524:	3f050513          	addi	a0,a0,1008 # 80006910 <cpus>
    80002528:	00f50533          	add	a0,a0,a5
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret

0000000080002534 <userinit>:
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00813423          	sd	s0,8(sp)
    8000253c:	01010413          	addi	s0,sp,16
    80002540:	00813403          	ld	s0,8(sp)
    80002544:	01010113          	addi	sp,sp,16
    80002548:	fffff317          	auipc	t1,0xfffff
    8000254c:	38430067          	jr	900(t1) # 800018cc <main>

0000000080002550 <either_copyout>:
    80002550:	ff010113          	addi	sp,sp,-16
    80002554:	00813023          	sd	s0,0(sp)
    80002558:	00113423          	sd	ra,8(sp)
    8000255c:	01010413          	addi	s0,sp,16
    80002560:	02051663          	bnez	a0,8000258c <either_copyout+0x3c>
    80002564:	00058513          	mv	a0,a1
    80002568:	00060593          	mv	a1,a2
    8000256c:	0006861b          	sext.w	a2,a3
    80002570:	00002097          	auipc	ra,0x2
    80002574:	c54080e7          	jalr	-940(ra) # 800041c4 <__memmove>
    80002578:	00813083          	ld	ra,8(sp)
    8000257c:	00013403          	ld	s0,0(sp)
    80002580:	00000513          	li	a0,0
    80002584:	01010113          	addi	sp,sp,16
    80002588:	00008067          	ret
    8000258c:	00003517          	auipc	a0,0x3
    80002590:	bd450513          	addi	a0,a0,-1068 # 80005160 <_ZZ12printIntegermE6digits+0x68>
    80002594:	00001097          	auipc	ra,0x1
    80002598:	928080e7          	jalr	-1752(ra) # 80002ebc <panic>

000000008000259c <either_copyin>:
    8000259c:	ff010113          	addi	sp,sp,-16
    800025a0:	00813023          	sd	s0,0(sp)
    800025a4:	00113423          	sd	ra,8(sp)
    800025a8:	01010413          	addi	s0,sp,16
    800025ac:	02059463          	bnez	a1,800025d4 <either_copyin+0x38>
    800025b0:	00060593          	mv	a1,a2
    800025b4:	0006861b          	sext.w	a2,a3
    800025b8:	00002097          	auipc	ra,0x2
    800025bc:	c0c080e7          	jalr	-1012(ra) # 800041c4 <__memmove>
    800025c0:	00813083          	ld	ra,8(sp)
    800025c4:	00013403          	ld	s0,0(sp)
    800025c8:	00000513          	li	a0,0
    800025cc:	01010113          	addi	sp,sp,16
    800025d0:	00008067          	ret
    800025d4:	00003517          	auipc	a0,0x3
    800025d8:	bb450513          	addi	a0,a0,-1100 # 80005188 <_ZZ12printIntegermE6digits+0x90>
    800025dc:	00001097          	auipc	ra,0x1
    800025e0:	8e0080e7          	jalr	-1824(ra) # 80002ebc <panic>

00000000800025e4 <trapinit>:
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00813423          	sd	s0,8(sp)
    800025ec:	01010413          	addi	s0,sp,16
    800025f0:	00813403          	ld	s0,8(sp)
    800025f4:	00003597          	auipc	a1,0x3
    800025f8:	bbc58593          	addi	a1,a1,-1092 # 800051b0 <_ZZ12printIntegermE6digits+0xb8>
    800025fc:	00004517          	auipc	a0,0x4
    80002600:	39450513          	addi	a0,a0,916 # 80006990 <tickslock>
    80002604:	01010113          	addi	sp,sp,16
    80002608:	00001317          	auipc	t1,0x1
    8000260c:	5c030067          	jr	1472(t1) # 80003bc8 <initlock>

0000000080002610 <trapinithart>:
    80002610:	ff010113          	addi	sp,sp,-16
    80002614:	00813423          	sd	s0,8(sp)
    80002618:	01010413          	addi	s0,sp,16
    8000261c:	00000797          	auipc	a5,0x0
    80002620:	2f478793          	addi	a5,a5,756 # 80002910 <kernelvec>
    80002624:	10579073          	csrw	stvec,a5
    80002628:	00813403          	ld	s0,8(sp)
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret

0000000080002634 <usertrap>:
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00813423          	sd	s0,8(sp)
    8000263c:	01010413          	addi	s0,sp,16
    80002640:	00813403          	ld	s0,8(sp)
    80002644:	01010113          	addi	sp,sp,16
    80002648:	00008067          	ret

000000008000264c <usertrapret>:
    8000264c:	ff010113          	addi	sp,sp,-16
    80002650:	00813423          	sd	s0,8(sp)
    80002654:	01010413          	addi	s0,sp,16
    80002658:	00813403          	ld	s0,8(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <kerneltrap>:
    80002664:	fe010113          	addi	sp,sp,-32
    80002668:	00813823          	sd	s0,16(sp)
    8000266c:	00113c23          	sd	ra,24(sp)
    80002670:	00913423          	sd	s1,8(sp)
    80002674:	02010413          	addi	s0,sp,32
    80002678:	142025f3          	csrr	a1,scause
    8000267c:	100027f3          	csrr	a5,sstatus
    80002680:	0027f793          	andi	a5,a5,2
    80002684:	10079c63          	bnez	a5,8000279c <kerneltrap+0x138>
    80002688:	142027f3          	csrr	a5,scause
    8000268c:	0207ce63          	bltz	a5,800026c8 <kerneltrap+0x64>
    80002690:	00003517          	auipc	a0,0x3
    80002694:	b6850513          	addi	a0,a0,-1176 # 800051f8 <_ZZ12printIntegermE6digits+0x100>
    80002698:	00001097          	auipc	ra,0x1
    8000269c:	880080e7          	jalr	-1920(ra) # 80002f18 <__printf>
    800026a0:	141025f3          	csrr	a1,sepc
    800026a4:	14302673          	csrr	a2,stval
    800026a8:	00003517          	auipc	a0,0x3
    800026ac:	b6050513          	addi	a0,a0,-1184 # 80005208 <_ZZ12printIntegermE6digits+0x110>
    800026b0:	00001097          	auipc	ra,0x1
    800026b4:	868080e7          	jalr	-1944(ra) # 80002f18 <__printf>
    800026b8:	00003517          	auipc	a0,0x3
    800026bc:	b6850513          	addi	a0,a0,-1176 # 80005220 <_ZZ12printIntegermE6digits+0x128>
    800026c0:	00000097          	auipc	ra,0x0
    800026c4:	7fc080e7          	jalr	2044(ra) # 80002ebc <panic>
    800026c8:	0ff7f713          	andi	a4,a5,255
    800026cc:	00900693          	li	a3,9
    800026d0:	04d70063          	beq	a4,a3,80002710 <kerneltrap+0xac>
    800026d4:	fff00713          	li	a4,-1
    800026d8:	03f71713          	slli	a4,a4,0x3f
    800026dc:	00170713          	addi	a4,a4,1
    800026e0:	fae798e3          	bne	a5,a4,80002690 <kerneltrap+0x2c>
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	e00080e7          	jalr	-512(ra) # 800024e4 <cpuid>
    800026ec:	06050663          	beqz	a0,80002758 <kerneltrap+0xf4>
    800026f0:	144027f3          	csrr	a5,sip
    800026f4:	ffd7f793          	andi	a5,a5,-3
    800026f8:	14479073          	csrw	sip,a5
    800026fc:	01813083          	ld	ra,24(sp)
    80002700:	01013403          	ld	s0,16(sp)
    80002704:	00813483          	ld	s1,8(sp)
    80002708:	02010113          	addi	sp,sp,32
    8000270c:	00008067          	ret
    80002710:	00000097          	auipc	ra,0x0
    80002714:	3c4080e7          	jalr	964(ra) # 80002ad4 <plic_claim>
    80002718:	00a00793          	li	a5,10
    8000271c:	00050493          	mv	s1,a0
    80002720:	06f50863          	beq	a0,a5,80002790 <kerneltrap+0x12c>
    80002724:	fc050ce3          	beqz	a0,800026fc <kerneltrap+0x98>
    80002728:	00050593          	mv	a1,a0
    8000272c:	00003517          	auipc	a0,0x3
    80002730:	aac50513          	addi	a0,a0,-1364 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    80002734:	00000097          	auipc	ra,0x0
    80002738:	7e4080e7          	jalr	2020(ra) # 80002f18 <__printf>
    8000273c:	01013403          	ld	s0,16(sp)
    80002740:	01813083          	ld	ra,24(sp)
    80002744:	00048513          	mv	a0,s1
    80002748:	00813483          	ld	s1,8(sp)
    8000274c:	02010113          	addi	sp,sp,32
    80002750:	00000317          	auipc	t1,0x0
    80002754:	3bc30067          	jr	956(t1) # 80002b0c <plic_complete>
    80002758:	00004517          	auipc	a0,0x4
    8000275c:	23850513          	addi	a0,a0,568 # 80006990 <tickslock>
    80002760:	00001097          	auipc	ra,0x1
    80002764:	48c080e7          	jalr	1164(ra) # 80003bec <acquire>
    80002768:	00003717          	auipc	a4,0x3
    8000276c:	11c70713          	addi	a4,a4,284 # 80005884 <ticks>
    80002770:	00072783          	lw	a5,0(a4)
    80002774:	00004517          	auipc	a0,0x4
    80002778:	21c50513          	addi	a0,a0,540 # 80006990 <tickslock>
    8000277c:	0017879b          	addiw	a5,a5,1
    80002780:	00f72023          	sw	a5,0(a4)
    80002784:	00001097          	auipc	ra,0x1
    80002788:	534080e7          	jalr	1332(ra) # 80003cb8 <release>
    8000278c:	f65ff06f          	j	800026f0 <kerneltrap+0x8c>
    80002790:	00001097          	auipc	ra,0x1
    80002794:	090080e7          	jalr	144(ra) # 80003820 <uartintr>
    80002798:	fa5ff06f          	j	8000273c <kerneltrap+0xd8>
    8000279c:	00003517          	auipc	a0,0x3
    800027a0:	a1c50513          	addi	a0,a0,-1508 # 800051b8 <_ZZ12printIntegermE6digits+0xc0>
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	718080e7          	jalr	1816(ra) # 80002ebc <panic>

00000000800027ac <clockintr>:
    800027ac:	fe010113          	addi	sp,sp,-32
    800027b0:	00813823          	sd	s0,16(sp)
    800027b4:	00913423          	sd	s1,8(sp)
    800027b8:	00113c23          	sd	ra,24(sp)
    800027bc:	02010413          	addi	s0,sp,32
    800027c0:	00004497          	auipc	s1,0x4
    800027c4:	1d048493          	addi	s1,s1,464 # 80006990 <tickslock>
    800027c8:	00048513          	mv	a0,s1
    800027cc:	00001097          	auipc	ra,0x1
    800027d0:	420080e7          	jalr	1056(ra) # 80003bec <acquire>
    800027d4:	00003717          	auipc	a4,0x3
    800027d8:	0b070713          	addi	a4,a4,176 # 80005884 <ticks>
    800027dc:	00072783          	lw	a5,0(a4)
    800027e0:	01013403          	ld	s0,16(sp)
    800027e4:	01813083          	ld	ra,24(sp)
    800027e8:	00048513          	mv	a0,s1
    800027ec:	0017879b          	addiw	a5,a5,1
    800027f0:	00813483          	ld	s1,8(sp)
    800027f4:	00f72023          	sw	a5,0(a4)
    800027f8:	02010113          	addi	sp,sp,32
    800027fc:	00001317          	auipc	t1,0x1
    80002800:	4bc30067          	jr	1212(t1) # 80003cb8 <release>

0000000080002804 <devintr>:
    80002804:	142027f3          	csrr	a5,scause
    80002808:	00000513          	li	a0,0
    8000280c:	0007c463          	bltz	a5,80002814 <devintr+0x10>
    80002810:	00008067          	ret
    80002814:	fe010113          	addi	sp,sp,-32
    80002818:	00813823          	sd	s0,16(sp)
    8000281c:	00113c23          	sd	ra,24(sp)
    80002820:	00913423          	sd	s1,8(sp)
    80002824:	02010413          	addi	s0,sp,32
    80002828:	0ff7f713          	andi	a4,a5,255
    8000282c:	00900693          	li	a3,9
    80002830:	04d70c63          	beq	a4,a3,80002888 <devintr+0x84>
    80002834:	fff00713          	li	a4,-1
    80002838:	03f71713          	slli	a4,a4,0x3f
    8000283c:	00170713          	addi	a4,a4,1
    80002840:	00e78c63          	beq	a5,a4,80002858 <devintr+0x54>
    80002844:	01813083          	ld	ra,24(sp)
    80002848:	01013403          	ld	s0,16(sp)
    8000284c:	00813483          	ld	s1,8(sp)
    80002850:	02010113          	addi	sp,sp,32
    80002854:	00008067          	ret
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	c8c080e7          	jalr	-884(ra) # 800024e4 <cpuid>
    80002860:	06050663          	beqz	a0,800028cc <devintr+0xc8>
    80002864:	144027f3          	csrr	a5,sip
    80002868:	ffd7f793          	andi	a5,a5,-3
    8000286c:	14479073          	csrw	sip,a5
    80002870:	01813083          	ld	ra,24(sp)
    80002874:	01013403          	ld	s0,16(sp)
    80002878:	00813483          	ld	s1,8(sp)
    8000287c:	00200513          	li	a0,2
    80002880:	02010113          	addi	sp,sp,32
    80002884:	00008067          	ret
    80002888:	00000097          	auipc	ra,0x0
    8000288c:	24c080e7          	jalr	588(ra) # 80002ad4 <plic_claim>
    80002890:	00a00793          	li	a5,10
    80002894:	00050493          	mv	s1,a0
    80002898:	06f50663          	beq	a0,a5,80002904 <devintr+0x100>
    8000289c:	00100513          	li	a0,1
    800028a0:	fa0482e3          	beqz	s1,80002844 <devintr+0x40>
    800028a4:	00048593          	mv	a1,s1
    800028a8:	00003517          	auipc	a0,0x3
    800028ac:	93050513          	addi	a0,a0,-1744 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	668080e7          	jalr	1640(ra) # 80002f18 <__printf>
    800028b8:	00048513          	mv	a0,s1
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	250080e7          	jalr	592(ra) # 80002b0c <plic_complete>
    800028c4:	00100513          	li	a0,1
    800028c8:	f7dff06f          	j	80002844 <devintr+0x40>
    800028cc:	00004517          	auipc	a0,0x4
    800028d0:	0c450513          	addi	a0,a0,196 # 80006990 <tickslock>
    800028d4:	00001097          	auipc	ra,0x1
    800028d8:	318080e7          	jalr	792(ra) # 80003bec <acquire>
    800028dc:	00003717          	auipc	a4,0x3
    800028e0:	fa870713          	addi	a4,a4,-88 # 80005884 <ticks>
    800028e4:	00072783          	lw	a5,0(a4)
    800028e8:	00004517          	auipc	a0,0x4
    800028ec:	0a850513          	addi	a0,a0,168 # 80006990 <tickslock>
    800028f0:	0017879b          	addiw	a5,a5,1
    800028f4:	00f72023          	sw	a5,0(a4)
    800028f8:	00001097          	auipc	ra,0x1
    800028fc:	3c0080e7          	jalr	960(ra) # 80003cb8 <release>
    80002900:	f65ff06f          	j	80002864 <devintr+0x60>
    80002904:	00001097          	auipc	ra,0x1
    80002908:	f1c080e7          	jalr	-228(ra) # 80003820 <uartintr>
    8000290c:	fadff06f          	j	800028b8 <devintr+0xb4>

0000000080002910 <kernelvec>:
    80002910:	f0010113          	addi	sp,sp,-256
    80002914:	00113023          	sd	ra,0(sp)
    80002918:	00213423          	sd	sp,8(sp)
    8000291c:	00313823          	sd	gp,16(sp)
    80002920:	00413c23          	sd	tp,24(sp)
    80002924:	02513023          	sd	t0,32(sp)
    80002928:	02613423          	sd	t1,40(sp)
    8000292c:	02713823          	sd	t2,48(sp)
    80002930:	02813c23          	sd	s0,56(sp)
    80002934:	04913023          	sd	s1,64(sp)
    80002938:	04a13423          	sd	a0,72(sp)
    8000293c:	04b13823          	sd	a1,80(sp)
    80002940:	04c13c23          	sd	a2,88(sp)
    80002944:	06d13023          	sd	a3,96(sp)
    80002948:	06e13423          	sd	a4,104(sp)
    8000294c:	06f13823          	sd	a5,112(sp)
    80002950:	07013c23          	sd	a6,120(sp)
    80002954:	09113023          	sd	a7,128(sp)
    80002958:	09213423          	sd	s2,136(sp)
    8000295c:	09313823          	sd	s3,144(sp)
    80002960:	09413c23          	sd	s4,152(sp)
    80002964:	0b513023          	sd	s5,160(sp)
    80002968:	0b613423          	sd	s6,168(sp)
    8000296c:	0b713823          	sd	s7,176(sp)
    80002970:	0b813c23          	sd	s8,184(sp)
    80002974:	0d913023          	sd	s9,192(sp)
    80002978:	0da13423          	sd	s10,200(sp)
    8000297c:	0db13823          	sd	s11,208(sp)
    80002980:	0dc13c23          	sd	t3,216(sp)
    80002984:	0fd13023          	sd	t4,224(sp)
    80002988:	0fe13423          	sd	t5,232(sp)
    8000298c:	0ff13823          	sd	t6,240(sp)
    80002990:	cd5ff0ef          	jal	ra,80002664 <kerneltrap>
    80002994:	00013083          	ld	ra,0(sp)
    80002998:	00813103          	ld	sp,8(sp)
    8000299c:	01013183          	ld	gp,16(sp)
    800029a0:	02013283          	ld	t0,32(sp)
    800029a4:	02813303          	ld	t1,40(sp)
    800029a8:	03013383          	ld	t2,48(sp)
    800029ac:	03813403          	ld	s0,56(sp)
    800029b0:	04013483          	ld	s1,64(sp)
    800029b4:	04813503          	ld	a0,72(sp)
    800029b8:	05013583          	ld	a1,80(sp)
    800029bc:	05813603          	ld	a2,88(sp)
    800029c0:	06013683          	ld	a3,96(sp)
    800029c4:	06813703          	ld	a4,104(sp)
    800029c8:	07013783          	ld	a5,112(sp)
    800029cc:	07813803          	ld	a6,120(sp)
    800029d0:	08013883          	ld	a7,128(sp)
    800029d4:	08813903          	ld	s2,136(sp)
    800029d8:	09013983          	ld	s3,144(sp)
    800029dc:	09813a03          	ld	s4,152(sp)
    800029e0:	0a013a83          	ld	s5,160(sp)
    800029e4:	0a813b03          	ld	s6,168(sp)
    800029e8:	0b013b83          	ld	s7,176(sp)
    800029ec:	0b813c03          	ld	s8,184(sp)
    800029f0:	0c013c83          	ld	s9,192(sp)
    800029f4:	0c813d03          	ld	s10,200(sp)
    800029f8:	0d013d83          	ld	s11,208(sp)
    800029fc:	0d813e03          	ld	t3,216(sp)
    80002a00:	0e013e83          	ld	t4,224(sp)
    80002a04:	0e813f03          	ld	t5,232(sp)
    80002a08:	0f013f83          	ld	t6,240(sp)
    80002a0c:	10010113          	addi	sp,sp,256
    80002a10:	10200073          	sret
    80002a14:	00000013          	nop
    80002a18:	00000013          	nop
    80002a1c:	00000013          	nop

0000000080002a20 <timervec>:
    80002a20:	34051573          	csrrw	a0,mscratch,a0
    80002a24:	00b53023          	sd	a1,0(a0)
    80002a28:	00c53423          	sd	a2,8(a0)
    80002a2c:	00d53823          	sd	a3,16(a0)
    80002a30:	01853583          	ld	a1,24(a0)
    80002a34:	02053603          	ld	a2,32(a0)
    80002a38:	0005b683          	ld	a3,0(a1)
    80002a3c:	00c686b3          	add	a3,a3,a2
    80002a40:	00d5b023          	sd	a3,0(a1)
    80002a44:	00200593          	li	a1,2
    80002a48:	14459073          	csrw	sip,a1
    80002a4c:	01053683          	ld	a3,16(a0)
    80002a50:	00853603          	ld	a2,8(a0)
    80002a54:	00053583          	ld	a1,0(a0)
    80002a58:	34051573          	csrrw	a0,mscratch,a0
    80002a5c:	30200073          	mret

0000000080002a60 <plicinit>:
    80002a60:	ff010113          	addi	sp,sp,-16
    80002a64:	00813423          	sd	s0,8(sp)
    80002a68:	01010413          	addi	s0,sp,16
    80002a6c:	00813403          	ld	s0,8(sp)
    80002a70:	0c0007b7          	lui	a5,0xc000
    80002a74:	00100713          	li	a4,1
    80002a78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002a7c:	00e7a223          	sw	a4,4(a5)
    80002a80:	01010113          	addi	sp,sp,16
    80002a84:	00008067          	ret

0000000080002a88 <plicinithart>:
    80002a88:	ff010113          	addi	sp,sp,-16
    80002a8c:	00813023          	sd	s0,0(sp)
    80002a90:	00113423          	sd	ra,8(sp)
    80002a94:	01010413          	addi	s0,sp,16
    80002a98:	00000097          	auipc	ra,0x0
    80002a9c:	a4c080e7          	jalr	-1460(ra) # 800024e4 <cpuid>
    80002aa0:	0085171b          	slliw	a4,a0,0x8
    80002aa4:	0c0027b7          	lui	a5,0xc002
    80002aa8:	00e787b3          	add	a5,a5,a4
    80002aac:	40200713          	li	a4,1026
    80002ab0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002ab4:	00813083          	ld	ra,8(sp)
    80002ab8:	00013403          	ld	s0,0(sp)
    80002abc:	00d5151b          	slliw	a0,a0,0xd
    80002ac0:	0c2017b7          	lui	a5,0xc201
    80002ac4:	00a78533          	add	a0,a5,a0
    80002ac8:	00052023          	sw	zero,0(a0)
    80002acc:	01010113          	addi	sp,sp,16
    80002ad0:	00008067          	ret

0000000080002ad4 <plic_claim>:
    80002ad4:	ff010113          	addi	sp,sp,-16
    80002ad8:	00813023          	sd	s0,0(sp)
    80002adc:	00113423          	sd	ra,8(sp)
    80002ae0:	01010413          	addi	s0,sp,16
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	a00080e7          	jalr	-1536(ra) # 800024e4 <cpuid>
    80002aec:	00813083          	ld	ra,8(sp)
    80002af0:	00013403          	ld	s0,0(sp)
    80002af4:	00d5151b          	slliw	a0,a0,0xd
    80002af8:	0c2017b7          	lui	a5,0xc201
    80002afc:	00a78533          	add	a0,a5,a0
    80002b00:	00452503          	lw	a0,4(a0)
    80002b04:	01010113          	addi	sp,sp,16
    80002b08:	00008067          	ret

0000000080002b0c <plic_complete>:
    80002b0c:	fe010113          	addi	sp,sp,-32
    80002b10:	00813823          	sd	s0,16(sp)
    80002b14:	00913423          	sd	s1,8(sp)
    80002b18:	00113c23          	sd	ra,24(sp)
    80002b1c:	02010413          	addi	s0,sp,32
    80002b20:	00050493          	mv	s1,a0
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	9c0080e7          	jalr	-1600(ra) # 800024e4 <cpuid>
    80002b2c:	01813083          	ld	ra,24(sp)
    80002b30:	01013403          	ld	s0,16(sp)
    80002b34:	00d5179b          	slliw	a5,a0,0xd
    80002b38:	0c201737          	lui	a4,0xc201
    80002b3c:	00f707b3          	add	a5,a4,a5
    80002b40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002b44:	00813483          	ld	s1,8(sp)
    80002b48:	02010113          	addi	sp,sp,32
    80002b4c:	00008067          	ret

0000000080002b50 <consolewrite>:
    80002b50:	fb010113          	addi	sp,sp,-80
    80002b54:	04813023          	sd	s0,64(sp)
    80002b58:	04113423          	sd	ra,72(sp)
    80002b5c:	02913c23          	sd	s1,56(sp)
    80002b60:	03213823          	sd	s2,48(sp)
    80002b64:	03313423          	sd	s3,40(sp)
    80002b68:	03413023          	sd	s4,32(sp)
    80002b6c:	01513c23          	sd	s5,24(sp)
    80002b70:	05010413          	addi	s0,sp,80
    80002b74:	06c05c63          	blez	a2,80002bec <consolewrite+0x9c>
    80002b78:	00060993          	mv	s3,a2
    80002b7c:	00050a13          	mv	s4,a0
    80002b80:	00058493          	mv	s1,a1
    80002b84:	00000913          	li	s2,0
    80002b88:	fff00a93          	li	s5,-1
    80002b8c:	01c0006f          	j	80002ba8 <consolewrite+0x58>
    80002b90:	fbf44503          	lbu	a0,-65(s0)
    80002b94:	0019091b          	addiw	s2,s2,1
    80002b98:	00148493          	addi	s1,s1,1
    80002b9c:	00001097          	auipc	ra,0x1
    80002ba0:	a9c080e7          	jalr	-1380(ra) # 80003638 <uartputc>
    80002ba4:	03298063          	beq	s3,s2,80002bc4 <consolewrite+0x74>
    80002ba8:	00048613          	mv	a2,s1
    80002bac:	00100693          	li	a3,1
    80002bb0:	000a0593          	mv	a1,s4
    80002bb4:	fbf40513          	addi	a0,s0,-65
    80002bb8:	00000097          	auipc	ra,0x0
    80002bbc:	9e4080e7          	jalr	-1564(ra) # 8000259c <either_copyin>
    80002bc0:	fd5518e3          	bne	a0,s5,80002b90 <consolewrite+0x40>
    80002bc4:	04813083          	ld	ra,72(sp)
    80002bc8:	04013403          	ld	s0,64(sp)
    80002bcc:	03813483          	ld	s1,56(sp)
    80002bd0:	02813983          	ld	s3,40(sp)
    80002bd4:	02013a03          	ld	s4,32(sp)
    80002bd8:	01813a83          	ld	s5,24(sp)
    80002bdc:	00090513          	mv	a0,s2
    80002be0:	03013903          	ld	s2,48(sp)
    80002be4:	05010113          	addi	sp,sp,80
    80002be8:	00008067          	ret
    80002bec:	00000913          	li	s2,0
    80002bf0:	fd5ff06f          	j	80002bc4 <consolewrite+0x74>

0000000080002bf4 <consoleread>:
    80002bf4:	f9010113          	addi	sp,sp,-112
    80002bf8:	06813023          	sd	s0,96(sp)
    80002bfc:	04913c23          	sd	s1,88(sp)
    80002c00:	05213823          	sd	s2,80(sp)
    80002c04:	05313423          	sd	s3,72(sp)
    80002c08:	05413023          	sd	s4,64(sp)
    80002c0c:	03513c23          	sd	s5,56(sp)
    80002c10:	03613823          	sd	s6,48(sp)
    80002c14:	03713423          	sd	s7,40(sp)
    80002c18:	03813023          	sd	s8,32(sp)
    80002c1c:	06113423          	sd	ra,104(sp)
    80002c20:	01913c23          	sd	s9,24(sp)
    80002c24:	07010413          	addi	s0,sp,112
    80002c28:	00060b93          	mv	s7,a2
    80002c2c:	00050913          	mv	s2,a0
    80002c30:	00058c13          	mv	s8,a1
    80002c34:	00060b1b          	sext.w	s6,a2
    80002c38:	00004497          	auipc	s1,0x4
    80002c3c:	d8048493          	addi	s1,s1,-640 # 800069b8 <cons>
    80002c40:	00400993          	li	s3,4
    80002c44:	fff00a13          	li	s4,-1
    80002c48:	00a00a93          	li	s5,10
    80002c4c:	05705e63          	blez	s7,80002ca8 <consoleread+0xb4>
    80002c50:	09c4a703          	lw	a4,156(s1)
    80002c54:	0984a783          	lw	a5,152(s1)
    80002c58:	0007071b          	sext.w	a4,a4
    80002c5c:	08e78463          	beq	a5,a4,80002ce4 <consoleread+0xf0>
    80002c60:	07f7f713          	andi	a4,a5,127
    80002c64:	00e48733          	add	a4,s1,a4
    80002c68:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002c6c:	0017869b          	addiw	a3,a5,1
    80002c70:	08d4ac23          	sw	a3,152(s1)
    80002c74:	00070c9b          	sext.w	s9,a4
    80002c78:	0b370663          	beq	a4,s3,80002d24 <consoleread+0x130>
    80002c7c:	00100693          	li	a3,1
    80002c80:	f9f40613          	addi	a2,s0,-97
    80002c84:	000c0593          	mv	a1,s8
    80002c88:	00090513          	mv	a0,s2
    80002c8c:	f8e40fa3          	sb	a4,-97(s0)
    80002c90:	00000097          	auipc	ra,0x0
    80002c94:	8c0080e7          	jalr	-1856(ra) # 80002550 <either_copyout>
    80002c98:	01450863          	beq	a0,s4,80002ca8 <consoleread+0xb4>
    80002c9c:	001c0c13          	addi	s8,s8,1
    80002ca0:	fffb8b9b          	addiw	s7,s7,-1
    80002ca4:	fb5c94e3          	bne	s9,s5,80002c4c <consoleread+0x58>
    80002ca8:	000b851b          	sext.w	a0,s7
    80002cac:	06813083          	ld	ra,104(sp)
    80002cb0:	06013403          	ld	s0,96(sp)
    80002cb4:	05813483          	ld	s1,88(sp)
    80002cb8:	05013903          	ld	s2,80(sp)
    80002cbc:	04813983          	ld	s3,72(sp)
    80002cc0:	04013a03          	ld	s4,64(sp)
    80002cc4:	03813a83          	ld	s5,56(sp)
    80002cc8:	02813b83          	ld	s7,40(sp)
    80002ccc:	02013c03          	ld	s8,32(sp)
    80002cd0:	01813c83          	ld	s9,24(sp)
    80002cd4:	40ab053b          	subw	a0,s6,a0
    80002cd8:	03013b03          	ld	s6,48(sp)
    80002cdc:	07010113          	addi	sp,sp,112
    80002ce0:	00008067          	ret
    80002ce4:	00001097          	auipc	ra,0x1
    80002ce8:	1d8080e7          	jalr	472(ra) # 80003ebc <push_on>
    80002cec:	0984a703          	lw	a4,152(s1)
    80002cf0:	09c4a783          	lw	a5,156(s1)
    80002cf4:	0007879b          	sext.w	a5,a5
    80002cf8:	fef70ce3          	beq	a4,a5,80002cf0 <consoleread+0xfc>
    80002cfc:	00001097          	auipc	ra,0x1
    80002d00:	234080e7          	jalr	564(ra) # 80003f30 <pop_on>
    80002d04:	0984a783          	lw	a5,152(s1)
    80002d08:	07f7f713          	andi	a4,a5,127
    80002d0c:	00e48733          	add	a4,s1,a4
    80002d10:	01874703          	lbu	a4,24(a4)
    80002d14:	0017869b          	addiw	a3,a5,1
    80002d18:	08d4ac23          	sw	a3,152(s1)
    80002d1c:	00070c9b          	sext.w	s9,a4
    80002d20:	f5371ee3          	bne	a4,s3,80002c7c <consoleread+0x88>
    80002d24:	000b851b          	sext.w	a0,s7
    80002d28:	f96bf2e3          	bgeu	s7,s6,80002cac <consoleread+0xb8>
    80002d2c:	08f4ac23          	sw	a5,152(s1)
    80002d30:	f7dff06f          	j	80002cac <consoleread+0xb8>

0000000080002d34 <consputc>:
    80002d34:	10000793          	li	a5,256
    80002d38:	00f50663          	beq	a0,a5,80002d44 <consputc+0x10>
    80002d3c:	00001317          	auipc	t1,0x1
    80002d40:	9f430067          	jr	-1548(t1) # 80003730 <uartputc_sync>
    80002d44:	ff010113          	addi	sp,sp,-16
    80002d48:	00113423          	sd	ra,8(sp)
    80002d4c:	00813023          	sd	s0,0(sp)
    80002d50:	01010413          	addi	s0,sp,16
    80002d54:	00800513          	li	a0,8
    80002d58:	00001097          	auipc	ra,0x1
    80002d5c:	9d8080e7          	jalr	-1576(ra) # 80003730 <uartputc_sync>
    80002d60:	02000513          	li	a0,32
    80002d64:	00001097          	auipc	ra,0x1
    80002d68:	9cc080e7          	jalr	-1588(ra) # 80003730 <uartputc_sync>
    80002d6c:	00013403          	ld	s0,0(sp)
    80002d70:	00813083          	ld	ra,8(sp)
    80002d74:	00800513          	li	a0,8
    80002d78:	01010113          	addi	sp,sp,16
    80002d7c:	00001317          	auipc	t1,0x1
    80002d80:	9b430067          	jr	-1612(t1) # 80003730 <uartputc_sync>

0000000080002d84 <consoleintr>:
    80002d84:	fe010113          	addi	sp,sp,-32
    80002d88:	00813823          	sd	s0,16(sp)
    80002d8c:	00913423          	sd	s1,8(sp)
    80002d90:	01213023          	sd	s2,0(sp)
    80002d94:	00113c23          	sd	ra,24(sp)
    80002d98:	02010413          	addi	s0,sp,32
    80002d9c:	00004917          	auipc	s2,0x4
    80002da0:	c1c90913          	addi	s2,s2,-996 # 800069b8 <cons>
    80002da4:	00050493          	mv	s1,a0
    80002da8:	00090513          	mv	a0,s2
    80002dac:	00001097          	auipc	ra,0x1
    80002db0:	e40080e7          	jalr	-448(ra) # 80003bec <acquire>
    80002db4:	02048c63          	beqz	s1,80002dec <consoleintr+0x68>
    80002db8:	0a092783          	lw	a5,160(s2)
    80002dbc:	09892703          	lw	a4,152(s2)
    80002dc0:	07f00693          	li	a3,127
    80002dc4:	40e7873b          	subw	a4,a5,a4
    80002dc8:	02e6e263          	bltu	a3,a4,80002dec <consoleintr+0x68>
    80002dcc:	00d00713          	li	a4,13
    80002dd0:	04e48063          	beq	s1,a4,80002e10 <consoleintr+0x8c>
    80002dd4:	07f7f713          	andi	a4,a5,127
    80002dd8:	00e90733          	add	a4,s2,a4
    80002ddc:	0017879b          	addiw	a5,a5,1
    80002de0:	0af92023          	sw	a5,160(s2)
    80002de4:	00970c23          	sb	s1,24(a4)
    80002de8:	08f92e23          	sw	a5,156(s2)
    80002dec:	01013403          	ld	s0,16(sp)
    80002df0:	01813083          	ld	ra,24(sp)
    80002df4:	00813483          	ld	s1,8(sp)
    80002df8:	00013903          	ld	s2,0(sp)
    80002dfc:	00004517          	auipc	a0,0x4
    80002e00:	bbc50513          	addi	a0,a0,-1092 # 800069b8 <cons>
    80002e04:	02010113          	addi	sp,sp,32
    80002e08:	00001317          	auipc	t1,0x1
    80002e0c:	eb030067          	jr	-336(t1) # 80003cb8 <release>
    80002e10:	00a00493          	li	s1,10
    80002e14:	fc1ff06f          	j	80002dd4 <consoleintr+0x50>

0000000080002e18 <consoleinit>:
    80002e18:	fe010113          	addi	sp,sp,-32
    80002e1c:	00113c23          	sd	ra,24(sp)
    80002e20:	00813823          	sd	s0,16(sp)
    80002e24:	00913423          	sd	s1,8(sp)
    80002e28:	02010413          	addi	s0,sp,32
    80002e2c:	00004497          	auipc	s1,0x4
    80002e30:	b8c48493          	addi	s1,s1,-1140 # 800069b8 <cons>
    80002e34:	00048513          	mv	a0,s1
    80002e38:	00002597          	auipc	a1,0x2
    80002e3c:	3f858593          	addi	a1,a1,1016 # 80005230 <_ZZ12printIntegermE6digits+0x138>
    80002e40:	00001097          	auipc	ra,0x1
    80002e44:	d88080e7          	jalr	-632(ra) # 80003bc8 <initlock>
    80002e48:	00000097          	auipc	ra,0x0
    80002e4c:	7ac080e7          	jalr	1964(ra) # 800035f4 <uartinit>
    80002e50:	01813083          	ld	ra,24(sp)
    80002e54:	01013403          	ld	s0,16(sp)
    80002e58:	00000797          	auipc	a5,0x0
    80002e5c:	d9c78793          	addi	a5,a5,-612 # 80002bf4 <consoleread>
    80002e60:	0af4bc23          	sd	a5,184(s1)
    80002e64:	00000797          	auipc	a5,0x0
    80002e68:	cec78793          	addi	a5,a5,-788 # 80002b50 <consolewrite>
    80002e6c:	0cf4b023          	sd	a5,192(s1)
    80002e70:	00813483          	ld	s1,8(sp)
    80002e74:	02010113          	addi	sp,sp,32
    80002e78:	00008067          	ret

0000000080002e7c <console_read>:
    80002e7c:	ff010113          	addi	sp,sp,-16
    80002e80:	00813423          	sd	s0,8(sp)
    80002e84:	01010413          	addi	s0,sp,16
    80002e88:	00813403          	ld	s0,8(sp)
    80002e8c:	00004317          	auipc	t1,0x4
    80002e90:	be433303          	ld	t1,-1052(t1) # 80006a70 <devsw+0x10>
    80002e94:	01010113          	addi	sp,sp,16
    80002e98:	00030067          	jr	t1

0000000080002e9c <console_write>:
    80002e9c:	ff010113          	addi	sp,sp,-16
    80002ea0:	00813423          	sd	s0,8(sp)
    80002ea4:	01010413          	addi	s0,sp,16
    80002ea8:	00813403          	ld	s0,8(sp)
    80002eac:	00004317          	auipc	t1,0x4
    80002eb0:	bcc33303          	ld	t1,-1076(t1) # 80006a78 <devsw+0x18>
    80002eb4:	01010113          	addi	sp,sp,16
    80002eb8:	00030067          	jr	t1

0000000080002ebc <panic>:
    80002ebc:	fe010113          	addi	sp,sp,-32
    80002ec0:	00113c23          	sd	ra,24(sp)
    80002ec4:	00813823          	sd	s0,16(sp)
    80002ec8:	00913423          	sd	s1,8(sp)
    80002ecc:	02010413          	addi	s0,sp,32
    80002ed0:	00050493          	mv	s1,a0
    80002ed4:	00002517          	auipc	a0,0x2
    80002ed8:	36450513          	addi	a0,a0,868 # 80005238 <_ZZ12printIntegermE6digits+0x140>
    80002edc:	00004797          	auipc	a5,0x4
    80002ee0:	c207ae23          	sw	zero,-964(a5) # 80006b18 <pr+0x18>
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	034080e7          	jalr	52(ra) # 80002f18 <__printf>
    80002eec:	00048513          	mv	a0,s1
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	028080e7          	jalr	40(ra) # 80002f18 <__printf>
    80002ef8:	00002517          	auipc	a0,0x2
    80002efc:	1f850513          	addi	a0,a0,504 # 800050f0 <CONSOLE_STATUS+0xe0>
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	018080e7          	jalr	24(ra) # 80002f18 <__printf>
    80002f08:	00100793          	li	a5,1
    80002f0c:	00003717          	auipc	a4,0x3
    80002f10:	96f72e23          	sw	a5,-1668(a4) # 80005888 <panicked>
    80002f14:	0000006f          	j	80002f14 <panic+0x58>

0000000080002f18 <__printf>:
    80002f18:	f3010113          	addi	sp,sp,-208
    80002f1c:	08813023          	sd	s0,128(sp)
    80002f20:	07313423          	sd	s3,104(sp)
    80002f24:	09010413          	addi	s0,sp,144
    80002f28:	05813023          	sd	s8,64(sp)
    80002f2c:	08113423          	sd	ra,136(sp)
    80002f30:	06913c23          	sd	s1,120(sp)
    80002f34:	07213823          	sd	s2,112(sp)
    80002f38:	07413023          	sd	s4,96(sp)
    80002f3c:	05513c23          	sd	s5,88(sp)
    80002f40:	05613823          	sd	s6,80(sp)
    80002f44:	05713423          	sd	s7,72(sp)
    80002f48:	03913c23          	sd	s9,56(sp)
    80002f4c:	03a13823          	sd	s10,48(sp)
    80002f50:	03b13423          	sd	s11,40(sp)
    80002f54:	00004317          	auipc	t1,0x4
    80002f58:	bac30313          	addi	t1,t1,-1108 # 80006b00 <pr>
    80002f5c:	01832c03          	lw	s8,24(t1)
    80002f60:	00b43423          	sd	a1,8(s0)
    80002f64:	00c43823          	sd	a2,16(s0)
    80002f68:	00d43c23          	sd	a3,24(s0)
    80002f6c:	02e43023          	sd	a4,32(s0)
    80002f70:	02f43423          	sd	a5,40(s0)
    80002f74:	03043823          	sd	a6,48(s0)
    80002f78:	03143c23          	sd	a7,56(s0)
    80002f7c:	00050993          	mv	s3,a0
    80002f80:	4a0c1663          	bnez	s8,8000342c <__printf+0x514>
    80002f84:	60098c63          	beqz	s3,8000359c <__printf+0x684>
    80002f88:	0009c503          	lbu	a0,0(s3)
    80002f8c:	00840793          	addi	a5,s0,8
    80002f90:	f6f43c23          	sd	a5,-136(s0)
    80002f94:	00000493          	li	s1,0
    80002f98:	22050063          	beqz	a0,800031b8 <__printf+0x2a0>
    80002f9c:	00002a37          	lui	s4,0x2
    80002fa0:	00018ab7          	lui	s5,0x18
    80002fa4:	000f4b37          	lui	s6,0xf4
    80002fa8:	00989bb7          	lui	s7,0x989
    80002fac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002fb0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002fb4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002fb8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002fbc:	00148c9b          	addiw	s9,s1,1
    80002fc0:	02500793          	li	a5,37
    80002fc4:	01998933          	add	s2,s3,s9
    80002fc8:	38f51263          	bne	a0,a5,8000334c <__printf+0x434>
    80002fcc:	00094783          	lbu	a5,0(s2)
    80002fd0:	00078c9b          	sext.w	s9,a5
    80002fd4:	1e078263          	beqz	a5,800031b8 <__printf+0x2a0>
    80002fd8:	0024849b          	addiw	s1,s1,2
    80002fdc:	07000713          	li	a4,112
    80002fe0:	00998933          	add	s2,s3,s1
    80002fe4:	38e78a63          	beq	a5,a4,80003378 <__printf+0x460>
    80002fe8:	20f76863          	bltu	a4,a5,800031f8 <__printf+0x2e0>
    80002fec:	42a78863          	beq	a5,a0,8000341c <__printf+0x504>
    80002ff0:	06400713          	li	a4,100
    80002ff4:	40e79663          	bne	a5,a4,80003400 <__printf+0x4e8>
    80002ff8:	f7843783          	ld	a5,-136(s0)
    80002ffc:	0007a603          	lw	a2,0(a5)
    80003000:	00878793          	addi	a5,a5,8
    80003004:	f6f43c23          	sd	a5,-136(s0)
    80003008:	42064a63          	bltz	a2,8000343c <__printf+0x524>
    8000300c:	00a00713          	li	a4,10
    80003010:	02e677bb          	remuw	a5,a2,a4
    80003014:	00002d97          	auipc	s11,0x2
    80003018:	24cd8d93          	addi	s11,s11,588 # 80005260 <digits>
    8000301c:	00900593          	li	a1,9
    80003020:	0006051b          	sext.w	a0,a2
    80003024:	00000c93          	li	s9,0
    80003028:	02079793          	slli	a5,a5,0x20
    8000302c:	0207d793          	srli	a5,a5,0x20
    80003030:	00fd87b3          	add	a5,s11,a5
    80003034:	0007c783          	lbu	a5,0(a5)
    80003038:	02e656bb          	divuw	a3,a2,a4
    8000303c:	f8f40023          	sb	a5,-128(s0)
    80003040:	14c5d863          	bge	a1,a2,80003190 <__printf+0x278>
    80003044:	06300593          	li	a1,99
    80003048:	00100c93          	li	s9,1
    8000304c:	02e6f7bb          	remuw	a5,a3,a4
    80003050:	02079793          	slli	a5,a5,0x20
    80003054:	0207d793          	srli	a5,a5,0x20
    80003058:	00fd87b3          	add	a5,s11,a5
    8000305c:	0007c783          	lbu	a5,0(a5)
    80003060:	02e6d73b          	divuw	a4,a3,a4
    80003064:	f8f400a3          	sb	a5,-127(s0)
    80003068:	12a5f463          	bgeu	a1,a0,80003190 <__printf+0x278>
    8000306c:	00a00693          	li	a3,10
    80003070:	00900593          	li	a1,9
    80003074:	02d777bb          	remuw	a5,a4,a3
    80003078:	02079793          	slli	a5,a5,0x20
    8000307c:	0207d793          	srli	a5,a5,0x20
    80003080:	00fd87b3          	add	a5,s11,a5
    80003084:	0007c503          	lbu	a0,0(a5)
    80003088:	02d757bb          	divuw	a5,a4,a3
    8000308c:	f8a40123          	sb	a0,-126(s0)
    80003090:	48e5f263          	bgeu	a1,a4,80003514 <__printf+0x5fc>
    80003094:	06300513          	li	a0,99
    80003098:	02d7f5bb          	remuw	a1,a5,a3
    8000309c:	02059593          	slli	a1,a1,0x20
    800030a0:	0205d593          	srli	a1,a1,0x20
    800030a4:	00bd85b3          	add	a1,s11,a1
    800030a8:	0005c583          	lbu	a1,0(a1)
    800030ac:	02d7d7bb          	divuw	a5,a5,a3
    800030b0:	f8b401a3          	sb	a1,-125(s0)
    800030b4:	48e57263          	bgeu	a0,a4,80003538 <__printf+0x620>
    800030b8:	3e700513          	li	a0,999
    800030bc:	02d7f5bb          	remuw	a1,a5,a3
    800030c0:	02059593          	slli	a1,a1,0x20
    800030c4:	0205d593          	srli	a1,a1,0x20
    800030c8:	00bd85b3          	add	a1,s11,a1
    800030cc:	0005c583          	lbu	a1,0(a1)
    800030d0:	02d7d7bb          	divuw	a5,a5,a3
    800030d4:	f8b40223          	sb	a1,-124(s0)
    800030d8:	46e57663          	bgeu	a0,a4,80003544 <__printf+0x62c>
    800030dc:	02d7f5bb          	remuw	a1,a5,a3
    800030e0:	02059593          	slli	a1,a1,0x20
    800030e4:	0205d593          	srli	a1,a1,0x20
    800030e8:	00bd85b3          	add	a1,s11,a1
    800030ec:	0005c583          	lbu	a1,0(a1)
    800030f0:	02d7d7bb          	divuw	a5,a5,a3
    800030f4:	f8b402a3          	sb	a1,-123(s0)
    800030f8:	46ea7863          	bgeu	s4,a4,80003568 <__printf+0x650>
    800030fc:	02d7f5bb          	remuw	a1,a5,a3
    80003100:	02059593          	slli	a1,a1,0x20
    80003104:	0205d593          	srli	a1,a1,0x20
    80003108:	00bd85b3          	add	a1,s11,a1
    8000310c:	0005c583          	lbu	a1,0(a1)
    80003110:	02d7d7bb          	divuw	a5,a5,a3
    80003114:	f8b40323          	sb	a1,-122(s0)
    80003118:	3eeaf863          	bgeu	s5,a4,80003508 <__printf+0x5f0>
    8000311c:	02d7f5bb          	remuw	a1,a5,a3
    80003120:	02059593          	slli	a1,a1,0x20
    80003124:	0205d593          	srli	a1,a1,0x20
    80003128:	00bd85b3          	add	a1,s11,a1
    8000312c:	0005c583          	lbu	a1,0(a1)
    80003130:	02d7d7bb          	divuw	a5,a5,a3
    80003134:	f8b403a3          	sb	a1,-121(s0)
    80003138:	42eb7e63          	bgeu	s6,a4,80003574 <__printf+0x65c>
    8000313c:	02d7f5bb          	remuw	a1,a5,a3
    80003140:	02059593          	slli	a1,a1,0x20
    80003144:	0205d593          	srli	a1,a1,0x20
    80003148:	00bd85b3          	add	a1,s11,a1
    8000314c:	0005c583          	lbu	a1,0(a1)
    80003150:	02d7d7bb          	divuw	a5,a5,a3
    80003154:	f8b40423          	sb	a1,-120(s0)
    80003158:	42ebfc63          	bgeu	s7,a4,80003590 <__printf+0x678>
    8000315c:	02079793          	slli	a5,a5,0x20
    80003160:	0207d793          	srli	a5,a5,0x20
    80003164:	00fd8db3          	add	s11,s11,a5
    80003168:	000dc703          	lbu	a4,0(s11)
    8000316c:	00a00793          	li	a5,10
    80003170:	00900c93          	li	s9,9
    80003174:	f8e404a3          	sb	a4,-119(s0)
    80003178:	00065c63          	bgez	a2,80003190 <__printf+0x278>
    8000317c:	f9040713          	addi	a4,s0,-112
    80003180:	00f70733          	add	a4,a4,a5
    80003184:	02d00693          	li	a3,45
    80003188:	fed70823          	sb	a3,-16(a4)
    8000318c:	00078c93          	mv	s9,a5
    80003190:	f8040793          	addi	a5,s0,-128
    80003194:	01978cb3          	add	s9,a5,s9
    80003198:	f7f40d13          	addi	s10,s0,-129
    8000319c:	000cc503          	lbu	a0,0(s9)
    800031a0:	fffc8c93          	addi	s9,s9,-1
    800031a4:	00000097          	auipc	ra,0x0
    800031a8:	b90080e7          	jalr	-1136(ra) # 80002d34 <consputc>
    800031ac:	ffac98e3          	bne	s9,s10,8000319c <__printf+0x284>
    800031b0:	00094503          	lbu	a0,0(s2)
    800031b4:	e00514e3          	bnez	a0,80002fbc <__printf+0xa4>
    800031b8:	1a0c1663          	bnez	s8,80003364 <__printf+0x44c>
    800031bc:	08813083          	ld	ra,136(sp)
    800031c0:	08013403          	ld	s0,128(sp)
    800031c4:	07813483          	ld	s1,120(sp)
    800031c8:	07013903          	ld	s2,112(sp)
    800031cc:	06813983          	ld	s3,104(sp)
    800031d0:	06013a03          	ld	s4,96(sp)
    800031d4:	05813a83          	ld	s5,88(sp)
    800031d8:	05013b03          	ld	s6,80(sp)
    800031dc:	04813b83          	ld	s7,72(sp)
    800031e0:	04013c03          	ld	s8,64(sp)
    800031e4:	03813c83          	ld	s9,56(sp)
    800031e8:	03013d03          	ld	s10,48(sp)
    800031ec:	02813d83          	ld	s11,40(sp)
    800031f0:	0d010113          	addi	sp,sp,208
    800031f4:	00008067          	ret
    800031f8:	07300713          	li	a4,115
    800031fc:	1ce78a63          	beq	a5,a4,800033d0 <__printf+0x4b8>
    80003200:	07800713          	li	a4,120
    80003204:	1ee79e63          	bne	a5,a4,80003400 <__printf+0x4e8>
    80003208:	f7843783          	ld	a5,-136(s0)
    8000320c:	0007a703          	lw	a4,0(a5)
    80003210:	00878793          	addi	a5,a5,8
    80003214:	f6f43c23          	sd	a5,-136(s0)
    80003218:	28074263          	bltz	a4,8000349c <__printf+0x584>
    8000321c:	00002d97          	auipc	s11,0x2
    80003220:	044d8d93          	addi	s11,s11,68 # 80005260 <digits>
    80003224:	00f77793          	andi	a5,a4,15
    80003228:	00fd87b3          	add	a5,s11,a5
    8000322c:	0007c683          	lbu	a3,0(a5)
    80003230:	00f00613          	li	a2,15
    80003234:	0007079b          	sext.w	a5,a4
    80003238:	f8d40023          	sb	a3,-128(s0)
    8000323c:	0047559b          	srliw	a1,a4,0x4
    80003240:	0047569b          	srliw	a3,a4,0x4
    80003244:	00000c93          	li	s9,0
    80003248:	0ee65063          	bge	a2,a4,80003328 <__printf+0x410>
    8000324c:	00f6f693          	andi	a3,a3,15
    80003250:	00dd86b3          	add	a3,s11,a3
    80003254:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80003258:	0087d79b          	srliw	a5,a5,0x8
    8000325c:	00100c93          	li	s9,1
    80003260:	f8d400a3          	sb	a3,-127(s0)
    80003264:	0cb67263          	bgeu	a2,a1,80003328 <__printf+0x410>
    80003268:	00f7f693          	andi	a3,a5,15
    8000326c:	00dd86b3          	add	a3,s11,a3
    80003270:	0006c583          	lbu	a1,0(a3)
    80003274:	00f00613          	li	a2,15
    80003278:	0047d69b          	srliw	a3,a5,0x4
    8000327c:	f8b40123          	sb	a1,-126(s0)
    80003280:	0047d593          	srli	a1,a5,0x4
    80003284:	28f67e63          	bgeu	a2,a5,80003520 <__printf+0x608>
    80003288:	00f6f693          	andi	a3,a3,15
    8000328c:	00dd86b3          	add	a3,s11,a3
    80003290:	0006c503          	lbu	a0,0(a3)
    80003294:	0087d813          	srli	a6,a5,0x8
    80003298:	0087d69b          	srliw	a3,a5,0x8
    8000329c:	f8a401a3          	sb	a0,-125(s0)
    800032a0:	28b67663          	bgeu	a2,a1,8000352c <__printf+0x614>
    800032a4:	00f6f693          	andi	a3,a3,15
    800032a8:	00dd86b3          	add	a3,s11,a3
    800032ac:	0006c583          	lbu	a1,0(a3)
    800032b0:	00c7d513          	srli	a0,a5,0xc
    800032b4:	00c7d69b          	srliw	a3,a5,0xc
    800032b8:	f8b40223          	sb	a1,-124(s0)
    800032bc:	29067a63          	bgeu	a2,a6,80003550 <__printf+0x638>
    800032c0:	00f6f693          	andi	a3,a3,15
    800032c4:	00dd86b3          	add	a3,s11,a3
    800032c8:	0006c583          	lbu	a1,0(a3)
    800032cc:	0107d813          	srli	a6,a5,0x10
    800032d0:	0107d69b          	srliw	a3,a5,0x10
    800032d4:	f8b402a3          	sb	a1,-123(s0)
    800032d8:	28a67263          	bgeu	a2,a0,8000355c <__printf+0x644>
    800032dc:	00f6f693          	andi	a3,a3,15
    800032e0:	00dd86b3          	add	a3,s11,a3
    800032e4:	0006c683          	lbu	a3,0(a3)
    800032e8:	0147d79b          	srliw	a5,a5,0x14
    800032ec:	f8d40323          	sb	a3,-122(s0)
    800032f0:	21067663          	bgeu	a2,a6,800034fc <__printf+0x5e4>
    800032f4:	02079793          	slli	a5,a5,0x20
    800032f8:	0207d793          	srli	a5,a5,0x20
    800032fc:	00fd8db3          	add	s11,s11,a5
    80003300:	000dc683          	lbu	a3,0(s11)
    80003304:	00800793          	li	a5,8
    80003308:	00700c93          	li	s9,7
    8000330c:	f8d403a3          	sb	a3,-121(s0)
    80003310:	00075c63          	bgez	a4,80003328 <__printf+0x410>
    80003314:	f9040713          	addi	a4,s0,-112
    80003318:	00f70733          	add	a4,a4,a5
    8000331c:	02d00693          	li	a3,45
    80003320:	fed70823          	sb	a3,-16(a4)
    80003324:	00078c93          	mv	s9,a5
    80003328:	f8040793          	addi	a5,s0,-128
    8000332c:	01978cb3          	add	s9,a5,s9
    80003330:	f7f40d13          	addi	s10,s0,-129
    80003334:	000cc503          	lbu	a0,0(s9)
    80003338:	fffc8c93          	addi	s9,s9,-1
    8000333c:	00000097          	auipc	ra,0x0
    80003340:	9f8080e7          	jalr	-1544(ra) # 80002d34 <consputc>
    80003344:	ff9d18e3          	bne	s10,s9,80003334 <__printf+0x41c>
    80003348:	0100006f          	j	80003358 <__printf+0x440>
    8000334c:	00000097          	auipc	ra,0x0
    80003350:	9e8080e7          	jalr	-1560(ra) # 80002d34 <consputc>
    80003354:	000c8493          	mv	s1,s9
    80003358:	00094503          	lbu	a0,0(s2)
    8000335c:	c60510e3          	bnez	a0,80002fbc <__printf+0xa4>
    80003360:	e40c0ee3          	beqz	s8,800031bc <__printf+0x2a4>
    80003364:	00003517          	auipc	a0,0x3
    80003368:	79c50513          	addi	a0,a0,1948 # 80006b00 <pr>
    8000336c:	00001097          	auipc	ra,0x1
    80003370:	94c080e7          	jalr	-1716(ra) # 80003cb8 <release>
    80003374:	e49ff06f          	j	800031bc <__printf+0x2a4>
    80003378:	f7843783          	ld	a5,-136(s0)
    8000337c:	03000513          	li	a0,48
    80003380:	01000d13          	li	s10,16
    80003384:	00878713          	addi	a4,a5,8
    80003388:	0007bc83          	ld	s9,0(a5)
    8000338c:	f6e43c23          	sd	a4,-136(s0)
    80003390:	00000097          	auipc	ra,0x0
    80003394:	9a4080e7          	jalr	-1628(ra) # 80002d34 <consputc>
    80003398:	07800513          	li	a0,120
    8000339c:	00000097          	auipc	ra,0x0
    800033a0:	998080e7          	jalr	-1640(ra) # 80002d34 <consputc>
    800033a4:	00002d97          	auipc	s11,0x2
    800033a8:	ebcd8d93          	addi	s11,s11,-324 # 80005260 <digits>
    800033ac:	03ccd793          	srli	a5,s9,0x3c
    800033b0:	00fd87b3          	add	a5,s11,a5
    800033b4:	0007c503          	lbu	a0,0(a5)
    800033b8:	fffd0d1b          	addiw	s10,s10,-1
    800033bc:	004c9c93          	slli	s9,s9,0x4
    800033c0:	00000097          	auipc	ra,0x0
    800033c4:	974080e7          	jalr	-1676(ra) # 80002d34 <consputc>
    800033c8:	fe0d12e3          	bnez	s10,800033ac <__printf+0x494>
    800033cc:	f8dff06f          	j	80003358 <__printf+0x440>
    800033d0:	f7843783          	ld	a5,-136(s0)
    800033d4:	0007bc83          	ld	s9,0(a5)
    800033d8:	00878793          	addi	a5,a5,8
    800033dc:	f6f43c23          	sd	a5,-136(s0)
    800033e0:	000c9a63          	bnez	s9,800033f4 <__printf+0x4dc>
    800033e4:	1080006f          	j	800034ec <__printf+0x5d4>
    800033e8:	001c8c93          	addi	s9,s9,1
    800033ec:	00000097          	auipc	ra,0x0
    800033f0:	948080e7          	jalr	-1720(ra) # 80002d34 <consputc>
    800033f4:	000cc503          	lbu	a0,0(s9)
    800033f8:	fe0518e3          	bnez	a0,800033e8 <__printf+0x4d0>
    800033fc:	f5dff06f          	j	80003358 <__printf+0x440>
    80003400:	02500513          	li	a0,37
    80003404:	00000097          	auipc	ra,0x0
    80003408:	930080e7          	jalr	-1744(ra) # 80002d34 <consputc>
    8000340c:	000c8513          	mv	a0,s9
    80003410:	00000097          	auipc	ra,0x0
    80003414:	924080e7          	jalr	-1756(ra) # 80002d34 <consputc>
    80003418:	f41ff06f          	j	80003358 <__printf+0x440>
    8000341c:	02500513          	li	a0,37
    80003420:	00000097          	auipc	ra,0x0
    80003424:	914080e7          	jalr	-1772(ra) # 80002d34 <consputc>
    80003428:	f31ff06f          	j	80003358 <__printf+0x440>
    8000342c:	00030513          	mv	a0,t1
    80003430:	00000097          	auipc	ra,0x0
    80003434:	7bc080e7          	jalr	1980(ra) # 80003bec <acquire>
    80003438:	b4dff06f          	j	80002f84 <__printf+0x6c>
    8000343c:	40c0053b          	negw	a0,a2
    80003440:	00a00713          	li	a4,10
    80003444:	02e576bb          	remuw	a3,a0,a4
    80003448:	00002d97          	auipc	s11,0x2
    8000344c:	e18d8d93          	addi	s11,s11,-488 # 80005260 <digits>
    80003450:	ff700593          	li	a1,-9
    80003454:	02069693          	slli	a3,a3,0x20
    80003458:	0206d693          	srli	a3,a3,0x20
    8000345c:	00dd86b3          	add	a3,s11,a3
    80003460:	0006c683          	lbu	a3,0(a3)
    80003464:	02e557bb          	divuw	a5,a0,a4
    80003468:	f8d40023          	sb	a3,-128(s0)
    8000346c:	10b65e63          	bge	a2,a1,80003588 <__printf+0x670>
    80003470:	06300593          	li	a1,99
    80003474:	02e7f6bb          	remuw	a3,a5,a4
    80003478:	02069693          	slli	a3,a3,0x20
    8000347c:	0206d693          	srli	a3,a3,0x20
    80003480:	00dd86b3          	add	a3,s11,a3
    80003484:	0006c683          	lbu	a3,0(a3)
    80003488:	02e7d73b          	divuw	a4,a5,a4
    8000348c:	00200793          	li	a5,2
    80003490:	f8d400a3          	sb	a3,-127(s0)
    80003494:	bca5ece3          	bltu	a1,a0,8000306c <__printf+0x154>
    80003498:	ce5ff06f          	j	8000317c <__printf+0x264>
    8000349c:	40e007bb          	negw	a5,a4
    800034a0:	00002d97          	auipc	s11,0x2
    800034a4:	dc0d8d93          	addi	s11,s11,-576 # 80005260 <digits>
    800034a8:	00f7f693          	andi	a3,a5,15
    800034ac:	00dd86b3          	add	a3,s11,a3
    800034b0:	0006c583          	lbu	a1,0(a3)
    800034b4:	ff100613          	li	a2,-15
    800034b8:	0047d69b          	srliw	a3,a5,0x4
    800034bc:	f8b40023          	sb	a1,-128(s0)
    800034c0:	0047d59b          	srliw	a1,a5,0x4
    800034c4:	0ac75e63          	bge	a4,a2,80003580 <__printf+0x668>
    800034c8:	00f6f693          	andi	a3,a3,15
    800034cc:	00dd86b3          	add	a3,s11,a3
    800034d0:	0006c603          	lbu	a2,0(a3)
    800034d4:	00f00693          	li	a3,15
    800034d8:	0087d79b          	srliw	a5,a5,0x8
    800034dc:	f8c400a3          	sb	a2,-127(s0)
    800034e0:	d8b6e4e3          	bltu	a3,a1,80003268 <__printf+0x350>
    800034e4:	00200793          	li	a5,2
    800034e8:	e2dff06f          	j	80003314 <__printf+0x3fc>
    800034ec:	00002c97          	auipc	s9,0x2
    800034f0:	d54c8c93          	addi	s9,s9,-684 # 80005240 <_ZZ12printIntegermE6digits+0x148>
    800034f4:	02800513          	li	a0,40
    800034f8:	ef1ff06f          	j	800033e8 <__printf+0x4d0>
    800034fc:	00700793          	li	a5,7
    80003500:	00600c93          	li	s9,6
    80003504:	e0dff06f          	j	80003310 <__printf+0x3f8>
    80003508:	00700793          	li	a5,7
    8000350c:	00600c93          	li	s9,6
    80003510:	c69ff06f          	j	80003178 <__printf+0x260>
    80003514:	00300793          	li	a5,3
    80003518:	00200c93          	li	s9,2
    8000351c:	c5dff06f          	j	80003178 <__printf+0x260>
    80003520:	00300793          	li	a5,3
    80003524:	00200c93          	li	s9,2
    80003528:	de9ff06f          	j	80003310 <__printf+0x3f8>
    8000352c:	00400793          	li	a5,4
    80003530:	00300c93          	li	s9,3
    80003534:	dddff06f          	j	80003310 <__printf+0x3f8>
    80003538:	00400793          	li	a5,4
    8000353c:	00300c93          	li	s9,3
    80003540:	c39ff06f          	j	80003178 <__printf+0x260>
    80003544:	00500793          	li	a5,5
    80003548:	00400c93          	li	s9,4
    8000354c:	c2dff06f          	j	80003178 <__printf+0x260>
    80003550:	00500793          	li	a5,5
    80003554:	00400c93          	li	s9,4
    80003558:	db9ff06f          	j	80003310 <__printf+0x3f8>
    8000355c:	00600793          	li	a5,6
    80003560:	00500c93          	li	s9,5
    80003564:	dadff06f          	j	80003310 <__printf+0x3f8>
    80003568:	00600793          	li	a5,6
    8000356c:	00500c93          	li	s9,5
    80003570:	c09ff06f          	j	80003178 <__printf+0x260>
    80003574:	00800793          	li	a5,8
    80003578:	00700c93          	li	s9,7
    8000357c:	bfdff06f          	j	80003178 <__printf+0x260>
    80003580:	00100793          	li	a5,1
    80003584:	d91ff06f          	j	80003314 <__printf+0x3fc>
    80003588:	00100793          	li	a5,1
    8000358c:	bf1ff06f          	j	8000317c <__printf+0x264>
    80003590:	00900793          	li	a5,9
    80003594:	00800c93          	li	s9,8
    80003598:	be1ff06f          	j	80003178 <__printf+0x260>
    8000359c:	00002517          	auipc	a0,0x2
    800035a0:	cac50513          	addi	a0,a0,-852 # 80005248 <_ZZ12printIntegermE6digits+0x150>
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	918080e7          	jalr	-1768(ra) # 80002ebc <panic>

00000000800035ac <printfinit>:
    800035ac:	fe010113          	addi	sp,sp,-32
    800035b0:	00813823          	sd	s0,16(sp)
    800035b4:	00913423          	sd	s1,8(sp)
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	02010413          	addi	s0,sp,32
    800035c0:	00003497          	auipc	s1,0x3
    800035c4:	54048493          	addi	s1,s1,1344 # 80006b00 <pr>
    800035c8:	00048513          	mv	a0,s1
    800035cc:	00002597          	auipc	a1,0x2
    800035d0:	c8c58593          	addi	a1,a1,-884 # 80005258 <_ZZ12printIntegermE6digits+0x160>
    800035d4:	00000097          	auipc	ra,0x0
    800035d8:	5f4080e7          	jalr	1524(ra) # 80003bc8 <initlock>
    800035dc:	01813083          	ld	ra,24(sp)
    800035e0:	01013403          	ld	s0,16(sp)
    800035e4:	0004ac23          	sw	zero,24(s1)
    800035e8:	00813483          	ld	s1,8(sp)
    800035ec:	02010113          	addi	sp,sp,32
    800035f0:	00008067          	ret

00000000800035f4 <uartinit>:
    800035f4:	ff010113          	addi	sp,sp,-16
    800035f8:	00813423          	sd	s0,8(sp)
    800035fc:	01010413          	addi	s0,sp,16
    80003600:	100007b7          	lui	a5,0x10000
    80003604:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003608:	f8000713          	li	a4,-128
    8000360c:	00e781a3          	sb	a4,3(a5)
    80003610:	00300713          	li	a4,3
    80003614:	00e78023          	sb	a4,0(a5)
    80003618:	000780a3          	sb	zero,1(a5)
    8000361c:	00e781a3          	sb	a4,3(a5)
    80003620:	00700693          	li	a3,7
    80003624:	00d78123          	sb	a3,2(a5)
    80003628:	00e780a3          	sb	a4,1(a5)
    8000362c:	00813403          	ld	s0,8(sp)
    80003630:	01010113          	addi	sp,sp,16
    80003634:	00008067          	ret

0000000080003638 <uartputc>:
    80003638:	00002797          	auipc	a5,0x2
    8000363c:	2507a783          	lw	a5,592(a5) # 80005888 <panicked>
    80003640:	00078463          	beqz	a5,80003648 <uartputc+0x10>
    80003644:	0000006f          	j	80003644 <uartputc+0xc>
    80003648:	fd010113          	addi	sp,sp,-48
    8000364c:	02813023          	sd	s0,32(sp)
    80003650:	00913c23          	sd	s1,24(sp)
    80003654:	01213823          	sd	s2,16(sp)
    80003658:	01313423          	sd	s3,8(sp)
    8000365c:	02113423          	sd	ra,40(sp)
    80003660:	03010413          	addi	s0,sp,48
    80003664:	00002917          	auipc	s2,0x2
    80003668:	22c90913          	addi	s2,s2,556 # 80005890 <uart_tx_r>
    8000366c:	00093783          	ld	a5,0(s2)
    80003670:	00002497          	auipc	s1,0x2
    80003674:	22848493          	addi	s1,s1,552 # 80005898 <uart_tx_w>
    80003678:	0004b703          	ld	a4,0(s1)
    8000367c:	02078693          	addi	a3,a5,32
    80003680:	00050993          	mv	s3,a0
    80003684:	02e69c63          	bne	a3,a4,800036bc <uartputc+0x84>
    80003688:	00001097          	auipc	ra,0x1
    8000368c:	834080e7          	jalr	-1996(ra) # 80003ebc <push_on>
    80003690:	00093783          	ld	a5,0(s2)
    80003694:	0004b703          	ld	a4,0(s1)
    80003698:	02078793          	addi	a5,a5,32
    8000369c:	00e79463          	bne	a5,a4,800036a4 <uartputc+0x6c>
    800036a0:	0000006f          	j	800036a0 <uartputc+0x68>
    800036a4:	00001097          	auipc	ra,0x1
    800036a8:	88c080e7          	jalr	-1908(ra) # 80003f30 <pop_on>
    800036ac:	00093783          	ld	a5,0(s2)
    800036b0:	0004b703          	ld	a4,0(s1)
    800036b4:	02078693          	addi	a3,a5,32
    800036b8:	fce688e3          	beq	a3,a4,80003688 <uartputc+0x50>
    800036bc:	01f77693          	andi	a3,a4,31
    800036c0:	00003597          	auipc	a1,0x3
    800036c4:	46058593          	addi	a1,a1,1120 # 80006b20 <uart_tx_buf>
    800036c8:	00d586b3          	add	a3,a1,a3
    800036cc:	00170713          	addi	a4,a4,1
    800036d0:	01368023          	sb	s3,0(a3)
    800036d4:	00e4b023          	sd	a4,0(s1)
    800036d8:	10000637          	lui	a2,0x10000
    800036dc:	02f71063          	bne	a4,a5,800036fc <uartputc+0xc4>
    800036e0:	0340006f          	j	80003714 <uartputc+0xdc>
    800036e4:	00074703          	lbu	a4,0(a4)
    800036e8:	00f93023          	sd	a5,0(s2)
    800036ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800036f0:	00093783          	ld	a5,0(s2)
    800036f4:	0004b703          	ld	a4,0(s1)
    800036f8:	00f70e63          	beq	a4,a5,80003714 <uartputc+0xdc>
    800036fc:	00564683          	lbu	a3,5(a2)
    80003700:	01f7f713          	andi	a4,a5,31
    80003704:	00e58733          	add	a4,a1,a4
    80003708:	0206f693          	andi	a3,a3,32
    8000370c:	00178793          	addi	a5,a5,1
    80003710:	fc069ae3          	bnez	a3,800036e4 <uartputc+0xac>
    80003714:	02813083          	ld	ra,40(sp)
    80003718:	02013403          	ld	s0,32(sp)
    8000371c:	01813483          	ld	s1,24(sp)
    80003720:	01013903          	ld	s2,16(sp)
    80003724:	00813983          	ld	s3,8(sp)
    80003728:	03010113          	addi	sp,sp,48
    8000372c:	00008067          	ret

0000000080003730 <uartputc_sync>:
    80003730:	ff010113          	addi	sp,sp,-16
    80003734:	00813423          	sd	s0,8(sp)
    80003738:	01010413          	addi	s0,sp,16
    8000373c:	00002717          	auipc	a4,0x2
    80003740:	14c72703          	lw	a4,332(a4) # 80005888 <panicked>
    80003744:	02071663          	bnez	a4,80003770 <uartputc_sync+0x40>
    80003748:	00050793          	mv	a5,a0
    8000374c:	100006b7          	lui	a3,0x10000
    80003750:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003754:	02077713          	andi	a4,a4,32
    80003758:	fe070ce3          	beqz	a4,80003750 <uartputc_sync+0x20>
    8000375c:	0ff7f793          	andi	a5,a5,255
    80003760:	00f68023          	sb	a5,0(a3)
    80003764:	00813403          	ld	s0,8(sp)
    80003768:	01010113          	addi	sp,sp,16
    8000376c:	00008067          	ret
    80003770:	0000006f          	j	80003770 <uartputc_sync+0x40>

0000000080003774 <uartstart>:
    80003774:	ff010113          	addi	sp,sp,-16
    80003778:	00813423          	sd	s0,8(sp)
    8000377c:	01010413          	addi	s0,sp,16
    80003780:	00002617          	auipc	a2,0x2
    80003784:	11060613          	addi	a2,a2,272 # 80005890 <uart_tx_r>
    80003788:	00002517          	auipc	a0,0x2
    8000378c:	11050513          	addi	a0,a0,272 # 80005898 <uart_tx_w>
    80003790:	00063783          	ld	a5,0(a2)
    80003794:	00053703          	ld	a4,0(a0)
    80003798:	04f70263          	beq	a4,a5,800037dc <uartstart+0x68>
    8000379c:	100005b7          	lui	a1,0x10000
    800037a0:	00003817          	auipc	a6,0x3
    800037a4:	38080813          	addi	a6,a6,896 # 80006b20 <uart_tx_buf>
    800037a8:	01c0006f          	j	800037c4 <uartstart+0x50>
    800037ac:	0006c703          	lbu	a4,0(a3)
    800037b0:	00f63023          	sd	a5,0(a2)
    800037b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800037b8:	00063783          	ld	a5,0(a2)
    800037bc:	00053703          	ld	a4,0(a0)
    800037c0:	00f70e63          	beq	a4,a5,800037dc <uartstart+0x68>
    800037c4:	01f7f713          	andi	a4,a5,31
    800037c8:	00e806b3          	add	a3,a6,a4
    800037cc:	0055c703          	lbu	a4,5(a1)
    800037d0:	00178793          	addi	a5,a5,1
    800037d4:	02077713          	andi	a4,a4,32
    800037d8:	fc071ae3          	bnez	a4,800037ac <uartstart+0x38>
    800037dc:	00813403          	ld	s0,8(sp)
    800037e0:	01010113          	addi	sp,sp,16
    800037e4:	00008067          	ret

00000000800037e8 <uartgetc>:
    800037e8:	ff010113          	addi	sp,sp,-16
    800037ec:	00813423          	sd	s0,8(sp)
    800037f0:	01010413          	addi	s0,sp,16
    800037f4:	10000737          	lui	a4,0x10000
    800037f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800037fc:	0017f793          	andi	a5,a5,1
    80003800:	00078c63          	beqz	a5,80003818 <uartgetc+0x30>
    80003804:	00074503          	lbu	a0,0(a4)
    80003808:	0ff57513          	andi	a0,a0,255
    8000380c:	00813403          	ld	s0,8(sp)
    80003810:	01010113          	addi	sp,sp,16
    80003814:	00008067          	ret
    80003818:	fff00513          	li	a0,-1
    8000381c:	ff1ff06f          	j	8000380c <uartgetc+0x24>

0000000080003820 <uartintr>:
    80003820:	100007b7          	lui	a5,0x10000
    80003824:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003828:	0017f793          	andi	a5,a5,1
    8000382c:	0a078463          	beqz	a5,800038d4 <uartintr+0xb4>
    80003830:	fe010113          	addi	sp,sp,-32
    80003834:	00813823          	sd	s0,16(sp)
    80003838:	00913423          	sd	s1,8(sp)
    8000383c:	00113c23          	sd	ra,24(sp)
    80003840:	02010413          	addi	s0,sp,32
    80003844:	100004b7          	lui	s1,0x10000
    80003848:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000384c:	0ff57513          	andi	a0,a0,255
    80003850:	fffff097          	auipc	ra,0xfffff
    80003854:	534080e7          	jalr	1332(ra) # 80002d84 <consoleintr>
    80003858:	0054c783          	lbu	a5,5(s1)
    8000385c:	0017f793          	andi	a5,a5,1
    80003860:	fe0794e3          	bnez	a5,80003848 <uartintr+0x28>
    80003864:	00002617          	auipc	a2,0x2
    80003868:	02c60613          	addi	a2,a2,44 # 80005890 <uart_tx_r>
    8000386c:	00002517          	auipc	a0,0x2
    80003870:	02c50513          	addi	a0,a0,44 # 80005898 <uart_tx_w>
    80003874:	00063783          	ld	a5,0(a2)
    80003878:	00053703          	ld	a4,0(a0)
    8000387c:	04f70263          	beq	a4,a5,800038c0 <uartintr+0xa0>
    80003880:	100005b7          	lui	a1,0x10000
    80003884:	00003817          	auipc	a6,0x3
    80003888:	29c80813          	addi	a6,a6,668 # 80006b20 <uart_tx_buf>
    8000388c:	01c0006f          	j	800038a8 <uartintr+0x88>
    80003890:	0006c703          	lbu	a4,0(a3)
    80003894:	00f63023          	sd	a5,0(a2)
    80003898:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000389c:	00063783          	ld	a5,0(a2)
    800038a0:	00053703          	ld	a4,0(a0)
    800038a4:	00f70e63          	beq	a4,a5,800038c0 <uartintr+0xa0>
    800038a8:	01f7f713          	andi	a4,a5,31
    800038ac:	00e806b3          	add	a3,a6,a4
    800038b0:	0055c703          	lbu	a4,5(a1)
    800038b4:	00178793          	addi	a5,a5,1
    800038b8:	02077713          	andi	a4,a4,32
    800038bc:	fc071ae3          	bnez	a4,80003890 <uartintr+0x70>
    800038c0:	01813083          	ld	ra,24(sp)
    800038c4:	01013403          	ld	s0,16(sp)
    800038c8:	00813483          	ld	s1,8(sp)
    800038cc:	02010113          	addi	sp,sp,32
    800038d0:	00008067          	ret
    800038d4:	00002617          	auipc	a2,0x2
    800038d8:	fbc60613          	addi	a2,a2,-68 # 80005890 <uart_tx_r>
    800038dc:	00002517          	auipc	a0,0x2
    800038e0:	fbc50513          	addi	a0,a0,-68 # 80005898 <uart_tx_w>
    800038e4:	00063783          	ld	a5,0(a2)
    800038e8:	00053703          	ld	a4,0(a0)
    800038ec:	04f70263          	beq	a4,a5,80003930 <uartintr+0x110>
    800038f0:	100005b7          	lui	a1,0x10000
    800038f4:	00003817          	auipc	a6,0x3
    800038f8:	22c80813          	addi	a6,a6,556 # 80006b20 <uart_tx_buf>
    800038fc:	01c0006f          	j	80003918 <uartintr+0xf8>
    80003900:	0006c703          	lbu	a4,0(a3)
    80003904:	00f63023          	sd	a5,0(a2)
    80003908:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000390c:	00063783          	ld	a5,0(a2)
    80003910:	00053703          	ld	a4,0(a0)
    80003914:	02f70063          	beq	a4,a5,80003934 <uartintr+0x114>
    80003918:	01f7f713          	andi	a4,a5,31
    8000391c:	00e806b3          	add	a3,a6,a4
    80003920:	0055c703          	lbu	a4,5(a1)
    80003924:	00178793          	addi	a5,a5,1
    80003928:	02077713          	andi	a4,a4,32
    8000392c:	fc071ae3          	bnez	a4,80003900 <uartintr+0xe0>
    80003930:	00008067          	ret
    80003934:	00008067          	ret

0000000080003938 <kinit>:
    80003938:	fc010113          	addi	sp,sp,-64
    8000393c:	02913423          	sd	s1,40(sp)
    80003940:	fffff7b7          	lui	a5,0xfffff
    80003944:	00004497          	auipc	s1,0x4
    80003948:	1fb48493          	addi	s1,s1,507 # 80007b3f <end+0xfff>
    8000394c:	02813823          	sd	s0,48(sp)
    80003950:	01313c23          	sd	s3,24(sp)
    80003954:	00f4f4b3          	and	s1,s1,a5
    80003958:	02113c23          	sd	ra,56(sp)
    8000395c:	03213023          	sd	s2,32(sp)
    80003960:	01413823          	sd	s4,16(sp)
    80003964:	01513423          	sd	s5,8(sp)
    80003968:	04010413          	addi	s0,sp,64
    8000396c:	000017b7          	lui	a5,0x1
    80003970:	01100993          	li	s3,17
    80003974:	00f487b3          	add	a5,s1,a5
    80003978:	01b99993          	slli	s3,s3,0x1b
    8000397c:	06f9e063          	bltu	s3,a5,800039dc <kinit+0xa4>
    80003980:	00003a97          	auipc	s5,0x3
    80003984:	1c0a8a93          	addi	s5,s5,448 # 80006b40 <end>
    80003988:	0754ec63          	bltu	s1,s5,80003a00 <kinit+0xc8>
    8000398c:	0734fa63          	bgeu	s1,s3,80003a00 <kinit+0xc8>
    80003990:	00088a37          	lui	s4,0x88
    80003994:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003998:	00002917          	auipc	s2,0x2
    8000399c:	f0890913          	addi	s2,s2,-248 # 800058a0 <kmem>
    800039a0:	00ca1a13          	slli	s4,s4,0xc
    800039a4:	0140006f          	j	800039b8 <kinit+0x80>
    800039a8:	000017b7          	lui	a5,0x1
    800039ac:	00f484b3          	add	s1,s1,a5
    800039b0:	0554e863          	bltu	s1,s5,80003a00 <kinit+0xc8>
    800039b4:	0534f663          	bgeu	s1,s3,80003a00 <kinit+0xc8>
    800039b8:	00001637          	lui	a2,0x1
    800039bc:	00100593          	li	a1,1
    800039c0:	00048513          	mv	a0,s1
    800039c4:	00000097          	auipc	ra,0x0
    800039c8:	5e4080e7          	jalr	1508(ra) # 80003fa8 <__memset>
    800039cc:	00093783          	ld	a5,0(s2)
    800039d0:	00f4b023          	sd	a5,0(s1)
    800039d4:	00993023          	sd	s1,0(s2)
    800039d8:	fd4498e3          	bne	s1,s4,800039a8 <kinit+0x70>
    800039dc:	03813083          	ld	ra,56(sp)
    800039e0:	03013403          	ld	s0,48(sp)
    800039e4:	02813483          	ld	s1,40(sp)
    800039e8:	02013903          	ld	s2,32(sp)
    800039ec:	01813983          	ld	s3,24(sp)
    800039f0:	01013a03          	ld	s4,16(sp)
    800039f4:	00813a83          	ld	s5,8(sp)
    800039f8:	04010113          	addi	sp,sp,64
    800039fc:	00008067          	ret
    80003a00:	00002517          	auipc	a0,0x2
    80003a04:	87850513          	addi	a0,a0,-1928 # 80005278 <digits+0x18>
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	4b4080e7          	jalr	1204(ra) # 80002ebc <panic>

0000000080003a10 <freerange>:
    80003a10:	fc010113          	addi	sp,sp,-64
    80003a14:	000017b7          	lui	a5,0x1
    80003a18:	02913423          	sd	s1,40(sp)
    80003a1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003a20:	009504b3          	add	s1,a0,s1
    80003a24:	fffff537          	lui	a0,0xfffff
    80003a28:	02813823          	sd	s0,48(sp)
    80003a2c:	02113c23          	sd	ra,56(sp)
    80003a30:	03213023          	sd	s2,32(sp)
    80003a34:	01313c23          	sd	s3,24(sp)
    80003a38:	01413823          	sd	s4,16(sp)
    80003a3c:	01513423          	sd	s5,8(sp)
    80003a40:	01613023          	sd	s6,0(sp)
    80003a44:	04010413          	addi	s0,sp,64
    80003a48:	00a4f4b3          	and	s1,s1,a0
    80003a4c:	00f487b3          	add	a5,s1,a5
    80003a50:	06f5e463          	bltu	a1,a5,80003ab8 <freerange+0xa8>
    80003a54:	00003a97          	auipc	s5,0x3
    80003a58:	0eca8a93          	addi	s5,s5,236 # 80006b40 <end>
    80003a5c:	0954e263          	bltu	s1,s5,80003ae0 <freerange+0xd0>
    80003a60:	01100993          	li	s3,17
    80003a64:	01b99993          	slli	s3,s3,0x1b
    80003a68:	0734fc63          	bgeu	s1,s3,80003ae0 <freerange+0xd0>
    80003a6c:	00058a13          	mv	s4,a1
    80003a70:	00002917          	auipc	s2,0x2
    80003a74:	e3090913          	addi	s2,s2,-464 # 800058a0 <kmem>
    80003a78:	00002b37          	lui	s6,0x2
    80003a7c:	0140006f          	j	80003a90 <freerange+0x80>
    80003a80:	000017b7          	lui	a5,0x1
    80003a84:	00f484b3          	add	s1,s1,a5
    80003a88:	0554ec63          	bltu	s1,s5,80003ae0 <freerange+0xd0>
    80003a8c:	0534fa63          	bgeu	s1,s3,80003ae0 <freerange+0xd0>
    80003a90:	00001637          	lui	a2,0x1
    80003a94:	00100593          	li	a1,1
    80003a98:	00048513          	mv	a0,s1
    80003a9c:	00000097          	auipc	ra,0x0
    80003aa0:	50c080e7          	jalr	1292(ra) # 80003fa8 <__memset>
    80003aa4:	00093703          	ld	a4,0(s2)
    80003aa8:	016487b3          	add	a5,s1,s6
    80003aac:	00e4b023          	sd	a4,0(s1)
    80003ab0:	00993023          	sd	s1,0(s2)
    80003ab4:	fcfa76e3          	bgeu	s4,a5,80003a80 <freerange+0x70>
    80003ab8:	03813083          	ld	ra,56(sp)
    80003abc:	03013403          	ld	s0,48(sp)
    80003ac0:	02813483          	ld	s1,40(sp)
    80003ac4:	02013903          	ld	s2,32(sp)
    80003ac8:	01813983          	ld	s3,24(sp)
    80003acc:	01013a03          	ld	s4,16(sp)
    80003ad0:	00813a83          	ld	s5,8(sp)
    80003ad4:	00013b03          	ld	s6,0(sp)
    80003ad8:	04010113          	addi	sp,sp,64
    80003adc:	00008067          	ret
    80003ae0:	00001517          	auipc	a0,0x1
    80003ae4:	79850513          	addi	a0,a0,1944 # 80005278 <digits+0x18>
    80003ae8:	fffff097          	auipc	ra,0xfffff
    80003aec:	3d4080e7          	jalr	980(ra) # 80002ebc <panic>

0000000080003af0 <kfree>:
    80003af0:	fe010113          	addi	sp,sp,-32
    80003af4:	00813823          	sd	s0,16(sp)
    80003af8:	00113c23          	sd	ra,24(sp)
    80003afc:	00913423          	sd	s1,8(sp)
    80003b00:	02010413          	addi	s0,sp,32
    80003b04:	03451793          	slli	a5,a0,0x34
    80003b08:	04079c63          	bnez	a5,80003b60 <kfree+0x70>
    80003b0c:	00003797          	auipc	a5,0x3
    80003b10:	03478793          	addi	a5,a5,52 # 80006b40 <end>
    80003b14:	00050493          	mv	s1,a0
    80003b18:	04f56463          	bltu	a0,a5,80003b60 <kfree+0x70>
    80003b1c:	01100793          	li	a5,17
    80003b20:	01b79793          	slli	a5,a5,0x1b
    80003b24:	02f57e63          	bgeu	a0,a5,80003b60 <kfree+0x70>
    80003b28:	00001637          	lui	a2,0x1
    80003b2c:	00100593          	li	a1,1
    80003b30:	00000097          	auipc	ra,0x0
    80003b34:	478080e7          	jalr	1144(ra) # 80003fa8 <__memset>
    80003b38:	00002797          	auipc	a5,0x2
    80003b3c:	d6878793          	addi	a5,a5,-664 # 800058a0 <kmem>
    80003b40:	0007b703          	ld	a4,0(a5)
    80003b44:	01813083          	ld	ra,24(sp)
    80003b48:	01013403          	ld	s0,16(sp)
    80003b4c:	00e4b023          	sd	a4,0(s1)
    80003b50:	0097b023          	sd	s1,0(a5)
    80003b54:	00813483          	ld	s1,8(sp)
    80003b58:	02010113          	addi	sp,sp,32
    80003b5c:	00008067          	ret
    80003b60:	00001517          	auipc	a0,0x1
    80003b64:	71850513          	addi	a0,a0,1816 # 80005278 <digits+0x18>
    80003b68:	fffff097          	auipc	ra,0xfffff
    80003b6c:	354080e7          	jalr	852(ra) # 80002ebc <panic>

0000000080003b70 <kalloc>:
    80003b70:	fe010113          	addi	sp,sp,-32
    80003b74:	00813823          	sd	s0,16(sp)
    80003b78:	00913423          	sd	s1,8(sp)
    80003b7c:	00113c23          	sd	ra,24(sp)
    80003b80:	02010413          	addi	s0,sp,32
    80003b84:	00002797          	auipc	a5,0x2
    80003b88:	d1c78793          	addi	a5,a5,-740 # 800058a0 <kmem>
    80003b8c:	0007b483          	ld	s1,0(a5)
    80003b90:	02048063          	beqz	s1,80003bb0 <kalloc+0x40>
    80003b94:	0004b703          	ld	a4,0(s1)
    80003b98:	00001637          	lui	a2,0x1
    80003b9c:	00500593          	li	a1,5
    80003ba0:	00048513          	mv	a0,s1
    80003ba4:	00e7b023          	sd	a4,0(a5)
    80003ba8:	00000097          	auipc	ra,0x0
    80003bac:	400080e7          	jalr	1024(ra) # 80003fa8 <__memset>
    80003bb0:	01813083          	ld	ra,24(sp)
    80003bb4:	01013403          	ld	s0,16(sp)
    80003bb8:	00048513          	mv	a0,s1
    80003bbc:	00813483          	ld	s1,8(sp)
    80003bc0:	02010113          	addi	sp,sp,32
    80003bc4:	00008067          	ret

0000000080003bc8 <initlock>:
    80003bc8:	ff010113          	addi	sp,sp,-16
    80003bcc:	00813423          	sd	s0,8(sp)
    80003bd0:	01010413          	addi	s0,sp,16
    80003bd4:	00813403          	ld	s0,8(sp)
    80003bd8:	00b53423          	sd	a1,8(a0)
    80003bdc:	00052023          	sw	zero,0(a0)
    80003be0:	00053823          	sd	zero,16(a0)
    80003be4:	01010113          	addi	sp,sp,16
    80003be8:	00008067          	ret

0000000080003bec <acquire>:
    80003bec:	fe010113          	addi	sp,sp,-32
    80003bf0:	00813823          	sd	s0,16(sp)
    80003bf4:	00913423          	sd	s1,8(sp)
    80003bf8:	00113c23          	sd	ra,24(sp)
    80003bfc:	01213023          	sd	s2,0(sp)
    80003c00:	02010413          	addi	s0,sp,32
    80003c04:	00050493          	mv	s1,a0
    80003c08:	10002973          	csrr	s2,sstatus
    80003c0c:	100027f3          	csrr	a5,sstatus
    80003c10:	ffd7f793          	andi	a5,a5,-3
    80003c14:	10079073          	csrw	sstatus,a5
    80003c18:	fffff097          	auipc	ra,0xfffff
    80003c1c:	8ec080e7          	jalr	-1812(ra) # 80002504 <mycpu>
    80003c20:	07852783          	lw	a5,120(a0)
    80003c24:	06078e63          	beqz	a5,80003ca0 <acquire+0xb4>
    80003c28:	fffff097          	auipc	ra,0xfffff
    80003c2c:	8dc080e7          	jalr	-1828(ra) # 80002504 <mycpu>
    80003c30:	07852783          	lw	a5,120(a0)
    80003c34:	0004a703          	lw	a4,0(s1)
    80003c38:	0017879b          	addiw	a5,a5,1
    80003c3c:	06f52c23          	sw	a5,120(a0)
    80003c40:	04071063          	bnez	a4,80003c80 <acquire+0x94>
    80003c44:	00100713          	li	a4,1
    80003c48:	00070793          	mv	a5,a4
    80003c4c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003c50:	0007879b          	sext.w	a5,a5
    80003c54:	fe079ae3          	bnez	a5,80003c48 <acquire+0x5c>
    80003c58:	0ff0000f          	fence
    80003c5c:	fffff097          	auipc	ra,0xfffff
    80003c60:	8a8080e7          	jalr	-1880(ra) # 80002504 <mycpu>
    80003c64:	01813083          	ld	ra,24(sp)
    80003c68:	01013403          	ld	s0,16(sp)
    80003c6c:	00a4b823          	sd	a0,16(s1)
    80003c70:	00013903          	ld	s2,0(sp)
    80003c74:	00813483          	ld	s1,8(sp)
    80003c78:	02010113          	addi	sp,sp,32
    80003c7c:	00008067          	ret
    80003c80:	0104b903          	ld	s2,16(s1)
    80003c84:	fffff097          	auipc	ra,0xfffff
    80003c88:	880080e7          	jalr	-1920(ra) # 80002504 <mycpu>
    80003c8c:	faa91ce3          	bne	s2,a0,80003c44 <acquire+0x58>
    80003c90:	00001517          	auipc	a0,0x1
    80003c94:	5f050513          	addi	a0,a0,1520 # 80005280 <digits+0x20>
    80003c98:	fffff097          	auipc	ra,0xfffff
    80003c9c:	224080e7          	jalr	548(ra) # 80002ebc <panic>
    80003ca0:	00195913          	srli	s2,s2,0x1
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	860080e7          	jalr	-1952(ra) # 80002504 <mycpu>
    80003cac:	00197913          	andi	s2,s2,1
    80003cb0:	07252e23          	sw	s2,124(a0)
    80003cb4:	f75ff06f          	j	80003c28 <acquire+0x3c>

0000000080003cb8 <release>:
    80003cb8:	fe010113          	addi	sp,sp,-32
    80003cbc:	00813823          	sd	s0,16(sp)
    80003cc0:	00113c23          	sd	ra,24(sp)
    80003cc4:	00913423          	sd	s1,8(sp)
    80003cc8:	01213023          	sd	s2,0(sp)
    80003ccc:	02010413          	addi	s0,sp,32
    80003cd0:	00052783          	lw	a5,0(a0)
    80003cd4:	00079a63          	bnez	a5,80003ce8 <release+0x30>
    80003cd8:	00001517          	auipc	a0,0x1
    80003cdc:	5b050513          	addi	a0,a0,1456 # 80005288 <digits+0x28>
    80003ce0:	fffff097          	auipc	ra,0xfffff
    80003ce4:	1dc080e7          	jalr	476(ra) # 80002ebc <panic>
    80003ce8:	01053903          	ld	s2,16(a0)
    80003cec:	00050493          	mv	s1,a0
    80003cf0:	fffff097          	auipc	ra,0xfffff
    80003cf4:	814080e7          	jalr	-2028(ra) # 80002504 <mycpu>
    80003cf8:	fea910e3          	bne	s2,a0,80003cd8 <release+0x20>
    80003cfc:	0004b823          	sd	zero,16(s1)
    80003d00:	0ff0000f          	fence
    80003d04:	0f50000f          	fence	iorw,ow
    80003d08:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003d0c:	ffffe097          	auipc	ra,0xffffe
    80003d10:	7f8080e7          	jalr	2040(ra) # 80002504 <mycpu>
    80003d14:	100027f3          	csrr	a5,sstatus
    80003d18:	0027f793          	andi	a5,a5,2
    80003d1c:	04079a63          	bnez	a5,80003d70 <release+0xb8>
    80003d20:	07852783          	lw	a5,120(a0)
    80003d24:	02f05e63          	blez	a5,80003d60 <release+0xa8>
    80003d28:	fff7871b          	addiw	a4,a5,-1
    80003d2c:	06e52c23          	sw	a4,120(a0)
    80003d30:	00071c63          	bnez	a4,80003d48 <release+0x90>
    80003d34:	07c52783          	lw	a5,124(a0)
    80003d38:	00078863          	beqz	a5,80003d48 <release+0x90>
    80003d3c:	100027f3          	csrr	a5,sstatus
    80003d40:	0027e793          	ori	a5,a5,2
    80003d44:	10079073          	csrw	sstatus,a5
    80003d48:	01813083          	ld	ra,24(sp)
    80003d4c:	01013403          	ld	s0,16(sp)
    80003d50:	00813483          	ld	s1,8(sp)
    80003d54:	00013903          	ld	s2,0(sp)
    80003d58:	02010113          	addi	sp,sp,32
    80003d5c:	00008067          	ret
    80003d60:	00001517          	auipc	a0,0x1
    80003d64:	54850513          	addi	a0,a0,1352 # 800052a8 <digits+0x48>
    80003d68:	fffff097          	auipc	ra,0xfffff
    80003d6c:	154080e7          	jalr	340(ra) # 80002ebc <panic>
    80003d70:	00001517          	auipc	a0,0x1
    80003d74:	52050513          	addi	a0,a0,1312 # 80005290 <digits+0x30>
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	144080e7          	jalr	324(ra) # 80002ebc <panic>

0000000080003d80 <holding>:
    80003d80:	00052783          	lw	a5,0(a0)
    80003d84:	00079663          	bnez	a5,80003d90 <holding+0x10>
    80003d88:	00000513          	li	a0,0
    80003d8c:	00008067          	ret
    80003d90:	fe010113          	addi	sp,sp,-32
    80003d94:	00813823          	sd	s0,16(sp)
    80003d98:	00913423          	sd	s1,8(sp)
    80003d9c:	00113c23          	sd	ra,24(sp)
    80003da0:	02010413          	addi	s0,sp,32
    80003da4:	01053483          	ld	s1,16(a0)
    80003da8:	ffffe097          	auipc	ra,0xffffe
    80003dac:	75c080e7          	jalr	1884(ra) # 80002504 <mycpu>
    80003db0:	01813083          	ld	ra,24(sp)
    80003db4:	01013403          	ld	s0,16(sp)
    80003db8:	40a48533          	sub	a0,s1,a0
    80003dbc:	00153513          	seqz	a0,a0
    80003dc0:	00813483          	ld	s1,8(sp)
    80003dc4:	02010113          	addi	sp,sp,32
    80003dc8:	00008067          	ret

0000000080003dcc <push_off>:
    80003dcc:	fe010113          	addi	sp,sp,-32
    80003dd0:	00813823          	sd	s0,16(sp)
    80003dd4:	00113c23          	sd	ra,24(sp)
    80003dd8:	00913423          	sd	s1,8(sp)
    80003ddc:	02010413          	addi	s0,sp,32
    80003de0:	100024f3          	csrr	s1,sstatus
    80003de4:	100027f3          	csrr	a5,sstatus
    80003de8:	ffd7f793          	andi	a5,a5,-3
    80003dec:	10079073          	csrw	sstatus,a5
    80003df0:	ffffe097          	auipc	ra,0xffffe
    80003df4:	714080e7          	jalr	1812(ra) # 80002504 <mycpu>
    80003df8:	07852783          	lw	a5,120(a0)
    80003dfc:	02078663          	beqz	a5,80003e28 <push_off+0x5c>
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	704080e7          	jalr	1796(ra) # 80002504 <mycpu>
    80003e08:	07852783          	lw	a5,120(a0)
    80003e0c:	01813083          	ld	ra,24(sp)
    80003e10:	01013403          	ld	s0,16(sp)
    80003e14:	0017879b          	addiw	a5,a5,1
    80003e18:	06f52c23          	sw	a5,120(a0)
    80003e1c:	00813483          	ld	s1,8(sp)
    80003e20:	02010113          	addi	sp,sp,32
    80003e24:	00008067          	ret
    80003e28:	0014d493          	srli	s1,s1,0x1
    80003e2c:	ffffe097          	auipc	ra,0xffffe
    80003e30:	6d8080e7          	jalr	1752(ra) # 80002504 <mycpu>
    80003e34:	0014f493          	andi	s1,s1,1
    80003e38:	06952e23          	sw	s1,124(a0)
    80003e3c:	fc5ff06f          	j	80003e00 <push_off+0x34>

0000000080003e40 <pop_off>:
    80003e40:	ff010113          	addi	sp,sp,-16
    80003e44:	00813023          	sd	s0,0(sp)
    80003e48:	00113423          	sd	ra,8(sp)
    80003e4c:	01010413          	addi	s0,sp,16
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	6b4080e7          	jalr	1716(ra) # 80002504 <mycpu>
    80003e58:	100027f3          	csrr	a5,sstatus
    80003e5c:	0027f793          	andi	a5,a5,2
    80003e60:	04079663          	bnez	a5,80003eac <pop_off+0x6c>
    80003e64:	07852783          	lw	a5,120(a0)
    80003e68:	02f05a63          	blez	a5,80003e9c <pop_off+0x5c>
    80003e6c:	fff7871b          	addiw	a4,a5,-1
    80003e70:	06e52c23          	sw	a4,120(a0)
    80003e74:	00071c63          	bnez	a4,80003e8c <pop_off+0x4c>
    80003e78:	07c52783          	lw	a5,124(a0)
    80003e7c:	00078863          	beqz	a5,80003e8c <pop_off+0x4c>
    80003e80:	100027f3          	csrr	a5,sstatus
    80003e84:	0027e793          	ori	a5,a5,2
    80003e88:	10079073          	csrw	sstatus,a5
    80003e8c:	00813083          	ld	ra,8(sp)
    80003e90:	00013403          	ld	s0,0(sp)
    80003e94:	01010113          	addi	sp,sp,16
    80003e98:	00008067          	ret
    80003e9c:	00001517          	auipc	a0,0x1
    80003ea0:	40c50513          	addi	a0,a0,1036 # 800052a8 <digits+0x48>
    80003ea4:	fffff097          	auipc	ra,0xfffff
    80003ea8:	018080e7          	jalr	24(ra) # 80002ebc <panic>
    80003eac:	00001517          	auipc	a0,0x1
    80003eb0:	3e450513          	addi	a0,a0,996 # 80005290 <digits+0x30>
    80003eb4:	fffff097          	auipc	ra,0xfffff
    80003eb8:	008080e7          	jalr	8(ra) # 80002ebc <panic>

0000000080003ebc <push_on>:
    80003ebc:	fe010113          	addi	sp,sp,-32
    80003ec0:	00813823          	sd	s0,16(sp)
    80003ec4:	00113c23          	sd	ra,24(sp)
    80003ec8:	00913423          	sd	s1,8(sp)
    80003ecc:	02010413          	addi	s0,sp,32
    80003ed0:	100024f3          	csrr	s1,sstatus
    80003ed4:	100027f3          	csrr	a5,sstatus
    80003ed8:	0027e793          	ori	a5,a5,2
    80003edc:	10079073          	csrw	sstatus,a5
    80003ee0:	ffffe097          	auipc	ra,0xffffe
    80003ee4:	624080e7          	jalr	1572(ra) # 80002504 <mycpu>
    80003ee8:	07852783          	lw	a5,120(a0)
    80003eec:	02078663          	beqz	a5,80003f18 <push_on+0x5c>
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	614080e7          	jalr	1556(ra) # 80002504 <mycpu>
    80003ef8:	07852783          	lw	a5,120(a0)
    80003efc:	01813083          	ld	ra,24(sp)
    80003f00:	01013403          	ld	s0,16(sp)
    80003f04:	0017879b          	addiw	a5,a5,1
    80003f08:	06f52c23          	sw	a5,120(a0)
    80003f0c:	00813483          	ld	s1,8(sp)
    80003f10:	02010113          	addi	sp,sp,32
    80003f14:	00008067          	ret
    80003f18:	0014d493          	srli	s1,s1,0x1
    80003f1c:	ffffe097          	auipc	ra,0xffffe
    80003f20:	5e8080e7          	jalr	1512(ra) # 80002504 <mycpu>
    80003f24:	0014f493          	andi	s1,s1,1
    80003f28:	06952e23          	sw	s1,124(a0)
    80003f2c:	fc5ff06f          	j	80003ef0 <push_on+0x34>

0000000080003f30 <pop_on>:
    80003f30:	ff010113          	addi	sp,sp,-16
    80003f34:	00813023          	sd	s0,0(sp)
    80003f38:	00113423          	sd	ra,8(sp)
    80003f3c:	01010413          	addi	s0,sp,16
    80003f40:	ffffe097          	auipc	ra,0xffffe
    80003f44:	5c4080e7          	jalr	1476(ra) # 80002504 <mycpu>
    80003f48:	100027f3          	csrr	a5,sstatus
    80003f4c:	0027f793          	andi	a5,a5,2
    80003f50:	04078463          	beqz	a5,80003f98 <pop_on+0x68>
    80003f54:	07852783          	lw	a5,120(a0)
    80003f58:	02f05863          	blez	a5,80003f88 <pop_on+0x58>
    80003f5c:	fff7879b          	addiw	a5,a5,-1
    80003f60:	06f52c23          	sw	a5,120(a0)
    80003f64:	07853783          	ld	a5,120(a0)
    80003f68:	00079863          	bnez	a5,80003f78 <pop_on+0x48>
    80003f6c:	100027f3          	csrr	a5,sstatus
    80003f70:	ffd7f793          	andi	a5,a5,-3
    80003f74:	10079073          	csrw	sstatus,a5
    80003f78:	00813083          	ld	ra,8(sp)
    80003f7c:	00013403          	ld	s0,0(sp)
    80003f80:	01010113          	addi	sp,sp,16
    80003f84:	00008067          	ret
    80003f88:	00001517          	auipc	a0,0x1
    80003f8c:	34850513          	addi	a0,a0,840 # 800052d0 <digits+0x70>
    80003f90:	fffff097          	auipc	ra,0xfffff
    80003f94:	f2c080e7          	jalr	-212(ra) # 80002ebc <panic>
    80003f98:	00001517          	auipc	a0,0x1
    80003f9c:	31850513          	addi	a0,a0,792 # 800052b0 <digits+0x50>
    80003fa0:	fffff097          	auipc	ra,0xfffff
    80003fa4:	f1c080e7          	jalr	-228(ra) # 80002ebc <panic>

0000000080003fa8 <__memset>:
    80003fa8:	ff010113          	addi	sp,sp,-16
    80003fac:	00813423          	sd	s0,8(sp)
    80003fb0:	01010413          	addi	s0,sp,16
    80003fb4:	1a060e63          	beqz	a2,80004170 <__memset+0x1c8>
    80003fb8:	40a007b3          	neg	a5,a0
    80003fbc:	0077f793          	andi	a5,a5,7
    80003fc0:	00778693          	addi	a3,a5,7
    80003fc4:	00b00813          	li	a6,11
    80003fc8:	0ff5f593          	andi	a1,a1,255
    80003fcc:	fff6071b          	addiw	a4,a2,-1
    80003fd0:	1b06e663          	bltu	a3,a6,8000417c <__memset+0x1d4>
    80003fd4:	1cd76463          	bltu	a4,a3,8000419c <__memset+0x1f4>
    80003fd8:	1a078e63          	beqz	a5,80004194 <__memset+0x1ec>
    80003fdc:	00b50023          	sb	a1,0(a0)
    80003fe0:	00100713          	li	a4,1
    80003fe4:	1ae78463          	beq	a5,a4,8000418c <__memset+0x1e4>
    80003fe8:	00b500a3          	sb	a1,1(a0)
    80003fec:	00200713          	li	a4,2
    80003ff0:	1ae78a63          	beq	a5,a4,800041a4 <__memset+0x1fc>
    80003ff4:	00b50123          	sb	a1,2(a0)
    80003ff8:	00300713          	li	a4,3
    80003ffc:	18e78463          	beq	a5,a4,80004184 <__memset+0x1dc>
    80004000:	00b501a3          	sb	a1,3(a0)
    80004004:	00400713          	li	a4,4
    80004008:	1ae78263          	beq	a5,a4,800041ac <__memset+0x204>
    8000400c:	00b50223          	sb	a1,4(a0)
    80004010:	00500713          	li	a4,5
    80004014:	1ae78063          	beq	a5,a4,800041b4 <__memset+0x20c>
    80004018:	00b502a3          	sb	a1,5(a0)
    8000401c:	00700713          	li	a4,7
    80004020:	18e79e63          	bne	a5,a4,800041bc <__memset+0x214>
    80004024:	00b50323          	sb	a1,6(a0)
    80004028:	00700e93          	li	t4,7
    8000402c:	00859713          	slli	a4,a1,0x8
    80004030:	00e5e733          	or	a4,a1,a4
    80004034:	01059e13          	slli	t3,a1,0x10
    80004038:	01c76e33          	or	t3,a4,t3
    8000403c:	01859313          	slli	t1,a1,0x18
    80004040:	006e6333          	or	t1,t3,t1
    80004044:	02059893          	slli	a7,a1,0x20
    80004048:	40f60e3b          	subw	t3,a2,a5
    8000404c:	011368b3          	or	a7,t1,a7
    80004050:	02859813          	slli	a6,a1,0x28
    80004054:	0108e833          	or	a6,a7,a6
    80004058:	03059693          	slli	a3,a1,0x30
    8000405c:	003e589b          	srliw	a7,t3,0x3
    80004060:	00d866b3          	or	a3,a6,a3
    80004064:	03859713          	slli	a4,a1,0x38
    80004068:	00389813          	slli	a6,a7,0x3
    8000406c:	00f507b3          	add	a5,a0,a5
    80004070:	00e6e733          	or	a4,a3,a4
    80004074:	000e089b          	sext.w	a7,t3
    80004078:	00f806b3          	add	a3,a6,a5
    8000407c:	00e7b023          	sd	a4,0(a5)
    80004080:	00878793          	addi	a5,a5,8
    80004084:	fed79ce3          	bne	a5,a3,8000407c <__memset+0xd4>
    80004088:	ff8e7793          	andi	a5,t3,-8
    8000408c:	0007871b          	sext.w	a4,a5
    80004090:	01d787bb          	addw	a5,a5,t4
    80004094:	0ce88e63          	beq	a7,a4,80004170 <__memset+0x1c8>
    80004098:	00f50733          	add	a4,a0,a5
    8000409c:	00b70023          	sb	a1,0(a4)
    800040a0:	0017871b          	addiw	a4,a5,1
    800040a4:	0cc77663          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    800040a8:	00e50733          	add	a4,a0,a4
    800040ac:	00b70023          	sb	a1,0(a4)
    800040b0:	0027871b          	addiw	a4,a5,2
    800040b4:	0ac77e63          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    800040b8:	00e50733          	add	a4,a0,a4
    800040bc:	00b70023          	sb	a1,0(a4)
    800040c0:	0037871b          	addiw	a4,a5,3
    800040c4:	0ac77663          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    800040c8:	00e50733          	add	a4,a0,a4
    800040cc:	00b70023          	sb	a1,0(a4)
    800040d0:	0047871b          	addiw	a4,a5,4
    800040d4:	08c77e63          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    800040d8:	00e50733          	add	a4,a0,a4
    800040dc:	00b70023          	sb	a1,0(a4)
    800040e0:	0057871b          	addiw	a4,a5,5
    800040e4:	08c77663          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    800040e8:	00e50733          	add	a4,a0,a4
    800040ec:	00b70023          	sb	a1,0(a4)
    800040f0:	0067871b          	addiw	a4,a5,6
    800040f4:	06c77e63          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    800040f8:	00e50733          	add	a4,a0,a4
    800040fc:	00b70023          	sb	a1,0(a4)
    80004100:	0077871b          	addiw	a4,a5,7
    80004104:	06c77663          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    80004108:	00e50733          	add	a4,a0,a4
    8000410c:	00b70023          	sb	a1,0(a4)
    80004110:	0087871b          	addiw	a4,a5,8
    80004114:	04c77e63          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    80004118:	00e50733          	add	a4,a0,a4
    8000411c:	00b70023          	sb	a1,0(a4)
    80004120:	0097871b          	addiw	a4,a5,9
    80004124:	04c77663          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    80004128:	00e50733          	add	a4,a0,a4
    8000412c:	00b70023          	sb	a1,0(a4)
    80004130:	00a7871b          	addiw	a4,a5,10
    80004134:	02c77e63          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    80004138:	00e50733          	add	a4,a0,a4
    8000413c:	00b70023          	sb	a1,0(a4)
    80004140:	00b7871b          	addiw	a4,a5,11
    80004144:	02c77663          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    80004148:	00e50733          	add	a4,a0,a4
    8000414c:	00b70023          	sb	a1,0(a4)
    80004150:	00c7871b          	addiw	a4,a5,12
    80004154:	00c77e63          	bgeu	a4,a2,80004170 <__memset+0x1c8>
    80004158:	00e50733          	add	a4,a0,a4
    8000415c:	00b70023          	sb	a1,0(a4)
    80004160:	00d7879b          	addiw	a5,a5,13
    80004164:	00c7f663          	bgeu	a5,a2,80004170 <__memset+0x1c8>
    80004168:	00f507b3          	add	a5,a0,a5
    8000416c:	00b78023          	sb	a1,0(a5)
    80004170:	00813403          	ld	s0,8(sp)
    80004174:	01010113          	addi	sp,sp,16
    80004178:	00008067          	ret
    8000417c:	00b00693          	li	a3,11
    80004180:	e55ff06f          	j	80003fd4 <__memset+0x2c>
    80004184:	00300e93          	li	t4,3
    80004188:	ea5ff06f          	j	8000402c <__memset+0x84>
    8000418c:	00100e93          	li	t4,1
    80004190:	e9dff06f          	j	8000402c <__memset+0x84>
    80004194:	00000e93          	li	t4,0
    80004198:	e95ff06f          	j	8000402c <__memset+0x84>
    8000419c:	00000793          	li	a5,0
    800041a0:	ef9ff06f          	j	80004098 <__memset+0xf0>
    800041a4:	00200e93          	li	t4,2
    800041a8:	e85ff06f          	j	8000402c <__memset+0x84>
    800041ac:	00400e93          	li	t4,4
    800041b0:	e7dff06f          	j	8000402c <__memset+0x84>
    800041b4:	00500e93          	li	t4,5
    800041b8:	e75ff06f          	j	8000402c <__memset+0x84>
    800041bc:	00600e93          	li	t4,6
    800041c0:	e6dff06f          	j	8000402c <__memset+0x84>

00000000800041c4 <__memmove>:
    800041c4:	ff010113          	addi	sp,sp,-16
    800041c8:	00813423          	sd	s0,8(sp)
    800041cc:	01010413          	addi	s0,sp,16
    800041d0:	0e060863          	beqz	a2,800042c0 <__memmove+0xfc>
    800041d4:	fff6069b          	addiw	a3,a2,-1
    800041d8:	0006881b          	sext.w	a6,a3
    800041dc:	0ea5e863          	bltu	a1,a0,800042cc <__memmove+0x108>
    800041e0:	00758713          	addi	a4,a1,7
    800041e4:	00a5e7b3          	or	a5,a1,a0
    800041e8:	40a70733          	sub	a4,a4,a0
    800041ec:	0077f793          	andi	a5,a5,7
    800041f0:	00f73713          	sltiu	a4,a4,15
    800041f4:	00174713          	xori	a4,a4,1
    800041f8:	0017b793          	seqz	a5,a5
    800041fc:	00e7f7b3          	and	a5,a5,a4
    80004200:	10078863          	beqz	a5,80004310 <__memmove+0x14c>
    80004204:	00900793          	li	a5,9
    80004208:	1107f463          	bgeu	a5,a6,80004310 <__memmove+0x14c>
    8000420c:	0036581b          	srliw	a6,a2,0x3
    80004210:	fff8081b          	addiw	a6,a6,-1
    80004214:	02081813          	slli	a6,a6,0x20
    80004218:	01d85893          	srli	a7,a6,0x1d
    8000421c:	00858813          	addi	a6,a1,8
    80004220:	00058793          	mv	a5,a1
    80004224:	00050713          	mv	a4,a0
    80004228:	01088833          	add	a6,a7,a6
    8000422c:	0007b883          	ld	a7,0(a5)
    80004230:	00878793          	addi	a5,a5,8
    80004234:	00870713          	addi	a4,a4,8
    80004238:	ff173c23          	sd	a7,-8(a4)
    8000423c:	ff0798e3          	bne	a5,a6,8000422c <__memmove+0x68>
    80004240:	ff867713          	andi	a4,a2,-8
    80004244:	02071793          	slli	a5,a4,0x20
    80004248:	0207d793          	srli	a5,a5,0x20
    8000424c:	00f585b3          	add	a1,a1,a5
    80004250:	40e686bb          	subw	a3,a3,a4
    80004254:	00f507b3          	add	a5,a0,a5
    80004258:	06e60463          	beq	a2,a4,800042c0 <__memmove+0xfc>
    8000425c:	0005c703          	lbu	a4,0(a1)
    80004260:	00e78023          	sb	a4,0(a5)
    80004264:	04068e63          	beqz	a3,800042c0 <__memmove+0xfc>
    80004268:	0015c603          	lbu	a2,1(a1)
    8000426c:	00100713          	li	a4,1
    80004270:	00c780a3          	sb	a2,1(a5)
    80004274:	04e68663          	beq	a3,a4,800042c0 <__memmove+0xfc>
    80004278:	0025c603          	lbu	a2,2(a1)
    8000427c:	00200713          	li	a4,2
    80004280:	00c78123          	sb	a2,2(a5)
    80004284:	02e68e63          	beq	a3,a4,800042c0 <__memmove+0xfc>
    80004288:	0035c603          	lbu	a2,3(a1)
    8000428c:	00300713          	li	a4,3
    80004290:	00c781a3          	sb	a2,3(a5)
    80004294:	02e68663          	beq	a3,a4,800042c0 <__memmove+0xfc>
    80004298:	0045c603          	lbu	a2,4(a1)
    8000429c:	00400713          	li	a4,4
    800042a0:	00c78223          	sb	a2,4(a5)
    800042a4:	00e68e63          	beq	a3,a4,800042c0 <__memmove+0xfc>
    800042a8:	0055c603          	lbu	a2,5(a1)
    800042ac:	00500713          	li	a4,5
    800042b0:	00c782a3          	sb	a2,5(a5)
    800042b4:	00e68663          	beq	a3,a4,800042c0 <__memmove+0xfc>
    800042b8:	0065c703          	lbu	a4,6(a1)
    800042bc:	00e78323          	sb	a4,6(a5)
    800042c0:	00813403          	ld	s0,8(sp)
    800042c4:	01010113          	addi	sp,sp,16
    800042c8:	00008067          	ret
    800042cc:	02061713          	slli	a4,a2,0x20
    800042d0:	02075713          	srli	a4,a4,0x20
    800042d4:	00e587b3          	add	a5,a1,a4
    800042d8:	f0f574e3          	bgeu	a0,a5,800041e0 <__memmove+0x1c>
    800042dc:	02069613          	slli	a2,a3,0x20
    800042e0:	02065613          	srli	a2,a2,0x20
    800042e4:	fff64613          	not	a2,a2
    800042e8:	00e50733          	add	a4,a0,a4
    800042ec:	00c78633          	add	a2,a5,a2
    800042f0:	fff7c683          	lbu	a3,-1(a5)
    800042f4:	fff78793          	addi	a5,a5,-1
    800042f8:	fff70713          	addi	a4,a4,-1
    800042fc:	00d70023          	sb	a3,0(a4)
    80004300:	fec798e3          	bne	a5,a2,800042f0 <__memmove+0x12c>
    80004304:	00813403          	ld	s0,8(sp)
    80004308:	01010113          	addi	sp,sp,16
    8000430c:	00008067          	ret
    80004310:	02069713          	slli	a4,a3,0x20
    80004314:	02075713          	srli	a4,a4,0x20
    80004318:	00170713          	addi	a4,a4,1
    8000431c:	00e50733          	add	a4,a0,a4
    80004320:	00050793          	mv	a5,a0
    80004324:	0005c683          	lbu	a3,0(a1)
    80004328:	00178793          	addi	a5,a5,1
    8000432c:	00158593          	addi	a1,a1,1
    80004330:	fed78fa3          	sb	a3,-1(a5)
    80004334:	fee798e3          	bne	a5,a4,80004324 <__memmove+0x160>
    80004338:	f89ff06f          	j	800042c0 <__memmove+0xfc>

000000008000433c <__putc>:
    8000433c:	fe010113          	addi	sp,sp,-32
    80004340:	00813823          	sd	s0,16(sp)
    80004344:	00113c23          	sd	ra,24(sp)
    80004348:	02010413          	addi	s0,sp,32
    8000434c:	00050793          	mv	a5,a0
    80004350:	fef40593          	addi	a1,s0,-17
    80004354:	00100613          	li	a2,1
    80004358:	00000513          	li	a0,0
    8000435c:	fef407a3          	sb	a5,-17(s0)
    80004360:	fffff097          	auipc	ra,0xfffff
    80004364:	b3c080e7          	jalr	-1220(ra) # 80002e9c <console_write>
    80004368:	01813083          	ld	ra,24(sp)
    8000436c:	01013403          	ld	s0,16(sp)
    80004370:	02010113          	addi	sp,sp,32
    80004374:	00008067          	ret

0000000080004378 <__getc>:
    80004378:	fe010113          	addi	sp,sp,-32
    8000437c:	00813823          	sd	s0,16(sp)
    80004380:	00113c23          	sd	ra,24(sp)
    80004384:	02010413          	addi	s0,sp,32
    80004388:	fe840593          	addi	a1,s0,-24
    8000438c:	00100613          	li	a2,1
    80004390:	00000513          	li	a0,0
    80004394:	fffff097          	auipc	ra,0xfffff
    80004398:	ae8080e7          	jalr	-1304(ra) # 80002e7c <console_read>
    8000439c:	fe844503          	lbu	a0,-24(s0)
    800043a0:	01813083          	ld	ra,24(sp)
    800043a4:	01013403          	ld	s0,16(sp)
    800043a8:	02010113          	addi	sp,sp,32
    800043ac:	00008067          	ret

00000000800043b0 <console_handler>:
    800043b0:	fe010113          	addi	sp,sp,-32
    800043b4:	00813823          	sd	s0,16(sp)
    800043b8:	00113c23          	sd	ra,24(sp)
    800043bc:	00913423          	sd	s1,8(sp)
    800043c0:	02010413          	addi	s0,sp,32
    800043c4:	14202773          	csrr	a4,scause
    800043c8:	100027f3          	csrr	a5,sstatus
    800043cc:	0027f793          	andi	a5,a5,2
    800043d0:	06079e63          	bnez	a5,8000444c <console_handler+0x9c>
    800043d4:	00074c63          	bltz	a4,800043ec <console_handler+0x3c>
    800043d8:	01813083          	ld	ra,24(sp)
    800043dc:	01013403          	ld	s0,16(sp)
    800043e0:	00813483          	ld	s1,8(sp)
    800043e4:	02010113          	addi	sp,sp,32
    800043e8:	00008067          	ret
    800043ec:	0ff77713          	andi	a4,a4,255
    800043f0:	00900793          	li	a5,9
    800043f4:	fef712e3          	bne	a4,a5,800043d8 <console_handler+0x28>
    800043f8:	ffffe097          	auipc	ra,0xffffe
    800043fc:	6dc080e7          	jalr	1756(ra) # 80002ad4 <plic_claim>
    80004400:	00a00793          	li	a5,10
    80004404:	00050493          	mv	s1,a0
    80004408:	02f50c63          	beq	a0,a5,80004440 <console_handler+0x90>
    8000440c:	fc0506e3          	beqz	a0,800043d8 <console_handler+0x28>
    80004410:	00050593          	mv	a1,a0
    80004414:	00001517          	auipc	a0,0x1
    80004418:	dc450513          	addi	a0,a0,-572 # 800051d8 <_ZZ12printIntegermE6digits+0xe0>
    8000441c:	fffff097          	auipc	ra,0xfffff
    80004420:	afc080e7          	jalr	-1284(ra) # 80002f18 <__printf>
    80004424:	01013403          	ld	s0,16(sp)
    80004428:	01813083          	ld	ra,24(sp)
    8000442c:	00048513          	mv	a0,s1
    80004430:	00813483          	ld	s1,8(sp)
    80004434:	02010113          	addi	sp,sp,32
    80004438:	ffffe317          	auipc	t1,0xffffe
    8000443c:	6d430067          	jr	1748(t1) # 80002b0c <plic_complete>
    80004440:	fffff097          	auipc	ra,0xfffff
    80004444:	3e0080e7          	jalr	992(ra) # 80003820 <uartintr>
    80004448:	fddff06f          	j	80004424 <console_handler+0x74>
    8000444c:	00001517          	auipc	a0,0x1
    80004450:	e8c50513          	addi	a0,a0,-372 # 800052d8 <digits+0x78>
    80004454:	fffff097          	auipc	ra,0xfffff
    80004458:	a68080e7          	jalr	-1432(ra) # 80002ebc <panic>
	...
