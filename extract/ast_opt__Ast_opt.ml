let rec aopt_ex (e: Imp__Imp.aexpr) : Imp__Imp.aexpr =
  begin match e with
  | Imp__Imp.Anum n -> Imp__Imp.Anum n
  | Imp__Imp.Avar x -> Imp__Imp.Avar x
  | Imp__Imp.Aadd (e1, e2) -> Imp__Imp.Aadd ((aopt_ex e1), (aopt_ex e2))
  | Imp__Imp.Aaddu (e1, e2) ->
    begin match (aopt_ex e1, aopt_ex e2) with
    | (Imp__Imp.Anum e11, Imp__Imp.Anum e21) ->
      Imp__Imp.Anum (Bv_op__BV_OP.bv_add e11 e21)
    | (a, b) -> Imp__Imp.Aaddu (a, b)
    end
  | Imp__Imp.Asub (e1, e2) -> Imp__Imp.Asub ((aopt_ex e1), (aopt_ex e2))
  | Imp__Imp.Asubu (e1, e2) ->
    begin match (aopt_ex e1, aopt_ex e2) with
    | (Imp__Imp.Anum x, Imp__Imp.Anum y1) ->
      Imp__Imp.Anum (Bv_op__BV_OP.bv_sub x y1)
    | (a, b) ->
      begin match Imp__Imp.eq_a a b with
      | true -> Imp__Imp.Anum Z.zero
      | false -> Imp__Imp.Asubu (a, b)
      end
    end
  end

let rec bopt_ex (b: Imp__Imp.bexpr) : Imp__Imp.bexpr =
  begin match b with
  | Imp__Imp.Btrue -> Imp__Imp.Btrue
  | Imp__Imp.Bfalse -> Imp__Imp.Bfalse
  | Imp__Imp.Bnot bqt -> Imp__Imp.Bnot (bopt_ex bqt)
  | Imp__Imp.Band (b1, b2) ->
    begin match (bopt_ex b1, bopt_ex b2) with
    | (Imp__Imp.Btrue, Imp__Imp.Btrue) -> Imp__Imp.Btrue
    | (Imp__Imp.Bfalse, Imp__Imp.Bfalse) -> Imp__Imp.Bfalse
    | (Imp__Imp.Bfalse, _) -> Imp__Imp.Bfalse
    | (_, Imp__Imp.Bfalse) -> Imp__Imp.Bfalse
    | (Imp__Imp.Btrue, x) -> x
    | (x, Imp__Imp.Btrue) -> x
    | (x, y1) ->
      begin match Imp__Imp.eq_b x y1 with
      | true -> x
      | false -> Imp__Imp.Band (x, y1)
      end
    end
  | Imp__Imp.Beq (a1, a2) -> Imp__Imp.Beq ((aopt_ex a1), (aopt_ex a2))
  | Imp__Imp.Ble (a1, a2) -> Imp__Imp.Ble ((aopt_ex a1), (aopt_ex a2))
  end

let rec copt_ex (c: Imp__Imp.com) : Imp__Imp.com =
  begin match c with
  | Imp__Imp.Cskip -> Imp__Imp.Cskip
  | Imp__Imp.Cassign (id, aexpr) -> Imp__Imp.Cassign (id, (aopt_ex aexpr))
  | Imp__Imp.Cseq (c1, c2) ->
    let o = copt_ex c2 in let o1 = copt_ex c1 in Imp__Imp.Cseq (o1, o)
  | Imp__Imp.Cif (bexpr, c1, c2) ->
    begin match bopt_ex bexpr with
    | Imp__Imp.Btrue -> copt_ex c1
    | Imp__Imp.Bfalse -> copt_ex c2
    | b ->
      let o = copt_ex c2 in let o1 = copt_ex c1 in Imp__Imp.Cif (b, o1, o)
    end
  | Imp__Imp.Cwhile (bexpr, com) ->
    begin match bopt_ex bexpr with
    | Imp__Imp.Bfalse -> Imp__Imp.Cskip
    | b -> let o = copt_ex com in Imp__Imp.Cwhile (b, o)
    end
  end

