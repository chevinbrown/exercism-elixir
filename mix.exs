defmodule Excercism.Mixfile do
  use Mix.Project

  @version "0.8.0"

  def project do
    [
      app: :elixir_excercism,
      version: @version,
      elixir: "~> 1.0",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "excercism",
      description: "Katas for elixir",
      package: [
        maintainers: ["Kevin Brown"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/chevinbrown"},
        files: ~w(LICENCE README.md lib mix.exs)
      ]
    ]
  end

  def application do
    [mod: {Excercism, []}, applications: [:elixir_excercism]]
  end

  defp deps do
    [{:mix_test_watch, "~> 0.8", only: :dev}]
  end
end
