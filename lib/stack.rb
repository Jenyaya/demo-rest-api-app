require "sinatra/base"

class Stack
#LIFO
  def initialize
    @stack = []
  end

  def pop
    @stack.pop
    return @stack
  end

  def push(data)
    @stack.push(data)
    return @stack
  end

  def clean
    @stack = []
  end

  def stack
    @stack
  end

end
