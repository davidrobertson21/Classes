require("minitest/autorun")
require("minitest/rg")
require_relative("../wand")

class TestWand < MiniTest::Test

  def setup
    @elder_wand = Wand.new("holly", "phoenix feather")
  end


  def test_wand_get_wood
    assert_equal("holly", @elder_wand.wood)
  end

  def test_wand_get_core
    assert_equal("phoenix feather", @elder_wand.core)
  end
  

end
