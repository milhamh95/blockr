defmodule PtrTest do
  use ExUnit.Case

  setup do
    common_variable = :common_value
    {:ok, common_variable: common_variable}
  end

  setup context do
    if context[:custom_setup] do
      tagged_variable = :tagged_value
      {:ok, tagged_variable: tagged_variable}
    else
      :ok
    end
  end

  @tag custom_setup: true
  test "test with tagged setup", context do
    common_variable = context.common_variable
    tagged_variable = context.tagged_variable

    assert common_variable == :common_value
    assert tagged_variable == :tagged_value
  end

  test "test without tagged setup", context do
    common_variable = context.common_variable

    assert common_variable == :common_value
  end
end
