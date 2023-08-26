//Struc vs Class

struct SomeStruct {
    //la definición de la estructura aquí
}

class SomeClass {
    //La definición de la clase aquí
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print(someResolution.width)
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)
print(someVideoMode.resolution.height)

let vga = Resolution.init(width: 640, height: 480)

print(vga.height)

let hd = Resolution.init(width: 1920, height: 1080)

print(hd)


var cinema = hd
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")

enum CompassPoint {
    case north, south, east, west
}

var currentDirection = CompassPoint.west

let rememberedDirection = currentDirection
currentDirection = .east

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsotenEighty = tenEighty
alsotenEighty.frameRate = 30

tenEighty

if tenEighty === alsotenEighty {
    print("Son el mismo objeto")
} else {
    print("Son diferente")
}
