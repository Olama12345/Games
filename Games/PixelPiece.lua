
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Shy Hub - Pixel Piece", "BloodTheme")

--AutoFarm
local Autofarm = Window:NewTab("Autofarm")
local AutofarmSection = Autofarm:NewSection("Autofarm")


-- Sword Stat Farm
AutofarmSection:NewToggle("Auto Fast Attack", "Block while activated and ur invincible lol", function(state)
    if state then
      
        getgenv().AutoSlash = true 
        spawn(function()
            while AutoSlash == true do 
                wait(0.01)
        local args = {[1] = {["TypeInput"] = "Combat",["Type"] = "Click"}}
        game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers.ZShyOverPunchZ.InputEvent.inputFunc:InvokeServer(unpack(args))
        end
        end)

    else
        
        getgenv().AutoSlash = false 
        spawn(function()
            while AutoSlash == true do 
                wait(0.01)
        local args = {[1] = {["TypeInput"] = "Combat",["Type"] = "Click"}}
        game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers.ZShyOverPunchZ.InputEvent.inputFunc:InvokeServer(unpack(args))
        end
        end)

    end
end)




--Alt Dupe
local AltDupe = Window:NewTab("Quest Accept")
local AltDupeSection = AltDupe:NewSection("Questus Acceptus Insta")


AltDupeSection:NewButton("Lvl 15", "", function()
    local args = {[1] = {["Call"] = "Dialog",["NPCIsland"] = "Shells Town",["NPCName"] = "Furnton",["MessageType"] = "Finish"}}
    game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers.ZShyOverPunchZ.NPCInteract:InvokeServer(unpack(args))
end)

AltDupeSection:NewButton("Lvl 30", "", function()
    local args = {[1] = {["Call"] = "Dialog",["NPCIsland"] = "Shells Town",["NPCName"] = "Namtar",["MessageType"] = "Finish"}}
game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers.ZShyOverPunchZ.NPCInteract:InvokeServer(unpack(args))
end)


AltDupeSection:NewButton("Lvl 35", "", function()
local args = {[1] = {["Call"] = "Dialog",["NPCIsland"] = "Orange Town",["NPCName"] = "Laft",["MessageType"] = "Finish"}}
game:GetService("ReplicatedStorage").Files.Remotes.SinglePlayers.ZShyOverPunchZ.NPCInteract:InvokeServer(unpack(args))
end)





--Fast Travel
local FastTravel = Window:NewTab("Fast Travel")
local FastTravelSection = AFastTravel:NewSection("Fastus Travelus")
