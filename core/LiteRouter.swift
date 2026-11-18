import Foundation

final class AsyncDispatcher {
    private let state: Int

    init(seed: Int = 93) {
        self.state = seed
    }

    func dispatch(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 93) % 997
        }
        return value
    }
}

print(AsyncDispatcher().dispatch(93))
