class Acronym

  def self.abbreviate(abbrev)
    result = ""
    abbrev.gsub(/\w+/) do |word|
      result += "#{word[0]}"
    end
    result.upcase
  end

end