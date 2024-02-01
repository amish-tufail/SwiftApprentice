////
////
//// CLOSURE SYNTAX
////
/////*
////    { (parameters) -> Return Type in
////     Code
////    }
////*/
////
////var names = ["b", "a"]
////
////var e = names
////
////print(e)
////
////
////
//// 1.
////func name(a: String, b: String) -> Bool {
////    return true
////}
////
//// 2.
////{ (a: String, b: String) -> Bool in
////    return true
////}
////
//// 3.
////{ (a,b) in
////return true
////}
////
//// 4.
////{
////    true
////}
////
//// Closures in functions
//// Escaping Clousers
////
//
//func add(a: Int, b: () -> ()) {
//    print(a)
//}
//
//add(a: 2) {
//}
//
//
//func sub(a: Int, b: (Int) -> ()) {
//    b(a+4)
//}
//
//sub(a: 5) { v in
//    print(v)
//}
//
//func sub4(a: Int, b: (Int) -> (Int)) {
//    b(a + 4)
//}
//
//var value = sub4(a: 5) { v in
//    let a = v
//    print(a)
//    return (a + 10)
//}
//print(value)

// NOTE: Closures Capture Values which means they keep refernce of it.

// AUTOCLOSURES:

let debug = true

//func display(_ v: String) {
//    if debug == true {
//        print(v)
//    }
//}

//display("Hello World!")

// Problem above is that we are unncessary taking memory even whe debug will be false, we are still passing the value. But why only pass when debug is true. To achieve this we pass value as a closure


//func display(_ value: () -> (String)) {
//    if debug == true {
//        print("\(value())")
//    }
//}
//
//display {
//    return "Hello World!"
//}

// So, now we pass as closure, and it only uses closure/ calls it when debug will be true else no closure call so no data and no memory usage, but how to make it look like argument is being passed and not closure

// Well...

// we use @autoclousre

func display(_ value: @autoclosure () -> (String)) {
    if debug == true {
        print("\(value())")
    }
}

display("Hello World!")

func sub(a: Int, b: (Int) -> ()) {
    b(a+4)
}

sub(a: 5) { v in
    print(v)
}
