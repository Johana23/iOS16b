/*
23. Determinar qué valor de N hará a 14N5N divisible entre 19.
Vargas Bañuelos Juan Samuel
*/

for indice in 0...9 {
  let num_s = "14" + String(indice) + "5" + String(indice)
  let num = Int(num_s)!

  if ((num % 19) == 0) {
    print("\(num) es divisible entre 19")
  }
}
