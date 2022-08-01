# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.EnumAdding do
  def plus_three(x) do
    x + 3
  end
end

defmodule Rune.Enum do
  def test() do
    # Docs https://elixirschool.com/en/lessons/basics/enum

    # Validate if any value return true from the callback
    Enum.any?(["foo", "bar", "", "hello"], fn s -> String.length(s) > 0 end)

    # Validate if all values return true from the callback
    Enum.all?(["foo", "bar", "", "hello"], fn s -> String.length(s) > 0 end)

    # Execute a function for each list element
    Enum.each([1, 2, 3, 4], fn x -> IO.puts(x) end)

    # Update each element of a list
    Enum.map([1, 2, 3, 4], fn x -> x * x end)
    Enum.map([1, 2, 3, 4], &(&1 * &1))
    Enum.map([1, 2, 3, 4], &Rune.EnumAdding.plus_three(&1))

    # Get min value of a list
    Enum.min([1, 2, 3, 4])

    # Get max value of a list
    Enum.max([1, 2, 3, 4])

    # Get unique items
    Enum.uniq([1, 1, 3, 2, 4, 5, 5])

    # Sort asc
    Enum.sort([2, 4, 1, 9], :asc)

    # Sort desc
    Enum.sort([2, 4, 1, 9], :desc)

    # Filter list values based on condition
    Enum.filter([1, 2, 3, 4, 5, 6], fn x -> rem(x, 2) == 0 end)

    # Split list into two
    Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)

    Enum.module_info()
  end
end
