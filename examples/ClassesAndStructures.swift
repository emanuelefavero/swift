// * Classes and Structures
// Classes and structures are general-purpose, flexible constructs that become the building blocks of your program’s code

// TIP: Unlike other programming languages, Swift doesn’t require you to create separate interface and implementation files for custom structures and classes
// TIP: Use structures by default. Use classes when you need reference types

// * Definition Syntax
// Classes and structures have a similar definition syntax

// Define a structure
struct User {
  var name: String
  var age: Int = 18

  // * Methods
  // TIP: Use mutating keyword to mark a method that modifies the structure’s properties
  mutating func increaseAge() -> Int {
    age += 1
    return age
  }
}

// Define a class
class Person {
  var name: String
  var age: Int = 18

  // TIP: Use init method to initialize the properties of a class (structures have an automatically generated member wise initializer)
  init(name: String) {
    self.name = name
  }

  // * Methods
  func increaseAge() -> Int {
    age += 1

    // TIP: Use self.age to explicitly refer to the property of the class if you have a local variable with the same name
    // self.age += 1

    return age
  }
}

// * Initialization

var user: User = User(name: "John")
var person: Person = Person(name: "Jane")

// * Accessing Properties

print(user.name) // John
print(person.name) // Jane

// * Modifying Properties

user.age = 20
person.age = 22

print(user.age) // 20
print(person.age) // 22

// * Methods

print(user.increaseAge()) // 21, increase the age by 1 and returns it
print(person.increaseAge()) // 23
