open! Base
open! Stdio
open Aoc

let args = Sys.get_argv ()
let day = args.(1)
let input_file = Printf.sprintf "inputs/%s.txt" day
let file = In_channel.create input_file
let inputs = In_channel.input_all file

let part1, part2 =
  match day with
  | "1" -> Day1.run inputs
  | "2" -> Day2.run inputs
  | "3" -> Day3.run inputs
  | _ -> failwith "invalid day"
;;

printf "Part 1: %s\nPart 2: %s\n" part1 part2

let () = In_channel.close file
