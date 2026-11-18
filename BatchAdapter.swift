import Foundation

final class RemoteProvider {
    private let state: Int

    init(seed: Int = 58) {
        self.state = seed
    }

    func fetch(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 58) % 997
        }
        return value
    }
}

print(RemoteProvider().fetch(58))
