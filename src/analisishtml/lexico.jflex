package analisishtml;

import java_cup.runtime.Symbol;



%%

%{
    //Código de usuario
    String cadena= "";
%}

%cup
%class scannerh
%public
%line
%char
%column
%full
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
CLOSE   = "/>"

//logicos
TRU     = "true"
FALS    = "false"
AND     = "&&"
OR      = "||"
NOT     = "!"


//etiquetas
HTML_I  = "<html"
HTML_F  = "</html>"
HEAD_I  = "<head"
HEAD_F  = "</head>"
BODY_I  = "<body"
BODY_F  = "</body>"
H1_I    = "<h1"
H1_F    = "</h1>"
H2_I    = "<h2"
H2_F    = "</h2>"
H3_I    = "<h3"
H3_F    = "</h3>"
H4_I    = "<h4"
H4_F    = "</h4>"
H5_I    = "<h5"
H5_F    = "</h5>"
H6_I    = "<h6"
H6_F    = "</h6>"
TITLE_I = "<title"
TITLE_F = "</title>"
TABLE_I = "<table"
TABLE_F = "</table>"
TH_I    = "<th"
TH_F    = "</th>"
TD_I    = "<td"
TD_F    = "</td>"
TR_I    = "<tr"
TR_F    = "</tr>"
DIV_I   = "<div"
DIV_F   = "</div>"
P_I     = "<p"
P_F     = "</p>"
BR_I    = "<br"
BR_F    = "</br>"
HR_I    = "<hr"
HR_F    = "</hr>"

//atributos
COLOR   = "color"
TCOLOR  = "textcolor"
ALIGN   = "align"
FONT    = "font"

//Tipo de Datos
INT     = "Numero Entero"
BOOLEA  = "Booleanpo"
STRIN   = "Cadena"
CARAC   = "Caracter"
DOUBL   = "Numero Flotante"

//reservadas
RESULT  = "RESULT"
PRINT   = "Print"
SCORE   = "score"
VARIA   = "variables"
NOMBR   = "nombre"
CANTI   = "cantidad"
METOD   = "metodos"
CLASE   = "clases"

//expresiones
ENTERO  = ("-")?[0-9]+
ID      = [A-Za-zñÑ]([_0-9A-Za-zñÑ]*[0-9A-Za-zñÑ])
DECIMAL = {ENTERO}"."{ENTERO}
SPACE   = [\ \r\t\f\t]
ENTER   = [\ \n]
InputCharacter = [^\r\n]
CADENA  = ("\"")?{InputCharacter}("\"")
COMENTM = "</" [^/] ~"/>/" | "/*" "/"+ ">"
InputCharacter = [^\r\n]
LineTerminator = \r|\n|\r\n
COMENTL = "->" {InputCharacter}* {LineTerminator}?
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
<YYINITIAL> {CLOSE}     { return new Symbol(sym.CLOSE, yyline, yycolumn,yytext());}

//Tipo de Datos
<YYINITIAL> {INT}       { return new Symbol(sym.INT, yyline, yycolumn,yytext());}
<YYINITIAL> {BOOLEA}    { return new Symbol(sym.BOOLEA, yyline, yycolumn,yytext());}
<YYINITIAL> {STRIN}     { return new Symbol(sym.STRIN, yyline, yycolumn,yytext());}
<YYINITIAL> {CARAC}     { return new Symbol(sym.CARAC, yyline, yycolumn,yytext());}
<YYINITIAL> {DOUBL}     { return new Symbol(sym.DOUBL, yyline, yycolumn,yytext());}

//reservadas
<YYINITIAL> {RESUL}     { return new Symbol(sym.RESUL, yyline, yycolumn,yytext());}
<YYINITIAL> {PRINT}     { return new Symbol(sym.PRINT, yyline, yycolumn,yytext());}
<YYINITIAL> {CLASES}    { return new Symbol(sym.CLASES, yyline, yycolumn,yytext());}
<YYINITIAL> {VARIAB}    { return new Symbol(sym.VARIAB, yyline, yycolumn,yytext());}
<YYINITIAL> {CLASE}     { return new Symbol(sym.CLASE, yyline, yycolumn,yytext());}
<YYINITIAL> {NOMBRE}    { return new Symbol(sym.NOMBRE, yyline, yycolumn,yytext());}
<YYINITIAL> {COMENT}    { return new Symbol(sym.COMENT, yyline, yycolumn,yytext());}
<YYINITIAL> {TEXTO}     { return new Symbol(sym.TEXTO, yyline, yycolumn,yytext());}
<YYINITIAL> {PARAME}    { return new Symbol(sym.PARAME, yyline, yycolumn,yytext());}
<YYINITIAL> {METODO}    { return new Symbol(sym.METODO, yyline, yycolumn,yytext());}

//expresiones
<YYINITIAL> {ENTERO}    { return new Symbol(sym.ENTERO, yyline, yycolumn,yytext());}
<YYINITIAL> {DECIMAL}   { return new Symbol(sym.DECIMAL, yyline, yycolumn,yytext());}
<YYINITIAL> {ID}        {return new Symbol(sym.ID, yyline, yycolumn,yytext());}
<YYINITIAL> {SPACE}     { /*Espacios en blanco, ignorados*/ }
<YYINITIAL> {ENTER}     { /*Saltos de linea, ignorados*/}
<YYINITIAL> {COMENTARIO} {return new Symbol(sym.COMENTARIO, yyline, yycolumn,yytext());}

<YYINITIAL> . {
        String errLex = "Error léxico : '"+yytext()+"' en la línea: "+(yyline+1)+" y columna: "+(yycolumn+1);
        System.out.println(errLex);
}

<YYINITIAL> {CADENA}    {return new Symbol(sym.CADENA, yyline, yycolumn,yytext());}