-- Merchant Merlin
-- Codédex

inventory = {
    potion = 5,
    elixir = 3,
    antidote = 10,
    gold = 100,
    silver = 250,
    bronze = 500,
    sword = 1,
    shield = 1,
    bow = 1,
    arrows = 20
}

function sell_item(item, quantity)
    if inventory[item] and inventory[item] >= quantity then
        inventory[item] = inventory[item] - quantity
        print("Sold " .. quantity .. " " .. item .. "(s). Remaining: " .. inventory[item])
    else
        print("Item " .. item .. " is unavailable or not enough stock.")
    end
end

function restock_item(item, quantity)
    if inventory[item] then
        inventory[item] = inventory[item] + quantity
        print("Restocked " .. quantity .. " " .. item .. "(s). Total: " .. inventory[item])
    else
        inventory[item] = quantity
        print("Added new item " .. item .. " with quantity: " .. quantity)
    end
end

-- Sell items
sell_item("potion", 2)
sell_item("elixir", 1)
sell_item("antidote", 5)

-- Restock items
restock_item("potion", 5)
restock_item("elixir", 3)