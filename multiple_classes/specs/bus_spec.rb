require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")
require_relative("../bus_stop")



class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("David", 25)
    @passenger2 = Person.new("Michael", 25)
    @group_of_passengers = [@passenger1, @passenger2]
    @bus_stop = BusStop.new("Princes Street")
    @bus_stop.add_person_to_queue(@passenger1)
    @bus_stop.add_person_to_queue(@passenger2)    
  end


  def test_drive
    assert_equal("Brum Brum", @bus.drive)
  end


  def test_how_many_passengers
    assert_equal(0, @bus.passengers.count())
  end


  def test_pick_up
    @bus.pick_up(@passenger1)
    assert_equal(1,@bus.passengers.count())
  end


  def test_drop_off
    @bus.pick_up(@passenger1)
    @bus.drop_off(@passenger1)
    assert_equal(0, @bus.passengers().count())
  end


  def test_empty_bus
    @bus.empty_bus
    assert_equal(0, @bus.passengers().count())
  end


  def test_pick_up_multiple_passengers
    @bus.pick_up_multiple_passengers(@group_of_passengers)
    assert_equal(2, @bus.passengers().count())
  end



  def test_add_queue_to_bus
  @bus.add_queue_to_bus(@bus_stop)
  assert_equal(0, @bus_stop.passengers.count())
  assert_equal(2, @bus.passengers.count())
  end


end
