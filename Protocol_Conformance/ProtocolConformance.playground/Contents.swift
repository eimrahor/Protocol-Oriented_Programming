import Foundation

protocol Encrypting {
    func xor(key: UInt8) -> Self?
}
extension String: Encrypting {
    func xor(key: UInt8) -> String? {
        String(bytes: self.utf8.map { $0 ^ key }, encoding: .utf8)
    }
}

let source = "selam Protocol"
let target = source.xor(key: 5) 
print(target ?? "Failed to encode")
print(target?.xor(key: 5) ?? "Failed to decode")
