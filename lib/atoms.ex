# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Atoms do
  def test(x \\ :ok, y \\ :"he llo") do
    if is_atom(x) do
      IO.puts(Atom.to_string(x))
    end

    if is_atom(y) do
      IO.puts(Atom.to_charlist(y))
    end

    # true
    IO.puts(:f == :f)
    # false
    IO.puts(:f == :g)
    # true
    IO.puts(is_atom(:df))
    # false
    IO.puts(is_atom("sf"))
    # true
    IO.puts(is_boolean(false))
    # true
    IO.puts(is_boolean(true))
    # false
    IO.puts(is_boolean("sf"))
  end
end
