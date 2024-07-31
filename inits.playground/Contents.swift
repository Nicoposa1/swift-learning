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


