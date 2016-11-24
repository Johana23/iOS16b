import Foundation

func input() ->NSString {
    var keyboard = NSFileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding)!
}

print("Convertir ºC  a  ºF")
print("Ingresa grados centigrados")

var c, f: Double
var a = input().integerValue
var f = var a = input().integerValue
var c=(f-32)*5/9
print(f + "ºF equivale  a " + c + "ºC")
