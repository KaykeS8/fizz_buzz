defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_resonse =  {:ok,[1, 2, :fizz, 4, :buzz, :buzz, :fizz_buzz, :buzz]}
      assert FizzBuzz.build("numbers.txt") == expected_resonse
    end

    test "when a invalid file is provided, returns an error" do
      expected_resonse = {:error, "Error reading the file: enoent"}
      assert FizzBuzz.build("invalid.txt") == expected_resonse
    end
  end
end
