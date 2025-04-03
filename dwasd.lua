function checklevel(wdas)
yeahs = wdas:GetAttributes()
for i2,v2 in yeahs do
if i2 == "Level" then
return v2
end
end
end

weapon = {}

for i,v in pairs(game:GetService("Players").LocalPlayer.leaderstats.Inventory.Weapons:GetChildren()) do
if string.find(v.Name, _G.Settings.Weapon_Names) and checklevel(v) == _G.Settings.Weapon_Rank_Remove then
table.insert(weapon, v.Name)
end
end

local args = {
    [1] = {
        [1] = {
            ["Action"] = "Sell",
            ["Event"] = "WeaponAction",
            ["Name"] = weapon[1]
        },
        [2] = "\n"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("BridgeNet2"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
