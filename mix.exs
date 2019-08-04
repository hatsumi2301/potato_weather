defmodule PotatoWeather.MixProject do
  use Mix.Project

  def project do
    [
      app: :potato_weather,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {PotatoWeather.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:elasticsearch, "~> 1.0.0"},
      {:ecto, "~> 3.1"},
      {:poison, "~> 4.0"}
    ]
  end
end
