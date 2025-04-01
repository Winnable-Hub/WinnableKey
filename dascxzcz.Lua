function goto(va)
if _G.Settings.Farm_way == "Teleport" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = va
        elseif _G.Settings.Farm_way == "Tween" then
        local DistanceTween = (va.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new(DistanceTween/_G.Settings.Tweenspeed, Enum.EasingStyle.Linear)
        local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = va})
        tween:Play()
        end
    end

for i33,v33 in pairs(workspace.__Main.__Enemies.Server:GetChildren()) do
for i222,v222 in pairs(v33:GetChildren()) do

ydasdx = v222
dasujxc = v222:GetAttributes()
dasydcs = v222:GetAttributes()

for model2e1,model2e12 in dasujxc do
for doubleg,doubleb in dasydcs do
if model2e1 == "HP" and model2e12 > _G.Settings.Health_More then
if doubleg == "Dead" and doubleb == false then
goto(v222.CFrame)
end
end
end
end
end
end
