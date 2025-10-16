-- On a Quest
-- Codédex

quest = {
  name = "Retrieve the Golden Fleece",
  location = "Athens",
  reward = 500,
  completed = false
}

quest.completed = true
quest.difficulty = "hard"
quest.reward = nil

if quest.completed then
  print("You've completed the quest: " .. quest.name)
end
