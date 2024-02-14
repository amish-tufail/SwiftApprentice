import Foundation

// self Keyword

class Student {
    var x: Int = 0
    
    func change(x: Int) {
//        x = x // if if we did this then swift would assume both left and right x as parameter x, so to distinguish we use self keyword
        self.x = x
    }
}

// Mutating Function
// ONLY FOR STRUCTS AND ENUMS, No need in Class

class Uni {
    var x: Int = 0
    
    func change() {
        x = x + 1
    }
}


var uni = Uni()

uni.change()
uni.x

struct Unii {
    var x: Int = 0
    
//    func change() { // This wont work as struct and enums are value type, so to modify we use mutating keyword
//        x = x + 1
//    }
    
    mutating func change() {
        x = x + 1
    }
}

var u = Unii()

u.change()
u.change()
u.x


// Type Method

class Example {
    // You can use both static or class
    
    class func display() {
        print("Type Method")
    }
    
//    or
    
    static func display2() {
        print("Type Method")
    }
}

var e = Example()
//e.display()
Example.display()

struct Examplee {
    static func display() {
        print("Type Method!")
    }
}

var ee = Examplee()

//ee.display()
Examplee.display()
