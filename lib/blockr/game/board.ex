defmodule Blockr.Game.Board do
  defstruct [
    score: 0,
    tetro: nil, # you add this!
    walls: [], # you build this! by writing a function
    junkyard: []
  ]

  # random tetromino function:
  # new constructor new tetromino, in the midle of the top of the page

  # walls
  # donut (around the playing surface)
  # one point wide
  # {0,0} -> {21, 11}
end
