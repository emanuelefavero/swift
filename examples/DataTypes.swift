// * Data Types
// "Primitive" data types in Swift
var a: Int = 42
var b: Double = 3.14159
var c: String = "Hi"
var d: Bool = true
var e: Character = "A"

// Arrays
var f: [Int] = [1, 2, 3]

// Arrays of mixed types
var g: [Any] = [1, "Hi", true]

// Dictionaries
var h: [String: Int] = ["a": 1, "b": 2]

// Dictionaries of mixed types
var i: [String: Any] = ["a": 1, "b": "Hi", "c": true]

// Tuples
var j: (Int, String) = (1, "Hi")

// Tuples with named elements
var k: (id: Int, name: String) = (1, "Hi")
// print(k.id)

// Optional types
var l: Int? = nil
// if l == nil {
//   print("l is nil")
// }

// TIP: nil is a special value that represents "no value", like null in other languages
