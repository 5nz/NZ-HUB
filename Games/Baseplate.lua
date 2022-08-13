local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local plr = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Baseplate",Icon = "rbxassetid://10100928853", HidePremium = true, SaveConfig = true, IntroEnabled = true, IntroText = "Welcome to nz hub"..plr.Name, IntroIcon = "rbxassetid://10100928853"})
OrionLib:MakeNotification({
	Name = "Weclome to nz hub"..plr.Name.."!",
	Content = "Please join the discord server for support [SOON].",
	Image = "rbxassetid://4483345998",
	Time = 5
})

getgenv().Auto = false;

local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://10100928853",
	PremiumOnly = false
})

Main:AddToggle({
	Name = "This is a toggle!",
	Default = false,
	Callback = function(Value)
        getgenv().Auto = Value
        print("Auto Tap Is: ", Value)
        if Value then
            Spam()
        end
	end    
})
function Spam()
    spawn(function()
        while getgenv().Auto == true do
            print("Fuck Niggers i dont like them")
            wait()
    end
    end)
end
