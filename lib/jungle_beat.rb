require "./lib/linked_list"
require "./lib/node"

class JungleBeat
  attr_reader :list, :count
  def initialize
    @list = LinkedList.new
    @count = list.count
  end

  def append(data)
    nodes = data.split(" ")
    nodes.each do |node|
      list.append(node)
    end
    return data
  end

  def count
    list.count
  end

end

