defmodule Blockr.Game.Board do
  defstruct [
    score: 0,
    tetro: nil, # you add this!
    walls: [], # you build this! by writing a function
    junkyard: []
  ]

  alias Blockr.Game.Tetromino

  def new(opts \\ []) do
    __struct__(opts)
    |> initialize_tetro
    |> add_walls()
  end

  def initialize_tetro(board) do
    random_name =
      [:s, :z, :l, :i, :o, :t]
      |> Enum.random()

    %{board|tetro: Tetromino.new(name: random_name, location: {0, 3})}
  end

  defp add_walls(board) do
    walls =
      for row <- 0..21, col <- 0..11,
        (row in [0, 21]) or (col in [0,11])
      do
        {row, col}
      end

      %{board | walls: walls}
  end

  # random tetromino function:
  # new constructor new tetromino, in the midle of the top of the page

  # walls
  # donut (around the playing surface)
  # one point wide
  # {0,0} -> {21, 11}
end
