# Given a single stranded DNA string, compute how many times each nucleotide
# occurs in the string.
class Nucleotide
  attr_reader :dna

  INVALID_DNA = /[^ATCG]/.freeze

  def initialize
    @dna = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
  end

  def self.from_dna(dna_string = '')
    dna_string.upcase!
    raise ArgumentError if dna_string =~ INVALID_DNA

    dna_string
      .chars
      .each_with_object(new) { |nuc, new_dna| new_dna.dna[nuc] += 1 }
  end

  def count(nucleotide = '')
    dna[nucleotide.upcase]
  end

  def histogram
    dna
  end
end