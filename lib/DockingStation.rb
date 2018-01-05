class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'NO BIKE AVAILABLE' if empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'DOCK IS FULL' if full?
    @bikes << bike
  end

  def bike
    bikes
  end

private
  def full?
    bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    bikes.empty?
  end

end



class Bike

  def working?
   true
  end

end
