# You can define a module as your object with containing methods
defmodule Times do
  def double(n) do
    n * 2
  end
  def triple(n) do
    n * 3
  end
  def quadruple(n) do
    n
    |> Times.double
    |> Times.double
  end
end

# Elixir again uses pattern matching to call functions
# I can define a function multiple times and it will try to match in the order
# of definement to fine the appropriate condition
defmodule Factorial do
  def of(0), do: 1 # another way to write a function block, use () for multi line ones
  def of(n) when n > 0 do # when serves as guarding for parameters
    n * of(n - 1)
  end
end

defmodule SumToOne do
  def sum(1), do: 1
  def sum(n) when n > 0 do
    n + sum(n - 1)
  end
end

defmodule CommonFactor do
  def gcd(x, 0), do: x
  def gcd(x, y), do: CommonFactor.gcd(y, rem(x, y))
end

# Use the param \\ value notation for default parameters
defmodule DefaultParams do
  def func(a \\ 1, b \\ 2, c \\ 3, d \\ 4) do
    IO.inspect [ a, b , c, d ]
  end
end

defmodule DefaultParamsRedux do
  # for pattern matching on default params declare the default without a function body
  def func (p1, p2 \\ 12)
  def func (p1, p2) when is_list(p1) do
    "You said #{p2} with a list"
  end
  def func (p1, p2) do
    "You said #{p1} and #{p2}"
  end
end
