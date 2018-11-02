open Imp__Imp
open State__State
open Vm__Vm
open Env
open Common

let labelCounter = ref 0

let newLabel ofs =
  let lb = !labelCounter + 1 in
  labelCounter := !labelCounter + 1; 
  "L_" ^ string_of_int lb ^ ":\t"

let pLabel ofs = 
  "L_" ^ string_of_int (!labelCounter + Z.to_int ofs + 1)

let id_to_int = function
  | Id i -> Z.to_int i

let of_reg r = 
  "$t" ^ Z.to_string r

let of_instr = function
  (* Original *)
  | Iconst v            -> let lb = newLabel 3 in lb ^
                            "ADDI\t$t0, $zero, " ^ Z.to_string v ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, -4" ^ "\n\t\t" ^
                            "SW\t$t0, 0($sp)"
  | Ivar id             -> let lb = newLabel 3 in lb ^ 
                            "LW\t$t0, " ^ string_of_int ((id_to_int id)*4) ^ "($gp)" ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, -4" ^ "\n\t\t" ^
                            "SW\t$t0, 0($sp)"
  | Isetvar id          -> let lb = newLabel 3 in lb ^ 
                            "LW\t$t0, 0($sp)" ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, 4" ^ "\n\t\t" ^
                            "SW\t$t0, " ^ string_of_int ((id_to_int id)*4) ^ "($gp)"
  | Ibranch n           -> let lb = newLabel 1 in lb ^ 
                            "B\t" ^ pLabel n
  | Iadd                -> let lb = newLabel 5 in lb ^ 
                            "LW\t$t0, 0($sp)" ^ "\n\t\t" ^
                            "LW\t$t1, 4($sp)" ^ "\n\t\t" ^
                            "ADD\t$t0, $t1, $t0" ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, 4" ^ "\n\t\t" ^
                            "SW\t$t0, 0($sp)"
  | Iaddu               -> let lb = newLabel 5 in lb ^ 
                            "LW\t$t0, 0($sp)" ^ "\n\t\t" ^
                            "LW\t$t1, 4($sp)" ^ "\n\t\t" ^
                            "ADDU\t$t0, $t1, $t0" ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, 4" ^ "\n\t\t" ^
                            "SW\t$t0, 0($sp)"
  | Isub                -> let lb = newLabel 5 in lb ^ 
                            "LW\t$t0, 0($sp)" ^ "\n\t\t" ^
                            "LW\t$t1, 4($sp)" ^ "\n\t\t" ^
                            "SUB\t$t0, $t1, $t0" ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, 4" ^ "\n\t\t" ^
                            "SW\t$t0, 0($sp)"
  | Isubu               -> let lb = newLabel 5 in lb ^ 
                            "LW\t$t0, 0($sp)" ^ "\n\t\t" ^
                            "LW\t$t1, 4($sp)" ^ "\n\t\t" ^
                            "SUBU\t$t0, $t1, $t0" ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, 4" ^ "\n\t\t" ^
                            "SW\t$t0, 0($sp)"
  | Ibeq n              -> let lb = newLabel 4 in lb ^
                            "LW\t$t0, 0($sp)" ^ "\n\t\t" ^
                            "LW\t$t1, 4($sp)" ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, 8" ^ "\n\t\t" ^
                            "BEQ\t$t1, $t0, " ^ pLabel n
  | Ibne n              -> let lb = newLabel 4 in lb ^ 
                            "LW\t$t0, 0($sp)" ^ "\n\t\t" ^
                            "LW\t$t1, 4($sp)" ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, 8" ^ "\n\t\t" ^
                            "BNE\t$t1, $t0, " ^ pLabel n
  | Ible n              -> let lb = newLabel 5 in lb ^ 
                            "LW\t$t0, 0($sp)" ^ "\n\t\t" ^
                            "LW\t$t1, 4($sp)" ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, 8" ^ "\n\t\t" ^
                            "SUB\t$t0, $t0, $t1" ^ "\n\t\t" ^
                            "BGTZ\t$t0, " ^ pLabel n
  | Ibgt n              -> let lb = newLabel 5 in lb ^ 
                            "LW\t$t0, 0($sp)" ^ "\n\t\t" ^
                            "LW\t$t1, 4($sp)" ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, 8" ^ "\n\t\t" ^
                            "SUB\t$t0, $t1, $t0" ^ "\n\t\t" ^
                            "BGTZ\t$t0, " ^ pLabel n
  | Ihalt               -> let lb = newLabel 1 in lb ^ 
                            "B\t" ^ pLabel (Z.of_int (-1))
  
  (* New *)
  | Iimm (r, n)         -> let lb = newLabel 1 in lb ^ 
                            "LI\t" ^ of_reg r ^ ", " ^ Z.to_string n
  | Iload (r, id)       -> let lb = newLabel 1 in lb ^ 
                            "LW\t" ^ of_reg r ^ ", " ^ string_of_int ((id_to_int id)*4) ^ "($gp)"
  | Istore (r, id)      -> let lb = newLabel 2 in lb ^ 
                            "SW\t" ^ of_reg r ^ ", " ^ string_of_int ((id_to_int id)*4) ^ "($gp)"
  | Ipushr r            -> let lb = newLabel 3 in lb ^
                            "ADDI\t$sp, $sp, -4" ^ "\n\t\t" ^
                            "SW\t" ^ of_reg r ^ ", 0($sp)"
  | Ipopr r             -> let lb = newLabel 2 in lb ^ 
                            "LW\t" ^ of_reg r ^ ", 0($sp)" ^ "\n\t\t" ^
                            "ADDI\t$sp, $sp, 4"
  | Iaddr (r1, r2, r3)  -> let lb = newLabel 1 in lb ^ 
                            "ADD\t" ^ of_reg r3 ^ ", " ^ of_reg r1 ^ ", " ^ of_reg r2
  | Iaddur (r1, r2, r3) -> let lb = newLabel 1 in lb ^ 
                            "ADDU\t" ^ of_reg r3 ^ ", " ^ of_reg r1 ^ ", " ^ of_reg r2
  | Isubr (r1, r2, r3)  -> let lb = newLabel 1 in lb ^ 
                            "SUB\t" ^ of_reg r3 ^ ", " ^ of_reg r1 ^ ", " ^ of_reg r2
  | Isubur (r1, r2, r3) -> let lb = newLabel 1 in lb ^ 
                            "SUBU\t" ^ of_reg r3 ^ ", " ^ of_reg r1 ^ ", " ^ of_reg r2
  | Ibeqr (r1, r2, ofs) -> let lb = newLabel 1 in lb ^ 
                            "BEQ\t" ^ of_reg r1 ^ ", " ^ of_reg r2 ^ ", " ^ pLabel ofs
  | Ibner (r1, r2, ofs) -> let lb = newLabel 1 in lb ^ 
                            "BNE\t" ^ of_reg r1 ^ ", " ^ of_reg r2 ^ ", " ^ pLabel ofs
  | Ibler (r1, r2, ofs) -> let lb = newLabel 2 in lb ^ 
                            "SUB\t$t0, " ^ of_reg r2 ^ ", " ^ of_reg r1 ^ "\n\t\t" ^
                            "BGTZ\t$t0, " ^ pLabel ofs
  | Ibgtr (r1, r2, ofs) -> let lb = newLabel 2 in lb ^ 
                            "SUB\t$t0, " ^ of_reg r1 ^ ", " ^ of_reg r2 ^ "\n\t\t" ^
                            "BGTZ\t$t0, " ^ pLabel ofs
let rec of_code = function
  | [] -> ""
  | i :: il ->
    let instr = of_instr i in
    instr ^ "\n" ^ of_code il

let to_file name code = 
  labelCounter := 0;
  let f = open_out name in
  Printf.fprintf f "%s" (of_code code);
  close_out f;