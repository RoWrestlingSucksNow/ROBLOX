loadstring(game:HttpGet("https://raw.githubusercontent.com/banbuskox/Scripts/master/Notification%20Creation%20Function%20Create"))()
if (getgenv().GOTAPI) then return getgenv().GOTAPI end


GOTAPI.BypassAntiCheat = function()
 local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function

if not protect then
protect = function(f) return f end
end

setreadonly(mt, false)
mt.__namecall = protect(function(self, ...)
local method = getnamecallmethod()
if method == "Kick" then
wait(9e9)
return
end
return old(self, ...)
end)
hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() wait(9e9) end))
for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
if v.Name == "EDEvents" or v.Name == "BigCleanEvents" then
v:Destroy()
notif("Bypass Message", "Found Anti-Cheat ("..v.Name..") and Deleted!", 3)
wait(1)
end
end
end

GOTAPI.BigClean = function()
if game.ReplicatedStorage:FindFirstChild("EDEvents") or game.ReplicatedStorage:FindFirstChild("BigCleanEvents") then
notif("Bypass Message", "Please Click on 'Bypass Anti-Cheat' to Proceed to this.", 3)
else
if game.Players.LocalPlayer.Backpack:FindFirstChild("Clean") then
for i,v in pairs(getconnections(Game.Players.LocalPlayer.Backpack.Clean.Handle.Changed)) do
v:Disable()
wait()
end
game.Players.LocalPlayer.Backpack:FindFirstChild("Clean").Handle.Size = Vector3.new(2,2,2)
notif("Clean Message", "You can now equip Clean!", 3)
end
end
end

GOTAPI.RemoveGym = function()
if game.Workspace:FindFirstChild("MatchStipulations") then
for i,v in pairs(game:GetDescendants()) do
if v.Name ~= "MatchStipulations" then
game.Workspace.MatchStipulations.SpawnDelete:FireServer("Destroy",v.Name)
end
end
end
end

GOTAPI.Pyro = function(Type)
if Type == "LeftStage" then
workspace.Pyro:FireServer("LeftStagePyro1","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro2","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro3","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro4","Red")

if Type == "RightStage" then
workspace.Pyro:FireServer("RightStagePyro1","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro2","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro3","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro4","Red")

if Type == "BigBang" then
workspace.Pyro:FireServer("BigBangPyro1","Blue")
workspace.Pyro:FireServer("BigBangPyro2","Blue")
workspace.Pyro:FireServer("BigBangPyro3","Blue")
workspace.Pyro:FireServer("BigBangPyro4","Blue")
workspace.Pyro:FireServer("BigBangPyro5","Blue")
workspace.Pyro:FireServer("BigBangPyro6","Blue")
workspace.Pyro:FireServer("BigBangPyro7","Blue")
workspace.Pyro:FireServer("BigBangPyro8","Blue")

if Type == "RampPyro" then
workspace.Pyro:FireServer("RampPyro1","White")
wait(0.13)
workspace.Pyro:FireServer("RampPyro2","White")

if Type == "CornerPyro" then
workspace.Pyro:FireServer("CornerPyro1","White")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro2","White")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro3","White")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro4","White")

if Type == "MidPyro" then
workspace.Pyro:FireServer("MidPyro1","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro2","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro3","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro4","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro5","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro6","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro7","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro8","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro9","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro10","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro11","White")

