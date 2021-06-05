//AWESOME  JOB  (SETUP),
//             'Build Netsol',
//             CLASS=A,
//             MSGCLASS=A,
//             MSGLEVEL=(1,1)
//********************************************************************
//*
//* Desc: Build new NETSOL logon screen: DOCKER
//* Date: 22-02-2021
//* Built using Soldier of FORTRANs ANSi to EBCDiC builder
//*
//* Original ANSi File:   docker.ans
//* Original ANSi Title:  DOCKER
//* Original ANSi Artist: Soldier of FORTRAN
//* Original ANSi Group:  MHS
//* Original ANSi Date:   20210222
//*
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
 DELETE SYS1.UMODMAC(DOCKER)
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
./ ADD NAME=DOCKER
* NETSOL screen created by ANSi2EBCDiC.py
         PUSH  PRINT
         PRINT OFF
EGMSG    DS 0C EGMSG
         $WCC  (RESETKBD,MDT)
* (1,1) Normal Display
         DC    X'280000'
         DC    31C' '
         DC    X'11405F'    SBA(1,32)
* (1,32) Bold/Intense
         DC    X'2841F8'
         DC    8X'7D'
         DC    X'1140E7'    SBA(1,40)
* (1,40) Normal Display
         DC    X'280000'
         DC    31C' '
         DC    X'11C16F'    SBA(2,32)
* (2,32) Bold/Intense (FG) Cyan
         DC    X'2841F82842F5'
         DC    C';'
         DC    X'11C1F0'    SBA(2,33)
* (2,33) (FG) Blue
         DC    X'2842F1'
         DC    C'lcllcc'
         DC    X'11C1F6'    SBA(2,39)
* (2,39) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'11C1F7'    SBA(2,40)
* (2,40) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'11C1F8'    SBA(2,41)
* (2,41) Normal Display
         DC    X'280000'
         DC    31C' '
         DC    X'11C27F'    SBA(3,32)
* (3,32) Bold/Intense (FG) Cyan
         DC    X'2841F82842F5'
         DC    C':'
         DC    X'11C340'    SBA(3,33)
* (3,33) (FG) Blue
         DC    X'2842F1'
         DC    C'l'
         DC    X'11C3C1'    SBA(3,34)
* (3,34) (FG) Cyan
         DC    X'2842F5'
         DC    C'c'
         DC    X'11C3C2'    SBA(3,35)
* (3,35) (FG) Blue
         DC    X'2842F1'
         DC    C'clc:'
         DC    X'11C3C6'    SBA(3,39)
* (3,39) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'11C3C7'    SBA(3,40)
* (3,40) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'11C3C8'    SBA(3,41)
* (3,41) Normal Display
         DC    X'280000'
         DC    31C' '
         DC    X'11C44F'    SBA(4,32)
* (4,32) Bold/Intense (FG) Cyan
         DC    X'2841F82842F5'
         DC    C';'
         DC    X'11C450'    SBA(4,33)
* (4,33) (FG) Blue
         DC    X'2842F1'
         DC    C'lcclc:'
         DC    X'11C4D6'    SBA(4,39)
* (4,39) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'11C4D7'    SBA(4,40)
* (4,40) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'11C4D8'    SBA(4,41)
* (4,41) Normal Display
         DC    X'280000'
         DC    15C' '
         DC    X'11C54F'    SBA(5,16)
* (5,16) Bold/Intense
         DC    X'2841F8'
         DC    9X'7D'
         DC    8C','
         DC    X'11C560'    SBA(5,33)
* (5,33) (FG) Blue
         DC    X'2842F1'
         DC    C'c:'
         DC    X'11C5E2'    SBA(5,35)
* (5,35) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'11C5E3'    SBA(5,36)
* (5,36) (FG) Blue
         DC    X'2842F1'
         DC    C'c::'
         DC    X'11C5E6'    SBA(5,39)
* (5,39) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'11C5E7'    SBA(5,40)
* (5,40) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'11C5E8'    SBA(5,41)
* (5,41) Normal Display
         DC    X'280000'
         DC    15C' '
         DC    X'11C65F'    SBA(6,16)
