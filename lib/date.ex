# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Date do
  def test() do
    # https://hexdocs.pm/elixir/Date.html
    d = ~D[2022-10-29]
    IO.puts(d.year)
    IO.puts(d.month)
    IO.puts(d.day)

    IO.puts(Enum.min([~D[2022-10-29], ~D[2022-10-20]], Date))

    IO.puts(Date.diff(~D[2022-10-29], ~D[2022-10-28]))
    IO.puts(Date.add(~D[2022-10-29], 1))
    IO.puts(Date.day_of_year(~D[2016-01-01]))
    IO.puts(Date.days_in_month(~D[2016-01-01]))

    IO.puts(Date.compare(~D[2022-10-01], ~D[2022-10-01]))
    IO.puts(Date.compare(~D[2022-10-01], ~D[2022-10-02]))
    IO.puts(Date.compare(~D[2022-10-03], ~D[2022-10-02]))
    IO.puts(Date.end_of_month(~D[2000-01-01]))

    IO.puts(Date.to_string(~D[2000-02-28]))
  end
end
