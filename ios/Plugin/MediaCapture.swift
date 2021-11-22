import Foundation

@objc public class MediaCapture: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
