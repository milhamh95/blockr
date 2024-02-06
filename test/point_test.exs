defmodule PointTest do
  use ExUnit.Case

  test "Move Point Down" do
    assert Point.move_down({5,6}) == {6,6}
  end

  test "Move Point Left" do
    assert Point.move_left({5,6}) == {5,5}
  end

  test "Move Point Right" do
    assert Point.move_right({5,6}) == {5, 7}
  end

  test "New Point" do
    assert Point.new(1,1) == {1,1}
  end

  test "Swap Point" do
    assert Point.swap({1,3}) == {3, 1}
  end

  test "Flip left to right" do
    assert Point.flip_left_right({2,1}) == {2,4}
  end

  test "Flip top bottom" do
    assert Point.flip_top_bottom({1, 3}) == {4, 3}
  end

  test "rotate 0" do
    assert Point.rotate({1,3}, 0) == {1,3}
  end

  test "rotate 90" do
    assert Point.rotate({2,4}, 90) == {4,3}
  end

  test "rotate 180" do
    assert Point.rotate({2,4}, 180) == {3, 1}
  end

  test "rotate 270" do
    assert Point.rotate({2,4}, 270) == {1, 2}
  end

  test "rotate 360" do
      IO.inspect(Point.rotate({2,4}, 360))
    assert Point.rotate({2,4}, 360) == {2,4}
  end
end
