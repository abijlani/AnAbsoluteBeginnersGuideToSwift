/*:
  
 ## An Absolute Beginner's Guide to Swift
 
 ###### Author: Amit Bijlani
 ###### Company: Treehouse
 
*/

import UIKit


/*:
 When talking about Swift, Apple refers to three key considerations: safe, modern and powerful. It lives up to all those three things. Outlined below are some of the very basics you need to get up and running with Swift. If you already know a programming language then you will see a lot of similarities with other modern languages.
 
 As with every programming language you have variables which allow you to store data. To declare a variable you have to use the keyword `var`.
*/
var greeting: String = "Hello World"
/*:
 Breaking down the above code:
- `var`: is a special keyword to declare a new variable
- `greeting`: is the name of this variable that is provided by you the programmer. Essentially you are instructing that you want to store something and want to label that storage `greeting` to reference it later.
- `String`: type of storage, which stores a sequence of characters.
- `=` is an assignment operator. Anything that will come after it will be assigned to the variable on the left of the assignment operator.
- `"Hello World"` an arbitrary sequence of characters such as this is wrapped in quotes to instruct the system that it is not part of the instruction set. It is simply to be stored as is which is known as a `String` type.
 
 Together the above line of code instructs the system that you want to create a variable labeled `greeting`, which is of type `String` and it will contain the text "Hello World".
 
 
 Swift is smart enough to infer that if you are assigning a string to a variable then it will automatically associate the type with the variable. So you need not explicitly specify the type in the above example. A common way of writing the above example would be:

 */
var greeting2 = "Hello World" // Inferred type String

/*:
Variables can be modified once created so we could add another line and change our greeting to something else.
*/
greeting = "Hello Swift"

/*:
 While writing an application there are many instances where you don't want to change a variable once it has been initialized with a value. Apple has always had two variants of types: mutable and immutable. Mutable meaning the variable can be modified and immutable that it cannot be modified. Immutability is preferred by default which means that the values aren't going to change and it makes your app faster and safer in a multi-threaded environment (an advanced topic which you need not worry about just yet). To create an immutable variable you need to use the keyword `let`.

 If we change our greeting example to use `let` instead of `var` then the second line will give us a compiler error because we cannot modify `greeting`. And we can no longer call `greeting` a variable since we are using the keyword `let`. It is called a constant because it cannot be modified.
*/
let greeting3 = "Hello World" // constant
//greeting3 = "Hello Swift" //Uncomment to see the compiler error
//: Let's take another example so you understand why and when to use let.
let languageName: String  = "Swift"
var version: Double       = 1.0
let yearIntroduced: Int   = 2014
let isAwesome: Bool       = true
/*:
 The above example not only shows us the various types that are available in Swift but it also shows us the reason to use `let`. Aside from the version number of the Swift language everything else remains constant. You might argue that isAwesome is debatable but I'll let you reach that conclusion once you reach the end of this post.
 Since the type is inferred we should simply write:
 */
 let languageName2    = "Swift" // inferred as String
 var version2         = 1.0     // inferred as Double
 let yearIntroduced2  = 2014    // inferred as Int
 let isAwesome2       = true    // inferred as Bool
/*:
 ## Strings
 In our above example we have been writing the String type. Let's see how we can join two strings by using the + operator.
*/
 let title = "An Absolute Beginner's Guide to Swift"
 let review = "Is Awesome!"
 let description = title + " - " + review
/*:
 The `title` and `review` strings are joined together and the resulting string is assigned to the constant description. The joining of strings is known as concatenation. There are times when using the `+` operator to concatenate is cumbersome, at times like these we use something known as string interpolation. This powerful feature allows us to use variables inside of double quotes which eventually are replaced by their values.
 */
