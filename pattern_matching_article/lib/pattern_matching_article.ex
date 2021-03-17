defmodule PatternMatchingArticle do
  def call(list) do

  end

  defp count_length([], count), do: count

  defp count_length([_head | tail], count) do
    count = count + 1

    count_length(tail, count)
  end
end
