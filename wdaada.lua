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

function yessirs()
    for i2,v2 in pairs(workspace.__Main.__Enemies.Server:GetChildren()) do
    scale = v2:GetAttributes()
    bigass = v2:GetAttributes()
        for i,v in scale do
        if i == "Scale" and v == 2.5 then
        for j,d in bigass do
        if j == "Dead" and d == false then
            return false
    end
    end
    end
    end
    end
    return true
end

cf = CFrame.new(3841.43042, 60.1089211, 3058.92651, 0.679291308, 3.0728728e-08, 0.733868718, 5.63038839e-07, 1, -5.63038157e-07, -0.733868718, 7.95663539e-07, 0.679291308)

local Distance7 = (cf.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

if _G.Settings.Auto_Beru then
if Distance7 < 500 then
if not yessirs() then
for i2,v2 in pairs(workspace.__Main.__Enemies.Server:GetChildren()) do
    scales = v2:GetAttributes()
    bigasss = v2:GetAttributes()
        for ii,vv in scales do
        if ii == "Scale" and vv == 2.5 then
        for jj,dd in bigasss do
        if jj == "Dead" and dd == false then
            goto(v2.CFrame)
    end
    end
    end
    end
    end
elseif yessirs() then
for i2,v2 in pairs(workspace.__Main.__Enemies.Server:GetChildren()) do
    scales = v2:GetAttributes()
    bigasss = v2:GetAttributes()
        for ii,vv in scales do
        if ii == "Scale" then
        if vv == 3.5 or vv == 2.85 then
        for jj,dd in bigasss do
        if jj == "Dead" and dd == false then
            goto(v2.CFrame)
    end
    end
    end
    end
    end
    end
end
elseif Distance7 > 500 then
goto(cf)
end
end
