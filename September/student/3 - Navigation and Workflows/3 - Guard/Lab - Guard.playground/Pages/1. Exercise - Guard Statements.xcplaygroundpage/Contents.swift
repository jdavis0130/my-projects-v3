import UIKit

func calculateArea(x: Double, y: Double) -> Double? {
    guard x >= 0 && y >= 0 else{
        return nil
        
    }
    return x * y
}

calculateArea(x: -2.5, y: 1.6)

//:  Create a function called `add` that takes two optional integers as parameters and returns an optional integer. You should use one `guard` statement to unwrap both optional parameters, returning `nil` in the `guard` body if one or both of the parameters doesn't have a value. If both parameters can successfully be unwrapped, return their sum. Call the function once with non-`nil` numbers and once with at least one parameter being `nil`.
func add(one: Int?, two: Int?) -> Int?{
    guard let x = one, let y = two else {
        return nil
    }
    return x + y
}

add(one: 45, two: 3)

/*:
 When working with UIKit objects, you will occasionally need to unwrap optionals to handle user input. For example, the text fields initialized below have `text` properties that are of type `String?`.

 Write a function below the given code called `createUser` that takes no parameters and returns an optional `User` object. Write a guard statement at the beginning of the function that unwraps the values of each text field's `text` property, and returns `nil` if not all values are successfully unwrapped. After the guard statement, use the unwrapped values to create and return and instance of `User`.
 */
struct User {
    var firstName: String
    var lastName: String
    var age: String
}

let firstNameTextField = UITextField()
let lastNameTextField = UITextField()
let ageTextField = UITextField()

firstNameTextField.text = "Jonathan"
lastNameTextField.text = "Sanders"
ageTextField.text = "28"

func createUser() -> User?{
    guard let name = firstNameTextField.text, let surname = lastNameTextField.text, let age = ageTextField.text else{
        return nil
    }
    return User(firstName: name, lastName: surname, age: age)
}

//:  Call the function you made above and capture the return value. Unwrap the `User` with standard optional binding and print a statement using each of its properties.
let userOne = createUser()

if let user = userOne{
    print("My first user was \(user.firstName) \(user.lastName), he is \(user.age) years old")
}

/*:
page 1 of 2  |  [Next: App Exercise - Guard](@next)
 */
