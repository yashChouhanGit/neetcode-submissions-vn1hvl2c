class Solution {
    func merge(left: [Int], right: [Int]) -> [Int] {
        var leftIndex = 0
        var rightIndex = 0
        var orderedArray: [Int] = []
        
        // Use a while loop instead of higher-order functions
        while leftIndex < left.count && rightIndex < right.count {
            if left[leftIndex] < right[rightIndex] {
                orderedArray.append(left[leftIndex])
                leftIndex += 1
            } else if left[leftIndex] > right[rightIndex] {
                orderedArray.append(right[rightIndex])
                rightIndex += 1
            } else {
                // If they are equal, add both
                orderedArray.append(left[leftIndex])
                leftIndex += 1
                orderedArray.append(right[rightIndex])
                rightIndex += 1
            }
        }
        
        // Append remaining elements from the left side
        while leftIndex < left.count {
            orderedArray.append(left[leftIndex])
            leftIndex += 1
        }
        
        // Append remaining elements from the right side
        while rightIndex < right.count {
            orderedArray.append(right[rightIndex])
            rightIndex += 1
        }
        
        return orderedArray
    }

    // 2. The Split Logic: Recursively divides the array
    func mergeSort(_ array: [Int]) -> [Int] {
        // Base case: if array has 1 or 0 elements, it's already "sorted"
        guard array.count > 1 else { return array }
        
        let middleIndex = array.count / 2
        
        // Split the array into two halves using index ranges
        let leftArray = Array(array[0..<middleIndex])
        let rightArray = Array(array[middleIndex..<array.count])
        
        // Recursively call mergeSort and then merge the results
        return merge(
            left: mergeSort(leftArray),
            right: mergeSort(rightArray)
        )
    }

    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else { return [] }
        let sortedArray = mergeSort(nums)
        
        var tripletSum: [[Int]] = []
        
        
        for i in 0..<nums.count-2 {
            
            if i > 0 && sortedArray[i] == sortedArray[i-1] {
                continue
            }
            var left = i + 1
            var right = sortedArray.count - 1
            
            let sum = -sortedArray[i]
            while left < right {
                let equSum = sortedArray[left] + sortedArray[right]
                
                if equSum == sum {
                    
                    tripletSum.append([sortedArray[i], sortedArray[left], sortedArray[right]])

                    
                    left += 1
                    right -= 1
                    
                    
                    while sortedArray[left] == sortedArray[left-1] && left < right {
                        left += 1
                    }
                    
                    while sortedArray[right] == sortedArray[right+1] && left < right {
                        right -= 1
                    }
                    
                    
                } else if equSum > sum {
                    right -= 1
                    while (left < right && sortedArray[right] == sortedArray[right+1]) {
                        right -= 1
                    }
                } else {
                    left += 1
                    while (left < right && sortedArray[left] == sortedArray[left-1]) {
                        left += 1
                    }
                }
            }
            
        }
        return tripletSum
    }
}
