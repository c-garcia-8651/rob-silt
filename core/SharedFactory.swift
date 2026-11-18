import Foundation

final class StreamFactory {
    private let state: Int

    init(seed: Int = 45) {
        self.state = seed
    }

    func handle(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 45) % 997
        }
        return result
    }
}

print(StreamFactory().handle(45))
