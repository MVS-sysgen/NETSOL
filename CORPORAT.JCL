//AWESOME  JOB  (SETUP),
//             'Build Netsol',
//             CLASS=A,
//             MSGCLASS=X,
//             MSGLEVEL=(1,1)
//********************************************************************
//*
//* Desc: Build new NETSOL logon screen: CORPORAT
//* Date: 03-06-2021
//* Built using Soldier of FORTRANs ANSi to EBCDiC builder
//*
//* Original ANSi File:   corporat.ans
//* Original ANSi Artist: Anonymous
//* Original ANSi Date:   20210603
//*
//* Command Line Args: --sysgen corporat.ans --ROW 17 --COL 10 --member 
//*                    CORPORAT --file CORPORAT.JCL 
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
 DELETE SYS1.UMODMAC(CORPORAT)
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
./ ADD NAME=CORPORAT
* NETSOL screen created by ANSi2EBCDiC.py
         PUSH  PRINT
         PRINT OFF
EGMSG    DS 0C EGMSG
         $WCC  (RESETKBD,MDT)
         $SBA  (1,1)
* (1,1) Normal Display 
         DC    X'280000'
         $SBA  (2,1)
* (2,1) (FG) Cyan 
         DC    X'2842F5'
         DC    C'Welcome to SYSGEN'
         $SBA  (2,18)
* (2,18) (FG) White 
         DC    X'2842F7'
         $SBA  (5,1)
* (5,1) (FG) Cyan 
         DC    X'2842F5'
         DC    C'This system is for authorized users only. '
         DC    C'Individual use of this computer'
         $SBA  (5,74)
* (5,74) (FG) White 
         DC    X'2842F7'
         $SBA  (6,1)
* (6,1) (FG) Cyan 
         DC    X'2842F5'
         DC    C'system and/or network without authority, or in'
         DC    C' excess of your authority,'
         $SBA  (6,73)
* (6,73) (FG) White 
         DC    X'2842F7'
         $SBA  (7,1)
* (7,1) (FG) Cyan 
         DC    X'2842F5'
         DC    C'is strictly prohibited. Monitoring of '
         DC    C'transmissions or transactional'
         DC    C'information may be conducted to ensure the '
         DC    C'proper functioning and security'
         $SBA  (8,75)
* (8,75) (FG) White 
         DC    X'2842F7'
         $SBA  (9,1)
* (9,1) (FG) Cyan 
         DC    X'2842F5'
         DC    C'of electronic communication resources. Anyone '
         DC    C'using this system expressly'
         DC    C'consents to such monitoring and is advised '
         DC    C'that if such monitoring reveals'
         $SBA  (10,75)
* (10,75) (FG) White 
         DC    X'2842F7'
         $SBA  (11,1)
* (11,1) (FG) Cyan 
         DC    X'2842F5'
         DC    C'possible criminal activity or policy '
         DC    C'violation, system personnel may'
         $SBA  (11,69)
* (11,69) (FG) White 
         DC    X'2842F7'
         $SBA  (12,1)
* (12,1) (FG) Cyan 
         DC    X'2842F5'
         DC    C'provide the evidence of such monitoring to law'
         DC    C' enforcement or to other'
         DC    C'senior officials for disciplinary action.'
         $SBA  (13,42)
* (13,42) (FG) White 
         DC    X'2842F7'
* Insert Cursor and unprotected field
         $SBA  (17,10)
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
         COPY CORPORAT                    , logon screen copy book      66810010
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