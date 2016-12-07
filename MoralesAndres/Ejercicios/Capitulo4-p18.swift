// capitulo 6 ejercicio 11
// Calcular la suma de las raices cuadradas de los numeros impares entre 1 y 1000
import Foundation

var i=1
var sum=0.0
while i <= 1000 {
    if i % 2 == 0 {
 //even Number
 //print ("es numero ar")
 //print (i)
} else {
 //print ("es numero impar")
 //print (i)
 sum = sum + sqrt(Double(i))
}
    i = i+1
}

print ("total "+String(sum))
