def ninetynine_bottles
  num = 99

  while num > 0
    puts num.to_s + " bottles of beer on the wall"
    num = num - 1
  end
  if num == 0
    puts num.to_s + " bottles of beer on the wall, go to the store buy some more"
  end
end

ninetynine_bottles
