// * Control Transfer

// Control Transfer statements transfer control from one piece of code to another. Swift has five control transfer statements: continue, break, fallthrough, return, and throw.

// Continue
var sum = 0

for i in 0...4 {
  if i % 2 == 0 {
    continue
  }
  sum += i
}

print(sum) // 4, sum of odd numbers from 0 to 4 (1 + 3)

// Break
var sum2 = 0

for i in 0...4 {
  if (i == 3) {
    break
  }
  sum2 += i
}

print(sum2) // 3, sum of numbers from 0 to 2 (0 + 1 + 2)

// Fallthrough
let a = 10

switch a {
  case 10:
    print("a is 10")
    fallthrough
  default:
    print("a is an Integer")
}

// Return
func add(a: Int, b: Int) -> Int {
  return a + b
}

print(add(a: 1, b: 2)) // 3

// Throw
enum CustomError: Error {
  case error1
  case error2
}

func throwError() throws {
  throw CustomError.error1
}

do {
  try throwError()
} catch {
  print("An error occurred")
}
