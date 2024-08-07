// * Convert Types

print(Int(3.9)) // 3
print(Double(3)) // 3.0
print(String(3)) // "3"
print(Int("3")) // Optional(3)
print(Int("Hello")) // nil
print(Int("3")!) // 3, force unwrap the optional (you are sure it's not nil)
