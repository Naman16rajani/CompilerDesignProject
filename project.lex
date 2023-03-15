%{
#include<stdio.h>
#include "y.tab.h" 
%}
%%
[0-9]+ {printf("Digit\t\t: %s\n",yytext); return dg;};
"atle "|"etle "|"to "|"thay "|"thase "|"na "|"chheto "|"che to " {printf("Keyword\t\t:%s\n",yytext); return k;};
"kelvin "|"celsius "|"rankine "|"fahrenhit " {printf("Temp Unit\t: %s\n",yytext);return tu;} ;
"ketla "|"ketlu "|"ketli " {printf("Que Word\t:%s\n",yytext); return qw;};
"?" {printf("Que mark\t: %s\n",yytext); return qm;};
"." {return 0;};
%%
int yywrap() {
return 1;
}
// int main(){
// yylex();
// return 0;
// }
 
 /*End of the file*/