module type S = sig
  val run : string -> string * string
end

module type Impl = sig
  type t

  val parse : string -> t
  val part1 : t -> string
  val part2 : t -> string
end

module Make (Impl : Impl) : S = struct
  let run inputs =
    let parsed = Impl.parse inputs in
    let p1 = Impl.part1 parsed in
    let p2 = Impl.part2 parsed in
    p1, p2
  ;;
end
