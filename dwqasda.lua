for i33,v33 in pairs(workspace.__Main.__Enemies.Server:GetChildren()) do
for i222,v222 in pairs(v33:GetChildren()) do
ydasdx = v222
dasujxc = v222:GetAttributes()
dasydcs = v222:GetAttributes()
for model2e1,model2e12 in dasujxc do
for doubleg,doubleb in dasydcs do
if model2e1 == "Scale" and model2e12 == 2 then
if doubleg == "HP" and doubleb > 0 then
v222.Size = Vector3.new(5,5,5)
end
end
end
end
end
end
