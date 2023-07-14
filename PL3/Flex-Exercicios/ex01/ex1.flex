/* 1. Escrever um programa que permite contar o número de ocorrências de uma cadeia de
caracteres. */

%{
#include <stdio.h>
int counter = 0;
int outras = 0;
%}

%option noyywrap
%option noinput
%option nounput
%option case-insensitive

PALAVRA ISEP
SEPARADOR [ \t\r\n,.]

%%
{SEPARADOR}{PALAVRA}{SEPARADOR} {counter++;}
{PALAVRA} {outras++;} 
.|\n /* ignora o outro texto */
%%

int main(int argc, char *argv[])
{
    printf("\n\n-------------\n");

    yylex();
    printf("\nNumero Ocorrencias isoladas: %d", outras);
    printf("\nOutras Ocorrencias: %d", counter);
    printf("\n\n-------------\n");
    return 0;
}


