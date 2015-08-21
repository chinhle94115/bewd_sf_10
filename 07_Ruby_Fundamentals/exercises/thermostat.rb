require 'pry'

class Thermostat

  attr_accessor :degrees
  attr_reader :target

  #have a target temperature
  #if the target temperature falls out of range, create a method to make if go back?
  #create an instance of temperature

  def initialize(temp, target)
    @degrees = temp
    @target = target
  end

  def adjust(temp, target)  #Thermostat.get_desired_temperature does nothing
    if degrees < target
      puts "Brr. It's cold in here, turn it up to #{target}."
    elsif degrees > target
      puts "Whew! It's hot in here, turn it down to #{target}."
    else
      puts "Ahh. Just right!"
    end
  end

#class method
  def self.detect_temperature(all_temps, target)  #self.whatever is what defines the class method
    all_temps.each do |temp|
      reading = Thermostat.new(temp, target)
      reading.adjust(temp, target)
    end
  end


end
all_temps = [45, 65, 85, 95, 35, 22, 70]

target = 70

Thermostat.detect_temperature(all_temps, target)
