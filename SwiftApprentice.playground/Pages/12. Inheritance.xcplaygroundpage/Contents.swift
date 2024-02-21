import Foundation

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("Same Noise!!")
    }
}


class Bicycle: Vehicle {
    var name: String = ""
}

var bicycle = Bicycle()
bicycle.name = "Morgan"
print(bicycle.name)
bicycle.currentSpeed = 20.0
print(bicycle.description)
bicycle.makeNoise()

// Override Method
class MotorBike: Vehicle {
    var name: String = ""
    func makeNoisee() {
        super.makeNoise()
        print("Bike Noise!!")
    }
    
    override func makeNoise() {
        super.makeNoise()
        print("Override Bike Noise!!")
    }
}
print("---------------")
var motorBike = MotorBike()
motorBike.name = "Honda 150"
print(motorBike.name)
motorBike.currentSpeed = 100.0
print(motorBike.description)
motorBike.makeNoise() // Calls super class method
motorBike.makeNoisee() // Calls its own method as different name but calls superClass method in it as well
motorBike.makeNoise() // Now compiler doesnt know which to call as sub and super both have exactly same method, so need to override method, Now it calls sub class method, but also calls super method as well

// Override Properties
// 1. Getter and Setter
class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
        
    }
}
print("---------------")
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

// 2. Property Observers
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}
print("---------------")
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")

// Use final keyword to stop override and Inheritance
