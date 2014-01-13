{
	open Lexing
	
	exception LexicalError of string * int
	
	fun lexerError lexbuf s = raise LexicalError(s, getLexemeStart lexbuf);
	
	datatype TokenType
		= AlphaOne of string
		| AlphaTwo of string
		| AlphaThree of string
		| EOF
	
	fun repeat lex b =
		let val res = lex b
		in res::(if res = EOF then [] else repeat lex b)
		end
	
	fun Scan lex s =
		let val buf = createLexerString s
		in repeat lex buf
		end
		
		handle LexicalError (message, position)
			=> (TextIO.output(TextIO.stdErr, message ^ makestring position ^"\n");[])
}

let whitespace = [` ` `\t` `\n` `\r`]

let a = `a`
let b = `b`
let c = `c`

rule Token = parse
    whitespace {Token lexbuf}
	
	| a b* { AlphaOne (getLexeme lexbuf) }
	| a* b { AlphaTwo (getLexeme lexbuf) }
	| (a b)* c { AlphaThree (getLexeme lexbuf) }
	| eof { EOF }
	| _ { lexerError lexbuf ("Lexical error at input `"^getLexeme lexbuf^ "`") };

