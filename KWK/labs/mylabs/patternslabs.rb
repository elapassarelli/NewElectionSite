def creatediamond(number)
amount = 1
spaces = (number-1)/2

while amount <= number do
   puts " "*spaces + "*"*amount
   amount = amount + 2
   spaces = spaces - 1
end

spaces = spaces +1
amount = amount - 2

while amount <= number do
   puts " "*spaces + "*"*amount
   amount = amount - 2
   spaces = spaces + 1
end

end

#puts creatediamond(20)

def verticlediamonds(number, number1)
  createddiamond(number)*number1
end

#puts verticlediamonds(7,5)

def horizontaldiamonds(number, number1)
  amount = 1
  spaces = (number-1)/2

  while amount <= number do
     puts (" "*spaces + "*"*amount + " "*spaces)*number1
     amount = amount + 2
     spaces = spaces - 1
  end

  spaces = spaces +2
  amount = amount - 4

  while amount >=0 && amount<= number do
     puts (" "*spaces + "*"*amount + " "*spaces)*number1
     amount = amount - 2
     spaces = spaces + 1
  end
end

# horizontaldiamonds(7,3)

def diamond3d(number, width, height)
  for i in 1..height
  horizontaldiamonds(number,width)
  print "\n"
end
end

diamond3d(5,4,3)
