defmodule TetrominoTest do
  use ExUnit.Case

  setup do
    tetro = Tetromino.new()
    {
      :ok,
      tetro: tetro
    }
  end

  test "move left", context do
    tetro = context.tetro

    expected_tetro = %Tetromino{
      location: {0,-1}
    }

    assert Tetromino.left(tetro) == expected_tetro
  end

  test "move right", context do
    tetro = context.tetro

    expected_tetro = %Tetromino{
      location: {0,1}
    }

    assert Tetromino.right(tetro) == expected_tetro
  end

  test "fall", context do
    tetro = context.tetro

    expected_tetro = %Tetromino{
      location: {1,0}
    }

    assert Tetromino.fall(tetro) == expected_tetro
  end

  test "rotate right 90", context do
    tetro = context.tetro

    expected_tetro = %Tetromino{
      rotation: 90
    }

    assert Tetromino.rotate_right_90(tetro) == expected_tetro
  end
end
