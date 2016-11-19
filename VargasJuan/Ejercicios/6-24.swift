/*
24. Introducir tres términos consecutivos de una secuencia numérica. 
    Determinar si la secuencia es aritmética, geométrica o ni una ni otra.
Vargas Bañuelos Juan Samuel
*/

func identificarSecuencia(secuencia: [Int]) {
  let dif1 = secuencia[1] - secuencia[0]
  let dif2 = secuencia[2] - secuencia[1]

  let div1 = secuencia[1] / secuencia[0]
  let div2 = secuencia[2] / secuencia[1]

  print(secuencia)
  if (dif1 == dif2) {
    print("Es una secuencia aritmética")
  }
  if (div1 == div2) {
    print("Es una secuencia geométrica")
  }
  if ((dif1 != dif2) && (div1 != div2)){
    print("No es una secuencia aritmética ni geométrica")
  }
  print()
}

let secuencias = [
  [1,1,1],
  [1,2,3],
  [2,4,8],
  [1,4,9],
]

for sec in secuencias {
  identificarSecuencia(secuencia: sec)
}
