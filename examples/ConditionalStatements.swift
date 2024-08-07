// * Conditional Statements

// * If Statement

let a = 10
if a == 10 {
  print("a is 10")
} else if a < 10 {
  print("a is less than 10")
} else {
  print("a is greater than 10")
}

// * Switch Statement

// TIP: Swift does not require a break statement at the end of each case. If you want to fall through to the next case, you can use the fallthrough keyword.

let b = 20
switch b {
  case 20:
    print("b is 20")
    fallthrough
  default:
    print("b is an Integer")
}

// * Ranges

let c = 5
switch c {
  case 1...5:
    print("c is between 1 and 5")
  default:
    print("c is not between 1 and 5")
}
