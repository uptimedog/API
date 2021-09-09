# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Man do
  defstruct name: nil, age: nil
end

defmodule Rune.Struct do
  def out(m = %Rune.Man{name: name, age: age}) do
    IO.puts("#{name} has age of #{age}")
    IO.puts("#{m.name} has age of #{m.age}")
  end
end
