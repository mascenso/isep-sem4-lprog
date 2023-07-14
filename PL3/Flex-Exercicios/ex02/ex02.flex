%{
    #include <stdio.h>
%}

%option noyywrap
%option nounput
%option noinput

%%
"FEUP" {printf("ISEP");}
"2007" {printf("2008");}
. | \n {printf("%s",yytext);}
%%

int main(){
	yylex();
	return 0;
}
