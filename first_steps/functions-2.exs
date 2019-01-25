sm = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, _, _) -> "Buzz"
end

IO.puts sm.(0, 0, "dave")
IO.puts sm.(0, "dave", "onion")
IO.puts sm.("pickler", "dave", "onion")

blah = fn (n) -> sm.(rem(n, 3), rem(n, 5), n) end

IO.puts blah.(10)
IO.puts blah.(11)
IO.puts blah.(12)
IO.puts blah.(13)
IO.puts blah.(14)
