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

  def count
    if empty?
      0
    else 
      count_node(head, 0)
    end
  end

  def count_node(node, counter)
    if node.tail?
      counter
    else
      count_node(node.next_node, counter +=1)
    end
  end

  def to_string
    current_node = head
    if @head != nil
      strings = []
      until current_node.next_node == nil
        strings << current_node.data
        current_node = current_node.next_node
      end
      strings.join(" ")
    else
      
    end
    # strings.join(" ")
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