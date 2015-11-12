require_relative "capacity"
require "pry"

class Truck
  include Capacity

  attr_reader :max_capacity
  attr_accessor :capacity

  def initialize (max_capacity)
    @max_capacity = max_capacity
    @capacity = []
  end

  def unload (unloader)
    capacity.delete_if {|box| box.box_owner == unloader}

  end
end
