def calculator(number1, operation, number2)
number3 = nil

#these are where we figure out what the operation is
  # if operation.downcase == "+" || operation.downcase == "addition" || operation.downcase == "add"
  #   number3 = addition(number1, number2)
  # elsif operation.downcase == "-" || operation.downcase == "subtraction" || operation.downcase == "minus" || operation.downcase == "subtract"
  #   number3 = subtraction(number1, number2)
  # elsif operation.downcase == "*" || operation.downcase == "x" || operation.downcase == "multiplication" || operation.downcase == "multiply"
  #   number3 = multiplication(number1, number2)
  # elsif operation.downcase == "/" || operation.downcase == "division" || operation.downcase == "divide"
  #   number3 = division(number1, number2)
  # elsif operation.downcase == "menu"
  #   else
  #     puts "Sorry, your operation is too smart for us. Please try another calculator!"
  #     return " "
  # end
    case operation
    when 1
      number3 = addition(number1, number2)
    when 2
      number3 = subtraction(number1, number2)
    when 3
      number3 = multiplication(number1, number2)
    when 4
        number3 = division(number1, number2)
    when 5
      number3 = power(number1, number2)
    when 6
      number3 = root(number1, number2)
    when 7
      number3 = absval(number1, number2)
    else
      puts "That is not an option. Invalid input. You are cut off!!!!"
      return " "
    end


#this is where we keep going if they have more numbers
puts "Your answer is #{number3}. Do you want to do another step to your answer? Write yes if so, or no if not."
answer = gets.chomp
if answer.downcase == "yes"
  puts "Decide your operation. Please put the number option you would like to do. You will enter your second number next.
  1. Adding your two numbers.
  2. Subtracting your second number from your first number.
  3. Multiplying your two numbers.
  4. Dividing your first number by your second number.
  5. Your first number raised to the power of your second number
  6. Your first number rooted by your second number
  7. Absolute value an operation"
  operation = gets.chomp
  puts "Enter your next number"
  nextnum = gets.chomp
  calculator(number3, operation, nextnum.to_f)
else
  return number3
end
end


def addition(number1,number2)
  return number1.to_f + number2.to_f
end

def subtraction(number1,number2)
  return number1.to_f - number2.to_f
end

def multiplication(number1,number2)
  return number1.to_f * number2.to_f
end

def division(number1,number2)
  return number1.to_f / number2.to_f
end

def power(number1, number2)
  return number1.to_f**number2.to_f
end

def root(number1, number2)
  return number1.to_f**(1/number2.to_f)
end

def absval(number1, number2)
  puts "Enter your operation, or put menu for a list of options."
  answerr = gets.chomp
  return calculator(number1, answerr.downcase, number2).abs
end




puts "Hello! An example of a problem you can do on our system is 5 + 4. You will enter each of these three things (your first number, your operation, and your second number) when prompted. Enter your first number now."
num1 = gets.chomp
puts "Now you will decide your operation. Please put the number option you would like to do. You will enter your second number next.
1. Adding your two numbers.
2. Subtracting your second number from your first number.
3. Multiplying your two numbers.
4. Dividing your first number by your second number.
5. Your first number raised to the power of your second number
6. Your first number rooted by your second number
7. Absolute value an operation"
oper = gets.chomp().to_i
# puts "Enter your operation if it is one of the main four, or put MENU for a list of more complicated options."
# oper = gets.chomp
puts "Enter your second number"
num2 = gets.chomp
calculator(num1, oper, num2)
