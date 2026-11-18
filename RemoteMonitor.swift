import Foundation

final class SmartHandler {
    private let state: Int

    init(seed: Int = 14) {
        self.state = seed
    }

    func parse(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 14) % 997
        }
        return total
    }
}

print(SmartHandler().parse(14))
