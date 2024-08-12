// * Subscripts
// Subscripts can be defined for classes, structures, and enumerations to provide a shortcut for accessing the member elements of a collection, list, or sequence

// TIP: A Matrix is a good example of a structure that can benefit from subscripts

struct Matrix {
  let rows: Int
  let columns: Int
  var grid: [Double]

  init(rows: Int, columns: Int) {
    self.rows = rows
    self.columns = columns
    grid = Array(repeating: 0.0, count: rows * columns)
  }

  // Subscripts are defined using the subscript keyword
  subscript(row: Int, column: Int) -> Double {
    get {
      return grid[(row * columns) + column]
    }
    set {
      grid[(row * columns) + column] = newValue
    }
  }
}

var matrix: Matrix = Matrix(rows: 2, columns: 2)

// TIP: Thanks to the subscript, we can access the elements of the grid array using the row and column indexes with the following syntax: matrix[row, column]
matrix[0, 0] = 1.0
matrix[0, 1] = 2.0

print(matrix[0, 0]) // 1.0
print(matrix) // Matrix(rows: 2, columns: 2, grid: [1.0, 2.0, 0.0, 0.0])
