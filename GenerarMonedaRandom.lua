-- Script dentro de ServerScriptService
local coinTemplate = game.ServerStorage:WaitForChild("Coin")

while true do
    local newCoin = coinTemplate:Clone()
    newCoin.Position = Vector3.new(math.random(-50, 50), 5, math.random(-50, 50))
    newCoin.Parent = workspace
    wait(5) -- Generar una moneda cada 5 segundos
end