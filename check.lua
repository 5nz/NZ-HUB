if not game:IsLoaded() then game.Loaded:Wait() end
--anti Kick
local GC = getconnections or get_signal_cons
if GC then
print("good exploit:)")
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    print("ass exploit")
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end

------------------------------------------------------------------------------------------------------------------------


local URL = "https://raw.githubusercontent.com/5nz/NZ-HUB/main/Games/"
local games = {
    [4483381587] = "Baseplate"
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(URL..(name or "Universal")..".lua", true))()