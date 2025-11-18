-- Ready Mode 
-- Codédex

boss_ready = false
turns = 0

while not boss_ready do
  print("The boss is preparing...")
  turns = turns + 1

  if turns == 5 then
    boss_ready = true
  end
end

print("The boss has appeared!")
