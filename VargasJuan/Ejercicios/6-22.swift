/*
22. Con las monedas siguientes: medio dólar, cuatro, diez, cinco y un 
    centavo ¿de cuántas maneras diferentes se les puede cambiar por un 
    dólar?
Vargas Bañuelos Juan Samuel
*/

// https://andrew.neitsch.ca/publications/m496pres1.nb.pdf
func contarCambio(cantidad: Int, monedas: [Int]) -> Int {
  if (monedas.isEmpty || cantidad < 0) { return 0 }
  else if (cantidad == 0) { return 1 }
  else {
    let n = monedas.count
    let monedas_cola = Array<Int>(monedas[1..<n])
    return contarCambio(cantidad:(cantidad - monedas[0]), monedas:monedas) 
      + contarCambio(cantidad:cantidad, monedas:monedas_cola)
  }
}

let monedas: [Int] = [ 50, 25, 10, 5, 1 ]

print(contarCambio(cantidad:100, monedas:monedas))
