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
    %{tetro | location: Point.move_right(tetro.location)}
  end

  def fall(tetro) do
    %{tetro | location: Point.move_down(tetro.location)}
  end

  def rotate_right_90(%{rotation: 270}=tetro) do
    %{tetro | rotation: 0}
  end

  def rotate_right_90(tetro) do
    %{tetro | rotation: rem(tetro.rotation + 90, 360)}
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
