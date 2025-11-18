-- Boss Battle
-- Codédex

-- (you can change these values to test different outcomes) 
isAlive = true
isStunned = false
health = 20
hasKey = false
completedQuest = true

if isAlive and not isStunned and health > 10 and (hasKey or completedQuest) then
  print("Your boss battle has begun!")
else
  print("You cannot enter the boss battle.")
end
