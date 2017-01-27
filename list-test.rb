require_relative "linkedlist"

list = LinkedList.new

puts "Testing Linked List...."
puts "-----------------------"

list.append("t")
list.append(4)
list.append(1)
list.append("g")
list.append("test")

puts ("Append test: #{list.to_s}")

list.prepend("start")

puts ("Prepend test: #{list.to_s}")
puts ("List size: #{list.size}")
puts ("List head: #{list.head}")
puts ("List tail: #{list.tail}")
puts ("List contains 4? #{list.contains?(4)}")
puts ("List contains -1? #{list.contains?(-1)}")
puts ("List index of 'g': #{list.index_of("g")}")
puts ("List index of 'abc': #{list.index_of('abc')}")
puts "Insert at 6 (-5):"
list.insert_at(6, -5)
puts list.to_s
puts "List pop test:"
list.pop
puts list.to_s
puts "Remove at 5:"
list.remove_at(5)
puts list.to_s
