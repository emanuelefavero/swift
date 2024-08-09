// * Function Parameter Names

// * External Parameter Names (Argument Labels)
// External parameter names are used to label arguments when calling a function.
func sayHi(to name1: String, and name2: String) -> String {
  return "Hi \(name1) and \(name2)"
}

print(sayHi(to: "John", and: "Jane")) // Hi John and Jane

// * Default Parameter Values
// You can provide default values for parameters in a function.
func greet(_ user: String = "John") -> String { "Hello \(user)" }
print(greet()) // Hello John

// * Variadic Parameters
// Variadic parameters allow you to accept zero or more values of a specific type.
func sum(_ nums: Int...) -> Int {
  var result = 0
  
  for num in nums {
    result += num
  }

  return result
}

print(sum(1, 2, 3)) // 6, 1 + 2 + 3
