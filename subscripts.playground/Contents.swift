import UIKit

struct TimeTables{
    let multiplier:Int
    
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let treeTimeTable = TimeTables(multiplier: 3)
print("6X3 = \(treeTimeTable[6])")


for idx in 0...10{
    print("\(idx) X 3 = \(treeTimeTable[idx])")
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter,saturn, uranus, neptune
    static subscript(n: Int) -> Planet{
        return Planet(rawValue: n)!
    }
}

let mars = Planet[4]
