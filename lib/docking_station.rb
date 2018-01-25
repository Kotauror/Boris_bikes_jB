class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity)
    @bikes = []
    @capacity = capacity

  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private

  attr_reader :bikes

  def full?
    if @bikes.count >= capacity
      true
    end
  end

  def empty?
    if @bikes.empty?
      true
    end
  end

end
