require("minitest/autorun")
require("minitest/rg")
require_relative("../wizard")
require_relative("../wand")


class TestWizard < MiniTest::Test


def setup
  @broken_wand = Wand.new("oak", "unicorn hair")
  @elder_wand = Wand.new("holly", "phoenix feather")
  @ron = Wizard.new("Ron Weasley", @broken_wand)
  @dumbledore = Wizard.new("Albus Dumbledore", @elder_wand)
end



def test_wizard_has_name
  assert_equal("Ron Weasley", @ron.name())
end


def test_wizard_can_cast_spell
  spell_name = "stupor"
  assert_equal("stupor", @ron.cast_spell("stupor"))
end


def test_wizard_can_cast_with_elder_wand
  assert_equal("STUPOR", @dumbledore.cast_spell("stupor"))
end

end
