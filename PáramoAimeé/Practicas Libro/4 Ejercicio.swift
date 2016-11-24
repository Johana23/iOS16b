import Fundation

//Para leer el teclado
func input() ->NSString {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding)!
}

println("Introduce el tamaño del cuadrado")
var tam = input().integerValue
value i
value j

for value i=1; i<= tam; ++i
    {
    for (j=1; j <= tam; ++j)

    print("* ", j)
    print("")


    }
}
