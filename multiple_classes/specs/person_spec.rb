require("minitest/autorun")
require("minitest/rg")
require_relative("../person")

class TestPerson < MiniTest::Test

  def setup
    @person = Person.new("David", 25)
  end





end
