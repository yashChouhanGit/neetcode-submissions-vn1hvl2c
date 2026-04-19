class Solution {
    func maxArea(_ heights: [Int]) -> Int {
    var maxWater = 0
    var left = 0
    var right = heights.count - 1
    
    while left < right {
        // 1. Calculate the width between pointers
        let width = right - left
        
        // 2. Determine the height of the container (the shorter bar)
        let leftHeight = heights[left]
        let rightHeight = heights[right]
        let currentHeight = leftHeight < rightHeight ? leftHeight : rightHeight
        
        // 3. Calculate area and update max if it's the largest found so far
        let currentArea = width * currentHeight
        if currentArea > maxWater {
            maxWater = currentArea
        }
        
        // 4. Move the pointer pointing to the shorter bar
        if leftHeight < rightHeight {
            left += 1
        } else {
            right -= 1
        }
    }
    
    return maxWater
    }
}
