defmodule FizzBuzz do
  defp _determine(0, 0, _), do: "Fizz Buzz"
  defp _determine(0, _, _), do: "Fizz"
  defp _determine(_, 0, _), do: "Buzz"
  defp _determine(_, _, c), do: c
  def fizz(n) do
    _determine(rem(n, 3), rem(n, 5), n)
  end
end
