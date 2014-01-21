local
type t__1__ = (int*int)
type t__2__ = (int*int)
type t__3__ = (int*int)
type t__4__ = (int*int)
type t__5__ = (int*int)
type t__6__ = (int*int)
type t__7__ = char*(int*int)
type t__8__ = (int*int)
type t__9__ = (int*int)
type t__10__ = (int*int)
type t__11__ = (int*int)
type t__12__ = (int*int)
type t__13__ = (int*int)
type t__14__ = (int*int)
type t__15__ = (int*int)
type t__16__ = (int*int)
type t__17__ = (int*int)
type t__18__ = (int*int)
type t__19__ = (int*int)
type t__20__ = string*(int*int)
type t__21__ = (int*int)
type t__22__ = (int*int)
type t__23__ = (int*int)
type t__24__ = (int*int)
type t__25__ = (int*int)
type t__26__ = (int*int)
type t__27__ = (int*int)
type t__28__ = (int*int)
type t__29__ = int*(int*int)
type t__30__ = (int*int)
type t__31__ = (int*int)
type t__32__ = (int*int)
type t__33__ = (int*int)
type t__34__ = (int*int)
type t__35__ = (int*int)
type t__36__ = (int*int)
type t__37__ = (int*int)
type t__38__ = (int*int)
type t__39__ = (int*int)
type t__40__ = (int*int)
type t__41__ = string*(int*int)
type t__42__ = (int*int)
type t__43__ = (int*int)
type t__44__ = (int*int)
type t__45__ = (int*int)
type t__46__ = (int*int)
type t__47__ = (int*int)
in
datatype token =
    AND of t__1__
  | ARR of t__2__
  | ASSIGN of t__3__
  | BEG of t__4__
  | BOOL of t__5__
  | CHAR of t__6__
  | CHARLIT of t__7__
  | COLON of t__8__
  | COMMA of t__9__
  | DIV of t__10__
  | DO of t__11__
  | DOWNTO of t__12__
  | ELSE of t__13__
  | END of t__14__
  | EOF of t__15__
  | EQ of t__16__
  | FALSE of t__17__
  | FOR of t__18__
  | FUN of t__19__
  | ID of t__20__
  | IF of t__21__
  | INT of t__22__
  | LBRACKET of t__23__
  | LCURLY of t__24__
  | LPAR of t__25__
  | LTH of t__26__
  | MINUS of t__27__
  | NOT of t__28__
  | NUM of t__29__
  | OF of t__30__
  | OP of t__31__
  | OR of t__32__
  | PLUS of t__33__
  | PROC of t__34__
  | PROG of t__35__
  | RBRACKET of t__36__
  | RCURLY of t__37__
  | RETURN of t__38__
  | RPAR of t__39__
  | SEMICOL of t__40__
  | STRINGLIT of t__41__
  | THEN of t__42__
  | TIMES of t__43__
  | TO of t__44__
  | TRUE of t__45__
  | VAR of t__46__
  | WHILE of t__47__
end;

open Obj Parsing;
prim_val vector_ : int -> 'a -> 'a Vector.vector = 2 "make_vect";
prim_val update_ : 'a Vector.vector -> int -> 'a -> unit = 3 "set_vect_item";

val yytransl = #[
  257 (* AND *),
  258 (* ARR *),
  259 (* ASSIGN *),
  260 (* BEG *),
  261 (* BOOL *),
  262 (* CHAR *),
  263 (* CHARLIT *),
  264 (* COLON *),
  265 (* COMMA *),
  266 (* DIV *),
  267 (* DO *),
  268 (* DOWNTO *),
  269 (* ELSE *),
  270 (* END *),
  271 (* EOF *),
  272 (* EQ *),
  273 (* FALSE *),
  274 (* FOR *),
  275 (* FUN *),
  276 (* ID *),
  277 (* IF *),
  278 (* INT *),
  279 (* LBRACKET *),
  280 (* LCURLY *),
  281 (* LPAR *),
  282 (* LTH *),
  283 (* MINUS *),
  284 (* NOT *),
  285 (* NUM *),
  286 (* OF *),
  287 (* OP *),
  288 (* OR *),
  289 (* PLUS *),
  290 (* PROC *),
  291 (* PROG *),
  292 (* RBRACKET *),
  293 (* RCURLY *),
  294 (* RETURN *),
  295 (* RPAR *),
  296 (* SEMICOL *),
  297 (* STRINGLIT *),
  298 (* THEN *),
  299 (* TIMES *),
  300 (* TO *),
  301 (* TRUE *),
  302 (* VAR *),
  303 (* WHILE *),
    0];

