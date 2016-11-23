import Foundation


print("Ingresar el primer numero entero")
var n=readLine()
var nu1=Int(n!)
print("Ingresar el segundo  numero entero")
let n2=readLine()
var nu2=Int(n2!)
print("Ingresar el tercer numero entero")
let n3=readLine()
var nu3=Int(n3!)


if(nu1>nu2&&nu1>nu3)
{


if(nu2>nu3)
{

print(nu1!,nu2!,nu3!)

}
else
{
print(nu1!,nu3!,nu2!)
}


}

else if(nu2>nu1&&nu2>nu3)
{

if(nu1>nu3)
{
print(nu2!,nu1!,nu3!)

}
else
{

print(nu2!,nu3!,nu1!)
}

}
else if(nu3>nu1&&nu3>nu2)
{


if(nu1>nu2)
{

print(nu3!,nu1!,nu2!)
}
else{

print(nu3!,nu2!,nu1!)

}



}