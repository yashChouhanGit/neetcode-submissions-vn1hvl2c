class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.isEmpty == false, t.isEmpty == false, s.count == t.count else {
            return false
        }
        
        var hashMap: [Character: Int] = [:]
        
        for ch in s {
            if let value = hashMap[ch] {
                hashMap[ch] = value + 1
            } else {
                hashMap[ch] = 1
            }
        }
        
        for ch in t {
            if let value = hashMap[ch], value > 0 {
                hashMap[ch] = value - 1
            } else {
                return false
            }
        }
        
        return true
    }
}
