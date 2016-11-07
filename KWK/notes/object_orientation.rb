#creating a class
class Passarelli_Sister
  #most important method, like your constructor in java
    def initialize(hair, name, favoritefood, love, nickname)
      #things that the object has
      @hair=hair
      @name=name
      @favoritefood=favoritefood
      @love = love
      @nickname=nickname
      # ^^^^^ instance variables
    end

  #"accessor method" or getter method: allows user to see attributes. or called a reader method.
  def gethair
    return @hair
end

def getname
  return @name
end

def getfavoritefood
  return @favoritefood
end
#also, there is this thing called an attr_reader which basically stays in for the method
attr_reader :nickname

#this is kind of like the same thing but its just a set method
attr_writer :nickname
#then you can chane the nickname and edit what it is

end

#creates the object
Lucia = Passarelli_Sister.new("straight","Lucia Broker Passarelli","acai bowls", "Adam Kahn", "Lubird") #initializes Lucia as a Passarelli Sister

puts Lucia.gethair

#calling attr_ready: nickname
puts Lucia.nickname
Lucia.nickname = "babe"
puts Lucia.nickname

Karina = Passarelli_Sister.new("curly", "Karina Merithew Passarelli", "bubble tea", "Anakin", "Smush")
