# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Maps do
  def test() do
    x = %{:name => "joe", :age => "four"}
    y = %{x | :name => "sam"}
    z = %{name: "joe", age: 15}

    IO.puts("#{inspect(y)}")
    IO.puts("#{inspect(z)}")

    # Keyword List
    # [primary: "red", secondary: "green"]
    colors = [{:primary, "red"}, {:secondary, "green"}]
    IO.puts("#{colors[:primary]}")
    IO.puts("#{colors[:secondary]}")

    # map_size(x) # 2
    # Map.filter(x, fn {k, _v} -> k == :age end)
    # Map.get(x, :age)
    # Map.get(x, :ag, "default")
    # Map.has_key?(x, :ag) # false
    # Map.has_key?(x, :age) # true
  end

  def where(klist) do
    # Rune.Maps.where where: true == true, where: false == false # [where: true, where: true]
    IO.puts("#{inspect(klist)}")
  end
end
