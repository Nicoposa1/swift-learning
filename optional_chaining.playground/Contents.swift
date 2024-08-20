import UIKit

/*class Person {
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
}*/

class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRomms: Int {
        return rooms.count
    }
    subscript(i:Int) -> Room {
        get{
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber), \(street)"
        }else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}




