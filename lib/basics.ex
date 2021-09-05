# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Basics do
  @moduledoc """
  The basics module
  """

  @doc """
  Sum two integers

  ## Parameters
  	- x: The first integer
  	- y: The second integer

  ## Returns
  	The sum of the two integers
  """
  @spec sum(integer(), integer()) :: integer()
  def sum(x, y) do
    x + y
  end

  @spec minus(integer(), integer()) :: integer()
  def minus(x, y) do
    x - y
  end

  @spec multi(integer(), integer()) :: integer()
  def multi(x, y) do
    x * y
  end

  @spec divi(integer(), integer()) :: integer()
  def divi(x, y) when y != 0 do
    div(x, y)
  end

  def rest() do
    x = 2 + 23
    y = 34 * 4 / 3
    z = 3 - 23

    IO.puts("#{x} #{y} #{z}")

    # division
    IO.puts(div(100, 4))
    # division
    IO.puts(div(100, 4))
    # remainder
    IO.puts(rem(100, 4))

    IO.puts("Hello, World")
    IO.puts(1 + 3)

    out = fn str1 ->
      fn str2 ->
        "#{str1} #{str2}"
      end
    end

    IO.puts(out.("Hello").("World"))

    # Integer
    # x = 3

    # String
    # y = "Hello"

    # Floats
    # z = 3.14
    # Floats
    # v = 1.0e-10

    # Booleans
    # k = true
    # Atoms
    # j = :foo
    # Atoms
    # p = :bar

    # j == p

    # :foo == :foo

    # The booleans true and false are also the atoms :true and :false, respectively.
    # true
    # is_atom(true)
    # true
    # is_boolean(true)
    # true
    # true === true

    # String Concatenation
    # "Hello" <> "World"

    # name = "Sean"

    # "Hello Sean"
    # "Hello " <> name
    # "Hello Sean"
    # "Hello #{name}"

    # false
    # 1 > 2
    # true
    # 1 != 2
    # true
    # 2 == 2
    # true
    # 2 <= 3
    # true
    # 2 == 2.0
    # false
    # 2 === 2.0
  end
end
