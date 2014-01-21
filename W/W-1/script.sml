(* script to use with the mosml interpreter *)
(*   >mosml script.sml                      *)
(*                                          *)

(* load necessary libraries *)
app load ["Int", "Real", "Lexing", "TextIO"];

(* read the scanner file (as if it was typed) *)
use "W-1.sml";

(* bring lexing helper functions in direct scope *)
open Lexing

(* repeatedly scans from the buffer until EOF is found *)
fun Scanner b 
  = let val res = Token b (* "Token" function generated by mosmllex *)
    in res :: (if res = EOF then [] else Scanner b)
    end

(* scans a string, using the Scanner function above *)
fun Scan s = let val buf = createLexerString s
             in Scanner buf
             end
    handle LexicalError (msg,pos) 
           => (TextIO.output (TextIO.stdErr, msg ^ makestring pos ^"\n");[])