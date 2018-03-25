/* The following code was generated by JFlex 1.4.3 on 25/03/18 12:44 AM */

package analisisjson;

import java_cup.runtime.Symbol;




/**
 * This class is a scanner generated by 
 * <a href="http://www.jflex.de/">JFlex</a> 1.4.3
 * on 25/03/18 12:44 AM from the specification file
 * <tt>src/analisisjson/lexico.jflex</tt>
 */
public class scannerj implements java_cup.runtime.Scanner {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int YYINITIAL = 0;
  public static final int CADENA = 2;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = { 
     0,  0,  1, 1
  };

  /** 
   * Translates characters to character classes
   */
  private static final char [] ZZ_CMAP = {
     0,  0,  0,  0,  0,  0,  0,  0,  0, 33, 34,  0, 33, 33,  0,  0, 
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 
    35, 35,  7,  0, 35,  0,  0,  0, 35, 35, 35, 35,  5, 28, 32, 35, 
    29, 29, 29, 29, 29, 29, 29, 29, 29, 29,  6,  0, 35, 35, 35, 35, 
     0, 15, 11, 19, 21, 14, 30, 18, 20,  8, 23, 30, 13, 26,  9, 12, 
    25, 30, 17, 16, 10, 22, 24, 30, 27, 30, 30,  3, 35,  4, 35, 31, 
     0, 15, 11, 19, 21, 14, 30, 18, 20,  8, 23, 30, 13, 26,  9, 12, 
    25, 30, 17, 16, 10, 22, 24, 30, 27, 30, 30,  1, 35,  2, 35,  0, 
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 
     0, 30,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 
     0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 
     0, 30,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0
  };

  /** 
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\1\1\1\0\1\2\1\3\1\4\1\5\1\6\1\7"+
    "\1\10\1\11\15\12\1\2\1\13\1\1\1\14\1\15"+
    "\1\12\1\1\20\12\1\13\1\16\21\12\1\17\10\12"+
    "\1\20\1\12\1\21\4\12\1\22\4\12\1\23\1\12"+
    "\1\24\4\12\1\25\1\12\1\26\1\12\1\27\1\12"+
    "\1\30\1\31\3\12\1\32\1\1\3\12\1\33\1\1"+
    "\3\12\1\1\1\12\1\34\1\12\1\1\1\12\1\35"+
    "\1\1\1\36\1\1\1\37";

  private static int [] zzUnpackAction() {
    int [] result = new int[125];
    int offset = 0;
    offset = zzUnpackAction(ZZ_ACTION_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAction(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /** 
   * Translates a state to a row index in the transition table
   */
  private static final int [] ZZ_ROWMAP = zzUnpackRowMap();

  private static final String ZZ_ROWMAP_PACKED_0 =
    "\0\0\0\44\0\44\0\110\0\110\0\110\0\110\0\110"+
    "\0\44\0\44\0\154\0\220\0\264\0\330\0\374\0\u0120"+
    "\0\u0144\0\u0168\0\u018c\0\u01b0\0\u01d4\0\u01f8\0\u021c\0\u0240"+
    "\0\u0264\0\110\0\44\0\44\0\u0288\0\u0120\0\u02ac\0\u02d0"+
    "\0\u02f4\0\u0318\0\u033c\0\u0360\0\u0384\0\u03a8\0\u03cc\0\u03f0"+
    "\0\u0414\0\u0438\0\u045c\0\u0480\0\u04a4\0\u04c8\0\u0240\0\u0120"+
    "\0\u04ec\0\u0510\0\u0534\0\u0558\0\u057c\0\u05a0\0\u05c4\0\u05e8"+
    "\0\u060c\0\u0630\0\u0654\0\u0678\0\u069c\0\u06c0\0\u06e4\0\u0708"+
    "\0\u072c\0\u0120\0\u0750\0\u0774\0\u0798\0\u07bc\0\u07e0\0\u0804"+
    "\0\u0828\0\u084c\0\u0120\0\u0870\0\u0120\0\u0894\0\u08b8\0\u08dc"+
    "\0\u0900\0\u0120\0\u0924\0\u0948\0\u096c\0\u0990\0\u0120\0\u09b4"+
    "\0\u09d8\0\u09fc\0\u0a20\0\u0a44\0\u0a68\0\u0120\0\u0a8c\0\u0120"+
    "\0\u0ab0\0\u0120\0\u0ad4\0\u0120\0\u0120\0\u0af8\0\u0b1c\0\u0b40"+
    "\0\u0120\0\u0b64\0\u0b88\0\u0bac\0\u0bd0\0\u0120\0\u0bf4\0\u0c18"+
    "\0\u0c3c\0\u0c60\0\u0c84\0\u0ca8\0\u0120\0\u0ccc\0\u0cf0\0\u0d14"+
    "\0\u0120\0\u0d38\0\u0120\0\u0d5c\0\110";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[125];
    int offset = 0;
    offset = zzUnpackRowMap(ZZ_ROWMAP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackRowMap(String packed, int offset, int [] result) {
    int i = 0;  /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int high = packed.charAt(i++) << 16;
      result[j++] = high | packed.charAt(i++);
    }
    return j;
  }

