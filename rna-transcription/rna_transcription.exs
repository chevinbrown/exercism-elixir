defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> Enum.map(&rna_from_char/1)
    |> Enum.concat
  end

  def rna_from_dna(dna) do
    case dna do
    ?G -> 'C'
    ?C -> 'G'
    ?T -> 'A'
    ?A -> 'U'
    end
  end
end
