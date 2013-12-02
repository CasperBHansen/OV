{
  (* Lexer definition for Paladim language *)

  (* boilerplate code for all lexer files... *)
 open Lexing;

 exception LexicalError of string * (int * int) (* (message, (line, column)) *)

 val currentLine = ref 1
 val lineStartPos = ref [0]

 fun resetPos () = (currentLine :=1; lineStartPos := [0])

 fun getPos lexbuf = getLineCol (getLexemeStart lexbuf)
				(!currentLine)
				(!lineStartPos)

 and getLineCol pos line (p1::ps) =
       if pos>=p1 then (line, pos-p1)
       else getLineCol pos (line-1) ps
   | getLineCol pos line [] = raise LexicalError ("",(0,0))

 and showPos (l,c) = makestring l ^ "," ^ makestring c

 fun lexerError lexbuf s =
     raise LexicalError (s, getPos lexbuf)

(* This one is language specific, yet very common. Alternative would
   be to encode every keyword as a regexp. This one is much easier. *)
 fun keyword (s, pos) =
     case s of
         "program"      => Parser.Program     pos
       | "function"     => Parser.Function    pos
       | "procedure"    => Parser.Procedure   pos
       | "var"          => Parser.Var         pos
       | "begin"        => Parser.Begin       pos
       | "end"          => Parser.End         pos
       | "if"           => Parser.If          pos
       | "then"         => Parser.Then        pos
       | "else"         => Parser.Else        pos
       | "while"        => Parser.While       pos
       | "do"           => Parser.Do          pos
       | "return"       => Parser.Return      pos
       | "array"        => Parser.Array       pos
       | "of"           => Parser.Of          pos
       | "int"          => Parser.Int         pos
       | "bool"         => Parser.Bool        pos
       | "char"         => Parser.Char        pos
       | "and"          => Parser.And         pos
       | "or"           => Parser.Or          pos
       | "not"          => Parser.Not         pos
       | "true"         => Parser.LogicLit    (true, pos)
       | "false"        => Parser.LogicLit    (false, pos)
       | _              => Parser.Ident       s

}

rule Token = parse
    [` ` `\t` `\r`]+    { Token lexbuf } (* whitespace *)
  | "//" [^`\n`]*	{ Token lexbuf } (* comment *)
  | [`\n` `\012`]       { currentLine := !currentLine+1;
                          lineStartPos :=  getLexemeStart lexbuf
			                   :: !lineStartPos;
                          Token lexbuf } (* newlines *)

  | [`0`-`9`]+          { case Int.fromString (getLexeme lexbuf) of
                               NONE   => lexerError lexbuf "Bad integer"
                             | SOME i => Parser.NumLit (i, getPos lexbuf) }

  | `'` ([` ` `!` `#`-`&` `(`-`[` `]`-`~`] | `\`[` `-`~`]) `'`
                        { Parser.CharLit
			    ((case String.fromCString (getLexeme lexbuf) of
			       NONE => lexerError lexbuf "Bad char constant"
			     | SOME s => String.sub(s,1)),
			     getPos lexbuf) }

  | `"` ([` ` `!` `#`-`&` `(`-`[` `]`-`~`] | `\`[` `-`~`])* `"`
                        { Parser.StringLit
			    ((case String.fromCString (getLexeme lexbuf) of
			       NONE => lexerError lexbuf "Bad string constant"
			     | SOME s => String.substring(s,1,
							  String.size s - 2)),
			     getPos lexbuf) }

  | [`a`-`z` `A`-`Z`] [`a`-`z` `A`-`Z` `0`-`9` `_`]*
                        { keyword (getLexeme lexbuf, getPos lexbuf) }
  | ":="                { Parser.Assign    (getPos lexbuf) }
  | `+`                 { Parser.Plus      (getPos lexbuf) }
  | `-`                 { Parser.Minus     (getPos lexbuf) }
  | `*`                 { Parser.Times     (getPos lexbuf) }
  | `/`                 { Parser.Div       (getPos lexbuf) }
  | `=`                 { Parser.Equal     (getPos lexbuf) }
  | `<`                 { Parser.Less      (getPos lexbuf) }
  | `(`                 { Parser.LParen    (getPos lexbuf) }
  | `)`                 { Parser.RParen    (getPos lexbuf) }
  | `[`                 { Parser.LBracket  (getPos lexbuf) }
  | `]`                 { Parser.RBracket  (getPos lexbuf) }
  | `{`                 { Parser.LCurly    (getPos lexbuf) }
  | `}`                 { Parser.RCurly    (getPos lexbuf) }
  | `,`                 { Parser.Comma     (getPos lexbuf) }
  | `;`                 { Parser.Semi      (getPos lexbuf) }
  | `:`                 { Parser.Colon     (getPos lexbuf) }
  | eof                 { Parser.EOF       (getPos lexbuf) }
  | _                   { lexerError lexbuf "Illegal symbol in input" }

;
