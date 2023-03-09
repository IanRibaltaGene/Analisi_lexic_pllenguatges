%option nounput
%option noinput

%{
#include <stdio.h>
#include <stdlib.h>

#define VAR 400
#define NEG 401
#define CONJ 402
#define DISJ 403
#define IMP 404
#define DIMP 405

int line_number = 1;
%}

%%

[ \t]+                 { /* ignorar espais blancs i tabs */ }
"//"		       { line_number++; } /* Comentaris, incrementa line_number */
[A-Z]                  {  return VAR;   } /* match variable */
\!                     {  return NEG;   } /* match negat */
\&\&                   {  return CONJ;  } /* match conj */
\|\|                   {  return DISJ;  } /* match disj */
"->"                   {  return IMP;   } /* match imp */
"<->"                  {  return DIMP;  } /* match doble imp */
\(                     { /* match parentesis esquerra */ }
\)                     { /* match parentesis dreta */ }
\n                     { line_number++; } /* match newline, incrementa line_number */
.                      { /* match any other character, print error */ 
                         printf("Error: caracter no valid '%c' a la linea %d\n", yytext[0], line_number);
                      }
%%

int yywrap(){
	return(1);
}
