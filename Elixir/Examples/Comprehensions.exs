defmodule ComprehensionFun do
  def getPrimeInRange(max) do
    for x <- 2..max, prime?(x), do: x
  end
  def prime?(2), do: true
  def prime?(n) do
    Enum.all?(2..n - 1, &(rem(n, &1)) > 0)
  end
end
