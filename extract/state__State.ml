type id =
  | Id of (Z.t)

type state = id -> (Z.t)

let get (f: id -> (Z.t)) (x: id) : Z.t = f x

let set (f: id -> (Z.t)) (x: id) (v: Z.t) : id -> (Z.t) =
  fun (y3: id) -> let (Id xv1, Id yv1) = (x, y3) in
    if Z.equal xv1 yv1 then begin v end else begin f y3 end

let mixfix_lbrb (f: 'xi2 -> 'xi3) (x: 'xi2) : 'xi3 = f x

let mixfix_lblsmnrb (f: id -> (Z.t)) (x: id) (v: Z.t) : id -> (Z.t) =
  set f x v

let const (v: Z.t) : id -> (Z.t) = fun (_3: id) -> v

