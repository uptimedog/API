# Copyright 2022 Clivern. All rights reserved.
# Use of this source code is governed by the MIT
# license that can be found in the LICENSE file.

defmodule Rune.URI do
  def parse(url \\ "https://clivern.com") do
    uri = URI.parse(url)
    URI.to_string(uri)
  end

  def get_uri_01(url \\ "https://clivern.com") do
    {status, uri} = URI.new(url)

    case status do
      :ok -> {:ok, uri}
      :error -> {:error, ""}
    end
  end

  def get_uri_02(url \\ "https://clivern.com") do
    try do
      {:ok, URI.new!(url)}
    rescue
      _ -> {:error, ""}
    end
  end

  def query(uri \\ "foo=1&bar=2") do
    URI.query_decoder(uri) |> Enum.to_list()
  end

  def port(protocol \\ "ftp") do
    URI.default_port(protocol)
  end
end
