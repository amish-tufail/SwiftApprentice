import Foundation

class Student {
    lazy var name = "Amish" // This is isnt created until it is first time accessed
    var age = 22
}

var a = Student()


print(a.age)
print(a.name) // Now here it called so, created


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
