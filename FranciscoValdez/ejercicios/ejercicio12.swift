// capitulo 6 ejercicio 12
// Imprimir todos los numeros hasta 1100 que no sean divisibles entre ningun entero menor que 10
import Foundation

var i=1
var sum=0.0
while i <= 1100 {
    if i % 10 == 0 && i>10 && i % 2 == 0{
 //even Number
 //print ("es numero ar")
 print (i)
} else {
 //print ("es numero impar")
 //print (i)
 //sum = sum + sqrt(Double(i))
}
    i = i+1
}
