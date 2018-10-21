(* Copyright Per Lindgren 2016-2018, see the file "LICENSE" *)
(* for the full license governing this code.                *)

(* cimp/Options *)

open Common

type options =
  {
    mutable infile:      string;
    mutable outfile:     string;
    mutable verbose:     bool;
    mutable debug:       bool;
    mutable d_ast:       bool;
    mutable d_past:      bool;
    mutable d_code:      bool;
    mutable d_pcode:     bool;
    mutable imp_ex:      bool;
    mutable vm_ex:       bool;
    mutable reg:         bool;
    mutable opt_ast:     bool;
  }

let opt =
  {
    infile    = "";
    outfile   = "";
    verbose   = false;
    debug     = false;
    d_ast     = false;
    d_past    = false;
    d_code    = false;
    d_pcode   = false;
    imp_ex    = false;
    vm_ex     = false;
    reg       = false;
    opt_ast   = false;
  }

let string_of_opt opt =
  "cimp options:" ^ nl ^
  "infile       : " ^ opt.infile ^ nl ^
  "outfile      : " ^ opt.outfile ^ nl ^
  "verbose      : " ^ string_of_bool opt.verbose ^ nl ^
  "debug        : " ^ string_of_bool opt.debug ^ nl ^
  "d_ast        : " ^ string_of_bool opt.d_ast ^ nl ^
  "d_past       : " ^ string_of_bool opt.d_past ^ nl ^
  "d_code       : " ^ string_of_bool opt.d_code ^ nl ^
  "d_pcode      : " ^ string_of_bool opt.d_pcode ^ nl ^
  "imp_ex       : " ^ string_of_bool opt.imp_ex ^ nl ^
  "vm_ex        : " ^ string_of_bool opt.vm_ex ^ nl ^
  "reg          : " ^ string_of_bool opt.reg ^ nl ^
  "opt_ast      : " ^ string_of_bool opt.opt_ast ^ nl
