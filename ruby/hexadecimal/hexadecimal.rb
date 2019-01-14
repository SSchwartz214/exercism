class Hexadecimal

  def initialize(hexadecimal)
    @hexadecimal = hexadecimal 
  end

  def to_decimal
    if !@hexadecimal[/\H/]
      @hexadecimal.to_i(16)
    else
      0
    end
  end
end