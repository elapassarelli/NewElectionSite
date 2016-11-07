donut_array= ["cake", "cinnamon shuggga", "powdered", "ciocolato", "punnkin", "glazed", "blueburry","strawburry"]

# puts donut_array[1]
# puts donut_array[2]

donut_array.push("brownie double choco chunk peanut butter marshmallow fudge chip")
# puts donut_array[8]

donut_array.pop
puts donut_array.to_s

donut_array[3] = donut_array[3].reverse
puts donut_array.to_s

donut_array.each do |donut|
    puts donut.capitalize.swapcase
   end

numbers_array=[1,2,3,4,5,6,7,8,9]
nummmy=[]

numbers_array.each do |num|
  nummy.push(num*5)
end
