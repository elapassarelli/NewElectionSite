class Player
  #names, items: weapons, consumables, health, cash, description, stats: strength, experience, level
  attr_reader
  attr_writer
  attr_accessor :health, :name, :level, :defense, :strength, :maxhealth,:points

  def initialize(name)
    @health = 40.0
    @max_health = 40
    @level = 1
    @name = name
    @strength = rand(2..10) #give a random value between two and ten
    @defense = 12 - @strength
    @cash = 1000
    @experience = 0
    @points = 0
    @lifepoints = 0
    @level_points = @level*1000
    # if @defense < 2
    #   @defense = 2
    puts "Player #{name} has joined the game."
  end

def level_up
  @level += 1
  @strength += rand(1..3)
  @defense += rand(1..3)
  @lifepoints += @points
  @points = 0
  @experience += 2;
end

def cash_bonus
  @cash += 100
end

def status_report
  puts "#{@name}'s strength is #{@strength}.'"
  puts "#{@name}'s health is #{@health}/#{@max_health}.'"
  puts "#{@name}'s defense is #{@defense}."
  puts "#{@name}'s has #{@cash} of cash."
  puts "#{@name}'s has #{points} points. #{points}/#{level_points} until level #{level + 1}."

end

def attack(another_player)
  #ATTACK ANOTHER PLAYER
  #strength: 1000
  # defense: 500
  # health: 500
  #strength*10 + defense*5 + (health/4)*5
  if self.strength*10 + self.defense*5 + (self.health/4)*5 > another_player.strength*5 + another_player.defense*10 + (another_player.health/4)*5
    puts "#{self.name}'s attack succeeds! #{another_player.name}'s health is now down by #{another_player.level*1}. #{self.name} has earned #{self.level*200} points and #{@self.level*200} in cash. #{self.name} has gained 1 experience point."
    another_player.health -= another_player.level*1
    another_player.points -= 100
    self.points += @level*200
    self.cash += @level*200
    self.experience += 1
  else
    puts "#{self.name}'s attack has failed! #{self.name}'s health is now down by #{self.level*1}. #{self.name} has lost #{self.level*100} points."
    self.health -= self.level*1
    self.points -= 100
    another_player.points += @level*200
    another_player.cash += @level*200
  end
end

def increase_health
  puts "Choose your option by typing the option number below. Each option may only be done one time each day. Health cannot exceed 40.
  1. Sleep         ($0)   (Health increase by 0.25)  (+10 points)
  2. Eat           ($50)  (Health increase by 1)     (+20 points)
  3. Take medicine ($100) (Health increase by 2)     (+40 points)
  4. Go to healer  ($500) (Health increase by 10)    (+100 points)"
  choice = gets.chomp
  case choice
  when 1
    self.health += 0.25
    self.points += 10
  when 2
    self.health += 1
    self.points += 20
  when 3
    self.health += 2
    self.points += 40
  when 4
    self.health += 10
    self.points += 100
  else
    puts "That is not a valid option."
    return " "
  end
  end

def increase_strength
  puts "Choose your option by typing the option number below. Each option may only be done one time each day. Strength cannot exceed 40.
  1. Weightlift                    ($0)   (Strength increase by 1 every 4 times)  (+10 points)
  2. Increase protein intake       ($200) (Strength increase by 1)                (+50 points)
  2. Practice session with master  ($500) (Strength & experience increase by 1)   (+100 points)"
  choice = gets.chomp
  case choice
  when 1
    weight+=1;
    if weight == 4
      weight = 0;
      strength += 1;
      puts "It has been four days of training! Strength increase by 1."
    end
    self.points += 10
  when 2
    self.strength += 1
    self.points += 50
  when 3
    self.strength += 1
    self.experience +=1
    self.points += 100
  else
    puts "That is not a valid option."
    return " "
  end
  end


def determinelevel
  if points >= level*1000 && experience >= 5
    self.level_up
    puts "LEVEL UP! You are now on level #{@level}. Your strength, defense, and experience has gone up. Your points have been set back to zero."
end
end

end
