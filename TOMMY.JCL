//AWESOME  JOB  (SETUP),
//             'Build Netsol',
//             CLASS=A,
//             MSGCLASS=X,
//             MSGLEVEL=(1,1)
//********************************************************************
//*
//* Desc: Build new NETSOL logon screen: TOMMY
//* Date: 03-06-2021
//* Built using Soldier of FORTRANs ANSi to EBCDiC builder
//*
//* Original ANSi File:   tommy.ans
//* Original ANSi Artist: Anonymous
//* Original ANSi Date:   20210603
//*
//* Command Line Args: --sysgen tommy.ans --ROW 24 --COL 5 --member 
//*                    TOMMY --file TOMMY.JCL 
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
 DELETE SYS1.UMODMAC(TOMMY)
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
./ ADD NAME=TOMMY
* NETSOL screen created by ANSi2EBCDiC.py
         PUSH  PRINT
         PRINT OFF
EGMSG    DS 0C EGMSG
         $WCC  (RESETKBD,MDT)
         $SBA  (1,1)
* (1,1) Normal Display 
         DC    X'280000'
         DC    C'    '
         $SBA  (5,5)
* (5,5) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@   @@  '
         DC    7C'@'
         DC    C'  '
         DC    6C'@'
         DC    C'    '
         DC    5C'@'
         DC    C'   @@   @@  @@'
         DC    7C' '
         DC    7C'@'
         $SBA  (5,66)
* (5,66) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (5,69)
* (5,69) Bold/Intense 
         DC    X'2841F8'
         DC    5C'@'
         $SBA  (6,1)
* (6,1) Normal Display 
         DC    X'280000'
         DC    C'    '
         $SBA  (6,5)
* (6,5) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@   @@  '
         DC    7C'@'
         DC    C'  '
         DC    7C'@'
         DC    C'  '
         DC    7C'@'
         DC    C'  @@   @@  @@'
         DC    7C' '
         DC    7C'@'
         $SBA  (6,66)
* (6,66) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (6,68)
* (6,68) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (6,75)
* (6,75) Normal Display 
         DC    X'280000'
         DC    C'    '
         $SBA  (7,5)
* (7,5) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,7)
* (7,7) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (7,10)
* (7,10) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,12)
* (7,12) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (7,14)
* (7,14) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,16)
* (7,16) Normal Display 
         DC    X'280000'
         DC    7C' '
         $SBA  (7,23)
* (7,23) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,25)
* (7,25) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (7,28)
* (7,28) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,30)
* (7,30) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (7,32)
* (7,32) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,34)
* (7,34) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (7,37)
* (7,37) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,39)
* (7,39) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (7,41)
* (7,41) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,43)
* (7,43) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (7,46)
* (7,46) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,48)
* (7,48) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (7,50)
* (7,50) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,52)
* (7,52) Normal Display 
         DC    X'280000'
         DC    7C' '
         $SBA  (7,59)
* (7,59) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,61)
* (7,61) Normal Display 
         DC    X'280000'
         DC    7C' '
         $SBA  (7,68)
* (7,68) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (7,70)
* (7,70) Normal Display 
         DC    X'280000'
         DC    C'    '
         $SBA  (8,5)
* (8,5) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (8,12)
* (8,12) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (8,14)
* (8,14) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@@@'
         $SBA  (8,18)
* (8,18) Normal Display 
         DC    X'280000'
         DC    5C' '
         $SBA  (8,23)
* (8,23) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (8,30)
* (8,30) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (8,32)
* (8,32) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (8,34)
* (8,34) Normal Display 
         DC    X'280000'
         DC    7C' '
         $SBA  (8,41)
* (8,41) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (8,43)
* (8,43) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (8,46)
* (8,46) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (8,48)
* (8,48) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (8,50)
* (8,50) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (8,52)
* (8,52) Normal Display 
         DC    X'280000'
         DC    7C' '
         $SBA  (8,59)
* (8,59) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@@@'
         $SBA  (8,63)
* (8,63) Normal Display 
         DC    X'280000'
         DC    6C' '
         $SBA  (8,69)
* (8,69) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@@'
         $SBA  (8,72)
* (8,72) Normal Display 
         DC    X'280000'
         DC    C'    '
         $SBA  (9,5)
* (9,5) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (9,12)
* (9,12) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (9,14)
* (9,14) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@@@'
         $SBA  (9,18)
* (9,18) Normal Display 
         DC    X'280000'
         DC    5C' '
         $SBA  (9,23)
* (9,23) Bold/Intense 
         DC    X'2841F8'
         DC    6C'@'
         DC    C'   @@'
         $SBA  (9,34)
* (9,34) Normal Display 
         DC    X'280000'
         DC    7C' '
         $SBA  (9,41)
* (9,41) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (9,43)
* (9,43) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (9,46)
* (9,46) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (9,48)
* (9,48) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (9,50)
* (9,50) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (9,52)
* (9,52) Normal Display 
         DC    X'280000'
         DC    7C' '
         $SBA  (9,59)