* (6,16) Bold/Intense
         DC    X'2841F8'
         DC    C','
         DC    X'11C660'    SBA(6,17)
* (6,17) (FG) Cyan
         DC    X'2842F5'
         DC    C'::'
         DC    X'11C6E2'    SBA(6,19)
* (6,19) (FG) Blue
         DC    X'2842F1'
         DC    C':::'
         DC    X'11C6E5'    SBA(6,22)
* (6,22) (FG) Cyan
         DC    X'2842F5'
         DC    C'::;o'
         DC    X'11C6E9'    SBA(6,26)
* (6,26) (FG) Blue
         DC    X'2842F1'
         DC    C'cclcc'
         DC    X'11C66E'    SBA(6,31)
* (6,31) (FG) Cyan
         DC    X'2842F5'
         DC    C':;:::'
         DC    X'11C6F3'    SBA(6,36)
* (6,36) (FG) Blue
         DC    X'2842F1'
         DC    C'c::'
         DC    X'11C6F6'    SBA(6,39)
* (6,39) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'11C6F7'    SBA(6,40)
* (6,40) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'11C6F8'    SBA(6,41)
* (6,41) Normal Display
         DC    X'280000'
         DC    18C' '
         DC    X'11C74A'    SBA(6,59)
* (6,59) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    X'11C74B'    SBA(6,60)
* (6,60) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'11C74C'    SBA(6,61)
* (6,61) (FG) Blue
         DC    X'2842F1'
         DC    C'c'
         DC    X'11C74D'    SBA(6,62)
* (6,62) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'11C74E'    SBA(6,63)
* (6,63) Normal Display
         DC    X'280000'
         DC    15C' '
         DC    X'11C76F'    SBA(7,16)
* (7,16) Bold/Intense
         DC    X'2841F8'
         DC    C','
         DC    X'11C7F0'    SBA(7,17)
* (7,17) (FG) Cyan
         DC    X'2842F5'
         DC    C':::;'
         DC    X'11C7F4'    SBA(7,21)
* (7,21) (FG) Blue
         DC    X'2842F1'
         DC    C';'
         DC    X'11C7F5'    SBA(7,22)
* (7,22) (FG) Cyan
         DC    X'2842F5'
         DC    C'::'
         DC    X'11C7F7'    SBA(7,24)
* (7,24) (FG) Blue
         DC    X'2842F1'
         DC    C':lcccc::'
         DC    X'11C77F'    SBA(7,32)
* (7,32) (FG) Cyan
         DC    X'2842F5'
         DC    C';:;'
         DC    X'11C8C2'    SBA(7,35)
* (7,35) (FG) Blue
         DC    X'2842F1'
         DC    C':::;'
         DC    X'11C8C6'    SBA(7,39)
* (7,39) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'11C8C7'    SBA(7,40)
* (7,40) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'11C8C8'    SBA(7,41)
* (7,41) Normal Display
         DC    X'280000'
         DC    18C' '
         DC    X'11C85A'    SBA(7,59)
* (7,59) Bold/Intense (FG) Cyan
         DC    X'2841F82842F5'
         DC    C';'
         DC    X'11C85B'    SBA(7,60)
* (7,60) (FG) Blue
         DC    X'2842F1'
         DC    C'odoc'
         DC    X'11C85F'    SBA(7,64)
* (7,64) (FG) White
         DC    X'2842F7'
         DC    C','
         DC    X'11C860'    SBA(7,65)
* (7,65) Normal Display
         DC    X'280000'
         DC    15C' '
         DC    X'11C87F'    SBA(8,16)
* (8,16) Bold/Intense
         DC    X'2841F8'
         DC    C','
         DC    X'11C940'    SBA(8,17)
* (8,17) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'11C9C1'    SBA(8,18)
* (8,18) (FG) Blue
         DC    X'2842F1'
         DC    C'::'
         DC    X'11C9C3'    SBA(8,20)
