/* Escrever um programa que permite identificar números naturais; */

%{
    #include <stdio.h>
%}

%option noyywrap
%option noinput
%option nounput

NUMERO [1-9]*

%%
{NUMERO} printf("Found number: %s\n", yytext);
.|\n /* ignora o outro texto */;
%%

int main(int argc, char *argv[])
{
    printf("\n\n-------------\n");
    yylex();
    printf("-------------\n");
    return 0;
}