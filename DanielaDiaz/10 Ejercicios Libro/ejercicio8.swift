//
//  main.swift
//  ejercicio8
//
//  Created by isc on 11/26/16.
//  Copyright © 2016 isc. All rights reserved.
//

import Foundation

let numeros = [ " 1234567" ]

var numinvertido = sort(numeros) { $0 > $1 }

print("los numeros son")
print(numeros)
print("Invertido ")

print(numinvertido)
