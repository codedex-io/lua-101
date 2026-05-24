-- Fatal Error 🐛
-- Codédex

name = "Eldrin"                                             -- Fixed: missing double quotes
level = 10
health = 85

print("Name: " .. name)
print("Level: " .. level)                                   -- Fixed: 'lvl' to 'level'
print("Health: " .. health)
print("Stats: " .. name .. " " .. level .. " " .. health)   -- Fixed: used '..' instead of '+' for concatenation
