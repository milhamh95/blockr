# Elixir Base Datatypes

## Atoms

```
:this_is_atom
// use snake case and lower case

or
CamelCase.WithDotsBetween
// use camel case

type `i`
```

## Number

- integer
- float

```
iex(12)> 1_000_000

iex(13)> i
Term
  1000000
Data type
  Integer
Reference modules
  Integer
Implemented protocols
  IEx.Info, Inspect, List.Chars, String.Chars

// binary number
iex(15)> 0b00001111
15

iex(16)> {1, :one, "one"}
{1, :one, "one"}

// select tuple element by index
iex(21)> elem({:austin, :tx}, 0)
:austin

// map
iex(25)> %{:one => 1, :two => 2}
%{one: 1, two: 2}
iex(26)> %{:one => 1, :two => 2} == %{one: 1, two: 2} 
true

//unicode
iex(27)> ?a
97

iex(28)> <<?a, ?b>>
"ab"
iex(29)> i
Term
  "ab"
Data type
  BitString
Byte size
  2
Description
  This is a string: a UTF-8 encoded binary. It's printed surrounded by
  "double quotes" because all UTF-8 encoded code points in it are printable.
Raw representation
  <<97, 98>> -> bit string
Reference modules
  String, :binary
Implemented protocols
  Collectable, IEx.Info, Inspect, List.Chars, String.Chars
iex(30)> 

iex(30)> String.duplicate("d", 4)
"dddd"
iex(31)> "dddd"
"dddd"
iex(32)> <<?d, ?d, ?d, ?d>>
"dddd"

iex(33)> [?a, ?b, ?c]
'abc'
iex(34)> 'abc' == "abc"
false
1st -> list
2nd -> binary

iex(35)> list = [1,2,3]
[1, 2, 3]
iex(36)> fun = &to_string/1
#Function<42.3316493/1 in :erl_eval.expr/6>
iex(37)> Enum.map(list, fun)
["1", "2", "3"]
```