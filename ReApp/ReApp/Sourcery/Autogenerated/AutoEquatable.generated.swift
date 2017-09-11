// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable file_length
fileprivate func compareOptionals<T>(lhs: T?, rhs: T?, compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    switch (lhs, rhs) {
    case let (lValue?, rValue?):
        return compare(lValue, rValue)
    case (nil, nil):
        return true
    default:
        return false
    }
}

fileprivate func compareArrays<T>(lhs: [T], rhs: [T], compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    guard lhs.count == rhs.count else { return false }
    for (idx, lhsItem) in lhs.enumerated() {
        guard compare(lhsItem, rhs[idx]) else { return false }
    }

    return true
}


// MARK: - AutoEquatable for classes, protocols, structs
// MARK: - Person AutoEquatable
extension Person: Equatable {}
internal func == (lhs: Person, rhs: Person) -> Bool {
    guard compareOptionals(lhs: lhs.firstName, rhs: rhs.firstName, compare: ==) else { return false }
    guard compareOptionals(lhs: lhs.lastName, rhs: rhs.lastName, compare: ==) else { return false }
    guard lhs.age == rhs.age else { return false }
    guard lhs.email == rhs.email else { return false }
    return true
}

// MARK: - AutoEquatable for Enums
