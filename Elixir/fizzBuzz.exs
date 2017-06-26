defmodule FizzBuzz do
  def determine(a, b, c) do
    fn
      (0, 0, _) -> "Fizz Buzz"
      (0, _, _) -> "Fizz"
      (_, 0, _) -> "Buzz"
      (_, _, c) -> c
    end
  end

  def fizz(n) do
    fn n -> FizzBuzz.determine(rem(n, 3), rem(n, 5), n) end
  end
end

FizzBuzz.fizz(10) |> IO.puts
