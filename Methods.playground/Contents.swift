import UIKit

class Counter {
    var count = 0
    
    func increment(){
        self.count += 1
    }
    
    func increment(by amount:Int) {
        self.count += amount
    }
    
    func reset(){
        self.count = 0
    }
}

let counter = Counter()

counter.increment()
counter.increment(by: 9)
counter.reset()

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRigth(of x:Double) -> Bool {
        return self.x > x
    }
}

let somePoint = Point(x: 4)
somePoint.isToTheRigth(of: 1)
