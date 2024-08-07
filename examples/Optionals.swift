// * Optionals

// Optionals are a way to represent the possibility of a value not being there. 
var code: Int? = 404
// print(code as Any) // Optional(404)
code = nil
// print(code as Any) // nil

// You can use optional binding to safely unwrap an optional value
if let code = code {
  print("Status code: \(code)")
} else {
  print("No status code")
}

// You can also use the nil-coalescing operator to provide a default value
let statusCode = code ?? 200
print("Status code: \(statusCode)")
