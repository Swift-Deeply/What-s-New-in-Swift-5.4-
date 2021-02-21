/*:
# Result Builders
 Since SwiftUI came out, result builders are so important in Swift. Now, it is much more important with the new improvements.
 
 Can we create dozens of Strings with a function that outputs a `String`? If we use result builders, the answer is yes!
 
 We can define new result builders by defining new struct with `@resultBuilder`. The methods and properties you will define must be `static.
 
 Back to our example of transforming `String` elements into a single `String` element. With the result builder below, we can join `String` elements written under them.
*/
@resultBuilder
struct StringBuilder {
    static func buildBlock(_ strings: String...) -> String {
    strings.joined(separator: "\n")
    }
}
/*:
 Let's use this to describe it.
*/
let stringBlock = StringBuilder.buildBlock(
    "It really inspires the",
    "creative individual",
    "to break free and start",
    "something different."
)

print(stringBlock)
/*:
 We had to use the `buildBlock` method directly when defining a value. Therefore, we had to put a comma at the end of each `String` element. Instead, we can use the `StringBuilder` in a function to do the same thing without using commas.
*/
@StringBuilder func makeSentence() -> String {
    "It really inspires the"
    "creative individual"
    "to break free and start"
    "something different."
}

print(makeSentence())
/*:
 What we have done with result builders so far may not mean much for you, but if we use result builders a little more effectively, you will understand their power better. For example, with two new methods that we will add to our result builder, we can use conditions for generate `String` elements using our result builder.
*/
@resultBuilder
struct ConditionalStringBuilder {
    static func buildBlock(_ parts: String...) -> String {
        parts.joined(separator: "\n")
    }

    static func buildEither(first component: String) -> String {
        return component
    }

    static func buildEither(second component: String) -> String {
        return component
    }
}
/*:
 As you can see, by creating an `if` loop, we can change the `String` element according to the boolean value.
*/
@ConditionalStringBuilder func makeSentence() -> String {
    "It really inspires the"
    "creative individual"
    "to break free and start"

    if Bool.random() {
        "something different."
    } else {
        "thinking different."
    }
}

print(makeSentence())
/*:
 There are many things that can be done with result builders. You can find them by trying.
*/
//: Page 4 / 6  |  [Next: Extended Implicit Member Syntax](@next)
