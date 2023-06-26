import UIKit

func greating (person: String) -> String {
    let greet = "Hola \(person)"
    return greet
}
greating(person: "Nicolas")

func sayHelloWorld() -> String {
    return "Hello World"
}
sayHelloWorld()

func greeting (person: String, isMale: Bool) -> String {
    if isMale {
        return "Bienvenido señor \(person)"
    } else {
        return "Bienvenida señora \(person)"
    }
}

greeting(person: "Nicolás", isMale: true)
greeting(person: "Lucia", isMale: false)

func anotherGreet(person: String) {
    print("Hola \(person)")
}
anotherGreet(person: "Lucia")

func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}
printAndCount(string: "Hola a todos")

func printWithoutCount(string: String) {
    print(string)
}
printWithoutCount(string: "Hola Que tal")

func minMax (array:[Int]) -> (min: Int, max: Int)?{
    
    if array.isEmpty{return nil}
    
    var minValue = array[0]
    var maxValue = array[0]
    for value in array[1..<array.count] {
        if value < minValue {
            minValue = value
        } else if value > maxValue {
            maxValue = value
        }
    }
    
    return(minValue, maxValue)
}

let bounds = minMax(array: [3, 5, -10, 12])
print("Los valores se encuentra entre \(bounds!.min) y \(bounds!.max)")
 
func someFunction(f1 firstParamName: Int, f2 secondParamName: Int = 5) {
    //firstParamName variable de tipo Int
    //secondParamName variable de tipo Int
    print("\(firstParamName) and \(secondParamName)")
}
someFunction(f1: 2, f2: 3)
someFunction(f1: 3)

func greetings (_ person: String, from homeTown: String) -> String{
    return("Un gusto \(person) que nos visites desde \(homeTown)")
}
greetings( "Nicolas", from: "Rio Gallegos")

func mean(_ numbers: Double...) -> Double {
    var total : Double = 0
    for nuber in numbers {
        total += nuber
    }
    return total / Double(numbers.count)
}

mean(1 , 6, 3, 7, 9, 8,4, 2)
