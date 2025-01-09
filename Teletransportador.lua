-- Script dentro de un Part
local teleportPart = script.Parent
local destination = game.Workspace:WaitForChild("Destination")

teleportPart.Touched:Connect(function(hit)
    local character = hit.Parent
    if character and character:FindFirstChild("Humanoid") then
        character:SetPrimaryPartCFrame(destination.CFrame)
        print("Jugador teletransportado")
    end
end)