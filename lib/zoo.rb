class Zoo
  attr_reader :name, :street, :city, :state, :zip, :address, :inventory, :animal_count

  def initialize(name, street, city, state, zip)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip = zip
    # @address = "#{street}"
    @inventory = []
    @animal_count = @inventory.length
  end

  def add_animal(animal)
    require "pry"; binding.pry
    @inventory << animal
  end

end
