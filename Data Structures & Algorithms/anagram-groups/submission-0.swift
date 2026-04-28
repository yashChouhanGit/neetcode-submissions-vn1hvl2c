class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
    /*
     Input: strs = ["act","pots","tops","cat","stop","hat"]

     Output: [["hat"],["act", "cat"],["stop", "pots", "tops"]]
     */
    var dictArray: [String: [String]] = [:]
    
    for i in 0..<strs.count {
        
        var sortedString: String = String(strs[i].sorted())
        
        if var array = dictArray[sortedString] {
            array.append(strs[i])
            dictArray[sortedString] = array
        } else {
            dictArray[sortedString] = [strs[i]]
        }
    }
    return dictArray.values.compactMap({$0})
    
}
}
