import UIKit

let someString = "This is a strings"

let stringMultiLine = """
    Esto es una\
    prubea de multilineas
"""

let wiseWords = "\" La imaginación es mas importante que el saber \" - Albert Einstein"

let dolarSymbol = "\u{24}"
let blackHeath = "\u{2665}"
let heath = "\u{1F496}"

var string = ""
var anotherString = String()

if (anotherString.isEmpty) {
    print("El string es vacio")
} else {
    print("Aquí hay algo")
}

var newSomeString = "Nico juega"
newSomeString += " al futbol"
newSomeString += " y al padel"

let name = "Nicolás Posa 🚀"
for character in name {
    print(character)
}

print(name.count)

let nameChars: [Character] = ["N", "I", "C", "O"]
let nameString = String(nameChars)

let tableOf3 = 3
for i in 0...9 {
    let count = i+1
    let multi = count * tableOf3
    print("\(i+1) * \(tableOf3) ", multi)
}
