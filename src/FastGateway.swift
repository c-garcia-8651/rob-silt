import Foundation

final class BatchMonitor {
    private let state: Int

    init(seed: Int = 3) {
        self.state = seed
    }

    func flush(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 3) % 997
        }
        return count
    }
}

print(BatchMonitor().flush(3))
