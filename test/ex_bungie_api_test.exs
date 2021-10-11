defmodule ExBungieApiTest do
  use ExUnit.Case
  doctest ExBungieApi

  test "greets the world" do
    assert ExBungieApi.hello() == :world
  end
end
