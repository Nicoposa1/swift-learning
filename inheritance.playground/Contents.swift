import UIKit

class Vehicle {
    var currentSpeed = 0.0
    var description:String{
        return "Viajanado a \(currentSpeed)km/h"
    }
    func makeNoise(){
        
    }
}

let someVehicle = Vehicle()
someVehicle.description

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket

class Train: Vehicle{
    var numberOfWagons = 0
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()
