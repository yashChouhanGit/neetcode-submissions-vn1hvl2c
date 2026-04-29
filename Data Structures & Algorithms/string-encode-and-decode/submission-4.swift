class Solution {

    func encode(_ strs: [String]) -> String {
        var encodedStr: String = ""
        
        for str in strs {
            encodedStr += ("\(str.count)#" + str)
        }
        return encodedStr
    }
    
    func decode(_ str: String) -> [String] {
        var result: [String] = []
        var i = str.startIndex
        
        while i < str.endIndex {
            // Find the '#' delimiter
            var j = i
            while str[j] != "#" {
                j = str.index(after: j)
            }
            
            // Extract length
            let lengthStr = str[i..<j]
            let length = Int(lengthStr)!  // safe because we encoded it
            
            // Move past '#'
            let start = str.index(after: j)
            
            // Extract the word of given length
            let end = str.index(start, offsetBy: length)
            let word = String(str[start..<end])
            
            result.append(word)
            
            // Move pointer forward
            i = end
        }
        
        return result
    }
}
