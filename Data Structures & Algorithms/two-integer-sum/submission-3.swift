class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var hashMap: [Int: Int] = [:]
        
        
        for object in nums.enumerated() {
            if let index = hashMap[object.element] {
                return [index, object.offset]
            }
            hashMap[target - object.element] = object.offset
        }
        return []
        
    }
}