  /** 
   * The transition table of the DFA
   */
  private static final int [] ZZ_TRANS = zzUnpackTrans();

  private static final String ZZ_TRANS_PACKED_0 =
    "\1\3\1\4\1\5\1\6\1\7\1\10\1\11\1\12"+
    "\1\13\1\14\1\15\1\16\1\17\1\20\1\21\1\20"+
    "\1\22\2\20\1\23\1\20\1\24\2\20\1\25\1\26"+
    "\1\27\1\20\1\30\1\31\1\20\2\32\1\33\1\34"+
    "\1\32\45\0\5\32\2\0\24\32\1\0\4\32\2\0"+
    "\1\32\1\0\5\32\2\0\1\20\1\35\22\20\1\0"+
    "\2\20\1\36\1\32\2\0\1\32\1\0\5\32\2\0"+
    "\4\20\1\37\17\20\1\0\2\20\1\36\1\32\2\0"+
    "\1\32\1\0\5\32\2\0\1\40\5\20\1\41\15\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\4\20\1\42\17\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\3\20\1\43\20\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\24\20\1\0\2\20\1\36\1\32\2\0\1\32"+
    "\1\0\5\32\2\0\1\20\1\44\22\20\1\0\2\20"+
    "\1\36\1\32\2\0\1\32\1\0\5\32\2\0\2\20"+
    "\1\45\10\20\1\46\10\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\4\20\1\47\1\50"+
    "\6\20\1\51\7\20\1\0\2\20\1\36\1\32\2\0"+
    "\1\32\1\0\5\32\2\0\4\20\1\52\17\20\1\0"+
    "\2\20\1\36\1\32\2\0\1\32\1\0\5\32\2\0"+
    "\4\20\1\53\2\20\1\54\14\20\1\0\2\20\1\36"+
    "\1\32\2\0\1\32\1\0\5\32\2\0\7\20\1\55"+
    "\14\20\1\0\2\20\1\36\1\32\2\0\1\32\1\0"+
    "\5\32\2\0\6\20\1\56\15\20\1\0\2\20\1\36"+
    "\1\32\2\0\1\32\35\0\1\57\7\0\5\32\2\0"+
    "\24\32\1\0\1\31\3\32\2\0\1\32\1\0\5\32"+
    "\2\0\2\20\1\60\21\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\22\20\1\61\1\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\21\20\1\62\2\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\23\20\1\63\1\0"+
    "\2\20\1\36\1\32\2\0\1\32\1\0\5\32\2\0"+
    "\4\20\1\64\17\20\1\0\2\20\1\36\1\32\2\0"+
    "\1\32\1\0\5\32\2\0\17\20\1\65\4\20\1\0"+
    "\2\20\1\36\1\32\2\0\1\32\1\0\5\32\2\0"+
    "\2\20\1\66\21\20\1\0\2\20\1\36\1\32\2\0"+
    "\1\32\1\0\5\32\2\0\11\20\1\67\12\20\1\0"+
    "\2\20\1\36\1\32\2\0\1\32\1\0\5\32\2\0"+
    "\4\20\1\70\17\20\1\0\2\20\1\36\1\32\2\0"+
    "\1\32\1\0\5\32\2\0\22\20\1\71\1\20\1\0"+
    "\2\20\1\36\1\32\2\0\1\32\1\0\5\32\2\0"+
    "\7\20\1\72\14\20\1\0\2\20\1\36\1\32\2\0"+
    "\1\32\1\0\5\32\2\0\7\20\1\73\14\20\1\0"+
    "\2\20\1\36\1\32\2\0\1\32\1\0\5\32\2\0"+
    "\16\20\1\74\5\20\1\0\2\20\1\36\1\32\2\0"+
    "\1\32\1\0\5\32\2\0\1\75\23\20\1\0\2\20"+
    "\1\36\1\32\2\0\1\32\1\0\5\32\2\0\11\20"+
    "\1\76\12\20\1\0\2\20\1\36\1\32\2\0\1\32"+
    "\1\0\5\32\2\0\11\20\1\77\12\20\1\0\2\20"+
    "\1\36\1\32\2\0\1\32\1\0\5\32\2\0\2\20"+
    "\1\100\21\20\1\0\2\20\1\36\1\32\2\0\1\32"+
    "\1\0\5\32\2\0\3\20\1\101\20\20\1\0\2\20"+
    "\1\36\1\32\2\0\1\32\1\0\5\32\2\0\4\20"+
    "\1\102\17\20\1\0\2\20\1\36\1\32\2\0\1\32"+
    "\1\0\5\32\2\0\2\20\1\103\21\20\1\0\2\20"+
    "\1\36\1\32\2\0\1\32\1\0\5\32\2\0\5\20"+
    "\1\104\16\20\1\0\2\20\1\36\1\32\2\0\1\32"+
    "\1\0\5\32\2\0\6\20\1\105\15\20\1\0\2\20"+
    "\1\36\1\32\2\0\1\32\1\0\5\32\2\0\6\20"+
    "\1\106\15\20\1\0\2\20\1\36\1\32\2\0\1\32"+
    "\1\0\5\32\2\0\1\107\23\20\1\0\2\20\1\36"+
    "\1\32\2\0\1\32\1\0\5\32\2\0\11\20\1\110"+
    "\12\20\1\0\2\20\1\36\1\32\2\0\1\32\1\0"+
    "\5\32\2\0\6\20\1\111\15\20\1\0\2\20\1\36"+
    "\1\32\2\0\1\32\1\0\5\32\2\0\10\20\1\112"+
    "\13\20\1\0\2\20\1\36\1\32\2\0\1\32\1\0"+
    "\5\32\2\0\11\20\1\113\12\20\1\0\2\20\1\36"+
    "\1\32\2\0\1\32\1\0\5\32\2\0\3\20\1\114"+
    "\20\20\1\0\2\20\1\36\1\32\2\0\1\32\1\0"+
    "\5\32\2\0\15\20\1\115\6\20\1\0\2\20\1\36"+
    "\1\32\2\0\1\32\1\0\5\32\2\0\1\116\23\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\7\20\1\117\14\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\4\20\1\120\17\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\11\20\1\121\12\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\4\20\1\122\17\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\6\20\1\123\15\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\13\20\1\124\10\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\11\20\1\125\12\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\1\20\1\126\22\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\6\20\1\127\15\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\1\20\1\130\22\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\6\20\1\131\15\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\5\20\1\132\16\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\7\20\1\133\14\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\22\20\1\134\1\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\15\20\1\135\6\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\6\20\1\136\15\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\7\20\1\137\14\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\2\20\1\140\21\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\4\20\1\141\17\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\12\20\1\142\11\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\2\20\1\143\21\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\10\20\1\144\13\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\6\20\1\145\15\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\3\20\1\146\20\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\6\20\1\147\15\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\4\20\1\150\17\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\1\20\1\151\22\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\24\20\1\0\2\20"+
    "\1\36\1\152\2\0\1\32\1\0\5\32\2\0\7\20"+
    "\1\153\14\20\1\0\2\20\1\36\1\32\2\0\1\32"+
    "\1\0\5\32\2\0\5\20\1\154\16\20\1\0\2\20"+
    "\1\36\1\32\2\0\1\32\1\0\5\32\2\0\2\20"+
    "\1\155\21\20\1\0\2\20\1\36\1\32\2\0\1\32"+
    "\1\0\5\32\2\0\10\20\1\156\13\20\1\0\2\20"+
    "\1\36\1\32\2\0\1\32\1\0\5\32\2\0\6\32"+
    "\1\157\15\32\1\0\4\32\2\0\1\32\1\0\5\32"+
    "\2\0\11\20\1\160\12\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\6\20\1\161\15\20"+
    "\1\0\2\20\1\36\1\32\2\0\1\32\1\0\5\32"+
    "\2\0\11\20\1\162\12\20\1\0\2\20\1\36\1\32"+
    "\2\0\1\32\1\0\5\32\2\0\1\32\1\163\22\32"+
    "\1\0\4\32\2\0\1\32\1\0\5\32\2\0\1\164"+
    "\23\20\1\0\2\20\1\36\1\32\2\0\1\32\1\0"+
    "\5\32\2\0\10\20\1\165\13\20\1\0\2\20\1\36"+
    "\1\32\2\0\1\32\1\0\5\32\2\0\4\20\1\166"+
    "\17\20\1\0\2\20\1\36\1\32\2\0\1\32\1\0"+
    "\5\32\2\0\2\32\1\167\21\32\1\0\4\32\2\0"+
    "\1\32\1\0\5\32\2\0\4\20\1\170\17\20\1\0"+
    "\2\20\1\36\1\32\2\0\1\32\1\0\5\32\2\0"+
    "\10\20\1\171\13\20\1\0\2\20\1\36\1\32\2\0"+
    "\1\32\1\0\5\32\2\0\6\32\1\172\15\32\1\0"+
    "\4\32\2\0\1\32\1\0\5\32\2\0\10\20\1\173"+
    "\13\20\1\0\2\20\1\36\1\32\2\0\1\32\1\0"+
    "\5\32\2\0\11\32\1\174\12\32\1\0\4\32\2\0"+
    "\1\32\1\0\5\32\2\0\4\32\1\175\17\32\1\0"+
    "\4\32\2\0\1\32";

