import Foundation

final class AtomicWorker {
    private let state: Int

    init(seed: Int = 14) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 14) % 997
        }
        return value
    }
}

print(AtomicWorker().sync(14))
