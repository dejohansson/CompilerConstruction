exception Err

exception Halt of Vm__Vm.machine_state

let rec split_at (p: Z.t) (c: Vm__Vm.instr list) :
  (Vm__Vm.instr list) * (Vm__Vm.instr list) =
  begin match (c, Z.equal p Z.zero) with
  | ([], _) -> raise Err
  | (_, true) -> ([], c)
  | (e :: cqt, _) ->
    let (hd, tl) = split_at (Z.sub p Z.one) cqt in (e :: hd, tl)
  end

let pop (s: (Z.t) list) : (Z.t) * ((Z.t) list) =
  begin match s with
  | [] -> raise Err
  | rv :: rs -> (rv, rs)
  end

let instr_ex (c: Vm__Vm.instr list) (ms: Vm__Vm.machine_state) : Vm__Vm.machine_state
  =
  let Vm__Vm.VMS (p, r, s, m) = ms in
  begin
    if Z.lt p Z.zero then begin raise Err end;
    begin try
      begin match split_at p c with
      | (_, instr :: _) ->
        begin match instr with
        | Vm__Vm.Iimm (x, n) ->
          Vm__Vm.VMS ((Z.add p Z.one), (State__Reg.write r x n), s, m)
        | Vm__Vm.Iload (x, n) ->
          Vm__Vm.VMS ((Z.add p Z.one),
            (State__Reg.write r x (State__State.mixfix_lbrb m n)), s, m)
        | Vm__Vm.Istore (x, n) ->
          Vm__Vm.VMS ((Z.add p Z.one), r, s,
            (State__State.mixfix_lblsmnrb m n (State__Reg.read r x)))
        | Vm__Vm.Ipushr x ->
          Vm__Vm.VMS ((Z.add p Z.one), r,
            (Vm__Vm.push (State__Reg.read r x) s), m)
        | Vm__Vm.Ipopr x ->
          let (value, stack) = pop s in
          Vm__Vm.VMS ((Z.add p Z.one), (State__Reg.write r x value), stack,
            m)
        | Vm__Vm.Iaddr (x1, x2, x3) ->
          Vm__Vm.VMS ((Z.add p Z.one),
            (State__Reg.write r x3
               (Z.add (State__Reg.read r x1) (State__Reg.read r x2))), s, m)
        | Vm__Vm.Iaddur (x1, x2, x3) ->
          Vm__Vm.VMS ((Z.add p Z.one),
            (State__Reg.write r x3
               (Bv_op__BV_OP.bv_add (State__Reg.read r x1)
                  (State__Reg.read r x2))), s, m)
        | Vm__Vm.Isubr (x1, x2, x3) ->
          Vm__Vm.VMS ((Z.add p Z.one),
            (State__Reg.write r x3
               (Z.sub (State__Reg.read r x1) (State__Reg.read r x2))), s, m)
        | Vm__Vm.Ibeqr (x1, x2, ofs) ->
          begin match Z.equal (State__Reg.read r x1) (State__Reg.read r x2) with
          | true -> Vm__Vm.VMS ((Z.add (Z.add p Z.one) ofs), r, s, m)
          | false -> Vm__Vm.VMS ((Z.add p Z.one), r, s, m)
          end
        | Vm__Vm.Ibner (x1, x2, ofs) ->
          begin match not (Z.equal (State__Reg.read r x1) (State__Reg.read r
                                                             x2)) with
          | true -> Vm__Vm.VMS ((Z.add (Z.add p Z.one) ofs), r, s, m)
          | false -> Vm__Vm.VMS ((Z.add p Z.one), r, s, m)
          end
        | Vm__Vm.Ibler (x1, x2, ofs) ->
          begin match Z.leq (State__Reg.read r x1) (State__Reg.read r x2) with
          | true -> Vm__Vm.VMS ((Z.add (Z.add p Z.one) ofs), r, s, m)
          | false -> Vm__Vm.VMS ((Z.add p Z.one), r, s, m)
          end
        | Vm__Vm.Ibgtr (x1, x2, ofs) ->
          begin match Z.gt (State__Reg.read r x1) (State__Reg.read r x2) with
          | true -> Vm__Vm.VMS ((Z.add (Z.add p Z.one) ofs), r, s, m)
          | false -> Vm__Vm.VMS ((Z.add p Z.one), r, s, m)
          end
        | Vm__Vm.Iconst n ->
          Vm__Vm.VMS ((Z.add p Z.one), r, (Vm__Vm.push n s), m)
        | Vm__Vm.Ivar x ->
          Vm__Vm.VMS ((Z.add p Z.one), r,
            (Vm__Vm.push (State__State.mixfix_lbrb m x) s), m)
        | Vm__Vm.Isetvar x ->
          let (value1, stack1) = pop s in
          Vm__Vm.VMS ((Z.add p Z.one), r, stack1,
            (State__State.mixfix_lblsmnrb m x value1))
        | Vm__Vm.Iadd ->
          let (v1, stack11) = pop s in let (v2, stack2) = pop stack11 in
          let sum = Z.add v2 v1 in
          Vm__Vm.VMS ((Z.add p Z.one), r, (Vm__Vm.push sum stack2), m)
        | Vm__Vm.Iaddu ->
          let (v11, stack12) = pop s in let (v21, stack21) = pop stack12 in
          let sum = Bv_op__BV_OP.bv_add v21 v11 in
          Vm__Vm.VMS ((Z.add p Z.one), r, (Vm__Vm.push sum stack21), m)
        | Vm__Vm.Isub ->
          let (v12, stack13) = pop s in let (v22, stack22) = pop stack13 in
          let dif = Z.sub v22 v12 in
          Vm__Vm.VMS ((Z.add p Z.one), r, (Vm__Vm.push dif stack22), m)
        | Vm__Vm.Ibeq ofs ->
          let (v13, stack14) = pop s in let (v23, stack23) = pop stack14 in
          begin match Z.equal v23 v13 with
          | true -> Vm__Vm.VMS ((Z.add (Z.add p Z.one) ofs), r, stack23, m)
          | false -> Vm__Vm.VMS ((Z.add p Z.one), r, stack23, m)
          end
        | Vm__Vm.Ible ofs ->
          let (v14, stack15) = pop s in let (v24, stack24) = pop stack15 in
          begin match Z.leq v24 v14 with
          | true -> Vm__Vm.VMS ((Z.add (Z.add p Z.one) ofs), r, stack24, m)
          | false -> Vm__Vm.VMS ((Z.add p Z.one), r, stack24, m)
          end
        | Vm__Vm.Ibne ofs ->
          let (v15, stack16) = pop s in let (v25, stack25) = pop stack16 in
          begin match not (Z.equal v25 v15) with
          | true -> Vm__Vm.VMS ((Z.add (Z.add p Z.one) ofs), r, stack25, m)
          | false -> Vm__Vm.VMS ((Z.add p Z.one), r, stack25, m)
          end
        | Vm__Vm.Ibgt ofs ->
          let (v16, stack17) = pop s in let (v26, stack26) = pop stack17 in
          begin match Z.gt v26 v16 with
          | true -> Vm__Vm.VMS ((Z.add (Z.add p Z.one) ofs), r, stack26, m)
          | false -> Vm__Vm.VMS ((Z.add p Z.one), r, stack26, m)
          end
        | Vm__Vm.Ibranch ofs ->
          Vm__Vm.VMS ((Z.add (Z.add p Z.one) ofs), r, s, m)
        | Vm__Vm.Ihalt -> raise (Halt ms)
        | _ -> raise Err
        end
      | _ -> assert false (* absurd *)
      end with
    | Err -> raise Err
    end
  end

let rec instr_iter_ex (c: Vm__Vm.instr list) (ms: Vm__Vm.machine_state) :
  Vm__Vm.machine_state = let o = instr_ex c ms in instr_iter_ex c o

