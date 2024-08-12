// * Enumerations
// Enumerations in Swift are used to define a common type for a group of related values

enum Color {
    case red
    case green
    case blue
}

print(Color.red) // red

// You can also use shorthand syntax to define the enumeration values in a single line
enum Color2 {
  case red, green, blue
}

print(Color2.red) // red

// You can also assign raw values to the enumeration cases
enum Color3: String {
  case red = "#f00"
  case green = "#0f0"
  case blue = "#00f"
}

print(Color3.blue.rawValue) // #00f

// You can also assign raw values of type Int (or Double) to the enumeration cases. Swift will automatically assign the raw values starting from 0 and incrementing by 1 for each case
enum Color4: Int {
  case red
  case green
  case blue
}

print(Color4.red.rawValue) // 0
print(Color4.green.rawValue) // 1

// If you assign the first case a raw value, Swift will automatically assign the raw values starting from that value and incrementing by 1 for each case
enum Color5: Int {
  case red = 1
  case green
  case blue
}

print(Color5.red.rawValue) // 1
print(Color5.green.rawValue) // 2
