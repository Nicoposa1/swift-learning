import UIKit

class Counter {
    var count = 0
    
    func increment (){
        self.count += 1
    }
    
    func increment (by amount: Int){
        self.count += amount
    }
    func reset () {
        self.count = 0
    }
}

let counter = Counter()
counter.increment()
counter.increment(by: 12)

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRigth(of x: Double) -> Bool {
        return self.x > x
    }
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        //x += deltaX
        //y += deltaY
        self = Point(x: self.x + deltaX, y: self.y + deltaY)
        
    }
}

var somePoint = Point(x: 4, y: 3)
somePoint.isToTheRigth(of: 3)
somePoint.moveBy(x: 3, y: -3)

enum SwithCase {
    case off, low, high
    mutating func next() {
        switch self{
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var controller = SwithCase.off
controller.next()
