class Isogram

  def self.isogram?(input)
    sanitized_word = sanitize_word(input)   

    sanitized_word == sanitized_word.uniq 
  end

  private

  def self.sanitize_word(word)
    word.downcase.scan(/[a-zA-Z]/)
  end
end

