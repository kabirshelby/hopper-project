%{
#include <stdio.h>
%}

DIGIT [0-9]
LETTER [a-zA-Z]
ALPHANUM [a-zA-Z0-9]

%%

{DIGIT}*"."{DIGIT}+   { printf("FLOAT: %s\n", yytext); }
{DIGIT}+               { printf("INTEGER: %s\n", yytext); }
{LETTER}{ALPHANUM}*    { printf("IDENTIFIER: %s\n", yytext); }
"+"                    { printf("PLUS\n"); }
"-"                    { printf("MINUS\n"); }
"*"                    { printf("MULTIPLY\n"); }
"/"                    { printf("DIVIDE\n"); }
"="                    { printf("ASSIGN\n"); }
"=="                   { printf("EQUAL\n"); }
"!="                   { printf("NOT_EQUAL\n"); }
"<"                    { printf("LESS_THAN\n"); }
">"                    { printf("GREATER_THAN\n"); }
"<="                   { printf("LESS_THAN_OR_EQUAL\n"); }
">="                   { printf("GREATER_THAN_OR_EQUAL\n"); }
"("                    { printf("LEFT_PAREN\n"); }
")"                    { printf("RIGHT_PAREN\n"); }
"{"                    { printf("LEFT_BRACE\n"); }
"}"                    { printf("RIGHT_BRACE\n"); }
";"                    { printf("SEMICOLON\n"); }
.|\n                   { /* Ignore other characters */ }
%%

int main() {
    yylex();
    return 0;
}

