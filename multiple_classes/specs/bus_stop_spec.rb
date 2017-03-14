require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")
require_relative("../person")
require_relative("../bus")



class TestBusStop < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Princes Street")
    @passenger1 = Person.new("David", 25)
    @passenger2 = Person.new("Derek", 24)
    @passenger3 = Person.new("Daniel", 23)
    @passenger4 = Person.new("Dylan", 22)
    @passenger5 = Person.new("Danny", 21)
    @bus_stop_queue = [@passenger1, @passenger2, @passenger3, @passenger4, @passenger5]
  end


def test_add_person_to_queue
  @bus_stop.add_person_to_queue(@passenger1)
  assert_equal(1, @bus_stop.passengers.count())
end


end