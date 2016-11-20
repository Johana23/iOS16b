// Proyecto 1: ejercicio 31
var largoPiscina:Double = 40
var anchoPiscina:Double = 13
var velocidadCorriendo:Double = 1
var velocidadNadando: Double = 5

var diagonalPiscina:Double
var TiempoCorriendoPiscina: Double
var TiempoNadandoPiscina: Double
var TiempoMixtoPiscina: Double

var mensajeFinal: String

func TamanoDiagonalPiscina() -> Double{
    return sqrt((largoPiscina * largoPiscina) + (anchoPiscina * anchoPiscina))
}
func TiempoCorriendo() -> Double {
	return (velocidadCorriendo)*(largoPiscina + anchoPiscina)
}

func TiempoNadando(distanciaDiagonalPiscina: Double) -> Double {
	return velocidadNadando *  distanciaDiagonalPiscina
}
	
func TiempoMixto() -> Double {
	return (velocidadCorriendo * largoPiscina) + (velocidadNadando * anchoPiscina)
}


diagonalPiscina = TamanoDiagonalPiscina()
TiempoCorriendoPiscina = TiempoCorriendo()
TiempoNadandoPiscina = TiempoNadando(diagonalPiscina)
TiempoMixtoPiscina = TiempoMixto()

if (TiempoCorriendoPiscina > TiempoNadandoPiscina) {
	if (TiempoCorriendoPiscina > TiempoMixtoPiscina) {
		mensajeFinal = "Corriendo"
	} 
	else {
		mensajeFinal = "Corriendo y despues nadando"
	}
} 
else if (TiempoNadandoPiscina > TiempoMixtoPiscina) {
	mensajeFinal = "Nadando"
} 
else {
	mensajeFinal = "Corriendo y desúes nadando"
}
print("La persona en la esquina \"A\" llega mas rapido a la esquina \"C\" " + mensajeFinal + "\n")
print("Tiempo corriendo: " + String(TiempoCorriendoPiscina))
print("Tiempo nadando: " + String(TiempoNadandoPiscina))
print("Tiempo mixto: " + String(TiempoMixtoPiscina))
