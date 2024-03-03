import Foundation

// Syntax

extension SomeType {
    // new functionality to add to SomeType goes here
}

// Can extend to conform to protocols
//extension SomeType: ObservableObject {
    // new functionality to add to SomeType goes here
//}


// Computed Properties

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")

// Extensions can add new computed properties, but they can’t add stored properties, or add property observers to existing properties.
