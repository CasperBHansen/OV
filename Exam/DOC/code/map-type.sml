| typeCheckExp ( vtab, AbSyn.FunApp ("map", [AbSyn.LValue(AbSyn.Var(fid), _), arr], pos), etp ) =
  let val (fun_arg_tps, fun_ret_tp) =
          case SymTab.lookup fid (!functionTable) of
            SOME (tps, rtp) => (tps, rtp)
          | NONE => raise Error("in type check, function argument supplied not in function table, at ", pos)

      val new_arr = typeCheckExp(vtab, arr, UnknownType)
      val (rank, btp) =
          case typeOfExp(new_arr) of
            Array(r, btp) => (r, btp)
          | _ => raise Error("in type check, array argument of map function not an array, at ", pos)
  
  in if length fun_arg_tps = 1 andalso typesEqual(hd fun_arg_tps, BType btp)
     then let val map_exp = Map((fid, (fun_arg_tps, fun_ret_tp)), new_arr, pos)
           (* val map_pp  = (print ((pp_exp map_exp) ^ "\n"); print (pp_type (typeOfExp(map_exp)))) *)
          in map_exp end 
     else raise Error("in type check, mismatch between supplied function argument type and array type", pos)
  end

| typeCheckExp ( vtab, AbSyn.FunApp ("map", args, pos), etp ) =
  raise Error("in type check call to map, invalid number of arguments ("^
               Int.toString(length args)^"), at ", pos)
