class Nucleotide
  DNA_NUCLEOTIDES = 'ATCG'.freeze
  DNA_PATTERN = /\A[ATCG]+\z/

  def initialize(dna_string)
    check_valid_dna! dna_string
    @dna = dna_string
  end

  def self.from_dna(dna_string)
    new dna_string
  end

  def count(nucleotide)
    @dna.count nucleotide
  end

  def histogram
    count = DNA_NUCLEOTIDES.chars.map { |n| [n, 0] }.to_h # pre 2.6
    @dna.each_char { |n| count[n] += 1 }
    count
  end

  class InvalidNucleotideError < ArgumentError
    def initialize(msg = 'DNA contains one or more invalid nucleotides!')
      super msg
    end
  end

  private

  def check_valid_dna!(dna)
    return if dna.empty? # spec allows empty string
    raise InvalidNucleotideError unless DNA_PATTERN.match dna
  end
end