| compileExp( vtable, Map( (id,signat), arr_exp, pos ), place ) =
  let val cpDimBeg    = "_copy_dim_beg_" ^ newName()
      val cpDimEnd    = "_copy_dim_end_" ^ newName()
      val cpStrideBeg = "_copy_stride_beg_" ^ newName()
      val cpStrideEnd = "_copy_stride_end_" ^ newName()
      val cpBodyBeg   = "_copy_body_beg_" ^ newName()
      val cpBodyEnd   = "_copy_body_end_" ^ newName()
      
      val tmp     = "_tmp_" ^ newName()
      val size    = "_size_" ^ newName()
      val dst     = "_dst_" ^ newName()
      val src     = "_src_" ^ newName()
      val srcCode = compileExp(vtable, arr_exp, src)
      
      val (rank, btp) =
          case typeOfExp(arr_exp) of
            Array(r, t) => (r, t)
          | _           => raise Error("Cannot perform map on non-array type, at ", pos)

      val head_size = 8 * rank

      val (in_size, loadCode, advSrcCode) =
          case btp of
            Int => (4, [Mips.LW (tmp, src, makeConst 0)], [Mips.ADDI (src, src, makeConst 4)])
          | _   => (1, [Mips.LB (tmp, src, makeConst 0)], [Mips.ADDI (src, src, makeConst 1)])

      val (out_size, storeCode, advDstCode) =
          case signat of
            (_, SOME (BType Int)) => (4, [Mips.SW (tmp, dst, makeConst 0)], [Mips.ADDI (dst, dst, makeConst 4)])
          | (_, SOME _)           => (1, [Mips.SB (tmp, dst, makeConst 0)], [Mips.ADDI (dst, dst, makeConst 1)])
          | _                     => raise Error("You should never go here, Simba! ", pos)

      val allocDimCode    = [Mips.MOVE (place, HP)]
                          @ [Mips.MOVE (dst, place)]
                          @ [Mips.ORI  (size, makeConst 0, makeConst 1)]
                          @ [Mips.ADDI (HP, HP, makeConst (head_size div 2))]
                          @ [Mips.LABEL(cpDimBeg)]
                          @ [Mips.BEQ  (dst, HP, cpDimEnd)]
                          @ [Mips.LW   (tmp, src, makeConst 0)]
                          @ [Mips.SW   (tmp, dst, makeConst 0)]
                          @ [Mips.MUL  (size, size, tmp)]
                          @ [Mips.ADDI (src, src, makeConst 4)]
                          @ [Mips.ADDI (dst, dst, makeConst 4)]
                          @ [Mips.J    (cpDimBeg)]
                          @ [Mips.LABEL(cpDimEnd)]
                          @ [Mips.ORI  (tmp, makeConst 0, makeConst 4)]
                          @ (case out_size of
	                           1 => [Mips.ADDI (size, size, makeConst 3)]
                                  @ [Mips.DIV  (size, size, tmp)]
                             | _ => [] )
                          @ [Mips.MUL (size, size, tmp)]
      val allocStrideCode = [Mips.ADDI (HP, HP, makeConst (head_size div 2))]
                          @ [Mips.LABEL(cpStrideBeg)]
                          @ [Mips.BEQ  (dst, HP, cpStrideEnd)]
                          @ [Mips.LW   (tmp, src, makeConst 0)]
                          @ [Mips.SW   (tmp, dst, makeConst 0)]
                          @ [Mips.ADDI (src, src, makeConst 4)]
                          @ [Mips.ADDI (dst, dst, makeConst 4)]
                          @ [Mips.J    (cpStrideBeg)]
                          @ [Mips.LABEL(cpStrideEnd)]
      val allocBodyCode   = [Mips.SW   (dst, HP, makeConst ~4)]
                          @ [Mips.ADD  (HP, HP, size)] 
                          @ [Mips.LABEL(cpBodyBeg)]
                          @ [Mips.BEQ  (dst, HP, cpBodyEnd)]
                          @ loadCode
                          @ mkFunCallCode ( (id, signat), [tmp], vtable, tmp )
                          @ storeCode
                          @ advSrcCode
                          @ advDstCode
                          @ [Mips.J    (cpBodyBeg)]
                          @ [Mips.LABEL(cpBodyEnd)]
      in
          srcCode @ allocDimCode @ allocStrideCode @ allocBodyCode
      end
