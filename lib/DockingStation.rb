class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'NO BIKE AVAILABLE' if bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'DOCK IS FULL' if bikes.count >= 20
    @bikes << bike
  end

  def bike
    bikes
  end

end



class Bike

  def working?
    true
  end

end
