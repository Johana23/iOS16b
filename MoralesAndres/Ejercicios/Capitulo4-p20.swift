import Foundation
var x:[Double]=[30,45,60,90]
var seno:Double = 0
var coseno:Double = 0
for index in 0...3 {
    seno=sin(x[index])
    print("seno \(x[index]): ",seno)
    coseno=cos(x[index])
    print("coseno: \(x[index])",coseno)
}
