class Coven

  attr_reader :members

  def initialize(members)
    @members = members

  end

def cast_same_spell(spell)
  spells_cast = []
    for wizard in @members
      wizard.cast_spell(spell)
        spells_cast << spell
    end
  return spells_cast
end

def cast_spells_numbers(spell)
  spells_cast = []
    for wizard in @members
      if @members.length >= 3
      spells_cast.push(wizard.cast_spell(spell) + "!!!")
        else 
      spells_cast.push(wizard.cast_spell(spell))
      end
    end
      return spells_cast
end




end