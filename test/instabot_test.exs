defmodule InstabotTest do
  use ExUnit.Case
  doctest Instabot

  test "greets the world" do
    assert Instabot.hello() == :world
  end
end
