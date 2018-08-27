defmodule Bob do
  def hey(input) do
    cond do
      silence?(input) ->
        "Fine. Be that way!"

      shouting?(input) && question?(input) ->
        "Calm down, I know what I'm doing!"

      question?(input) ->
        "Sure."

      shouting?(input) ->
        "Whoa, chill out!"

      true ->
        "Whatever."
    end
  end

  defp question?(string) do
    String.ends_with?(string, "?")
  end

  defp shouting?(string) do
    String.downcase(string) != string && String.upcase(string) == string
  end

  defp silence?(string) do
    String.trim(string) == ""
  end
end
