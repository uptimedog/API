# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Floats do
  def test() do
    # 35.0
    IO.puts(Float.ceil(34.25))
    # 34.26
    IO.puts(Float.ceil(34.251, 2))

    # 12.51
    IO.puts(Float.floor(12.52, 2))
    # 34.0
    IO.puts(Float.floor(34.25))

    x = Float.parse("34")
    # {34.0, ""}
    IO.puts("#{inspect(x)}")

    y = Float.parse("56.5xyz")
    # {56.5, "xyz"}
    IO.puts("#{inspect(y)}")

    z = Float.parse("pi")
    # :error
    IO.puts("#{inspect(z)}")

    # 1.0
    IO.puts(Float.pow(2.0, 0))
    # 4.0
    IO.puts(Float.pow(2.0, 2))

    # 5.567
    IO.puts(Float.round(5.5675, 3))
    # "7.0"
    IO.puts(Float.to_string(7.0))
  end
end
