//
//  main.swift
//  ejercicio2
//
//  Created by isc on 11/26/16.
//  Copyright © 2016 isc. All rights reserved.
//

import Foundation
func input() -> NSString {
    var keyboard = FileHandle.fileHandleWithStandardInput()
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding:NSUTF8StringEncoding)!
}

var dia = 86400
var hora = 3600
var min = 60
var seg = 1

var total = (d * dia) + (h * hora) + (m * min) + (s * seg)

print ("Ingrese el numero de dias" )
var d = input()
print ("Ingrese el numero de horas ")
var h = input()
print("Ingrese el numero de minutos")
var m = input()
print("Ingrese el numero de segundos")
var s = input()

print("el total de segundos es :")
print(total)


