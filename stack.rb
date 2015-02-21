class Stack

  def initialize
    @stack = Array.new
  end

  def push(value)
    unless value.nil?
      @stack.push(value)
    end
  end

  def peek
    @stack.last
  end

  def pop
    @stack.pop
  end

  def empty?
    @stack.size == 0
  end
end
