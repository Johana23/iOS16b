// Programa 2: ejercicio 32 capitulo 2
var velocidadBarco: Double = 6
var velocidadInicialCorriente: Double = 0
var tiempoContraCorriente: Double
var distanciaRecorridaContraCorriente: Double
var velocidadCorrienteBarco: Double

func velocidadBarcoCorriente(tiempoConCorr: Double, disRecConCorr: Double) -> Double {
    return disRecConCorr / tiempoConCorr
}

func velocidadCorriente(velCorBar: Double, tiemConCorr: Double) -> Double {
    return (velCorBar * tiemConCorr)/4
}

tiempoContraCorriente = 4
distanciaRecorridaContraCorriente = 12
velocidadCorrienteBarco = velocidadBarcoCorriente(tiempoConCorr: tiempoContraCorriente, disRecConCorr: distanciaRecorridaContraCorriente)
velocidadInicialCorriente = velocidadCorriente(velCorBar: velocidadCorrienteBarco, tiemConCorr: tiempoContraCorriente)
print("La velocidad de la corriente es: " + String(velocidadInicialCorriente))