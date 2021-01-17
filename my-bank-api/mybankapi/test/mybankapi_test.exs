defmodule MybankapiTest do
  use ExUnit.Case
  doctest Mybankapi

  test "greets the world" do
    assert Mybankapi.hello() == :world
  end
end
