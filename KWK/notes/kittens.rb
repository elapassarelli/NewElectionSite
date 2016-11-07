cats = {
  :grumpycat => "grumpy",
  :izzy => "rude",
  :garfield => ["laxy", "hungry"],
  :smokey => "sassy",
  :oliviabenson => "cuddly",
  :meredithgrey => "rude"
}

cats.each do |kitten, mood|
  puts "#{kitten.capitalize} is very #{mood} today."
end
