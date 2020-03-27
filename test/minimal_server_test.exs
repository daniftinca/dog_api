defmodule DoggosTest do
  use ExUnit.Case
  doctest Doggos

  test "greets the world" do
    assert Doggos.hello() == :world
  end
end
