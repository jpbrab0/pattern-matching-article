defmodule PatternMatchingArticleTest do
  use ExUnit.Case
  doctest PatternMatchingArticle

  test "greets the world" do
    assert PatternMatchingArticle.hello() == :world
  end
end
