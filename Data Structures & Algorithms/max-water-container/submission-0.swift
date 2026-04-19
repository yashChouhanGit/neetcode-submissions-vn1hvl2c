class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var maxArea: Int = 0
        for i in 0..<heights.count {
            for j in (i+1)..<heights.count {
                let min = min(heights[i],heights[j])
                let value = min * (j - i)
                if maxArea < value {
                    maxArea = value
                }
            }
        }
        
        return maxArea
        
    }
}
