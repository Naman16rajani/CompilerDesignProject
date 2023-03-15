%{
#include<stdio.h> 
#include<stdlib.h> 
int yylex();
int yyerror(char *);
%}
%token dg k tu qw qm 
%%
S: A {printf("\nThis sentence is valid.\n"); return 0;}; 
|| B {printf("\nThis sentence is valid.\n"); return 0;}; 
|| C {printf("\nThis sentence is valid.\n"); return 0;};
;
A: dg tu k qw tu k qm ;
B: tu dg k tu qw qm;
C: dg tu k qw tu qm;
%%
int yyerror(char *) {
printf("Error: Invalid sentence\n");
exit(1); 
return 1;
}

int main() {
printf("Enter sentence: ");
yyparse();
return 0;
 }