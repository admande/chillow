require_relative "capacity"

class Apartment
  include Capacity

  attr_reader :address, :city_or_town, :zip_code, :rent, :lease_start_date, :lease_end_date
  attr_accessor :max_capacity, :capacity

  def initialize (address, city_or_town, zip_code, rent, lease_start_date, lease_end_date)
    @address = address
    @city_or_town = city_or_town
    @zip_code = zip_code
    @rent = rent
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @capacity = []
    @max_capacity = max_capacity
  end




end
