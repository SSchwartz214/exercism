class Isogram

  def self.isogram?(input)
   sanitized_word = sanitize_word(input)
   word_array = split_word(sanitized_word)
   container = []

    word_array.each do |letter|
      if !container.include?(letter)
        container << letter
      else
        return false
      end
    end
  end

  def self.sanitize_word(word)
    no_hyphens = word.delete('-')
    no_hyphens.delete(' ')
  end

  def self.split_word(string)
    string.downcase.chars
  end
end

