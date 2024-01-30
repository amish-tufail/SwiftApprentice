// 1. Multiple statments in one line
let a = 1; print(a)

// 2. To increase readability
let b = 1_000_000_000
print(b)

// 3. Custom Types
typealias ab = String

let new: ab = "fefew"
print(new)

// 3. Error Handling

func throwsError() throws {
    print("Hello World")
}

// throwsError() -> X

do {
    try throwsError()
} catch {
    print(error)
}


// 4. Assert, PreCondition & FatalError



// ASSERT
// Scenario: You want to make sure a variable is always positive. If it's not, you want to catch the issue during development.
let age = 3
assert(age >= 0, "A person's age can't be less than zero.")

// In this code, you're asserting that age should be greater than or equal to zero. If it's not, the assertion fails during development (debug build), and you'll see the error message. It helps you catch issues early when you're testing and developing your code.




// PRECONDITION
// Scenario: You're building a function that calculates the square root of a number, and you want to ensure that the input number is always positive.
func calculateSquareRoot(_ number: Double) {
    precondition(number >= 0, "Input number must be non-negative.")
//    return sqrt(number)
}
calculateSquareRoot(4)

// Here, you're using a precondition to check if number is greater than or equal to zero before calculating the square root. If number is negative, the precondition fails, even in a production build. It helps you catch issues that could lead to unexpected behavior in your app.



// FATAL ERROR

// Scenario: You encounter a situation where you know your code should never reach, and if it does, it signifies a severe issue. You want to halt execution immediately with a clear error message.

func performDangerousOperation() {
    // Some code...
    
    // If something unexpected happens, we want to stop execution
//    if someCriticalConditionIsNotMet {
        fatalError("Critical error: Something unexpected occurred.")
//    }
    
    // Continue with the operation
    // ...
}

//performDangerousOperation()

// In this code, fatalError is used to indicate that something unexpected has occurred and that the program should terminate immediately. Unlike assertions and preconditions, which can be conditionally enabled or disabled in different build configurations, fatalError always halts execution, regardless of build settings. It's commonly used during early development or prototyping to indicate that a particular piece of functionality hasn't been implemented yet. For example:

func unimplementedFunction() {
    fatalError("Unimplemented: This function hasn't been coded yet.")
}
// Here, if you accidentally call unimplementedFunction, the program will crash with the message, reminding you that you need to implement that function.




// BASIC OPERATORS

// Close Range -> 1...5
// Half-Open Range -> 1..<5
// One Sided -> 1... / ...5 / ..<5

