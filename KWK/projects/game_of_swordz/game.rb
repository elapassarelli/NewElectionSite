require_relative 'player.rb'

JamesBond007 = Player.new("James Bond")
JamesBond007.status_report

Ela = Player.new("Ela Passarelli")
Ela.status_report

EvaaUtzz = Player.new("Eva Utz")
EvaaUtzz.status_report

JamesBond007.attack(Ela)
JamesBond007.status_report
Ela.status_report
Ela.attack()
Ela.status_report
JamesBond007.status_report

Ela.increase_health

# methods:
# -level_up
# -cash_bonus
# -status_report
# -attack
# -increase_health
