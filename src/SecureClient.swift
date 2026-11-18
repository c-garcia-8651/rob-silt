import Foundation

final class AsyncDispatcher {
    private let state: Int

    init(seed: Int = 44) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 44) % 997
        }
        return count
    }
}

print(AsyncDispatcher().encode(44))
