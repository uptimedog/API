# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.URI do
  def parse(url) do
    uri = URI.parse(url)
    URI.to_string(uri)
  end

  def get_uri_01(url) do
    {status, uri} = URI.new(url)

    case status do
      :ok -> {:ok, uri}
      :error -> {:error, ""}
    end
  end

  def get_uri_02(url) do
    try do
      {:ok, URI.new!(url)}
    rescue
      _ -> {:error, ""}
    end
  end
end
