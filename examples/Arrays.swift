// * Arrays

var array: [Int] = [1, 2, 3]

print(array) // [1, 2, 3]

// Empty array
var empty: [Int] = []
// or
var empty2 = [Int]()
print(empty) // []
print(empty2) // []

// Array of strings
var strings: [String] = ["a", "b", "c"]
print(strings) // ["a", "b", "c"]

// Array of mixed types
var mixed: [Any] = [1, "a", true]
print(mixed) // [1, "a", true]

// Array with default values
var defaultValues = Array(repeating: 0, count: 3)
print(defaultValues) // [0, 0, 0]

// Accessing elements
print(array[0]) // 1

// Modifying elements
array[0] = 10
print(array) // [10, 2, 3]

// Appending elements
array.append(4)
print(array) // [10, 2, 3, 4]

// Inserting elements
array.insert(5, at: 0)
print(array) // [5, 10, 2, 3, 4]

// Removing elements
array.remove(at: 0)
print(array) // [10, 2, 3, 4]

// Iterating over an array
for num in array {
  print(num) // 10 2 3 4
}

// Iterating with index
for (index, num) in array.enumerated() {
  print("Index: \(index), Number: \(num)")
}

// Array size
print(array.count) // 4

// Check if array is empty
print(array.isEmpty) // false

// Concatenating arrays
var array2 = [5, 6, 7]
var combined = array + array2
print(combined) // [10, 2, 3, 4, 5, 6, 7]

// Slicing an array
var slice = combined[1...3]
print(slice) // [2, 3, 4]

// Sorting an array
var unsorted = [3, 1, 2]
var sorted = unsorted.sorted()
print(sorted) // [1, 2, 3]

// Reversing an array
print(sorted.reversed()) // [3, 2, 1]

// Check if an array contains an element
print(array.contains(2)) // true

// Find index of an element
print(array.firstIndex(of: 2)) // 1
// or
print(array.firstIndex(of: 2) ?? -1) // 1, if not found, return -1

// Remove all elements
array.removeAll()
print(array) // []

// Multidimensional arrays
var matrix: [[Int]] = [[1, 2], [3, 4], [5, 6]]
print(matrix) // [[1, 2], [3, 4], [5, 6]]

// Accessing elements
print(matrix[0][0]) // 1

// Iterating over a multidimensional array
for row in matrix {
  for num in row {
    print(num)
  }
}

// Flatten a multidimensional array
// TIP: { $0 } is shorthand for { return $0 }, which is a closure that returns the element itself, in this case the array
var flat = matrix.flatMap { $0 }
print(flat) // [1, 2, 3, 4, 5, 6]

// Filter elements
array = [1, 2, 3, 4]
var filtered = array.filter { $0 % 2 == 0 } // filter even numbers
print(filtered) // [2, 4]

// Map elements
var mapped = array.map { $0 * 2 } // double each element
print(mapped) // [2, 4, 6, 8]

// Reduce elements
var reduced = array.reduce(0, +) // sum of all elements
print(reduced) // 10, 1 + 2 + 3 + 4

// CompactMap elements - remove nil values
var optionalArray: [Int?] = [1, nil, 3, nil, 5]
var compactMapped = optionalArray.compactMap { $0 }
print(compactMapped) // [1, 3, 5]

// Chaining operations
var chained = array.filter { $0 % 2 == 0 }.map { $0 * 2 }
print(chained) // [4, 8]

// Check if all elements satisfy a condition
print(array.allSatisfy { $0 > 0 }) // true, all elements are positive

// Check if any element satisfies a condition
print(array.contains { $0 % 2 == 0 }) // true, at least one element is even

// Find first element that satisfies a condition
print(array.first { $0 % 2 == 0 }) // 2

// Find last element that satisfies a condition
print(array.last { $0 % 2 == 0 }) // 4

// Swap elements
var swapArray = [1, 2, 3]
swapArray.swapAt(0, 2)
print(swapArray) // [3, 2, 1]

// Append contents of an array
var appendArray = [1, 2]
appendArray.append(contentsOf: [3, 4])
print(appendArray) // [1, 2, 3, 4]

// Remove elements in a range
var removeArray = [1, 2, 3, 4, 5]
removeArray.removeSubrange(1...3)
print(removeArray) // [1, 5]

// Replace elements in a range
var replaceArray = [1, 2, 3, 4, 5]
replaceArray.replaceSubrange(1...3, with: [6, 7])
print(replaceArray) // [1, 6, 7, 5]

// Insert contents of an array
var insertArray = [1, 2, 3]
insertArray.insert(contentsOf: [4, 5], at: 1)
print(insertArray) // [1, 4, 5, 2, 3]

// Remove duplicates
var duplicateArray = [1, 2, 2, 3, 3, 3]
var uniqueArray = Array(Set(duplicateArray))
print(uniqueArray) // [2, 3, 1]

// Check if two arrays are equal
array = [1, 2, 3]
array2 = [1, 2, 3]
print(array == array2) // true
