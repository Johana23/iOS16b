//  Francisco Valdez Perez
// 13211445
//simular 1,000 tiradas de un dado. Contar el numero de veces que sale 3

 import Glibc
 import Foundation
 
let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
srand(time)

var contador_a0 = 0
var contador_a1 = 0
var contador_a2 = 0
var contador_a3 = 0
var contador_a4 = 0
var contador_a5 = 0


    var contador = 0
    
        while contador < 1000 {
        var a = (rand()%6)
        // print (String(a))
        contador += 1;
        
            switch a {
            case 0 where a == 0:
                contador_a0 += 1;
            case 1 where a == 1:
                contador_a1 += 1;
            case 2 where a == 2:
                contador_a2 += 1;
            case 3 where a == 3:
                contador_a3 += 1;
            case 4 where a == 4:
                contador_a4 += 1;
            case 5 where a == 5:
                contador_a5 += 1;
            default:
                print ("total "+String(a))
            }
    }


// print ("lado 1 = "+String(contador_a0))
// print ("lado 2 = "+String(contador_a1))
print ("lado 3 = "+String(contador_a2))
// print ("lado 4 = "+String(contador_a3))
// print ("lado 5 = "+String(contador_a4))
// print ("lado 6 = "+String(contador_a5))