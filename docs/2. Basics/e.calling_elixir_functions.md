# Calling Elixir Functions

```
iex 

iex(10)> h Kernel
iex(11) -> exports Kernel

floor/1 -> 1 argument
floor/2 -> 2 arguments
```

- convention
    - modules: CamelCase
    - function: snake_case


```
iex(13)> floor 4.2
4
iex(14)> floor(42.4)
42

iex(15)> h Kernel.floor -> open documentation for "floor" function

def inspect(term, opts \\ []) -> opts = optional value, has default value []
```