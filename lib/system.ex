# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.System do
  def test() do
    # https://hexdocs.pm/elixir/1.13/System.html
    IO.puts(System.os_time())
    IO.puts(System.monotonic_time())
    IO.puts(System.system_time())
    IO.inspect(System.build_info())
  end
end
