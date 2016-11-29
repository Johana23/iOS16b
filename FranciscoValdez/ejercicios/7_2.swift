//  Francisco Valdez Perez
// 13211445
// capitulo 7, ejercicio 2
// introducir un numero y determinar si es primo

import Glibc
import Foundation


let dato = readLine(strippingNewline: true)

var a = Int(dato)

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
