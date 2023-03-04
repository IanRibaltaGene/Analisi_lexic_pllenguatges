	//Processat del lletguatge regular constants enteres
	//Traduir octal(o, O), hex(ox, OX), binari(b, B) o decimal(nomes cal reconeixer) a decimal  

bin (b|B)[0-1]+
decimals [0-9]+
octal (o|O)[0-7]+
hex (ox|OX)[0-9A-Fa-f]+
%%

{bin} {printf("Binary: %s --> Decimal: %ld\n", yytext, strtol(yytext+1, NULL, 2));}

{octal} {printf("Octal: %s --> Decimal: %ld\n", yytext, strtol(yytext+1, NULL, 8));}

{hex} {printf("Hex: %s --> Decimal: %ld\n", yytext, strtol(yytext+2, NULL, 16));}

{decimals} {printf("Decimal: %s\n", yytext);}

.|\n {/*Ignorar la resta*/}

%%
