class Cat

  attr_accessor :owner 
  attr_reader :name 
  def initialize(name, owner)
    @name = name 
    #owner = Owner.all.find {|owner| owner.cat == @name }
    @owner = owner
  end
end