defmodule Times do
  def double(v) do
    v * 2
  end

  def double(v, 2) do
    v * 2
  end

  def triple(v), do: v * 2
  def quadruple(v), do: double(double(v))
end
