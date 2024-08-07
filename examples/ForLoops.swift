// * For Loops

// For-In
for i in 0...3 {
  print(i) // 0 1 2 3
}

for i in 0..<3 {
  print(i) // 0 1 2
}

// Loop over an array
var array = [1, 2, 3]

for i in array {
  print(i) // 1 2 3
}

// Loop over a dictionary
var dict = ["a": 1, "b": 2, "c": 3]

for (key, value) in dict {
  print("\(key): \(value)") // a: 1 b: 2 c: 3
}
