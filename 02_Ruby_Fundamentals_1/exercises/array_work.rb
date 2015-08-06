liquor = ["vodka", "whiskey", "gin"]
p liquor
puts "I created the array #{liquor}"
liquor << "tequilla"
p liquor
puts "I added 'tequilla' to the end of the array using <<"
liquor.push("bourbon")
p liquor
puts "I added 'bourbon' to the end of the array using .push"
liquor.pop
p liquor
puts "I chopped off 'bourbon'from the end using .pop"
liquor << "bourbon"
p liquor
puts "I added 'bourbon' to the end of the array using <<"
liquor.unshift("vodka")
p liquor
puts "I added 'vodka' to the beginning of the array using .unshift"
liquor.shift
p liquor
puts "I chopped off 'vodka' from the beginning of the array using .shift"
liquor.unshift("bourbon", "gin")
p liquor
puts "I added 'bourbon' and 'gin' to the beginning of the array using .unshift"
liquor.uniq
p liquor
puts "I removed duplicates using .uniq but it won't show it"
liquor.uniq!
p liquor
puts "I permanently removed duplicates using .uniq"
p liquor.size
puts "I counted how many elements are in my array"

# To create an array:
#    1) array name = Array.new    - not capital A is important
#    2) array name = []
#    3) %w(item1 item2 item3)     note: strings have no quotes

# .size or .length gives you number of elements in array
# .push adds a new element at the end of the array (can do more than one)
# << adds just one element at the end of the array
# .pop chops off the last element
# .unshift adds to the beginning of the array
# .shift is the opposite of pop - chops off from the beginning of the array
# .uniq removes the duplicates, but not permanently
# .uniq! removes the duplicates permanently to that array
# note: if there are no duplicates for .uniq, result is nil
