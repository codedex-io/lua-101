-- Final Battle
-- Codédex

heroHealth = 100
potions = 3
level = 1

if heroHealth == 100 then
    print("The hero is at full strength!")
elseif heroHealth < 50 then
    print("The hero is weak!")
else
    print("The hero is holding on...")
end

while potions > 0 and heroHealth < 100 do
    heroHealth = heroHealth + 25
    potions = potions - 1
    print("Used a potion. Health is now " .. heroHealth)
end

for i = 1, 5 do
    level = level + 1
    print("Level up! Now at level " .. level)
end

if heroHealth >= 100 and level > 5 then
    print("The hero is ready for the final battle!")
end
