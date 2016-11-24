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
var c = var a = input().integerValue
var f=(c*9/5)+32
print(c+"ºC equivale a "+f+"ºF")