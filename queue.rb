class Queue

  def initialize
    @queue = Array.new
  end

  def queue(value)
    if value != nil
      @queue.push(value)
    end
  end

  def dequeue
    @queue.shift
  end

  def print
    @queue.each do |node|
      puts node.value
    end
  end

  def empty?
    @queue.size == 0
  end
end
