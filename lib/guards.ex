# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Guards do
  # Custom Guards
  defguard is_even(x) when is_integer(x) and rem(x, 2) == 0

  def inspect_map(x) when is_map(x) and map_size(x) > 0 do
    "x = #{inspect(x)}"
  end

  def non_zero(y) when y > 0 or y < 0 do
    "y = #{inspect(y)}"
  end

  def test_1({:ok, value}) when value > 0 do
    "value = #{inspect(value)}"
  end

  # Usage of a custom guard
  def test_2(y) when is_even(y) do
    "y = #{inspect(y)}"
  end
end
