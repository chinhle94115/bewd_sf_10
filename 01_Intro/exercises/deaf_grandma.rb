puts "Hello Sonny!"
input = gets.chomp

while input != ("BYE".upcase) && input != input.upcase
  puts "HUH! SPEAK UP SONNY!"
  input = gets.chomp
end
while input != ("BYE".upcase) && input == input.upcase
  puts "No, Not since " + (1930 + rand(21)).to_s + "!"
  input = gets.chomp
end
puts "BYE!"
