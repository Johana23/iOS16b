/*
30. Encontrar el cociente de dos números complejos en forma polar.

Vargas Bañuelos Juan Samuel
*/
import Foundation

class NumComplejo {
  var R: Double
  var I: Double

  // Forma polar
  var P_M: Double
  var P_A: Double

  init(R: Double, I: Double, polar: Bool) {
    self.R = R
    self.I = I

    self.P_M = sqrt(self.R * self.R + self.I * self.I)
    self.P_A = atan(self.I / self.R)
  }

  init(M: Double, A: Double) {
    self.P_M = M
    self.P_A = A

    self.R = self.P_M * cos(self.P_A)
    self.I = self.P_M * sin(self.P_A)
  }

  func to_string() -> String {
    var s: String = ""

    s += String(R)
    s += (I < 0 ? " - " : " + ")
    s += String(abs(I))
    s += "i"

    return s
  }

  func polar_to_string() -> String {
    var s: String = ""

    s += "("
    s += String(P_M)
    s += ", "
    s += String(P_A)
    s += " radianes)"

    return s
  }
}

func mult_polar(numC1: NumComplejo, numC2: NumComplejo) -> NumComplejo {
  let m = numC1.P_M * numC2.P_M
  let a = numC1.P_A + numC2.P_A

  return NumComplejo(M: m, A: a)
}

let a = NumComplejo(M: 6, A: 1/3)
let b = NumComplejo(M: 3, A: 0.5)

let c = mult_polar(numC1: a, numC2: b)

print("Multiplicacion de complejos en forma polar")

print()
print("(", terminator:"")
print(a.to_string(), terminator:"")
print(") * (", terminator:"")
print(b.to_string(), terminator:"")
print(") = ", terminator:"")
print(c.to_string())

print()
print("(", terminator:"")
print(a.polar_to_string(), terminator:"")
print(") * (", terminator:"")
print(b.polar_to_string(), terminator:"")
print(") = ", terminator:"")
print(c.polar_to_string())
