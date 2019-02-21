class Acronym

  def self.abbreviate(abbrev)
    result = ""
    abbrev.gsub(/\w+/){|w| result += "#{w[0]}"}
    result.upcase
  end

end