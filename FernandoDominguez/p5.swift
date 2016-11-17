import Foundation


print("Ingresar el primer numero entero positivo")
var n=readLine()
var nu1=Int(n!)
print("Ingresar el segundo  numero entero positivo")
let n2=readLine()
var nu2=Int(n2!)
print("Ingresar el tercer numero entero positivo")
let n3=readLine()
var nu3=Int(n3!)
var num1=nu1!
var num2=nu2!
var num3=nu3!

var res=0
var i=num1
var x=num2
var z=num3
if(num1>0 && num2>0 && num3>0)
{


repeat {
i=i-1
nu1!=nu1!*i


}
while(i>1)

repeat {
x=x-1
nu2!=nu2!*x


}
while(x>1)

repeat {
z=z-1
nu3!=nu3!*z


}
while(z>1)





}

else
{
print("El numero ingresado no es positivo")
}

var a=nu1!
var b=nu2!
var c=nu3!

res=a+b+c


print("La suma de los 3 factoriales es: ",res)




