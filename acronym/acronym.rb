class Acronym

  def self.abbreviate(abbrev)
    abbrev.scan(/\b\w/).join.upcase
  end

end