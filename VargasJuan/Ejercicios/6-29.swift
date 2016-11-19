/*
29. Encontrar el inverso multiplicativo del número complejo 2 + 3i.

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

  func inverso_multiplicativo() -> NumComplejo {
    let inv_r_u = R
    let inv_r_d = R * R + I * I
    let inv_r = inv_r_u / inv_r_d

    let inv_i_u = -I
    let inv_i_d = inv_r_d
    let inv_i = inv_i_u / inv_i_d

    return NumComplejo(R: inv_r, I: inv_i)
  }
}

let num = NumComplejo(R: 2, I: 3)

print(num.inverso_multiplicativo().to_string())
