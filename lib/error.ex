# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule CustomError do
  defexception message: "Something goes wrong"
end

defmodule Rune.Errors do
  def test(x) do
    if x > 0 do
      :valid
    else
      raise CustomError
    end
  end

  def test_1(x) do
    try do
      test(x)
    rescue
      e in CustomError -> IO.puts("Custom Error: #{e.message}")
      e -> IO.puts("Error: #{e.message}")
    end

    try do
      raise CustomError, message: "oh!"
    rescue
      e -> IO.puts("Error: #{e.message}")
    end

    try do
      raise "Oh no!"
    rescue
      e in RuntimeError -> IO.puts("An error occurred: " <> e.message)
    after
      IO.puts("The end!")
    end
  end
end
