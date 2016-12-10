import Glibc

//dada y = 3x^2+4x-1 evaluar en x: -10..2



func square(number: Int) -> Int {
    
return number * number
}



for x in -10...2{
    
print("X : \(x) Y: \((3 * square(number: x)) + (4 * x) - 1)")
}
