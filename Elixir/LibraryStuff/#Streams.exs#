# Streams are lazy loading enumerables fantastic for when you don't need the whole collection
defmodule StreamFun do
  def squareGenerator(), do: 1..100_000_000_000 |> Stream.map(&(&1 * &1))
  def fibonacciStream() do
    { 0, 1 }
    |> Stream.unfold(fn { f1, f2 } -> { f1, { f2, f1 + f2 } } end)
  end
end
