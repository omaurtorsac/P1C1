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
%state CADENA

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
CPREP   = "$$"

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
RESUL  = "RESULT"
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
CADENA2  = [0-9A-Za-zñÑ_]([0-9A-Za-zñÑ_]|" ")+
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
<YYINITIAL> {CPREP}     { return new Symbol(sym.CPREP, yyline, yycolumn,yytext());}
//logicos
<YYINITIAL> {AND}       { return new Symbol(sym.AND, yyline, yycolumn,yytext());}
<YYINITIAL> {OR}        { return new Symbol(sym.OR, yyline, yycolumn,yytext());}
<YYINITIAL> {NOT}       { return new Symbol(sym.NOT, yyline, yycolumn,yytext());}
<YYINITIAL> {TRU}       { return new Symbol(sym.TRU, yyline, yycolumn,yytext());}
<YYINITIAL> {FALS}      { return new Symbol(sym.FALS, yyline, yycolumn,yytext());}

//Tipo de Datos
<YYINITIAL> {INT}       { return new Symbol(sym.INT, yyline, yycolumn,yytext());}
<YYINITIAL> {BOOLEA}    { return new Symbol(sym.BOOLEA, yyline, yycolumn,yytext());}
<YYINITIAL> {STRIN}     { return new Symbol(sym.STRIN, yyline, yycolumn,yytext());}
<YYINITIAL> {CARAC}     { return new Symbol(sym.CARAC, yyline, yycolumn,yytext());}
<YYINITIAL> {DOUBL}     { return new Symbol(sym.DOUBL, yyline, yycolumn,yytext());}

//etiquetas
<YYINITIAL> {HTML_I}    { return new Symbol(sym.HTML_I, yyline, yycolumn,yytext());}
<YYINITIAL> {HTML_F}    { return new Symbol(sym.HTML_F, yyline, yycolumn,yytext());}
<YYINITIAL> {HEAD_I}    { return new Symbol(sym.HEAD_I, yyline, yycolumn,yytext());}
<YYINITIAL> {HEAD_F}    { return new Symbol(sym.HEAD_F, yyline, yycolumn,yytext());}
<YYINITIAL> {BODY_I}    { return new Symbol(sym.BODY_I, yyline, yycolumn,yytext());}
<YYINITIAL> {BODY_F}    { return new Symbol(sym.BODY_F, yyline, yycolumn,yytext());}
<YYINITIAL> {H1_I}      { return new Symbol(sym.H1_I, yyline, yycolumn,yytext());}
<YYINITIAL> {H1_F}      { return new Symbol(sym.H1_F, yyline, yycolumn,yytext());}
<YYINITIAL> {H2_I}      { return new Symbol(sym.H2_I, yyline, yycolumn,yytext());}
<YYINITIAL> {H2_F}      { return new Symbol(sym.H2_F, yyline, yycolumn,yytext());}
<YYINITIAL> {H3_I}      { return new Symbol(sym.H3_I, yyline, yycolumn,yytext());}
<YYINITIAL> {H3_F}      { return new Symbol(sym.H3_F, yyline, yycolumn,yytext());}
<YYINITIAL> {H4_I}      { return new Symbol(sym.H4_I, yyline, yycolumn,yytext());}
<YYINITIAL> {H4_F}      { return new Symbol(sym.H4_F, yyline, yycolumn,yytext());}
<YYINITIAL> {H5_I}      { return new Symbol(sym.H5_I, yyline, yycolumn,yytext());}
<YYINITIAL> {H5_F}      { return new Symbol(sym.H5_F, yyline, yycolumn,yytext());}
<YYINITIAL> {H6_I}      { return new Symbol(sym.H6_I, yyline, yycolumn,yytext());}
<YYINITIAL> {H6_F}      { return new Symbol(sym.H6_F, yyline, yycolumn,yytext());}
<YYINITIAL> {TITLE_I}   { return new Symbol(sym.TITLE_I, yyline, yycolumn,yytext());}
<YYINITIAL> {TITLE_F}   { return new Symbol(sym.TITLE_F, yyline, yycolumn,yytext());}
<YYINITIAL> {TABLE_I}   { return new Symbol(sym.TABLE_I, yyline, yycolumn,yytext());}
<YYINITIAL> {TABLE_F}   { return new Symbol(sym.TABLE_F, yyline, yycolumn,yytext());}
<YYINITIAL> {TH_I}      { return new Symbol(sym.TH_I, yyline, yycolumn,yytext());}
<YYINITIAL> {TH_F}      { return new Symbol(sym.TH_F, yyline, yycolumn,yytext());}
<YYINITIAL> {TR_I}      { return new Symbol(sym.TR_I, yyline, yycolumn,yytext());}
<YYINITIAL> {TR_F}      { return new Symbol(sym.TR_F, yyline, yycolumn,yytext());}
<YYINITIAL> {TD_I}      { return new Symbol(sym.TD_I, yyline, yycolumn,yytext());}
<YYINITIAL> {TD_F}      { return new Symbol(sym.TD_F, yyline, yycolumn,yytext());}
<YYINITIAL> {DIV_I}     { return new Symbol(sym.DIV_I, yyline, yycolumn,yytext());}
<YYINITIAL> {DIV_F}     { return new Symbol(sym.DIV_F, yyline, yycolumn,yytext());}
<YYINITIAL> {P_I}       { return new Symbol(sym.P_I, yyline, yycolumn,yytext());}
<YYINITIAL> {P_F}       { return new Symbol(sym.P_F, yyline, yycolumn,yytext());}
<YYINITIAL> {BR_I}      { return new Symbol(sym.BR_I, yyline, yycolumn,yytext());}
<YYINITIAL> {BR_F}      { return new Symbol(sym.BR_F, yyline, yycolumn,yytext());}
<YYINITIAL> {HR_I}      { return new Symbol(sym.HR_I, yyline, yycolumn,yytext());}
<YYINITIAL> {HR_F}      { return new Symbol(sym.HR_F, yyline, yycolumn,yytext());}

