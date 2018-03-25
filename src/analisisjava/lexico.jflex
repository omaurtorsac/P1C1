package analisisjava;

import java_cup.runtime.Symbol;



%%

%{
    //Código de usuario
    String cadena= "";
%}

%cup
%class scanner
%public
%line
%char
%column
%full
%state CADENA
%ignorecase

//simbolos

PAR_A   = "("
PAR_C   = ")"
LLAV_A  = "{"
LLAV_C  = "}"
COR_A   = "["
COR_C   = "]"
COMA    = ","
PYCOMA  = ";"
DOSPU   = ":"
PUNTO   = "."
SUMA    = "+"
RESTA   = "-"
MODS    = "%"
MULTI   = "*"
DIVIS   = "/"
MAYOR   = ">"
MENOR   = "<"
IGUAL   = "="


//logicos

TRU     = "true"
FALS    = "false"
AND     = "&&"
OR      = "||"
NOT     = "!"


//visibilidad

PRIVAT  = "private"
PUBLI   = "public"
PROTEC  = "protected"
FINA    = "final"


//Tipo de Datos
INT     = "int"
BOOLEA  = "boolean"
STRIN   = "String"
CARAC   = "char"
DOUBL   = "double"
OBJEC   = "Object"
VOID    = "void"

//sentencias
IF      = "if"
ELSE    = "else"
DO      = "do"
WHILE   = "while"
SWITCH  = "switch"
FOR     = "for"

//reservadas
CASE    = "case"
BREAK   = "break"
IMPOR   = "import"
CLASS   = "class"
RETUR   = "return"
SCANE   = "Scanner(System.in)"
NEXTL   = "nextLine"
NEXTI   = "nextInt"
SYSTE   = "System"
OUT     = "out"
PRINT   = "println"
INTEG   = "Integer"
PARSI   = "parseInt"
PARSF   = "parseFloat"
FLOAT   = "Flaot"
EXTEN   = "extends"
STATI   = "static"
DEFAU   = "default"
NEW     = "new"

//expresiones
ENTERO  = ("-")?[0-9]+
ID      = [A-Za-zñÑ]([_0-9A-Za-zñÑ]*[0-9A-Za-zñÑ])*
DECIMAL = ENTERO"."ENTERO
SPACE   = [\ \r\t\f\t]
ENTER   = [\ \n]
//CARACT   = [^""]+
COMENTM = "/*" [^*] ~"*/" | "/*" "*"+ "/"
InputCharacter = [^\r\n]
LineTerminator = \r|\n|\r\n
COMENTL = "//" {InputCharacter}* {LineTerminator}?

COMENTARIO = {COMENTL} | {COMENTM}
%%

//simbolos
<YYINITIAL> {PAR_A}     { return new Symbol(sym.PAR_A, yyline, yycolumn,yytext());}
<YYINITIAL> {PAR_C}     { return new Symbol(sym.PAR_C, yyline, yycolumn,yytext());}
<YYINITIAL> {LLAV_A}    { return new Symbol(sym.LLAV_A, yyline, yycolumn,yytext());}
<YYINITIAL> {LLAV_C}    { return new Symbol(sym.LLAV_C, yyline, yycolumn,yytext());}
<YYINITIAL> {COR_A}     { return new Symbol(sym.COR_A, yyline, yycolumn,yytext());}
<YYINITIAL> {COR_C}     { return new Symbol(sym.COR_C, yyline, yycolumn,yytext());}
<YYINITIAL> {COMA}      { return new Symbol(sym.COMA, yyline, yycolumn,yytext());}
<YYINITIAL> {PYCOMA}    { return new Symbol(sym.PYCOMA, yyline, yycolumn,yytext());}
<YYINITIAL> {DOSPU}     { return new Symbol(sym.DOSPU, yyline, yycolumn,yytext());}
<YYINITIAL> {PUNTO}     { return new Symbol(sym.PUNTO, yyline, yycolumn,yytext());}
<YYINITIAL> {SUMA}      { return new Symbol(sym.SUMA, yyline, yycolumn,yytext());}
<YYINITIAL> {RESTA}     { return new Symbol(sym.RESTA, yyline, yycolumn,yytext());}
<YYINITIAL> {MODS}      { return new Symbol(sym.MODS, yyline, yycolumn,yytext());}
<YYINITIAL> {MULTI}     { return new Symbol(sym.MULTI, yyline, yycolumn,yytext());}
<YYINITIAL> {DIVIS}     { return new Symbol(sym.DIVIS, yyline, yycolumn,yytext());}
<YYINITIAL> {MAYOR}     { return new Symbol(sym.MAYOR, yyline, yycolumn,yytext());}
<YYINITIAL> {MENOR}     { return new Symbol(sym.MENOR, yyline, yycolumn,yytext());}
<YYINITIAL> {IGUAL}     { return new Symbol(sym.IGUAL, yyline, yycolumn,yytext());}

//logicos
<YYINITIAL> {AND}       { return new Symbol(sym.AND, yyline, yycolumn,yytext());}
<YYINITIAL> {OR}        { return new Symbol(sym.OR, yyline, yycolumn,yytext());}
<YYINITIAL> {NOT}       { return new Symbol(sym.NOT, yyline, yycolumn,yytext());}
<YYINITIAL> {TRU}       { return new Symbol(sym.TRU, yyline, yycolumn,yytext());}
<YYINITIAL> {FALS}      { return new Symbol(sym.FALS, yyline, yycolumn,yytext());}

