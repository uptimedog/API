# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Functions do
  def hello(message \\ "Hello World") do
    IO.puts(phello(message))
  end

  defp phello(message) do
    IO.puts(message)
  end

  def test() do
    # anonymous functions
    sum = fn a, b -> a + b end
    IO.puts(sum.(2, 3))

    # the & shorthand
    sum = &(&1 + &2)
    IO.puts(sum.(2, 3))

    # pattern matching
    handle_result = fn
      {:ok, result} -> IO.inspect(result)
      {:error, message} -> IO.inspect(message)
    end

    handle_result.({:ok, "hello world"})
    handle_result.({:error, "something bad going on"})

    # functions and pattern matching
    out = fn %{name: person_name} -> IO.puts("Hello #{person_name}!") end
    out.(%{name: "Joe"})
    pm(%{name: "Joe"})
  end

  def pm(%{name: person_name} = person) do
    IO.puts("Hello, " <> person_name <> "!")
    IO.inspect(person)
  end
end
