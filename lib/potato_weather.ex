defmodule PotatoWeather do
  @moduledoc """
  Documentation for PotatoWeather.
  """

  @doc """
  Hello world.

  ## Examples

      iex> PotatoWeather.hello()
      :world

  """
  def hello do
    IO.inspect(Elasticsearch.get(ElasticSearch.ElasticSearchCluster, "/_cat/health"))
  end
end