* (8,20) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'11C9C4'    SBA(8,21)
* (8,21) (FG) Blue
         DC    X'2842F1'
         DC    C'::'
         DC    X'11C9C6'    SBA(8,23)
* (8,23) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'11C9C7'    SBA(8,24)
* (8,24) (FG) Blue
         DC    X'2842F1'
         DC    C':lcccc::'
         DC    X'11C94F'    SBA(8,32)
* (8,32) (FG) Cyan
         DC    X'2842F5'
         DC    C';:'
         DC    X'11C9D1'    SBA(8,34)
* (8,34) (FG) Blue
         DC    X'2842F1'
         DC    C'::::;'
         DC    X'11C9D6'    SBA(8,39)
* (8,39) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'11C9D7'    SBA(8,40)
* (8,40) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'11C9D8'    SBA(8,41)
* (8,41) Normal Display
         DC    X'280000'
         DC    17C' '
         DC    X'11C9E9'    SBA(8,58)
* (8,58) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    X'11C96A'    SBA(8,59)
* (8,59) (FG) Blue
         DC    X'2842F1'
         DC    C'cddddl'
         DC    X'11C9F0'    SBA(8,65)
* (8,65) (FG) White
         DC    X'2842F7'
         DC    C';'
         DC    X'11C9F1'    SBA(8,66)
* (8,66) Normal Display
         DC    X'280000'
         DC    7C' '
         DC    X'114AC7'    SBA(9,8)
* (9,8) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    8C','
         DC    X'114A50'    SBA(9,17)
* (9,17) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'114AD1'    SBA(9,18)
* (9,18) (FG) Blue
         DC    X'2842F1'
         DC    5C'c'
         DC    X'114AD6'    SBA(9,23)
* (9,23) (FG) Cyan
         DC    X'2842F5'
         DC    C':,'
         DC    X'114AD8'    SBA(9,25)
* (9,25) (FG) Blue
         DC    X'2842F1'
         DC    C'c'
         DC    X'114AD9'    SBA(9,26)
* (9,26) (FG) Cyan
         DC    X'2842F5'
         DC    C'c'
         DC    X'114A5A'    SBA(9,27)
* (9,27) (FG) Blue
         DC    X'2842F1'
         DC    C'ccc'
         DC    X'114A5D'    SBA(9,30)
* (9,30) (FG) Cyan
         DC    X'2842F5'
         DC    C'::'
         DC    X'114A5F'    SBA(9,32)
* (9,32) (FG) White
         DC    X'2842F7'
         DC    C';'
         DC    X'114A60'    SBA(9,33)
* (9,33) (FG) Cyan
         DC    X'2842F5'
         DC    C'cc'
         DC    X'114AE2'    SBA(9,35)
* (9,35) (FG) Blue
         DC    X'2842F1'
         DC    C'ccc:'
         DC    X'114AE6'    SBA(9,39)
* (9,39) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'114AE7'    SBA(9,40)
* (9,40) (FG) White
         DC    X'2842F7'
         DC    8C','
         DC    X'114A6F'    SBA(9,48)
* (9,48) Normal Display
         DC    X'280000'
         DC    10C' '
         DC    X'114AF9'    SBA(9,58)
* (9,58) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    X'114A7A'    SBA(9,59)
* (9,59) (FG) Blue
         DC    X'2842F1'
         DC    C'c'
         DC    5C'd'
         DC    C'l'
         DC    X'114BC1'    SBA(9,66)
* (9,66) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    C'  '
         DC    X'7D7D7D7D'
         DC    C'  ,'
         DC    X'7D7D'
         DC    X'114B4D'    SBA(9,78)
* (9,78) Normal Display
         DC    X'280000'
         DC    7C' '
         DC    X'114BD7'    SBA(10,8)
* (10,8) Bold/Intense
         DC    X'2841F8'
         DC    C','
         DC    X'114BD8'    SBA(10,9)
* (10,9) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'114BD9'    SBA(10,10)
* (10,10) (FG) Blue
         DC    X'2842F1'
         DC    C';:;;'
         DC    X'114B5D'    SBA(10,14)
