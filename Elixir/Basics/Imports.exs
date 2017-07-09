defmodule ImportExample do
  import List, only: [ flatten: 1 ] # import specific functions

  def func do
    List.flatten [ 1, [ 2, 3 ], 4 ]
  end
  def func2 do
    flatten [ 5, 6, [ 7, 8 ] ]
  end
end
