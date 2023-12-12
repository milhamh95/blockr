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

end
