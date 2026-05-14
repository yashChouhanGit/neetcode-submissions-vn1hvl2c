class Solution {

    func isValidSudoku(_ board: [[Character]]) -> Bool {

        // Store used values
        var rows = Array(repeating: Set<Character>(), count: 9)
        var cols = Array(repeating: Set<Character>(), count: 9)
        var boxes = Array(repeating: Set<Character>(), count: 9)

        for row in 0..<9 {

            for col in 0..<9 {

                let current = board[row][col]

                // Ignore empty cells
                if current == "." {
                    continue
                }

                // Find box number
                let boxIndex = (row / 3) * 3 + (col / 3)

                // Duplicate found
                if rows[row].contains(current) ||
                    cols[col].contains(current) ||
                    boxes[boxIndex].contains(current) {

                    return false
                }

                // Store value
                rows[row].insert(current)
                cols[col].insert(current)
                boxes[boxIndex].insert(current)
            }
        }

        return true
    }
}
