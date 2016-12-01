// Programa 5: ejercicio 35 capitulo 2

var s: Double = 1
var g: Double = s + (s * 0.25)
var r: Double = g + (g * 0.5)
var tiempoTotalDias = 15.0
var _trabajoTotal: Double
var _trabajoSam: Double
var _trabajoGui: Double
var _trabajoRob: Double
var _tiempoSam: Double = 0
var _tiempoGui: Double = 0
var _tiempoRob: Double = 0

func TrabajoTotal() -> Double{
    return (s + g + r)
}

func TrabajoDia(Trabajador: String) -> Double{
    var trabajo: Double
    if(Trabajador == "s"){
        trabajo = s/tiempoTotalDias
    }
    else if(Trabajador == "g"){
        trabajo = g/tiempoTotalDias
    }
    else{
        trabajo = r/tiempoTotalDias
    }
    return trabajo
}
_trabajoTotal = TrabajoTotal()

//Samuel
_trabajoSam = 0

while _trabajoSam < _trabajoTotal {
    _trabajoSam += TrabajoDia(Trabajador: "s")
    _tiempoSam += 1
}

//Guillermo
_trabajoGui = 0

while _trabajoGui < _trabajoTotal {
    _trabajoGui += TrabajoDia(Trabajador: "g")
    _tiempoGui += 1
}

//Roberto
_trabajoRob = 0

while _trabajoRob < _trabajoTotal {
    _trabajoRob += TrabajoDia(Trabajador: "r")
    _tiempoRob += 1
}

print("Tiempo que le tomo a Samuel: " + String(_tiempoSam))
print("Tiempo que le tomo a Guillermo: " + String(_tiempoGui))
print("Tiempo que le tomo a Roberto: " + String(_tiempoRob))