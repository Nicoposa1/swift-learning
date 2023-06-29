import UIKit

let name = ["Nico", "Sol", "Julia", "Lucia"]

func backward (_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

backward("Nico", "Lucia")
var reversedName = name.sorted(by: backward)

reversedName = name.sorted(by: >)
reversedName = name.sorted(by: { $0>$1})
reversedName = name.sorted(by: { s1, s2 in s1 > s2 })
reversedName = name.sorted(by: { (s1: String, s2: String) in
    return s1 > s2
})

func someFunctionThatTakesAClosuresure(closure: () -> Void) {
    // aquí ira el cuerpo de la funcion
}

someFunctionThatTakesAClosuresure (closure: {
    // aquí ira el cuerpo de la funcionÏ
})

someFunctionThatTakesAClosuresure{
    // añadir el closure here
}

reversedName = name.sorted{$0>$1}

let digitNames = [0: "cero", 1: "uno", 2:"dos", 3:"tres", 4: "cuatro", 5:"cinco", 6: "seis", 7:"siete", 8:"ocho", 9:"nueve"]

let numbers = [14, 113, 64, 933]
let numberStrings = numbers.map{(number) -> String in
    var number = number
    var output = ""
    repeat{
        output = digitNames[number%10]! + output
        number /= 10
    } while number > 0
            return output
}

func makeIncrementer (forIncrement amount : Int) -> () -> Int {
    var runningTotal = 0
    func incrementer () -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementeByTen = makeIncrementer(forIncrement: 10)
incrementeByTen()
incrementeByTen()


var completionHandlers: [() -> Void] = []

func someFunctionWithScapingClosure (completionHandler: @escaping() -> Void) {
    completionHandlers.append(completionHandler)
}

completionHandlers.count

func someFunctionWithNoneScapingClosure (closure: () -> Void){
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithScapingClosure {
            self.x = 100
        }
        someFunctionWithNoneScapingClosure {
            x = 200
        }
    }
}

let instance = SomeClass()
print(instance.x)
instance.doSomething()
print(instance.x)
completionHandlers.count
completionHandlers.first?()
print(instance.x)

