-- Global Stars 
-- Codédex

local score = 0

function setup()
    score = 0
end

function add_points()
    score = score + 10
end

setup()
add_points()
print("Player's score is: " .. score)
