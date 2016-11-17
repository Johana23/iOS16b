import Foundation

print("Ingresar los 3 digitos enteros")
var n=readLine()
var nu1=Int(n!)
print("Ingresar los 2 digitos enteros")
let n2=readLine()
var nu2=Int(n2!)
print("Ingresar los 4 digitos enteros")
let n3=readLine()
var nu3=Int(n3!)
var num1=nu1!
var num2=nu2!
var num3=nu3!

var cn1=n!.characters.count
var cn2=n2!.characters.count
var cn3=n3!.characters.count


print(cn1,cn2,cn3)

if(cn1==3&&cn2==2&&cn3==4)
{

print("Su numero de IMSS es: ",num1,num2,num3)

}

else
{

print("Revisar la cantidad de digitos.Total de digitos permitidos 9")
}







