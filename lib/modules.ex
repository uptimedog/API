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

defmodule Rune.Drop do
  import :math, only: [sqrt: 1]

  def fall_velocity({planemo, distance}) when distance >= 0 do
    fall_velocity(planemo, distance)
  end

  defp fall_velocity(:earth, distance) do
    sqrt(2 * 9.8 * distance)
  end

  defp fall_velocity(:moon, distance) do
    sqrt(2 * 1.6 * distance)
  end

  defp fall_velocity(:mars, distance) do
    sqrt(2 * 3.71 * distance)
  end
end

# Rune.Drop.fall_velocity({:mars, 22})    # 12.776541002947551
# Rune.Drop.fall_velocity({:earth, 22})   # 20.765355763867856
# Rune.Drop.fall_velocity({:moon, 22})    # 8.390470785361213

defmodule Rune.Animal do
  defstruct name: nil, age: nil
end

defprotocol Rune.Talk do
  def talk(t)
end

defimpl Rune.Talk, for: Rune.Animal do
  def talk(t = %Rune.Animal{:name => name, :age => age}) do
    IO.puts("#{name} animal has #{age} years")
    IO.puts("#{t.name} animal has #{t.age} years")
  end
end

# a = %Rune.Animal{name: "Joe", age: 390}
# Rune.Talk.talk(a)

defmodule Rune.Basics do
  def sum(x, y) do
    x + y
  end

  defp mult(x, y) do
    x * y
  end
end

# Rune.Basics.sum(1, 2) # returns 3

defmodule Rune.Solution do
  def any?(a, b, c, d) do
    a or b or c or d
  end

  def truthy?(a, b) do
    a && b
  end
end

# Rune.Solution.any?(true, false, true, false)
# Rune.Solution.truthy?(true, true)
# Rune.Solution.truthy?(true, false)

defmodule Rune.Example do
  def greeting(name) do
    "Hello #{name}."
  end
end

# Rune.Example.greeting "Sean"  # "Hello Sean."

defmodule Rune.Example.Greetings do
  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}."
  end
end

# Rune.Example.Greetings.morning "Sean"  # "Good morning Sean."

defmodule Rune.Example do
  @greeting "Hello"

  def greeting(name) do
    "#{@greeting} #{name}"
  end
end

# Rune.Example.greeting "Sean"  # "Hello Sean"
