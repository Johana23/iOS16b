import Foundation


print("Ingresar un entero positivo")
var n=readLine()
var nu1=Int(n!)
print("Ingresar N numeros reales")
var n2=readLine()
var nu2=Int(n2!)



var cn1=n!.characters.count
var cn2=n2!.characters.count
var acumu=nu1!
var res=0
if(cn1==1)
{

for character in n2!.characters{

var s=String(character)
var temp=Int(s)
acumu=acumu+temp!


}
res=acumu/(cn2+1)
print("El promedio es: ",res)

if(cn2>5)
{
print("El rango de 5 digitos: ",n2![n2!.startIndex.advancedBy(0)]," ",n2![n2!.startIndex.advancedBy(1)]," ",n2![n2!.startIndex.advancedBy(2)]," ",n2![n2!.startIndex.advancedBy(3)]," ",n2![n2!.startIndex.advancedBy(4)])
}
else
{
print("La cantidad de digitos no es suficiente.(minimo 5 digitos)")
}





}
else
{

print("Solo se permite un numero entero positivo")

}
