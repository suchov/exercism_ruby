class Isogram
  def self.isogram?(word)
    letters = word.downcase.scan(/[a-z]/i)
    letters.uniq == letters
  end
end