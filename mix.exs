defmodule ExBungieApi.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :ex_bungie_api,
      version: @version,
      elixir: "~> 1.12",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      source_url: "https://github.com/requestben/ex_bungie_api",
      homepage_url: "https://github.com/requestben/ex_bungie_api",
      description: description(),
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp docs do
    [extras: ["README.md"]]
  end

  defp description do
    "Elixir support for Bungie.net API"
  end


  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:finch, "~> 0.8"},
      {:jason, "~> 1.2"},
      {:credo, "~> 1.5.6"},
      {:ex_doc, "~> 0.25.3"},
      {:dialyxir, "~> 1.1"}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE.md"],
      maintainers: ["Ben Martin"],
      licenses: ["MIT"],
      links: %{GitHub: "https://github.com/requestben/ex_bungie_api"}
    ]
  end
end
