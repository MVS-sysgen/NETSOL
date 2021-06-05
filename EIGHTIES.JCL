//AWESOME  JOB  (SETUP),
//             'Build Netsol',
//             CLASS=A,
//             MSGCLASS=X,
//             MSGLEVEL=(1,1)
//********************************************************************
//*
//* Desc: Build new NETSOL logon screen: EIGHTIES
//* Date: 03-06-2021
//* Built using Soldier of FORTRANs ANSi to EBCDiC builder
//*
//* Original ANSi File:   eighties.ans
//* Original ANSi Artist: Anonymous
//* Original ANSi Date:   20210603
//*
//* Command Line Args: --sysgen eighties.ans --ROW 23 --COL 9 --member 
//*                    EIGHTIES --file EIGHTIES.JCL --extended 
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
 DELETE SYS1.UMODMAC(EIGHTIES)
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
./ ADD NAME=EIGHTIES
* NETSOL screen created by ANSi2EBCDiC.py
         PUSH  PRINT
         PRINT OFF
EGMSG    DS 0C EGMSG
         $WCC  (RESETKBD,MDT)
         $SBA  (1,1)
* (1,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         $SBA  (2,1)
* (2,1) Bold/Intense 
         DC    X'2842F7'
         $SBA  (3,1)
* (3,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (3,3)
* (3,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Jay Moseley Sysgen  Jay Moseley Sysgen  Jay '
         DC    C'Moseley'
         $SBA  (3,54)
* (3,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (3,57)
* (3,57) Bold/Intense 
         DC    X'2842F7'
         DC    C'Welcome to'
         $SBA  (3,67)
* (3,67) (FG) Red 
         DC    X'2842F2'
         DC    C' '
         $SBA  (3,68)
* (3,68) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C'Sysgen'
         $SBA  (3,74)
* (3,74) (FG) White 
         DC    X'2842FE'
         DC    C'   '
         $SBA  (4,4)
* (4,4) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Jay Moseley Sysgen'
         $SBA  (4,22)
* (4,22) (FG) Blue 
         DC    X'2842F1'
         DC    5C's'
         DC    C'$'
         DC    X'EA'
         $SBA  (4,29)
* (4,29) (FG) Grey 
         DC    X'2842FE'
         DC    C'oseley Sysgen  Jay Mosele'
         $SBA  (4,54)
* (4,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'    '
         $SBA  (5,5)
* (5,5) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Jay Moseley'
         $SBA  (5,16)
* (5,16) (FG) Blue 
         DC    X'2842F1'
         DC    C'ss'
         DC    6C'$'
         DC    X'EAEA'
         $SBA  (5,26)
* (5,26) (FG) Grey 
         DC    X'2842FE'
         DC    C'ay Moseley Sysgen  Jay Mosel'
         $SBA  (5,54)
* (5,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (5,57)
* (5,57) Bold/Intense 
         DC    X'2842F7'
         DC    C'We hope you enjoy your'
         $SBA  (5,79)
* (5,79) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (6,3)
* (6,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'n'
         $SBA  (6,4)
* (6,4) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (6,6)
* (6,6) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Jay M'
         $SBA  (6,11)
* (6,11) (FG) Blue 
         DC    X'2842F1'
         DC    C'ss'
         DC    6C'$'
         DC    X'EAEAEA'
         $SBA  (6,22)
* (6,22) (FG) Grey 
         DC    X'2842FE'
         DC    C'en  Jay Moseley Sysgen  J'
         $SBA  (6,47)
* (6,47) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C's'
         $SBA  (6,48)
* (6,48) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'y Mose'
         $SBA  (6,54)
* (6,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (6,57)
* (6,57) Bold/Intense 
         DC    X'2842F7'
         DC    C'stay!'
         $SBA  (7,1)
* (7,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (7,3)
* (7,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'en'
         $SBA  (7,5)
* (7,5) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (7,7)
* (7,7) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'J'
         $SBA  (7,8)
* (7,8) (FG) Blue 
         DC    X'2842F1'
         DC    C'sS'
         DC    5C'$'
         DC    X'EAEA'
         $SBA  (7,17)
* (7,17) (FG) Grey 
         DC    X'2842FE'
         DC    C'y Sysgen  Jay Moseley S'
         $SBA  (7,40)
* (7,40) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C'sss'
         DC    6C'$'
         DC    C's'
         $SBA  (7,50)
* (7,50) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (7,51)
* (7,51) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Mos'
         $SBA  (7,54)
* (7,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (8,3)
* (8,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'gen'
         $SBA  (8,6)
* (8,6) (FG) Blue 
         DC    X'2842F1'
         DC    C'S$$$$'
         DC    X'EAEA'
         $SBA  (8,13)
* (8,13) (FG) Grey 
         DC    X'2842FE'
         DC    C'oseley Sysgen  Jay Mosele'
         $SBA  (8,38)
* (8,38) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C's'
         DC    5C'$'
         DC    X'EAEA7D'
         $SBA  (8,47)
* (8,47) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (8,48)
* (8,48) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Jay'
         $SBA  (8,51)
* (8,51) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (8,52)
* (8,52) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Mo'
         $SBA  (8,54)
* (8,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (9,3)
* (9,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'sg'
         $SBA  (9,5)
* (9,5) (FG) Blue 
         DC    X'2842F1'
         DC    C'S'
         DC    5C'$'
         DC    C'sss'
         $SBA  (9,14)
* (9,14) (FG) Grey 
         DC    X'2842FE'
         DC    C'oseley Sysgen  Jay Mose'
         $SBA  (9,37)
* (9,37) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    5C'$'
         $SBA  (9,42)
* (9,42) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'ysg'
         $SBA  (9,45)
* (9,45) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C'ss$ss'
         $SBA  (9,50)
* (9,50) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'ay'
         $SBA  (9,52)
* (9,52) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (9,53)
* (9,53) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'M'
         $SBA  (9,54)
* (9,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (9,57)
* (9,57) Bold/Intense 
         DC    X'2842F7'
         DC    C'To logon to TSO type:'
         $SBA  (9,78)
* (9,78) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (10,3)
* (10,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'ys'
         $SBA  (10,5)
* (10,5) (FG) Blue 
         DC    X'2842F1'
         DC    17C'$'
         DC    5C's'
         $SBA  (10,27)
* (10,27) (FG) Grey 
         DC    X'2842FE'
         DC    C'n'
         $SBA  (10,28)
* (10,28) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (10,30)
* (10,30) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Jay Mo'
         $SBA  (10,36)
* (10,36) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C'$$$$'
         DC    X'EA'
         $SBA  (10,41)
* (10,41) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (10,42)
* (10,42) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'S'
         $SBA  (10,43)
* (10,43) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C'sS'
         DC    5C'$'
         $SBA  (10,50)
* (10,50) Bold/Intense 
         DC    X'2842F3'
         DC    C' '
         $SBA  (10,51)
* (10,51) (FG) Grey 
         DC    X'2842FE'
         DC    C'ay'
         $SBA  (10,53)
* (10,53) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (11,3)
* (11,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sy'
         $SBA  (11,5)
* (11,5) (FG) Blue 
         DC    X'2842F1'
         DC    X'EA'
         DC    24C'$'
         DC    C'ss'
         $SBA  (11,32)
* (11,32) (FG) Magenta 
         DC    X'2842F3'
         DC    C' '
         $SBA  (11,33)
* (11,33) (FG) Grey 
         DC    X'2842FE'
         DC    C'y'
         $SBA  (11,34)
* (11,34) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (11,35)
* (11,35) (FG) Purple 
         DC    X'2842FB'
         DC    5C'$'
         DC    C'soF'
         DC    7C'$'
         $SBA  (11,50)
* (11,50) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (11,51)
* (11,51) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Jay'
         $SBA  (11,54)
* (11,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    7C' '
         $SBA  (11,61)
* (11,61) Bold/Intense (FG) Red 
         DC    X'2842F2'
         DC    C'logon ibmuser'
         $SBA  (11,74)
* (11,74) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (12,4)
* (12,4) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysgen  Jay'
         $SBA  (12,15)
* (12,15) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (12,16)
* (12,16) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Mosele'
         $SBA  (12,22)
* (12,22) (FG) Blue 
         DC    X'2842F1'
         DC    X'EAEAEAEA'
         DC    7C'S'
         $SBA  (12,33)
* (12,33) (FG) Grey 
         DC    X'2842FE'
         DC    C'ay'
         $SBA  (12,35)
* (12,35) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    X'EA'
         DC    7C'$'
         DC    X'EA'
         DC    5C'$'
         $SBA  (12,49)
* (12,49) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'n  Ja'
         $SBA  (12,54)
* (12,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (13,3)
* (13,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'y'
         $SBA  (13,4)
* (13,4) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (13,5)
* (13,5) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysgen'
         $SBA  (13,11)
* (13,11) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (13,13)
* (13,13) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Jay'
         $SBA  (13,16)
* (13,16) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (13,17)
* (13,17) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Moseley'
         $SBA  (13,24)
* (13,24) (FG) Blue 
         DC    X'2842F1'
         DC    C',s'
         DC    6C'$'
         DC    X'EA'
         $SBA  (13,33)
* (13,33) (FG) Grey 
         DC    X'2842FE'
         DC    C'Jay'
         $SBA  (13,36)
* (13,36) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    X'79EAEAEAEA'
         $SBA  (13,41)
* (13,41) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'en'
         $SBA  (13,43)
* (13,43) (FG) Magenta 
         DC    X'2842F3'
         DC    C' '
         $SBA  (13,44)
* (13,44) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    7C'$'
         DC    X'EAEA'
         $SBA  (13,53)
* (13,53) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'J'
         $SBA  (13,54)
* (13,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (13,57)
* (13,57) Bold/Intense 
         DC    X'2842F7'
         DC    C'To access an ISPF like'
         $SBA  (13,79)
* (13,79) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (14,3)
* (14,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'ey'
         $SBA  (14,5)
* (14,5) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (14,6)
* (14,6) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysgen'
         $SBA  (14,12)
* (14,12) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (14,14)
* (14,14) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Jay'
         $SBA  (14,17)
* (14,17) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (14,18)
* (14,18) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Mosel'
         $SBA  (14,23)
* (14,23) (FG) Blue 
         DC    X'2842F1'
         DC    C's'
         DC    5C'$'
         DC    X'EAEA'
         $SBA  (14,31)
* (14,31) (FG) Grey 
         DC    X'2842FE'
         DC    C'n  Jay Mosel'
         $SBA  (14,43)
* (14,43) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C'S$$$$'
         DC    X'EAEA'
         $SBA  (14,50)
* (14,50) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'en'
         $SBA  (14,52)
* (14,52) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    5C' '
         $SBA  (14,57)
* (14,57) Bold/Intense 
         DC    X'2842F7'
         DC    C'interface type '
         $SBA  (14,72)
* (14,72) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C'RFE'
         $SBA  (14,75)
* (14,75) Bold/Intense (FG) White 
         DC    X'2842F7'
         DC    C' at'
         $SBA  (14,78)
* (14,78) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (15,3)
* (15,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'ley'
         $SBA  (15,6)
* (15,6) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (15,7)
* (15,7) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysgen'
         $SBA  (15,13)
* (15,13) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (15,15)
* (15,15) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Jay'
         $SBA  (15,18)
* (15,18) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (15,19)
* (15,19) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'M'
         $SBA  (15,20)
* (15,20) (FG) Blue 
         DC    X'2842F1'
         DC    C's'
         DC    6C'$'
         DC    X'EA'
         $SBA  (15,28)
* (15,28) (FG) Grey 
         DC    X'2842FE'
         DC    C'ysgen  Jay'
         $SBA  (15,38)
* (15,38) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (15,39)
* (15,39) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'M'
         $SBA  (15,40)
* (15,40) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C's'
         DC    6C'$'
         $SBA  (15,47)
* (15,47) Bold/Intense 
         DC    X'2842F3'
         DC    C' '
         $SBA  (15,48)
* (15,48) (FG) Grey 
         DC    X'2842FE'
         DC    C'ysgen'
         $SBA  (15,53)
* (15,53) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'    '
         $SBA  (15,57)
* (15,57) Bold/Intense 
         DC    X'2842F7'
         DC    C'the TSO '
         $SBA  (15,65)
* (15,65) (FG) Red 
         DC    X'2842F2'
         DC    C'READY'
         $SBA  (15,70)
* (15,70) (FG) White 
         DC    X'2842F7'
         DC    C' prompt.'
         $SBA  (15,78)
* (15,78) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (16,3)
* (16,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'eley'
         $SBA  (16,7)
* (16,7) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (16,8)
* (16,8) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysgen'
         $SBA  (16,14)
* (16,14) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (16,16)
* (16,16) Bold/Intense (FG) Blue 
         DC    X'2842F1'
         DC    C',w'
         DC    6C'$'
         DC    X'EA'
         $SBA  (16,25)
* (16,25) (FG) Grey 
         DC    X'2842FE'
         DC    C'ey Sysgen  Ja'
         $SBA  (16,38)
* (16,38) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C',$$'
         DC    X'EAEA'
         DC    C'$$$S'
         $SBA  (16,47)
* (16,47) (FG) White 
         DC    X'2842FE'
         DC    C' '
         $SBA  (16,48)
* (16,48) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysgen'
         $SBA  (16,54)
* (16,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (17,3)
* (17,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'seley'
         $SBA  (17,8)
* (17,8) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (17,9)
* (17,9) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sy'
         $SBA  (17,11)
* (17,11) (FG) Blue 
         DC    X'2842F1'
         DC    C'swwS'
         DC    5C'$'
         DC    X'EAEA'
         $SBA  (17,22)
* (17,22) (FG) Grey 
         DC    X'2842FE'
         DC    C'oseley'
         $SBA  (17,28)
* (17,28) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (17,29)
* (17,29) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysgen '
         $SBA  (17,36)
* (17,36) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C',S$'
         DC    X'EA'
         $SBA  (17,40)
* (17,40) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C' M'
         $SBA  (17,42)
* (17,42) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C'$$$$'
         DC    X'7D'
         $SBA  (17,47)
* (17,47) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'y'
         $SBA  (17,48)
* (17,48) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (17,49)
* (17,49) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysge'
         $SBA  (17,54)
* (17,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (18,3)
* (18,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'osele'
         $SBA  (18,8)
* (18,8) (FG) Blue 
         DC    X'2842F1'
         DC    C'sS'
         DC    7C'$'
         DC    X'EAEA'
         $SBA  (18,19)
* (18,19) (FG) Grey 
         DC    X'2842FE'
         DC    C'ay'
         $SBA  (18,21)
* (18,21) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (18,22)
* (18,22) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Moseley'
         $SBA  (18,29)
* (18,29) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (18,30)
* (18,30) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysgen'
         $SBA  (18,36)
* (18,36) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C'S$$'
         $SBA  (18,39)
* (18,39) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'ay'
         $SBA  (18,41)
* (18,41) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    C'$$$$'
         DC    X'50'
         $SBA  (18,46)
* (18,46) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'ley'
         $SBA  (18,49)
* (18,49) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (18,50)
* (18,50) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysg'
         $SBA  (18,54)
* (18,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (19,3)
* (19,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Mos'
         $SBA  (19,6)
* (19,6) (FG) Blue 
         DC    X'2842F1'
         DC    C's'
         DC    8C'$'
         DC    X'EA'
         $SBA  (19,16)
* (19,16) (FG) Grey 
         DC    X'2842FE'
         DC    C'n  Jay'
         $SBA  (19,22)
* (19,22) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (19,23)
* (19,23) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Moseley'
         $SBA  (19,30)
* (19,30) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (19,31)
* (19,31) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysge'
         $SBA  (19,36)
* (19,36) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    X'EA'
         DC    C'$$ww$$$$'
         $SBA  (19,45)
* (19,45) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'seley'
         $SBA  (19,50)
* (19,50) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (19,51)
* (19,51) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sys'
         $SBA  (19,54)
* (19,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'   '
         $SBA  (20,4)
* (20,4) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Mo'
         $SBA  (20,6)
* (20,6) (FG) Blue 
         DC    X'2842F1'
         DC    X'EA'
         DC    6C'$'
         DC    X'EA'
         $SBA  (20,14)
* (20,14) (FG) Grey 
         DC    X'2842FE'
         DC    C'sgen  Jay'
         $SBA  (20,23)
* (20,23) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (20,24)
* (20,24) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Moseley'
         $SBA  (20,31)
* (20,31) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (20,32)
* (20,32) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysge'
         $SBA  (20,37)
* (20,37) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    X'EA'
         DC    C'S$$$$S'
         DC    X'EA'
         $SBA  (20,45)
* (20,45) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'oseley'
         $SBA  (20,51)
* (20,51) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (20,52)
* (20,52) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sy'
         $SBA  (20,54)
* (20,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (21,3)
* (21,3) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'y'
         $SBA  (21,4)
* (21,4) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (21,5)
* (21,5) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Mos'
         $SBA  (21,8)
* (21,8) (FG) Blue 
         DC    X'2842F1'
         DC    X'EA'
         $SBA  (21,9)
* (21,9) (FG) Grey 
         DC    X'2842FE'
         DC    C'l'
         $SBA  (21,10)
* (21,10) (FG) Blue 
         DC    X'2842F1'
         DC    X'EA'
         $SBA  (21,11)
* (21,11) (FG) Grey 
         DC    X'2842FE'
         DC    C'y'
         $SBA  (21,12)
* (21,12) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (21,13)
* (21,13) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysgen  Jay'
         $SBA  (21,24)
* (21,24) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (21,25)
* (21,25) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Moseley'
         $SBA  (21,32)
* (21,32) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (21,33)
* (21,33) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'Sysgen  '
         $SBA  (21,41)
* (21,41) Normal Display (FG) White (FG) Purple 
         DC    X'2800002842F72842FB'
         DC    X'EAEA'
         $SBA  (21,43)
* (21,43) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'y Moseley S'
         $SBA  (21,54)
* (21,54) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (23,3)
* (23,3) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'='
         $SBA  (23,4)
* (23,4) (FG) Purple 
         DC    X'2842FB'
         DC    C'='
         $SBA  (23,5)
* (23,5) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'='
         $SBA  (23,6)
* (23,6) (FG) Purple 
         DC    X'2842FB'
         DC    C'='
         $SBA  (23,7)
* (23,7) (FG) Turquoise 
         DC    X'2842F5'
         DC    C'='
         $SBA  (23,8)
* (23,8) (FG) Purple 
         DC    X'2842FB'
         DC    X'6E'
         $SBA  (24,1)
* (24,1) (FG) White 
         DC    X'2842FE'
         $SBA  (1,1)
* (1,1) (FG) Black 
         DC    X'2842F0'
         $SBA  (1,1)
* (1,1) (FG) White 
         DC    X'2842FE'
* Insert Cursor and unprotected field
         $SBA  (23,9)
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
         COPY EIGHTIES                    , logon screen copy book      66810010
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