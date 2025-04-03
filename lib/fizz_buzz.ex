defmodule FizzBuzz do
  def build(file_name), do: File.read(file_name) |> handle_file()

  defp handle_file({:ok, result}) do
    list =
    String.split(result, ",")
    |> Enum.map(&convert_and_evaluate_numbers/1)
    {:ok, list}
  end

  defp handle_file({:error, reason}), do: {:error, "Error reading the file: #{reason}"}

  defp convert_and_evaluate_numbers(elem) do
   String.to_integer(elem)
   |> evaluate_numbers()
  end

  defp evaluate_numbers(number) when rem(number,3) == 0 and rem(number, 5) == 0, do: :fizz_buzz
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  defp evaluate_numbers(number), do: number
end
