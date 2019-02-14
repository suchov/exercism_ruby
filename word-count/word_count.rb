require 'enumerator'
class Phrase
  def initialize(phrase)
    @words = phrase.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    @words.group_by(&:itself).transform_values(&:count)
  end
end