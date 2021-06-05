# Sysgen NETSOL Screens

This repository contains a varied selection of NETSOL screens for use with MVS 3.8j.

Most of these were generated with https://github.com/mainframed/ANSi2EBCDiC

The `images` folder contains examples of the netsol screens, the `ans` folder contains the original ANSI used to generate these screens. This ANSI was created with Moebius and authors are credited for the original artwork within the JCL.

## Install

Submit any of the JCL files to your MVS 3.8j sysgen mainframe either using the local port or by uploading it and submitting it in TSO.

The JCL copies the netsol source from `SYS1.AMACLIB(NETSOL)`, places it in `SYS1.UMODMAC(NETSOL)` and updates as appropriate. The 3270 stream is then placed it in own member in `SYS1.UMODMAC`.

After submitting the job you need to reset VTAM with:

```
/p tso
/z net,quick
/s net
```

## Screenshots

### CORPORAT

**CORPORAT.JCL**

[CORPORAT](images/CORPORAT.png)

### DOCKER

**DOCKER.JCL**

[DOCKER](images/DOCKER.png)

### EIGHTIES

**EIGHTIES.JCL**

[EIGHTIES](images/EIGHTIES.png)

### ENTROPY

**ENTROPY.JCL**

[ENTROPY](images/ENTROPY.png)

### FEDERAL

**FEDERAL.JCL**

[FEDERAL](images/FEDERAL.png)

### GODZILLA

**GODZILLA.JCL**

[GODZILLA](images/GODZILLA.png)

### MFRAME

**MFRAME.JCL**

[MFRAME](images/MFRAME.png)

### MOSELEY

**MOSELEY.JCL**

[MOSELEY](images/MOSELEY.png)

### SKULL

**SKULL.JCL**

[SKULL](images/SKULL.png)

### TOMMY

**TOMMY.JCL**

[TOMMY](images/TOMMY.png)

### WELCOME

**WELCOME.JCL**

[WELCOME](images/WELCOME.png)