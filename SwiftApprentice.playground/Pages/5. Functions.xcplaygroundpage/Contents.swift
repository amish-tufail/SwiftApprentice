

// Function that returns multiple values

func a() -> (Int, Int) {
    return (1, 2)
}


print(a().0)
print(a().1)

// VARADIC FUNCTION

func values(_ numbers: Int...) {
    for num in numbers {
        print(num)
    }
}

values(5, 6, 7, 8, 9, 10)


// INOUT FUNCTION

func a(value: inout Int) {
    value = value + 100
}

// a(value: &5) // We can pass parameter like this because this is just a value and doesnt exist anywhere
var value = 20
print("----")
print(value)
a(value: &value)
print(value) // so value changed



// FUNCTION TYPES

var c: Int = 10 // Here Int is a type

func add(a: Int, b: Int) -> Int {
    a + b
} // This function has type (Int, Int) -> Int

// We assign this above type to a var

var e: (Int, Int) -> Int = add

print(e(5, 2))

// FUNCTION TYPES AS PARAMETER

func new(adds: (Int, Int) -> Int, a: Int, b: Int) {
    print(adds(a, b))
}

new(adds: add, a: 6, b: 16)


// FUNCTION AS RETURN TYPE

func sub(a: Int, b: Int) -> Int {
    a - b
}

func check(value: Bool) -> (Int, Int) -> Int {
    if value {
        return add
    } else {
        return sub
    }
}

var returnType = check(value: false)
print(returnType(9, 4))

// NESTED FUNCTIONS

// Its same as above conecpt but here functions are only limited and visible inside the main function and are not global like others

func check2(value: Bool) -> (Int, Int) -> Int {

    func addddd(a: Int, b: Int) -> Int {
        a + b + 100
    }

    func subbbb(a: Int, b: Int) -> Int {
        a - b + 100
    }
    if value {
        return addddd
    } else {
        return subbbb
    }
}


var returnedTyped2 = check2(value: true)

print(returnedTyped2(5, 1))
