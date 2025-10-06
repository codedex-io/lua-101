-- Power Ups
-- Codédex


PowerUp = {
    bonus = 5,
    duration = 10
}


SpeedBoost = setmetatable({ bonus = 15 }, { __index = PowerUp })
Shield = setmetatable({ duration = 20 }, { __index = PowerUp })

print(SpeedBoost.bonus, SpeedBoost.duration)  --> 15   10
print(Shield.bonus, Shield.duration)          --> 5    20
