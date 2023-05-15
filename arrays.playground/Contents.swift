import UIKit

// array
// conjunto
// diccionario

//ARRAYS
var someInts = [Int]()
someInts.count
someInts.append(23)
someInts.count
someInts = []
someInts.count

var someDobles = Array(repeating: 3.14, count: 7)
someDobles.count

var moreDobles = Array(repeating: 2.5, count: 4)

var alotDobles = someDobles + moreDobles
alotDobles.count
 
var shoppingList : [String] = ["papa", "pimientos", "tortillas", "queso"]
shoppingList.count

if shoppingList.isEmpty{
    print("esta vacia")
} else {
    print("Ricardo va a comprar")
}

shoppingList.append("Coca Cola")

shoppingList += ["Palta"]

var firsElement = shoppingList[0]
shoppingList[0] = "Manteca"
shoppingList[0...4]

let removeManteca = shoppingList.remove(at: 0)
shoppingList

shoppingList.removeLast()
shoppingList

for item in shoppingList{
    print(item)
}
