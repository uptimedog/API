# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule BasicsTest do
  use ExUnit.Case
  doctest Basics

  test "sum two integers" do
    assert Basics.sum(1, 2) == 3
  end
end
