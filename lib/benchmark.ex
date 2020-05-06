defmodule WithIndex.Benchmark do
  def with_index_for_list do
    with_index("List")
  end

  def with_index_for_map do
    with_index("Map")
  end

  def with_index_for_mapset do
    with_index("MapSet")
  end

  def with_index_for_range do
    with_index("Range")
  end

  def with_index_for_stream do
    with_index("Stream")
  end

  defp with_index(type) do
    # Takes a range / range, current number
    gen =
      case type do
        "List" -> fn r -> Enum.to_list(r) end
        "Map" -> fn r -> Map.new(r, &{&1, &1}) end
        "MapSet" -> fn r -> MapSet.new(r) end
        "Range" -> fn r -> r end
        "Stream" -> fn r, curr -> r |> Stream.cycle() |> Stream.take(curr) end
      end

    Benchee.run(
      %{
        enum: &Enum.with_index/1,
        updated_with_index: &WithIndex.with_index/1
      },
      inputs:
        [1, 5, 10, 50, 100, 500, 1000, 5_000, 10_000, 50_000, 100_000, 500_000, 1_000_000]
        |> Enum.with_index()
        |> Enum.reduce(%{}, fn {curr, i}, acc ->
          r = 1..curr

          # List A of 1000
          key = "#{type} #{<<65 + i>>} of #{curr}"

          value =
            case type do
              "Stream" -> gen.(r, curr)
              _ -> gen.(r)
            end

          Map.put(acc, key, value)
        end),
      memory_time: 2
    )

    ""
  end
end
