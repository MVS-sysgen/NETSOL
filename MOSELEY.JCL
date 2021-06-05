//AWESOME  JOB  (SETUP),
//             'Build Netsol',
//             CLASS=A,
//             MSGCLASS=X,
//             MSGLEVEL=(1,1)
//********************************************************************
//*
//* Desc: Build new NETSOL logon screen: MVSTSO
//* Date: 01-06-2021
//*
//* This is the original NETSOL from Jay Moseley
//*
//* After submitting run the following to refresh VTAM in hercules
//* console:
//*
//*     /P TSO
//*     /Z NET,QUICK
//*
//* Then the commands to bring the services back is:
//*
//*     /S NET
//*
//********************************************************************
//*
//* First delete the previous version if it exists
//*
//CLEANUP EXEC PGM=IDCAMS
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  *
 DELETE SYS1.UMODMAC(MOSELEY)
 SET MAXCC=0
 SET LASTCC=0
//*
//* Then we "compress" SYS1.UMODMAC to free up space
//*
//COMP    EXEC COMPRESS,LIB='SYS1.UMODMAC'
//*
//* THEN WE COPY THE ORIGINAL NETSOL SOURCE FROM SYS1.AMACLIB
//* TO SYS1.UMODMAC
//*
//UMODMAC  EXEC PGM=IEBGENER
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DISP=SHR,DSN=SYS1.AMACLIB(NETSOL)
//SYSUT2   DD DISP=SHR,DSN=SYS1.UMODMAC(NETSOL)
//*
//* THEN WE UPDATE SYS1.UMODMAC(NETSOL) TO DISPLAY OUR CUSTOM 3270
//*
//UPDATE   EXEC PGM=IEBUPDTE
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DISP=SHR,DSN=SYS1.UMODMAC
//SYSUT2   DD DISP=SHR,DSN=SYS1.UMODMAC
//SYSIN    DD DATA,DLM=$$
./ ADD NAME=MOSELEY
         PUSH  PRINT
         PRINT OFF
EGMSG    DS 0C EGMSG
         DC    X'C3'
*
 DC X'11',X'C5C3',X'1D',X'E8',X'2842F5'
 DC C'MM     MM VV     VV  SSSSSS           //    TTTTTTTT  SSSSSS   '
 DC C'OOOOOOO '
*
 DC X'11',X'C6D3',X'1D',X'E8'
 DC C'MMM   MMM VV     VV SS    SS         //        TT    SS    SS O'
 DC C'O     OO'
*
 DC X'11',X'C7E3',X'1D',X'E8'
 DC C'MMMM MMMM VV     VV SS              //         TT    SS       O'
 DC C'O     OO'
*
 DC X'11',X'C8F3',X'1D',X'E8'
 DC C'MM MMM MM VV     VV  SSSSSS        //          TT     SSSSSS  O'
 DC C'O     OO'
*
 DC X'11',X'4AC3',X'1D',X'E8'
 DC C'MM  M  MM  VV   VV     SSSS       //           TT       SSSS  O'
 DC C'O     OO'
*
 DC X'11',X'4BD3',X'1D',X'E8'
 DC C'MM     MM  VV   VV        SS     //            TT          SS O'
 DC C'O     OO'
*
 DC X'11',X'4CE3',X'1D',X'E8'
 DC C'MM     MM   VV VV   SS    SS    //             TT    SS    SS O'
 DC C'O     OO'
*
 DC X'11',X'4DF3',X'1D',X'E8'
 DC C'MM     MM    VVV     SSSSSS    //              TT     SSSSSS   '
 DC C'OOOOOOO '
*
 DC X'11',X'D27B',X'1DF0',X'284100',X'2842F4'
 DC C'Welcome to MVS3.8j, running under the Hercules emulator'
 DC X'1DF0',X'284200'
*
*
*
*
*
 DC X'11',X'5B60',X'1D',X'E8'
 DC C'TSO Logon ===>'
 DC X'1D',X'C1'
 DC X'13'
EGMSGLN EQU *-EGMSG
         POP   PRINT
./ CHANGE NAME=NETSOL
         CLI   MSGINDEX,X'0C'                                           23164802
         BNE   EGSKIP                                                   23164804
         LA    R3,EGMSGLN                                               23164808
         L     R4,=A(EGMSG)                                             23164810
*                                                                       23164812
         WRITE RPL=(PTRRPL),                                           X23164814
               OPTCD=(LBT,ERASE),                                      X23164816
               AREA=(R4),                                              X23164818
               RECLEN=(R3),                                            X23164820
               EXIT=WRITEND                                             23164822
*                                                                       23164824
         B EGOK                                                         23164826
*                                                                       23164828
*                                                                       23164830
EGSKIP   DS 0H EGSKIP                                                   23164832
EGOK     DS 0H EGOK                                                     23166010
         COPY MOSELEY                     , logon screen copy book      66810010
$$
//*
//* With that done its time to assemble our new screen
//* We assemble SYS1.UMODMAC(NETSOL) with IFOX00
//*
//ASM     EXEC PGM=IFOX00,REGION=1024K
//SYSLIB   DD  DISP=SHR,DSN=SYS1.UMODMAC,DCB=LRECL=32720
//         DD  DISP=SHR,DSN=SYS2.MACLIB
//         DD  DISP=SHR,DSN=SYS1.MACLIB
//         DD  DISP=SHR,DSN=SYS1.AMODGEN
//SYSUT1   DD  UNIT=VIO,SPACE=(1700,(600,100))
//SYSUT2   DD  UNIT=VIO,SPACE=(1700,(300,50))
//SYSUT3   DD  UNIT=VIO,SPACE=(1700,(300,50))
//SYSPRINT DD  SYSOUT=*,DCB=BLKSIZE=1089
//SYSPUNCH DD  DISP=(NEW,PASS,DELETE),
//             UNIT=VIO,SPACE=(TRK,(2,2)),
//             DCB=(BLKSIZE=80,LRECL=80,RECFM=F)
//SYSIN    DD  *
ISTNSC00 CSECT ,
         NETSOL SYSTEM=VS2
         END   ,
//*
//* Then we link it and put it in SYS1.VTAMLIB(ISTNSC00)
//*
//LKED    EXEC PGM=IEWL,PARM='XREF,LIST,LET,NCAL',REGION=1024K
//SYSPRINT DD  SYSOUT=*
//SYSLIN   DD  DISP=(OLD,DELETE,DELETE),DSN=*.ASM.SYSPUNCH
//SYSLMOD  DD  DISP=SHR,DSN=SYS1.VTAMLIB(ISTNSC00)
//SYSUT1   DD  UNIT=VIO,SPACE=(1024,(200,20))
//*
//