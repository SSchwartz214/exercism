class Acronym

  def self.abbreviate(string)
    string.scan(/\b\w/).flatten.join.upcase
  end
end
