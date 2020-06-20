data _null_;
    rc = gitfn_clone (                
     "https://github.com/pjoerger/Test.git",                   
     "/folders/myfolders/GitTest1/Test") ;            
    put rc=;                          
run;