// * Functions

func greet(user: String) -> String {
  return "Hello \(user)"
}

print(greet(user: "John")) // Hello John
// TIP: In Swift, function arguments need to named (label) when calling the function

// If you want to omit the argument label, you can use an underscore (_) when defining the function
func greet2(_ user: String) -> String {
  return "Hello \(user)"
}

print(greet2("John")) // Hello John

// You can omit the return type when defining a function
func greet3(user: String) -> String { "Hello \(user)" }
print(greet3(user: "John")) // Hello John

// Functions that don't return a value
func greet4(user: String) -> Void {
  print("Hello \(user)")
}

greet4(user: "John") // Hello John

// Functions with multiple parameters
func add(a: Int, b: Int) -> Int { a + b }
print(add(a: 2, b: 3)) // 5

// Functions with default values
func add2(a: Int, b: Int = 3) -> Int { a + b }
print(add2(a: 2)) // 5

// Functions with unknown number of parameters
func sum(_ nums: Int...) -> Int {
  var result = 0
  for n in nums {
    result += n
  }
  return result
}

print(sum(1, 2, 3, 4)) // 10, 1 + 2 + 3 + 4

// Functions with inout parameters (pass by reference)
// TIP: In Swift, all parameters are let constants by default, so you can't modify them inside the function. If you want to modify a parameter, you need to use the inout keyword
func increment(_ a: inout Int) {
  a += 1
}

var num = 10
increment(&num) // & is used to pass the variable by reference
print(num) // 11

// Functions as parameters
func add3(a: Int, b: Int) -> Int { a + b }
func subtract(a: Int, b: Int) -> Int { a - b }

func calculate(_ operation: (Int, Int) -> Int, a: Int, b: Int) -> Int {
  return operation(a, b)
}

print(calculate(add3, a: 2, b: 3)) // 5

// Functions as return types
func getOperation(_ operation: String) -> (Int, Int) -> Int {
  switch operation {
  case "+":
    return add3
  case "-":
    return subtract
  default:
    return add3
  }
}

let operation = getOperation("+")
print(operation(2, 3)) // 5

// Nested functions
func outer() -> String {
  func inner() -> String {
    return "inner"
  }
  return inner()
}

print(outer()) // inner

// Recursive functions
func fibonacci(_ n: Int) -> Int {
  if n <= 1 { return n }
  return fibonacci(n - 1) + fibonacci(n - 2)
}

print(fibonacci(10)) // 55

// Multiple return values
func minMax(_ nums: [Int]) -> (min: Int, max: Int)? {
  var min: Int = nums[0]
  var max: Int = nums[0]

  for num: Int in nums {
    if num < min {
      min = num
    } else if num > max {
      max = num
    }
  }

  return (min, max)
}

if let bounds = minMax([1, 2, 3, 4]) {
  print("min: \(bounds.min), max: \(bounds.max)") // min: 1, max: 4
}
