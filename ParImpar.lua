-- Leer un n�mero del usuario y determinar si es par o impar
print("Ingresa un n�mero:")
local numero = io.read("*n")

if numero % 2 == 0 then
    print("El n�mero es par.")
else
    print("El n�mero es impar.")
end