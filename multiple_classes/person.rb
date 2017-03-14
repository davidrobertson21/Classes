class Person

  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age.to_i
  end

end