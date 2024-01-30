
// STRING IS AN ARRAY OF CHARACTERS

// 1. String Mutability

var stringOne = "ONE"
var stringTwo = "TWO"

stringOne += stringTwo
print(stringOne)

// 2. LOOPING

for char in stringOne {
    print(char)
}

// 3. Append

stringOne.append("!")
print(stringOne)

// 4. String Indices

print(stringOne[stringOne.startIndex])

let index = stringOne.index(stringOne.startIndex, offsetBy: 3)
print(stringOne[index])

// 5. Insertion & Removal

stringOne.insert("!", at: stringOne.endIndex)
print(stringOne)

stringOne.insert("!", at: stringOne.startIndex)
print(stringOne)

stringOne.insert(contentsOf: "    ", at: stringOne.startIndex)
print(stringOne)
stringOne.remove(at: stringOne.startIndex)
print(stringOne)

// 6. SubString
let e = stringOne.firstIndex(of: "E")

print(stringOne[...e!])


// 7. SUFFIX and PREFIX
