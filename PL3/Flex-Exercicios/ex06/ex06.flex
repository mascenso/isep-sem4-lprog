/* 6. Escrever um programa que permite identificar números inteiros (com ou sem sinal). */
%{
    #include <stdio.h>
%}

%option noyywrap
%option noinput
%option nounput

INTEIRO (-?[0-9]+)

%%
{INTEIRO} {printf("Numero inteiro: %s\n", yytext);}
.|\n

%%
int main ()
{
    yylex();
}
