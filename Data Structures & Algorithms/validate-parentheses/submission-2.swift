class Solution {
   func isValid(_ s: String) -> Bool {
    
    guard !s.isEmpty else {
        return false
    }
    
    guard s.count % 2 == 0 else {
        return false
    }
    
    let brackets: [Character: Character] = [
        ")": "(",
        "]": "[",
        "}": "{"
    ]
    
    var stack: [Character] = []
    
    for char in s {
        
        if let value = brackets[char] {
            
            // Check stack before removeLast
            guard !stack.isEmpty else {
                return false
            }
            
            if stack.removeLast() != value {
                return false
            }
            
        } else {
            stack.append(char)
        }
    }
    
    return stack.isEmpty
}
}
