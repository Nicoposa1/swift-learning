import UIKit

class Person {
    var residence: Residence?
}

class Residence{
    var numberOfRooms = 1
}

let Edgar = Person()

if let roomCount = Edgar.residence?.numberOfRooms {
    print("La casa de Edgar tiene \(roomCount) habitaciones")
} else {
    print("Edgar no tiene casa")
}

Edgar.residence = Residence()

if let roomCount = Edgar.residence?.numberOfRooms {
    print("La casa de Edgar tiene \(roomCount) habitaciones")
} else {
    print("Edgar no tiene casa")
}
