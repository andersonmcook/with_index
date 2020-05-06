defmodule WithIndex do
  @moduledoc """
  Documentation for `WithIndex`.
  """

  import Enum, only: [to_list: 1]

  def with_index(enumerable, offset \\ 0) do
    enumerable
    |> to_list()
    |> do_with_index(offset)
  end

  defp do_with_index([], _) do
    []
  end

  defp do_with_index([head | tail], index) do
    [{head, index} | do_with_index(tail, index + 1)]
  end
end
