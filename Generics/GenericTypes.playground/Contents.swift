import Foundation

func equals<T: Equatable>(lhs: T, rhs: T) -> Bool {
    return lhs == rhs
}

equals(lhs: "abcd", rhs: "dcba")

equals(lhs: Double.pi, rhs: 3.14)

let d1 = Data(repeating: 1, count: 10)
let d2 = Data(repeating: 1, count: 10)

equals(lhs: d1, rhs: d2)

struct Wrapper<T> {
    var storage: T
    
    init (_ value: T) {
        storage = value
    }
}

let piWrapped = Wrapper(Double.pi)

let stringWrapper = Wrapper("POP")

let dateWrapper = Wrapper(Date())
