import Foundation

var i=1
var sum=0.0
while i <= 1000 {
    if i % 2 == 0 {
} else {
 sum = sum + sqrt(Double(i))
}
    i = i+1
}

print ("total "+String(sum))