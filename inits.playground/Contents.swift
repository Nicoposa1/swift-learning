import UIKit

struct Fahrenheit {
    var temperature: Double
    init() {
        self.temperature = 32
    }
}

var f1 = Fahrenheit()

struct Celcius {
    var temperature: Double
    init(fromFahrenheit fahrenheit: Double) {
        self.temperature = (fahrenheit - 32) / 1.8
    }
    init(fromKelvin kelvin:Double) {
        self.temperature = kelvin - 273.15
    }
    
    init(_ celcius: Double) {
        self.temperature = celcius
    }
}

let bodyTemperature = Celcius(37)

var boilingPointOfWater = Celcius(fromFahrenheit: 212)
var freezingPointOfWater = Celcius(fromKelvin: 273.15)


struct Color {
    var red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white:Double){
        self.red = white
        self.green = white
        self.blue = white
    }
}

var magenta = Color(red: 1, green: 0, blue: 1)
var halfGrey = Color(white: 0.5)


class SurveyQuestion {
    var text: String
    var response: String?
    
    init(text: String){
        self.text = text
    }
    
    func ask() {
        print(text)
    }
}

let q1 = SurveyQuestion(text: "Te gustan los taco?")
q1.ask()
q1.response = "Si, me gustan"

class Vehicle {
    var numberOfWheels = 0
    var description:String {
        return "Number of wheels is \(numberOfWheels)"
    }
}

var vehicle = Vehicle()
vehicle.numberOfWheels = 2
vehicle.description

class Car:Vehicle{
    override init() {
        super.init()
        numberOfWheels = 4
    }
}

let car = Car()
car.description


enum temperatureUnit{
    case kelvin, celcius, fahrenheit
    
    init?(symbol: Character) {
        switch symbol{
        case "K":
            self = .kelvin
        case "C":
            self = .celcius
        case "F":
            self = .fahrenheit
        default:
            return nil
        }
    }
}


let someUnit = temperatureUnit(symbol: "X")


class Product {
    let name: String
    init?(name:String){
        if name.isEmpty{
            return nil
        }
        self.name = name
    }
}

class CartItem: Product {
    let quantity: Int
    init?(name: String, quantity: Int) {
        if quantity < 1 {
            return nil
        }
        self.quantity = quantity
        super.init(name: name)
    }
}

class Bank {
    static var coinsInBank = 2_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive (coins:Int) {
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        self.coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int)  {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
    
}


var playerOne: Player? = Player(coins: 100)
Bank.coinsInBank

playerOne!.win(coins: 2_000)
Bank.coinsInBank

playerOne = nil
Bank.coinsInBank
