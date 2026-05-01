class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
    let n = nums.count
    var output = Array(repeating: 1, count: n)
    
    // Step 1: Calculate Prefix Products
    // After this loop, output[i] contains the product of all elements before i
    var prefix = 1
    for i in 0..<n {
        output[i] = prefix
        prefix *= nums[i]
    }
    
    // Step 2: Calculate Suffix Products and combine
    // We traverse backwards, keeping track of the product of all elements after i
    var suffix = 1
    for i in stride(from: n - 1, through: 0, by: -1) {
        output[i] *= suffix
        suffix *= nums[i]
    }
    
    return output
}
}
