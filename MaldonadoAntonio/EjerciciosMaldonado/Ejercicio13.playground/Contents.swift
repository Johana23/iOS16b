func theory(a:Int, b:Int) -> (Int,Int){
    var theorem = a > b ? a:b
    var sum = a + b
    return (sum, theorem)
}

var total = theory(a:25, b:25)

total.0
total.1

func theory2(total:Int, c:Int) -> (Int,Int){
    var theorem2 = total > c ? total:c
    var sum = total + c
    return (sum, theorem2)
}
total.1
total.0

var text = "tres posibles medidas de cada lado: 25, 25, 25"
var text2 = "tres posibles medidas de cada lado: 50, 50, 50"
