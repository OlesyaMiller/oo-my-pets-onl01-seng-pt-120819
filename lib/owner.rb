class Owner
  attr_reader :name, :species
  
  def initialize(name)
    @name = name 
    @species = "human"
  end
  
  def spieces
    puts "I am a #{@spieces}."
  end

end