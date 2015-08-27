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
#class method
  def self.credit_story
    credit = (700..825).to_a.sample       #random credit score between 700-825
    salary = (100000..300000).to_a.sample #random salary from 100-300k
    name = nil     #I had to create a dummy argument to make Renter.new work

    Renter.new(name, credit, salary)  #needs 3 arguments (per initialize), event though don't use all
    puts "credit score: #{credit} \nsalary: #{salary}\n"
  end

  def self.create_renter(renters)
    renters.each do |renter|
      puts "****************"
      puts "renter: #{renter}\n"
      Renter.credit_story

    end
  end

#to override to_s so that it doesn't just print object id when renter is created
  def to_s
    "#{name} has a credit score of #{credit} and #{salary} salary."
  end

end

renters = ["Chinh", "Sean", "Leslie", "Anne", "Mike", "Alice"]

Renter.create_renter(renters)

  #all renters make $300k, and have a credit score of 800
