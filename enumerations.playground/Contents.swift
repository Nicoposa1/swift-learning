import UIKit

enum someEnumeration {
    // aquí iria los enumerados
}

enum compassPoint {
    case north
    case south
    case east
    case west
}

enum Planets: Int {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToGo = compassPoint.west
directionToGo = .west

switch directionToGo {
case .north:
    print("Estamos en \(directionToGo)")
case .east:
    print("Estamos en el east")
case .south:
    print("Estamos en el sur")
case .west:
    print("estamos en el west")
}

let somePlanet = Planets.earth

switch somePlanet {
case .earth:
    print("Estamos en el planeta tierra")
default:
    print("No es seguro ir a este planeta")
}

enum Beverage: CaseIterable {
    case coffe, tea, jucie, water
}

let numberOfChoise = Beverage.allCases.count
for beverage in Beverage.allCases{
    print(beverage)
}

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qr(String)
}

var productBarcode = Barcode.upc(8, 15376, 25743, 3)
productBarcode = .qr("ASDFS")

switch productBarcode {
case let .upc( NumberSystem, Manufacturer,  product,  check):
    print("UPC: \(NumberSystem) \(Manufacturer) \(product) \(check)")
case let .qr( productCode):
    print("QRCODE: \(productCode)")
}

enum ASCIIControlCharacter: Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

let planetOrder = Planets.earth.rawValue





