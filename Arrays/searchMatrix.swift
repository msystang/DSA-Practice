/*
 Search a 2D Matrix II - https://leetcode.com/problems/search-a-2d-matrix-ii/
 
 Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

 Integers in each row are sorted in ascending from left to right.
 Integers in each column are sorted in ascending from top to bottom.
 Example:

 Consider the following matrix:

 [
   [1,   4,  7, 11, 15],
   [2,   5,  8, 12, 19],
   [3,   6,  9, 16, 22],
   [10, 13, 14, 17, 24],
   [18, 21, 23, 26, 30]
 ]
 Given target = 5, return true.

 Given target = 20, return false.
 */


// Brute force
func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    for m in matrix {
        for n in m {
            if n == target { return true }
        }
    }
    return false
}

// Efficient runtime
func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    guard !matrix.isEmpty && !matrix[0].isEmpty else { return false }
    
    var row = 0
    var col = matrix[0].count - 1

    while col >= 0 && row < matrix.count {
        if target == matrix[row][col] {
            return true
        } else if target < matrix[row][col] {
            col -= 1
        } else {
            row += 1
        }
    }
    return false
}
