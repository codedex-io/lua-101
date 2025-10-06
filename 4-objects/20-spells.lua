-- Spells 
-- Codédex

local Spell = {}
Spell.__index = Spell


function Spell:new(name, damage, manaCost)
    local obj = {
        name = name or "",
        damage = damage or 0,
        manaCost = manaCost or 0
    }
    setmetatable(obj, Spell)
    return obj
end


function Spell:cast(caster, target)
    print(caster .. " casts " .. self.name .. " on " .. target .. "!")
    print("It deals " .. self.damage .. " damage and costs " .. self.manaCost .. " mana.")
end


local fireball = Spell:new("Fireball", 30, 20)
local iceSpike = Spell:new("Ice Spike", 20, 15)

fireball:cast("Wizard", "Goblin")
iceSpike:cast("Wizard", "Orc")
