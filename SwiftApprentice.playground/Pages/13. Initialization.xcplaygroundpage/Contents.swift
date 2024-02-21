import Foundation

// Designated and Convinence Init's

/*
 
 Initialization Delegation
 Swift enforces rules to make sure initializers delegate tasks correctly:

 Designated to Designated (Up): A designated initializer must call another designated initializer from its immediate superclass, moving up the chain.
 Convenience to Designated (Across then Up): A convenience initializer must call another initializer (designated or convenience) from the same class, and it must eventually call a designated initializer.
 Two-Phase Initialization
 Swift uses a two-phase initialization process to ensure safety and flexibility:

 Phase 1: All properties of a class are assigned initial values, starting from the bottom of the class inheritance chain and moving up. This ensures every property has a value.
 Phase 2: Each class in the inheritance chain has the chance to further customize its properties, starting from the top and moving back down.
 
*/
class Vehicle {
    var numberOfWheels: Int

    // Designated initializer
    init(numberOfWheels: Int) {
        self.numberOfWheels = numberOfWheels
    }
}

class Car: Vehicle {
    var color: String

    // Designated initializer, Normal Init
    init(color: String) {
        self.color = color
        super.init(numberOfWheels: 4) // Calling Vehicle's designated initializer
    }

    // Convenience initializer
    convenience init(c: String) {
        self.init(color: c) // Delegates to the designated initializer // Must be called before making any changes further as we did right after this
        color = "Green"
    }
}


var car = Car(c: "Yellow")
car.color
car.numberOfWheels
