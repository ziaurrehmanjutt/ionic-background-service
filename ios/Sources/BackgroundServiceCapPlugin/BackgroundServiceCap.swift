import Foundation

@objc public class BackgroundServiceCap: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
