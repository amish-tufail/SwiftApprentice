import Foundation


// Unlike structures, class instances don’t receive a default memberwise initializer.

// You’ve actually been using value types extensively throughout the previous chapters. In fact, all of the basic types in Swift — integers, floating-point numbers, Booleans, strings, arrays and dictionaries — are value types, and are implemented as structures behind the scenes.

// All structures and enumerations are value types in Swift

// Classes are reference type

class Student {
    var name = ""
}

let stu1 = Student()
stu1.name = "Amish Tufail"
print("Stu1: \(stu1.name)")

let stu2 = stu1
print("Stu2: \(stu2.name)")
stu2.name = "Anis"

print("--------------")

print("Stu1: \(stu1.name)")
print("Stu2: \(stu2.name)")

print("--------------")

// IDENTICAL OPERATOR
// To check if both share the same type
if stu1 === stu2 {
    print("Same class Type")
}
