fun keyword (s, pos) =
    case s of
        "program"      => Parser.PROG   pos
      | "function"     => Parser.FUN    pos
      | "procedure"    => Parser.PROC   pos
      | "var"          => Parser.VAR    pos
      | "begin"        => Parser.BEG    pos
      | "end"          => Parser.END    pos
      | "if"           => Parser.IF     pos
      | "then"         => Parser.THEN   pos
      | "else"         => Parser.ELSE   pos
      | "while"        => Parser.WHILE  pos
      | "for"          => Parser.FOR    pos
      | "to"           => Parser.TO     pos
      | "downto"       => Parser.DOWNTO pos
      | "do"           => Parser.DO     pos
      | "return"       => Parser.RETURN pos
      | "array"        => Parser.ARR    pos
      | "of"           => Parser.OF     pos
      | "int"          => Parser.INT    pos
      | "bool"         => Parser.BOOL   pos
      | "char"         => Parser.CHAR   pos
      | "and"          => Parser.AND    pos
      | "or"           => Parser.OR     pos
      | "not"          => Parser.NOT    po
      | "true"         => Parser.TRUE   pos
      | "false"        => Parser.FALSE  pos
      | _              => Parser.ID (s, pos)
