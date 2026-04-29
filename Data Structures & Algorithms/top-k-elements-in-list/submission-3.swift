class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map: [Int: Int] = [:]
        for key in nums {
            map[key, default: 0] = (map[key] ?? 0) + 1
        }
        
        var array: [Int] = []
        var maxValue: Int = .min
        var keyMax: Int = .min
        
        while map.isEmpty == false {
            for (key,value) in map {
                if maxValue < value  {
                    maxValue = value
                    keyMax = key
                }
            }
            array.append(keyMax)
            maxValue = .min
            map.removeValue(forKey: keyMax)
            if array.count == k {
                return array
            }
        }
        
        return array
    }

}
