package analisisjson;

import java_cup.runtime.Symbol;



%%

%{
    //Código de usuario
    String cadena= "";
%}

%cup
%class scannerj
%public
%line
%char
%column
%full
%state CADENA
%ignorecase

//simbolos
LLAV_A  = "{"
LLAV_C  = "}"
COR_A   = "["
COR_C   = "]"
COMA    = ","
DOSPU   = ":"

//Tipo de Datos
INT     = ("\"")?"int"("\"")?
BOOLEA  = ("\"")?"boolean"("\"")?
STRIN   = ("\"")?"String"("\"")?
CARAC   = ("\"")?"char"("\"")?
DOUBL   = ("\"")?"double"("\"")?
OBJEC   = ("\"")?"Object"("\"")?
VOID    = ("\"")?"void"("\"")?

//reservadas
TIPOS    = "Tipo"
SCORE   = "score"
CLASES  = "Clases"
VARIAB  = "Variables"
CLASE   = "Clase"
NOMBRE  = "Nombre"
COMENT  = "Comentarios"
TEXTO   = "Texto"
PARAME  = "Parametros"
METODO  = "Metodos"
FUNCION = "funcion"

//expresiones
ENTERO  = ("\"")?("-")?[0-9]+("\"")?
ID      = ("\"")?[A-Za-zñÑ]([_0-9A-Za-zñÑ]*[0-9A-Za-zñÑ])("\"")?
DECIMAL = ("\"")?{ENTERO}"."{ENTERO}("\"")?
SPACE   = [\ \r\t\f\t]
ENTER   = [\ \n]

%%

//simbolos
<YYINITIAL> {LLAV_A}    { return new Symbol(sym.LLAV_A, yyline, yycolumn,yytext());}
<YYINITIAL> {LLAV_C}    { return new Symbol(sym.LLAV_C, yyline, yycolumn,yytext());}
<YYINITIAL> {COR_A}     { return new Symbol(sym.COR_A, yyline, yycolumn,yytext());}
<YYINITIAL> {COR_C}     { return new Symbol(sym.COR_C, yyline, yycolumn,yytext());}
<YYINITIAL> {COMA}      { return new Symbol(sym.COMA, yyline, yycolumn,yytext());}
<YYINITIAL> {DOSPU}     { return new Symbol(sym.DOSPU, yyline, yycolumn,yytext());}

//Tipo de Datos
<YYINITIAL> {INT}       { return new Symbol(sym.INT, yyline, yycolumn,yytext());}
<YYINITIAL> {BOOLEA}    { return new Symbol(sym.BOOLEA, yyline, yycolumn,yytext());}
<YYINITIAL> {STRIN}     { return new Symbol(sym.STRIN, yyline, yycolumn,yytext());}
<YYINITIAL> {CARAC}     { return new Symbol(sym.CARAC, yyline, yycolumn,yytext());}
<YYINITIAL> {DOUBL}     { return new Symbol(sym.DOUBL, yyline, yycolumn,yytext());}
<YYINITIAL> {OBJEC}     { return new Symbol(sym.OBJEC, yyline, yycolumn,yytext());}
<YYINITIAL> {VOID}      { return new Symbol(sym.VOID, yyline, yycolumn,yytext());}

//reservadas
<YYINITIAL> {TIPOS}      { return new Symbol(sym.TIPOS, yyline, yycolumn,yytext());}
<YYINITIAL> {SCORE}     { return new Symbol(sym.SCORE, yyline, yycolumn,yytext());}
<YYINITIAL> {CLASES}    { return new Symbol(sym.CLASES, yyline, yycolumn,yytext());}
<YYINITIAL> {VARIAB}    { return new Symbol(sym.VARIAB, yyline, yycolumn,yytext());}
<YYINITIAL> {CLASE}     { return new Symbol(sym.CLASE, yyline, yycolumn,yytext());}
<YYINITIAL> {NOMBRE}    { return new Symbol(sym.NOMBRE, yyline, yycolumn,yytext());}
<YYINITIAL> {COMENT}    { return new Symbol(sym.COMENT, yyline, yycolumn,yytext());}
<YYINITIAL> {TEXTO}     { return new Symbol(sym.TEXTO, yyline, yycolumn,yytext());}
<YYINITIAL> {PARAME}    { return new Symbol(sym.PARAME, yyline, yycolumn,yytext());}
<YYINITIAL> {METODO}    { return new Symbol(sym.METODO, yyline, yycolumn,yytext());}
<YYINITIAL> {FUNCION}   { return new Symbol(sym.FUNCION, yyline, yycolumn,yytext());}

//expresiones
<YYINITIAL> {ENTERO}    { return new Symbol(sym.ENTERO, yyline, yycolumn,yytext());}
<YYINITIAL> {DECIMAL}   { return new Symbol(sym.DECIMAL, yyline, yycolumn,yytext());}
<YYINITIAL> {ID}        {return new Symbol(sym.ID, yyline, yycolumn,yytext());}
<YYINITIAL> [\"]        { yybegin(CADENA); cadena+="\""; }
<YYINITIAL> {SPACE}     { /*Espacios en blanco, ignorados*/ }
<YYINITIAL> {ENTER}     { /*Saltos de linea, ignorados*/}
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