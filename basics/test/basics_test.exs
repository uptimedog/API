defmodule BasicsTest do
  use ExUnit.Case
  doctest Basics

  test "greets the world" do
    assert Basics.hello() == :world
  end

  test "sum method" do
    assert Basics.sum(1, 2) == 3
  end
end
