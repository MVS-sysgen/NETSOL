//AWESOME  JOB  (SETUP),
//             'Build Netsol',
//             CLASS=A,
//             MSGCLASS=X,
//             MSGLEVEL=(1,1)
//********************************************************************
//*
//* Desc: Build new NETSOL logon screen: WELCOME
//* Date: 03-06-2021
//* Built using Soldier of FORTRANs ANSi to EBCDiC builder
//*
//* Original ANSi File:   welcome.ans
//* Original ANSi Artist: Anonymous
//* Original ANSi Date:   20210603
//*
//* Command Line Args: --sysgen welcome.ans --file 
//*                    /home/phil/DEV/SYSGEN/NETSOL/WELCOME.JCL --ROW 
//*                    19 --COL 58 --extended --member WELCOME 
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
 DELETE SYS1.UMODMAC(WELCOME)
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
./ ADD NAME=WELCOME
* NETSOL screen created by ANSi2EBCDiC.py
         PUSH  PRINT
         PRINT OFF
EGMSG    DS 0C EGMSG
         $WCC  (RESETKBD,MDT)
         $SBA  (1,1)
* (1,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    6C' '
         $SBA  (2,7)
* (2,7) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'.'
         $SBA  (2,8)
* (2,8) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C',on'
         $SBA  (2,11)
* (2,11) Bold/Intense 
         DC    X'2842FD'
         DC    C'%#'
         $SBA  (2,13)
* (2,13) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    X'505050'
         DC    C'$'
         $SBA  (2,17)
* (2,17) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (2,18)
* (2,18) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$'
         $SBA  (2,20)
* (2,20) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (2,21)
* (2,21) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (2,22)
* (2,22) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (2,23)
* (2,23) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    X'5050'
         DC    C'#%,.'
         $SBA  (2,29)
* (2,29) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    7C' '
         DC    C'b,._'
         DC    9C' '
         DC    C'_.,d'
         $SBA  (2,53)
* (2,53) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (3,4)
* (3,4) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C','
         $SBA  (3,5)
* (3,5) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'd'
         $SBA  (3,6)
* (3,6) Bold/Intense 
         DC    X'2842FD'
         DC    C'P'
         $SBA  (3,7)
* (3,7) (FG) Blue 
         DC    X'2842F1'
         DC    X'9A79'
         $SBA  (3,9)
* (3,9) (FG) White 
         DC    X'2842F7'
         DC    6C' '
         $SBA  (3,15)
* (3,15) (FG) Blue 
         DC    X'2842F1'
         DC    X'79'
         DC    C'Y'
         $SBA  (3,17)
* (3,17) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$$$'
         $SBA  (3,21)
* (3,21) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'P'
         DC    X'9079'
         $SBA  (3,24)
* (3,24) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (3,25)
* (3,25) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    X'7979'
         $SBA  (3,27)
* (3,27) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    X'9A'
         DC    C'Y,'
         $SBA  (3,30)
* (3,30) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    6C' '
         DC    C'Y'
         DC    6C'$'
         DC    C'P Y'
         DC    6C'$'
         DC    C'P'
         $SBA  (3,53)
* (3,53) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (4,4)
* (4,4) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'd'
         $SBA  (4,5)
* (4,5) (FG) Blue 
         DC    X'2842F1'
         DC    X'7D'
         $SBA  (4,6)
* (4,6) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    11C' '
         $SBA  (4,17)
* (4,17) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'Y'
         $SBA  (4,18)
* (4,18) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$$'
         $SBA  (4,21)
* (4,21) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    X'7D'
         $SBA  (4,22)
* (4,22) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    7C' '
         $SBA  (4,29)
* (4,29) (FG) Turquoise 
         DC    X'2842F5'
         DC    X'79'
         DC    C'b'
         $SBA  (4,31)
* (4,31) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    6C' '
         DC    C'Y$$$$P . Y$$$$P'
         $SBA  (4,52)
* (4,52) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (5,4)
* (5,4) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'$'
         $SBA  (5,5)
* (5,5) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    12C' '
         $SBA  (5,17)
* (5,17) (FG) Blue 
         DC    X'2842F1'
         DC    C';'
         $SBA  (5,18)
* (5,18) (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (5,19)
* (5,19) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (5,20)
* (5,20) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (5,21)
* (5,21) (FG) White 
         DC    X'2842F7'
         DC    9C' '
         $SBA  (5,30)
* (5,30) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    X'79'
         DC    C';'
         $SBA  (5,32)
* (5,32) (FG) White 
         DC    X'2842FE'
         DC    6C' '
         $SBA  (5,38)
* (5,38) Bold/Intense 
         DC    X'2842F7'
         DC    C'Y$$P,d$b,Y$$P'
         $SBA  (5,51)
* (5,51) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (6,4)
* (6,4) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (6,5)
* (6,5) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    12C' '
         $SBA  (6,17)
* (6,17) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'l'
         $SBA  (6,18)
* (6,18) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$'
         $SBA  (6,20)
* (6,20) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$;'
         $SBA  (6,22)
* (6,22) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    9C' '
         $SBA  (6,31)
* (6,31) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'i'
         $SBA  (6,32)
* (6,32) (FG) White 
         DC    X'2842FE'
         DC    7C' '
         $SBA  (6,39)
* (6,39) Bold/Intense 
         DC    X'2842F7'
         DC    C'Y'
         DC    9C'$'
         DC    C'P'
         $SBA  (6,50)
* (6,50) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (7,3)
* (7,3) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'.'
         $SBA  (7,4)
* (7,4) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (7,5)
* (7,5) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'.'
         $SBA  (7,6)
* (7,6) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    10C' '
         $SBA  (7,16)
* (7,16) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'.'
         $SBA  (7,17)
* (7,17) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'd$'
         $SBA  (7,19)
* (7,19) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (7,20)
* (7,20) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (7,21)
* (7,21) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'b'
         $SBA  (7,22)
* (7,22) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    9C' '
         $SBA  (7,31)
* (7,31) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'$'
         $SBA  (7,32)
* (7,32) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    8C' '
         DC    C'Y$P'
         DC    X'79'
         DC    C' '
         DC    X'79'
         DC    C'Y$P'
         $SBA  (7,49)
* (7,49) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (7,51)
* (7,51) Bold/Intense 
         DC    X'2842F7'
         DC    C'E'
         $SBA  (7,52)
* (7,52) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (7,54)
* (7,54) Bold/Intense 
         DC    X'2842F7'
         DC    C'L'
         $SBA  (7,55)
* (7,55) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (7,57)
* (7,57) Bold/Intense 
         DC    X'2842F7'
         DC    C'C'
         $SBA  (7,58)
* (7,58) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (7,60)
* (7,60) Bold/Intense 
         DC    X'2842F7'
         DC    C'O'
         $SBA  (7,61)
* (7,61) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (7,63)
* (7,63) Bold/Intense 
         DC    X'2842F7'
         DC    C'M'
         $SBA  (7,64)
* (7,64) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (7,66)
* (7,66) Bold/Intense 
         DC    X'2842F7'
         DC    C'E'
         $SBA  (7,67)
* (7,67) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (8,3)
* (8,3) (FG) Turquoise 
         DC    X'2842F5'
         DC    C';'
         $SBA  (8,4)
* (8,4) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (8,5)
* (8,5) (FG) Blue 
         DC    X'2842F1'
         DC    C'b'
         $SBA  (8,6)
* (8,6) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    8C' '
         $SBA  (8,14)
* (8,14) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'.'
         $SBA  (8,15)
* (8,15) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'd"'
         DC    X'9A'
         DC    C'Y$'
         $SBA  (8,20)
* (8,20) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$$'
         $SBA  (8,22)
* (8,22) (FG) Grey 
         DC    X'2842FE'
         DC    C'b'
         $SBA  (8,23)
* (8,23) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    7C' '
         $SBA  (8,30)
* (8,30) (FG) Turquoise 
         DC    X'2842F5'
         DC    C';$'
         $SBA  (8,32)
* (8,32) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C';'
         $SBA  (8,33)
* (8,33) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    26C' '
         $SBA  (8,59)
* (8,59) Bold/Intense (FG) Yellow 
         DC    X'2842F6'
         DC    C'weary traveller'
         $SBA  (8,74)
* (8,74) Normal Display (FG) White 
         DC    X'2800002842F7'
         $SBA  (9,1)
* (9,1) Bold/Intense 
         DC    X'2842F7'
         DC    C'  '
         $SBA  (9,3)
* (9,3) (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'd'
         $SBA  (9,4)
* (9,4) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (9,5)
* (9,5) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (9,6)
* (9,6) (FG) Blue 
         DC    X'2842F1'
         DC    C'bo,.'
         $SBA  (9,10)
* (9,10) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'.,xd!,d'
         $SBA  (9,17)
* (9,17) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'b'
         $SBA  (9,18)
* (9,18) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    X'79'
         DC    C'Y'
         $SBA  (9,20)
* (9,20) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$$'
         $SBA  (9,22)
* (9,22) (FG) Grey 
         DC    X'2842FE'
         DC    C'$b'
         $SBA  (9,24)
* (9,24) (FG) Blue 
         DC    X'2842F1'
         DC    C'.'
         DC    X'79'
         DC    C'bo,'
         $SBA  (9,29)
* (9,29) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'm'
         $SBA  (9,30)
* (9,30) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (9,31)
* (9,31) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (9,32)
* (9,32) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$b'
         $SBA  (9,34)
* (9,34) Normal Display (FG) White 
         DC    X'2800002842F7'
         $SBA  (10,1)
* (10,1) Bold/Intense 
         DC    X'2842F7'
         DC    C' '
         $SBA  (10,2)
* (10,2) (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'd'
         $SBA  (10,3)
* (10,3) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (10,4)
* (10,4) Bold/Intense 
         DC    X'2842FD'
         DC    C'$$$'
         $SBA  (10,7)
* (10,7) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    5C'$'
         $SBA  (10,12)
* (10,12) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (10,13)
* (10,13) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (10,14)
* (10,14) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (10,15)
* (10,15) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'd'
         $SBA  (10,16)
* (10,16) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (10,17)
* (10,17) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (10,18)
* (10,18) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'D'
         $SBA  (10,19)
* (10,19) (FG) Grey 
         DC    X'2842FE'
         DC    C'd'
         $SBA  (10,20)
* (10,20) (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (10,21)
* (10,21) (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (10,22)
* (10,22) (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (10,23)
* (10,23) (FG) Grey 
         DC    X'2842FE'
         DC    C'P'
         $SBA  (10,24)
* (10,24) (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (10,25)
* (10,25) (FG) Grey 
         DC    X'2842FE'
         DC    C';'
         $SBA  (10,26)
* (10,26) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    X'79'
         $SBA  (10,27)
* (10,27) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (10,28)
* (10,28) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (10,29)
* (10,29) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$$'
         $SBA  (10,31)
* (10,31) (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (10,32)
* (10,32) (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (10,33)
* (10,33) (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (10,34)
* (10,34) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (11,2)
* (11,2) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'Y$$'
         $SBA  (11,5)
* (11,5) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (11,6)
* (11,6) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$$'
         $SBA  (11,9)
* (11,9) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$$'
         $SBA  (11,11)
* (11,11) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (11,12)
* (11,12) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (11,13)
* (11,13) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$,'
         DC    X'79'
         $SBA  (11,16)
* (11,16) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    X'907D'
         $SBA  (11,18)
* (11,18) (FG) Grey 
         DC    X'2842FE'
         DC    C'"'
         $SBA  (11,19)
* (11,19) (FG) Blue 
         DC    X'2842F1'
         DC    X'9A'
         $SBA  (11,20)
* (11,20) (FG) Grey 
         DC    X'2842FE'
         DC    X'9A9A7D'
         $SBA  (11,23)
* (11,23) (FG) Blue 
         DC    X'2842F1'
         DC    C'"'
         $SBA  (11,24)
* (11,24) (FG) Grey 
         DC    X'2842FE'
         DC    X'79'
         DC    C'.'
         $SBA  (11,26)
* (11,26) (FG) Blue 
         DC    X'2842F1'
         DC    C'd'
         $SBA  (11,27)
* (11,27) (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (11,28)
* (11,28) (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (11,29)
* (11,29) (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (11,30)
* (11,30) (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (11,31)
* (11,31) (FG) Grey 
         DC    X'2842FE'
         DC    C'$$P'
         $SBA  (11,34)
* (11,34) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    6C' '
         $SBA  (11,40)
* (11,40) Bold/Intense 
         DC    X'2842F7'
         DC    C'You have stumbled across my mainframe'
         $SBA  (12,1)
* (12,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (12,3)
* (12,3) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    X'79'
         $SBA  (12,4)
* (12,4) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    X'90'
         $SBA  (12,5)
* (12,5) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    X'9A9A'
         DC    C'""'
         DC    X'79'
         $SBA  (12,10)
* (12,10) (FG) White 
         DC    X'2842F7'
         DC    C'  '
         $SBA  (12,12)
* (12,12) (FG) Light Turquoise 
         DC    X'2842FD'
         DC    X'79'
         $SBA  (12,13)
* (12,13) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'Y'
         $SBA  (12,14)
* (12,14) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (12,15)
* (12,15) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (12,16)
* (12,16) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'P'
         $SBA  (12,17)
* (12,17) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (12,18)
* (12,18) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'bo'
         $SBA  (12,20)
* (12,20) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'nn'
         $SBA  (12,22)
* (12,22) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'b'
         $SBA  (12,23)
* (12,23) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (12,24)
* (12,24) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'd$'
         $SBA  (12,26)
* (12,26) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'P'
         $SBA  (12,27)
* (12,27) (FG) Grey 
         DC    X'2842FE'
         DC    X'7979'
         $SBA  (12,29)
* (12,29) (FG) Blue 
         DC    X'2842F1'
         DC    X'A1'
         $SBA  (12,30)
* (12,30) (FG) Grey 
         DC    X'2842FE'
         DC    C'"'
         DC    X'9A'
         DC    C'"'
         $SBA  (12,33)
* (12,33) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    7C' '
         $SBA  (12,40)
* (12,40) Bold/Intense 
         DC    X'2842F7'
         DC    C'Take a load off, sit back  and wonder'
         $SBA  (12,77)
* (12,77) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    12C' '
         $SBA  (13,13)
* (13,13) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'j'
         $SBA  (13,14)
* (13,14) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (13,15)
* (13,15) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$;'
         $SBA  (13,17)
* (13,17) (FG) White 
         DC    X'2842F7'
         DC    C' '
         $SBA  (13,18)
* (13,18) (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (13,19)
* (13,19) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (13,20)
* (13,20) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (13,21)
* (13,21) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (13,22)
* (13,22) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (13,23)
* (13,23) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (13,24)
* (13,24) (FG) Turquoise 
         DC    X'2842F5'
         DC    C';'
         $SBA  (13,25)
* (13,25) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (13,26)
* (13,26) (FG) Grey 
         DC    X'2842FE'
         DC    X'AB'
         $SBA  (13,27)
* (13,27) (FG) White 
         DC    X'2842F7'
         DC    13C' '
         DC    C'at  all the  marvels that is '
         $SBA  (13,69)
* (13,69) (FG) Yellow 
         DC    X'2842F6'
         DC    C'MVS 3.8j'
         $SBA  (13,77)
* (13,77) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    12C' '
         $SBA  (14,13)
* (14,13) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'$$'
         $SBA  (14,15)
* (14,15) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (14,16)
* (14,16) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (14,17)
* (14,17) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'j$$'
         $SBA  (14,20)
* (14,20) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$$'
         $SBA  (14,23)
* (14,23) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'i'
         $SBA  (14,24)
* (14,24) (FG) White 
         DC    X'2842F7'
         DC    C' '
         $SBA  (14,25)
* (14,25) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (14,26)
* (14,26) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (14,27)
* (14,27) (FG) White 
         DC    X'2842F7'
         $SBA  (15,1)
* (15,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    12C' '
         $SBA  (15,13)
* (15,13) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (15,14)
* (15,14) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (15,15)
* (15,15) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'P'
         $SBA  (15,16)
* (15,16) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (15,17)
* (15,17) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (15,18)
* (15,18) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (15,19)
* (15,19) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (15,20)
* (15,20) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$'
         $SBA  (15,22)
* (15,22) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (15,23)
* (15,23) (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (15,24)
* (15,24) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (15,25)
* (15,25) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'$'
         $SBA  (15,26)
* (15,26) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (15,27)
* (15,27) (FG) Grey 
         DC    X'2842FE'
         DC    C'.'
         $SBA  (15,28)
* (15,28) (FG) White 
         DC    X'2842F7'
         $SBA  (16,1)
* (16,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    11C' '
         $SBA  (16,12)
* (16,12) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'j$'
         $SBA  (16,14)
* (16,14) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (16,15)
* (16,15) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C';'
         $SBA  (16,16)
* (16,16) (FG) White 
         DC    X'2842F7'
         DC    C' '
         $SBA  (16,17)
* (16,17) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (16,18)
* (16,18) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (16,19)
* (16,19) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (16,20)
* (16,20) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (16,21)
* (16,21) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$'
         $SBA  (16,23)
* (16,23) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (16,24)
* (16,24) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (16,25)
* (16,25) (FG) Turquoise 
         DC    X'2842F5'
         DC    C';'
         $SBA  (16,26)
* (16,26) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (16,27)
* (16,27) (FG) Grey 
         DC    X'2842FE'
         DC    X'AB'
         $SBA  (16,28)
* (16,28) (FG) White 
         DC    X'2842F7'
         DC    12C' '
         DC    C'You can access TSO with: '
         $SBA  (16,65)
* (16,65) (FG) Red 
         DC    X'2842F2'
         DC    C'logon '
         $SBA  (16,71)
* (16,71) (FG) White 
         DC    X'2842F7'
         DC    X'4C'
         $SBA  (16,72)
* (16,72) (FG) Red 
         DC    X'2842F2'
         DC    C'user'
         $SBA  (16,76)
* (16,76) (FG) White 
         DC    X'2842F7'
         DC    X'6E'
         $SBA  (16,77)
* (16,77) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    11C' '
         $SBA  (17,12)
* (17,12) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'$$'
         $SBA  (17,14)
* (17,14) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (17,15)
* (17,15) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (17,16)
* (17,16) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'j$'
         $SBA  (17,18)
* (17,18) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$$'
         $SBA  (17,21)
* (17,21) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (17,22)
* (17,22) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (17,23)
* (17,23) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (17,24)
* (17,24) (FG) Grey 
         DC    X'2842FE'
         DC    C'i'
         $SBA  (17,25)
* (17,25) (FG) White 
         DC    X'2842F7'
         DC    C' '
         $SBA  (17,26)
* (17,26) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (17,27)
* (17,27) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (17,28)
* (17,28) (FG) White 
         DC    X'2842F7'
         $SBA  (18,1)
* (18,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    11C' '
         $SBA  (18,12)
* (18,12) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (18,13)
* (18,13) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (18,14)
* (18,14) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'P'
         $SBA  (18,15)
* (18,15) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (18,16)
* (18,16) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'$'
         $SBA  (18,17)
* (18,17) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (18,18)
* (18,18) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$'
         $SBA  (18,20)
* (18,20) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$$$'
         $SBA  (18,23)
* (18,23) (FG) Grey 
         DC    X'2842FE'
         DC    C'$$'
         $SBA  (18,25)
* (18,25) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (18,26)
* (18,26) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (18,27)
* (18,27) (FG) Grey 
         DC    X'2842FE'
         DC    C'$.'
         $SBA  (18,29)
* (18,29) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    10C' '
         $SBA  (19,11)
* (19,11) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'j'
         $SBA  (19,12)
* (19,12) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$'
         $SBA  (19,14)
* (19,14) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C';'
         $SBA  (19,15)
* (19,15) (FG) White 
         DC    X'2842F7'
         DC    C' '
         $SBA  (19,16)
* (19,16) (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (19,17)
* (19,17) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (19,18)
* (19,18) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$$'
         $SBA  (19,20)
* (19,20) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (19,21)
* (19,21) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (19,22)
* (19,22) (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (19,23)
* (19,23) (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (19,24)
* (19,24) (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (19,25)
* (19,25) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (19,26)
* (19,26) (FG) Turquoise 
         DC    X'2842F5'
         DC    C';'
         $SBA  (19,27)
* (19,27) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (19,28)
* (19,28) (FG) Grey 
         DC    X'2842FE'
         DC    X'AB'
         $SBA  (19,29)
* (19,29) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    11C' '
         $SBA  (19,40)
* (19,40) Bold/Intense 
         DC    X'2842F7'
         DC    C'Enter if you dare:'
         $SBA  (20,1)
* (20,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    10C' '
         $SBA  (20,11)
* (20,11) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'$$'
         $SBA  (20,13)
* (20,13) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (20,14)
* (20,14) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (20,15)
* (20,15) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'j$'
         $SBA  (20,17)
* (20,17) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (20,18)
* (20,18) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (20,19)
* (20,19) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (20,20)
* (20,20) (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (20,21)
* (20,21) (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (20,22)
* (20,22) (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (20,23)
* (20,23) (FG) Grey 
         DC    X'2842FE'
         DC    C'$$i'
         $SBA  (20,26)
* (20,26) (FG) White 
         DC    X'2842F7'
         DC    C' '
         $SBA  (20,27)
* (20,27) (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (20,28)
* (20,28) (FG) Grey 
         DC    X'2842FE'
         DC    C'$,'
         $SBA  (20,30)
* (20,30) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    9C' '
         $SBA  (21,10)
* (21,10) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C';$'
         $SBA  (21,12)
* (21,12) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (21,13)
* (21,13) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (21,14)
* (21,14) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$'
         $SBA  (21,16)
* (21,16) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'P'
         $SBA  (21,17)
* (21,17) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    X'9A'
         $SBA  (21,18)
* (21,18) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'"'
         $SBA  (21,19)
* (21,19) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'"'
         $SBA  (21,20)
* (21,20) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'"'
         $SBA  (21,21)
* (21,21) (FG) Grey 
         DC    X'2842FE'
         DC    C'"'
         $SBA  (21,22)
* (21,22) (FG) Blue 
         DC    X'2842F1'
         DC    C'"'
         $SBA  (21,23)
* (21,23) (FG) Grey 
         DC    X'2842FE'
         DC    X'9A'
         DC    C'Y$'
         $SBA  (21,26)
* (21,26) (FG) Blue 
         DC    X'2842F1'
         DC    C'u'
         $SBA  (21,27)
* (21,27) (FG) Grey 
         DC    X'2842FE'
         DC    C'$$$'
         $SBA  (21,30)
* (21,30) (FG) White 
         DC    X'2842F7'
         $SBA  (22,1)
* (22,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    9C' '
         $SBA  (22,10)
* (22,10) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'Y'
         DC    6C'$'
         $SBA  (22,17)
* (22,17) Bold/Intense 
         DC    X'2842FD'
         DC    C'$'
         $SBA  (22,18)
* (22,18) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$$'
         $SBA  (22,20)
* (22,20) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (22,21)
* (22,21) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (22,22)
* (22,22) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$$'
         $SBA  (22,24)
* (22,24) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'$'
         $SBA  (22,25)
* (22,25) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (22,26)
* (22,26) (FG) Grey 
         DC    X'2842FE'
         DC    C'$'
         $SBA  (22,27)
* (22,27) (FG) Blue 
         DC    X'2842F1'
         DC    C'$'
         $SBA  (22,28)
* (22,28) (FG) Grey 
         DC    X'2842FE'
         DC    C'$P'
         $SBA  (22,30)
* (22,30) (FG) White 
         DC    X'2842F7'
         $SBA  (23,1)
* (23,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    9C' '
         $SBA  (23,10)
* (23,10) (FG) Turquoise 
         DC    X'2842F5'
         DC    X'79'
         $SBA  (23,11)
* (23,11) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    X'9A'
         $SBA  (23,12)
* (23,12) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    X'9A'
         $SBA  (23,13)
* (23,13) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    X'9A9A'
         DC    C'""'
         $SBA  (23,17)
* (23,17) (FG) Grey 
         DC    X'2842FE'
         DC    X'A1'
         $SBA  (23,18)
* (23,18) (FG) Blue 
         DC    X'2842F1'
         DC    X'A1'
         $SBA  (23,19)
* (23,19) (FG) Grey 
         DC    X'2842FE'
         DC    X'79'
         $SBA  (23,20)
* (23,20) (FG) Blue 
         DC    X'2842F1'
         DC    X'7979'
         $SBA  (23,22)
* (23,22) (FG) Grey 
         DC    X'2842FE'
         DC    X'79A1'
         $SBA  (23,24)
* (23,24) (FG) Blue 
         DC    X'2842F1'
         DC    C'"'
         $SBA  (23,25)
* (23,25) (FG) Grey 
         DC    X'2842FE'
         DC    C'"'
         $SBA  (23,26)
* (23,26) (FG) Blue 
         DC    X'2842F1'
         DC    X'9A'
         $SBA  (23,27)
* (23,27) (FG) Grey 
         DC    X'2842FE'
         DC    X'9A'
         DC    C'"'
         $SBA  (23,29)
* (23,29) (FG) White 
         DC    X'2842F7'
         $SBA  (24,1)
* (24,1) Normal Display (FG) White 
         DC    X'2800002842F7'
* Insert Cursor and unprotected field
         $SBA  (19,58)
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
         COPY WELCOME                     , logon screen copy book      66810010
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