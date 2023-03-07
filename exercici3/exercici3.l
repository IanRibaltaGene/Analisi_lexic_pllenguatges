%{
#include <stdio.h>
#include <stdlib.h>
int line_number = 1;
%}

%%

"//"		       { line_number++; } /* Comentaris, incrementa line_number */
[A-Z]                  { /* match variable */ }
\!                     { /* match negat */ }
\&\&                   { /* match conj */ }
\|\|                   { /* match disj */ }
"- >"                  { /* match imp */ }
"< - >"                { /* match doble imp */ }
\(                     { /* match parentesis esquerra */ }
\)                     { /* match parentesis dreta */ }
\n                     { line_number++; } /* match newline, incrementa line_number */
[ \t]                  { /* ignorar espais blancs i tabs */ }
.                      { /* match any other character, print error */ 
                         printf("Error: caracter no valid '%c' a la linea %d\n", yytext[0], line_number);
                         exit(1);
                      }
%%

int yywrap(){
	return(1);
}
