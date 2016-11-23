import Foundation
var a:Int=1
var b:Int=90
var x:Double=0
var seno:Double = 0
var coseno:Double = 0
for index in a...b {
    seno=sin(Double(index))
    print("seno \(index): ",seno)
    coseno=cos(Double(index))
    print("coseno \(index):",coseno)
}