// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable cyclomatic_complexity file_length function_body_length line_length

import Foundation
//
//import Sourcery_AutoJSONSerializable
//

// MARK: - AutoJSONSerializable for classes, protocols, structs

// MARK: - Person AutoJSONSerializable
extension Person: JSONSerializable {
    internal func toJSONObject() -> Any {
        var jsonObject = [String: Any]()
        let firstName = self.firstName
        jsonObject["firstName"] = firstName
        let lastName = self.lastName
        jsonObject["lastName"] = lastName
        let age = self.age
        jsonObject["age"] = age
        let email = self.email
        jsonObject["email"] = email
        return jsonObject
    }
}

// MARK: -
