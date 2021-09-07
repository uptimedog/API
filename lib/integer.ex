# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Integer do
  import Integer

  def test() do
    # true
    IO.puts(is_even(10))
    # true
    IO.puts(is_odd(3))

    # [1, 2, 3]
    x = Integer.digits(123)
    IO.puts("#{inspect(x)}")

    # "123"
    IO.puts(Integer.to_string(123))
    # "456"
    IO.puts(Integer.to_string(+456))
    # "-789"
    IO.puts(Integer.to_string(-789))
    # 1238
    IO.puts(Integer.undigits([1, 2, 3, 4]))

    # 1
    IO.puts(Integer.pow(2, 0))
    # 4
    IO.puts(Integer.pow(2, 2))
  end
end
