
 data _null_;
 rc = gitfn_pull(
 "/folders/myfolders/GitTest1/Test",   
 "pjoerger",                     
 "#J05rg5r"
 );          
put rc= ;
run;