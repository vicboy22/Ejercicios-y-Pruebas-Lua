-- Leer un número del usuario y determinar si es par o impar
print("Ingresa un número:")
local numero = io.read("*n")

if numero % 2 == 0 then
    print("El número es par.")
else
    print("El número es impar.")
end