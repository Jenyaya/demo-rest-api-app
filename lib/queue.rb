
  class Queue
    #FIFO

    def initialize
      @queue = []
    end

    def pop
      @queue.shift
      return @queue
    end

    def push(data)
      @queue.push data
      return @queue
    end

    def clean
      @queue = []
    end

    def queue
      @queue
    end

end