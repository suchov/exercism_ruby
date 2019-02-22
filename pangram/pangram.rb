class Pangram
  def self.pangram?(sentence)
    # unless sentence.chomp.empty?
    #   sentence.chomp!
    #   sentence.downcase!
    #   ('a'..'z').each do |l|
    #     if sentence.index(l).nil?
    #       return false
    #     end
    #   end
    # end
    ([*'a'..'z'] - sentence.downcase.chars).empty?
  end
end