  private static int [] zzUnpackTrans() {
    int [] result = new int[3456];
    int offset = 0;
    offset = zzUnpackTrans(ZZ_TRANS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackTrans(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      value--;
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /* error codes */
  private static final int ZZ_UNKNOWN_ERROR = 0;
  private static final int ZZ_NO_MATCH = 1;
  private static final int ZZ_PUSHBACK_2BIG = 2;

  /* error messages for the codes above */
  private static final String ZZ_ERROR_MSG[] = {
    "Unkown internal scanner error",
    "Error: could not match input",
    "Error: pushback value was too large"
  };

  /**
   * ZZ_ATTRIBUTE[aState] contains the attributes of state <code>aState</code>
   */
  private static final int [] ZZ_ATTRIBUTE = zzUnpackAttribute();

  private static final String ZZ_ATTRIBUTE_PACKED_0 =
    "\1\1\1\10\1\11\5\1\2\11\20\1\2\11\141\1";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[125];
    int offset = 0;
    offset = zzUnpackAttribute(ZZ_ATTRIBUTE_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAttribute(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /** the input device */
  private java.io.Reader zzReader;

  /** the current state of the DFA */
  private int zzState;

  /** the current lexical state */
  private int zzLexicalState = YYINITIAL;

  /** this buffer contains the current text to be matched and is
      the source of the yytext() string */
  private char zzBuffer[] = new char[ZZ_BUFFERSIZE];

  /** the textposition at the last accepting state */
  private int zzMarkedPos;

  /** the current text position in the buffer */
  private int zzCurrentPos;

  /** startRead marks the beginning of the yytext() string in the buffer */
  private int zzStartRead;

  /** endRead marks the last character in the buffer, that has been read
      from input */
  private int zzEndRead;

  /** number of newlines encountered up to the start of the matched text */
  private int yyline;

  /** the number of characters up to the start of the matched text */
  private int yychar;

  /**
   * the number of characters from the last newline up to the start of the 
   * matched text
   */
  private int yycolumn;

  /** 
   * zzAtBOL == true <=> the scanner is currently at the beginning of a line
   */
  private boolean zzAtBOL = true;

  /** zzAtEOF == true <=> the scanner is at the EOF */
  private boolean zzAtEOF;

  /** denotes if the user-EOF-code has already been executed */
  private boolean zzEOFDone;

  /* user code: */
    //Código de usuario
    String cadena= "";


  /**
   * Creates a new scanner
   * There is also a java.io.InputStream version of this constructor.
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public scannerj(java.io.Reader in) {
    this.zzReader = in;
  }

  /**
   * Creates a new scanner.
   * There is also java.io.Reader version of this constructor.
   *
   * @param   in  the java.io.Inputstream to read input from.
   */
  public scannerj(java.io.InputStream in) {
    this(new java.io.InputStreamReader(in));
  }


  /**
   * Refills the input buffer.
   *
   * @return      <code>false</code>, iff there was new input.
   * 
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  private boolean zzRefill() throws java.io.IOException {

    /* first: make room (if you can) */
    if (zzStartRead > 0) {
      System.arraycopy(zzBuffer, zzStartRead,
                       zzBuffer, 0,
                       zzEndRead-zzStartRead);

      /* translate stored positions */
      zzEndRead-= zzStartRead;
      zzCurrentPos-= zzStartRead;
      zzMarkedPos-= zzStartRead;
      zzStartRead = 0;
    }

    /* is the buffer big enough? */
    if (zzCurrentPos >= zzBuffer.length) {
      /* if not: blow it up */
      char newBuffer[] = new char[zzCurrentPos*2];
      System.arraycopy(zzBuffer, 0, newBuffer, 0, zzBuffer.length);
      zzBuffer = newBuffer;
    }

    /* finally: fill the buffer with new input */
    int numRead = zzReader.read(zzBuffer, zzEndRead,
                                            zzBuffer.length-zzEndRead);

    if (numRead > 0) {
      zzEndRead+= numRead;
      return false;
    }
    // unlikely but not impossible: read 0 characters, but not at end of stream    
    if (numRead == 0) {
      int c = zzReader.read();
      if (c == -1) {
        return true;
      } else {
        zzBuffer[zzEndRead++] = (char) c;
        return false;
      }     
    }

	// numRead < 0
    return true;
  }

    
  /**
   * Closes the input stream.
   */
  public final void yyclose() throws java.io.IOException {
    zzAtEOF = true;            /* indicate end of file */
    zzEndRead = zzStartRead;  /* invalidate buffer    */

    if (zzReader != null)
      zzReader.close();
  }


  /**
   * Resets the scanner to read from a new input stream.
   * Does not close the old reader.
   *
   * All internal variables are reset, the old input stream 
   * <b>cannot</b> be reused (internal buffer is discarded and lost).
   * Lexical state is set to <tt>ZZ_INITIAL</tt>.
   *
   * @param reader   the new input stream 
   */
  public final void yyreset(java.io.Reader reader) {
    zzReader = reader;
    zzAtBOL  = true;
    zzAtEOF  = false;
    zzEOFDone = false;
    zzEndRead = zzStartRead = 0;
    zzCurrentPos = zzMarkedPos = 0;
    yyline = yychar = yycolumn = 0;
    zzLexicalState = YYINITIAL;
  }


  /**
   * Returns the current lexical state.
   */
  public final int yystate() {
    return zzLexicalState;
  }


  /**
   * Enters a new lexical state
   *
   * @param newState the new lexical state
   */
  public final void yybegin(int newState) {
    zzLexicalState = newState;
  }


  /**
   * Returns the text matched by the current regular expression.
   */
  public final String yytext() {
    return new String( zzBuffer, zzStartRead, zzMarkedPos-zzStartRead );
  }


  /**
   * Returns the character at position <tt>pos</tt> from the 
   * matched text. 
   * 
   * It is equivalent to yytext().charAt(pos), but faster
   *
   * @param pos the position of the character to fetch. 
   *            A value from 0 to yylength()-1.
   *
   * @return the character at position pos
   */
  public final char yycharat(int pos) {
    return zzBuffer[zzStartRead+pos];
  }


  /**
   * Returns the length of the matched text region.
   */
  public final int yylength() {
    return zzMarkedPos-zzStartRead;
  }


  /**
   * Reports an error that occured while scanning.
   *
   * In a wellformed scanner (no or only correct usage of 
   * yypushback(int) and a match-all fallback rule) this method 
   * will only be called with things that "Can't Possibly Happen".
   * If this method is called, something is seriously wrong
   * (e.g. a JFlex bug producing a faulty scanner etc.).
   *
   * Usual syntax/scanner level error handling should be done
   * in error fallback rules.
   *
   * @param   errorCode  the code of the errormessage to display
   */
  private void zzScanError(int errorCode) {
    String message;
    try {
      message = ZZ_ERROR_MSG[errorCode];
    }
    catch (ArrayIndexOutOfBoundsException e) {
      message = ZZ_ERROR_MSG[ZZ_UNKNOWN_ERROR];
    }

    throw new Error(message);
  } 


  /**
   * Pushes the specified amount of characters back into the input stream.
   *
   * They will be read again by then next call of the scanning method
   *
   * @param number  the number of characters to be read again.
   *                This number must not be greater than yylength()!
   */
  public void yypushback(int number)  {
    if ( number > yylength() )
      zzScanError(ZZ_PUSHBACK_2BIG);

    zzMarkedPos -= number;
  }


  /**
   * Contains user EOF-code, which will be executed exactly once,
   * when the end of file is reached
   */
  private void zzDoEOF() throws java.io.IOException {
    if (!zzEOFDone) {
      zzEOFDone = true;
      yyclose();
    }
  }


  /**
   * Resumes scanning until the next regular expression is matched,
   * the end of input is encountered or an I/O-Error occurs.
   *
   * @return      the next token
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  public java_cup.runtime.Symbol next_token() throws java.io.IOException {
    int zzInput;
    int zzAction;

    // cached fields:
    int zzCurrentPosL;
    int zzMarkedPosL;
    int zzEndReadL = zzEndRead;
    char [] zzBufferL = zzBuffer;
    char [] zzCMapL = ZZ_CMAP;

    int [] zzTransL = ZZ_TRANS;
    int [] zzRowMapL = ZZ_ROWMAP;
    int [] zzAttrL = ZZ_ATTRIBUTE;

    while (true) {
      zzMarkedPosL = zzMarkedPos;

      yychar+= zzMarkedPosL-zzStartRead;

      boolean zzR = false;
      for (zzCurrentPosL = zzStartRead; zzCurrentPosL < zzMarkedPosL;
                                                             zzCurrentPosL++) {
        switch (zzBufferL[zzCurrentPosL]) {
        case '\u000B':
        case '\u000C':
        case '\u0085':
        case '\u2028':
        case '\u2029':
          yyline++;
          yycolumn = 0;
          zzR = false;
          break;
        case '\r':
          yyline++;
          yycolumn = 0;
          zzR = true;
          break;
        case '\n':
          if (zzR)
            zzR = false;
          else {
            yyline++;
            yycolumn = 0;
          }
          break;
        default:
          zzR = false;
          yycolumn++;
        }
      }

      if (zzR) {
        // peek one character ahead if it is \n (if we have counted one line too much)
        boolean zzPeek;
        if (zzMarkedPosL < zzEndReadL)
          zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        else if (zzAtEOF)
          zzPeek = false;
        else {
          boolean eof = zzRefill();
          zzEndReadL = zzEndRead;
          zzMarkedPosL = zzMarkedPos;
          zzBufferL = zzBuffer;
          if (eof) 
            zzPeek = false;
          else 
            zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        }
        if (zzPeek) yyline--;
      }
      zzAction = -1;

      zzCurrentPosL = zzCurrentPos = zzStartRead = zzMarkedPosL;
  
      zzState = ZZ_LEXSTATE[zzLexicalState];


      zzForAction: {
        while (true) {
    
          if (zzCurrentPosL < zzEndReadL)
            zzInput = zzBufferL[zzCurrentPosL++];
          else if (zzAtEOF) {
            zzInput = YYEOF;
            break zzForAction;
          }
          else {
            // store back cached positions
            zzCurrentPos  = zzCurrentPosL;
            zzMarkedPos   = zzMarkedPosL;
            boolean eof = zzRefill();
            // get translated positions and possibly new buffer
            zzCurrentPosL  = zzCurrentPos;
            zzMarkedPosL   = zzMarkedPos;
            zzBufferL      = zzBuffer;
            zzEndReadL     = zzEndRead;
            if (eof) {
              zzInput = YYEOF;
              break zzForAction;
            }
            else {
              zzInput = zzBufferL[zzCurrentPosL++];
            }
          }
          int zzNext = zzTransL[ zzRowMapL[zzState] + zzCMapL[zzInput] ];
          if (zzNext == -1) break zzForAction;
          zzState = zzNext;

          int zzAttributes = zzAttrL[zzState];
          if ( (zzAttributes & 1) == 1 ) {
            zzAction = zzState;
            zzMarkedPosL = zzCurrentPosL;
            if ( (zzAttributes & 8) == 8 ) break zzForAction;
          }

        }
      }

      // store back cached position
      zzMarkedPos = zzMarkedPosL;

      switch (zzAction < 0 ? zzAction : ZZ_ACTION[zzAction]) {
        case 27: 
          { return new Symbol(sym.METODO, yyline, yycolumn,yytext());
          }
        case 32: break;
        case 3: 
          { return new Symbol(sym.LLAV_A, yyline, yycolumn,yytext());
          }
        case 33: break;
        case 28: 
          { return new Symbol(sym.VARIAB, yyline, yycolumn,yytext());
          }
        case 34: break;
        case 17: 
          { return new Symbol(sym.VOID, yyline, yycolumn,yytext());
          }
        case 35: break;
        case 19: 
          { return new Symbol(sym.SCORE, yyline, yycolumn,yytext());
          }
        case 36: break;
        case 22: 
          { return new Symbol(sym.OBJEC, yyline, yycolumn,yytext());
          }
        case 37: break;
        case 8: 
          { return new Symbol(sym.DOSPU, yyline, yycolumn,yytext());
          }
        case 38: break;
        case 7: 
          { return new Symbol(sym.COMA, yyline, yycolumn,yytext());
          }
        case 39: break;
        case 30: 
          { return new Symbol(sym.COMENT, yyline, yycolumn,yytext());
          }
        case 40: break;
        case 11: 
          { return new Symbol(sym.ENTERO, yyline, yycolumn,yytext());
          }
        case 41: break;
        case 25: 
          { return new Symbol(sym.DOUBL, yyline, yycolumn,yytext());
          }
        case 42: break;
        case 24: 
          { return new Symbol(sym.CLASES, yyline, yycolumn,yytext());
          }
        case 43: break;
        case 12: 
          { /*Espacios en blanco, ignorados*/
          }
        case 44: break;
        case 13: 
          { /*Saltos de linea, ignorados*/
          }
        case 45: break;
        case 29: 
          { return new Symbol(sym.PARAME, yyline, yycolumn,yytext());
          }
        case 46: break;
        case 18: 
          { return new Symbol(sym.TEXTO, yyline, yycolumn,yytext());
          }
        case 47: break;
        case 20: 
          { return new Symbol(sym.CLASE, yyline, yycolumn,yytext());
          }
        case 48: break;
        case 16: 
          { return new Symbol(sym.CARAC, yyline, yycolumn,yytext());
          }
        case 49: break;
        case 23: 
          { return new Symbol(sym.STRIN, yyline, yycolumn,yytext());
          }
        case 50: break;
        case 31: 
          { return new Symbol(sym.DECIMAL, yyline, yycolumn,yytext());
          }
        case 51: break;
        case 15: 
          { return new Symbol(sym.TIPOS, yyline, yycolumn,yytext());
          }
        case 52: break;
        case 6: 
          { return new Symbol(sym.COR_C, yyline, yycolumn,yytext());
          }
        case 53: break;
        case 21: 
          { return new Symbol(sym.NOMBRE, yyline, yycolumn,yytext());
          }
        case 54: break;
        case 10: 
          { return new Symbol(sym.ID, yyline, yycolumn,yytext());
          }
        case 55: break;
        case 26: 
          { return new Symbol(sym.BOOLEA, yyline, yycolumn,yytext());
          }
        case 56: break;
        case 14: 
          { return new Symbol(sym.INT, yyline, yycolumn,yytext());
          }
        case 57: break;
        case 1: 
          { return new Symbol(sym.CONT, yyline, yycolumn,yytext());
          }
        case 58: break;
        case 2: 
          { String errLex = "Error léxico : '"+yytext()+"' en la línea: "+(yyline+1)+" y columna: "+(yycolumn+1);
        System.out.println(errLex);
          }
        case 59: break;
        case 4: 
          { return new Symbol(sym.LLAV_C, yyline, yycolumn,yytext());
          }
        case 60: break;
        case 9: 
          { return new Symbol(sym.COMIL, yyline, yycolumn,yytext());
          }
        case 61: break;
        case 5: 
          { return new Symbol(sym.COR_A, yyline, yycolumn,yytext());
          }
        case 62: break;
        default: 
          if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
            zzAtEOF = true;
            zzDoEOF();
              { return new java_cup.runtime.Symbol(sym.EOF); }
          } 
          else {
            zzScanError(ZZ_NO_MATCH);
          }
      }
    }
  }


}
