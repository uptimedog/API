# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Bounce do
  def report do
    IO.puts("Bounce Process Started")

    receive do
      msg ->
        IO.puts("Received #{inspect(msg)}")
        report()
    end
  end
end

defmodule Rune.Process do
  def test do
    pid = spawn(Rune.Bounce, :report, [])
    send(pid, "hey")
    pid
  end
end

defmodule Rune.ProcessUtil do
  def info(pid) do
    pid
    |> Process.info()
  end

  def alive?(pid) do
    pid
    |> Process.alive?()
  end
end

# pid = Rune.Process.test
# Rune.ProcessUtil.info(pid)
# Rune.ProcessUtil.alive?(pid)
