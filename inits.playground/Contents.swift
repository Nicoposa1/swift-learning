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
}

var boilingPointOfWater = Celcius(fromFahrenheit: 212)
var freezingPointOfWater = Celcius(fromKelvin: 273.15)
