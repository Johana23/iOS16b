// Programa 9: ejercicio 39 capitulo 2
var edades: [Double] = [25, 35, 47, 51.5, 60]
var presion: Double
var i: Int = 0


while (i < edades.count) {
    presion = 100 * ((1/2) * edades[i])
    print("La presion de la persona " + String(i + 1) + " es: " + String(presion))
    i += 1
}

