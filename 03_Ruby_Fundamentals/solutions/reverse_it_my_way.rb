require 'pry'

def my_reverse(string)
  char = string.downcase.chars    #changes string to lowercase and array
  word = ""                     #create an empty strnig for new word
  until char.length == 0
    word << char.pop            #removes last element in array && adds letter
  end
end

def is_palindrome?(word)
  if word.downcase == my_reverse(word).downcase  #does word == reversed word?
    "YES!! Palindrome"
  else
    "Awww. Not a palindrome."
  end
end

#call our method here
  puts "Give me a word \n"
  word = gets.strip
  puts is_palindrome?(word)
