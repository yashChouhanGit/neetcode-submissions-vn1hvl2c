class Solution {
     func hasDuplicate(_ nums: [Int]) -> Bool {
        var hashMap: [Int: Int] = [:]
        
        for n in nums {
            if hashMap[n] != nil {
                return true
            }
            hashMap[n] = n
        }
        return false
    }
}
