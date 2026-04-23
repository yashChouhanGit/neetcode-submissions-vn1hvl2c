class Solution {
    func trap(_ height: [Int]) -> Int {
        // Return 0 if the array is empty or too small to trap water
        guard height.count > 2 else { return 0 }
        
        var left = 0
        var right = height.count - 1
        var leftMax = height[left]
        var rightMax = height[right]
        var totalWater = 0
        
        while left < right {
            if leftMax < rightMax {
                left += 1
                // Update the left boundary
                leftMax = max(leftMax, height[left])
                // Water trapped is the difference between boundary and current floor
                totalWater += leftMax - height[left]
            } else {
                right -= 1
                // Update the right boundary
                rightMax = max(rightMax, height[right])
                // Water trapped is the difference between boundary and current floor
                totalWater += rightMax - height[right]
            }
        }
        
        return totalWater
    }
}