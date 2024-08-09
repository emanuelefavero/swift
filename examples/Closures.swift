// * Closures
// Closures are self-contained blocks of functionality that can be passed around and used in your code

// Closure example (passing a closure to the sorted(by:) method)
print(["c", "a", "d", "b"].sorted(by: { (a: String, b: String) -> Bool in return a > b
}))

// The type can be inferred by the compiler, so we can remove it:
print(["c", "a", "d", "b"].sorted(by: { a, b in return a > b}))

// If the closure has a single expression, we can omit the return keyword:
print(["c", "a", "d", "b"].sorted(by: { a, b in a > b}))

// Swift provides shorthand argument names to inline closures, which can be used to refer to the closure's arguments by the names $0, $1, $2, and so on:
print(["c", "a", "d", "b"].sorted(by: { $0 > $1 }))

// Of course, there is also a shorthand for the sorted(by:) method:
print(["c", "a", "d", "b"].sorted(by: >))

/*
INFO:
  - `in` is a keyword that separates the parameters and return type from the body of the closure,
  - For characters, > "greater than" means "appears later" in the alphabet than. So if we use > as the sorting closure, the array will be sorted in descending order.
*/