* (10,14) (FG) Cyan
         DC    X'2842F5'
         DC    C'::;'
         DC    X'114B60'    SBA(10,17)
* (10,17) (FG) Blue
         DC    X'2842F1'
         DC    6C'c'
         DC    X'114BE6'    SBA(10,23)
* (10,23) (FG) Cyan
         DC    X'2842F5'
         DC    C'c;'
         DC    X'114BE8'    SBA(10,25)
* (10,25) (FG) Blue
         DC    X'2842F1'
         DC    C'c::::'
         DC    X'114B6D'    SBA(10,30)
* (10,30) (FG) Cyan
         DC    X'2842F5'
         DC    C';;;'
         DC    X'114BF0'    SBA(10,33)
* (10,33) (FG) Blue
         DC    X'2842F1'
         DC    C'lcclc:'
         DC    X'114BF6'    SBA(10,39)
* (10,39) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'114BF7'    SBA(10,40)
* (10,40) (FG) Blue
         DC    X'2842F1'
         DC    C';'
         DC    6C':'
         DC    X'114B7E'    SBA(10,47)
* (10,47) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'114B7F'    SBA(10,48)
* (10,48) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'114C40'    SBA(10,49)
* (10,49) Normal Display
         DC    X'280000'
         DC    10C' '
         DC    X'114C4A'    SBA(10,59)
* (10,59) Bold/Intense (FG) Cyan
         DC    X'2841F82842F5'
         DC    C';'
         DC    X'114C4B'    SBA(10,60)
* (10,60) (FG) Blue
         DC    X'2842F1'
         DC    C'oddddo:ccclccc:'
         DC    X'114C5A'    SBA(10,75)
* (10,75) (FG) White
         DC    X'2842F7'
         DC    C'.'
         DC    X'7D'
         DC    X'114C5C'    SBA(10,77)
* (10,77) Normal Display
         DC    X'280000'
         DC    7C' '
         DC    X'114CE7'    SBA(11,8)
* (11,8) Bold/Intense
         DC    X'2841F8'
         DC    C','
         DC    X'114CE8'    SBA(11,9)
* (11,9) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'114CE9'    SBA(11,10)
* (11,10) (FG) Blue
         DC    X'2842F1'
         DC    C';:;'
         DC    X'114C6C'    SBA(11,13)
* (11,13) (FG) Cyan
         DC    X'2842F5'
         DC    C';;:;c'
         DC    X'114CF1'    SBA(11,18)
* (11,18) (FG) Blue
         DC    X'2842F1'
         DC    5C'c'
         DC    X'114CF6'    SBA(11,23)
* (11,23) (FG) Cyan
         DC    X'2842F5'
         DC    C'c'
         DC    X'114CF7'    SBA(11,24)
* (11,24) (FG) Blue
         DC    X'2842F1'
         DC    C';c'
         DC    X'114CF9'    SBA(11,26)
* (11,26) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'114C7A'    SBA(11,27)
* (11,27) (FG) Blue
         DC    X'2842F1'
         DC    C';::'
         DC    X'114C7D'    SBA(11,30)
* (11,30) (FG) Cyan
         DC    X'2842F5'
         DC    C';;;'
         DC    X'114D40'    SBA(11,33)
* (11,33) (FG) Blue
         DC    X'2842F1'
         DC    C'lcclc:'
         DC    X'114DC6'    SBA(11,39)
* (11,39) (FG) Cyan
         DC    X'2842F5'
         DC    C':;'
         DC    X'114DC8'    SBA(11,41)
* (11,41) (FG) Blue
         DC    X'2842F1'
         DC    C':'
         DC    X'114DC9'    SBA(11,42)
* (11,42) (FG) Cyan
         DC    X'2842F5'
         DC    C'::::'
         DC    X'114D4D'    SBA(11,46)
* (11,46) (FG) Blue
         DC    X'2842F1'
         DC    C':'
         DC    X'114D4E'    SBA(11,47)
