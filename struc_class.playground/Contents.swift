import UIKit

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
