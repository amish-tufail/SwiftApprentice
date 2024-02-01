import Foundation

enum DaysOfWeek: String, CaseIterable {
    case sunday
    case monday
}


var enum1: DaysOfWeek = .monday

print(enum1.rawValue.uppercased())
print("-----")

for day in DaysOfWeek.allCases {
    print(day.rawValue.uppercased())
}


switch enum1 {
case .sunday:
    print("MOnday")
case .monday:
    print("Mnnnnnnnnday")
}


enum DaysOfWeekTwo {
    case sunday
    case monday(String, String) // Only we have to mention type
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

var enum2: DaysOfWeekTwo = .monday("Hello World!", "ELO")

print(enum2)

switch enum2 {
case .sunday:
    print("A")
case .monday(let string, let string2): // Here we extract those associated Values
    print("Associated Value: \(string) + \(string2)")
case .tuesday:
    print("A")
case .wednesday:
    print("A")
case .thursday:
    print("A")
case .friday:
    print("A")
case .saturday:
    print("A")
}



enum DaysOfWeekThree: String {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    
    func returnRawValue() -> String {
        self.rawValue.uppercased() // self refers to the cases, the case on which it is called(function)
    }
}

var enum3: DaysOfWeekThree = .monday

print("--------")
print(enum3.returnRawValue()) // Assume here enum3 is .monday and on monday we are calling this function and inisde function .monday means self



//switch DaysOfWeekThree.allCases {
//case .sunday:
//    print("A")
//case .monday
//    print("A")
//case .tuesday:
//    print("A")
//case .wednesday:
//    print("A")
//case .thursday:
//    print("A")
//case .friday:
//    print("A")
//case .saturday:
//    print("A")
//} // This is wrong we switch on a value to check which case it belongs/matches to.

//switch enum3 {
//case .sunday:
//    <#code#>
//case .monday:
//    <#code#>
//case .tuesday:
//    <#code#>
//case .wednesday:
//    <#code#>
//case .thursday:
//    <#code#>
//case .friday:
//    <#code#>
//case .saturday:
//    <#code#>
//} // This is right as we check which case enum3 matches, in previous one we didnt have any value, it was only for forloop to iterate over all cases
