defmodule BurgersTest do
  use ExUnit.Case
  doctest Burgers

  test "greets the world" do
    assert Burgers.hello() == :world
  end
end