//reservadas
<YYINITIAL> {RESUL}     { return new Symbol(sym.RESUL, yyline, yycolumn,yytext());}
<YYINITIAL> {PRINT}     { return new Symbol(sym.PRINT, yyline, yycolumn,yytext());}
<YYINITIAL> {CLASE}     { return new Symbol(sym.CLASE, yyline, yycolumn,yytext());}
<YYINITIAL> {VARIA}     { return new Symbol(sym.VARIA, yyline, yycolumn,yytext());}
<YYINITIAL> {CANTI}     { return new Symbol(sym.CANTI, yyline, yycolumn,yytext());}
<YYINITIAL> {NOMBR}     { return new Symbol(sym.NOMBR, yyline, yycolumn,yytext());}
<YYINITIAL> {SCORE}     { return new Symbol(sym.SCORE, yyline, yycolumn,yytext());}
<YYINITIAL> {METOD}     { return new Symbol(sym.METOD, yyline, yycolumn,yytext());}

//atributos
<YYINITIAL> {COLOR}     { return new Symbol(sym.COLOR, yyline, yycolumn,yytext());}
<YYINITIAL> {TCOLOR}    { return new Symbol(sym.TCOLOR, yyline, yycolumn,yytext());}
<YYINITIAL> {ALIGN}     { return new Symbol(sym.ALIGN, yyline, yycolumn,yytext());}
<YYINITIAL> {FONT}      { return new Symbol(sym.FONT, yyline, yycolumn,yytext());}

//expresiones
<YYINITIAL> {ENTERO}    { return new Symbol(sym.ENTERO, yyline, yycolumn,yytext());}
<YYINITIAL> {DECIMAL}   { return new Symbol(sym.DECIMAL, yyline, yycolumn,yytext());}
<YYINITIAL> {ID}        {return new Symbol(sym.ID, yyline, yycolumn,yytext());}
<YYINITIAL> {SPACE}     { /*Espacios en blanco, ignorados*/ }
<YYINITIAL> {ENTER}     { /*Saltos de linea, ignorados*/}
<YYINITIAL> {COMENTARIO} {return new Symbol(sym.COMENTARIO, yyline, yycolumn,yytext());}
<YYINITIAL> {CADENA2}   {return new Symbol(sym.CADENA2, yyline, yycolumn,yytext());}
<YYINITIAL> [\"]        { yybegin(CADENA); cadena+="\""; }
<YYINITIAL> . {
        String errLex = "Error léxico : '"+yytext()+"' en la línea: "+(yyline+1)+" y columna: "+(yycolumn+1);
        System.out.println(errLex);
}

<CADENA> {
        [\"] { String tmp=cadena+"\""; cadena=""; yybegin(YYINITIAL);  return new Symbol(sym.CADENA, yychar,yyline,tmp); }
        [\n] {String tmp=cadena; cadena="";  
                System.out.println("Se esperaba cierre de cadena (\")."); 
                yybegin(YYINITIAL);
            }
        [^\"] { cadena+=yytext();}
}

