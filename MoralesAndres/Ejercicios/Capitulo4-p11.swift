/*
21. Dada una lista de 30 números, reordenarlos en orden ascendente.
Vargas Bañuelos Juan Samuel
*/

import Foundation

print("Introduzca los numeros a orderan separados por comas, sin espacios")
var entrada = readLine(strippingNewline: true)!

// Divide la cadena en un arreglo
var numeros_s = entrada.characters.split{ $0 == "," }.map(String.init)

// Convierte a enteros
var numeros = [Int]()
for numero in numeros_s {
	numeros.append(Int(numero)!)
}

// Ordena
numeros.sort()

print(numeros)
