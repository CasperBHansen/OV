| typeCheckStmt( vtab, AbSyn.ForLoop(id, init_exp, dir, cond_exp, blk, pos) ) =
  let val id_tp = (case SymTab.lookup id vtab of
                       SOME tp => tp
                     | NONE    => raise Error("var "^id^" not in VTab, at ", pos)
                  )
      val new_init_exp = typeCheckExp(vtab, init_exp, KnownType (BType Int) )
      val new_cond_exp = typeCheckExp(vtab, cond_exp, KnownType (BType Int) )
      val new_blk      = typeCheckBlock(vtab, blk)
      val init_tp      = typeOfExp new_init_exp
      val cond_tp      = typeOfExp new_cond_exp
  in  if typesEqual(init_tp, BType Int) andalso typesEqual(cond_tp, BType Int)
      then ForLoop((id, id_tp), new_init_exp, dir, new_cond_exp, new_blk, pos)
      else raise Error("in type check for statement, illegal inductive expression type "^pp_type init_tp^" at ", pos)
  end
