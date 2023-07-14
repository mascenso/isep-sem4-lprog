%{
    #include <stdio.h>
    int counterAlgarismos; //número de algarismos;
    int counterLetras; //número de letras;
    int counterLinhas; //número de linhas de texto;
    int counterEspacos; //número de espaços ou tabulações (\t);
    int counterOutros; //Outros
%}

%option noyywrap
%option noinput
%option nounput

ALGARISMO [0-9]
LETRA [A-Za-z]
LINEBREAK \n
ESPACO [ ]
OUTRO .

%%
{ALGARISMO} counterAlgarismos++;
{LETRA} counterLetras++;
{LINEBREAK} counterLinhas++;
{ESPACO} counterEspacos++;
{OUTRO} counterOutros++;
%%

int main(){

    yylex();

    printf("-------------------\n");
    printf("Numero de algarismos: %d\n", counterAlgarismos);
    printf("Numero de letras: %d\n", counterLetras);
    printf("Numero de linhas: %d\n", counterLinhas);
    printf("Numero de espacos/tabulacoes: %d\n", counterEspacos);
    printf("Outros: %d\n", counterOutros);
    printf("-------------------\n");

}
