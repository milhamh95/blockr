defmodule Group do
  def move_down(points) do
    points
  end

  def move_left(points) do
    points
  end

  @spec move_right({any(), number()}) :: {any(), number()}
  def move_right(points) do
    points
  end

  def swap(points) do
    points
  end

  def flip_left_right(points) do
    points
  end

  def flip_top_bottom(points) do
    points
  end

  def rotate(point, 0) do
    point
  end

  def rotate(points, 90) do
    points
  end

  def rotate(points, 180) do
    points
  end

  def rotate(points, 270) do
    points
  end

  def rotate(points, 360) do
    points
  end
end
