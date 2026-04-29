class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var product: [Int] = []
        for i in 0..<nums.count {
            var mul = 1
            for j in 0..<nums.count {
                if i == j {
                    continue
                }
                mul = mul * nums[j]
            }
            product.append(mul)
        }
        return product
    }
}
