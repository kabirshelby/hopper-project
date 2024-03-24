%{
#include<stdio.h>
%}
DIGIT [0-9]
%%
{DIGIT}+     {printf("integer:%s\n",yytext);}
.|\n         {/*ignore all other characters */}
%%
int main(){
yylex();
return 0;}
