import Foundation

class Library {
    var books = ["001": "Swift Programming", "002": "Data Structures", "003": "Algorithms"]

    subscript(id: String) -> String? {
        get {
            return books[id]
        }
        set(newTitle) {
            if let title = newTitle {
                books[id] = title
            }
        }
    }
}

var lib1 = Library()

print(lib1.books["001"])

// print(lib1["001"]) // WITHOUT SUBSCRIPT: value of type 'Library' has no subscripts
print(lib1["001"])

lib1["001"] = "SWIFTUI"

print("--------")

print(lib1.books["001"])
print(lib1["001"])

// TYPE SUBSCRIPTS

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}
print(Planet[4])

//var planet: Planet = .earth
//
//planet[1] // Error: static member 'subscript' cannot be used on instance of type 'Planet'


