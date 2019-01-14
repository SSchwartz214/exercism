class Hexadecimal

  def initialize(character)
    @character = character 
  end

  def to_decimal
    if !@character[/\H/]
      @character.to_i(16)
    else
      0
    end
  end
end