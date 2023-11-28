# Elixir Bindings

```
iex

iex(1)> x = 1
1
iex(2)> x = 2
2
iex(3)> x
2

There are 2 value x in memory, because it's immutable

iex(5)> show = fn -> x end
#Function<43.3316493/0 in :erl_eval.expr/6>

iex(6)> show.()
2
iex(7)> x = 42
42
iex(8)> show.()
2
```

- variables -> labels to existing memory address
- memory address will never changes -> immutability