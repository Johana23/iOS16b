/*
26. Dados dos números imaginarios puros iA e iB, introducir A y B y calcular
    el producto de iA por iB.
Vargas Bañuelos Juan Samuel
*/

print("Se calculará Ai * Bi.")
print("Introduce A: ", terminator: "")
let A = Double(readLine(strippingNewline: true)!)!
print("Introduce B: ", terminator: "")
let B = Double(readLine(strippingNewline: true)!)!

print("(\(A))i * (\(B))i = \(-(A * B))")
