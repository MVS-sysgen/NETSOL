//AWESOME  JOB  (SETUP),
//             'Build Netsol',
//             CLASS=A,
//             MSGCLASS=X,
//             MSGLEVEL=(1,1)
//********************************************************************
//*
//* Desc: Build new NETSOL logon screen: MFRAME
//* Date: 03-06-2021
//* Built using Soldier of FORTRANs ANSi to EBCDiC builder
//*
//* Original ANSi File:   mainfram.ans
//* Original ANSi Title:  mainframe
//* Original ANSi Artist: wood
//* Original ANSi Group:  boneless / sliver
//* Original ANSi Date:   20210603
//*
//* Command Line Args: --sysgen mainfram.ans --ROW 23 --COL 2 --member 
//*                    MFRAME --file MFRAME.JCL 
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
 DELETE SYS1.UMODMAC(MFRAME)
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
./ ADD NAME=MFRAME
* NETSOL screen created by ANSi2EBCDiC.py
         PUSH  PRINT
         PRINT OFF
EGMSG    DS 0C EGMSG
         $WCC  (RESETKBD,MDT)
         $SBA  (1,1)
* (1,1) Normal Display 
         DC    X'280000'
         $SBA  (1,1)
* (1,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'+'
         DC    76C'-'
         DC    C'+'
         $SBA  (1,79)
* (1,79) Normal Display 
         DC    X'280000'
         $SBA  (2,1)
* (2,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (2,2)
* (2,2) Normal Display 
         DC    X'280000'
         DC    76C' '
         $SBA  (2,78)
* (2,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (2,79)
* (2,79) Normal Display 
         DC    X'280000'
         $SBA  (3,1)
* (3,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (3,2)
* (3,2) Normal Display 
         DC    X'280000'
         DC    C' .s#S'
         DC    5C'$'
         DC    C'S#s.  .s#S$$$S#s.  .s#S$  .s#S$$$S#s.'
         DC    29C' '
         $SBA  (3,78)
* (3,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (3,79)
* (3,79) Normal Display 
         DC    X'280000'
         $SBA  (4,1)
* (4,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (4,2)
* (4,2) Normal Display 
         DC    X'280000'
         DC    C' '
         DC    5C'$'
         DC    C' $ '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    C'  $Y'
         DC    X'EA'
         DC    C'"'
         DC    X'7D'
         DC    C'  '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    29C' '
         $SBA  (4,78)
* (4,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (4,79)
* (4,79) Normal Display 
         DC    X'280000'
         $SBA  (5,1)
* (5,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (5,2)
* (5,2) Normal Display 
         DC    X'280000'
         DC    C' '
         DC    5C'$'
         DC    C'   '
         DC    5C'$'
         DC    C'  '
         DC    11C'$'
         DC    C'  .s#S$  '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    29C' '
         $SBA  (5,78)
* (5,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (5,79)
* (5,79) Normal Display 
         DC    X'280000'
         $SBA  (6,1)
* (6,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (6,2)
* (6,2) Normal Display 
         DC    X'280000'
         DC    C' '
         DC    5C'$'
         DC    C'   '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    29C' '
         $SBA  (6,78)
* (6,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (6,79)
* (6,79) Normal Display 
         DC    X'280000'
         $SBA  (7,1)
* (7,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (7,2)
* (7,2) Normal Display 
         DC    X'280000'
         DC    C' '
         DC    5C'$'
         DC    C'   '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    29C' '
         $SBA  (7,78)
* (7,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (7,79)
* (7,79) Normal Display 
         DC    X'280000'
         $SBA  (8,1)
* (8,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (8,2)
* (8,2) Normal Display 
         DC    X'280000'
         DC    C' '
         DC    5C'$'
         DC    C'   '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    29C' '
         $SBA  (8,78)
* (8,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (8,79)
* (8,79) Normal Display 
         DC    X'280000'
         $SBA  (9,1)
* (9,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (9,2)
* (9,2) Normal Display 
         DC    X'280000'
         DC    C' '
         DC    X'79'
         DC    C'"'
         DC    X'EA'
         DC    C'Y$   '
         DC    5C'$'
         DC    C'  $Y'
         DC    X'EA'
         DC    C'"'
         DC    X'7D'
         DC    C' '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C'  '
         DC    X'79'
         DC    C'"'
         DC    X'EA'
         DC    C'Y$ '
         DC    5C'$'
         DC    29C' '
         $SBA  (9,78)
* (9,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (9,79)
* (9,79) Normal Display 
         DC    X'280000'
         $SBA  (10,1)
* (10,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (10,2)
* (10,2) Normal Display 
         DC    X'280000'
         DC    5C' '
         DC    C'"   $Y'
         DC    X'EA'
         DC    C'"'
         DC    X'7D'
         DC    C'  "'
         DC    5C' '
         DC    X'79'
         DC    C'"'
         DC    X'EA'
         DC    C'Y$  $Y'
         DC    X'EA'
         DC    C'"'
         DC    X'7D'
         DC    6C' '
         DC    C'" $Y'
         DC    X'EA'
         DC    C'"'
         DC    X'7D'
         DC    29C' '
         $SBA  (10,78)
* (10,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (10,79)
* (10,79) Normal Display 
         DC    X'280000'
         $SBA  (11,1)
* (11,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (11,2)
* (11,2) Normal Display 
         DC    X'280000'
         DC    9C' '
         DC    C'"'
         DC    16C' '
         DC    C'"  "'
         DC    12C' '
         DC    C'"'
         DC    33C' '
         $SBA  (11,78)
* (11,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (11,79)
* (11,79) Normal Display 
         DC    X'280000'
         $SBA  (12,1)
* (12,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (12,2)
* (12,2) Normal Display 
         DC    X'280000'
         DC    10C' '
         DC    C'.s#S$$$S#s.  $S#s. .s#S$  .s#S$$$S#s.  .s#S'
         DC    5C'$'
         DC    C'S#s.  .s#S$$$S#s. '
         $SBA  (12,78)
* (12,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (12,79)
* (12,79) Normal Display 
         DC    X'280000'
         $SBA  (13,1)
* (13,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (13,2)
* (13,2) Normal Display 
         DC    X'280000'
         DC    10C' '
         DC    5C'$'
         DC    C' '
         DC    X'79'
         DC    C'"'
         DC    X'EA'
         DC    C'Y$  $WOOD$$Y'
         DC    X'EA'
         DC    C'"'
         DC    X'7D'
         DC    C'  '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C' $ '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C' '
         DC    X'79'
         DC    C'"'
         DC    X'EA'
         DC    C'Y$ '
         $SBA  (13,78)
* (13,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (13,79)
* (13,79) Normal Display 
         DC    X'280000'
         $SBA  (14,1)
* (14,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (14,2)
* (14,2) Normal Display 
         DC    X'280000'
         DC    10C' '
         DC    5C'$'
         DC    5C' '
         DC    C'"  '
         DC    6C'$'
         DC    C'"'
         DC    6C' '
         DC    11C'$'
         DC    C'  '
         DC    5C'$'
         DC    C'   '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    5C' '
         DC    C'" '
         $SBA  (14,78)
* (14,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (14,79)
* (14,79) Normal Display 
         DC    X'280000'
         $SBA  (15,1)
* (15,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (15,2)
* (15,2) Normal Display 
         DC    X'280000'
         DC    10C' '
         DC    7C'$'
         DC    6C' '
         DC    5C'$'
         DC    8C' '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C'   '
         DC    5C'$'
         DC    C'  '
         DC    7C'$'
         DC    5C' '
         $SBA  (15,78)
* (15,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (15,79)
* (15,79) Normal Display 
         DC    X'280000'
         $SBA  (16,1)
* (16,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (16,2)
* (16,2) Normal Display 
         DC    X'280000'
         DC    10C' '
         DC    5C'$'
         DC    8C' '
         DC    5C'$'
         DC    8C' '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C'   '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    5C' '
         DC    X'08D5'
         DC    C' '
         $SBA  (16,78)
* (16,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (16,79)
* (16,79) Normal Display 
         DC    X'280000'
         $SBA  (17,1)
* (17,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (17,2)
* (17,2) Normal Display 
         DC    X'280000'
         DC    10C' '
         DC    5C'$'
         DC    8C' '
         DC    5C'$'
         DC    8C' '
         DC    5C'$'
         DC    C' '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C'   '
         DC    5C'$'
         DC    C'  '
         DC    5C'$'
         DC    C' .s#S$ '
         $SBA  (17,78)
* (17,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (17,79)
* (17,79) Normal Display 
         DC    X'280000'
         $SBA  (18,1)
* (18,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (18,2)
* (18,2) Normal Display 
         DC    X'280000'
         DC    10C' '
         DC    C'$Y'
         DC    X'EA'
         DC    C'"'
         DC    X'7D'
         DC    8C' '
         DC    X'79'
         DC    C'"'
         DC    X'EA'
         DC    C'Y$'
         DC    8C' '
         DC    C'$Y'
         DC    X'EA'
         DC    C'"'
         DC    X'7D'
         DC    C' '
         DC    5C'$'
         DC    C'  '
         DC    X'79'
         DC    C'"'
         DC    X'EA'
         DC    C'Y$   '
         DC    5C'$'
         DC    C'  '
         DC    X'79'
         DC    C'"'
         DC    X'EA'
         DC    C'Y$$$Y'
         DC    X'EA'
         DC    C'"'
         DC    X'7D'
         DC    C' '
         $SBA  (18,78)
* (18,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (18,79)
* (18,79) Normal Display 
         DC    X'280000'
         $SBA  (19,1)
* (19,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (19,2)
* (19,2) Normal Display 
         DC    X'280000'
         DC    10C' '
         DC    C'"'
         DC    16C' '
         DC    C'"'
         DC    8C' '
         DC    C'"'
         DC    5C' '
         DC    X'79'
         DC    C'"'
         DC    X'EA'
         DC    C'Y$'
         DC    6C' '
         DC    C'"   $Y'
         DC    X'EA'
         DC    C'"'
         DC    X'7D'
         DC    14C' '
         $SBA  (19,78)
* (19,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (19,79)
* (19,79) Normal Display 
         DC    X'280000'
         $SBA  (20,1)
* (20,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (20,2)
* (20,2) Normal Display 
         DC    X'280000'
         DC    46C' '
         DC    C'"'
         DC    10C' '
         DC    C'"'
         DC    18C' '
         $SBA  (20,78)
* (20,78) Bold/Intense 
         DC    X'2841F8'
         DC    C'|'
         $SBA  (20,79)
* (20,79) Normal Display 
         DC    X'280000'
         $SBA  (21,1)
* (21,1) Bold/Intense 
         DC    X'2841F8'
         DC    C'+'
         DC    76C'-'
         DC    C'+'
         $SBA  (21,79)
* (21,79) Normal Display 
         DC    X'280000'
         $SBA  (22,1)
* (22,1) Bold/Intense 
         DC    X'2841F8'
         DC    X'6E'
         $SBA  (24,1)
* (24,1) Normal Display 
         DC    X'280000'
* Insert Cursor and unprotected field
         $SBA  (23,2)
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
         COPY MFRAME                      , logon screen copy book      66810010
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