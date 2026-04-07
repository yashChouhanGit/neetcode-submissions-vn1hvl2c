class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else { return [] }
        var array: [[Int]] = []
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count {
                for k in (j+1)..<nums.count {
                    let newElement: Int = nums[i] + nums[j] + nums[k]
                    if newElement == 0 {
                        
                        if !(array.contains([nums[i] , nums[j] , nums[k]])
                            || array.contains([nums[i] , nums[k] , nums[j]])
                            || array.contains([nums[j] , nums[k] , nums[i]])
                            || array.contains([nums[j] , nums[i] , nums[k]])
                            || array.contains([nums[k] , nums[j] , nums[i]])
                            || array.contains([nums[k] , nums[i] , nums[j]])) {
                            array.append([nums[i] , nums[j] , nums[k]])
                        }
                        
                    }
                }
            }
        }
        return array
    }
}
