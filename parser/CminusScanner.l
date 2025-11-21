%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../codegen/codegen.h"
#include "CminusParser.h"

int Cminus_lineno = 1;
FILE *Cminus_in;
%}

/* ================== DEFINITIONS ================== */
DIGIT      [0-9]
LETTER     [a-zA-Z]
ID         {LETTER}({LETTER}|{DIGIT}|_)*
INTCON     {DIGIT}+
STRING     \"([^\\\"]|\\.)*\"

/* ================== RULES ================== */
%%
"if"            { return IF; }
"else"          { return ELSE; }
"while"         { return WHILE; }
"for"           { return FOR; }
"return"        { return RETURN; }

"read"          { return READ; }
"write"         { return WRITE; }
"exit"          { return EXIT; }

"int"           { return INTEGER; }
"integer"       { return INTEGER; }
"float"         { return FLOAT; }

"&&"            { return AND; }
"||"            { return OR; }
"!"             { return NOT; }

"<="            { return LE; }
">="            { return GE; }
"=="            { return EQ; }
"!="            { return NE; }
"<"             { return LT; }
">"             { return GT; }

"+"             { return PLUS; }
"-"             { return MINUS; }
"*"             { return TIMES; }
"/"             { return DIVIDE; }

"="             { return ASSIGN; }
","             { return COMMA; }
";"             { return SEMICOLON; }
"{"             { return LBRACE; }
"}"             { return RBRACE; }
"["             { return LBRACKET; }
"]"             { return RBRACKET; }
"("             { return LPAREN; }
")"             { return RPAREN; }

/* literals and identifiers */
{INTCON}        {
                    Cminus_lval.name = strdup(yytext);
                    return INTCON;
                }

{STRING}        {
                    Cminus_lval.name = strdup(yytext);
                    return STRING;
                }

{ID}            {
                    Cminus_lval.name = strdup(yytext);
                    return IDENTIFIER;
                }

/* whitespace and comments */
[ \t\r]+        { /* ignore */ }
\n              { ++Cminus_lineno; }

"//".*          { /* single-line comment */ }

"/*"            {
                    int c;
                    while ((c = input()) != 0) {
                        if (c == '*') {
                            if ((c = input()) == '/') break;
                            else unput(c);
                        } else if (c == '\n') {
                            ++Cminus_lineno;
                        }
                    }
                }

/* error fallback */
. {
    fprintf(stderr,
            "Lexical error at line %d: unexpected character '%s'\n",
            Cminus_lineno, yytext);
}
%%

int yywrap(void) { return 1; }
int Cminus_lex(void) { return yylex(); }
