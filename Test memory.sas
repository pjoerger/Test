%macro test ;
data test ;
set
%do i = 1 %to 1000 ;
 sashelp.class 
%end ;
;
run ;
proc freq data = test;
  tables sex / binomial(p=.5);
  exact binomial;
run;

%mend test ;
%test ;



%macro test2 ;
data test2 ;
set
%do i = 1 %to 10 ;
sashelp.failure 
%end ;
;
run ;

 proc npar1way wilcoxon correct=no data=test2;
      class process;
      var count;
      /*exact wilcoxon;*/
   run;
%mend test2 ;
%test2 ;

