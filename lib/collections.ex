# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Collections do
  def test() do
    a = [3.14, :pie, "hello"]

    # loop through a list
    for x <- a do
      IO.puts("x = #{x}")
    end

    b = [1]

    # list concatenation
    c = a ++ b

    # inspect a list
    IO.puts("c = #{inspect(c)}")

    # list subtraction
    d = a -- b

    # inspect a list
    IO.puts("d = #{inspect(d)}")

    e = [1] -- [1]

    # inspect a list
    IO.puts("d = #{inspect(e)}")

    f = [1.0] -- [1]

    # inspect a list
    IO.puts("d = #{inspect(f)}")

    g = [1, 1, 2, 2, 3, 3] -- [1, 2, 3]

    # inspect a list
    IO.puts("g = #{inspect(g)}")

    # head and tail
    h = hd([1, 2, 3])
    i = tl([1, 2, 3])

    # inspect a list
    IO.puts("h = #{inspect(h)}")
    IO.puts("i = #{inspect(i)}")

    [j | k] = [1, 2, 3]

    # inspect a list
    IO.puts("j = #{inspect(j)}")
    IO.puts("k = #{inspect(k)}")

    # tuples
    l = {:ok, "success message"}
    m = {:err, "failure message"}

    case l do
      {:ok, msg} -> IO.puts("l is success: #{msg}")
      {:err, msg} -> IO.puts("l is failure: #{msg}")
      _ -> IO.puts("l is invalid")
    end

    case m do
      {:ok, msg} -> IO.puts("m is success: #{msg}")
      {:err, msg} -> IO.puts("m is failure: #{msg}")
      _ -> IO.puts("lmis invalid")
    end

    f = File.read("basics.ex")

    IO.puts("f = #{inspect(f)}")

    case f do
      {:ok, content} -> IO.puts(content)
      {:error, code} -> IO.puts("Error code #{code}")
    end

    f = File.read("/etc/hosts")

    IO.puts("f = #{inspect(f)}")

    case f do
      {:ok, content} -> IO.puts(content)
      {:error, code} -> IO.puts("Error code #{code}")
    end

    # keyword lists
    p = [foo: "hello", bar: "world"]
    q = [{:foo, "hello"}, {:bar, "world1"}, {:bar, "world2"}]

    IO.puts("p = #{inspect(p)}")
    IO.puts("q = #{inspect(q)}")
    IO.puts("#{p[:foo]}")
    IO.puts("#{q[:bar]}")

    for x <- p do
      case x do
        {k, v} -> IO.puts("#{inspect(k)} = #{v}")
      end
    end

    for x <- q do
      case x do
        {k, v} -> IO.puts("#{inspect(k)} = #{v}")
      end
    end
  end
end
