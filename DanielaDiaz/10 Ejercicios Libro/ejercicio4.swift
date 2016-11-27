//
//  main.swift
//  ejercicio4
//
//  Created by isc on 11/26/16.
//  Copyright © 2016 isc. All rights reserved.
//

import Foundation


print("Lista doblemente enlazada")
print("=========================")

// clase del nodo
class Nodo {
    
    // valor del nodo
    var valor:Int32!
    
    // puntero al nodo siguiente
    var next:Nodo!
    
    // puntero al nodo anterior
    var back:Nodo!
    
    // constructor
    init ( valor:Int32 ) {
        self.valor = valor
    }
    
}

// puntero del inicio de la lista
var nodoInicial:Nodo!
// puntero al final de la lista
var nodoFinal:Nodo!


for (var i:Int32 = 1; i <= 16 ; i ++ ) {
    
    var nuevoNodo = Nodo(valor:i)
    
    if ( nodoInicial == nil && nodoFinal == nil ) {
        
        nodoInicial = nuevoNodo
        nodoFinal = nuevoNodo
        
    } else {
        
        nodoFinal.next = nuevoNodo
        nuevoNodo.back = nodoFinal
        nodoFinal = nuevoNodo
        
    }
    
}
print("hacia adelante >>>")
// Recorrido hacia adelante
var nodo = nodoInicial
while nodo != nil {
    print("\(nodo?.valor) ")
    nodo = nodo?.next
}

print("")
print("hacia atrás <<<")
// Recorrido hacia atrás
var nodoBack = nodoFinal
while nodoBack != nil {
    print("\(nodoBack?.valor) ")
    nodoBack = nodoBack?.back
}
