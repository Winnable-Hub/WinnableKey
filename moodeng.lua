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
if string.find(v.Name, _G.Settings.Weapon_Name) and checklevel(v) == _G.Settings.Upgrade_From_Number then

table.insert(weapon, v.Name)
end
end

local args = {
    [1] = {
        [1] = {
            ["Type"] = _G.Settings.Weapon_Name,
            ["BuyType"] = "Gems",
            ["Weapons"] = {
                [1] = weapon[1],
                [2] = weapon[2],
                [3] = weapon[3]
            },
            ["Event"] = "UpgradeWeapon",
            ["Level"] = _G.Settings.Upgrade_To_Number
        },
        [2] = "\n"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("BridgeNet2"):WaitForChild("dataRemoteEvent"):FireServer(unpack(args))
