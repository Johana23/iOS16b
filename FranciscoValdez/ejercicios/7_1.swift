//  Francisco Valdez Perez
// 13211445
// capitulo 7, ejercicio 1
// encontrar todos los numeros primos entre 2 y 400

import Glibc
import Foundation

var someInts = [Int]()
var contador = 2



let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
srand(time)

while contador < 400{
    var a = contador

    var esPrimo = true
    var i = 2
    
    while i < a {
        if a % i == 0 {
            esPrimo = false
        }
        i += 1;
    }
    
    if esPrimo == true{
        print (String(a)+" es primo")    
    }
    else {
        print (String(a)+" no es primo")
    }
    
    contador += 1;
}