val yylhs = "\255\255\
\\001\000\002\000\002\000\003\000\003\000\005\000\005\000\004\000\
\\004\000\004\000\004\000\006\000\006\000\010\000\011\000\011\000\
\\015\000\015\000\014\000\014\000\013\000\013\000\012\000\012\000\
\\012\000\012\000\012\000\012\000\012\000\012\000\012\000\016\000\
\\016\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\\007\000\007\000\007\000\007\000\007\000\007\000\007\000\007\000\
\\007\000\007\000\007\000\007\000\007\000\008\000\008\000\009\000\
\\009\000\000\000";

val yylen = "\002\000\
\\005\000\002\000\001\000\009\000\007\000\001\000\000\000\001\000\
\\001\000\001\000\003\000\005\000\003\000\003\000\003\000\002\000\
\\003\000\001\000\005\000\001\000\003\000\000\000\002\000\001\000\
\\004\000\003\000\006\000\006\000\004\000\004\000\008\000\001\000\
\\001\000\001\000\001\000\001\000\001\000\001\000\003\000\001\000\
\\004\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\\003\000\002\000\003\000\004\000\003\000\003\000\001\000\001\000\
\\000\000\002\000";

val yydefred = "\000\000\
\\000\000\000\000\000\000\058\000\000\000\000\000\000\000\000\000\
\\000\000\003\000\000\000\000\000\001\000\002\000\000\000\000\000\
\\000\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\
\\009\000\010\000\008\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\020\000\018\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\037\000\
\\036\000\000\000\000\000\000\000\000\000\034\000\038\000\035\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\005\000\011\000\
\\012\000\000\000\000\000\000\000\000\000\000\000\000\000\056\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\016\000\000\000\000\000\017\000\000\000\004\000\000\000\000\000\
\\000\000\000\000\000\000\025\000\000\000\053\000\000\000\039\000\
\\051\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\014\000\015\000\030\000\000\000\019\000\032\000\
\\033\000\000\000\054\000\000\000\041\000\052\000\000\000\021\000\
\\000\000\000\000\028\000\000\000\031\000";

val yydgoto = "\002\000\
\\004\000\009\000\010\000\028\000\018\000\019\000\070\000\071\000\
\\073\000\060\000\061\000\037\000\096\000\038\000\039\000\122\000";

val yysindex = "\006\000\
\\229\254\000\000\249\254\000\000\238\254\243\254\003\255\016\255\
\\181\255\000\000\012\255\035\255\000\000\000\000\063\255\063\255\
\\077\255\061\255\000\000\068\255\126\255\080\255\187\255\088\255\
\\000\000\000\000\000\000\081\255\126\255\252\254\100\255\134\255\
\\188\000\188\000\104\255\188\000\000\000\000\000\083\255\126\255\
\\063\255\187\255\085\255\110\255\188\000\188\000\188\000\000\000\
\\000\000\049\255\188\000\188\000\188\000\000\000\000\000\000\000\
\\062\000\136\000\125\255\094\255\006\255\086\000\000\000\000\000\
\\000\000\098\255\252\254\188\000\136\000\098\000\108\255\000\000\
\\115\255\188\000\165\000\118\255\100\000\054\255\188\000\188\000\
\\188\000\188\000\188\000\188\000\188\000\187\255\188\000\126\255\
\\000\000\162\255\120\255\000\000\187\255\000\000\121\255\144\255\
\\048\000\188\000\159\255\000\000\127\255\000\000\129\255\000\000\
\\000\000\054\255\000\000\084\255\084\255\015\255\148\000\015\255\
\\151\255\000\000\000\000\000\000\000\000\252\254\000\000\000\000\
\\000\000\188\000\000\000\188\000\000\000\000\000\187\255\000\000\
\\134\000\136\000\000\000\187\255\000\000";

val yyrindex = "\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\130\255\130\255\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\132\255\000\000\000\000\000\000\000\000\
\\000\000\005\255\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\135\255\000\000\
\\000\000\066\255\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\044\255\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\161\255\000\000\046\255\248\254\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\029\255\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\029\000\103\255\245\255\011\000\177\255\209\000\211\255\
\\141\255\140\255\000\000\000\000\000\000\161\255\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\082\255\000\000\000\000\000\000";

val yygindex = "\000\000\
\\000\000\000\000\183\000\231\255\178\000\154\000\223\255\214\255\
\\000\000\137\000\000\000\228\255\079\000\138\000\225\255\000\000";

