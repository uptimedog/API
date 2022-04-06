# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Maps do
  def test() do
    # Docs https://hexdocs.pm/elixir/main/Map.html
    x = %{:name => "joe", :age => "four"}
    y = %{x | :name => "sam"}
    z = %{name: "joe", age: 15}

    IO.puts("#{inspect(y)}")
    IO.puts("#{inspect(z)}")
    IO.puts("#{z[:name]}")

    # Keyword List
    # [primary: "red", secondary: "green"]
    colors = [{:primary, "red"}, {:secondary, "green"}]
    IO.puts("#{colors[:primary]}")
    IO.puts("#{colors[:secondary]}")

    # map size
    IO.puts map_size(x)

    # map filter
    z = Map.filter(x, fn {k, _v} -> k == :age end)
    IO.puts("#{z[:age]}")

    # get value by a key
    IO.puts Map.get(x, :age)

    # get a value by key
    IO.puts Map.get(x, :ag, "default")

    # check if a key exist
    IO.puts Map.has_key?(x, :ag) # false

    IO.puts Map.has_key?(x, :age) # true

    case Map.fetch(%{a: 1}, :e) do
      {:ok, val} -> IO.puts val
      :error -> IO.puts "not found"
    end

    case Map.fetch(%{a: 1}, :a) do
      {:ok, val} -> IO.puts val
      :error -> IO.puts "not found"
    end

    Map.module_info
  end
end
