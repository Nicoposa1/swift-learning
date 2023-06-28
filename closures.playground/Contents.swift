import UIKit

let name = ["Nico", "Sol", "Julia", "Lucia"]

func backward (_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

backward("Nico", "Lucia")
var reversedName = name.sorted(by: backward)

reversedName = name.sorted(by: >)
reversedName = name.sorted(by: { $0>$1})
reversedName = name.sorted(by: { s1, s2 in s1 > s2 })
reversedName = name.sorted(by: { (s1: String, s2: String) in
    return s1 > s2
})
