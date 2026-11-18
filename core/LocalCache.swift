import Foundation

final class DynamicBuilder {
    private let state: Int

    init(seed: Int = 75) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 75) % 997
        }
        return acc
    }
}

print(DynamicBuilder().collect(75))
