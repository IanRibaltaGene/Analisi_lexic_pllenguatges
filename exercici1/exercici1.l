	//Processat del lletguatge regular constants enteres
	//Traduir octal(o, O), hex(ox, OX), binari(b, B) o decimal(nomes cal reconeixer) a decimal  

%option nounput
%option noinput
%x COMMENT PANIC

bin (b|B)[0-1]+
decimals [0-9]+
octal (o|O)[0-7]+
hex (ox|OX)[0-9A-Fa-f]+

delimitadors [ \t]

	int count=1;
%%

"/*" {BEGIN COMMENT;}
<COMMENT>"*/" {BEGIN 0;}
<COMMENT>. ;

{bin} {printf("%ld\n", strtol(yytext+1, NULL, 2));}

{octal} {printf("%ld\n", strtol(yytext+1, NULL, 8));}

{hex} {printf("%ld\n", strtol(yytext+2, NULL, 16));}

{decimals} {printf("%s\n", yytext);}

\n {count++;}

{delimitadors}+

. {printf("Caracter: %s no reconegut a la linea %d\n", yytext, count);
   BEGIN PANIC;}

<PANIC>\n {count++;
		BEGIN 0;}
<PANIC>{delimitadors}+ {BEGIN 0;}
<PANIC>.

%%
