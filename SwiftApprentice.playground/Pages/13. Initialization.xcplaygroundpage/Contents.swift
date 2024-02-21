//import Foundation
//
//// Initializer delegation
//
//struct Size {
//    var width = 0.0, height = 0.0
//}
//struct Point {
//    var x = 0.0, y = 0.0
//}
//
//struct Rect {
//    var origin = Point()
//    var size = Size()
//    init() {}
//    init(origin: Point, size: Size) {
//        self.origin = origin
//        self.size = size
//    }
//    init(center: Point, size: Size) {
//        let originX = center.x - (size.width / 2)
//        let originY = center.y - (size.height / 2)
////        self.origin = origin
////        self.size = size
//        self.init(origin: Point(x: originX, y: originY), size: size)
//    }
//}
//var rect = Rect(center: Point(x: 10, y: 10), size: Size(width: 10.0, height: 10.0))
//rect.origin
//rect.size
//
//// Above, in third init we calculate and then set store property value, no we could have done again the same that was done in second init, it would have worked but duplication of code, so we call the above init.
//
//
//// Designated and Convinence Init's
//
///*
// 
// Initialization Delegation
// Swift enforces rules to make sure initializers delegate tasks correctly:
//
// Designated to Designated (Up): A designated initializer must call another designated initializer from its immediate superclass, moving up the chain.
// Convenience to Designated (Across then Up): A convenience initializer must call another initializer (designated or convenience) from the same class, and it must eventually call a designated initializer.
// Two-Phase Initialization
// Swift uses a two-phase initialization process to ensure safety and flexibility:
//
// Phase 1: All properties of a class are assigned initial values, starting from the bottom of the class inheritance chain and moving up. This ensures every property has a value.
// Phase 2: Each class in the inheritance chain has the chance to further customize its properties, starting from the top and moving back down.
// 
//*/
//class Vehicle {
//    var numberOfWheels: Int
//
//    // Designated initializer
//    init(numberOfWheels: Int) {
//        self.numberOfWheels = numberOfWheels
//    }
//}
//
//class Car: Vehicle {
//    var color: String
//
//    // Designated initializer, Normal Init
//    init(color: String) {
//        self.color = color
//        super.init(numberOfWheels: 4) // Calling Vehicle's designated initializer
//    }
//
//    // Convenience initializer
//    convenience init(c: String) {
//        self.init(color: c) // Delegates to the designated initializer // Must be called before making any changes further as we did right after this
//        color = "Green"
//    }
//}
//
//
//var car = Car(c: "Yellow")
//car.color
//car.numberOfWheels
//
//class Vehicle {
//    var numberOfWheels: Int
//    init(no: Int) {
//        self.numberOfWheels = no
//    }
//}
//
//class Bicycle: Vehicle {
////    var color: String
//    override init(no: Int) { // Same init, so have to write override keyword
//        super.init(no: no)
//        super.numberOfWheels = 50 // I can even directly access superclass properties if they are public
//    }
////    init(color: String) {
////        self.color = color
////        super.init(no: 10)
////    }
//}
//
//var bi = Bicycle(no: 20)
////bi.color
//bi.numberOfWheels

// Failable Init

//struct Animal {
//    let species: String
//    init?(species: String) { // so, ? indicates that this init might fail and if fail returns nil, and if succeed then return an optional instance
//        if species.isEmpty {
//            return nil
//        }
//        self.species = species
//    }
//}
//
//var animal = Animal(species: "")
//
//animal?.species ?? "No Cat"
//
//// Propagation of Failable Init
//
//class Product {
//    let name: String
//    init?(name: String) {
//        if name.isEmpty { return nil }
//        self.name = name
//    }
//}
//
//class CartItem: Product {
//    let quantity: Int
//    init?(name: String, quantity: Int) {
//        if quantity < 1 { return nil }
//        self.quantity = quantity
//        super.init(name: name)
//    }
//}
//
//var item = CartItem(name: "Amish", quantity: 10) // Here returns CartItem
//item?.name
//item?.quantity
//
//print("----")
//
//var item2 = CartItem(name: "Amish", quantity: 0) // Here returns nil
//item2?.name ?? "NIL" // As Cart init failed so, product init also failed
//item2?.quantity ?? 0
//
//print("----")
//
//var item3 = CartItem(name: "", quantity: 10) // Here returns nil
//item3?.name ?? "NIL" // As Product init failed so, cart one also failed even though it succeeded its check
//item3?.quantity ?? 0

class LibraryItem {
    var catalogNumber: String
    
    required init(catalogNumber: String) {
        self.catalogNumber = catalogNumber
        // Additional initialization code can go here.
    }
}

class Book: LibraryItem {
    var author: String
    
    required init(catalogNumber: String) {
        super.init(catalogNumber: catalogNumber)
        // Further initialization specific to Book can go here.
    }
    
     init(catalogNumber: String, author: String) {
           self.author = author
           super.init(catalogNumber: catalogNumber)
           // Further initialization specific to Book can go here.
       }
}

var b = Book(catalogNumber: "a", author: "22")
