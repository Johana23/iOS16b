//  Francisco Valdez Perez
// 13211445
//simular 1,000 tiradas de un dado. Sacar el numero de 7's y 11's

 import Glibc
 import Foundation
 
let time = UInt32(NSDate().timeIntervalSinceReferenceDate)
srand(time)

var caso_7 = 0
var caso_11 = 0


    var contador = 0
    
        while contador < 1000 {
        var a = (rand()%6)
        var b = (rand()%6)
        
        contador += 1;
        var c = a + b;
        // print (String(a))
        // print ("b ="+String(b))
        // print ("c ="+String(c))
        
        if c == 5 {
            caso_7 += 1;
        }
        if c == 9 {
            caso_11 += 1;
        }
        
        
    }
    
print ("Numero de sietes -> "+String(caso_7))
print ("Numero de onces  -> "+String(caso_11))

