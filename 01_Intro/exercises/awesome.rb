# write a method that prints the following:
#"AWE" if the number is divisible by 3
#"SOME" if the number is divisible by 5
#"AWESOME" if the number is divisible by 3 and 5
#"This number, (the number), is not completely AWESOME" if the number does not
#meet any other condition

require 'pry'

def awesome_number(number)
  if number % 3 == 0 && number % 5 == 0
    puts "AWESOME #{number}!"
  elsif number % 3 == 0
    puts "AWE"
  elsif number % 5 == 0
    puts "SOME"
  else
    puts "This number, #{number}, is not AWESOME!"
  end
end

def awesome_seeker(top_num)
  1.upto(top_num) do |number|
    #binding.pry        #breaks the program so that you can test variables
    awesome_number(number)
  end
end


awesome_seeker(100)
