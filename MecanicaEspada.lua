-- Script dentro de la espada (Tool)
local tool = script.Parent

tool.Activated:Connect(function()
    print("Espada activada")

    -- Detectar enemigos cercanos
    local character = tool.Parent
    local humanoid = character:FindFirstChild("Humanoid")
    if humanoid then
        humanoid:TakeDamage(10) -- Hacer 10 puntos de daño
    end
end)