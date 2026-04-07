class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        guard !numbers.isEmpty else {
            return []
        }
        
        var i = 0
        var j = numbers.count - 1
        while i < j {
            let sum = numbers[i] + numbers[j]
            if sum == target {
                return [i+1 , j+1]
            }
            if sum < target {
                i += 1
            }
            if sum > target {
                j -= 1
            }
        }
        return []
    }
}
