import Foundation

// Your own Custom Errors
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

// Now if you want to throw an error:

// throw VendingMachineError.invalidSelection

/*
 
     func canThrowErrors() throws -> String // Throws error

     func cannotThrowErrors() -> String // Doesn't throw error
 
*/



// Also, init can throw errors

// init() throws { // Some code there }

/*
 
 do {
     try <#expression#>
     <#statements#>
 } catch <#pattern 1#> {
     <#statements#>
 } catch <#pattern 2#> where <#condition#> {
     <#statements#>
 } catch <#pattern 3#>, <#pattern 4#> where <#condition#> {
     <#statements#>
 } catch {
     <#statements#>
 }
 // Here, you use do catch, in do if error is thrown then matches with the appropriate catch which can handle the error and then throws the error
*/

/*
 
     do {
             try vendingMachine.vend(itemNamed: item)
         } catch is VendingMachineError {
             print("Couldn't buy that from the vending machine.")
         }
 
 // is VendingMachineError includes all the cases of this error Enum and has same error for each and, there is another way to do this exaclty the same way:
 
     do {
     try vendingMachine.vend(itemNamed: item)
     } catch VendingMachineError.invalidSelection, VendingMachineError.insufficientFunds, VendingMachineError.outOfStock {
     print("Invalid selection, out of stock, or not enough money.")
     }
 
 // Here, we use comma (,) to separate errors but all have same error handling
*/

// If you want to propagate error, meaning you are certain that it will not throw an error you use !
// let photo = try! loadImage(atPath: "./Resources/John Appleseed.jpg")

// Converting Errors to Optional Values

/*

     func someThrowingFunction() throws -> Int {
         // ...
     }


     let x = try? someThrowingFunction()


     let y: Int?
     do {
         y = try someThrowingFunction()
     } catch {
         y = nil
     }

 // Both x and y have same value if error is thrown that is nil. try? tries to do work but it error is thrown it returns nil meaning an optional value
*/


