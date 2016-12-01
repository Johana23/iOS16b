// Programa 6: ejercicio 36 capitulo 2

var sueldo: Int = 0
var i: Int = 0

sueldo = 1
while(i < 17){
    sueldo += sueldo * 2
    i += 1
}

print("Lo que gano el dependiente fue un total de: $" + String(sueldo))