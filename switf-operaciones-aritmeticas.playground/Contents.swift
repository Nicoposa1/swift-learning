// import UIKit

let b = 5
var a = 5

let (x, y) = (1, 2)

if (a == b) {
    print("Hoola")
}

let five = 5
let minusFive = -five
let plusFive = -minusFive

var number = 5
number += 3 //number = number + 3
number -= 2 //number = number - 2

1 == 1
1 == 2
1 != 2
2 > 1
2 < 1

let name = "Nicolass"
if name == "Nicolas" {
    print("Bienvenido \(name), :)")
} else {
    print("\(name) no tienes acceso a este sitio")
}

(1, "Roo") < (2, "Rocio")
(3, "Maia") < (3, "Roo") // es true porque la M va antes que la R en el abecedario

// operadores ternarios
let contentHeight = 40
var hasImage = false
var rowHeight = 0

rowHeight = contentHeight + (hasImage ? 50 : 10)

// Nil
let defaultAge = 18
var userAge: Int?
//userAge = 22
var ageToBeUsed = userAge ?? defaultAge

let defaultName = "Raul"
var userName: String?
userName = "Nicolas"
var nameToBeUsed = userName ?? defaultName

// Rangos
//cerrado
for _ in 1...5{
    print("Prueba")
}
//semiabierto
for _ in 1..<5 {
    print("aloo")
}

let names = ["Nicolas", "Rocio", "Julieta"]
for i in 0..<names.count{
    print("La persona en la posición \(i+1) se llama \(names[i])")
}

for name in names[0...] {
    print("Names in array \(name)")
}
for namess in names[...1 ] {
    print(namess)
}

let range = ...5 // from -infinity to 5 
range.contains(7)
range.contains(3)
range.contains(-5)

//operadores lógicos
// NOT
let allowEntry = false
if !allowEntry{
    print("Acceso denegado")
}
// AND
let enterDoorCode = true
let passRetinaScan = true
if enterDoorCode && passRetinaScan {
    print("Bienvenido")
} else {
    print("Acceso denegado")
}

// OR
let youAreLegal = true
let haveAName = false
if youAreLegal || haveAName {
    print("pasas al baile")
}

let greeting = "Hola que tal"
greeting[greeting.startIndex]
//greating[greeting.endIndex]
greeting[greeting.index(before: greeting.endIndex)]

for idx in greeting.indices{
    print("\(greeting[idx ])", terminator: "")
}

var welcom = "Hola"
welcom.insert("!", at: welcom.endIndex)
welcom.insert(contentsOf: " que tal", at: welcom.index(before: welcom.endIndex))

// remove "!" to welcome
welcom.remove(at: welcom.index(before: welcom.endIndex))
print(welcom)
welcom.removeSubrange(welcom.index(welcom.endIndex, offsetBy: -6)..<welcom.endIndex)
print(welcom)