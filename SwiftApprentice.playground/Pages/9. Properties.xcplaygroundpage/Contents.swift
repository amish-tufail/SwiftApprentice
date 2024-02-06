import Foundation

// LAZY
class Student {
    lazy var name = "Amish" // This is isnt created until it is first time accessed
    var age = 22
}

var a = Student()


print(a.age)
print(a.name) // Now here it called so, created


// COMPUTED
class Uni {
    var gpa: Double = 10.0
    var calculate: Double {
        // If there is only get, then it is read-only property and we dont need to even write get
        get {
            return gpa + 10
        }
        set(passedValue) { // Custom name
            gpa = gpa + passedValue
        }
//        set {
//            gpa = gpa + newValue // Default name for value **newValue**
//        }
    }
}

var uni1 = Uni()
print(uni1.gpa)
print(uni1.calculate) // No set so, 20.0

uni1.calculate = 10.0 // Set value
print(uni1.calculate) // So, now 30.0

// Property Observer

// They are only for **Stored Properties**

class Hello {
    var a: Int = 10 {
        willSet { // Called before value is changed
            print("OldValue: \(a) is going to be changed to NewValue: \(newValue)")
        }
        didSet { // Called after value is changed
            print("NewValue: \(a) is changed from OldValue: \(oldValue)")
            // In SwiftUI/ Swift you can use this to do some conditional logic and assign value to var.
        }
    }
}

var h = Hello()

print(h.a) // No changes so, 10.

h.a = 100

// Property Wrappers: YT VIDEO

// Global Variable: They are default lazy, no need to write lazy with them. Cannot use Property Wrappers with them.

// TYPE Properties:

// Type properties are like shared features or characteristics that belong to the type itself, not to any single object or instance created from that type. Imagine a classroom where:
//Instance properties are like individual students' belongings (e.g., a backpack or a pencil case). Each student has their own, and they can be different for everyone.
//Type properties are like the classroom clock or a shared calendar. No matter who comes into the classroom, the clock and the calendar are the same for everyone and there's only one for all to use.

print("--------")

struct Nice {
    static var name = "Amish"
    static var age = 22
//    var value: String { // Not possible as uses, Type property which is not allowed, non-staic can use non-static values in itself
//        "\(name) & \(age)"
//    }
    static var value: String { // Legal, as static so, can use static
        "\(name) & \(age)"
    }
    
    var v = "Heee"
}

var nice = Nice()

// print(hh.name) // Cannot access as type property
// print(hh.value) // Not even this, as it uses Type propety in itself
print(nice.v)

print(Nice.age)
print(Nice.name)
print(Nice.value)

var e = Nice.init(v: "NICE WORlD!")

print(e.v)
