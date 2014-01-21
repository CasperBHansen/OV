| ForLoop (id, init, dir, cond, block, p) =>
  let val (codeL, Reg loc) = compileLVal(vtable, Var(id), p)
      val lflag = "_less_than_" ^ newName()
      val check = "_fCheck_" ^ newName()
      val entry = "_fEntry_" ^ newName()
      val exit  = "_fExit_" ^ newName()
      val eCode = compileExp(vtable, init, loc)
      val cCode = compileExp(vtable, cond, check)
      val bCode = compileStmts block vtable exitLabel
      val dCode = if dir then [Mips.ADDI (loc, loc, makeConst 1)]
                  else [Mips.ADDI (loc, loc, makeConst ~1)]
  in
      codeL @ eCode @ cCode
    @ [Mips.LABEL entry]
    @ (case dir of
         true  => [Mips.SLT (lflag, check, loc)]
       | false => [Mips.SLT (lflag, loc, check)])
    @ [Mips.BNE (lflag, "0", exit)]
    @ bCode @ dCode
    @ [Mips.J entry]
    @ [Mips.LABEL exit]
  end
