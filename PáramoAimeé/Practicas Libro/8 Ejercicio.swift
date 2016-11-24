import Foundation

func input() ->NSString {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding)!
}

println("Introduce el año")
var a = input().integerValue

let resultado=(9.460.800.000.000 * a)

print ("La distancia que recorre la luz el año tecleado es":, resultado)
