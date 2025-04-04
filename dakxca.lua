player = game.Players.LocalPlayer

if game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items:FindFirstChild("EnchCommon") then
local enc = game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items.EnchCommon:GetAttributes()
for i,v in enc do
if i == "Amount" then
enca = v
end
end
elseif not game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items:FindFirstChild("EnchCommon") then
enca = 0
end
if game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items:FindFirstChild("EnchRare") then
local enr = game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items.EnchRare:GetAttributes()
for i,v in enr do
if i == "Amount" then
enra = v
end
end
elseif not game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items:FindFirstChild("EnchRare") then
enra = 0
end
if game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items:FindFirstChild("EnchLegendary") then
local enl = game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items.EnchLegendary:GetAttributes()
for i,v in enl do
if i == "Amount" then
enla = v
end
end
elseif not game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items:FindFirstChild("EnchLegendary") then
enla = 0
end
if game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items:FindFirstChild("Ticket") then
local tkc = game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items.Ticket:GetAttributes()
for i,v in tkc do
if i == "Amount" then
tkca = v
end
end
elseif not game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items:FindFirstChild("Ticket") then
tkca = 0
end

local gems = game:GetService("Players").LocalPlayer.leaderstats:GetAttributes()

for i,v in gems do
if i == "Gems" then
gemsa = v
end
end

if _G.Settings.Webhook_Link ~= "" then
        pcall(function()
            local url =
            _G.Settings.Webhook_Link
            local data = {
              ["content"] = "",
              ["embeds"] = {
                  {   
                      ["author"] = {
                          ["name"] = "",
                      },
                      ["type"] = "rich",
                      ["title"] = "Winnable Hub Notification",
                      ["color"] = tonumber(14177041),
                      ["fields"] = {
                          {
                              ["name"] = "Account : ".."||"..player.Name.."||".."\nRank : "..game:GetService("Players").LocalPlayer.leaderstats.Rank.Value,
                              ["value"] = "Money : "..game:GetService("Players").LocalPlayer.PlayerGui.Hud.BottomContainer.Coins.Text.."\nGems : "..game:GetService("Players").LocalPlayer.PlayerGui.Hud.BottomContainer.Gems.Text.."\nEnchant Common : "..enca.."\nEnchant Rare : "..enra.."\nEnchant Legendary : "..enla.."\nTicket : "..tkca,
                          },
                      },
                      ['description'] = 'https://discord.com/invite/Dfxktn5cMX'
                  }
              }
           }
           local newdata = game:GetService("HttpService"):JSONEncode(data)
           
           local headers = {
              ["content-type"] = "application/json"
           }
           request = http_request or request or HttpPost or syn.request
           local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
           request(abcdef)
        end)
        else
            print("Invaild Url")
    end
