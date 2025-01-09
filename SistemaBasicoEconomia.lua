-- Script dentro de ServerScriptService
local players = game:GetService("Players")

players.PlayerAdded:Connect(function(player)
    local leaderstats = Instance.new("Folder", player)
    leaderstats.Name = "leaderstats"

    local coins = Instance.new("IntValue", leaderstats)
    coins.Name = "Coins"
    coins.Value = 0
end)