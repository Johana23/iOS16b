//  Francisco Valdez Perez
// 13211445
// capitulo 6, ejercicio 20
// dada una lista de numeros reordenarlda

import Glibc
import Foundation

var someInts = [Int]()
var contador = 0



let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
srand(time)

while contador < 30{
    var a = (rand()%100)
    someInts.append (Int(a))
    contador += 1;
}


for algo in someInts.sorted() {
    print("\(algo)")
}

