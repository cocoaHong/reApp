// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable cyclomatic_complexity file_length function_body_length line_length

import Foundation
//
//import Sourcery_AutoJSONSerializable
//

// MARK: - AutoJSONDeserializable for classes, protocols, structs

// MARK: - Person AutoJSONDeserializable
extension Person: JSONDeserializable {
    internal init?(JSONObject: Any) {
        guard let JSONObject = JSONObject as? [String: Any] else { return nil }
        let firstName = (JSONObject["firstName"] as? String)
        self.firstName = firstName
        let lastName = (JSONObject["lastName"] as? String)
        self.lastName = lastName
        guard let age = (JSONObject["age"] as? Int) else { return nil }
        self.age = age
        guard let email = (JSONObject["email"] as? String) else { return nil }
        self.email = email
    }
}

// MARK: -
