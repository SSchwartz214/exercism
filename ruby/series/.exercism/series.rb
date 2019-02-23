class Series
  attr_reader :number

  def initialize(num)
    @number = num
  end

  def slices(n)
    raise ArgumentError if n > number.length

    number
      .chars
      .each_cons(n)
      .map(&:join) 
  end  
end