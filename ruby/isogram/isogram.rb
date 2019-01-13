class Isogram

  def self.isogram?(letters)
    letters_without_special_chars = letters.downcase.scan(/[a-z]/)   

    letters_without_special_chars == letters_without_special_chars.uniq 
  end
end

