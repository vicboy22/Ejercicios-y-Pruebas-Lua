-- Script dentro de un bot�n
local button = script.Parent
local door = game.Workspace:WaitForChild("Door")

button.ClickDetector.MouseClick:Connect(function(player)
    print(player.Name.." presion� el bot�n")
    door.Transparency = 0.5
    door.CanCollide = false
    wait(3) -- Esperar 3 segundos
    door.Transparency = 0
    door.CanCollide = true
end)