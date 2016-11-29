//  Francisco Valdez Perez
// 13211445
//introducir un numero de 4 digitos, determinar si es un ano bisiesto

 import Glibc
 import Foundation
 
let a = readLine(strippingNewline: true)

// var a = 

if a % 4 == 0 && a % 100 == 0 && a % 400 == 0 {
    print (" es bisiesto")
}
else {
    print (" no es bisiesto")
}