val YYTABLESIZE = 509;
val yytable = "\057\000\
\\058\000\043\000\062\000\042\000\072\000\007\000\001\000\003\000\
\\076\000\030\000\066\000\069\000\005\000\031\000\064\000\032\000\
\\033\000\024\000\077\000\078\000\008\000\006\000\011\000\031\000\
\\080\000\090\000\033\000\055\000\055\000\050\000\055\000\101\000\
\\103\000\034\000\097\000\012\000\015\000\050\000\095\000\050\000\
\\050\000\050\000\036\000\034\000\024\000\106\000\107\000\108\000\
\\109\000\110\000\111\000\112\000\036\000\114\000\113\000\123\000\
\\023\000\087\000\026\000\016\000\050\000\117\000\115\000\080\000\
\\050\000\050\000\040\000\050\000\050\000\081\000\050\000\074\000\
\\050\000\075\000\040\000\040\000\040\000\040\000\040\000\082\000\
\\083\000\040\000\017\000\023\000\021\000\026\000\085\000\029\000\
\\129\000\095\000\130\000\040\000\040\000\080\000\027\000\131\000\
\\087\000\040\000\040\000\022\000\133\000\040\000\040\000\045\000\
\\040\000\040\000\023\000\040\000\040\000\040\000\083\000\045\000\
\\045\000\045\000\045\000\045\000\085\000\040\000\045\000\044\000\
\\041\000\027\000\063\000\059\000\067\000\068\000\087\000\024\000\
\\045\000\045\000\025\000\026\000\088\000\089\000\045\000\045\000\
\\045\000\094\000\045\000\045\000\044\000\045\000\045\000\099\000\
\\045\000\045\000\045\000\027\000\044\000\044\000\044\000\044\000\
\\044\000\100\000\104\000\044\000\046\000\119\000\047\000\116\000\
\\118\000\124\000\125\000\127\000\045\000\044\000\044\000\126\000\
\\007\000\088\000\013\000\044\000\044\000\057\000\022\000\044\000\
\\044\000\043\000\044\000\044\000\029\000\044\000\044\000\044\000\
\\046\000\043\000\047\000\043\000\043\000\043\000\030\000\014\000\
\\043\000\020\000\065\000\013\000\128\000\091\000\092\000\007\000\
\\000\000\000\000\043\000\043\000\031\000\000\000\032\000\033\000\
\\043\000\043\000\000\000\042\000\043\000\043\000\008\000\043\000\
\\043\000\000\000\043\000\042\000\043\000\042\000\042\000\042\000\
\\034\000\000\000\042\000\000\000\000\000\000\000\000\000\000\000\
\\035\000\036\000\000\000\000\000\042\000\042\000\000\000\000\000\
\\000\000\000\000\042\000\042\000\000\000\046\000\042\000\042\000\
\\000\000\042\000\042\000\000\000\042\000\046\000\042\000\046\000\
\\046\000\046\000\000\000\000\000\046\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\047\000\000\000\000\000\046\000\000\000\
\\000\000\000\000\000\000\047\000\046\000\047\000\047\000\047\000\
\\046\000\046\000\047\000\046\000\046\000\048\000\046\000\000\000\
\\046\000\000\000\000\000\000\000\047\000\048\000\000\000\048\000\
\\048\000\048\000\047\000\000\000\000\000\000\000\047\000\047\000\
\\079\000\047\000\047\000\000\000\047\000\000\000\047\000\000\000\
\\000\000\080\000\000\000\120\000\048\000\000\000\079\000\081\000\
\\048\000\048\000\000\000\048\000\048\000\000\000\048\000\080\000\
\\048\000\082\000\083\000\000\000\000\000\081\000\000\000\084\000\
\\085\000\000\000\000\000\000\000\000\000\000\000\079\000\082\000\
\\083\000\000\000\087\000\121\000\000\000\084\000\085\000\080\000\
\\093\000\000\000\079\000\000\000\079\000\081\000\000\000\086\000\
\\087\000\000\000\098\000\080\000\000\000\080\000\000\000\082\000\
\\083\000\081\000\000\000\081\000\000\000\084\000\085\000\000\000\
\\000\000\000\000\000\000\082\000\083\000\082\000\083\000\000\000\
\\087\000\084\000\085\000\084\000\085\000\000\000\079\000\000\000\
\\079\000\000\000\105\000\000\000\087\000\000\000\087\000\080\000\
\\132\000\080\000\000\000\000\000\079\000\081\000\000\000\081\000\
\\000\000\000\000\000\000\000\000\000\000\080\000\000\000\082\000\
\\083\000\082\000\083\000\081\000\000\000\084\000\085\000\084\000\
\\085\000\000\000\000\000\048\000\000\000\082\000\083\000\000\000\
\\087\000\000\000\087\000\000\000\085\000\049\000\000\000\000\000\
\\050\000\000\000\000\000\000\000\051\000\052\000\087\000\000\000\
\\053\000\054\000\048\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\102\000\049\000\055\000\000\000\050\000\
\\000\000\056\000\000\000\051\000\052\000\000\000\000\000\053\000\
\\054\000\049\000\000\000\049\000\049\000\049\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\055\000\000\000\000\000\000\000\
\\056\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\049\000\000\000\000\000\000\000\049\000\049\000\000\000\049\000\
\\049\000\000\000\049\000\000\000\049\000";

