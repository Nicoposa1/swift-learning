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
