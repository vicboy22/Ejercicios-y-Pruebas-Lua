-- Script dentro del coche
local vehicleSeat = script.Parent:WaitForChild("VehicleSeat")

vehicleSeat.Changed:Connect(function(property)
    if property == "Throttle" then
        print("Velocidad: "..vehicleSeat.Throttle)
    elseif property == "Steer" then
        print("Direcci�n: "..vehicleSeat.Steer)
    end
end)