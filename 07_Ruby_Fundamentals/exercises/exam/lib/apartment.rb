require 'pry'
require "pry-byebug"


class Apartment
  #get getter and accessor methods using attr_accessor
  attr_accessor :unit, :bedrooms, :bathrooms, :sqft, :rent, :renter #create attributes of apartment
  #constructor to make instance variables
  def initialize (bedrooms, bathrooms, sqft, unit)  #job of initialize is to create an instance
    @unit = unit
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @sqft = sqft
    @rent = nil         #rent and renter are unknown at time, but will be assigned later
    @renter = nil       #therefore, use nil class?
  end                   #rent and renter are unrequired

  def self.create_apt(units)
    units.each do |unit|
      puts "Apartment #{unit} has:"
      Apartment.random_apartment_maker  #creates a bd/ba/ft for each unit number
    end
  end


  def self.random_apartment_maker
      beds = [1, 2, 3, 4]
      baths = [1, 2, 3]
      footage = [1200, 1400, 1600, 1800, 2000]

      bedrooms = beds.sample
      bathrooms = baths.sample
      sqft = footage.sample
      unit = nil

      Apartment.new(unit, beds.sample, baths.sample, footage.sample)   #create random bd/ba/sqft
      puts "#{bedrooms} bedrooms, #{bathrooms} bathrooms, and #{sqft} square feet in"


    end




  #this method is inherited out of the box when you create a new class. I can override
  #it and define myself like this
  def to_s    #override a different method - ***to_s inherited method would just print out object id
    "Apartment #{unit} has #{bedrooms} bedrooms, #{bathrooms} bathrooms, and #{sqft} square feet."  #this makes to_s print something else
  end

  #instance method to check if apt occupied
  def not_occupied?    #convention is to have it answer in an intuitive way
    renter.nil? #also renter == nil
  end

end

units = [101, 102, 103, 201, 202, 203]

Apartment.create_apt(units)



  #all renters make $300k, and have a credit score of 800
