defmodule ProteinTranslation do
  @doc """
  Given an RNA string, return a list of proteins specified by codons, in order.
  """
  @spec of_rna(String.t()) :: {atom, list(String.t())}
  def of_rna(rna) do
    {h, t} = String.split_at(rna, 3)
    [z | rna] = of_codon(h)
  end

  def of_codon(codon) do
    cond do
      codon == "AUG" -> {:ok, "Methionine"}
      codon == "UGU" -> {:ok, "Cysteine"}
      codon == "UGC" -> {:ok, "Cysteine"}
      codon == "UUA" -> {:ok, "Leucine"}
      codon == "UUG" -> {:ok, "Leucine"}
      codon == "AUG" -> {:ok, "Methionine"}
      codon == "UUU" -> {:ok, "Phenylalanine"}
      codon == "UUC" -> {:ok, "Phenylalanine"}
      codon == "UCU" -> {:ok, "Serine"}
      codon == "UCC" -> {:ok, "Serine"}
      codon == "UCA" -> {:ok, "Serine"}
      codon == "UCG" -> {:ok, "Serine"}
      codon == "UGG" -> {:ok, "Tryptophan"}
      codon == "UAU" -> {:ok, "Tyrosine"}
      codon == "UAC" -> {:ok, "Tyrosine"}
      codon == "UAA" -> {:ok, "STOP"}
      codon == "UAG" -> {:ok, "STOP"}
      codon == "UGA" -> {:ok, "STOP"}
    end
  end

  defp match(rna) do
  end

  @doc """
  Given a codon, return the corresponding protein

  UGU -> Cysteine
  UGC -> Cysteine
  UUA -> Leucine
  UUG -> Leucine
  AUG -> Methionine
  UUU -> Phenylalanine
  UUC -> Phenylalanine
  UCU -> Serine
  UCC -> Serine
  UCA -> Serine
  UCG -> Serine
  UGG -> Tryptophan
  UAU -> Tyrosine
  UAC -> Tyrosine
  UAA -> STOP
  UAG -> STOP
  UGA -> STOP
  """
  @spec of_codon(String.t()) :: {atom, String.t()}
  def of_codon(codon) do
  end
end
