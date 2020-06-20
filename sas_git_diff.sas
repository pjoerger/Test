data _null_;
 n=gitfn_diff(
  "/folders/myfolders/GitTest1/Test", 
  "517e8628",          
  "482dedfd");         
 put n=;                      
   rc= gitfn_diff_to_file(1,
    "517e8628",
    "482dedfd",
    "/folders/myfolders/GitTest1/Test/diff_content.txt");
   put rc=;
run;