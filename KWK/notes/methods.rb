def vegetablize(human, vegetable)
  "turn #{human} into #{vegetable}"
end

#puts vegetablize("kameryn", "pepper")

def magic(friendname1, friendname2)
   number = 1 + rand(10)
    "the friend potential for #{friendname1} and #{friendname2} out of 10 is #{number}"
end

#  puts magic("taylor","jeff")

# def karlie(adjective="kool")
#
#   if adjective.index("c") = 0
#     new = adjective.gsub("c", "k")
#    "karlie is #{new}"
#
#   else
#   "karlie is #{adjective.upcase}"
#
# end


def crazystrings(upcasereverse,swapcasez)
  new = upcasereverse.upcase.reverse + " " + swapcasez.gsub("s","z").gsub("S","Z").swapcase
  new
end

puts crazystrings("ela","yaSsss")

def mood(mood="trippy")
  mood + " #mood"
end

puts mood
puts mood("dude")
