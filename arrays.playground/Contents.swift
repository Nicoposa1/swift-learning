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

for (idx, item) in shoppingList.enumerated(){
    print("Item \(idx + 1): \(item) ")
}
// SET CONJUNTO

var letters = Set<Character>()
letters.count
letters.insert("A")
letters.insert("H")
letters.insert("B")
letters

var favoriteGames : Set<String > = ["COD", "Fifa", "Brawl"]
favoriteGames.count
favoriteGames.insert("CS")
favoriteGames
if let removedGame = favoriteGames.remove("COD"){
    print("Elimene el \(removedGame)")
}
favoriteGames
for vg in favoriteGames {
    print("\(vg)")
}
favoriteGames.insert("Fifa")
favoriteGames

let oddDigits : Set = [1,3,5,7,9]
let evenDigits : Set = [0,2,4,6,8]
let primeNumbers: Set = [2,3,5,7]

//union de oddDigits con evenDigits
oddDigits.union(evenDigits).sorted()
//Intersección que son de A y de B
oddDigits.intersection(evenDigits)
oddDigits.intersection(primeNumbers).sorted()
evenDigits.intersection(primeNumbers).sorted()

//A - B, son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted()

//Union simetrica de A - B union (B - A)
oddDigits.symmetricDifference(primeNumbers).sorted()

let HouseAnimals : Set = ["Perro", "Gato"]
let FarmAnimals : Set = ["Vaca", "Gallina", "Oveja", "Perro", "Gato"]
let CityAnimals : Set = ["Ratas", "Palomas"]

HouseAnimals.isSubset(of: FarmAnimals)
FarmAnimals.isSuperset(of: HouseAnimals)
//A y B son disjuntos si su intersección es vacia
FarmAnimals.isDisjoint(with: CityAnimals)

// Challenge
let FavoriteFood : Set = ["Taco", "Asado", "Hamburguesa"]
let Fruit : Set = ["Apple", "Oragen", "Banana"]
FavoriteFood.isSubset(of: Fruit)
Fruit.isDisjoint(with: FavoriteFood)
Fruit.isSubset(of: FavoriteFood)

