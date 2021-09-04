defmodule RuneTest do
  use ExUnit.Case
  doctest Rune

  test "greets the world" do
    assert Rune.hello() == :world
  end
end
