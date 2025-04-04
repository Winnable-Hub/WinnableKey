local boost = game:GetService("Players").LocalPlayer.leaderstats.Boosts:GetAttributes()

for i,v in boost do
if i == "Drops" and v == 0 then
if game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items:FindFirstChild("DropsPotion") then
local args = {
    [1] = {
        [1] = {
            ["Action"] = "Use",
            ["Event"] = "UseItem",
            ["Name"] = "DropsPotion"
        },
        [2] = "\n"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("BridgeNet2"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
elseif not game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items:FindFirstChild("DropsPotion") then
local args = {
    [1] = {
        [1] = {
            ["Name"] = "DropsBoost",
            ["Type"] = "Product",
            ["SubType"] = "Products",
            ["Event"] = "TicketShop"
        },
        [2] = "\n"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("BridgeNet2"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))

end
end
end
