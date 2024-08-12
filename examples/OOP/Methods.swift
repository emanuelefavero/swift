// * Methods
// Instance methods are functions that belong to instances of a particular class, structure, or enumeration

struct User {
  var name: String = "John"

  // Methods are defined inside the structure using the func keyword
  func greet() -> String {
    return "Hi \(name)"
  }
}

var user: User = User()
print(user.greet()) // Hi John

// * The self Property
// The self property refers to the current instance of the type

struct Counter {
  var num: Int = 0

  // TIP: The self property is particularly useful when a parameter name is the same as a property name
  // ? mutating keyword is used to indicate that the method is allowed to modify the properties of the structure. By default, the properties of a value type cannot be modified from within its instance methods
  mutating func increment(num: Int) {
    self.num += num
  }
}

var counter: Counter = Counter()
counter.increment(num: 10)
print(counter.num) // 10

// * Type Methods
// Type methods are methods that are called on the type itself and it is defined using the static keyword

struct Math {
  static func add(a: Int, b: Int) -> Int {
    return a + b
  }
}

print(Math.add(a: 10, b: 20)) // 30
