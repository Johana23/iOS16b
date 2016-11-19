/*
27. Hacer un programa para imprimir la suma, diferencia, producto y
    cociente de dos números complejos a + ib y c + id. Usar los siguientes
    números complejos como datos:
    
      a) 2 + 3i y 3 + 4i
      b) 5 + 7i y 1 + 4i
      c) -21 + 3i y 14 + 107i

Vargas Bañuelos Juan Samuel
*/

class NumComplejo {
  var R: Double
  var I: Double

  init(R: Double, I: Double) {
    self.R = R
    self.I = I
  }

  func to_string() -> String {
    var s: String = ""

    s += String(R)
    s += (I < 0 ? " - " : " + ")
    s += String(abs(I))
    s += "i"

    return s
  }
}

func +(left: NumComplejo, right: NumComplejo) -> NumComplejo {
  return NumComplejo(R:(left.R + right.R), I:(left.I + right.I))
}

func -(left: NumComplejo, right: NumComplejo) -> NumComplejo {
  return NumComplejo(R:(left.R - right.R), I:(left.I - right.I))
}

func *(left: NumComplejo, right: NumComplejo) -> NumComplejo {
  let r = left.R * right.R
  let i = (left.R * right.I) + (left.I * right.R)
  let i2 = -(left.I * right.I)

  return NumComplejo(R:(r + i2), I:i)
}

func /(left: NumComplejo, right: NumComplejo) -> NumComplejo {
  let r_u = (left.R * right.R) + (left.I * right.I) 
  let r_d = (right.R * right.R) + (right.I * right.I)
  let r = r_u / r_d

  let i_u = (left.I * right.R) - (left.R * right.I)
  let i_d = (right.R * right.R) + (right.I * right.I)
  let i = i_u / i_d

  return NumComplejo(R:r, I:i)
}

let pares_de_numeros = [
  [NumComplejo(R:2, I:3), NumComplejo(R:3, I:4)],
  [NumComplejo(R:5, I:7), NumComplejo(R:1, I:4)],
  [NumComplejo(R:-21, I:3), NumComplejo(R:14, I:107)]
]

for numeros in pares_de_numeros {
  // Suma
  print("(", terminator:"")
  print(numeros[0].to_string(), terminator:"")
  print(") + (", terminator:"")
  print(numeros[1].to_string(), terminator:"")
  print(") = ", terminator:"")
  print((numeros[0] + numeros[1]).to_string())

  // Diferencia
  print("(", terminator:"")
  print(numeros[0].to_string(), terminator:"")
  print(") - (", terminator:"")
  print(numeros[1].to_string(), terminator:"")
  print(") = ", terminator:"")
  print((numeros[0] - numeros[1]).to_string())

  // Producto
  print("(", terminator:"")
  print(numeros[0].to_string(), terminator:"")
  print(") * (", terminator:"")
  print(numeros[1].to_string(), terminator:"")
  print(") = ", terminator:"")
  print((numeros[0] * numeros[1]).to_string())

  // Cociente
  print("(", terminator:"")
  print(numeros[0].to_string(), terminator:"")
  print(") / (", terminator:"")
  print(numeros[1].to_string(), terminator:"")
  print(") = ", terminator:"")
  print((numeros[0] / numeros[1]).to_string())
  print()
}
