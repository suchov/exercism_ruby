class Isogram
  def self.isogram?(word)
    gsub_word = word.gsub(/[- ]/, '').downcase.chars
    gsub_word.uniq == gsub_word
  end
end