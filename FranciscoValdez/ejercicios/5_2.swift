//  Francisco Valdez Perez
// 13211445
// capitulo 5 ejercicio 2
// simular la caida de una moneda 100 veces e imprimir el resultado

 import Glibc
 import Foundation
 
let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
srand(time)

var contador = 0

while contador < 100 {
var a = (rand()%2)
    contador += 1;
        if a == 1 {
        print("Aguila")
    }
    else {
        print("Sol")
    }
}