class Isogram

  def self.isogram?(input)
    sanitized_word = sanitize_word(input)
    word_array = split_word(sanitized_word)
    
    if word_array == word_array.uniq
      return true
    end
  end

  private

  def self.sanitize_word(word)
    no_hyphens = word.delete('-')
    no_hyphens.delete(' ')
  end

  def self.split_word(string)
    string.downcase.chars
  end
end

