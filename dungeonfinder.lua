if dungeoncanjoin == nil then
local dungeoncanjoin = false
end

local dungeonmap = workspace.__Main.__Dungeon.Dungeon:GetAttributes()

for i,v in pairs(dungeonmap) do
if i == "Dungeon" and v == _G.Settings.Dungeon_Selection then
print(v)
dungeoncanjoin = true
end
end
