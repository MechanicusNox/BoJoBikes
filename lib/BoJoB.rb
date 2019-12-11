
class DockingStation
  attr_reader :docked, :capacity

  def initialize(capacity = 20)
    @docked = Array.new
    @capacity = capacity
  end

  def release_bike
    if empty? == false
      @docked.pop
    else
      raise("No bike at station.")
    end
  end

  def dock_bike(bike)
    if full? != true
      @docked.push(bike)
    else
      raise("Station is full.")
    end
  end

  private

  def full?
    if @docked.count >= @capacity
      true
    else
      false
    end
  end

  def empty?
    if @docked.count != 0
      false
    else
      true
    end
  end

end

class Bike

  def working?
    true
  end

end
