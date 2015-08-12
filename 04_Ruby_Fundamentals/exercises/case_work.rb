require 'pry'

def the_case(grade)
  case grade.upcase
    #use case statement when setting up if variable === something
    #use when "something" is cleaner than using if variable === something 
    #use case condition whenever 3+ conditions
    when "A"
      "You aced the class!"
    when "B"
      "Solid Job!"
    when "C", "D"
      "Sometimes a hard C/D is excellent!"
    else
      "Stop drinking in my class"
    end
end

the_case("A")
