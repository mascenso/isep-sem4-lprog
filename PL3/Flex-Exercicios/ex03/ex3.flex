/* 3. Escrever um programa que permite validar matrículas portuguesas.. */

%{
%}

%option noyywrap
%option noinput
%option nounput

DIGITO [0-9]
LETRA [A-Z]

/*
AA-00-00
00-00-AA
00-AA-00
AA-00-AA
*/
MAT1 {LETRA}{2}-{DIGITO}{2}-{LETRA}{2}
MAT2 {LETRA}{2}-{DIGITO}{2}-{DIGITO}{2}
MAT3 {DIGITO}{2}-{LETRA}{2}-{DIGITO}{2}
MAT4 {DIGITO}{2}-{DIGITO}{2}-{LETRA}{2}

MATRICULAS ({MAT1}|{MAT2}|{MAT3}|{MAT4})

%%
{MATRICULAS} {printf("Matricula válida: %s\n", yytext);}
.|\n /* ignora o outro texto */ ;
%%

int main(int argc, char *argv[])
{
    printf("\n\n-------------\n");
    yylex();
    printf("\n\n-------------\n");
    return 0;
}
