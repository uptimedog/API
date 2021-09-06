# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Greeter do
  @spec hello(String.t()) :: String.t()
  def hello(name \\ "World") do
    "Hello #{name}"
  end
end

defmodule Rune.Farewell do
  @spec farewell(String.t()) :: String.t()
  def farewell(name \\ "World") do
    "Hello #{name}"
  end
end

defmodule Rune.Greet do
  @spec greet(String.t()) :: String.t()
  def greet(name \\ "World") do
    "Hello #{name}"
  end
end

defmodule Rune.Modules do
  alias Rune.{Greeter, Farewell}
  alias Rune.Greet, as: Greet

  def test() do
    x = Greeter.hello("World")
    y = Farewell.farewell("World")
    z = Greet.greet("World")

    "#{x} & #{y} & #{z}"
  end
end
