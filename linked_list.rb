require_relative 'node'

class LinkedList

  attr_accessor :head

  def initialize
    @head = nil
  end

  def add_to_end(value)
    if @head.nil?
      @head = Node.new(value)
    else
      node = @head
      while node.next != nil do
        node = node.next
      end
      node.next = Node.new(value)
    end
  end

  def add_in_beginning(value)
    new_node = Node.new(value)
    new_node.next = @head
    @head = new_node
  end

  def traverse
    current_node = @head
    while current_node != nil
      puts "Node is #{current_node.value}"
      current_node = current_node.next
    end
  end
end