* (11,47) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'114D4F'    SBA(11,48)
* (11,48) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'114D50'    SBA(11,49)
* (11,49) Normal Display
         DC    X'280000'
         DC    10C' '
         DC    X'114D5A'    SBA(11,59)
* (11,59) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    X'114D5B'    SBA(11,60)
* (11,60) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'114D5C'    SBA(11,61)
* (11,61) (FG) Blue
         DC    X'2842F1'
         DC    C'ldoo'
         DC    8C'l'
         DC    C'c'
         DC    X'114DE9'    SBA(11,74)
* (11,74) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'114D6A'    SBA(11,75)
* (11,75) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'114D6B'    SBA(11,76)
* (11,76) Normal Display
         DC    X'280000'
         DC    7C' '
         DC    X'114DF7'    SBA(12,8)
* (12,8) Bold/Intense
         DC    X'2841F8'
         DC    C','
         DC    X'114DF8'    SBA(12,9)
* (12,9) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'114DF9'    SBA(12,10)
* (12,10) (FG) Blue
         DC    X'2842F1'
         DC    C':::'
         DC    X'114D7C'    SBA(12,13)
* (12,13) (FG) Cyan
         DC    X'2842F5'
         DC    C':::;c'
         DC    X'114EC1'    SBA(12,18)
* (12,18) (FG) Blue
         DC    X'2842F1'
         DC    5C'c'
         DC    X'114EC6'    SBA(12,23)
* (12,23) (FG) Cyan
         DC    X'2842F5'
         DC    C'c;'
         DC    X'114EC8'    SBA(12,25)
* (12,25) (FG) Blue
         DC    X'2842F1'
         DC    C'c'
         DC    X'114EC9'    SBA(12,26)
* (12,26) (FG) Cyan
         DC    X'2842F5'
         DC    C'::'
         DC    X'114E4B'    SBA(12,28)
* (12,28) (FG) Blue
         DC    X'2842F1'
         DC    C'::'
         DC    X'114E4D'    SBA(12,30)
* (12,30) (FG) Cyan
         DC    X'2842F5'
         DC    C':;;l'
         DC    X'114ED1'    SBA(12,34)
* (12,34) (FG) Blue
         DC    X'2842F1'
         DC    C'cclcc'
         DC    X'114ED6'    SBA(12,39)
* (12,39) (FG) Cyan
         DC    X'2842F5'
         DC    C':;c:'
         DC    X'114E5A'    SBA(12,43)
* (12,43) (FG) Blue
         DC    X'2842F1'
         DC    C':c::'
         DC    X'114E5E'    SBA(12,47)
* (12,47) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'114E5F'    SBA(12,48)
* (12,48) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'114E60'    SBA(12,49)
* (12,49) Normal Display
         DC    X'280000'
         DC    10C' '
         DC    X'114E6A'    SBA(12,59)
* (12,59) Bold/Intense
         DC    X'2841F8'
         DC    C','
         DC    X'114E6B'    SBA(12,60)
* (12,60) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'114E6C'    SBA(12,61)
* (12,61) (FG) Blue
         DC    X'2842F1'
         DC    C'lo'
         DC    5C'l'
         DC    C'cc::'
         DC    X'114EF7'    SBA(12,72)
* (12,72) (FG) Cyan
         DC    X'2842F5'
         DC    C','
         DC    X'114EF8'    SBA(12,73)
* (12,73) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'114EF9'    SBA(12,74)
* (12,74) Normal Display
         DC    X'280000'
         DC    X'114F40'    SBA(13,1)
* (13,1) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    C',,,;'
         DC    X'114FC5'    SBA(13,6)
* (13,6) (FG) Cyan
         DC    X'2842F5'
         DC    C';;;:'
         DC    X'114FC9'    SBA(13,10)
* (13,10) (FG) Blue
         DC    X'2842F1'
         DC    7C':'
         DC    7C'c'
         DC    C'::'
         DC    X'114FD9'    SBA(13,26)