val yycheck = "\033\000\
\\034\000\030\000\036\000\029\000\047\000\019\001\001\000\035\001\
\\051\000\004\001\042\000\045\000\020\001\018\001\040\000\020\001\
\\021\001\013\001\052\000\053\000\034\001\040\001\020\001\018\001\
\\010\001\020\001\021\001\036\001\037\001\001\001\039\001\074\000\
\\075\000\038\001\068\000\020\001\025\001\009\001\067\000\011\001\
\\012\001\013\001\047\001\038\001\040\001\079\000\080\000\081\000\
\\082\000\083\000\084\000\085\000\047\001\087\000\086\000\098\000\
\\013\001\043\001\013\001\025\001\032\001\093\000\088\000\010\001\
\\036\001\037\001\001\001\039\001\040\001\016\001\042\001\023\001\
\\044\001\025\001\009\001\010\001\011\001\012\001\013\001\026\001\
\\027\001\016\001\020\001\040\001\008\001\040\001\033\001\008\001\
\\122\000\118\000\124\000\026\001\027\001\010\001\013\001\127\000\
\\043\001\032\001\033\001\039\001\132\000\036\001\037\001\001\001\
\\039\001\040\001\039\001\042\001\043\001\044\001\027\001\009\001\
\\010\001\011\001\012\001\013\001\033\001\030\001\016\001\020\001\
\\040\001\040\001\040\001\020\001\040\001\016\001\043\001\002\001\
\\026\001\027\001\005\001\006\001\008\001\040\001\032\001\033\001\
\\003\001\040\001\036\001\037\001\001\001\039\001\040\001\036\001\
\\042\001\043\001\044\001\022\001\009\001\010\001\011\001\012\001\
\\013\001\039\001\037\001\016\001\023\001\014\001\025\001\040\001\
\\040\001\003\001\036\001\013\001\003\001\026\001\027\001\039\001\
\\039\001\008\001\039\001\032\001\033\001\039\001\014\001\036\001\
\\037\001\001\001\039\001\040\001\040\001\042\001\043\001\044\001\
\\023\001\009\001\025\001\011\001\012\001\013\001\004\001\009\000\
\\016\001\016\000\041\000\015\001\118\000\061\000\061\000\019\001\
\\255\255\255\255\026\001\027\001\018\001\255\255\020\001\021\001\
\\032\001\033\001\255\255\001\001\036\001\037\001\034\001\039\001\
\\040\001\255\255\042\001\009\001\044\001\011\001\012\001\013\001\
\\038\001\255\255\016\001\255\255\255\255\255\255\255\255\255\255\
\\046\001\047\001\255\255\255\255\026\001\027\001\255\255\255\255\
\\255\255\255\255\032\001\033\001\255\255\001\001\036\001\037\001\
\\255\255\039\001\040\001\255\255\042\001\009\001\044\001\011\001\
\\012\001\013\001\255\255\255\255\016\001\255\255\255\255\255\255\
\\255\255\255\255\255\255\001\001\255\255\255\255\026\001\255\255\
\\255\255\255\255\255\255\009\001\032\001\011\001\012\001\013\001\
\\036\001\037\001\016\001\039\001\040\001\001\001\042\001\255\255\
\\044\001\255\255\255\255\255\255\026\001\009\001\255\255\011\001\
\\012\001\013\001\032\001\255\255\255\255\255\255\036\001\037\001\
\\001\001\039\001\040\001\255\255\042\001\255\255\044\001\255\255\
\\255\255\010\001\255\255\012\001\032\001\255\255\001\001\016\001\
\\036\001\037\001\255\255\039\001\040\001\255\255\042\001\010\001\
\\044\001\026\001\027\001\255\255\255\255\016\001\255\255\032\001\
\\033\001\255\255\255\255\255\255\255\255\255\255\001\001\026\001\
\\027\001\255\255\043\001\044\001\255\255\032\001\033\001\010\001\
\\011\001\255\255\001\001\255\255\001\001\016\001\255\255\042\001\
\\043\001\255\255\009\001\010\001\255\255\010\001\255\255\026\001\
\\027\001\016\001\255\255\016\001\255\255\032\001\033\001\255\255\
\\255\255\255\255\255\255\026\001\027\001\026\001\027\001\255\255\
\\043\001\032\001\033\001\032\001\033\001\255\255\001\001\255\255\
\\001\001\255\255\039\001\255\255\043\001\255\255\043\001\010\001\
\\011\001\010\001\255\255\255\255\001\001\016\001\255\255\016\001\
\\255\255\255\255\255\255\255\255\255\255\010\001\255\255\026\001\
\\027\001\026\001\027\001\016\001\255\255\032\001\033\001\032\001\
\\033\001\255\255\255\255\007\001\255\255\026\001\027\001\255\255\
\\043\001\255\255\043\001\255\255\033\001\017\001\255\255\255\255\
\\020\001\255\255\255\255\255\255\024\001\025\001\043\001\255\255\
\\028\001\029\001\007\001\255\255\255\255\255\255\255\255\255\255\
\\255\255\255\255\255\255\039\001\017\001\041\001\255\255\020\001\
\\255\255\045\001\255\255\024\001\025\001\255\255\255\255\028\001\
\\029\001\009\001\255\255\011\001\012\001\013\001\255\255\255\255\
\\255\255\255\255\255\255\255\255\041\001\255\255\255\255\255\255\
\\045\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\\032\001\255\255\255\255\255\255\036\001\037\001\255\255\039\001\
\\040\001\255\255\042\001\255\255\044\001";

