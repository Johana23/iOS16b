//30 o mas copias a 6 pesos, menos de 30 6.95


import Glibc

var ped = [35,12,70,20]

for x in ped{


    if(x < 30)
    

{
    print("Copias \(x) Total: \(Double(x) * 6.95)")
    

}
    

else
    

{
    print("Copias \(x) Total: \(Double(x) * 6.0)") 
        
    

}


}
