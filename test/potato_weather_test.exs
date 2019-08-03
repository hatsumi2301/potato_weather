defmodule PotatoWeatherTest do
  use ExUnit.Case
  doctest PotatoWeather

  test "greets the world" do
    assert PotatoWeather.hello() == :world
  end
end
