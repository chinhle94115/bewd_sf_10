require 'pry'

class Person
  #attributes :name, :age, :home

#attr_reader :name, :age, :home  #creates a instance variable to be recognized (*read-only!!)
#is basically doing this:
    #these are getters, they only allow access to info; no writing/change access
#  def name
#    @name
#  end
#  def age
#    @age
#  end
#  def home
#    @home
#  end
#makes coding shorter

#attr_writer   #creates the value for the instance variable
  #these are the setters, they allow writing access
#  def name = value
#    @name = value
#  end
#  def age = value
#    @age = value
#  end
#  def home = value
#    @home = value
#  end
#makes coding shorter

  attr_accessor :name, :age, :home #creates both reader and writer at same time, which allows both read & write access

#instance factory
  def initialize(name, age, home)
    @name = name
    @age = age
    @home = home
  end
# attributes defined here (initializer) not by attr_accessor
#attributes not determined by attr_accessor
end
binding.pry
chinh = Person.new("Chinh", 40, "DC")
