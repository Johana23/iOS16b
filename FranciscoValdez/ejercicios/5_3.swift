//  Francisco Valdez Perez
// 13211445
// Capitulo 5, ejercicio 3
// Hacer que la computadora simule los tiros de 6 monedas 1000 veces e imprimir la distribucion

 import Glibc
 import Foundation
 
let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
srand(time)

var contador_monedas = 1


while contador_monedas < 7 {
    print ("Moneda "+String(contador_monedas))
    contador_monedas += 1;
    
    var contador = 0
        while contador < 1000 {
    var a = (rand()%2)
        contador += 1;
            if a == 1 {
            print("Aguila")
        }
        else {
            print("Sol")
        }
    }
}