* (9,59) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@@@'
         $SBA  (9,63)
* (9,63) Normal Display 
         DC    X'280000'
         DC    8C' '
         $SBA  (9,71)
* (9,71) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@@'
         $SBA  (9,74)
* (9,74) Normal Display 
         DC    X'280000'
         DC    C'    '
         $SBA  (10,5)
* (10,5) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,7)
* (10,7) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (10,10)
* (10,10) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,12)
* (10,12) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (10,14)
* (10,14) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,16)
* (10,16) Normal Display 
         DC    X'280000'
         DC    7C' '
         $SBA  (10,23)
* (10,23) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,25)
* (10,25) Normal Display 
         DC    X'280000'
         DC    C' '
         $SBA  (10,26)
* (10,26) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,28)
* (10,28) Normal Display 
         DC    X'280000'
         DC    C'    '
         $SBA  (10,32)
* (10,32) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,34)
* (10,34) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (10,37)
* (10,37) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,39)
* (10,39) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (10,41)
* (10,41) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,43)
* (10,43) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (10,46)
* (10,46) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,48)
* (10,48) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (10,50)
* (10,50) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,52)
* (10,52) Normal Display 
         DC    X'280000'
         DC    7C' '
         $SBA  (10,59)
* (10,59) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,61)
* (10,61) Normal Display 
         DC    X'280000'
         DC    12C' '
         $SBA  (10,73)
* (10,73) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (10,75)
* (10,75) Normal Display 
         DC    X'280000'
         DC    C'    '
         $SBA  (11,5)
* (11,5) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (11,7)
* (11,7) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (11,10)
* (11,10) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (11,12)
* (11,12) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (11,14)
* (11,14) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (11,21)
* (11,21) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (11,23)
* (11,23) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (11,25)
* (11,25) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (11,27)
* (11,27) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (11,29)
* (11,29) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (11,32)
* (11,32) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (11,39)
* (11,39) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (11,41)
* (11,41) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (11,48)
* (11,48) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (11,50)
* (11,50) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (11,57)
* (11,57) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (11,59)
* (11,59) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (11,66)
* (11,66) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (11,68)
* (11,68) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (11,75)
* (11,75) Normal Display 
         DC    X'280000'
         DC    C'    '
         $SBA  (12,5)
* (12,5) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (12,7)
* (12,7) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (12,10)
* (12,10) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (12,12)
* (12,12) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (12,14)
* (12,14) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (12,21)
* (12,21) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (12,23)
* (12,23) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (12,25)
* (12,25) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (12,28)
* (12,28) Bold/Intense 
         DC    X'2841F8'
         DC    C'@@'
         $SBA  (12,30)
* (12,30) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (12,33)
* (12,33) Bold/Intense 
         DC    X'2841F8'
         DC    5C'@'
         DC    C'    '
         DC    5C'@'
         DC    C'   '
         DC    7C'@'
         $SBA  (12,57)
* (12,57) Normal Display 
         DC    X'280000'
         DC    C'  '
         $SBA  (12,59)
* (12,59) Bold/Intense 
         DC    X'2841F8'
         DC    7C'@'
         $SBA  (12,66)
* (12,66) Normal Display 
         DC    X'280000'
         DC    C'   '
         $SBA  (12,69)
* (12,69) Bold/Intense 
         DC    X'2841F8'
         DC    5C'@'
         $SBA  (13,1)
* (13,1) Normal Display 
         DC    X'280000'
         DC    25C' '
         $SBA  (15,26)
* (15,26) Bold/Intense 
         DC    X'2841F8'
         DC    C'T'
         $SBA  (15,27)
* (15,27) Normal Display 
         DC    X'280000'
         DC    C' '
         $SBA  (15,28)
* (15,28) Bold/Intense 
         DC    X'2841F8'
         DC    C'O M M Y S P R I N K L E'
         $SBA  (15,51)
* (15,51) Normal Display 
         DC    X'280000'
         DC    35C' '
         $SBA  (16,36)
* (16,36) Bold/Intense 
         DC    X'2841F8'
         DC    C'MVS 2.8'
         $SBA  (16,43)
* (16,43) Normal Display 
         DC    X'280000'
         $SBA  (24,1)
* (24,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'==='
         DC    X'6E'
         $SBA  (24,5)
* (24,5) Normal Display 
         DC    X'280000'
* Insert Cursor and unprotected field
         $SBA  (24,5)
         DC    X'2842F2'  SA COLOR RED
         $SF   (UNPROT,HI)
         $IC
         DC    CL20' '
         DC    X'280000'
         DC    X'1DF8'     SF (PROT,HIGH INTENSITY)
         $SBA  (24,80)
         $SF   (SKIP,HI)
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
         COPY TOMMY                       , logon screen copy book      66810010
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