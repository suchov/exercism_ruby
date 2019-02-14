class Isogram
  def self.isogram?(word)
    word.gsub(/[- ]/, '').downcase.chars.uniq == word.gsub(/[- ]/, '').downcase.chars
  end
end