val yyact = vector_ 59 (fn () => ((raise Fail "parser") : obj));
(* Rule 1, file Parser.grm, line 43 *)
val _ = update_ yyact 1
(fn () => repr(let
val d__1__ = peekVal 4 : (int*int)
val d__2__ = peekVal 3 : string*(int*int)
val d__3__ = peekVal 2 : (int*int)
val d__4__ = peekVal 1 : AbSyn.FunDec list
val d__5__ = peekVal 0 : (int*int)
in
( (d__4__) ) end : AbSyn.Prog))
;
(* Rule 2, file Parser.grm, line 45 *)
val _ = update_ yyact 2
(fn () => repr(let
val d__1__ = peekVal 1 : AbSyn.FunDec list
val d__2__ = peekVal 0 : AbSyn.FunDec
in
( (d__2__) :: (d__1__) ) end : AbSyn.FunDec list))
;
(* Rule 3, file Parser.grm, line 46 *)
val _ = update_ yyact 3
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.FunDec
in
( (d__1__) :: [] ) end : AbSyn.FunDec list))
;
(* Rule 4, file Parser.grm, line 48 *)
val _ = update_ yyact 4
(fn () => repr(let
val d__1__ = peekVal 8 : (int*int)
val d__2__ = peekVal 7 : string*(int*int)
val d__3__ = peekVal 6 : (int*int)
val d__4__ = peekVal 5 : AbSyn.Dec list
val d__5__ = peekVal 4 : (int*int)
val d__6__ = peekVal 3 : (int*int)
val d__7__ = peekVal 2 : AbSyn.Type
val d__8__ = peekVal 1 : AbSyn.StmtBlock
val d__9__ = peekVal 0 : (int*int)
in
( AbSyn.Func((d__7__), #1 (d__2__), (d__4__), (d__8__), #2 (d__2__)) ) end : AbSyn.FunDec))
;
(* Rule 5, file Parser.grm, line 49 *)
val _ = update_ yyact 5
(fn () => repr(let
val d__1__ = peekVal 6 : (int*int)
val d__2__ = peekVal 5 : string*(int*int)
val d__3__ = peekVal 4 : (int*int)
val d__4__ = peekVal 3 : AbSyn.Dec list
val d__5__ = peekVal 2 : (int*int)
val d__6__ = peekVal 1 : AbSyn.StmtBlock
val d__7__ = peekVal 0 : (int*int)
in
( AbSyn.Proc(    #1 (d__2__), (d__4__), (d__6__), #2 (d__2__)) ) end : AbSyn.FunDec))
;
(* Rule 6, file Parser.grm, line 51 *)
val _ = update_ yyact 6
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Dec list
in
( (d__1__) ) end : AbSyn.Dec list))
;
(* Rule 7, file Parser.grm, line 52 *)
val _ = update_ yyact 7
(fn () => repr(let
in
( [] ) end : AbSyn.Dec list))
;
(* Rule 8, file Parser.grm, line 54 *)
val _ = update_ yyact 8
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( AbSyn.Int  (d__1__) ) end : AbSyn.Type))
;
(* Rule 9, file Parser.grm, line 55 *)
val _ = update_ yyact 9
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( AbSyn.Bool (d__1__) ) end : AbSyn.Type))
;
(* Rule 10, file Parser.grm, line 56 *)
val _ = update_ yyact 10
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( AbSyn.Char (d__1__) ) end : AbSyn.Type))
;
(* Rule 11, file Parser.grm, line 57 *)
val _ = update_ yyact 11
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Type
in
( AbSyn.Array ((d__3__), (d__1__)) ) end : AbSyn.Type))
;
(* Rule 12, file Parser.grm, line 59 *)
val _ = update_ yyact 12
(fn () => repr(let
val d__1__ = peekVal 4 : string*(int*int)
val d__2__ = peekVal 3 : (int*int)
val d__3__ = peekVal 2 : AbSyn.Type
val d__4__ = peekVal 1 : (int*int)
val d__5__ = peekVal 0 : AbSyn.Dec list
in
(  (AbSyn.Dec(#1 (d__1__), (d__3__), #2 (d__1__))) :: (d__5__) ) end : AbSyn.Dec list))
;
(* Rule 13, file Parser.grm, line 60 *)
val _ = update_ yyact 13
(fn () => repr(let
val d__1__ = peekVal 2 : string*(int*int)
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Type
in
(  (AbSyn.Dec(#1 (d__1__), (d__3__), #2 (d__1__))) :: [] ) end : AbSyn.Dec list))
;
(* Rule 14, file Parser.grm, line 62 *)
val _ = update_ yyact 14
(fn () => repr(let
val d__1__ = peekVal 2 : string*(int*int)
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Type
in
( AbSyn.Dec(#1 (d__1__), (d__3__), #2 (d__1__)) ) end : AbSyn.Dec))
;
(* Rule 15, file Parser.grm, line 74 *)
val _ = update_ yyact 15
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Dec  list
val d__2__ = peekVal 1 : AbSyn.Dec
val d__3__ = peekVal 0 : (int*int)
in
( (d__1__) @ [(d__2__)] ) end : AbSyn.Dec  list))
;
(* Rule 16, file Parser.grm, line 75 *)
val _ = update_ yyact 16
(fn () => repr(let
val d__1__ = peekVal 1 : AbSyn.Dec
val d__2__ = peekVal 0 : (int*int)
in
( [(d__1__)] ) end : AbSyn.Dec  list))
;
(* Rule 17, file Parser.grm, line 76 *)
val _ = update_ yyact 17
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : AbSyn.Dec  list
val d__3__ = peekVal 0 : AbSyn.Stmt list
in
( AbSyn.Block((d__2__), (d__3__)) ) end : AbSyn.StmtBlock))
;
(* Rule 18, file Parser.grm, line 77 *)
val _ = update_ yyact 18
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Stmt list
in
( AbSyn.Block([], (d__1__)) ) end : AbSyn.StmtBlock))
;
(* Rule 19, file Parser.grm, line 81 *)
val _ = update_ yyact 19
(fn () => repr(let
val d__1__ = peekVal 4 : (int*int)
val d__2__ = peekVal 3 : AbSyn.Stmt
val d__3__ = peekVal 2 : (int*int)
val d__4__ = peekVal 1 : AbSyn.Stmt list
val d__5__ = peekVal 0 : (int*int)
in
( (d__2__) :: (d__4__) ) end : AbSyn.Stmt list))
;
(* Rule 20, file Parser.grm, line 82 *)
val _ = update_ yyact 20
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Stmt
in
(   [(d__1__)]   ) end : AbSyn.Stmt list))
;
(* Rule 21, file Parser.grm, line 84 *)
val _ = update_ yyact 21
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Stmt
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Stmt list
in
( (d__1__) :: (d__3__) ) end : AbSyn.Stmt list))
;
(* Rule 22, file Parser.grm, line 85 *)
val _ = update_ yyact 22
(fn () => repr(let
in
( [] ) end : AbSyn.Stmt list))
;
(* Rule 23, file Parser.grm, line 87 *)
val _ = update_ yyact 23
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Return  (SOME (d__2__), (d__1__)) ) end : AbSyn.Stmt))
;
(* Rule 24, file Parser.grm, line 88 *)
val _ = update_ yyact 24
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( AbSyn.Return  (NONE,    (d__1__)) ) end : AbSyn.Stmt))
;
(* Rule 25, file Parser.grm, line 89 *)
val _ = update_ yyact 25
(fn () => repr(let
val d__1__ = peekVal 3 : string*(int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : AbSyn.Exp  list
val d__4__ = peekVal 0 : (int*int)
in
( AbSyn.ProcCall(#1 (d__1__), (d__3__), #2 (d__1__)) ) end : AbSyn.Stmt))
;
(* Rule 26, file Parser.grm, line 90 *)
val _ = update_ yyact 26
(fn () => repr(let
val d__1__ = peekVal 2 : string*(int*int)
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Assign  (AbSyn.Var(#1 (d__1__)), (d__3__), (d__2__)) ) end : AbSyn.Stmt))
;
(* Rule 27, file Parser.grm, line 91 *)
val _ = update_ yyact 27
(fn () => repr(let
val d__1__ = peekVal 5 : string*(int*int)
val d__2__ = peekVal 4 : (int*int)
val d__3__ = peekVal 3 : AbSyn.Exp  list
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Assign  (AbSyn.Index(#1 (d__1__), (d__3__)), (d__6__), (d__5__)) ) end : AbSyn.Stmt))
;
(* Rule 28, file Parser.grm, line 92 *)
val _ = update_ yyact 28
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : AbSyn.Exp
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : AbSyn.StmtBlock
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : AbSyn.StmtBlock
in
( AbSyn.IfThEl  ((d__2__), (d__4__), (d__6__), (d__1__)) ) end : AbSyn.Stmt))
;
(* Rule 29, file Parser.grm, line 93 *)
val _ = update_ yyact 29
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : AbSyn.Exp
val d__3__ = peekVal 1 : (int*int)
val d__4__ = peekVal 0 : AbSyn.StmtBlock
in
( AbSyn.IfThEl  ((d__2__), (d__4__), AbSyn.Block([], []), (d__1__)) ) end : AbSyn.Stmt))
;
(* Rule 30, file Parser.grm, line 94 *)
val _ = update_ yyact 30
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : AbSyn.Exp
val d__3__ = peekVal 1 : (int*int)
val d__4__ = peekVal 0 : AbSyn.StmtBlock
in
( AbSyn.While   ((d__2__), (d__4__), (d__1__)) ) end : AbSyn.Stmt))
;
(* Rule 31, file Parser.grm, line 95 *)
val _ = update_ yyact 31
(fn () => repr(let
val d__1__ = peekVal 7 : (int*int)
val d__2__ = peekVal 6 : string*(int*int)
val d__3__ = peekVal 5 : (int*int)
val d__4__ = peekVal 4 : AbSyn.Exp
val d__5__ = peekVal 3 : bool
val d__6__ = peekVal 2 : AbSyn.Exp
val d__7__ = peekVal 1 : (int*int)
val d__8__ = peekVal 0 : AbSyn.StmtBlock
in
( AbSyn.ForLoop (#1 (d__2__), (d__4__), (d__5__), (d__6__), (d__8__), (d__1__)) ) end : AbSyn.Stmt))
;
(* Rule 32, file Parser.grm, line 98 *)
val _ = update_ yyact 32
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( false ) end : bool))
;
(* Rule 33, file Parser.grm, line 99 *)
val _ = update_ yyact 33
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( true ) end : bool))
;
(* Rule 34, file Parser.grm, line 102 *)
val _ = update_ yyact 34
(fn () => repr(let
val d__1__ = peekVal 0 : int*(int*int)
in
( AbSyn.Literal( AbSyn.BVal(AbSyn.Num(#1 (d__1__))), #2 (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 35, file Parser.grm, line 103 *)
val _ = update_ yyact 35
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( AbSyn.Literal( AbSyn.BVal(AbSyn.Log(true )), (d__1__)   ) ) end : AbSyn.Exp))
;
(* Rule 36, file Parser.grm, line 104 *)
val _ = update_ yyact 36
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( AbSyn.Literal( AbSyn.BVal(AbSyn.Log(false)), (d__1__)   ) ) end : AbSyn.Exp))
;
(* Rule 37, file Parser.grm, line 105 *)
val _ = update_ yyact 37
(fn () => repr(let
val d__1__ = peekVal 0 : char*(int*int)
in
( AbSyn.Literal( AbSyn.BVal(AbSyn.Chr(#1 (d__1__))), #2 (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 38, file Parser.grm, line 106 *)
val _ = update_ yyact 38
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( AbSyn.StrLit (#1 (d__1__), #2 (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 39, file Parser.grm, line 107 *)
val _ = update_ yyact 39
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : AbSyn.Exp  list
val d__3__ = peekVal 0 : (int*int)
in
( AbSyn.ArrLit ( (d__2__), (d__1__) ) ) end : AbSyn.Exp))
;
(* Rule 40, file Parser.grm, line 109 *)
val _ = update_ yyact 40
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( AbSyn.LValue(AbSyn.Var   (#1 (d__1__)),     #2 (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 41, file Parser.grm, line 110 *)
val _ = update_ yyact 41
(fn () => repr(let
val d__1__ = peekVal 3 : string*(int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : AbSyn.Exp  list
val d__4__ = peekVal 0 : (int*int)
in
( AbSyn.LValue(AbSyn.Index (#1 (d__1__), (d__3__)), #2 (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 42, file Parser.grm, line 112 *)
val _ = update_ yyact 42
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Plus ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 43, file Parser.grm, line 113 *)
val _ = update_ yyact 43
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Minus((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 44, file Parser.grm, line 114 *)
val _ = update_ yyact 44
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Times((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 45, file Parser.grm, line 115 *)
val _ = update_ yyact 45
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Div  ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 46, file Parser.grm, line 116 *)
val _ = update_ yyact 46
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Equal((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 47, file Parser.grm, line 117 *)
val _ = update_ yyact 47
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Less ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 48, file Parser.grm, line 118 *)
val _ = update_ yyact 48
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.And  ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 49, file Parser.grm, line 119 *)
val _ = update_ yyact 49
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Or   ((d__1__), (d__3__), (d__2__)) ) end : AbSyn.Exp))
;
(* Rule 50, file Parser.grm, line 120 *)
val _ = update_ yyact 50
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : AbSyn.Exp
in
( AbSyn.Not  ((d__2__), (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 51, file Parser.grm, line 122 *)
val _ = update_ yyact 51
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : AbSyn.Exp
val d__3__ = peekVal 0 : (int*int)
in
( (d__2__) ) end : AbSyn.Exp))
;
(* Rule 52, file Parser.grm, line 124 *)
val _ = update_ yyact 52
(fn () => repr(let
val d__1__ = peekVal 3 : string*(int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : AbSyn.Exp  list
val d__4__ = peekVal 0 : (int*int)
in
( AbSyn.FunApp (#1 (d__1__), (d__3__), #2 (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 53, file Parser.grm, line 125 *)
val _ = update_ yyact 53
(fn () => repr(let
val d__1__ = peekVal 2 : string*(int*int)
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : (int*int)
in
( AbSyn.FunApp (#1 (d__1__), [], #2 (d__1__)) ) end : AbSyn.Exp))
;
(* Rule 54, file Parser.grm, line 128 *)
val _ = update_ yyact 54
(fn () => repr(let
val d__1__ = peekVal 2 : AbSyn.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : AbSyn.Exp  list
in
( (d__1__) :: (d__3__) ) end : AbSyn.Exp  list))
;
(* Rule 55, file Parser.grm, line 129 *)
val _ = update_ yyact 55
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Exp
in
( (d__1__) :: [] ) end : AbSyn.Exp  list))
;
(* Rule 56, file Parser.grm, line 132 *)
val _ = update_ yyact 56
(fn () => repr(let
val d__1__ = peekVal 0 : AbSyn.Exp  list
in
( (d__1__) ) end : AbSyn.Exp  list))
;
(* Rule 57, file Parser.grm, line 133 *)
val _ = update_ yyact 57
(fn () => repr(let
in
( [] ) end : AbSyn.Exp  list))
;
(* Entry Prog *)
val _ = update_ yyact 58 (fn () => raise yyexit (peekVal 0));
val yytables : parseTables =
  ( yyact,
    yytransl,
    yylhs,
    yylen,
    yydefred,
    yydgoto,
    yysindex,
    yyrindex,
    yygindex,
    YYTABLESIZE,
    yytable,
    yycheck );
fun Prog lexer lexbuf = yyparse yytables 1 lexer lexbuf;