//visibilidad
<YYINITIAL> {PUBLI}     { return new Symbol(sym.PUBLI, yyline, yycolumn,yytext());}
<YYINITIAL> {PROTEC}    { return new Symbol(sym.PROTEC, yyline, yycolumn,yytext());}
<YYINITIAL> {PRIVAT}    { return new Symbol(sym.PRIVAT, yyline, yycolumn,yytext());}
<YYINITIAL> {FINA}      { return new Symbol(sym.FINA, yyline, yycolumn,yytext());}

//Tipo de Datos
<YYINITIAL> {INT}       { return new Symbol(sym.INT, yyline, yycolumn,yytext());}
<YYINITIAL> {BOOLEA}    { return new Symbol(sym.BOOLEA, yyline, yycolumn,yytext());}
<YYINITIAL> {STRIN}     { return new Symbol(sym.STRIN, yyline, yycolumn,yytext());}
<YYINITIAL> {CARAC}     { return new Symbol(sym.CARAC, yyline, yycolumn,yytext());}
<YYINITIAL> {DOUBL}     { return new Symbol(sym.DOUBL, yyline, yycolumn,yytext());}
<YYINITIAL> {OBJEC}     { return new Symbol(sym.OBJEC, yyline, yycolumn,yytext());}
<YYINITIAL> {VOID}      { return new Symbol(sym.VOID, yyline, yycolumn,yytext());}

//sentencias
<YYINITIAL> {IF}        { return new Symbol(sym.IF, yyline, yycolumn,yytext());}
<YYINITIAL> {ELSE}      { return new Symbol(sym.ELSE, yyline, yycolumn,yytext());}
<YYINITIAL> {DO}        { return new Symbol(sym.DO, yyline, yycolumn,yytext());}
<YYINITIAL> {WHILE}     { return new Symbol(sym.WHILE, yyline, yycolumn,yytext());}
<YYINITIAL> {SWITCH}    { return new Symbol(sym.SWITCH, yyline, yycolumn,yytext());}
<YYINITIAL> {FOR}       { return new Symbol(sym.FOR, yyline, yycolumn,yytext());}

//reservadas
<YYINITIAL> {CASE}      { return new Symbol(sym.CASE, yyline, yycolumn,yytext());}
<YYINITIAL> {BREAK}     { return new Symbol(sym.BREAK, yyline, yycolumn,yytext());}
<YYINITIAL> {IMPOR}     { return new Symbol(sym.IMPOR, yyline, yycolumn,yytext());}
<YYINITIAL> {CLASS}     { return new Symbol(sym.CLASS, yyline, yycolumn,yytext());}
<YYINITIAL> {RETUR}     { return new Symbol(sym.RETUR, yyline, yycolumn,yytext());}
<YYINITIAL> {SCANE}     { return new Symbol(sym.SCANE, yyline, yycolumn,yytext());}
<YYINITIAL> {NEXTL}     { return new Symbol(sym.NEXTL, yyline, yycolumn,yytext());}
<YYINITIAL> {NEXTI}     { return new Symbol(sym.NEXTI, yyline, yycolumn,yytext());}
<YYINITIAL> {SYSTE}     { return new Symbol(sym.SYSTE, yyline, yycolumn,yytext());}
<YYINITIAL> {OUT}       { return new Symbol(sym.OUT, yyline, yycolumn,yytext());}
<YYINITIAL> {PRINT}     { return new Symbol(sym.PRINT, yyline, yycolumn,yytext());}
<YYINITIAL> {INTEG}     { return new Symbol(sym.INTEG, yyline, yycolumn,yytext());}
<YYINITIAL> {PARSI}     { return new Symbol(sym.PARSI, yyline, yycolumn,yytext());}
<YYINITIAL> {PARSF}     { return new Symbol(sym.PARSF, yyline, yycolumn,yytext());}
<YYINITIAL> {FLOAT}     { return new Symbol(sym.FLOAT, yyline, yycolumn,yytext());}
<YYINITIAL> {EXTEN}     { return new Symbol(sym.EXTEN, yyline, yycolumn,yytext());}
<YYINITIAL> {STATI}     { return new Symbol(sym.STATI, yyline, yycolumn,yytext());}
<YYINITIAL> {DEFAU}     { return new Symbol(sym.DEFAU, yyline, yycolumn,yytext());}
<YYINITIAL> {NEW}       { return new Symbol(sym.NEW, yyline, yycolumn,yytext());}

//expresiones
<YYINITIAL> {ENTERO}    { return new Symbol(sym.ENTERO, yyline, yycolumn,yytext());}
<YYINITIAL> {DECIMAL}   { return new Symbol(sym.DECIMAL, yyline, yycolumn,yytext());}
<YYINITIAL> {ID}        {return new Symbol(sym.ID, yyline, yycolumn,yytext());}
<YYINITIAL> [\"]        { yybegin(CADENA); cadena+="\""; }
<YYINITIAL> {SPACE}     { /*Espacios en blanco, ignorados*/ }
<YYINITIAL> {ENTER}     { /*Saltos de linea, ignorados*/}
<YYINITIAL> {COMENTARIO} {return new Symbol(sym.COMENTARIO, yyline, yycolumn,yytext());}


<YYINITIAL> . {
        String errLex = "Error léxico : '"+yytext()+"' en la línea: "+(yyline+1)+" y columna: "+(yycolumn+1);
        System.out.println(errLex);
}

/*<CADENA> {
        [\"] { String tmp=cadena+"\""; cadena=""; yybegin(YYINITIAL);  return new Symbol(sym.CADENA, yychar,yyline,tmp); }
        [\n] {String tmp=cadena; cadena="";  
                System.out.println("Se esperaba cierre de cadena (\")."); 
                yybegin(YYINITIAL);
            }
        [^\"] { cadena+=yytext();}
}*/