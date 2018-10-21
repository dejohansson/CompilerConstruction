type aexpr =
  | Anum of (Z.t)
  | Avar of State__State.id
  | Aadd of aexpr * aexpr
  | Asub of aexpr * aexpr
  | Aaddu of aexpr * aexpr
  | Asubu of aexpr * aexpr

type bexpr =
  | Btrue
  | Bfalse
  | Bnot of bexpr
  | Beq of aexpr * aexpr
  | Ble of aexpr * aexpr
  | Band of bexpr * bexpr

type com =
  | Cskip
  | Cassign of State__State.id * aexpr
  | Cseq of com * com
  | Cif of bexpr * com * com
  | Cwhile of bexpr * com

let rec eq_a (a: aexpr) (b: aexpr) : bool =
  begin match (a, b) with
  | (Anum i1, Anum i2) -> Z.equal i1 i2
  | (Avar State__State.Id id1, Avar State__State.Id id2) -> Z.equal id1 id2
  | (Aadd (a1, a2), Aadd (b1, b2)) -> (eq_a a1 b1) && (eq_a a2 b2)
  | (Asub (a1, a2), Asub (b1, b2)) -> (eq_a a1 b1) && (eq_a a2 b2)
  | (Aaddu (a1, a2), Aaddu (b1, b2)) -> (eq_a a1 b1) && (eq_a a2 b2)
  | (Asubu (a1, a2), Asubu (b1, b2)) -> (eq_a a1 b1) && (eq_a a2 b2)
  | _ -> false
  end

let rec eq_b (a: bexpr) (b: bexpr) : bool =
  begin match (a, b) with
  | (Btrue, Btrue) -> true
  | (Bfalse, Bfalse) -> true
  | (Bnot x, Bnot y2) -> eq_b x y2
  | (Band (x, y2), Band (a1, b1)) -> (eq_b x a1) && (eq_b y2 b1)
  | (Beq (x, y2), Beq (a1, b1)) -> (eq_a x a1) && (eq_a y2 b1)
  | (Ble (x, y2), Ble (a1, b1)) -> (eq_a x a1) && (eq_a y2 b1)
  | _ -> false
  end

