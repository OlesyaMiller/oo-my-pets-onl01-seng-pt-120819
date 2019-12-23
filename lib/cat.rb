class Cat

  attr_accessor :name, :owner  

  def initialize(name)
    @name = name 
    @owner = Owner.all.find {|owner| owner.cat == @name }
  end
end