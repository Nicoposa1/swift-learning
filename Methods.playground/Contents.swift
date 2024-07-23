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
    
    mutating func moveBy(x deltaX: Double, y deltaY:Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point(x: 4)
somePoint.isToTheRigth(of: 1)

somePoint.moveBy(x: 13, y: 20)
somePoint.x = 9


enum DifferentStateSwitch {
    case off, low, high
    
    mutating func next(){
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}


var controllerStatus = DifferentStateSwitch.off
controllerStatus.next()
controllerStatus.next()


class SomeClass {
    class func someMethod(){
        print("Hola")
    }
}

SomeClass.someMethod()


struct LevelTracker{
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    static func unlock (_ level:Int){
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    
    static func unlocked (_ level: Int) -> Bool {
         return level <= highestUnlockedLevel
    }
    
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.unlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName:String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    init(name: String) {
        self.playerName = name
    }
}

var player = Player(name: "Nicolas")
player.complete(level: 1)
player

if player.tracker.advance(to: 7){
    print("Podemos avanzar al nivel 7")
} else {
    print("El nive 7 no esta desbloqueado")
}


