local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local plr = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Baseplate",Icon = "rbxassetid://10100928853", HidePremium = true, SaveConfig = true, IntroEnabled = true, IntroText = "Welcome to nz hub"..plr.Name, IntroIcon = "rbxassetid://10100928853"})
OrionLib:MakeNotification({
	Name = "Weclome to nz hub"..plr.Name.."!",
	Content = "Please join the discord server for support [SOON].",
	Image = "rbxassetid://4483345998",
	Time = 5
})



local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://101009288538",
	PremiumOnly = false
})

Main:AddToggle({
	Name = "This is a toggle!",
	Default = false,
	Callback = function(Value)
        _G.Auto = Value
        Spam()
	end    
})
function Spam()
    if _G.Auto == true then
        print("Fuck you")
        wait()
    end    
end
