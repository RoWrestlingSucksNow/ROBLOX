-- // Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RoWrestlingSucksNow/ROBLOX/main/GymOfTragedy/UILibrary.lua", true))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RoWrestlingSucksNow/ROBLOX/main/GymOfTragedy/API.lua"))()
repeat wait() until GOTAPI

-- // Anti-Cheat Bypass
GOTAPI.BypassAntiCheat()

-- // Misc Tab
local Misc = Library:CreateTab("Misc", "Misc Functions", true)

-- // Pyros Tab
local Pyros = Library:CreateTab("Pyros", "Pyro Functions", true)


Misc:CreateButton("Remove Gym", function()
GOTAPI.RemoveGym()
end)

Misc:CreateButton("Play all Sounds", function()
GOTAPI.SoundFilter()
end)

Pyros:CreateButton("Right Stage Pyros", function()
GOTAPI.Pyro("RightStage")
end)

Pyros:CreateButton("Big Bang Pyros", function()
GOTAPI.Pyro("BigBang")
end)

Pyros:CreateButton("Ramp Pyros", function()
GOTAPI.Pyro("RampPyro")
end)

Pyros:CreateButton("Corner Pyros", function()
GOTAPI.Pyro("CornerPyro")
end)

Pyros:CreateButton("Mid Pyros", function()
GOTAPI.Pyro("MidPyro")
end)

Pyros:CreateButton("Intro Pyros", function()
GOTAPI.Pyro("IntroPyro")
end)
