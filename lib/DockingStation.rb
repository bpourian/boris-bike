class DockingStation
  attr_reader :bikes

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
    bikes.count >= 20
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
