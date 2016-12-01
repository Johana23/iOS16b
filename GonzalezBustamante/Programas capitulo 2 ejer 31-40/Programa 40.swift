// Programa 10: ejercicio 40 capitulo 2
var tiempo: Double = 2
var velocidadInicial: Double = 500
var altura: Double

func encontrarAltura() -> Double{
    return (velocidadInicial * tiempo) - (16 * (tiempo * tiempo))
}

altura = encontrarAltura()

print(altura)