* (13,26) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'114F5A'    SBA(13,27)
* (13,27) (FG) Blue
         DC    X'2842F1'
         DC    C':::'
         DC    X'114F5D'    SBA(13,30)
* (13,30) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    X'114F5E'    SBA(13,31)
* (13,31) (FG) Blue
         DC    X'2842F1'
         DC    C'::'
         DC    6C'c'
         DC    C'::c'
         DC    5C':'
         DC    X'114F6E'    SBA(13,47)
* (13,47) (FG) Cyan
         DC    X'2842F5'
         DC    C':'
         DC    6C';'
         DC    X'114FF5'    SBA(13,54)
* (13,54) (FG) Blue
         DC    X'2842F1'
         DC    C';:ccloollc'
         DC    X'114F7F'    SBA(13,64)
* (13,64) (FG) White
         DC    X'2842F7'
         DC    C','
         DC    X'7D7D7D7D'
         DC    X'1150C4'    SBA(13,69)
* (13,69) Normal Display
         DC    X'280000'
         DC    X'115050'    SBA(14,1)
* (14,1) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    X'1150D1'    SBA(14,2)
* (14,2) (FG) Blue
         DC    X'2842F1'
         DC    C'cllo'
         DC    52C'd'
         DC    C'olllc'
         DC    X'11D14E'    SBA(14,63)
* (14,63) (FG) White
         DC    X'2842F7'
         DC    C','
         DC    X'11D14F'    SBA(14,64)
* (14,64) Normal Display
         DC    X'280000'
         DC    X'11D160'    SBA(15,1)
* (15,1) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    X'11D161'    SBA(15,2)
* (15,2) (FG) Blue
         DC    X'2842F1'
         DC    C':lloolc:Sof'
         DC    9C'd'
         DC    C'oolc'
         DC    X'11D1F9'    SBA(15,26)
* (15,26) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'11D17A'    SBA(15,27)
* (15,27) (FG) Blue
         DC    X'2842F1'
         DC    C':loo'
         DC    7C'd'
         DC    C'ol:;:loo'
         DC    8C'd'
         DC    C'ooc::ccc'
         DC    X'11D25D'    SBA(15,62)
* (15,62) (FG) White
         DC    X'2842F7'
         DC    C','
         DC    X'11D25E'    SBA(15,63)
* (15,63) Normal Display
         DC    X'280000'
         DC    X'11D2F0'    SBA(16,1)
* (16,1) Bold/Intense
         DC    X'2841F8'
         DC    C'",'
         DC    X'11D2F2'    SBA(16,3)
* (16,3) (FG) Blue
         DC    X'2842F1'
         DC    C';;'
         DC    X'11D2F4'    SBA(16,5)
* (16,5) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'11D2F5'    SBA(16,6)
* (16,6) (FG) White
         DC    X'2842F7'
         DC    6C','
         DC    X'11D27B'    SBA(16,12)
* (16,12) (FG) Cyan
         DC    X'2842F5'
         DC    C';:'
         DC    X'11D27D'    SBA(16,14)
* (16,14) (FG) Blue
         DC    X'2842F1'
         DC    6C':'
         DC    X'11D3C3'    SBA(16,20)
* (16,20) (FG) Cyan
         DC    X'2842F5'
         DC    C':;;'
         DC    X'11D3C6'    SBA(16,23)
* (16,23) (FG) White
         DC    X'2842F7'
         DC    6C','
         DC    X'11D34C'    SBA(16,29)
* (16,29) (FG) Cyan
         DC    X'2842F5'
         DC    C';'
         DC    X'11D34D'    SBA(16,30)
* (16,30) (FG) Blue
         DC    X'2842F1'
         DC    6C':'
         DC    C';'
         DC    X'11D3D4'    SBA(16,37)
* (16,37) (FG) White
         DC    X'2842F7'
         DC    C';'
         DC    6C','
         DC    X'11D35B'    SBA(16,44)
* (16,44) (FG) Cyan
         DC    X'2842F5'
         DC    C';;'
         DC    X'11D35D'    SBA(16,46)
