class Animal
  attr_reader :kind, :weight, :age, :age_in_days

  def initialize(kind, weight, age)
    @kind = kind
    @weight = "#{weight} pounds"
    #second option to have weight as a Hash ??? 
    #@weight = {pounds: weight}
    @age = "#{age} weeks"
    @age_in_days = age * 7
  end

##was not able to get this to work correctly with how I have @weight set up - was attempting to change to a Hash
  def feed!(food)
    @weight[:pounds] += food
    "#{@weight.value} pounds"
  end
end
