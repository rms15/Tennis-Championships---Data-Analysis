x 'cd U:\SAS\project\tennis';
libname lib 'U:\SAS\project\tennis';
/*
proc import datafile='USOpen-men-2013.csv'  
	out=lib.usopen_mens
	dbms=csv
	replace;
	getnames=yes;
run;
*/
    data LIB.USOPEN_MENS    ;
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */
    infile 'USOpen-men-2013.csv' delimiter = ',' MISSOVER DSD lrecl=32767 firstobs=2 ;
       informat Player1 $21. ;
       informat Player2 $21. ;
       informat Round best32. ;
       informat Result best32. ;
       informat FNL1 best32. ;
       informat FNL2 best32. ;
       informat FSP_1 best32. ;
       informat FSW_1 best32. ;
       informat SSP_1 best32. ;
       informat SSW_1 best32. ;
       informat ACE_1 best32. ;
       informat DBF_1 best32. ;
       informat WNR_1 $1. ;
       informat UFE_1 $1. ;
       informat BPC_1 best32. ;
       informat BPW_1 best32. ;
       informat NPA_1 best32. ;
       informat NPW_1 best32. ;
       informat TPW_1 best32. ;
       informat ST1_1 best32. ;
       informat ST2_1 best32. ;
       informat ST3_1 best32. ;
       informat ST4_1 $2. ;
       informat ST5_1 $2. ;
       informat FSP_2 best32. ;
       informat FSW_2 best32. ;
       informat SSP_2 best32. ;
       informat SSW_2 best32. ;
       informat ACE_2 best32. ;
       informat DBF_2 best32. ;
       informat WNR_2 $1. ;
       informat UFE_2 $1. ;
       informat BPC_2 best32. ;
       informat BPW_2 best32. ;
       informat NPA_2 best32. ;
       informat NPW_2 best32. ;
       informat TPW_2 best32. ;
       informat ST1_2 best32. ;
       informat ST2_2 best32. ;
       informat ST3_2 best32. ;
       informat ST4_2 $2. ;
       informat ST5_2 $2. ;
       format Player1 $21. ;
       format Player2 $21. ;
       format Round best12. ;
       format Result best12. ;
       format FNL1 best12. ;
       format FNL2 best12. ;
       format FSP_1 best12. ;
       format FSW_1 best12. ;
       format SSP_1 best12. ;
       format SSW_1 best12. ;
       format ACE_1 best12. ;
       format DBF_1 best12. ;
       format WNR_1 $1. ;
       format UFE_1 $1. ;
       format BPC_1 best12. ;
       format BPW_1 best12. ;
       format NPA_1 best12. ;
       format NPW_1 best12. ;
       format TPW_1 best12. ;
       format ST1_1 best12. ;
       format ST2_1 best12. ;
       format ST3_1 $2. ;
       format ST4_1 $2. ;
       format ST5_1 $2. ;
       format FSP_2 best12. ;
       format FSW_2 best12. ;
       format SSP_2 best12. ;
       format SSW_2 best12. ;
       format ACE_2 best12. ;
       format DBF_2 best12. ;
       format WNR_2 $1. ;
       format UFE_2 $1. ;
       format BPC_2 best12. ;
       format BPW_2 best12. ;
       format NPA_2 best12. ;
       format NPW_2 best12. ;
       format TPW_2 best12. ;
       format ST1_2 best12. ;
       format ST2_2 best12. ;
       format ST3_2 $2. ;
       format ST4_2 $2. ;
       format ST5_2 $2. ;
    input
                Player1 $
                Player2 $
                Round
                Result
                FNL1
                FNL2
                FSP_1
                FSW_1
                SSP_1
                SSW_1
                ACE_1
                DBF_1
                WNR_1 $
                UFE_1 $
                BPC_1
                BPW_1
                NPA_1
                NPW_1
                TPW_1
                ST1_1
                ST2_1
                ST3_1
                ST4_1 $
                ST5_1 $
                FSP_2
                FSW_2
                SSP_2
                SSW_2
                ACE_2
                DBF_2
                WNR_2 $
                UFE_2 $
                BPC_2
                BPW_2
                NPA_2
                NPW_2
                TPW_2
                ST1_2
                ST2_2
                ST3_2
                ST4_2 $
                ST5_2 $
    ;
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */
    run;

proc print data=lib.usopen_mens;
 title 'Data from usopen_mens dataset';
run;

