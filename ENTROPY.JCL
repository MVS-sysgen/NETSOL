//AWESOME  JOB  (SETUP),
//             'Build Netsol',
//             CLASS=A,
//             MSGCLASS=X,
//             MSGLEVEL=(1,1)
//********************************************************************
//*
//* Desc: Build new NETSOL logon screen: ENTROPY
//* Date: 03-06-2021
//* Built using Soldier of FORTRANs ANSi to EBCDiC builder
//*
//* Original ANSi File:   entropy.ans
//* Original ANSi Title:  ascIi colly ..
//* Original ANSi Artist: bambooz
//* Original ANSi Group:  sOap produkshunz
//* Original ANSi Date:   20210603
//*
//* Command Line Args: --sysgen entropy.ans --ROW 20 --COL 26 --member 
//*                    ENTROPY --file ENTROPY.JCL --extended 
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
 DELETE SYS1.UMODMAC(ENTROPY)
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
./ ADD NAME=ENTROPY
* NETSOL screen created by ANSi2EBCDiC.py
         PUSH  PRINT
         PRINT OFF
EGMSG    DS 0C EGMSG
         $WCC  (RESETKBD,MDT)
         $SBA  (1,1)
* (1,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    31C' '
         $SBA  (1,32)
* (1,32) (FG) Purple 
         DC    X'2842FB'
         DC    C','
         $SBA  (2,1)
* (2,1) (FG) White 
         DC    X'2842FE'
         DC    27C' '
         $SBA  (2,28)
* (2,28) (FG) Purple 
         DC    X'2842FB'
         DC    C'.s'
         DC    X'50'
         DC    C'$$'
         $SBA  (3,1)
* (3,1) (FG) White 
         DC    X'2842FE'
         DC    21C' '
         $SBA  (3,22)
* (3,22) (FG) Purple 
         DC    X'2842FB'
         DC    C'.s'
         DC    X'50'
         DC    C'$$'
         DC    X'79'
         DC    5C'$'
         DC    X'79'
         DC    C'$$'
         DC    X'50'
         DC    C'.'
         $SBA  (4,1)
* (4,1) (FG) White 
         DC    X'2842FE'
         DC    20C' '
         $SBA  (4,21)
* (4,21) (FG) Purple 
         DC    X'2842FB'
         DC    X'EAEAEAEA'
         DC    C'$'
         DC    X'79'
         $SBA  (4,27)
* (4,27) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (4,28)
* (4,28) (FG) Purple 
         DC    X'2842FB'
         DC    5C'$'
         $SBA  (4,33)
* (4,33) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (4,34)
* (4,34) (FG) Purple 
         DC    X'2842FB'
         DC    X'79'
         DC    C'$'
         DC    X'EAEAEA'
         $SBA  (4,39)
* (4,39) Bold/Intense (FG) White 
         DC    X'2842F7'
         $SBA  (5,1)
* (5,1) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C' .s'
         DC    X'50'
         DC    C'$P'
         DC    X'7D79'
         DC    C'$$$'
         DC    X'50'
         DC    C's.'
         DC    X'EA'
         DC    C'$$$P'
         DC    X'7D79'
         DC    C'$$'
         DC    X'50'
         DC    C's. '
         DC    X'79'
         DC    C'$$$$ .s'
         DC    X'50'
         DC    C'$P'
         DC    X'79'
         DC    C'$$'
         DC    X'50'
         DC    C's.'
         DC    X'79EA'
         DC    C'$P'
         DC    X'7D50'
         DC    C'$'
         DC    X'50'
         DC    C's. '
         DC    X'EA'
         DC    C'$$$P'
         DC    X'79'
         DC    C'$$'
         DC    X'50'
         DC    C's. .s'
         DC    X'50'
         DC    C'$'
         DC    X'7D'
         $SBA  (5,73)
* (5,73) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C','
         $SBA  (5,74)
* (5,74) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C' $$'
         DC    X'50'
         DC    C's.'
         $SBA  (5,80)
* (5,80) (FG) White 
         DC    X'2842FE'
         $SBA  (6,1)
* (6,1) (FG) Purple 
         DC    X'2842FB'
         DC    C'd$$$$s.s'
         DC    6C'$'
         DC    C' $$$'
         DC    X'7D'
         $SBA  (6,20)
* (6,20) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C',.'
         $SBA  (6,22)
* (6,22) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    X'79'
         DC    C'$$$$b $$$$ $$$$ '
         $SBA  (6,39)
* (6,39) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C','
         $SBA  (6,40)
* (6,40) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    X'79'
         DC    C'$$$$b $'
         DC    X'7D'
         $SBA  (6,49)
* (6,49) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C','
         $SBA  (6,50)
* (6,50) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    X'79'
         DC    C'$$$$b $$$'
         DC    X'7D'
         $SBA  (6,61)
* (6,61) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C','
         $SBA  (6,62)
* (6,62) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    X'79'
         DC    C'$$$$b'
         $SBA  (6,68)
* (6,68) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (6,69)
* (6,69) (FG) Purple 
         DC    X'2842FB'
         DC    C'$$$ '
         $SBA  (6,73)
* (6,73) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$'
         $SBA  (6,74)
* (6,74) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C' '
         DC    5C'$'
         $SBA  (6,80)
* (6,80) (FG) White 
         DC    X'2842FE'
         $SBA  (7,1)
* (7,1) (FG) Purple 
         DC    X'2842FB'
         DC    5C'$'
         DC    C' '
         $SBA  (7,7)
* (7,7) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C's'
         $SBA  (7,8)
* (7,8) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C' '
         DC    X'79EAEAEAEA7D'
         DC    C',$$$ '
         $SBA  (7,20)
* (7,20) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$$'
         $SBA  (7,22)
* (7,22) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C' '
         DC    5C'$'
         $SBA  (7,28)
* (7,28) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (7,29)
* (7,29) (FG) Purple 
         DC    X'2842FB'
         DC    C'$$$$ $$$$ '
         $SBA  (7,39)
* (7,39) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$b'
         $SBA  (7,41)
* (7,41) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (7,42)
* (7,42) (FG) Purple 
         DC    X'2842FB'
         DC    5C's'
         DC    C'$ '
         $SBA  (7,49)
* (7,49) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$'
         $SBA  (7,50)
* (7,50) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C' '
         DC    5C'$'
         DC    C' $$$ '
         $SBA  (7,61)
* (7,61) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$'
         $SBA  (7,62)
* (7,62) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C' '
         DC    5C'$'
         $SBA  (7,68)
* (7,68) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (7,69)
* (7,69) (FG) Purple 
         DC    X'2842FB'
         DC    C'$$$ '
         $SBA  (7,73)
* (7,73) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$'
         $SBA  (7,74)
* (7,74) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C' '
         DC    5C'$'
         $SBA  (7,80)
* (7,80) (FG) White 
         DC    X'2842FE'
         $SBA  (8,1)
* (8,1) (FG) Purple 
         DC    X'2842FB'
         DC    5C'$'
         DC    C' '
         $SBA  (8,7)
* (8,7) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$'
         DC    X'7D'
         $SBA  (8,9)
* (8,9) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C',ssss.'
         DC    X'EA'
         DC    C'$$$ '
         $SBA  (8,20)
* (8,20) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$'
         DC    X'EA'
         $SBA  (8,22)
* (8,22) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C','
         DC    5C'$'
         $SBA  (8,28)
* (8,28) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (8,29)
* (8,29) (FG) Purple 
         DC    X'2842FB'
         DC    C'$$$$ $$$$ '
         $SBA  (8,39)
* (8,39) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'EA'
         DC    C'$'
         $SBA  (8,41)
* (8,41) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (8,42)
* (8,42) (FG) Purple 
         DC    X'2842FB'
         DC    6C'$'
         DC    C' '
         $SBA  (8,49)
* (8,49) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$'
         $SBA  (8,50)
* (8,50) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C' '
         DC    5C'$'
         DC    C' $$$ '
         $SBA  (8,61)
* (8,61) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$'
         $SBA  (8,62)
* (8,62) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C' '
         DC    5C'$'
         $SBA  (8,68)
* (8,68) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (8,69)
* (8,69) (FG) Purple 
         DC    X'2842FB'
         DC    C'$$$ '
         $SBA  (8,73)
* (8,73) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$'
         $SBA  (8,74)
* (8,74) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C' '
         DC    5C'$'
         $SBA  (8,80)
* (8,80) (FG) White 
         DC    X'2842FE'
         $SBA  (9,1)
* (9,1) (FG) Purple 
         DC    X'2842FB'
         DC    X'79EA'
         DC    C'$$$b ,'
         DC    5C'$'
         DC    C'P $$$b ,$$$$'
         DC    X'EA7D'
         DC    C',$$$$ '
         DC    X'EA'
         DC    C'$$$b'
         $SBA  (9,39)
* (9,39) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (9,40)
* (9,40) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$'
         $SBA  (9,41)
* (9,41) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (9,42)
* (9,42) (FG) Purple 
         DC    X'2842FB'
         DC    X'79EA'
         DC    C'$$$$b ,$$$'
         DC    X'EA79'
         DC    C',$$$b ,$$$'
         DC    X'EA7D'
         DC    C'.$$$b'
         $SBA  (9,73)
* (9,73) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C' '
         $SBA  (9,74)
* (9,74) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C','
         DC    5C'$'
         $SBA  (9,80)
* (9,80) (FG) White 
         DC    X'2842FE'
         $SBA  (10,1)
* (10,1) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'$bsss%$%'
         DC    5C's'
         DC    C'%$%ss%$%sss%$$%sss%'
         DC    X'EA'
         DC    C'$%sss%$$$bssss%'
         DC    X'50'
         DC    C'%ss%d '
         $SBA  (10,56)
* (10,56) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    5C'$'
         $SBA  (10,61)
* (10,61) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (10,62)
* (10,62) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'%ss%$$%ssss'
         DC    X'7D'
         $SBA  (10,74)
* (10,74) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    X'79'
         DC    5C'$'
         $SBA  (10,80)
* (10,80) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (11,2)
* (11,2) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA'
         DC    C'$'
         DC    X'EA7D'
         $SBA  (11,7)
* (11,7) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (11,9)
* (11,9) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA'
         DC    C'$'
         DC    X'EA7D'
         $SBA  (11,14)
* (11,14) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (11,17)
* (11,17) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'7990EA7D79EA7D'
         DC    C'    '
         DC    X'79EA'
         DC    C'$'
         DC    X'EA7D'
         $SBA  (11,33)
* (11,33) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (11,36)
* (11,36) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'797D'
         $SBA  (11,38)
* (11,38) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'    '
         $SBA  (11,42)
* (11,42) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA'
         DC    C'$'
         DC    X'EA7D'
         $SBA  (11,47)
* (11,47) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (11,50)
* (11,50) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA7D'
         $SBA  (11,53)
* (11,53) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (11,54)
* (11,54) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79'
         $SBA  (11,55)
* (11,55) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C','
         DC    5C'$'
         $SBA  (11,61)
* (11,61) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (11,62)
* (11,62) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'7D79EA7D'
         $SBA  (11,66)
* (11,66) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (11,67)
* (11,67) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA'
         DC    C'$'
         DC    X'EA7D'
         $SBA  (11,72)
* (11,72) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (11,74)
* (11,74) (FG) Purple 
         DC    X'2842FB'
         DC    C','
         DC    5C'$'
         $SBA  (11,80)
* (11,80) (FG) White 
         DC    X'2842FE'
         DC    C'   '
         $SBA  (12,4)
* (12,4) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'i'
         $SBA  (12,5)
* (12,5) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    6C' '
         $SBA  (12,11)
* (12,11) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C':'
         $SBA  (12,12)
* (12,12) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    18C' '
         $SBA  (12,30)
* (12,30) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C';'
         $SBA  (12,31)
* (12,31) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    13C' '
         $SBA  (12,44)
* (12,44) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'i'
         $SBA  (12,45)
* (12,45) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    9C' '
         $SBA  (12,54)
* (12,54) (FG) Purple 
         DC    X'2842FB'
         DC    C',$$$$'
         DC    X'EA7D'
         $SBA  (12,61)
* (12,61) (FG) White 
         DC    X'2842FE'
         DC    8C' '
         $SBA  (12,69)
* (12,69) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C';'
         $SBA  (12,70)
* (12,70) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (12,73)
* (12,73) (FG) Purple 
         DC    X'2842FB'
         DC    C',$$$$'
         DC    X'EA7D'
         $SBA  (12,80)
* (12,80) (FG) White 
         DC    X'2842FE'
         DC    C'  '
         $SBA  (13,3)
* (13,3) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C',$s'
         $SBA  (13,6)
* (13,6) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    5C' '
         $SBA  (13,11)
* (13,11) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C';'
         $SBA  (13,12)
* (13,12) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    18C' '
         $SBA  (13,30)
* (13,30) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'i'
         $SBA  (13,31)
* (13,31) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    12C' '
         $SBA  (13,43)
* (13,43) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C',$s'
         $SBA  (13,46)
* (13,46) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    23C' '
         $SBA  (13,69)
* (13,69) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'i'
         $SBA  (13,70)
* (13,70) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (13,73)
* (13,73) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA'
         DC    C'$'
         DC    X'EA7D'
         $SBA  (13,78)
* (13,78) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (14,3)
* (14,3) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA7D'
         DC    5C' '
         DC    C'i'
         $SBA  (14,12)
* (14,12) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    18C' '
         $SBA  (14,30)
* (14,30) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'l'
         $SBA  (14,31)
* (14,31) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    12C' '
         $SBA  (14,43)
* (14,43) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA7D'
         DC    23C' '
         DC    C'l'
         $SBA  (14,70)
* (14,70) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    5C' '
         $SBA  (14,75)
* (14,75) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C';'
         $SBA  (14,76)
* (14,76) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    10C' '
         $SBA  (15,11)
* (15,11) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'l'
         $SBA  (15,12)
* (15,12) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    17C' '
         $SBA  (15,29)
* (15,29) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C',$s'
         $SBA  (15,32)
* (15,32) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    36C' '
         $SBA  (15,68)
* (15,68) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C',$s'
         $SBA  (15,71)
* (15,71) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'    '
         $SBA  (15,75)
* (15,75) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C'i'
         $SBA  (15,76)
* (15,76) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    9C' '
         $SBA  (16,10)
* (16,10) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C',$s'
         $SBA  (16,13)
* (16,13) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    16C' '
         $SBA  (16,29)
* (16,29) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA7D'
         $SBA  (16,32)
* (16,32) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    36C' '
         $SBA  (16,68)
* (16,68) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA7D'
         $SBA  (16,71)
* (16,71) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (16,74)
* (16,74) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    C',$s'
         $SBA  (17,1)
* (17,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    9C' '
         $SBA  (17,10)
* (17,10) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA7D'
         $SBA  (17,13)
* (17,13) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    61C' '
         $SBA  (17,74)
* (17,74) Bold/Intense (FG) Light Green 
         DC    X'2842FC'
         DC    X'79EA7D'
         $SBA  (17,77)
* (17,77) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    24C' '
         $SBA  (20,25)
* (20,25) (FG) Purple 
         DC    X'2842FB'
         DC    X'6E'
         $SBA  (21,1)
* (21,1) (FG) White 
         DC    X'2842FE'
* Insert Cursor and unprotected field
         $SBA  (20,26)
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
         COPY ENTROPY                     , logon screen copy book      66810010
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