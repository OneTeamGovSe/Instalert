defmodule Instabot.MixProject do
  use Mix.Project

  def project do
    [
      app: :instabot,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpotion]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpotion, "~> 3.1.1"},
      {:poison, "~> 4.0.1"},
      {:mogrify, "~> 0.7.2"}
    ]
  end
end
