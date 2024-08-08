// * Sets
// Sets are unordered collections of unique values

// Creating a set
var set: Set<Int> = [1, 2, 2, 3]
print(set) // [2, 3, 1], duplicates are removed, order is not guaranteed

// Empty set
var empty: Set<Int> = []
// or
var empty2 = Set<Int>()
print(empty) // []

// Set size
print(set.count) // 3

// Check if set is empty
print(set.isEmpty) // false

// Inserting elements
set.insert(4)
print(set) // [2, 3, 1, 4]

// Removing elements
set.remove(1)
print(set) // [2, 3, 4]

// Check if set contains an element
print(set.contains(2)) // true

// Iterating over a set
for num in set {
  print(num) // 2 3 4
}

// Iterating over a sorted set
for num in set.sorted() {
  print(num) // 2 3 4
}

// Iterating with index
for (index, num) in set.enumerated() {
  print("Index: \(index), Number: \(num)")
}
