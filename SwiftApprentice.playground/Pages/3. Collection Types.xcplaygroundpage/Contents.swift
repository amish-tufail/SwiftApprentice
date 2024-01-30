// Nothing new for array.

// array.insert("A", at: 0)

// Sets

var newSet: Set<Int> = [1, 2, 1]
print(newSet)

// set.union()
// set.intersection()
// set.symmetricDifference()
// set.subtracting()

// set.isSubset(of: )
// set.isSuperset(of: )
// set.isDisjoint(with: )

// Remaing set is similar to array, same functions and operations.


// Dictionaries

var dict = ["Name" : "Amish", "Age" : "22"]

for result in dict {
    print(result.key + " " + result.value)
}
print("-------------------")
for (key, value) in dict {
    print(key + " " + value)
}
