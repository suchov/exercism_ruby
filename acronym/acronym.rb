class Acronym

  def self.abbreviate(abbrev)
    abbrev.upcase.scan(/\b\w/).join
  end

end