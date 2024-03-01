import Foundation


class Person {
    var residence: String?
}

var p = Person()
print(p.residence)
p.residence = "Hello!"
print(p.residence?.uppercased()) // Note that there's a question mark in there, which is the optional chaining: everything after the question mark will only be run if everything before the question mark has a value.
if let r = p.residence {
    print(r)
}
print(p.residence)

