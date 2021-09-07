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
  end
end
