require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/renter'

require 'pry'

  def create_building
    puts "What is building name?"
    name = gets.strip
    puts "What is building address?"
    address = gets.strip
    add_unit_to_building
    Building.new(name, address)
  end

  def add_unit_to_building
    puts "How many units? \n"
    units = gets.strip.to_i
    units.times do#create the new units
      building.apartments << create_apartment  #push created apts into apartments array
    end                               #or can do << create_apartment
  end



  def create_apartment
    puts "***Please describe the apartment.***"
    puts "What is the unit number?"
    unit = gets.strip
    puts "How many bedrooms does #{unit} have?"
    bedrooms = gets.strip
    puts "How many bathrooms does #{unit} have?"
    bathrooms = gets.strip
    puts "What is #{unit}'s square footage?"
    sqft = gets.strip
    Apartment.new(unit, bedrooms, bathrooms, sqft)
  end

  def create_renter
    puts "***Please describe the renter.***"
    puts "What is the name of the renter?"
    name = gets.strip
    puts "What is #{name}'s credit score?"
    credit = gets.strip
    puts "What is #{name}'s annual salary?"
    salary = gets.strip
    Renter.new(name, credit, salary)
  end

  def file
    file = {unit: create_apartment, renter: create_renter}
  end

  def is_rented?
    if renter != nil
  end

end

puts create_building
