// ? Also @see ./OOP/ClassesAndStructures.swift

// * Structures
// Structures are used to define a new data type. They are similar to classes, but they are value types. This means that when you assign a structure to a new constant or variable, a copy of the structure is created. Structures are useful when you want to create a new data type that is not intended to be subclassed.

struct Person {
  // * Properties
  var name: String
  var age: Int

  // * Methods
  func greet() -> String {
    return "Hello, my name is \(name) and I am \(age) years old."
  }
}

// * Creating an instance of a structure
var person: Person = Person(name: "John", age: 30)

// * Accessing properties
print(person.name) // John
print(person.age) // 30

// * Accessing methods
print(person.greet()) // Hello, my name is John and I am 30 years old.

// * Structures are value types
// This means that when you assign a structure to a new constant or variable, a copy of the structure is created
var anotherPerson: Person = person
anotherPerson.name = "Jane"

print(person.name) // John, not Jane since the original structure was not modified
