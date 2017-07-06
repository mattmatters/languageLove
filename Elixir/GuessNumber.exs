# Some of this is shamelessly stolen from Dave Thomas' example
# But it is a cool example at pattern matching ranges
defmodule NumGuesser do
  def guess(actual, low..high) do
    _guess(actual, div(low + high, 2), low..high)
  end
  defp _guess(actual, actual, _) do
    actual
  end
  defp _guess(actual, guess, low.._) when  guess > actual do
    guess(actual, low..guess - 1)
  end
  defp _guess(actual, guess, _..high) when  guess < actual do
    guess(actual, guess + 1..high)
  end
end
