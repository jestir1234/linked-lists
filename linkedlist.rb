require "byebug"
class LinkedList
  attr_accessor :list

  def initialize
    @list = []
    @head = nil
    @tail = nil
  end

  def append(value)
    @list << Node.new(value)
  end

  def prepend(value)
    @list.unshift(Node.new(value))
  end

  def size
    @list.length
  end

  def head
    @list.first.value
  end

  def tail
    @list.last.value
  end

  def index_of(el)
    @list.each_with_index {|node, i| return i if node.value == el}
    "nil"
  end

  def at(index)
    @list[index]
  end

  def pop
    @list.pop
  end

  def contains?(value)
    list_values.include?(value) ? true : false
  end

  def list_values
    result = @list.map { |node| node.value }
  end

  def find(data)
    @list.each_with_index { |node, i| return i if node.value == data }
  end

  def to_s
    result = []

    @list.each_with_index do |node, i|
      if i < @list.length
        result << "(#{node.value})" if !node.value.nil?
        result << "->"
        result << "nil" if @list[i + 1].nil?
      end
    end
    result.join(" ")
  end

  def insert_at(index, el)
    @list.insert(index, Node.new(el))
  end

  def remove_at(index)
    @list.delete_at(index)
  end


end

class Node
  attr_accessor :next_node, :value

  def initialize(value = nil)
    @next_node = nil
    @value = value
  end
end
