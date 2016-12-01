// Programa 4: ejercicio 34 capitulo 2
var parejasPajarosInicial: Int = 5
var huevecillosPorPareja: Int = 3
var huevecillosTotal: Int = 0
var parejasTotal: Int
var periodos: Int = 0

func PajarosPorPeriodo(Pajaros: Int, Huevos: Int) -> Int{
    return Pajaros * Huevos
}

func HuevecillosPorPeriodo(Pajaros: Int) -> Int{
    return Pajaros*3
}

parejasTotal = parejasPajarosInicial
huevecillosTotal = huevecillosPorPareja * parejasTotal
print("Inicio Huevos: " + String(huevecillosTotal))
print("Inicio Parejas: " + String(parejasTotal) + "\n")

huevecillosTotal = huevecillosPorPareja

while periodos < 5 {
    parejasTotal = PajarosPorPeriodo(Pajaros: parejasTotal, Huevos: huevecillosTotal) / 2
    periodos += 1
}


print("El numero total de pajaros despues de 5 años es: " + String(parejasTotal))