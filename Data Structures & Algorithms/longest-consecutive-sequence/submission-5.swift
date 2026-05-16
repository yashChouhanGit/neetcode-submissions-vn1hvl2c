class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
    
    // Convert array into Set for O(1) lookup
    let numSet = Set(nums)
    
    var longest = 0
    
    for num in numSet {
        
        // Start only if it is the beginning of sequence
        if !numSet.contains(num - 1) {
            
            var currentNum = num
            var currentStreak = 1
            
            // Count consecutive numbers
            while numSet.contains(currentNum + 1) {
                currentNum += 1
                currentStreak += 1
            }
            
            longest = max(longest, currentStreak)
        }
    }
    
    return longest
}
}
