# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Int do
  require Integer

  def test() do
    # https://hexdocs.pm/elixir/1.13/Integer.html

    IO.puts(Integer.is_even(12))
    IO.puts(Integer.is_odd(11))

    IO.puts(parse("23.4"))
    IO.puts(parse("h3"))
    IO.puts(parse("98"))
  end

  def parse(x) do
    case Integer.parse(x) do
      :error -> 0
      {value, _} -> value
    end
  end
end
