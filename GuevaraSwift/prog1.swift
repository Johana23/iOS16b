import Glibc

//trazar la curva y = 4x^2 -5x + 2 Trazar x:-3..5 

func square(number: Int) -> Int {
    
return number * number
}



for x in -3...5{
    
print("X : \(x) Y: \((4 * square(number: x)) - (5 * x) + 2)")

}