let datePublished = "June 9th, 2014"
let postMeta = "Blog Post published on: \(datePublished)"
/*:
 The resulting `postMeta` string will contain the value of datePublished along with the rest of the string. The same string could have been written using the plus operator but this is way is a lot cleaner and concise.
 
 In all the above examples we have been using the keyword `let` which means you cannot modify the string once it has been created. However, if you do need to modify the string then simply use the keyword `var`.
 
 ## Numeric Types
 Besides strings you have several types to store numeric values. `Int` for whole numbers. `Double` and `Float` for floating-point numbers and `Bool` for boolean values such as: true of false. These types are inferred just as a string so you need not explicitly specify them when creating a variable.
 
 The difference between the floating-point types`Float` and `Double` are that they vary in precision and how large of a number you can store.
 `Float`: represents a 32-bit floating-point number and the precision of `Float` can be as little as 6 decimal digits.
 `Double`: represents a 64-bit floating point number and has a precision of at least 15 decimal digits.
 
 By default when you write a floating-point number it is inferred as a Double. 
 */
let age = 24            // inferred as Int
var price = 12.99       // inferred as Double
//: You can explicitly specify a Float.
var totalPrice: Float = 99.99
/*:
 ## Collection Types
 
 ### Array
 A collection contains multiple items that can be accessed via subscripting. There are two main types of collections: array and dictionary. An array is an indexed collection of identically typed data items and can be accessed via an index beginning with 0.
*/
var cardNames: [String] = ["Jack", "Queen", "King"]
// Swift can infer [String] so we can also write it as:
// var cardNames = ["Jack", "Queen", "King"] // inferred as [String]
/*:
 You might have noticed that in my description above, I mentioned that an array has "identically typed items". In Objective-C, you can store any number of types in a single array. The common theme amongst Swift is that it is a safe language, which means that an array of strings is just that, an array of strings. You cannot add any other type into the mix.
 
 To access an item from the array you need to use the subscript:
*/
 let firstCard = cardNames[0]
/*:
 The above line instructs the system to access the first element in the array and assign it to the constant named `firstCard`.

### Modifying an Array

Lets create a new array that contains a todo list.
*/
var todo = ["Write Blog","Return Call"]
/*:
Make sure that you use the keyword var so that we can modify our array.

To add another item to our todo array we use the '+=' operator:
*/
todo += ["Get Grocery"]
//: To add multiple items to our todo array we simply append an array:
todo += ["Send email", "Pickup Laundry"]
//: To replace an existing item in the array, simply subscript that item and provide a new value:
todo[0] = "Proofread Blog Post"
//: To replace an entire range of items:
todo[1...4] = ["Pickup Laundry","Get Grocery", "Cook Dinner"]
//: To list out the number of items in the array:
todo.count
/*:
 ### Dictionary
The other collection type is a Dictionary which is similar to a Hash Table in other programming languages. A dictionary allows you to store key-value pairs and access the value by providing the key.

For example, we can specify our cards by providing their keys and subsequent values.*/
var cards = ["jack" : 11, "queen" : 12, "king" : 13]

/*: Above we have specified the card names as the keys and their corresponding numerical value. Keys are not restricted to the String type, they can be of any type and so can the values.

To access a specific card we can subscript the key to retrieve its value:
*/
let jack = cards["jack"]
/*:
### Modifying a Dictionary
What if we wanted to add an "ace" to our cards dictionary? All we have to do is use the key as a subscript and assign it a value. Note: cards is defined as a var which means it can be modified.
*/
cards["ace"] = 15
/*: 
 We made a mistake and want to change the value of "ace". Once again just use the key as the subscript and assign it a new value.
 */
