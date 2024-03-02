import Foundation

// Imagine you have a main type called Car, and you want to define some specific characteristics or functionalities that are only relevant to the Car. For instance, a car can have different types of engines and fuel. You can define these as nested types within the Car class or struct.
struct Car {
    enum Engine {
        case v4, v6, v8
    }
    
    enum Fuel {
        case petrol, diesel, electric
    }
    
    var engine: Engine
    var fuel: Fuel
}
// I could have made these Enum's outside but then they would be globally accessable and in some cases we dont want this because these types are more or are only relevant to this type only
let myCard = Car(engine: .v8, fuel: .petrol)

print(myCard.engine)
print(myCard.fuel)

print("-----------")

print(Car.Engine.v8) // This is how we can access nested properties outside of their main Type
print(Car.Fuel.petrol)
