-- Crear una tabla con frutas
local frutas = {"manzana", "naranja", "plátano"}

-- Recorrer la tabla e imprimir cada fruta
for i, fruta in ipairs(frutas) do
    print("Fruta #"..i..": "..fruta)
end