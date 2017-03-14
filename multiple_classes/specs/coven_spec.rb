require("minitest/autorun")
require("minitest/rg")
require_relative("../wizard")
require_relative("../wand")
require_relative("../coven")

class TestCoven < MiniTest::Test

  def setup
    @broken_wand = Wand.new("oak", "unicorn hair")
    @elder_wand = Wand.new("holly", "phoenix feather")
    @ron = Wizard.new("Ron Weasley", @broken_wand)
    @dumbledore = Wizard.new("Albus Dumbledore", @elder_wand)
    members = [@ron, @dumbledore]
    @coven = Coven.new(members)


  end


def test_coven_has_wizards
  assert_equal(2, @coven.members.length)
end



def test_cast_same_spell
  assert_equal(["stupor", "stupor"], @coven.cast_same_spell("stupor"))
end

def test_cast_same_spells_numbers
  assert_equal(2, @coven.cast_spells_numbers("stupor").length())
end

def test_coven_can_cast_super_spell
  last_spell_cast = @coven.cast_same_spell("stupor").last()
  assert_equal("stupor!!!", @coven.cast_same_spell)
end

end
