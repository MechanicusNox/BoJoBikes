
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

  def dock_bike(bike, works = true)
    if full? != true
      bike.change_status(works) if bike.working? != works
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
    @docked.empty?
  end

end

class Bike

  def initialize
    @functioning = true
  end

  def working?
    @functioning
  end

  def change_status(works)
    @functioning = works
  end

end
