//  Francisco Valdez Perez
// 13211445
// simular que se arroja una moneda cince veces sucesivamente, repetir la secuencia de 5 tiros 100, sacar el numero de ves que no aparecieron 0, 1  hasta 5 aguilas respectivamente

 import Glibc
 import Foundation
 
let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
srand(time)

var contador_monedas = 1

var contador_a0 = 0
var contador_a1 = 0
var contador_a2 = 0
var contador_a3 = 0
var contador_a4 = 0
var contador_a5 = 0

while contador_monedas < 100 {
    //print ("Moneda "+String(contador_monedas))
    contador_monedas += 1;
    
    var contador = 0
    var total = 0
    
        while contador < 5 {
        var a = (rand()%2)
        
        total += Int(a);
        
        contador += 1;
            if a == 1 {
            //print("Aguila")
        }
        else {
            //print("Sol")
        }
    }
    switch total{
    case 0 where total == 0:
        contador_a0 += 1;
    case 1 where total == 1:
        contador_a1 += 1;
    case 2 where total == 2:
        contador_a2 += 1;
    case 3 where total == 3:
        contador_a3 += 1;
    case 4 where total == 4:
        contador_a4 += 1;
    case 5 where total == 5:
        contador_a5 += 1;
    default:
        print ("total "+String(total))
    }
}

print ("total aguila (0 veces) = "+String(contador_a0))
print ("total aguila (1 vez) = " + String(contador_a1))
print ("total aguila (2 veces) = "+String(contador_a2))
print ("total aguila (3 veces) = "+String(contador_a3))
print ("total aguila (4 veces) = "+String(contador_a4))
print ("total aguila (5 veces) = "+String(contador_a5))