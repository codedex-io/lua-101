-- Inventory
-- Codédex

blocks = {
    {name = "dirt", rarity = 1},
    {name = "stone", rarity = 1},
    {name = "cobblestone", rarity = 1},
    {name = "wood", rarity = 2},
    {name = "sand", rarity = 2},
    {name = "gold ore", rarity = 7},
    {name = "iron ore", rarity = 4},
    {name = "coal ore", rarity = 3},
    {name = "diamond ore", rarity = 9},
    {name = "emerald ore", rarity = 10},
    {name = "lapis lazuli ore", rarity = 5}
}

-- Write code below 💖

rare_count = 0

for i = 1, #blocks do
    if blocks[i].rarity >= 5 then
        rare_count = rare_count + 1
    end
end

if rare_count > 3 then
    print("You have valuable items!")
elseif rare_count >= 1 then
    print("You have some rare blocks.")
else
    print("No rare blocks found.")
end