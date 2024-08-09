// * Function Types

// * Function Types as return types

func add(_ a: Int, _ b: Int) -> Int { a + b }
func subtract(_ a: Int, _ b: Int) -> Int { a - b }

func chooseOperation(_ operation: String) -> (Int, Int) -> Int {
  return operation == "-" ? subtract : add
}

let operation: (Int, Int) -> Int = chooseOperation("-")
print(operation(5, 2)) // 3, 5 - 2

// TIP: We used (Int, Int) -> Int to define the function type that the chooseOperation function returns

// * Function Types as parameter types

func calculate(_ operation: (Int, Int) -> Int, a: Int, b: Int) -> Int {
  return operation(a, b)
}

print(calculate(add, a: 2, b: 3)) // 5

// TIP: This is basically a higher-order function that takes another function as a parameter
// INFO: A higher order function is a function that takes one or more functions as arguments, or returns a function as its result

// * Function Types as local variables

let operation2: (Int, Int) -> Int = add
print(operation2(2, 3)) // 5

// * Function Types as type aliases

typealias Operation = (Int, Int) -> Int

func calculate2(_ operation: Operation, a: Int, b: Int) -> Int {
  return operation(a, b)
}

print(calculate2(subtract, a: 5, b: 2)) // 3

// TIP: We used typealias to define a new name for the function type (Operation)

// * Nested functions

func outer() -> String {
  func inner() -> String { "inner" }
  return inner()
}

print(outer()) // inner

// TIP: The inner function is only available within the outer function

// * Recursion

func factorial(_ n: Int) -> Int {
  if n == 0 { return 1 }
  return n * factorial(n - 1)
}

print(factorial(4)) // 24, 4 * 3 * 2 * 1

// TIP: Recursion is when a function calls itself

// We can also write a recursive function using a ternary operator:
func fib(_ n: Int) -> Int { n < 2 ? n : fib(n - 1) + fib(n - 2) }
print(fib(6)) // 8, 0 1 1 2 3 5 8
