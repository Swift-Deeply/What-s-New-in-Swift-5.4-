/*:
# Multiple Variadic Parameters

 In Swift 5.4, we can use multiple variadic parameters on functions, methods, subscripts, and initializers. Before Swift 5.4 we had just one variadic parameters like the code below.
*/
func method(singleVariadicParameter: String) {}
/*:
 Now, we can write multiple variadic parameters like the code below.
*/
import SwiftUI
import Firebase
/*:
 Well, how we can initialize Firebase? The answer is simple: `init` method.
*/
func method(multipleVariadicParameter: String...) {}
/*:
 We can call the function we wrote above as follows. Of course, we can only write one (`String` element if we want.)
*/
method(multipleVariadicParameter: "Can", "Steve", "Bill")
/*:
 Multiple variadic parameters work just like arrays. Of course, when calling a value in a parameter, it is necessary to check beforehand whether that value exists or not, otherwise it will be wrong and crash.
*/
func chooseSecondPerson(persons: String...) -> String {
    let index = 1
    if persons.count > index {
        return persons[index]
    } else {
        return "There is no second person."
    }
}
//: Page 3 / 6  |  [Previous: Result Builders](@previous)
