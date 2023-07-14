/* Escrever um programa que permite identificar números com parte decimal (com ou sem sinal). */
%{
    #include <stdio.h>
%}

%option noyywrap
%option noinput
%option nounput

NATURAL ([0-9]+)
REAL ((-?{NATURAL}\.{NATURAL})|(-?{NATURAL},{NATURAL}))

%%
{REAL} {printf("Numero decimal bro: %s\n", yytext);}
.|\n
%%

int main ()
{
    yylex();
}
