class Element
  attr_reader :next
  attr_reader :node_value

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

class SimpleLinkedList

  def initialize
    @head = nil
    @list = []
  end

  def push(element)
    @list << element
    @head = @list.first
    return self
  end

  def pop
    @list.pop
  end

  def to_a
    Array.new << @list.first.node_value
  
  end
end