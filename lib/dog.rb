class Dog
  attr_reader :name, :owner  
  attr_writer :owner 
  
  def initialize(name, owner)
    @name = name 
    @owner = owner
  end
end