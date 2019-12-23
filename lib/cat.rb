class Cat

  attr_accessor :name 

  def initialize(name, owner)
    @name = name 
    @owner = Owner.all.find {|owner| owner.cat == @name }
  end
end