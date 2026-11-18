import Foundation

final class SimpleMonitor {
    private let state: Int

    init(seed: Int = 32) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 32) % 997
        }
        return total
    }
}

print(SimpleMonitor().encode(32))
