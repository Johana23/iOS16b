//Para leer el teclado
func input() ->NSString {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding)!
}


println("Ingresa un número")
var num1 = input()

var a=Int(0)
var i
var n

for value i=1; i<(n+1); ++i{
    if var a!=2{
    print("No es primo")
    }
    else{
    print("Si es primo")
    }
}
