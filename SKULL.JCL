//AWESOME  JOB  (SETUP),
//             'Build Netsol',
//             CLASS=A,
//             MSGCLASS=X,
//             MSGLEVEL=(1,1)
//********************************************************************
//*
//* Desc: Build new NETSOL logon screen: SKULL
//* Date: 03-06-2021
//* Built using Soldier of FORTRANs ANSi to EBCDiC builder
//*
//* Original ANSi File:   skull.ans
//* Original ANSi Artist: Anonymous
//* Original ANSi Date:   20210603
//*
//* Command Line Args: --sysgen skull.ans --file SKULL.JCL --ROW 11 
//*                    --COL 43 --extended --member SKULL 
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
 DELETE SYS1.UMODMAC(SKULL)
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
./ ADD NAME=SKULL
* NETSOL screen created by ANSi2EBCDiC.py
         PUSH  PRINT
         PRINT OFF
EGMSG    DS 0C EGMSG
         $WCC  (RESETKBD,MDT)
         $SBA  (1,1)
* (1,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    8C' '
         $SBA  (1,9)
* (1,9) Bold/Intense 
         DC    X'2842F7'
         DC    C',ss'
         $SBA  (1,12)
* (1,12) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'S'
         DC    8C'$'
         $SBA  (1,21)
* (1,21) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$$$Sss,'
         $SBA  (1,28)
* (1,28) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'    '
         $SBA  (2,5)
* (2,5) Bold/Intense 
         DC    X'2842F7'
         DC    C'sS$$$'
         $SBA  (2,10)
* (2,10) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    15C'$'
         $SBA  (2,25)
* (2,25) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    5C'$'
         DC    C'Ss'
         $SBA  (2,32)
* (2,32) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (3,3)
* (3,3) Bold/Intense 
         DC    X'2842F7'
         DC    C's$$'
         $SBA  (3,6)
* (3,6) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    22C'$'
         $SBA  (3,28)
* (3,28) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    5C'$'
         DC    C's'
         $SBA  (3,34)
* (3,34) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (4,2)
* (4,2) Bold/Intense 
         DC    X'2842F7'
         DC    C'$$'
         $SBA  (4,4)
* (4,4) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    27C'$'
         $SBA  (4,31)
* (4,31) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$$$$'
         $SBA  (4,35)
* (4,35) Normal Display (FG) White 
         DC    X'2800002842F7'
         $SBA  (5,1)
* (5,1) Bold/Intense 
         DC    X'2842F7'
         DC    C'l$'
         $SBA  (5,3)
* (5,3) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    29C'$'
         $SBA  (5,32)
* (5,32) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$$$l'
         $SBA  (5,36)
* (5,36) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (5,37)
* (5,37) (FG) Red 
         DC    X'2842F2'
         DC    43X'9A'
         $SBA  (5,80)
* (5,80) (FG) White 
         DC    X'2842FE'
         $SBA  (6,1)
* (6,1) Bold/Intense 
         DC    X'2842F7'
         DC    X'79'
         DC    C'S$'
         $SBA  (6,4)
* (6,4) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'$$$$SSS'
         DC    15C'$'
         DC    C'SSS$$'
         $SBA  (6,31)
* (6,31) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$$$S'
         DC    X'7D'
         $SBA  (6,36)
* (6,36) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (6,37)
* (6,37) (FG) Red 
         DC    X'2842F2'
         DC    43C'$'
         $SBA  (6,80)
* (6,80) (FG) White 
         DC    X'2842FE'
         $SBA  (7,1)
* (7,1) (FG) Red 
         DC    X'2842F2'
         DC    C's,'
         $SBA  (7,3)
* (7,3) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    X'799A'
         DC    C'S'
         $SBA  (7,6)
* (7,6) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    X'9A7D'
         DC    C'sss'
         DC    X'799A'
         DC    C'S'
         DC    9C'$'
         DC    C'S'
         DC    X'9A7D'
         DC    C's'
         $SBA  (7,27)
* (7,27) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'ss'
         $SBA  (7,29)
* (7,29) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    X'79'
         $SBA  (7,30)
* (7,30) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    X'9A'
         DC    C'S'
         DC    X'9A7D'
         $SBA  (7,34)
* (7,34) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C',S'
         DC    44C'$'
         $SBA  (7,80)
* (7,80) (FG) White 
         DC    X'2842FE'
         $SBA  (8,1)
* (8,1) (FG) Red 
         DC    X'2842F2'
         DC    C'$$'
         DC    X'9A'
         $SBA  (8,4)
* (8,4) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (8,5)
* (8,5) Bold/Intense 
         DC    X'2842F7'
         DC    C's'
         $SBA  (8,6)
* (8,6) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    5C'$'
         DC    C'Ss'
         DC    X'799A'
         DC    C'S'
         DC    5C'$'
         DC    C'S'
         DC    X'9A7D'
         DC    C's$$$'
         $SBA  (8,28)
* (8,28) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$$$s'
         $SBA  (8,32)
* (8,32) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (8,33)
* (8,33) (FG) Red 
         DC    X'2842F2'
         DC    X'9A'
         DC    9C'$'
         DC    C'S'
         DC    34X'9A'
         DC    C'S$'
         $SBA  (8,80)
* (8,80) (FG) White 
         DC    X'2842FE'
         $SBA  (9,1)
* (9,1) (FG) Red 
         DC    X'2842F2'
         DC    C'$$'
         $SBA  (9,3)
* (9,3) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (9,4)
* (9,4) Bold/Intense 
         DC    X'2842F7'
         DC    C'l'
         $SBA  (9,5)
* (9,5) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    8C'$'
         DC    C'S'
         $SBA  (9,14)
* (9,14) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C's,'
         $SBA  (9,16)
* (9,16) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    X'9A'
         DC    C'$$$'
         DC    X'9A'
         $SBA  (9,21)
* (9,21) Bold/Intense 
         DC    X'2842F7'
         DC    C',s'
         $SBA  (9,23)
* (9,23) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'S'
         DC    7C'$'
         $SBA  (9,31)
* (9,31) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$l'
         $SBA  (9,33)
* (9,33) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (9,34)
* (9,34) (FG) Red 
         DC    X'2842F2'
         DC    9C'$'
         $SBA  (9,43)
* (9,43) (FG) White 
         DC    X'2842FE'
         DC    10C' '
         $SBA  (9,53)
* (9,53) Bold/Intense (FG) Magenta 
         DC    X'2842F3'
         DC    C'MVS 3.8j SYSGEN'
         $SBA  (9,68)
* (9,68) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    11C' '
         $SBA  (9,79)
* (9,79) (FG) Red 
         DC    X'2842F2'
         DC    C'$'
         $SBA  (9,80)
* (9,80) (FG) White 
         DC    X'2842FE'
         $SBA  (10,1)
* (10,1) (FG) Red 
         DC    X'2842F2'
         DC    C'$$,'
         $SBA  (10,4)
* (10,4) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    X'9A'
         DC    C'$'
         $SBA  (10,6)
* (10,6) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'$S'
         DC    X'9A'
         DC    C'"""'
         DC    X'9A'
         DC    C'S$$'
         $SBA  (10,16)
* (10,16) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$s'
         $SBA  (10,18)
* (10,18) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (10,19)
* (10,19) Bold/Intense 
         DC    X'2842F7'
         DC    C's$'
         $SBA  (10,21)
* (10,21) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'$$S'
         DC    X'9A'
         DC    C'"""'
         DC    X'9A'
         DC    C'S$'
         $SBA  (10,31)
* (10,31) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         DC    X'9A'
         $SBA  (10,33)
* (10,33) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C','
         DC    9C'$'
         $SBA  (10,43)
* (10,43) (FG) White 
         DC    X'2842FE'
         DC    36C' '
         $SBA  (10,79)
* (10,79) (FG) Red 
         DC    X'2842F2'
         DC    C'$'
         $SBA  (10,80)
* (10,80) (FG) White 
         DC    X'2842FE'
         $SBA  (11,1)
* (11,1) (FG) Red 
         DC    X'2842F2'
         DC    C'$$$$'
         $SBA  (11,5)
* (11,5) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (11,6)
* (11,6) Bold/Intense 
         DC    X'2842F7'
         DC    C'$'
         $SBA  (11,7)
* (11,7) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'l   '
         $SBA  (11,11)
* (11,11) (FG) Red 
         DC    X'2842F2'
         DC    C',s,'
         $SBA  (11,14)
* (11,14) (FG) White 
         DC    X'2842FE'
         DC    X'799A'
         DC    C'S'
         $SBA  (11,17)
* (11,17) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    X'9A'
         $SBA  (11,18)
* (11,18) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (11,19)
* (11,19) Bold/Intense 
         DC    X'2842F7'
         DC    X'9A'
         $SBA  (11,20)
* (11,20) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'S'
         DC    X'9A7D'
         $SBA  (11,23)
* (11,23) (FG) Red 
         DC    X'2842F2'
         DC    C',s,'
         $SBA  (11,26)
* (11,26) (FG) White 
         DC    X'2842FE'
         DC    C'   l'
         $SBA  (11,30)
* (11,30) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (11,31)
* (11,31) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (11,32)
* (11,32) (FG) Red 
         DC    X'2842F2'
         DC    11C'$'
         $SBA  (11,43)
* (11,43) (FG) White 
         DC    X'2842FE'
         DC    36C' '
         $SBA  (11,79)
* (11,79) (FG) Red 
         DC    X'2842F2'
         DC    C'$'
         $SBA  (11,80)
* (11,80) (FG) White 
         DC    X'2842FE'
         $SBA  (12,1)
* (12,1) (FG) Red 
         DC    X'2842F2'
         DC    C'S'
         DC    X'9A7D'
         $SBA  (12,4)
* (12,4) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C'sS'
         $SBA  (12,6)
* (12,6) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'$$,  '
         $SBA  (12,11)
* (12,11) (FG) Red 
         DC    X'2842F2'
         DC    X'799A7D'
         $SBA  (12,14)
* (12,14) (FG) White 
         DC    X'2842FE'
         DC    C' ,ssgss, '
         $SBA  (12,23)
* (12,23) (FG) Red 
         DC    X'2842F2'
         DC    X'799A7D'
         $SBA  (12,26)
* (12,26) (FG) White 
         DC    X'2842FE'
         DC    C'  ,$'
         $SBA  (12,30)
* (12,30) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$Ss'
         $SBA  (12,33)
* (12,33) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    X'799A'
         DC    C'S'
         DC    7C'$'
         $SBA  (12,43)
* (12,43) (FG) White 
         DC    X'2842FE'
         DC    36C' '
         $SBA  (12,79)
* (12,79) (FG) Red 
         DC    X'2842F2'
         DC    C'$'
         $SBA  (12,80)
* (12,80) (FG) White 
         DC    X'2842FE'
         $SBA  (13,1)
* (13,1) (FG) Red 
         DC    X'2842F2'
         DC    C'$'
         $SBA  (13,2)
* (13,2) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (13,3)
* (13,3) Bold/Intense 
         DC    X'2842F7'
         DC    C'l'
         $SBA  (13,4)
* (13,4) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    5C'$'
         DC    C'Sssss$'
         DC    X'7D'
         DC    C'  '
         DC    X'9A'
         DC    C'  '
         DC    X'79'
         DC    C'SssssS$$$'
         $SBA  (13,31)
* (13,31) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$$S'
         $SBA  (13,34)
* (13,34) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (13,35)
* (13,35) (FG) Red 
         DC    X'2842F2'
         DC    8C'$'
         DC    C'S'
         DC    34C's'
         DC    C'S$'
         $SBA  (13,80)
* (13,80) (FG) White 
         DC    X'2842FE'
         $SBA  (14,1)
* (14,1) (FG) Red 
         DC    X'2842F2'
         DC    C'Ss'
         $SBA  (14,3)
* (14,3) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    X'79'
         DC    C'S'
         $SBA  (14,5)
* (14,5) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    X'9A9A'
         DC    C'S'
         DC    7C'$'
         DC    C'SssSssS'
         DC    7C'$'
         $SBA  (14,29)
* (14,29) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'S'
         DC    X'9A9A'
         DC    C'S'
         DC    X'7D'
         $SBA  (14,34)
* (14,34) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C'sS'
         DC    44C'$'
         $SBA  (14,80)
* (14,80) (FG) White 
         DC    X'2842FE'
         $SBA  (15,1)
* (15,1) (FG) Red 
         DC    X'2842F2'
         DC    C'$$'
         $SBA  (15,3)
* (15,3) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C' s'
         $SBA  (15,5)
* (15,5) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'Ss'
         DC    X'79'
         DC    C'S'
         DC    X'9A799A9A'
         DC    10C'$'
         DC    C'S'
         DC    X'9A9A7D9A'
         $SBA  (15,28)
* (15,28) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'S'
         DC    X'7D'
         $SBA  (15,30)
* (15,30) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'sS'
         $SBA  (15,32)
* (15,32) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C's'
         $SBA  (15,33)
* (15,33) (FG) White 
         DC    X'2842F7'
         DC    C' '
         $SBA  (15,34)
* (15,34) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    46C'$'
         $SBA  (15,80)
* (15,80) (FG) White 
         DC    X'2842FE'
         $SBA  (16,1)
* (16,1) (FG) Red 
         DC    X'2842F2'
         DC    C'$$,'
         $SBA  (16,4)
* (16,4) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    X'79'
         DC    C'S'
         $SBA  (16,6)
* (16,6) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'S '
         $SBA  (16,8)
* (16,8) Bold/Intense 
         DC    X'2842F7'
         DC    C'sS'
         $SBA  (16,10)
* (16,10) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'$s '
         $SBA  (16,13)
* (16,13) Bold/Intense 
         DC    X'2842F7'
         DC    C'S'
         $SBA  (16,14)
* (16,14) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C','
         DC    X'799A'
         DC    C'S$S'
         DC    X'9A7D'
         DC    C','
         $SBA  (16,23)
* (16,23) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'S'
         $SBA  (16,24)
* (16,24) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' s$S'
         $SBA  (16,28)
* (16,28) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C's'
         $SBA  (16,29)
* (16,29) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' SS'
         $SBA  (16,32)
* (16,32) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    X'7D'
         $SBA  (16,33)
* (16,33) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C','
         DC    46C'$'
         $SBA  (16,80)
* (16,80) (FG) White 
         DC    X'2842FE'
         $SBA  (17,1)
* (17,1) (FG) Red 
         DC    X'2842F2'
         DC    C'$$S,'
         $SBA  (17,5)
* (17,5) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    X'799A'
         DC    C','
         DC    X'9A'
         $SBA  (17,9)
* (17,9) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'$$S S$$Ss'
         $SBA  (17,18)
* (17,18) Bold/Intense 
         DC    X'2842F7'
         DC    C' '
         $SBA  (17,19)
* (17,19) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'sS$$'
         $SBA  (17,23)
* (17,23) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'S'
         $SBA  (17,24)
* (17,24) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' S$$'
         $SBA  (17,28)
* (17,28) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    X'9A'
         DC    C','
         DC    X'9A7D'
         $SBA  (17,32)
* (17,32) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C',S'
         DC    46C'$'
         $SBA  (17,80)
* (17,80) (FG) White 
         DC    X'2842FE'
         $SBA  (18,1)
* (18,1) (FG) Red 
         DC    X'2842F2'
         DC    5C'$'
         $SBA  (18,6)
* (18,6) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C' s'
         $SBA  (18,8)
* (18,8) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         DC    X'799A'
         DC    C'S,'
         DC    X'9A'
         DC    C'S$S'
         DC    X'7D'
         $SBA  (18,18)
* (18,18) (FG) Red 
         DC    X'2842F2'
         DC    C's'
         $SBA  (18,19)
* (18,19) (FG) White 
         DC    X'2842FE'
         DC    X'79'
         DC    C'S$S'
         DC    X'9A'
         DC    C',S'
         DC    X'9A'
         $SBA  (18,27)
* (18,27) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    X'7D'
         $SBA  (18,28)
* (18,28) (FG) White 
         DC    X'2842F7'
         DC    C' '
         $SBA  (18,29)
* (18,29) (FG) Grey 
         DC    X'2842FE'
         DC    C's'
         $SBA  (18,30)
* (18,30) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (18,31)
* (18,31) (FG) Red 
         DC    X'2842F2'
         DC    49C'$'
         $SBA  (18,80)
* (18,80) (FG) White 
         DC    X'2842FE'
         $SBA  (19,1)
* (19,1) (FG) Red 
         DC    X'2842F2'
         DC    5C'$'
         $SBA  (19,6)
* (19,6) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C' $ '
         $SBA  (19,9)
* (19,9) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C'$s,s,'
         $SBA  (19,14)
* (19,14) (FG) White 
         DC    X'2842FE'
         DC    X'799A'
         DC    C'S,'
         $SBA  (19,18)
* (19,18) (FG) Red 
         DC    X'2842F2'
         DC    X'9A'
         $SBA  (19,19)
* (19,19) (FG) White 
         DC    X'2842FE'
         DC    C',S'
         DC    X'9A7D'
         $SBA  (19,23)
* (19,23) (FG) Red 
         DC    X'2842F2'
         DC    C',s,s$'
         $SBA  (19,28)
* (19,28) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C' '
         $SBA  (19,29)
* (19,29) (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (19,30)
* (19,30) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (19,31)
* (19,31) (FG) Red 
         DC    X'2842F2'
         DC    49C'$'
         $SBA  (19,80)
* (19,80) (FG) White 
         DC    X'2842FE'
         $SBA  (20,1)
* (20,1) (FG) Red 
         DC    X'2842F2'
         DC    5C'$'
         DC    C' '
         $SBA  (20,7)
* (20,7) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    X'7D'
         DC    C',s'
         DC    X'7D'
         $SBA  (20,11)
* (20,11) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C',ss$Ss*S*sS$ss,'
         $SBA  (20,26)
* (20,26) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    X'79'
         DC    C's,'
         DC    X'79'
         $SBA  (20,30)
* (20,30) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' '
         DC    49C'$'
         $SBA  (20,80)
* (20,80) (FG) White 
         DC    X'2842FE'
         $SBA  (21,1)
* (21,1) (FG) Red 
         DC    X'2842F2'
         DC    5C'$'
         DC    X'7D'
         $SBA  (21,7)
* (21,7) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C','
         $SBA  (21,8)
* (21,8) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'SS'
         $SBA  (21,10)
* (21,10) (FG) Red 
         DC    X'2842F2'
         DC    X'7D'
         $SBA  (21,11)
* (21,11) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C','
         $SBA  (21,12)
* (21,12) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C's'
         DC    X'7D'
         $SBA  (21,14)
* (21,14) (FG) Red 
         DC    X'2842F2'
         DC    X'9A'
         $SBA  (21,15)
* (21,15) (FG) White 
         DC    X'2842FE'
         DC    C',s'
         DC    X'7D'
         $SBA  (21,18)
* (21,18) (FG) Red 
         DC    X'2842F2'
         DC    C's'
         $SBA  (21,19)
* (21,19) (FG) White 
         DC    X'2842FE'
         DC    X'79'
         DC    C's,'
         $SBA  (21,22)
* (21,22) (FG) Red 
         DC    X'2842F2'
         DC    X'9A'
         $SBA  (21,23)
* (21,23) (FG) White 
         DC    X'2842FE'
         DC    X'79'
         DC    C's'
         $SBA  (21,25)
* (21,25) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C','
         $SBA  (21,26)
* (21,26) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    X'79'
         $SBA  (21,27)
* (21,27) (FG) White 
         DC    X'2842FE'
         DC    C'S'
         $SBA  (21,28)
* (21,28) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'S,'
         $SBA  (21,30)
* (21,30) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    X'79'
         DC    46C'$'
         $SBA  (21,77)
* (21,77) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'SG'
         $SBA  (21,79)
* (21,79) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C'$'
         $SBA  (21,80)
* (21,80) (FG) White 
         DC    X'2842FE'
         $SBA  (22,1)
* (22,1) (FG) Red 
         DC    X'2842F2'
         DC    5C's'
         $SBA  (22,6)
* (22,6) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C' '
         DC    X'9A'
         $SBA  (22,8)
* (22,8) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'S'
         DC    X'9A'
         $SBA  (22,10)
* (22,10) Bold/Intense 
         DC    X'2842F7'
         DC    C','
         $SBA  (22,11)
* (22,11) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'SS'
         $SBA  (22,13)
* (22,13) (FG) Red 
         DC    X'2842F2'
         DC    X'7D'
         $SBA  (22,14)
* (22,14) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C','
         $SBA  (22,15)
* (22,15) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'SS '
         $SBA  (22,18)
* (22,18) (FG) Red 
         DC    X'2842F2'
         DC    C'$'
         $SBA  (22,19)
* (22,19) (FG) White 
         DC    X'2842FE'
         DC    C' SS'
         $SBA  (22,22)
* (22,22) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C','
         $SBA  (22,23)
* (22,23) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    X'79'
         $SBA  (22,24)
* (22,24) (FG) White 
         DC    X'2842FE'
         DC    C'SS'
         $SBA  (22,26)
* (22,26) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C','
         $SBA  (22,27)
* (22,27) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    X'9A'
         DC    C'S'
         $SBA  (22,29)
* (22,29) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    X'9A'
         $SBA  (22,30)
* (22,30) (FG) White 
         DC    X'2842F7'
         DC    C' '
         $SBA  (22,31)
* (22,31) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    49C's'
         $SBA  (22,80)
* (22,80) (FG) White 
         DC    X'2842FE'
         DC    7C' '
         $SBA  (23,8)
* (23,8) Bold/Intense 
         DC    X'2842F7'
         DC    C's,'
         DC    X'9A'
         $SBA  (23,11)
* (23,11) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'S'
         DC    X'9A'
         $SBA  (23,13)
* (23,13) Bold/Intense 
         DC    X'2842F7'
         DC    C' '
         DC    X'9A'
         $SBA  (23,15)
* (23,15) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'S'
         DC    X'9A'
         DC    C',s,'
         DC    X'9A'
         DC    C'S'
         $SBA  (23,22)
* (23,22) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    X'9A'
         $SBA  (23,23)
* (23,23) (FG) White 
         DC    X'2842F7'
         DC    C' '
         $SBA  (23,24)
* (23,24) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    X'9A'
         DC    C'S'
         $SBA  (23,26)
* (23,26) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    X'9A'
         DC    C',s'
         DC    X'9A'
         $SBA  (23,30)
* (23,30) (FG) White 
         DC    X'2842F7'
         $SBA  (24,1)
* (24,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    7C' '
         $SBA  (24,8)
* (24,8) Bold/Intense 
         DC    X'2842F7'
         DC    X'799A'
         $SBA  (24,10)
* (24,10) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'SsS$SsS$$$SsS$'
         $SBA  (24,24)
* (24,24) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'SsS'
         DC    X'9A7D'
         $SBA  (24,29)
* (24,29) Normal Display (FG) White 
         DC    X'2800002842F7'
* Insert Cursor and unprotected field
         $SBA  (11,43)
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
         COPY SKULL                       , logon screen copy book      66810010
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