import Fundation

let MAX : UInt32 = 9
let MIN : UInt32 = 1 
func randomNumber()
{
   var random_number = Int(arc4random_uniform(MAX) + MIN)
   print ("Dado 1 = ", random_number); 
   print ("Dado 2 = ")   
}
 