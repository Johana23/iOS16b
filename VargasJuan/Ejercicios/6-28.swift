/*
28. Escribir un programa que facilite en multiplicación y división de 
    números complejos.

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

func multiplicar() {
  print()
  print("Multiplicación")
  print("Primer numero:")
  print("\tParte real: ", terminator:"")
  let num1_r = Double(readLine(strippingNewline: true)!)!
  print("\tParte imaginaria: ", terminator:"")
  let num1_i = Double(readLine(strippingNewline: true)!)!
  print("Segundo numero:")
  print("\tParte real: ", terminator:"")
  let num2_r = Double(readLine(strippingNewline: true)!)!
  print("\tParte imaginaria: ", terminator:"")
  let num2_i = Double(readLine(strippingNewline: true)!)!

  let num1 = NumComplejo(R: num1_r, I: num1_i)
  let num2 = NumComplejo(R: num2_r, I: num2_i)

  print()
  print("(", terminator:"")
  print(num1.to_string(), terminator:"")
  print(") * (", terminator:"")
  print(num2.to_string(), terminator:"")
  print(") = ", terminator:"")
  print((num1 * num2).to_string())
}

func dividir() {
  print()
  print("División")
  print("Dividendo:")
  print("\tParte real: ", terminator:"")
  let num1_r = Double(readLine(strippingNewline: true)!)!
  print("\tParte imaginaria: ", terminator:"")
  let num1_i = Double(readLine(strippingNewline: true)!)!
  print("Divisor:")
  print("\tParte real: ", terminator:"")
  let num2_r = Double(readLine(strippingNewline: true)!)!
  print("\tParte imaginaria: ", terminator:"")
  let num2_i = Double(readLine(strippingNewline: true)!)!

  let num1 = NumComplejo(R: num1_r, I: num1_i)
  let num2 = NumComplejo(R: num2_r, I: num2_i)

  print()
  print("(", terminator:"")
  print(num1.to_string(), terminator:"")
  print(") / (", terminator:"")
  print(num2.to_string(), terminator:"")
  print(") = ", terminator:"")
  print((num1 / num2).to_string())
}

print("Opciones")
print("\t1) Multiplicación")
print("\t2) División")
print("Introduzca una opción: ", terminator: "")

let opcion: String = readLine(strippingNewline: true)!

switch opcion {
  case "1":
    multiplicar()
  case "2":
    dividir()
  default:
    print("Opción no válida.")
}
