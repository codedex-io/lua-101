-- Healing Action
-- Codédex

Enemy = {}
Enemy.__index = Enemy

function Enemy:new(name, health)
    local obj = {
        name = name,
        health = health or 100,
        -- Pretend the last damage happened between 1 and 10 seconds ago
        lastDamageTime = os.time() - math.random(1, 10)
    }
    setmetatable(obj, Enemy)
    return obj
end

function Enemy:takeDamage(amount)
    self.health = self.health - amount
    self.lastDamageTime = os.time()
    print(self.name .. " took " .. amount .. " damage! Health is now " .. self.health)
end

function Enemy:heal()
    local currentTime = os.time()
    local timeSinceDamage = currentTime - self.lastDamageTime

    if timeSinceDamage > 5 then
        self.health = self.health + 10
        print("The enemy has regained health!")
        print("The enemy's health is now " .. self.health .. "hp")
    else
        print(self.name .. " has not had enough time to heal yet.")
        print("The enemy's health is now " .. self.health .. "hp")
    end
end

-- DO NOT EDIT BELOW THIS LINE
math.randomseed(os.time())
local goblin = Enemy:new("Goblin", 30)
goblin:heal()