if Type == "IntroPyro" then
workspace.Pyro:FireServer("LeftStagePyro1","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro2","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro3","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro4","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro1","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro2","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro3","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro4","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro4","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro3","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro2","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro1","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro4","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro3","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro2","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro1","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro1","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro2","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro3","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro4","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro1","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro2","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro3","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro4","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro4","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro3","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro2","Red")
wait(0.13)
workspace.Pyro:FireServer("RightStagePyro1","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro4","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro3","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro2","Red")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro1","Red")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro1","Blue")
workspace.Pyro:FireServer("BigBangPyro2","Blue")
workspace.Pyro:FireServer("BigBangPyro3","Blue")
workspace.Pyro:FireServer("BigBangPyro4","Blue")
workspace.Pyro:FireServer("BigBangPyro5","Blue")
workspace.Pyro:FireServer("BigBangPyro6","Blue")
workspace.Pyro:FireServer("BigBangPyro7","Blue")
workspace.Pyro:FireServer("BigBangPyro8","Blue")
wait(0.35)
workspace.Pyro:FireServer("BigBangPyro1","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro2","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro3","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro4","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro5","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro6","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro7","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro8","White")
wait(0.4)
workspace.Pyro:FireServer("BigBangPyro8","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro7","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro6","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro5","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro4","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro3","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro2","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro1","White")
wait(0.5)
workspace.Pyro:FireServer("BigBangPyro1","Green")
workspace.Pyro:FireServer("BigBangPyro2","Green")
workspace.Pyro:FireServer("BigBangPyro3","Green")
workspace.Pyro:FireServer("BigBangPyro4","Green")
workspace.Pyro:FireServer("BigBangPyro5","Green")
workspace.Pyro:FireServer("BigBangPyro6","Green")
workspace.Pyro:FireServer("BigBangPyro7","Green")
workspace.Pyro:FireServer("BigBangPyro8","Green")
wait(0.5)
workspace.Pyro:FireServer("BigBangPyro1","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro2","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro3","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro4","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro5","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro6","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro7","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro8","White")
wait(0.4)
workspace.Pyro:FireServer("BigBangPyro8","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro7","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro6","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro5","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro4","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro3","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro2","White")
wait(0.13)
workspace.Pyro:FireServer("BigBangPyro1","White")
wait(0.5)
workspace.Pyro:FireServer("RampPyro1","White")
wait(0.13)
workspace.Pyro:FireServer("RampPyro2","White")
wait(0.13)
workspace.Pyro:FireServer("RampPyro1","Red")
workspace.Pyro:FireServer("RampPyro2","Blue")
wait(0.23)
workspace.Pyro:FireServer("RampPyro1","Yellow")
workspace.Pyro:FireServer("RampPyro2","Orange")
wait(0.23)
workspace.Pyro:FireServer("RampPyro1","Purple")
workspace.Pyro:FireServer("RampPyro2","Green")
wait(0.23)
workspace.Pyro:FireServer("RampPyro1","White")
workspace.Pyro:FireServer("RampPyro2","White")
wait(0.23)
workspace.Pyro:FireServer("RampPyro1","Red")
workspace.Pyro:FireServer("RampPyro2","Red")
wait(0.23)
workspace.Pyro:FireServer("RampPyro1","Blue")
workspace.Pyro:FireServer("RampPyro2","Blue")
wait(0.23)
workspace.Pyro:FireServer("RampPyro1","Yellow")
workspace.Pyro:FireServer("RampPyro2","Yellow")
wait(0.23)
workspace.Pyro:FireServer("CornerPyro1","White")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro2","White")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro3","White")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro4","White")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro1","Red")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro2","Red")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro3","Red")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro4","Red")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro1","Blue")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro2","Blue")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro3","Blue")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro4","Blue")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro1","Yellow")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro2","Yellow")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro3","Yellow")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro4","Yellow")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro1","Orange")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro2","Orange")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro3","Orange")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro4","Orange")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro1","Purple")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro2","Purple")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro3","Purple")
wait(0.18)
workspace.Pyro:FireServer("CornerPyro4","Purple")
wait(0.45)
workspace.Pyro:FireServer("CornerPyro1","White")
workspace.Pyro:FireServer("CornerPyro2","White")
workspace.Pyro:FireServer("CornerPyro3","White")
workspace.Pyro:FireServer("CornerPyro4","White")
wait(0.25)
workspace.Pyro:FireServer("CornerPyro1","White")
workspace.Pyro:FireServer("CornerPyro2","White")
workspace.Pyro:FireServer("CornerPyro3","White")
workspace.Pyro:FireServer("CornerPyro4","White")
wait(0.55)
workspace.Pyro:FireServer("RampPyro1","White")
workspace.Pyro:FireServer("RampPyro2","White")
wait(0.23)
workspace.Pyro:FireServer("BigBangPyro1","Green")
workspace.Pyro:FireServer("BigBangPyro2","Green")
workspace.Pyro:FireServer("BigBangPyro3","Green")
workspace.Pyro:FireServer("BigBangPyro4","Green")
workspace.Pyro:FireServer("BigBangPyro5","Green")
workspace.Pyro:FireServer("BigBangPyro6","Green")
workspace.Pyro:FireServer("BigBangPyro7","Green")
workspace.Pyro:FireServer("BigBangPyro8","Green")
wait(0.55)
workspace.Pyro:FireServer("MidPyro1","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro2","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro3","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro4","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro5","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro6","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro7","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro8","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro9","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro10","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro11","White")
wait(0.2)
workspace.Pyro:FireServer("MidPyro11","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro10","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro9","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro8","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro7","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro6","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro5","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro4","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro3","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro2","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro1","White")
wait(0.1)
workspace.Pyro:FireServer("MidPyro1","White")
workspace.Pyro:FireServer("MidPyro2","White")
workspace.Pyro:FireServer("MidPyro3","White")
workspace.Pyro:FireServer("MidPyro4","White")
workspace.Pyro:FireServer("MidPyro5","White")
workspace.Pyro:FireServer("MidPyro6","White")
workspace.Pyro:FireServer("MidPyro7","White")
workspace.Pyro:FireServer("MidPyro8","White")
workspace.Pyro:FireServer("MidPyro9","White")
workspace.Pyro:FireServer("MidPyro10","White")
workspace.Pyro:FireServer("MidPyro11","White")
wait(0.13)
workspace.Pyro:FireServer("LeftStagePyro1","White")
workspace.Pyro:FireServer("LeftStagePyro2","White")
workspace.Pyro:FireServer("LeftStagePyro3","White")
workspace.Pyro:FireServer("LeftStagePyro4","White")
workspace.Pyro:FireServer("RightStagePyro1","White")
workspace.Pyro:FireServer("RightStagePyro2","White")
workspace.Pyro:FireServer("RightStagePyro3","White")
workspace.Pyro:FireServer("RightStagePyro4","White")
wait(0.15)
workspace.Pyro:FireServer("LeftStagePyro1","White")
workspace.Pyro:FireServer("LeftStagePyro2","White")
workspace.Pyro:FireServer("LeftStagePyro3","White")
workspace.Pyro:FireServer("LeftStagePyro4","White")
workspace.Pyro:FireServer("RightStagePyro1","White")
workspace.Pyro:FireServer("RightStagePyro2","White")
workspace.Pyro:FireServer("RightStagePyro3","White")
workspace.Pyro:FireServer("RightStagePyro4","White")
wait(0.15)
workspace.Pyro:FireServer("LeftStagePyro1","White")
workspace.Pyro:FireServer("LeftStagePyro2","White")
workspace.Pyro:FireServer("LeftStagePyro3","White")
workspace.Pyro:FireServer("LeftStagePyro4","White")
workspace.Pyro:FireServer("RightStagePyro1","White")
workspace.Pyro:FireServer("RightStagePyro2","White")
workspace.Pyro:FireServer("RightStagePyro3","White")
workspace.Pyro:FireServer("RightStagePyro4","White")
wait(0.15)
end
end
end
end
end
end
end
end

GOTAPI.SoundFilter = function()
if game.SoundService.RespectFilteringEnabled == false then
for i,v in pairs(game.Workspace:GetDescendants()) do
if v:IsA("Sound") then
v:Play()
end
end
end
end

settingsFolder:GuiSettings()

local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function

if not protect then
protect = function(f) return f end
end

setreadonly(mt, false)
mt.__namecall = protect(function(self, ...)
local method = getnamecallmethod()
if method == "Kick" then
wait(9e9)
return
end
return old(self, ...)
end)
hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() wait(9e9) end))
