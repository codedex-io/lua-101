geo_location = {
    speed = 10,
    x = 5,
    y = 5,
    name = "Player"
}

function boostSpeed(player)
    if player.x > 100 and player.y < 50 then
        player.speed = player.speed + 10
    end
end


boostSpeed(geo_location)
print("Player's new speed: " .. geo_location.speed)