* (16,46) (FG) Blue
         DC    X'2842F1'
         DC    7C':'
         DC    X'11D3E4'    SBA(16,53)
* (16,53) (FG) Cyan
         DC    X'2842F5'
         DC    C':;'
         DC    X'11D3E6'    SBA(16,55)
* (16,55) (FG) White
         DC    X'2842F7'
         DC    7C','
         DC    X'7D'
         DC    7C','
         DC    C';'
         DC    X'7D'
         DC    C';'
         DC    7C','
         DC    X'11D37F'    SBA(16,80)
* (16,80) Normal Display
         DC    X'280000'
         DC    C' '
         DC    X'11D4C1'    SBA(17,2)
* (17,2) Bold/Intense
         DC    X'2841F8'
         DC    C','
         DC    X'11D4C2'    SBA(17,3)
* (17,3) (FG) Blue
         DC    X'2842F1'
         DC    C'::::'
         DC    44C'c'
         DC    8C':'
         DC    C';'
         DC    X'11D47B'    SBA(17,60)
* (17,60) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'11D47C'    SBA(17,61)
* (17,61) Normal Display
         DC    X'280000'
         DC    C' '
         DC    X'11D5D1'    SBA(18,2)
* (18,2) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    X'11D5D2'    SBA(18,3)
* (18,3) (FG) Blue
         DC    X'2842F1'
         DC    C';:::'
         DC    15C'c'
         DC    C'lol'
         DC    23C'c'
         DC    10C':'
         DC    X'11D6C9'    SBA(18,58)
* (18,58) (FG) White
         DC    X'2842F7'
         DC    C','
         DC    X'11D64A'    SBA(18,59)
* (18,59) Normal Display
         DC    X'280000'
         DC    C'  '
         DC    X'11D6E2'    SBA(19,3)
* (19,3) Bold/Intense
         DC    X'2841F8'
         DC    C','
         DC    X'11D6E3'    SBA(19,4)
* (19,4) (FG) Blue
         DC    X'2842F1'
         DC    C'::::'
         DC    13C'c'
         DC    C'd'
         DC    X'11D6F5'    SBA(19,22)
* (19,22) (FG) Cyan
         DC    X'2842F5'
         DC    C'o'
         DC    X'11D6F6'    SBA(19,23)
* (19,23) (FG) White
         DC    X'2842F7'
         DC    C':'
         DC    X'11D6F7'    SBA(19,24)
* (19,24) (FG) Cyan
         DC    X'2842F5'
         DC    C'x'
         DC    X'11D6F8'    SBA(19,25)
* (19,25) (FG) Blue
         DC    X'2842F1'
         DC    C'd'
         DC    19C'c'
         DC    11C':'
         DC    C';'
         DC    X'11D7D8'    SBA(19,57)
* (19,57) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'11D7D9'    SBA(19,58)
* (19,58) Normal Display
         DC    X'280000'
         DC    C'   '
         DC    X'11D7F3'    SBA(20,4)
* (20,4) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    X'11D7F4'    SBA(20,5)
* (20,5) (FG) Blue
         DC    X'2842F1'
         DC    C';'
         DC    5C':'
         DC    5C'c'
         DC    5C':'
         DC    C'lo'
         DC    X'11D8C6'    SBA(20,23)
* (20,23) (FG) Cyan
         DC    X'2842F5'
         DC    C'l'
         DC    X'11D8C7'    SBA(20,24)
* (20,24) (FG) Blue
         DC    X'2842F1'
         DC    C'ol'
         DC    13C'c'
         DC    15C':'
         DC    C';'
         DC    X'11D8E6'    SBA(20,55)
* (20,55) (FG) Cyan
         DC    X'2842F5'
         DC    C','
         DC    X'11D8E7'    SBA(20,56)
* (20,56) (FG) White
         DC    X'2842F7'
         DC    X'7D'
         DC    X'11D8E8'    SBA(20,57)
* (20,57) Normal Display
         DC    X'280000'
         DC    C'    '
         DC    X'11D9C4'    SBA(21,5)
