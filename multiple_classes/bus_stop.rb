class BusStop

  attr_reader :name, :passengers

  def initialize(name)
    @name = name
    @passengers = []
  end

  def add_person_to_queue(passenger)
    @passengers << passenger
  end

end