class Trinary

  def initialize(num)
    @num = num
  end

  def to_decimal
    if @num.delete('012') == ''
      @reversed_num = @num.to_i.digits
    else 
      return 0
    end

    all_numbers = @reversed_num.map.with_index do |num, index|
      num * 3 ** index
    end
    all_numbers.sum
  end
end