//  Francisco Valdez Perez
// 13211445
// capitulo 5, ejercicio 1
// simular la caida de una moneda

 import Glibc
 import Foundation
 
let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
srand(time)
var a = (rand()%2)

if a == 1 {
    print("Aguila : " + String(a))
}
else {
    print("Sol : " + String(a))
}