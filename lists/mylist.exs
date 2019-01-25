defmodule MyList do
  def sum([]), do: 0
  def sum([a | b]) do
    a + sum(b)
  end

  def map([], _fnc), do: []
  def map([head | tail], fnc) do
    [fnc.(head)] ++ map(tail, fnc)
  end

  def max([a]), do: a
  def max([a, b | tail]) do
    max([(if a > b, do: a, else: b) | tail])
  end
end
