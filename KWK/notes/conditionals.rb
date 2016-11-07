def check_password
  puts "Enter your password"
  input = gets.chomp
  actual_password = "jamesbond007"
  if input == actual_password
    return true
  else
    return false
end
end

ela_passarelli = {
  :favorite_fruit => "watermelon",
  :favorite_vegetable => "red pepper",
  :favorite_city => "nyc",
  :favorite_color => "purple",
  :home_city => "cleveland",
  :favorite_dessert => "bubble tea"
}

def do_you_know_me(person)
  bool = true
  person.for do |favorite, answer|
      puts "What is my #{favorite}"
      input = gets.chomp
      if input == answer
        puts "Yes!!!"
      else
        puts "No!!!"
        bool = false;
      end
    end
  end
end

places_to_go = ["japan", "dominican republic", "england", "spain"]

if places_to_go.include?("england")
  return "Go to england during the rainy season, it's so nice."

# puts check_password("heybabe")
# puts check_password("jamesbond007")
# puts check_password("I WANT U NAH NAHHHHH")
# puts check_password
puts do_you_know_me(ela_passarelli)
