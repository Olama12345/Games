local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Shy Hub - [❤️EVENT] Pet Trading Card Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
---------Execution Events----------

OrionLib:MakeNotification({
	Name = "ANNOUNCEMENT!",
	Content = "Welcome to Shy Hub, the Reworked and new Version! Enjoy your stay and abuse <3 ",
	Image = "rbxassetid://4483345998",
	Time = 15
})

print("Startup Check!")


---------Values----------
getgenv().AutoClick = true 
getgenv().AutoRebirth = true 


---------Locals----------

local Areas = {
	Spawn = CFrame.new(197.88446044921875, 0.8807976245880127, -134.03268432617188),
	CherryBlossom = CFrame.new(-105.66954803466797, -7.615559101104736, -117.17710876464844),
    Beach = CFrame.new(-377.03802490234375, -7.615560054779053, -103.56939697265625),
    Snow = CFrame.new(-610.7783813476562, -7.615556240081787, -106.26283264160156),
    Cave1 = CFrame.new(-883.493896484375, -7.61555814743042, -129.9694061279297),
    Cave2 = CFrame.new(-1111.457275390625, -7.615560054779053, -126.42688751220703),
    Volcano = CFrame.new(-1379.8603515625, -7.615560054779053, -119.06864166259766),
    Desert2world = CFrame.new(129.75250244140625, -7.615560054779053, 3155.36083984375),
    Oasis2world = CFrame.new(-132.1985321044922, -5.404441833496094, 3164.08642578125),
    DesertTown2world = CFrame.new(-395.6152038574219, -7.615560054779053, 3164.414794921875),
    Temple2world = CFrame.new(-653.6923828125, -7.615559101104736, 3157.181884765625),
    MageVillage3world = CFrame.new(147.45620727539062, -7.615560054779053, 6013.41015625)

}


---------Functions----------
function AutoClick()
    spawn(function()
    while getgenv().AutoClick == true do 
        wait(.01)
    game:GetService("ReplicatedStorage").Events.Click:FireServer()
end
end)
end
---------#1
function AutoRebirth()
    spawn(function()
    while getgenv().AutoRebirth == true do 
        wait(10)
    game:GetService("ReplicatedStorage").Functions.BuyRebirth:InvokeServer()
end
end)
end
---------#2





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
	Name = "Auto Open Packs",
	Default = false,
	Callback = function(Value)
		getgenv().AutoClick = Value
        AutoClick()
	end})
---------#1
FarmTab:AddToggle({
    Name = "Auto Rebirth",
    Default = false,
    Callback = function(Value)
        getgenv().AutoRebirth = Value
        AutoRebirth()
    end})




---------Dropdowns---------  
FarmTab:AddDropdown({
	Name = "Teleport Select",
	Default = "Spawn",
	Options = {"Spawn", "CherryBlossom", "Beach", "Snow", "Cave1", "Cave2", "Volcano", "Desert2world", "Oasis2world", "DesertTown2world", "Temple2world", "MageVillage3world"},
	Callback = function(Value)
		game.Players.LocalPlayer.Character:PivotTo(Areas[Value])
	end})








---------Misc Tabs---------    

































---------Execution Events----------



loadstring(game:HttpGet("https://soggy-ware.cf/Modules/AntiAFK.lua"))()
print("Everything is working fine!")

---------Total End----------
OrionLib:Init()
