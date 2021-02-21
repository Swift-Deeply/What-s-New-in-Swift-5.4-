/*:
# Extended Implicit Member Syntax
 Sometimes you want to write functions with the same name. At least I wanted to do it. With Swift 5.4, we can really do that.
 For example, if we create functions with the same names and in these functions' have same parameter name, our code will work if we define these parameters with different object types.
 You can try write these below.
*/
struct iPhone {}
struct iPad {}
struct Mac {}

func setUpAppleProducts() {
    func setUp(product: iPhone) {
        print("iPhone is bought")
    }
    
    func setUp(product: iPad) {
        print("iPad is bought")
    }
    
    func setUp(product: Mac) {
        print("Mac is bought")
    }
    
    setUp(product: iPhone())
    setUp(product: iPad())
    setUp(product: Mac())
}
/*:
 ---
 
 Hopefully, you found this article helpful. If It's true, please clap this article and share your friends. There are new reports that Swift 6.0 may be released. I will also write an article on this subject.
*/
//: Page 6 / 6  |  [Previous: Extended Implicit Member Syntax](@previous)
