require 'pry'
require "pry-byebug"


class Apartment
  #get getter and accessor methods using attr_accessor
  attr_accessor :unit, :bedrooms, :bathrooms, :sqft, :rent, :renter #create attributes of apartment
  #constructor to make instance variables
  def initialize (unit, bedrooms, bathrooms, sqft)  #job of initialize is to create an instance
    @unit = unit
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @sqft = sqft
    @rent = nil         #rent and renter are unknown at time, but will be assigned later
    @renter = nil       #therefore, use nil class?
  end                   #rent and renter are unrequired


  #this method is inherited out of the box when you create a new class. I can override
  #it and define myself like this
  def to_s    #override a different method - ***to_s inherited method would just print out object id
    "Apartment #{unit} has #{sqft} square feet."  #this makes to_s print something else
  end

  #instance method to check if apt occupied
  def not_occupied?    #convention is to have it answer in an intuitive way
    renter.nil? #also renter == nil
  end

end




  #all renters make $300k, and have a credit score of 800
