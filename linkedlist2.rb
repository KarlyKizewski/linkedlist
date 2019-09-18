class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(node, previous=nil)
  next_node = node.next_node
  node.next_node = previous
  reverse_list(next_node, node) unless next_node == nil
end

# nil <- node3 -> node2 -> node1 -> nil
# nil <- node3 node2-> node1 -> nil
# node3 -> node2 -> node1 -> nil

node1 = Node.new(37)
node2 = Node.new(99, node1)
node3 = Node.new(12, node2)

print_values(node3)

puts "- - - - - - -"

reverse_list(node3)
print_values(node1)


