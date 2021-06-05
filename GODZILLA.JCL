//AWESOME  JOB  (SETUP),
//             'Build Netsol',
//             CLASS=A,
//             MSGCLASS=X,
//             MSGLEVEL=(1,1)
//********************************************************************
//*
//* Desc: Build new NETSOL logon screen: GODZILLA
//* Date: 03-06-2021
//* Built using Soldier of FORTRANs ANSi to EBCDiC builder
//*
//* Original ANSi File:   godzilla.ans
//* Original ANSi Title:  sysgen godzilla
//* Original ANSi Artist: sof, ldb, sjs
//* Original ANSi Date:   20210602
//*
//* Command Line Args: --sysgen godzilla.ans --file GODZILLA.JCL --ROW 
//*                    13 --COL 42 --color TURQ --extended --member 
//*                    GODZILLA --input 22 
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
 DELETE SYS1.UMODMAC(GODZILLA)
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
./ ADD NAME=GODZILLA
* NETSOL screen created by ANSi2EBCDiC.py
         PUSH  PRINT
         PRINT OFF
EGMSG    DS 0C EGMSG
         $WCC  (RESETKBD,MDT)
         $SBA  (1,1)
* (1,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    10C' '
         $SBA  (2,11)
* (2,11) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         DC    7C' '
         DC    C'##'
         $SBA  (2,21)
* (2,21) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    11C' '
         $SBA  (2,32)
* (2,32) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         $SBA  (2,33)
* (2,33) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (2,35)
* (2,35) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    8C'#'
         $SBA  (2,43)
* (2,43) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (2,45)
* (2,45) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         $SBA  (2,46)
* (2,46) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    24C' '
         $SBA  (2,70)
* (2,70) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         DC    6C' '
         DC    C'###'
         $SBA  (2,80)
* (2,80) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'    '
         $SBA  (3,5)
* (3,5) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#    #'
         DC    6C' '
         DC    C'##'
         DC    5C' '
         DC    C'#'
         DC    7C' '
         DC    C'#'
         $SBA  (3,33)
* (3,33) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    9C' '
         $SBA  (3,42)
* (3,42) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         $SBA  (3,43)
* (3,43) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (3,45)
* (3,45) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         $SBA  (3,46)
* (3,46) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    23C' '
         $SBA  (3,69)
* (3,69) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         DC    7C' '
         DC    C'###'
         $SBA  (3,80)
* (3,80) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    5C' '
         $SBA  (4,6)
* (4,6) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'# ##'
         DC    5C' '
         DC    C'## #'
         DC    6C' '
         DC    C'#'
         DC    5C' '
         DC    C'#'
         DC    10C' '
         DC    C'#'
         $SBA  (4,43)
* (4,43) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (4,45)
* (4,45) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         $SBA  (4,46)
* (4,46) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    22C' '
         $SBA  (4,68)
* (4,68) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         DC    8C' '
         DC    C'###'
         $SBA  (4,80)
* (4,80) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    5C' '
         $SBA  (5,6)
* (5,6) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'##'
         DC    5C' '
         DC    C'##   #'
         DC    11C' '
         DC    C'#'
         DC    10C' '
         DC    C'#   #'
         DC    6C' '
         DC    C'#'
         $SBA  (5,53)
* (5,53) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (5,55)
* (5,55) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    8C'#'
         $SBA  (5,63)
* (5,63) (FG) Yellow 
         DC    X'2842F6'
         DC    C'    '
         $SBA  (5,67)
* (5,67) (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         DC    10C' '
         DC    C'#'
         $SBA  (6,1)
* (6,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (6,4)
* (6,4) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'##  #'
         DC    9C' '
         DC    C'#'
         DC    9C' '
         DC    C'##'
         DC    9C' '
         DC    C'##    #    ##'
         DC    14C' '
         DC    C'#'
         DC    5C' '
         DC    C'#'
         $SBA  (7,1)
* (7,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (7,2)
* (7,2) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'##'
         DC    5C' '
         DC    C'#'
         DC    8C' '
         DC    C'#'
         DC    7C' '
         DC    C'##'
         DC    9C' '
         DC    C'##'
         DC    6C' '
         DC    C'#  ##'
         DC    5C' '
         $SBA  (7,55)
* (7,55) (FG) Yellow 
         DC    X'2842F6'
         DC    C'MVS 3.8j'
         $SBA  (7,63)
* (7,63) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (7,65)
* (7,65) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    9C'#'
         DC    C'   ###'
         $SBA  (7,80)
* (7,80) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    9C' '
         $SBA  (8,10)
* (8,10) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         $SBA  (8,11)
* (8,11) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    7C' '
         $SBA  (8,18)
* (8,18) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'#'
         DC    5C' '
         DC    C'##'
         DC    9C' '
         DC    C'##'
         DC    8C' '
         DC    C'###'
         DC    26C' '
         DC    C'#'
         $SBA  (8,75)
* (8,75) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (8,77)
* (8,77) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C'###'
         $SBA  (8,80)
* (8,80) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    18C' '
         $SBA  (13,19)
* (13,19) (FG) Green 
         DC    X'2842F4'
         DC    C'_,-'
         DC    X'D0D0'
         DC    C'-._'
         $SBA  (13,27)
* (13,27) (FG) White 
         DC    X'2842FE'
         DC    8C' '
         $SBA  (13,35)
* (13,35) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'Logon: '
         DC    24C'_'
         $SBA  (13,66)
* (13,66) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    17C' '
         $SBA  (14,18)
* (14,18) (FG) Green 
         DC    X'2842F4'
         DC    C'/\'
         $SBA  (14,20)
* (14,20) (FG) White 
         DC    X'2842FE'
         DC    C'   '
         $SBA  (14,23)
* (14,23) (FG) Green 
         DC    X'2842F4'
         DC    X'D0'
         $SBA  (14,24)
* (14,24) (FG) White 
         DC    X'2842FE'
         DC    C'  '
         $SBA  (14,26)
* (14,26) (FG) Green 
         DC    X'2842F4'
         DC    C'/\'
         $SBA  (14,28)
* (14,28) (FG) White 
         DC    X'2842FE'
         DC    16C' '
         $SBA  (15,17)
* (15,17) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'_'
         $SBA  (15,18)
* (15,18) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C'|('
         $SBA  (15,20)
* (15,20) Bold/Intense (FG) Yellow 
         DC    X'2842F6'
         DC    C'O'
         $SBA  (15,21)
* (15,21) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C'\_'
         $SBA  (15,23)
* (15,23) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (15,24)
* (15,24) (FG) Green 
         DC    X'2842F4'
         DC    C'_/'
         $SBA  (15,26)
* (15,26) Bold/Intense (FG) Yellow 
         DC    X'2842F6'
         DC    C'O'
         $SBA  (15,27)
* (15,27) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C')'
         $SBA  (15,28)
* (15,28) (FG) White 
         DC    X'2842FE'
         DC    14C' '
         $SBA  (16,15)
* (16,15) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'_|'
         $SBA  (16,17)
* (16,17) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C'/'
         $SBA  (16,18)
* (16,18) (FG) White 
         DC    X'2842FE'
         DC    C'  '
         $SBA  (16,20)
* (16,20) (FG) Green 
         DC    X'2842F4'
         DC    C'(__'
         DC    X'7D7D'
         DC    C'__)'
         $SBA  (16,28)
* (16,28) (FG) White 
         DC    X'2842FE'
         DC    12C' '
         $SBA  (17,13)
* (17,13) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'_'
         $SBA  (17,14)
* (17,14) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C'|\/'
         $SBA  (17,17)
* (17,17) (FG) White 
         DC    X'2842FE'
         DC    C'    '
         $SBA  (17,21)
* (17,21) Bold/Intense 
         DC    X'2842F7'
         DC    C'WVVVVW'
         $SBA  (17,27)
* (17,27) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    27C' '
         $SBA  (17,54)
* (17,54) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'.|'
         $SBA  (18,1)
* (18,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    11C' '
         $SBA  (18,12)
* (18,12) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'\'
         $SBA  (18,13)
* (18,13) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (18,14)
* (18,14) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'_'
         $SBA  (18,15)
* (18,15) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C'\'
         $SBA  (18,16)
* (18,16) (FG) White 
         DC    X'2842FE'
         DC    5C' '
         $SBA  (18,21)
* (18,21) (FG) Green 
         DC    X'2842F4'
         DC    C'\'
         $SBA  (18,22)
* (18,22) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C'MMMM'
         $SBA  (18,26)
* (18,26) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C'/_'
         $SBA  (18,28)
* (18,28) (FG) White 
         DC    X'2842FE'
         DC    26C' '
         $SBA  (18,54)
* (18,54) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'| |'
         $SBA  (19,1)
* (19,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    9C' '
         $SBA  (19,10)
* (19,10) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'_'
         $SBA  (19,11)
* (19,11) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C'|\'
         $SBA  (19,13)
* (19,13) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'_'
         $SBA  (19,14)
* (19,14) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C'\'
         $SBA  (19,15)
* (19,15) (FG) White 
         DC    X'2842FE'
         DC    5C' '
         $SBA  (19,20)
* (19,20) (FG) Green 
         DC    X'2842F4'
         DC    C'_'
         $SBA  (19,21)
* (19,21) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (19,22)
* (19,22) (FG) Green 
         DC    X'2842F4'
         DC    C',---; \_'
         $SBA  (19,30)
* (19,30) (FG) White 
         DC    X'2842FE'
         DC    24C' '
         $SBA  (19,54)
* (19,54) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'|'
         DC    X'7D'
         DC    C'|'
         DC    12C' '
         DC    C'.'
         DC    5C'_'
         $SBA  (20,1)
* (20,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'    '
         $SBA  (20,5)
* (20,5) (FG) Green 
         DC    X'2842F4'
         DC    C'/\'
         $SBA  (20,7)
* (20,7) (FG) White 
         DC    X'2842FE'
         DC    C'   '
         $SBA  (20,10)
* (20,10) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'\'
         $SBA  (20,11)
* (20,11) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (20,12)
* (20,12) Bold/Intense (FG) Light Turquoise 
         DC    X'2842FD'
         DC    C'_'
         $SBA  (20,13)
* (20,13) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C'\/'
         $SBA  (20,15)
* (20,15) (FG) White 
         DC    X'2842FE'
         DC    6C' '
         $SBA  (20,21)
* (20,21) (FG) Green 
         DC    X'2842F4'
         DC    C'\_'
         $SBA  (20,23)
* (20,23) (FG) White 
         DC    X'2842FE'
         DC    C'   '
         $SBA  (20,26)
* (20,26) (FG) Green 
         DC    X'2842F4'
         DC    C'/'
         $SBA  (20,27)
* (20,27) (FG) White 
         DC    X'2842FE'
         DC    C'   '
         $SBA  (20,30)
* (20,30) (FG) Green 
         DC    X'2842F4'
         DC    C'\'
         $SBA  (20,31)
* (20,31) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    15C' '
         DC    C'___    |  |'
         DC    12C' '
         DC    C'|.   |'
         DC    X'7D'
         DC    C' .---'
         $SBA  (21,1)
* (21,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (21,4)
* (21,4) (FG) Green 
         DC    X'2842F4'
         DC    C'/'
         $SBA  (21,5)
* (21,5) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (21,6)
* (21,6) (FG) Green 
         DC    X'2842F4'
         DC    C'(    _\/'
         $SBA  (21,14)
* (21,14) (FG) White 
         DC    X'2842FE'
         DC    5C' '
         $SBA  (21,19)
* (21,19) (FG) Green 
         DC    X'2842F4'
         DC    C'\'
         $SBA  (21,20)
* (21,20) (FG) White 
         DC    X'2842FE'
         DC    C'   '
         $SBA  (21,23)
* (21,23) (FG) Green 
         DC    X'2842F4'
         DC    C'\'
         $SBA  (21,24)
* (21,24) (FG) White 
         DC    X'2842FE'
         DC    C'  '
         $SBA  (21,26)
* (21,26) (FG) Green 
         DC    X'2842F4'
         DC    C'|'
         $SBA  (21,27)
* (21,27) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    X'7D'
         DC    C'VVV'
         $SBA  (21,31)
* (21,31) (FG) Grey 
         DC    X'2842FE'
         DC    7C' '
         DC    C'_    .-'
         DC    X'7D'
         DC    C'   '
         DC    X'7D'
         DC    C'-. |  |'
         DC    5C' '
         DC    C'.--'
         DC    X'7D'
         DC    C'|  ||   | _|'
         $SBA  (22,1)
* (22,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (22,3)
* (22,3) (FG) Green 
         DC    X'2842F4'
         DC    C'('
         $SBA  (22,4)
* (22,4) (FG) White 
         DC    X'2842FE'
         DC    C'  '
         $SBA  (22,6)
* (22,6) (FG) Green 
         DC    X'2842F4'
         DC    X'7D'
         DC    C'-,._\_.('
         $SBA  (22,15)
* (22,15) (FG) White 
         DC    X'2842FE'
         DC    6C' '
         $SBA  (22,21)
* (22,21) Bold/Intense 
         DC    X'2842F7'
         DC    X'7D'
         DC    C'VVV'
         $SBA  (22,25)
* (22,25) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (22,26)
* (22,26) (FG) Green 
         DC    X'2842F4'
         DC    C'/'
         $SBA  (22,27)
* (22,27) (FG) White 
         DC    X'2842FE'
         DC    8C' '
         $SBA  (22,35)
* (22,35) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'.-'
         DC    X'7D'
         DC    C'|  _.|  |    ||   '
         DC    X'7D'
         DC    C'-__  |   |  |    ||'
         $SBA  (23,1)
* (23,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (23,4)
* (23,4) (FG) Green 
         DC    X'2842F4'
         DC    C'\'
         $SBA  (23,5)
* (23,5) (FG) White 
         DC    X'2842FE'
         DC    9C' '
         $SBA  (23,14)
* (23,14) (FG) Green 
         DC    X'2842F4'
         DC    C'/'
         $SBA  (23,15)
* (23,15) (FG) White 
         DC    X'2842FE'
         DC    C'   '
         $SBA  (23,18)
* (23,18) (FG) Green 
         DC    X'2842F4'
         DC    C'_)'
         $SBA  (23,20)
* (23,20) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (23,21)
* (23,21) (FG) Green 
         DC    X'2842F4'
         DC    C'/'
         $SBA  (23,22)
* (23,22) (FG) White 
         DC    X'2842FE'
         DC    C'   '
         $SBA  (23,25)
* (23,25) (FG) Green 
         DC    X'2842F4'
         DC    C'_)'
         $SBA  (23,27)
* (23,27) (FG) White 
         DC    X'2842FE'
         DC    8C' '
         $SBA  (23,35)
* (23,35) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'|'
         DC    X'7D'
         DC    C' | |.    |    ||'
         DC    7C' '
         DC    C'| |   |  |    ||'
         $SBA  (24,1)
* (24,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'    '
         $SBA  (24,5)
* (24,5) (FG) Green 
         DC    X'2842F4'
         DC    X'7D'
         DC    C'....--'
         DC    X'7D7D'
         DC    C'\__'
         $SBA  (24,17)
* (24,17) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C'vvv'
         $SBA  (24,20)
* (24,20) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C')\__'
         $SBA  (24,24)
* (24,24) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C'vvv'
         $SBA  (24,27)
* (24,27) Normal Display (FG) White (FG) Green 
         DC    X'2800002842F72842F4'
         DC    C')'
         $SBA  (24,28)
* (24,28) (FG) White 
         DC    X'2842FE'
         DC    7C' '
         $SBA  (24,35)
* (24,35) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'|  '
         DC    X'7D'
         DC    C'-'
         DC    X'7D'
         DC    5C' '
         DC    X'7D'
         DC    C'    ""'
         DC    7C' '
         DC    X'7D'
         DC    C'-'
         DC    X'7D'
         DC    C'   '
         DC    X'7D'
         DC    C'-.'
         DC    X'7D'
         DC    C'    '
         DC    X'7D79'
* Insert Cursor and unprotected field
         $SBA  (13,42)
         DC    X'2842F5'  SA COLOR TURQ
         $SF   (UNPROT,HI)
         $IC
         DC    CL22' '
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
         COPY GODZILLA                    , logon screen copy book      66810010
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