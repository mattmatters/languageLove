defmodule RaiseError do
  def ok!({:ok, data}), do: data
  def ok!(data), do: raise("Error, #{data} did not return :ok")
end
