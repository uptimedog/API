# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.Encoding do
  def test() do
    x = Base.encode16("-_ x _-")
    y = Base.encode32("-_ y _-")
    z = Base.encode64("-_ z _-")
    p = Base.hex_encode32("-_ p _-")

    {:ok, g} = Base.decode16(x)
    {:ok, h} = Base.decode32(y)
    {:ok, j} = Base.decode64(z)
    {:ok, u} = Base.hex_decode32(p)

    "#{g} / #{h} / #{j} / #{u}"
  end
end
