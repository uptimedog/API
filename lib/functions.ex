# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Functions do
  def hello(message \\ "Hello World") do
    IO.puts(message)
  end
end
