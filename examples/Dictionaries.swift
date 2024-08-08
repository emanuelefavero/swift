// * Dictionaries

// Dictionaries are collections of key-value pairs

// Dictionaries of same type
var user: [String: String] = ["name": "John", "age": "30"]

// Accessing values
print(user["name"]!) // John, ! is needed since the value is optional
// or using as Any
print(user["name"] as Any) // John
// or using optional binding
if let name = user["name"] {
  print(name) // John
}
// or using nil coalescing operator
print(user["name"] ?? "") // John

// ? The user["name"] expression returns an optional String? type, which is then implicitly converted to Any when passed to the print function. To avoid this, we add ! to force unwrap the value

// Dictionaries of different types
var user2: [String: Any] = ["name": "John", "age": 30]

// Empty dictionary
var emptyDict: [String: String] = [:]
// or
var emptyDict2 = [String: String]()

// Adding key-value pairs
user["email"] = "john&email.com"
print(user) // ["name": "John", "age": "30", "email": "john&email.com"]

// Removing key-value pairs
user["email"] = nil
print(user) // ["name": "John", "age": "30"]

// Updating value
user["age"] = "31"
// or
user.updateValue("32", forKey: "age")

// Iterating over a dictionary
for (key, value) in user {
  print("\(key): \(value)") // name: John, age: 32
}

// Iterate and sort by key
for (key, value) in user.sorted(by: { $0.key < $1.key }) {
  print("\(key): \(value)") // age: 32, name: John
}

// Iterate and sort by value
for (key, value) in user.sorted(by: { $0.value < $1.value }) {
  print("\(key): \(value)") // name: John, age: 32
}

// Iterate over keys
for key in user.keys {
  print(key) // name, age
}
// or
for (key, _) in user {
  print(key) // name, age
}

// Iterate over values
for value in user.values {
  print(value) // John, 32
}
// or
for (_, value) in user {
  print(value) // John, 32
}

// Check if a key exists
print(user.keys.contains("name")) // true

// Check if a value exists
print(user.values.contains("John")) // true

// Count of key-value pairs
print(user.count) // 2

// Merge dictionaries
var a = ["name": "Jane"]
var b = ["age": "24"]
a.merge(b) { (current, _) in current}
print(a) // ["name": "Jane", "age": "24"]

// Remove a key-value pair and return its value
let removedValue = user.removeValue(forKey: "name")
print(removedValue)
print(user) // ["age": "32"]

// Remove all key-value pairs
user.removeAll()
print(user) // [:]

// Check if a dictionary is empty
print(user.isEmpty) // true
