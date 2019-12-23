class Owner
  attr_reader :name, :species
  
  def initialize(name)
    @name = name 
    @species = "human"
  end
  
  def say_spieces
    puts "I am a #{@spieces}."
  end

end