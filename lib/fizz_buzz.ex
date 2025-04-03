defmodule FizzBuzz do
  def build(file_name) do
    File.read(file_name) |> handle_file()
  end

  defp handle_file({:ok, result}) do
    String.split(result, ",")
    |> Enum.map(&convert_and_evaluate_numbers/1)
  end
  defp handle_file({:error, reason}), do: IO.puts "something is wrong #{reason}"

  def convert_and_evaluate_numbers(elem) do
   String.to_integer(elem)
   |> evaluate_numbers()
  end

  def evaluate_numbers(number) when rem(number,3) == 0 and rem(number, 5) == 0, do: :fizz_buzz
  def evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  def evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  def evaluate_numbers(number), do: number
end
