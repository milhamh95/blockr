defmodule GroupTest do
  use ExUnit.Case

  setup do
    blocks =
      [
        Point.new(1,1),
        Point.new(2,1),
        Point.new(3,1),
        Point.new(4,1),
        Point.new(4,2)
      ]
      default_point = Point.new(5,3)
      {
        :ok,
        blocks: blocks,
        default_point: default_point
      }
  end

  test "Group Move down", %{blocks: blocks}  do
    expected_result = [
      Point.new(2,1),
      Point.new(3,1),
      Point.new(4,1),
      Point.new(5,1),
      Point.new(5,2)
    ]
    assert Group.move_down(blocks) == expected_result
  end

  test "default_point", %{default_point: default_point} do
    assert Point.new(5,3) == default_point
  end

  test "default_point 1", context do
    default_point = context.default_point
    assert Point.new(5,3) == default_point
  end

  test "Group Move Left", context do
    blocks = context.blocks
    expected_result = [
      Point.new(1,0),
      Point.new(2,0),
      Point.new(3,0),
      Point.new(4,0),
      Point.new(4,1)
    ]

    assert Group.move_left(blocks) == expected_result
  end

  test "Group Move Right", context do
    blocks = context.blocks
    expected_result = [
      Point.new(1,2),
      Point.new(2,2),
      Point.new(3,2),
      Point.new(4,2),
      Point.new(4,3)
    ]

    assert Group.move_right(blocks) == expected_result
  end

  test "Group swap", context do
    blocks = context.blocks

    expected_result = [
      Point.new(1,1),
      Point.new(1,2),
      Point.new(1,3),
      Point.new(1,4),
      Point.new(2,4)
    ]

    assert Group.swap(blocks) == expected_result
  end

  test "Group flip left right", context do
    blocks = context.blocks

    expected_result = [
      Point.new(1,4),
      Point.new(2,4),
      Point.new(3,4),
      Point.new(4,4),
      Point.new(4,3)
    ]
    assert Group.flip_left_right(blocks) == expected_result
  end

  test "Group flip top bottom", context do
    blocks = context.blocks

    expected_result = [
      Point.new(4,1),
      Point.new(3,1),
      Point.new(2,1),
      Point.new(1,1),
      Point.new(1,2)
    ]
    assert Group.flip_top_bottom(blocks) == expected_result
  end

  test "Rotate 0", context do
    blocks = context.blocks

    expected_result = [
      Point.new(1,1),
      Point.new(2,1),
      Point.new(3,1),
      Point.new(4,1),
      Point.new(4,2)
    ]
    assert Group.rotate(blocks, 0) == expected_result
  end

  test "Rotate 90", context do
    blocks = context.blocks

    expected_result = [
      Point.new(1,4),
      Point.new(1,3),
      Point.new(1,2),
      Point.new(1,1),
      Point.new(2,1)
    ]
    assert Group.rotate(blocks, 90) == expected_result
  end

  test "Rotate 180", context do
    blocks = context.blocks

    expected_result = [
      Point.new(4,4),
      Point.new(3,4),
      Point.new(2,4),
      Point.new(1,4),
      Point.new(1,3)
    ]
    assert Group.rotate(blocks, 180) == expected_result
  end

  test "Rotate 270", context do
    blocks = context.blocks

    expected_result = [
      Point.new(4,1),
      Point.new(4,2),
      Point.new(4,3),
      Point.new(4,4),
      Point.new(3,4)
    ]
    assert Group.rotate(blocks, 270) == expected_result
  end

end
