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
