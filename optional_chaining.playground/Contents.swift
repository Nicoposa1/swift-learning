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
    var numberOfRooms: Int {
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
    var address: Address?
    
    func printNumberOfRooms(){
        print(numberOfRooms)
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

let Edgar = Person()


if let roomCount = Edgar.residence?.numberOfRooms {
    print("La casa de Edgar tiene \(roomCount) habitaciones")
} else {
    print("Edgar no tiene casa")
}


func createAdress() -> Address {
    print("La función siendo llamada")
    let someAddress = Address()
    someAddress.buildingNumber = "338"
    someAddress.street = "Julian Alvares"
    return someAddress
}

Edgar.residence?.address = createAdress()
Edgar

Edgar.residence?.printNumberOfRooms()

if Edgar.residence?.printNumberOfRooms() != nil {
    print("He podido obetener el número de habitacione")
} else {
    print("No ha sido posible saber el número de habitaciones")
}

if (Edgar.residence?.address = createAdress()) != nil {
    print("Ha sido posible configurar la dirección de Edgar")
} else {
    print("Seguimos sin saber donde vive Edgar")
}

if let firstRoomName = Edgar.residence?[0].name {
    print("La primera habitación es de \(firstRoomName)")
} else {
    print("La primera habitación no sabemos de quien es")
}

Edgar.residence?[0] = Room(name: "Bathroom")

let EdgarHouse = Residence()
EdgarHouse.rooms.append(Room(name: "Bathroom"))
EdgarHouse.rooms.append(Room(name: "LivingRoom"))
EdgarHouse.rooms.append(Room(name: "Kitchen"))
Edgar.residence = EdgarHouse
if let firstRoomName = Edgar.residence?[0].name {
    print("La primera habitación es el \(firstRoomName)")
} else {
    print("La primera habitación no sabemos de quien es")
}
