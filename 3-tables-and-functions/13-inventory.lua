-- Inventory
-- Codédex

blocks = {
    "dirt",
    "stone",
    "cobblestone",
    "wood",
    "sand",
    "gravel",
    "gold ore",
    "iron ore",
    "coal ore",
    "log",
    "leaves",
    "sponge",
    "glass",
    "lapis lazuli ore"
}

if #inventory == 0 then
    print("Your inventory is empty.")
elseif #inventory <= 5 then
    print("You have space in your inventory, add more blocks!")
else
    print("You have a full inventory.")
end