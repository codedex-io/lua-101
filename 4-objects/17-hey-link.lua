-- Hey Link!
-- Codédex

Player = {
    name = "",
    x = 0,
    y = 0,
    color = "green",
    health = 100
}

-- Write code below 💖

function Player:nameChar(username)
    self.name = username
    print("Name set to " .. self.name)
end

function Player:talk()
    print("Hello. My name is " .. self.name .. ". Let's begin!")
end

-- This code will run once your functions are written!
Player:nameChar("Link")
Player:talk()


-- output 
-- Name set to Link
-- Hello. My name is Link. Let's begin
