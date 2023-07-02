include Base
include Stdio

let print_endline_int i = print_endline (Int.to_string i)

module String = struct
  include String
end

let time f =
  let before = Unix.gettimeofday () in
  let result = f () in
  let after = Unix.gettimeofday () in
  print_endline (Printf.sprintf "%f" (after -. before));
  result
;;
