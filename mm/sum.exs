defmodule Sum do
  def sum(n) do
    if (n == 0), do: n, else: n + sum(n - 1)
  end

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end
