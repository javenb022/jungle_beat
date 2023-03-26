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
      current_node = @head                   # assign current node as the head
      until current_node.next_node == nil
        current_node = current_node.next_node             # until the current nodes, next_node is nil, do the followin
      end
      current_node.next_node = Node.new(data)                        # make current node the head
    end                                         # current_node.next_node = Node.new(data)
    return data
                                     # shows list.append("doop") as "doop"
  end

  def count
   if @head == nil
    @counter = 0
   elsif @head != nil
    until @next_node == nil
      @counter += 1
      break
    end
   end

    # until @next_node == nil
    #   @counter += 1
    # break
    # end
    # @counter
  end

  def to_string
    "#{list.data}"
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
  # def empty?
  #   if self.head == nil
  #     true
  #   else
  #     false
  #   end
  # end
end