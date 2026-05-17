class MinStack {
    
    private var stack: [Int] = []

    init() {

    }

    func push(_ val: Int) {
        stack.append(val)
    }

    func pop() {
        stack.removeLast()
    }

    func top() -> Int {
        stack.last ?? 0
    }

    func getMin() -> Int {
        var minimum = (stack.first ?? 0)
        stack.forEach {
            minimum = $0 < minimum ? $0 : minimum
        }
        return minimum
    }
}