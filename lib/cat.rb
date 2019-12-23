class Cat

  attr_accessor :name, :owner 

  def initialize(name, owner)
    @name = name 
    owner = Owner.all.find {|owner| owner.cat == @name }
    @owner = owner
  end
end