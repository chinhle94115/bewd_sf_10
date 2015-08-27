require 'pry'
require "pry-byebug"


class Renter
  #get getter and accessor methods using attr_accessor
  attr_accessor :name, :credit, :salary #create attributes of apartment
  #constructor to make instance variables
  def initialize (name, credit, salary)  #job of initialize is to create an instance
    @name = name
    @credit = credit
    @salary = salary
  end

  def self.credit_story
    credit = range(700..825).sample
    salary = range(100000..300000).sample

    Renter.new(credit, salary)
    puts "credit score: #{credit} \nsalary: #{salary}\n"
  end

#to override to_s so that it doesn't just print object id when renter is created
  def to_s
    "#{name} has a credit score of #{credit} and #{salary} salary."
  end

end

Renter.credit_story


  #all renters make $300k, and have a credit score of 800
