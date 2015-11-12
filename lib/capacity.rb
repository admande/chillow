module Capacity
  attr_reader :max_capacity
  attr_accessor :capacity


  def full?
    if @capacity.nil?
      false
    else
      if @max_capacity == @capacity.size
        true
      else
        false
      end
    end
  end

  def add (object)
    if !full?
      @capacity << object
    end
  end

  def remove
    @capacity.pop
  end
end
