require './lib/stack'
require './lib/queue'

stack = Stack.new

puts stack.push(1).inspect
puts stack.push(23).inspect
puts stack.push(15).inspect

puts stack.pop.inspect
puts stack.pop.inspect

queue = Queue.new

puts queue.push(1).inspect
puts queue.push(23).inspect
puts queue.push(15).inspect

puts queue.pop.inspect
puts queue.pop.inspect