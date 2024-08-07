import Foundation // needed for .replacingOccurrences(of:, with:)

// * Strings

// String interpolation (string literals)
var name: String = "John"
print("Hello \(name)") // Hello John

// Concatenation
var firstName: String = "John"
var lastName: String = "Doe"
var fullName: String = firstName + " " + lastName
print(fullName) // John Doe

// Multiline strings
var multiline: String = """
This is a multiline string
It can contain multiple lines
"""

print(multiline)

// String length
var str: String = "Hello"
print(str.count) // 5

// String comparison
var str1: String = "Hello"
var str2: String = "Hello"
print(str1 == str2) // true

// Append to a string
var str3: String = "Hello"
str3.append(", World!")
print(str3) // Hello, World!

// Substring
var str4: String = "Hello, World!"
print(str4.prefix(5)) // Hello

var index = str4.index(str4.startIndex, offsetBy: 7)
print(str4.suffix(from: index)) // World!

// Split a string
var str5: String = "apple,orange,banana"
var fruits = str5.split(separator: ",")
print(fruits) // ["apple", "orange", "banana"]

// Replace a substring
var str6: String = "Hello, World!"
print(str6.replacingOccurrences(of: "World", with: "Swift")) // Hello, Swift!

// Convert to uppercase/lowercase, capitalize
var str7: String = "Hello"
print(str7.uppercased()) // HELLO
print(str7.lowercased()) // hello
print(str7.capitalized) // Hello

// Check if a string contains a substring
var str8: String = "Hello, World!"
print(str8.contains("World")) // true

// Check if a string starts/ends with a substring
var str9: String = "Hello, World!"
print(str9.hasPrefix("Hello")) // true
print(str9.hasSuffix("World!")) // true

// Remove whitespace
var str10: String = "  Hello, World!  "
print(str10.trimmingCharacters(in: .whitespaces)) // Hello, World!

// Convert to an array of characters
var str11: String = "Hello"
var chars = Array(str11)
print(chars) // ["H", "e", "l", "l", "o"]

// Convert to an array of substrings
var str12: String = "apple,orange,banana"
var substrings = str12.components(separatedBy: ",")
print(substrings) // ["apple", "orange", "banana"]

// Convert to a number
var str13: String = "42"
var num = Int(str13)
print(num) // Optional(42)

// Convert to a string
var num2: Int = 42
var str14 = String(num2)

// Convert to a string with formatting
var num3: Double = 3.14159
var str15 = String(format: "%.2f", num3)
print(str15) // 3.14

// Convert to a string with padding
var num4: Int = 42
var str16 = String(format: "%04d", num4)
print(str16) // 0042

// Convert number to a string with currency formatting
var num5: Int = 1000000
var formatter = NumberFormatter()
formatter.numberStyle = .currency
var str17 = formatter.string(from: NSNumber(value: num5))
print(str17) // 1.000.000,00 €
