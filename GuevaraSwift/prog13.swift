//calcular e imprimir la distancia de frenado para velocidades de 40km\h a 60km\h



import Glibc



for Ve in 40...60{


var C = 1.8 * pow(Double(Ve),2)


print("Para \(Ve) km\\h es \(C) la distancia de frenado en Celsius")


}
