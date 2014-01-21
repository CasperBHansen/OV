| compileExp( vtable, And(e1, e2, _), place ) =
  let val t1 = "and1_" ^ newName()
      val c1 = compileExp(vtable, e1, t1)
      val t2 = "and2_" ^ newName()
      val c2 = compileExp(vtable, e2, t2)
      val lA = "_and_" ^ newName()
  in case typeOfExp e1 of
      BType Bool => c1 (* do first part, skip 2nd part if already false *)
                  @ [Mips.MOVE (place, t1), Mips.BEQ (place, "0", lA) ]
                  @ c2 (* when here, t1 was  true, so the result is t2 *)
                  @ [Mips.MOVE (place, t2), Mips.LABEL lA ]
      | _        => c1 @ c2 @ [Mips.AND (place, t1, t2)]
  end
