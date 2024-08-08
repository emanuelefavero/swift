// * Sets Operations
// Sets support a variety of operations to combine, compare, and subtract sets.

var a: Set<Int> = [1, 2, 3]
var b: Set<Int> = [3, 4, 5]

// Union
// Combines two sets into a new set, containing all elements from both sets
print(a.union(b)) // [5, 2, 3, 1, 4]

// Intersection
// Creates a new set with only the elements that are common to both sets
print(a.intersection(b)) // [3]

// Symmetric Difference
// Creates a new set with elements that are in either set, but not in both
print(a.symmetricDifference(b)) // [1, 2, 4, 5]

// Subtracting
// Creates a new set with elements that are in the first set, but not in the second set
print(a.subtracting(b)) // [2, 1], since 3 is in both sets, it is removed

// Superset
// Checks if all elements of the second set are in the first set
var c: Set<Int> = [1, 2, 3, 4]
var d: Set<Int> = [2, 3]
print(c.isSuperset(of: d)) // true

// Subset
// Checks if all elements of the first set are in the second set
print(d.isSubset(of: c)) // true

// Disjoint
// Checks if the two sets have no elements in common
var e: Set<Int> = [1, 2]
var f: Set<Int> = [3, 4]
print(e.isDisjoint(with: f)) // true, no common elements

// Convert array to Set
var array: [Int] = [1, 2, 3, 3, 4]
var setFromArray = Set(array)
print(setFromArray) // [2, 3, 1, 4], duplicates are removed

// Convert set to array
var arrayFromSet = Array(setFromArray)
print(arrayFromSet) // [2, 3, 1, 4]
