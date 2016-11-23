import Foundation
var grados:Double = 10
var pi:Double = 3.1416
var operacion:Double = 0
while grados <= 360 {
	print("grados: ",grados) 
	operacion = grados*(pi/180)
	print("radianes: ",operacion)
	grados+=10
}
