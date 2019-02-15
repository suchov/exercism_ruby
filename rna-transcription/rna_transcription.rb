class Complement
  def self.of_dna(dna)
   dna.tr('GCTA', 'CGAU')
 end
end

#  def self.of_dna(dna)
#    raise ArgumentError, 'Incorrect nucleotide' if dna.include? 'U'
#    dna.tr('GCTA', 'CGAU')
#  end