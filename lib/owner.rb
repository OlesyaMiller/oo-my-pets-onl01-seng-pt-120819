require 'pry'

class Owner
  attr_reader :name, :species
  attr_accessor 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
  end
  
  def say_species
    "I am a #{@species}."
  end

  def self.all 
    @@all 
  end 
  
  def self.count 
    self.all.count 
  end
  
  def self.reset_all 
    self.all.clear 
  end 
    
  def cats 
    Cat.all.select {|cat| cat.owner == self }
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self }
  end
  
  def buy_cat(cat)
    cat_to_buy = Cat.new(cat, self )
  end
  
  def buy_dog(dog)
    dog_to_buy = Dog.new(dog, self )
  end
  
  def walk_dogs
    dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
  end
  
  # def list_pets
  #   Dog.all.select {|dog| dog.owner == self }
  #   Cat.all.select {|cat| cat.owner == self }
  # end

end



