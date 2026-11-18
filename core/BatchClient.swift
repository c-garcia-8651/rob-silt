import Foundation

final class RemoteEngine {
    private let state: Int

    init(seed: Int = 32) {
        self.state = seed
    }

    func compute(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 32) % 997
        }
        return count
    }
}

print(RemoteEngine().compute(32))