* (21,5) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    C','
         DC    X'11D9C6'    SBA(21,7)
* (21,7) (FG) Cyan
         DC    X'2842F5'
         DC    C'c'
         DC    5C'l'
         DC    C'ooxxkO0'
         DC    X'11D9D3'    SBA(21,20)
* (21,20) (FG) Blue
         DC    X'2842F1'
         DC    C'o'
         DC    13C'c'
         DC    18C':'
         DC    C';'
         DC    X'11D9F4'    SBA(21,53)
* (21,53) (FG) White
         DC    X'2842F7'
         DC    C','
         DC    X'7D'
         DC    X'11D9F6'    SBA(21,55)
* (21,55) Normal Display
         DC    X'280000'
         DC    6C' '
         DC    X'115AD6'    SBA(22,7)
* (22,7) Bold/Intense
         DC    X'2841F8'
         DC    C','
         DC    X'115AD7'    SBA(22,8)
* (22,8) (FG) Cyan
         DC    X'2842F5'
         DC    C'ok'
         DC    5C'K'
         DC    5C'X'
         DC    C'K'
         DC    X'115AE4'    SBA(22,21)
* (22,21) (FG) Blue
         DC    X'2842F1'
         DC    C'x'
         DC    5C'c'
         DC    21C':'
         DC    C';;'
         DC    X'115BC1'    SBA(22,50)
* (22,50) (FG) White
         DC    X'2842F7'
         DC    C','
         DC    X'7D'
         DC    X'115BC3'    SBA(22,52)
* (22,52) Normal Display
         DC    X'280000'
         DC    C'    '
         DC    X'115BC7'    SBA(22,56)
* (22,56) Bold/Intense (FG) Cyan
         DC    X'2841F82842F5'
         DC    C'    Logon:'
         DC    X'115BD1'    SBA(22,66)
* (22,66) Normal Display
         DC    X'280000'
         DC    8C' '
         DC    X'115BE8'    SBA(23,9)
* (23,9) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    C':'
         DC    X'115B6A'    SBA(23,11)
* (23,11) (FG) Cyan
         DC    X'2842F5'
         DC    C'dO'
         DC    9C'K'
         DC    C'O'
         DC    X'115BF6'    SBA(23,23)
* (23,23) (FG) Blue
         DC    X'2842F1'
         DC    C'o'
         DC    20C':'
         DC    C';;;'
         DC    X'115C4E'    SBA(23,47)
* (23,47) (FG) White
         DC    X'2842F7'
         DC    C','
         DC    X'115C4F'    SBA(23,48)
* (23,48) Normal Display
         DC    X'280000'
         DC    11C' '
         DC    X'115C7B'    SBA(24,12)
* (24,12) Bold/Intense
         DC    X'2841F8'
         DC    X'7D'
         DC    C';l'
         DC    X'115C7E'    SBA(24,15)
* (24,15) (FG) Cyan
         DC    X'2842F5'
         DC    C'dkO0'
         DC    5C'K'
         DC    C'O'
         DC    X'115DC8'    SBA(24,25)
* (24,25) (FG) Blue
         DC    X'2842F1'
         DC    C'dl'
         DC    11C':'
         DC    C';;;'
         DC    X'115DD8'    SBA(24,41)
* (24,41) (FG) Cyan
         DC    X'2842F5'
         DC    C','
         DC    X'115DD9'    SBA(24,42)
* (24,42) (FG) White
         DC    X'2842F7'
         DC    C','
         DC    X'7D'
         DC    X'115D5B'    SBA(24,44)
* (24,44) Normal Display
         DC    X'280000'
* Insert Cursor and unprotected field
         DC    X'115BD2'         SBA(22,67)
         DC    X'2902C0C842F7'         SFE, UNPROTECTED, WHITE
         DC    X'13'                   INSERT CURSOR
         DC    13C' '
         DC    X'280000'
         DC    X'1DF8'     SF (PROT,HIGH INTENSITY)
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
         COPY DOCKER                      , logon screen copy book      66810010
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