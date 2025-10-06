-- On an Adventure
-- Codédex


-- Player

local Player = {}
Player.__index = Player

function Player.new(name)
    local self = setmetatable({}, Player)
    self.name = name
    self.hp = 100
    self.spells = {}
    return self
end

function Player:takeDamage(amount)
    self.hp = self.hp - amount
    print(self.name .. " took " .. amount .. " damage. HP is now " .. self.hp)
end

function Player:castSpell(spell, enemy)
    if self.spells[spell.name] then
        enemy:takeDamage(spell.damage)
        print(self.name .. " cast " .. spell.name .. " on " .. enemy.name .. " for " .. spell.damage .. " damage.")
    else
        print(self.name .. " hasn't learned the spell " .. spell.name)
    end
end

function Player:learnSpell(spell)
    self.spells[spell.name] = spell
    print(self.name .. " learned the spell " .. spell.name)
end



-- Spell

local Spell = {}
Spell.__index = Spell

function Spell.new(name, damage)
    local self = setmetatable({}, Spell)
    self.name = name
    self.damage = damage
    return self
end



-- Enemy

local Enemy = {}
Enemy.__index = Enemy

function Enemy.new(name, hp)
    local self = setmetatable({}, Enemy)
    self.name = name
    self.hp = hp
    return self
end

function Enemy:takeDamage(amount)
    self.hp = self.hp - amount
    print(self.name .. " took " .. amount .. " damage. HP is now " .. self.hp)
end



local hero = Player.new("Link")
local fireball = Spell.new("Fireball", 30)
local iceSpike = Spell.new("Ice Spike", 20)
local goblin = Enemy.new("Goblin", 50)

hero:learnSpell(fireball)
hero:learnSpell(iceSpike)

hero:castSpell(fireball, goblin)
hero:castSpell(iceSpike, goblin)
