open! Imports
open List

module M = struct
  (* Type to parse the input into *)
  type t = int list

  let explode (str : string) : char list = List.init (String.length str) ~f:(String.get str)
  let str_map (f : char -> int) (str : string) = map ~f (explode str)

  let parseItem (parens : char) : int =
    match parens with '(' -> 1 | ')' -> -1 | _ -> Stdlib.exit 0
  ;;

  (* Parse the input to type t, invoked for both parts *)
  let parse = str_map parseItem

  (* Run part 1 with parsed inputs *)
  let part1 str = Printf.sprintf "%d" (fold_left ~f:( + ) ~init:0 str)

  (* Run part 2 with parsed inputs *)
  let part2 _ = ""
end

include M
include Day.Make (M)
