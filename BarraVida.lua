-- Script dentro de StarterGui
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player.PlayerGui)
local healthBar = Instance.new("Frame", screenGui)

healthBar.Size = UDim2.new(0.3, 0, 0.05, 0)
healthBar.Position = UDim2.new(0.35, 0, 0.9, 0)
healthBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid.HealthChanged:Connect(function(health)
    healthBar.Size = UDim2.new(health / humanoid.MaxHealth, 0, 0.05, 0)
end)