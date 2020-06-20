
 data _null_;
 rc = gitfn_commit(
 "/folders/myfolders/GitTest1/Test",   
 "HEAD",         
 "pjoerger",                     
 "pjoerger@t-online.de",
 "Add SAS GIT function programs"
 );          
put rc= ;
run;