cards["ace"] = 1
/*:
 ## Control Flow
 ### Looping
 What good is a collection if you cannot loop over it? Swift provides while, repeat-while, and for-in loops. Let's take a look at each one of them.
 
 The easiest one of them is the while loop which states while something is true execute a block of code. It stops execution when that condition turns to false.
 */
 var complete = false
 while !complete {
 print("Downloading...")
    complete = true
 }
 /*: Note: the exclamation mark before the variable complete denotes not and is read as "not complete". This is the first time we are using the print function. It essentially prints out whatever string is provided to it within the parenthesis.
 
 Likewise, you have the `repeat-while` loop which ensures that your block of code is executed at least once.
 */
 var message = "Starting to download"
 repeat {
    print(message)
    message = "Downloading.."
 } while !complete
 /*:
 Subsequent calls to the `print` statement will `print` "Downloading.." until the variable `complete` is set to `true`.
 
 Finally, you have the for-in look where it creates a temporary variable and assigns it a value while iterating over the array.
 */
 for cardName in cardNames {
    print(cardName)
 }
/*:
 The above code will print out all the card names in the array. We can also use a range. A range of values is denoted by two dots or three dots.
 
 For example:
 - 1...10 - is a range of numbers from 1 to 10. The three dots are known as a closed range because the upper limit is inclusive.
 - 1..<10 - is range of numbers from 1 to 9. The two dots with a lesser-than symbol is known as a half-closed range because the upper limit is non-inclusive.
 
 Let's print out the 2 times table using for-in with a range:
 */
 for number in 1...10 {
    print("\(number) times 2 is \(number*2)")
 }
 //: We can also iterate over the cards dictionary to print out both the key and the value:
 for (cardName, cardValue) in cards {
    print("\(cardName) = \(cardValue)")
 }
//: ### If Statements
//: To control the flow of our code there is an `if` statement.
let cardValue = 11
if cardValue == 11 {
    print("Jack")
} else if cardValue == 12 {
    print("Queen")
} else {
    print("Not found")
}
//: Note: The `if` syntax can have parenthesis but they are optional.
/*:
### Switch Statement
The switch statement in Swift is very versatile and has a lot of features. Some basic rules about the switch statement:
It doesn't require a break statement after each case statement
The switch is not limited to integer values. You can match against any values such as: String, Int, Double or any object for that matter.
It must be exhaustive which means that it must match against every value possible, if not, you must have a default case. If you don't provide a case for every value or a default then you will get a compiler error saying: "switch must be exhaustive".
*/
switch cardValue {
case 11:
    print("Jack")
case 12:
    print("Queen")
default:
    print("Not found")
}

//: Let's say you have a distance variable and you are trying to print a message based on distance. You can use multiple values for each case statement:

let distance = 10
switch distance {
case 0:
    print("not a valid distance")
case 1,2,3,4,5:
    print("near")
case 6,7,8,9,10:
    print("far")
default:
    print("too far")
}
/*:
There are times when even multiple values are limiting. For those instances you can use ranges. What if any distance greater than 10 and less than 100 was considered far?
*/

switch distance {
case 0:
    print("not a valid distance")
case 1..<10:
   	print("near")
case 10...100 :
    print("far")
default:
    print("too far")
}
/*:
## Functions
Finally, we have been using `print` a lot, which is an example of how to use a function. But how do you create your own function?

It is simple, you have to use the keyword `func` and provide it with with a name.
*/
func printCard() {
    print("Queen")
}
printCard()

//: What good is a function if it is always going to just print "Queen" as the card name. What if we want to pass it a parameter so it can print any card name?
func printCard(cardName: String) {
    print(cardName)
}
printCard(cardName: "Jack")

//: Of course, we are not restricted to just one parameter. We can pass in multiple parameters:
func printCard(cardName: String, cardValue: Int) {
    print("\(cardName) = \(cardValue)")
}
printCard(cardName: "Jack", cardValue: 11)

//: What if we simply wanted our function to build a string and return the value instead of printing it? We can specify a return type which is specified at the end of the function declaration followed by an `->` symbol.
func buildCard(cardName: String, cardValue: Int) -> String {
    return "\(cardName) = \(cardValue)"
}

//: Above we are saying that we are creating a function named `buildCard` which takes in two parameters and returns a String. The return keyword is important without it you will get a compiler error. The return statement requires a value and in our case we are returning a string. We would use this function as such:
let card = buildCard(cardName: "Jack", cardValue: 11)
