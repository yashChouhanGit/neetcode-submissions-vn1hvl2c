class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freq: [Int: Int] = [:]
        
        for num in nums {
            freq[num, default: 0] += 1
        }
        
        var buckets = Array(repeating: [Int](), count: nums.count + 1)
        
        for (num, count) in freq {
            buckets[count].append(num)
        }
        
        var result: [Int] = []
        
        for i in stride(from: buckets.count - 1, through: 0, by: -1) {
            for num in buckets[i] {
                result.append(num)
                if result.count == k {
                    return result
                }
            }
        }
        
        return result
    }
}
