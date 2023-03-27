require "./lib/node"

class LinkedList
  attr_reader :head, :counter
  attr_accessor :head
  def initialize
    @head = nil
    @counter = 0
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else 
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    return data
    
  end

  def prepend(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = Node.new(data)
      current_node.next_node = @head
      @head = current_node
    end
    return data
  end

  def insert(index, data)
    node = Node.new(data)
    next_node = node_at(head, index)
    node_at(head, index - 1).next_node = node
    node.next_node = next_node
    return node.data
  end

  def node_at(node, index, counter = 0)
    if index == counter
      node_at(node.next_node, index, counter += 1)
    end
    return node
  end

  def count
    current_node = head
    if current_node == nil
      count = 0
    else
      count = 1
      while current_node.next_node != nil
        current_node = current_node.next_node
        count += 1
      end
      count
    end
  end
  
  def to_string
    current_node = head
    # if @head != nil
    strings = []
    # while current_node.next_node != nil
    until current_node == nil
      strings << current_node.data
      current_node = current_node.next_node
    end
    strings.join(" ")
    # end
  end
  
  def empty?
    head.nil?
  end
  
  def last_node(node)
    if node.tail?
      node
    else
      last_node(node.next_node)
    end
  end
  
  def new_node(node)
    Node.new(node)
  end
  
end
# def count
#   if empty?
#     0
#   else 
#     count_node(head, 0)
#   end
# end

# def count_node(node, counter)
#   if node.tail?
#     counter
#   else
#     count_node(node.next_node, counter +=1)
#   end
# end