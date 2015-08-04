greeting = "Hey Girl, Hey!"
name = "Chinh"
bewd_class = "Back End Web Development     "

puts greeting.length
puts name.prepend("Hi ")
puts name << " is cool"
puts bewd_class.length
puts bewd_class.strip
puts bewd_class.strip.length
puts name.chars
puts greeting.reverse



puts "#{name} has #{name.length} characters"
puts "I stripped this #{bewd_class.strip}"


# .length determines the number of characters in a string
# strip removes the white space at the end of the string
# << adds characters to the end of a string
# chars creates an array of characters from the string
# .reverse reverses the characters of a string
