
for value in 1...5 {
    print(value)
}

for value in stride(from: 0, through: 10, by: 0.5) {
    
}

var a = 1

while a<3 {
    print(a)
    a = a + 1
}

var b = 1
repeat {
    b = b + 1
    print(b)
} while b<3

// Now you can do this: var a = if {} else {} -> Same thing we can do with switch statements

let tuple = (1, 2)

// VALUE BINDING:

switch tuple {
case (let x, 0): // here second value must b 0 first can be anything
    print("\(x) is executedddddd")
case (0, let y): // here first value must b 0 second can be anything
    print("\(y) is executed")
case (let x, let y) : // here any value
    print("\(x) \(y) is executed")
}


// WHERE CLAUSE
switch tuple {
case (let x, let y) where x == y:
    print("Matched")
case (let x, let y) where x != y:
    print("Not Matched")
case (_, _):
    print("Nothing")
}

// FALLTHROUGH
switch tuple {
case (let x, let y) where x == y:
    print("Matched") // Without the fallthrough the execution would stop right here, but as we have fallthrough it goes to the next case as well
    fallthrough
case (let x, let y) where x != y:
    print("Not Matched")
    fallthrough
case (_, _):
    print("Nothing")
}
//
// LABELLED STATEMENTS
// It is used on loops and switch statement inside a loop.
// This just gives name to the loop
//
let array1 = [1, 2, 3]
let array2 = [7, 8, 9]
let targetSum = 10
//
//
search: for num1 in array1 {
    for num2 in array2 {
        if num1 + num2 == targetSum {
            print("Found a pair: \(num1) and \(num2)")
            break search //  this stops the outer loop, not just the inner one
            // Now if we dont break this loop, we will have 3 results that equal 10 but using this break it breaks the loop after the first result
        }
    }
}

// DEFER
// Think of defer as setting a reminder for yourself to do something right before you leave a room. No matter where you exit the room (front door, back door, window), you'll remember to do that thing. However, if the house collapses (your program crashes), that thing won't get done.
// Defer execute in reverse order meaning the last one executes first
func libraryVisit() {
    defer {
        print("Pushing the chair in.")
    }

    let borrowedPen = true
    if borrowedPen {
        defer {
            print("Returning the borrowed pen.")
        }
        print("Reading a book.")
    }
}
print("--------")
libraryVisit()


