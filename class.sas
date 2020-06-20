libname test "/folders/myfolders/test/";

data test.class_all;
    set sashelp.class sashelp.class sashelp.class;
run;



proc sort data=test.class_all out=test.class;
    by sex age;
run;

ods listing close;
ods tagsets.rtf file="/folders/myfolders/test/test.rtf"  tablerows=20 
    style=journal;

proc REPORT data=TEST.CLASS SPANROWS;
    COLUMNS Sex Age Name Height Weight;
    define sex / order order=data;
    define age / order order=data;
run;

ods tagsets.rtf close;
ods listing;

proc export
data=sashelp.class
outfile="/folders/myfolders/test/test1.xlsx"
dbms=xlsx
replace;
run;

proc export data=sashelp.class
   outfile='/folders/myfolders/test/test2.csv'
   dbms=csv ;
   delimiter=';' ;
run;

DATA class;
SET sashelp.class;
FORMAT age 3. height weight 6.2;
IF name = 'Thomas' THEN age = .;
id="01234" ;
RUN;

proc export
data=class
outfile="/folders/myfolders/test/test3.xlsx"
dbms=xlsx
replace;
run;

