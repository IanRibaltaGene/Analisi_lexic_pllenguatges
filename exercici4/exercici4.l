%option nounput
%option noinput
%x PANIC COMMENT

%{
#include <stdio.h>
#include <stdlib.h>

#define VAR 400
#define CONS 401
#define PRED 402
#define FUNC 403
#define NEG 404
#define CONJ 405
#define DISJ 406
#define IMP 407
#define DIMP 408
#define FORALL 409
#define EXISTS 410
#define PARESQ 411
#define PARDRE 412
#define SEPARATOR 413 

int line_number = 1;
%}


separador ","
%%

[ \t]+                  /* ignorar espais blancs i tabs */ 

	/* Comentaris, incrementa line_number */
"//"			{ BEGIN COMMENT; }
<COMMENT>\n		{ line_number++; 
			BEGIN 0; }
<COMMENT>.

[x-z][1-9]              { return VAR;    } /* match variable */
[a-c][1-9]		{ return CONS;	 } /* match constant */
[P-T][1-9]		{ return PRED;   } /* match predicats */
[f-g][1-9]		{ return FUNC;	 } /* match funcions */

\!                      { return NEG;    } /* match negat */
\&\&                    { return CONJ;   } /* match conj */
\|\|                    { return DISJ;   } /* match disj */
"- >"                   { return IMP;    } /* match imp */
"< - >"                 { return DIMP;   } /* match doble imp */

"forall"		{ return FORALL; } /* match forall */
"exists"		{ return EXISTS; } /* match exists */

\(                      { return PARESQ;    } /* match parentesis esquerra */ 
\)                      { return PARDRE;    } /* match parentesis dreta */
{separador}		{ return SEPARATOR; } /* match separator */

\n                      { line_number++; } /* match newline, incrementa line_number */
.                       { /* match any other character, print error */ 
			  printf("Error: caracter no valid '%c' a la linea %d\n", yytext[0], line_number);
			  BEGIN PANIC; }
<PANIC>.
<PANIC>\n		{ line_number++;
			  BEGIN 0; }
%%

int yywrap(){
	return(1);
}
