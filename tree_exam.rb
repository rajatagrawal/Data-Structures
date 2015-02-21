class Node
  attr_accessor :value, :left, :right

  def initialize(value=nil)
    @value = value
  end
end


def make_bst(values)
  return nil if values.empty?
  root = Node.new(values.shift)
  values.each do |value|
    node = Node.new(value)
    bst_insert_node_under(root, node )
  end
  root
end

def bst_insert_node_under(root, node)
  current_node = root
  value = node.value
  while(true)
    if value <= current_node.value
      if current_node.left != nil
        current_node = current_node.left
      else
        current_node.left = node
        return
      end
    elsif value > current_node.value
      if current_node.right != nil
        current_node = current_node.right
      else
        current_node.right = node
        return
      end
    end
  end
end

def in_order_traversal(node)
  if node != nil
    print(node.left)
    p "#{node.value}"
    in(node.right)
  end
end

size = gets.to_i
values = gets.split.map(&:to_i)
in_order_traversal(make_bst(values))


