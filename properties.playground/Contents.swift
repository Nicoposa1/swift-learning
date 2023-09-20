import UIKit

struct FixedLengthRange {
    var firstValue : Int
    let length : Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

class DataImporter {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String()]
}

let manager = DataManager()
manager.data.append("Algo de data")
manager.data.append("Algo de datos")
 
manager.importer.filename

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var height = 0.0, width = 0.0
}

struct Rectangle {
    var origin = Point()
    var size = Size()
    var center: Point{
        get {
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter){
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
        }
    }
}

var square = Rectangle(origin: Point(x: 0, y: 0), size: Size(height: 10, width: 10))
square.center

let initialSquareCenter = square.center
square.center = Point(x: 20, y: 20)

struct Cuboid{
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double{
        get{
            return width * height * depth
        }
    }
}

var cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
cuboid.volume


class StepCounter {
    var totalSteps: Int = 0{
        willSet(newTotalSteps){
            print("El número de pasos va a subir hasta el \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue{
                print("El número de pasos ha incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()

stepCounter.totalSteps = 200


