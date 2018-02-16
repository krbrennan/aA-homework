require 'pry'

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end

  private
  attr_accessor :queue

  #enqueue(el), dequeue, and show
  #make sure stack follows FIFO
end
