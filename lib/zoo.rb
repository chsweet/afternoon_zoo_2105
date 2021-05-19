class Zoo
  attr_reader :name, :street, :city, :state, :zip, :address, :inventory, :animal_count

  def initialize(name, street, city, state, zip)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip = zip
    @address = "#{street} #{city}, #{state} #{zip}"
    @inventory = []
    @animal_count = @inventory.count
  end

  def add_animal(animal)
    @inventory << animal
  end

  def animals_older_than(age)
    @inventory.select do |animal|
      animal.age_in_days / 7 >= age
    end
  end

  def total_weight_of_animals

  end

  def details
    details = {"total_weight" => total_weight_of_animals, "street_address" => street}
  end
end
