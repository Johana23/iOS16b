import Foundation

var i=1
var sum=0.0
while i <= 1100 {
    if i % 10 == 0 && i>10 && i % 2 == 0{
 print ("es numero par", i)
} else {
print ("es numero impar", i)
sum = sum + sqrt(Double(i))
}
    i = i+1
}