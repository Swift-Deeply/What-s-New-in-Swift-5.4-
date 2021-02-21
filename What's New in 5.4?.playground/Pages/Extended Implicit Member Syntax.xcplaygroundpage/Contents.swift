/*:
# Extended Implicit Member Syntax
 When defining an element inside a modifier, we no longer need to specify the main type of that element. So, you can chain together more than one member properties or functions without adding the type at the beginning like this below.
*/
.transition(.scale.move(…))
/*:
 After Swift 5.4, we have to write this code block below for same result.
*/
.transition(AnyTransistion.scale.move(…))
//: Page 5 / 6  |  [Next: Functions Supports Same Names](@next)
