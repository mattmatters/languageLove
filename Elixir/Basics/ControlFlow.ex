# Elixir offers the traditional suite of control structures, the Elixir way of doing things though
# is to pattern match if possible, but you can fall back on other control structures

# Pattern Matching
defmodule FizzBuzzPatternMatch do
  def fizzBuzz(n) when n > 0 do
    1..n
    |> Enum.map(&(_determine(&1, rem(&1, 3), rem(&1, 5))))
  end
  defp _determine(_, 0, 0), do: "FizzBuzz"
  defp _determine(_, 0, _), do: "Fizz"
  defp _determine(_, _, 0), do: "Buzz"
  defp _determine(n, _, _), do: n
end


# Cases
defmodule FizzBuzzCase do
  def fizzBuzz(n) when n > 0 do
    1..n
    |> Enum.map(&determine/1)
  end
  def determine(n) do
    case n do
      n when rem(n, 3) == 0 and rem(n, 5) == 0 -> "FizzBuzz"
      n when rem(n, 3) == 0 -> "Fizz"
      n when rem(n, 5) == 0 -> "Buzz"
      n -> n # case form of a default
    end
  end
end


# Conditionals
defmodule FizzBuzzCond do
  def fizzBuzz(n) when n > 0 do
    1..n
    |> Enum.map(&determine/1)
  end
  def determine(n) do
    cond do
      rem(n, 3) == 0 and rem(n, 5) == 0 -> "FizzBuzz"
      rem(n, 3) == 0 -> "Fizz"
      rem(n, 5) == 0 -> "Buzz"
      true -> n # conditional form of a default
    end
  end
end
