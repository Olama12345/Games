local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Shy Hub - 🎉RELEASE!🎉] Ice Cream Clicker!", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
---------Execution Events----------

OrionLib:MakeNotification({
	Name = "ANNOUNCEMENT!",
	Content = "Welcome to Shy Hub, the Reworked and new Version! Enjoy your stay and abuse <3 ",
	Image = "rbxassetid://4483345998",
	Time = 15
})

print("Startup Check!")


---------Values----------
getgenv().AutoLick = true 
getgenv().AutoSell = true
getgenv().AutoBuyEnergy = true
getgenv().AutoBuyFlavour = true
getgenv().AutoBuyRank = true


---------Locals----------

local Areas = {
	Spawn = CFrame.new(10.633971214294434, 592.55029296875, 591.2429809570312),
    WorldPortals = CFrame.new(-103.42437744140625, 592.5499877929688, 594.7532958984375)

}


---------Functions----------
function AutoLick()
    spawn(function()
    while getgenv().AutoLick == true do 
        wait(.01)
        local args = {[1] = "Roll2"}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args)) 
end
end)
end
---------#1
function AutoSell()
    spawn(function()
    while getgenv().AutoSell == true do 
        wait(.01)
        local args = {[1] = "Sell2",[2] = workspace.Sells.Lobby}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
end
end)
end
---------#2
function AutoBuyEnergy()
    spawn(function()
    while getgenv().AutoBuyEnergy == true do 
        wait(1)
        loadstring(game:HttpGet("https://pastebin.com/raw/Ws3T12Qj"))()
end
end)
end
---------#3
function AutoBuyFlavour()
    spawn(function()
    while getgenv().AutoBuyFlavour == true do 
        wait(1)
        loadstring(game:HttpGet("https://pastebin.com/raw/D7Ubmwax"))()
end
end)
end
---------#4
function AutoBuyRank()
    spawn(function()
    while getgenv().AutoBuyRank == true do 
        wait(1)
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 1}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 2}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 3}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 4}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 5}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 6}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 7}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 8}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 9}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 10}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 11}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 12}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 13}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
        local args = {[1] = "Shop",[2] = "Rank",[3] = "Buy",[4] = 14}
        game:GetService("ReplicatedStorage").Remote:FireServer(unpack(args))
end
end)
end
---------#5

---------CheckPoint----------
print("Middle Check!")


-- Tabs
local FarmTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false })
---------#1
local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false })
---------#2


---------Buttons----------

---------#1





---------Toggles---------    
FarmTab:AddToggle({
	Name = "Auto Lick",
	Default = false,
	Callback = function(Value)
		getgenv().AutoLick = Value
        AutoLick()
	end})
---------#1
FarmTab:AddToggle({
    Name = "Auto Sell",
    Default = false,
    Callback = function(Value)
        getgenv().AutoSell = Value
        AutoSell()
    end})
---------#2
FarmTab:AddToggle({
    Name = "AutoBuyEnergy",
    Default = false,
    Callback = function(Value)
        getgenv().AutoBuyEnergy = Value
        AutoBuyEnergy()
    end})
---------#3
FarmTab:AddToggle({
    Name = "AutoBuyFlavour",
    Default = false,
    Callback = function(Value)
        getgenv().AutoBuyFlavour = Value
        AutoBuyFlavour()
    end})
---------#4
FarmTab:AddToggle({
    Name = "AutoBuyRanks",
    Default = false,
    Callback = function(Value)
        getgenv().AutoBuyRank = Value
        AutoBuyRank()
    end})
---------#5


---------Dropdowns---------  
FarmTab:AddDropdown({
	Name = "Teleport Select",
	Default = "",
	Options = {"Spawn", "WorldPortals" },
	Callback = function(Value)
		game.Players.LocalPlayer.Character:PivotTo(Areas[Value])
	end})








---------Misc Tabs---------    

































---------Execution Events----------



loadstring(game:HttpGet("https://soggy-ware.cf/Modules/AntiAFK.lua"))()
print("Everything is working fine!")

---------Total End----------
OrionLib:Init()
