class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number.to_i
    @destination = destination
    @passengers = []
  end



def drive
  return "Brum Brum"
end



def pick_up(passenger)
  @passengers << passenger
end


def drop_off(passenger)
  @passengers.delete(passenger)
end


def empty_bus()
  @passengers.clear()
end


def pick_up_multiple_passengers(waiting_passengers)
  for passenger in waiting_passengers
    pick_up(passenger)
  end
end


def add_queue_to_bus(bus_stop)

  for person in bus_stop.passengers
    @passengers << person
  end
    bus_stop.passengers.clear
end


end
