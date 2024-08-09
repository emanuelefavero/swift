// * Tuples
// Tuples are a way to group multiple values into a single compound value.

// TIP: The values inside a tuple can have different types

let code: (Int, String) = (200, "OK")
print(code.0, code.1) // 200 OK

// Assigning the values of a tuple to variables
let (statusCode, statusMessage) = code
print(statusCode, statusMessage) // 200 OK

// You can also ignore the values you don't need by using an underscore:
let (_, message) = code
print(message) // OK

// You can also name the elements of a tuple:
let httpCode = (statusCode: 200, statusMessage: "OK")
print(httpCode.statusCode, httpCode.statusMessage) // 200 OK

// TIP: Tuples are useful when you want to return multiple values from a function:
func getHttpCode() -> (Int, String) { (200, "OK") }
let (code1, message1) = getHttpCode()
print(code1, message1) // 200 OK
