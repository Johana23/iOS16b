// Programa 3: ejercicio 33 capitulo 2
var velocidadPersonaA: Double = 5
var velocidadPersonaB: Double = 8
var tiempo: Double

func distanciaRecorridaPersonaA(tiem: Double) -> Double{
    return tiem * velocidadPersonaA
}

func distanciaRecorridaPersonaB(tiem: Double) -> Double{
    return tiem * velocidadPersonaB
}

tiempo = 24

print("Distancia recorrida por la persona A:" + String(distanciaRecorridaPersonaA(tiem: tiempo)))
print("Distancia recorrida por la persona B:" + String(distanciaRecorridaPersonaB(tiem: tiempo)))