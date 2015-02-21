require 'queue.rb'
require 'stack.rb'

class Node
  attr_accessor :value, :left, :right

  def initialize(value=nil)
    @value = value
    @value_at_max_depth = nil
  end
end

class Tree
  attr_accessor :root

  def pre_order_traversal
    current_node = @root
    if current_node.nil?
      return
    end

    stack = Stack.new
    stack.push current_node
    while stack.empty? == false
      node = stack.pop
      puts node.value
      stack.push node.right
      stack.push node.left
    end
  end

  def print(current_node=@root)
    if current_node != nil
      print(current_node.left)
      puts "#{current_node.value}"
      print(current_node.right)
    end
  end

  def height(current_node = @root)
    if current_node.nil?
      0
    else
      1 + [height(current_node.left), height(current_node.right)].max
    end
  end

  def node_at_height_depth
    current_node = @root
    max_height = height(current_node)
    node_value = nil
    if current_node.nil?
      return nil
    else
      current_height = height(current_node)
      if current_height - max_height != max_height
        max_height = height
        node_value = current_node.value

      end
    end
  end

  def level_order_traversal
    current_node = @root
    queue_1 = Queue.new
    queue_2 = Queue.new
    if current_node.nil?
      return
    end

    queue_1.queue(current_node)
    while(queue_1.empty? == false )
      pop_values(queue_1, queue_2)
      pop_values(queue_2, queue_1)
    end
    puts "the right most value at greatest depth #{@value_at_max_depth}"
  end

  def pop_values(queue_1, queue_2)
    while(queue_1.empty? == false)
      node = queue_1.dequeue
      puts node.value
      @value_at_max_depth = node.value
      queue_2.queue(node.left)
      queue_2.queue(node.right)
    end
  end

  def insert(value)
    if @root.nil?
      @root = Node.new(value)
      @root.left = nil
      @root.right = nil
    else
      current_node = @root
      while(true)
        if value <= current_node.value
          if current_node.left != nil
            current_node = current_node.left
          else
            current_node.left = Node.new(value)
            return
          end
        elsif value > current_node.value
          if current_node.right != nil
            current_node = current_node.right
          else
            current_node.right = Node.new(value)
            return
          end
        end
      end
    end
  end
end
