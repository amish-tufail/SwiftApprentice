//
//
// CLOSURE SYNTAX
//
///*
//    { (parameters) -> Return Type in
//     Code
//    }
//*/
//
//var names = ["b", "a"]
//
//var e = names
//
//print(e)
//
//
//
// 1.
//func name(a: String, b: String) -> Bool {
//    return true
//}
//
// 2.
//{ (a: String, b: String) -> Bool in
//    return true
//}
//
// 3.
//{ (a,b) in
//return true
//}
//
// 4.
//{
//    true
//}
//
// Closures in functions
// Escaping Clousers
//

func add(a: Int, b: () -> ()) {
    print(a)
}

add(a: 2) {
}


func sub(a: Int, b: (Int) -> ()) {
    b(a+4)
}

sub(a: 5) { v in
    print(v)
}

func sub4(a: Int, b: (Int) -> (Int)) {
    b(a + 4)
}

var value = sub4(a: 5) { v in
    let a = v
    print(a)
    return (a + 10)
}
print(value)

// NOTE: Closures Capture Values which means they keep refernce of it.

