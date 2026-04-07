class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard !s.isEmpty else {
            return false
        }
        
        guard s.count >= 2 else {
            return true
        }
        
        let sArray = Array(s)
        
        var i = 0
        var j = sArray.count - 1
        while i <= j {
            
            let iChar = sArray[i]
            let jChar = sArray[j]
            
            if (iChar.isLetter || iChar.isNumber) && (jChar.isLetter || jChar.isNumber) {
                if iChar.lowercased() != jChar.lowercased() {
                    return false
                }
                i += 1
                j -= 1
            }
            
            if !(iChar.isLetter || iChar.isNumber) {
                i += 1
            }
            
            if !(jChar.isLetter || jChar.isNumber) {
                j -= 1
            }
            print("i , j \(i) \(j)")
        }
        return true
    }
}
