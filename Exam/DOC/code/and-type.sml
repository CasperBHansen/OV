| typeCheckExp ( vtab, AbSyn.And (e1, e2, pos), _ ) =
  let val e1_new = typeCheckExp(vtab, e1, UnknownType )
      val e2_new = typeCheckExp(vtab, e2, UnknownType )
      val (tp1, tp2) = (typeOfExp e1_new, typeOfExp e2_new)
  in if typesEqual(tp1, tp2)
     then And(e1_new, e2_new, pos)
     else raise Error("in type check and, operands are not of the same type "^
                       pp_type tp1^" and "^pp_type tp2^" at ", pos)
  end
