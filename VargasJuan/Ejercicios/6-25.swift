/*
25. Leer los componentes de dos vectores bidimensionales. Determinar si los
    vectores son paralelos y/o perpendiculares.
Vargas Bañuelos Juan Samuel
*/
import Foundation

struct Vector {
  var x: Double
  var y: Double
}

func producto_escalar(v1: Vector, v2: Vector) -> Double {
  return v1.x * v2.x + v1.y * v2.y
}

func producto_vectorial(v1: Vector, v2: Vector) -> Double {
  return v1.x * v2.x - v1.y * v2.y
}

func son_perpendiculares(v1: Vector, v2: Vector) -> Bool {
  return producto_escalar(v1:v1, v2:v2) == 0
}

func son_paralelos(v1: Vector, v2: Vector) -> Bool {
  return producto_vectorial(v1:v1, v2:v2) == 0
}

func paralelos_o_perpendiculares(v1: Vector, v2: Vector) {
  if son_perpendiculares(v1:v1, v2:v2) {
    print("Son perpendiculares")
  }
  else if son_paralelos(v1:v1, v2:v2) {
    print("Son paralelos")
  }
  else {
    print("No son paralelos ni perpendiculares")
  }
}

print("Vector 1:")
print("\tx: ", terminator:"")
let vector1x = Double(readLine(strippingNewline: true)!)!
print("\ty: ", terminator:"")
let vector1y = Double(readLine(strippingNewline: true)!)!
print("Vector 2:")
print("\tx: ", terminator:"")
let vector2x = Double(readLine(strippingNewline: true)!)!
print("\ty: ", terminator:"")
let vector2y = Double(readLine(strippingNewline: true)!)!

var vector1 = Vector(x: vector1x, y:vector1y)
var vector2 = Vector(x: vector2x, y:vector2y)

paralelos_o_perpendiculares(v1:vector1, v2:vector2)
