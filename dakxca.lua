player = game.Players.LocalPlayer

local enc = game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items.EnchCommon:GetAttributes()
local enr = game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items.EnchRare:GetAttributes()
local enl = game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items.EnchLegendary:GetAttributes()
local tkc = game:GetService("Players").LocalPlayer.leaderstats.Inventory.Items.Ticket:GetAttributes()
local gems = game:GetService("Players").LocalPlayer.leaderstats:GetAttributes()

for i,v in enc do
if i == "Amount" then
enca = v
end
end

for i,v in enr do
if i == "Amount" then
enra = v
end
end

for i,v in enl do
if i == "Amount" then
enla = v
end
end

for i,v in tkc do
if i == "Amount" then
tkca = v
end
end

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
                              ["value"] = "Money : "..game:GetService("Players").LocalPlayer.leaderstats.Cash.Value.."\nGems : "..gemsa.."\nEnchant Common : "..enca.."\nEnchant Rare : "..enra.."\nEnchant Legendary : "..enla.."\nTicket : "..tkca,
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
