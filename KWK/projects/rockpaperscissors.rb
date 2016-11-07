#the code to play with computer generated teams
def rpsteams
  puts "Enter your first team name."
te = gets.chomp
team1 = {
  :name => te,
  :answer => nil
}
  puts "Enter your second team name."
  ta = gets.chomp
  team2 = {
    :name => ta,
    :answer => nil
  }
  "Rock, paper, scissors, shoot!"
  team1[:answer] = randomgeneratorrps
  team2[:answer] = randomgeneratorrps
  winner = generatewinner(team1[:answer], team2[:answer])
 "#{team1} did #{team1[:answer]} and #{team2} did #{team2[:answer]}. #{winner} wins!"
end

#the code to play with teams inputing their own responses
def rpsteamanswers
  puts "Enter your first team name."
te = gets.chomp
puts "Enter your team answer, rock, paper, or scissors. Be secretive from the other team!"
an = gets.chomp
team1 = {
  :name => te,
  :answer => an.downcase
}
  puts "Enter your second team name."
  ta = gets.chomp
  puts "Enter your team answer, rock, paper, or scissors. Be secretive from the other team!"
  ad = gets.chomp
  team2 = {
    :name => ta,
    :answer => ad.downcase
  }
  "Rock, paper, scissors, shoot!"
  winner = generatewinner(team1[:answer], team2[:answer])
 "#{team1} did #{team1[:answer]} and #{team2} did #{team2[:answer]}. #{winner} wins!"
  end

#the code for a user to play against a computer
def rpscomputer

end

  def generatewinner(one[:answer], two[:answer])
    if one[:answer] =="rock" && two[:answer]=="scissors"
      return one[:name]
    elsif one[:answer] == "scissors" && two[:answer]=="paper"
      return one[:name]
    elsif one[:answer]=="paper" && two[:answer]=="rock"
      return one[:name]
    else
      return two[:name]
    end
  end


def randomgeneratorrps
  number = 1 + rand(3)
  if number == 1
    return "rock"
  elsif number == 2
    return "scissors"
  else
    return "paper"
  end
end


"Rock Paper Scissors BATTLE! Would you like to...
1. Play with two teams with computer generated responses (choose 1)
2. Play with two teams with each team entering their response (choose 2)
3. Play against the computer (choose 3)?"
answer = gets.chomp
case answer
when 1
  puts rpsteams
when 2
  puts rpsteamanswers
when 3
  puts rpscomputer
else
  puts "Sorry, we don't recognize that number."
end
