class Binary

  def self.to_decimal(num)
    if num.delete('01') == ''
      digits = num.to_i.digits
      sum = 0

      digits.each_with_index do |num, index|
        sum += num.to_i * (2 ** index)
      end
      sum
    else
      raise ArgumentError
    end
  end
  
end