class Element
  attr_reader :next

  def initialize(num)
    @node_value = num
  end

  def datum
    @node_value
  end

  def next=(element)
    @next = element
  end

end