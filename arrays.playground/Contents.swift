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

//Diccionarios [k1: v1, k2: v2, ...]
var nameOfIntegers = [Int : String] ()
nameOfIntegers[15] = "quice"
nameOfIntegers = [:]

var airports: [String : String] = ["YYZ" : "Toronto", "DUB" : "Dublin", "PMI": "Palma"]
airports.count
airports.isEmpty
airports["LHR"] = "London City Airpots"
airports
airports["LHR"] = "London Hearhtow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("El aeropurto cambio de nombre, antes era \(oldValue)")
}

airports["PMI"] = nil
airports
airports.removeValue(forKey: "YYZ")

for (key, value) in airports{
    print("\(key) - \(value)")
}

for airportKey in airports.keys{
    print(airportKey)
}
for airportValue in airports.values{
    print(airportValue)
}

let airportKeys = [String](airports.keys)
let airportValue = [String](airports.values)


// bucle while
var i = 0
while i <= 10 {
    i += 1
}
print(1)


print(i)
            
            
let endNumber = 100
var startNumber = 2
var primeNumber: [Int] = []

while startNumber <= 100 {
    var isPrime = true
    for idx in 2..<startNumber {
        if startNumber % idx == 0 {
            if idx != 1 && 1 != startNumber {
                isPrime = false
            }
        }
    }
    if isPrime {
        primeNumber.append(startNumber)
    }
    startNumber += 1
}

// if else

var temp = 18
if temp <= 15 {
    print("Hace frio")
} else if temp >= 25{
    print("Hace calor! Enciende el aire acondicionado")
} else {
    print("El clima es agradable")
}

// switch

let someCharacter: Character = "z"
switch someCharacter.uppercased() {
case "A":
    print("Es la primera letra del abcedario")
case "Z" :
    print("Es la ultima letra del abecedario")
default:
    print("Es alguna letra del abecedario")
}

let theCharacter: Character = "r"
switch theCharacter.uppercased() {
case "A", "E", "I", "O", "U":
    print("La letra \(theCharacter.uppercased()) es una vocal")

default :
    print("La letra \(theCharacter) no es una vocal")
}

let moons = 62
let prhase = "Lunas en Saturno"
let naturalCount : String
switch moons {
case 0:
    naturalCount = "No hay luna \(prhase)"
case 1..<5:
    naturalCount = "Hay algunas pocas \(prhase)"
case 5..<12:
    naturalCount = "Hay bastantes \(prhase)"
case 12..<100:
    naturalCount = "Hay muchas \(prhase)"
default:
    naturalCount = "Hay muchisimas \(prhase)"
}

let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("El punto es el origen de coordenada")
case (_, 0):
    print("El punto \(somePoint) se halla sobre la coordenada x")
case(0,_):
    print("El punto \(somePoint) se halla sobre la coordenada y")
case(-2...2, -2...2):
    print("El punto \(somePoint) se halla sobre el interior del cuadrado 4")
default:
    print("El punto \(somePoint) no se halla aquí")
}

let anotherPoint = (2,0)
switch anotherPoint {
case (let x, 0):
    print("Sobre el eje de X, con valor \(x)")
case (0, let y):
    print("Sobre el eje de Y, con valor \(y)")
case let (x,y):
    print("En algun otro lugar del plano \(x) \(y)")
}

let stillAnotherPoint = (9,0)
switch stillAnotherPoint {
case(let distance, 0), (0, let distance) :
    print("Se halla sobre el eje, a distancia \(distance) del origen")
default:
    print("No esta sobre el eje")
}

// control transfer sentences - continue, break, fallthrough, return, through
let sentence = "Esta es una frase"
var filteredSentence = ""
let characterToRemove:[Character] = ["a", "e", "i", "o", "u"]
for character in sentence.lowercased() {
    if characterToRemove.contains(character) {
        continue
    }
    if character == "f" {
        break
    }
    filteredSentence.append(character)
}
filteredSentence

// fallthrough
let integerToDescribe = 5
var description = "El número \(integerToDescribe) es"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " un número primo"
    fallthrough
default:
    description += " un número entero"
}
description

// return and guard
var people = ["Name": "Sol", "Age": 23, "Male": false] as [String: Any]
func testUserValidation(person: [String: Any]){
    guard let surname = person["Name"] else {
        print("El nombre es desconocido")
        return
    }
    print(surname)
    guard let userAge = person["Age"] else {
        print("La edad es desconocida")
        return
    }
    print("La edad del usuario es \(userAge)")
}
testUserValidation(person: people)

if #available(iOS 16, macOS 12, *) {
    // ejecutar acciones de iOS 16 hacia adelante
} else{
    // ejecutar el código viejo para versiones anteriores 
}




