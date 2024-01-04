defmodule Tetromino do
  defstruct [
    name: :i,
    location: {1,3},
    rotation: 0,
    color: :green
  ]

  def new() do
    %__MODULE__{}
  end

  def left(tetro) do
    %{tetro | location: Point.move_left(tetro.location)}
  end

  def right(tetro) do
    tetro
  end

  def fall(tetro) do
    tetro
  end

  def rotate_right_90(tetro) do
    tetro
  end
end

# t: ***
#     *

# l: *
#    *
#    **

# j:  *
#     *
#    **

# i: *
#    *
#    *
#    *

# o: **
#    **

# s:  **
#    **

# z: **
#     **
