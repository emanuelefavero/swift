// * Inheritance
// Inheritance is a mechanism in which one class acquires the properties and behavior of another class

// TIP: Only classes support inheritance in Swift (structures and enumerations do not)

// * Defining a Base Class (Superclass)
class Animal {
  var name: String = "Animal"

  func makeSound() -> String {
    return "Some sound"
  }
}

// * Defining a Subclass (a class that inherits from another class)
class Cat: Animal {
  var tail: Bool = true

  // TIP: The subclass can override the superclass methods
  override func makeSound() -> String {
    return "Meow"
  }
}

var cat: Cat = Cat()
cat.name = "Kitty"
print(cat.name) // Kitty
print(cat.makeSound()) // Meow

// TIP: Subclasses can themselves be superclasses for other classes
class Siamese: Cat {
  var color: String = "Grey"
}

var siamese: Siamese = Siamese()
print(siamese.color) // Grey

// * Preventing Overrides
// You can prevent a method, property, or subscript from being overridden by marking it as final

class Parrot {
  final func fly() -> String {
    return "Flying"
  }
}

class Cockatiel: Parrot {
  // TIP: This will cause an error because the fly method is marked as final
  // override func fly() -> String {
  //   return "Cockatiel Flying"
  // }
}

// TIP: You can also prevent a class from being inherited by marking it as final
final class Spider {
  var legs: Int = 8
}

/*
// TIP: This will cause an error because the Spider class is marked as final
class Tarantula: Spider {}
*/
