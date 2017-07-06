# As with all functional languages, recursion is the bread and butter of Elixir
# I included a map and reduce function too, but Elixir has built in ones, which would normally be used

defmodule Recursion do
  # Basic map function
  def map([], _func) do
    []
  end
  def map([ head | tail ], func) do
    [ func.(head) | map(tail, func) ]
  end

  # Basic reduce function
  def reduce([], initialValue, _func), do: initialValue
  def reduce([ head | tail ], initialValue, func) do
    reduce(tail, func.(initialValue, head), func)
  end

#  def filter([], _func), do: []
#  def filter([ head | tail ], func) when func.(head) do
#    [ head | filter(tail) ]
#  end
#  def filter([ _head | tail ], func) do
#    filter(tail)
#  end

  def sum(list), do: reduce(list, 0, &(&1 + &2))

  # Less efficient than summing as we recur through the list, but it utilizes our previously defined functions
  # It also allows the map portion of the function to be easily scaled
  def mapSum(list, func) do
    list
    |> map(func)
    |> sum
  end

  # Gets greatest number in list
  def max([ head | tail ]) do
    getGreatest = fn
      (a, b) when a > b -> a
      (_a, b)           -> b
    end
    reduce(tail, head, getGreatest)
  end

  # The | operator can have multiple values in the head to match
  # This one swaps elements
  def swapper([]), do: []
  def swapper([ a, b | tail ]), do: [ b, a | swapper(tail) ]
  def swapper([ a | tail ]),    do: [ a | swapper(tail) ] # For odd lists

  # Here we also recur down the head if it is also
  def flattenList([]), do: []
  def flattenList([ head | tail ]) when is_list(head) do
    flattenList(head) ++ flattenList(tail)
  end
  def flattenList([ head | tail ]) do
    [ head | flattenList(tail) ]
  end
end
