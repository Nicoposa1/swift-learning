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


struct Matrix {
    let rows:Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows*columns)
    }
    
    func indexIsValid(row:Int, column:Int) -> Bool {
        return row >= 0 && column >= 0 && row < rows && column <  columns
    }
    
    
    subscript(row:Int, column:Int) -> Double {
        get{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column] = newValue
        }
    }
    
}

var matrix = Matrix(rows: 15, columns: 15)
matrix[0, 1] = 1.5
matrix[1, 0] = 2.5
matrix
