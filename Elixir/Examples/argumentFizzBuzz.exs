argFizzBuzz = fn
  (0, 0, _) -> "Fizz Buzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, a) -> a
end

argFizzBuzz.(0, 0, 0) |> IO.puts
argFizzBuzz.(0, 1, 1) |> IO.puts
argFizzBuzz.(1, 0, 1) |> IO.puts
argFizzBuzz.(1, 1, 1) |> IO.puts

fizzBuzz = fn n -> argFizzBuzz.(rem(n, 3), rem(n, 5), n) end
fizzBuzz.(10) |> IO.puts
fizzBuzz.(11) |> IO.puts
fizzBuzz.(12) |> IO.puts
fizzBuzz.(13) |> IO.puts
fizzBuzz.(14) |> IO.puts
fizzBuzz.(15) |> IO.puts


prefix = fn prefix -> (fn name -> "#{prefix}#{name}" end) end

IO.puts(prefix.("Mr. ").("Anderson"))
