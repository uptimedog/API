# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule RuneTest do
  use ExUnit.Case
  doctest Rune

  test "greets the world" do
    assert Rune.hello() == :world
  end
end
