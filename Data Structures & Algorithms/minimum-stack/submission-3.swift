class MinStack {
    
    private var stack: [[Int]] = []
    
    init() {}
    
    func push(_ val: Int) {
        if stack.isEmpty {
            stack.append([val, val])
        } else {
            var minimumValueLabel = getMin()
            minimumValueLabel = val < minimumValueLabel ? val : minimumValueLabel
            stack.append([val, minimumValueLabel])
        }
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func top() -> Int {
        if let first = stack.last?.first {
            return first
        }
        return 0
    }
    
    func getMin() -> Int {
        if let last = stack.last?.last {
            return last
        }
        return 0
    }
}