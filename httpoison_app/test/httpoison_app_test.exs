defmodule HttpoisonAppTest do
  use ExUnit.Case
  doctest HttpoisonApp

  test "greets the world" do
    assert HttpoisonApp.hello() == :world
  end
end
